import * as vscode from 'vscode';
import * as luaparse from 'luaparse';
import { walk } from './luaUtil';

export const WORKSPACE_CFG_FILENAME = ".isaac-config.lua";

//#region Types

/** Contents of .isaac-config.lua */
export interface IsaacLuaConfig {
    callbacks: Callbacks;
    registerFunctions: Record<string, RegisterFuncConfig>;
}

export interface CallbackArg {
    type: string;
    name?: string;
}

export interface CallbackReturn {
    type: string;
    optional?: boolean;
}

export interface IsaacCallback {
    value?: string | number;
    args?: CallbackArg[];
    returns?: CallbackReturn[];
    param?: {
        type: string;
        name?: string;
        optional?: boolean;
    };
    comment?: string;
}

export type Callbacks = Record<string, IsaacCallback>;

// same as plugin.lua
export interface RegisterFuncConfig {
    idArg: number; //where you define da callback
    funcArg: number; //where you define da function
    hasModArg: boolean;
}
//#endregion

// state
let currentConfig: IsaacLuaConfig | undefined;
let initialized = false;
let readyPromise: Promise<void> | undefined;
const changeEmitter = new vscode.EventEmitter<IsaacLuaConfig | undefined>();

/** Emits lua config when changed */
export const onChangeIsaacLuaConfig = changeEmitter.event;

/** empty if workspace has no config */
export function getIsaacLuaConfig(): IsaacLuaConfig {
    return currentConfig || defaultConfig();
}

const defaultConfig: () => IsaacLuaConfig = () => ({
    callbacks: {},
    registerFunctions: {},
});

/** use to wait for config to finish loading the first time */
export function isaacLuaConfigReady(): Promise<void> {
    return readyPromise ?? Promise.resolve();
}

/** Load the config and start watching it */
export function initIsaacLuaConfig(context: vscode.ExtensionContext): Promise<void> {
    if (initialized) {return isaacLuaConfigReady();}
    initialized = true;

    context.subscriptions.push(changeEmitter);

    const folder = vscode.workspace.workspaceFolders?.[0];
    if (!folder) {
        readyPromise = Promise.resolve();
        return readyPromise;
    }

    const watcher = vscode.workspace.createFileSystemWatcher(new vscode.RelativePattern(folder, WORKSPACE_CFG_FILENAME));
    const reload = () => { reloadConfig(folder); };
    watcher.onDidCreate(reload);
    watcher.onDidChange(reload);
    watcher.onDidDelete(reload);
    context.subscriptions.push(watcher);

    readyPromise = reloadConfig(folder);
    return readyPromise;
}

async function reloadConfig(folder: vscode.WorkspaceFolder): Promise<void> {
    const text = await readConfigFile(folder);

    if (text === undefined) {
        currentConfig = undefined;
        changeEmitter.fire(currentConfig);
        return;
    }

    try {
        currentConfig = parseIsaacLuaConfig(text);
    } catch (error) {
        console.error(`Couldn't parse config ${WORKSPACE_CFG_FILENAME}, keeping previous config:`);
        console.error(error);
        return;
    }
    changeEmitter.fire(currentConfig);
}

async function readConfigFile(folder: vscode.WorkspaceFolder): Promise<string | undefined> {
    const uri = vscode.Uri.joinPath(folder.uri, WORKSPACE_CFG_FILENAME);

    try {
        const config = await vscode.workspace.fs.readFile(uri);
        return Buffer.from(config).toString('utf8');
    } catch (error) {
        if (!(error instanceof vscode.FileSystemError && error.code === "FileNotFound")) {
            console.error("Couldn't read lua config file.", error);
        }
        return;
    }
}

function unquote(raw: string): string {
    return raw.substring(1, raw.length - 1);
}

function parseIsaacLuaConfig(text: string): IsaacLuaConfig {
    const result: IsaacLuaConfig = { callbacks: {}, registerFunctions: {} };

    const workspaceAST = luaparse.parse(text, {wait: false, comments: false});
    walk(workspaceAST, (node) => {
        if (node.type !== "TableKeyString") {return;}

        if (node.key.name === "Callbacks" && node.value.type === "TableConstructorExpression"){
            for (let callbackNode of node.value.fields){
                if (callbackNode.type !== "TableKeyString") {continue;}

                const callback: IsaacCallback = { value: callbackNode.key.name };

                if (callbackNode.value.type === "TableConstructorExpression"){
                    for (let callbackField of callbackNode.value.fields){
                        if(callbackField.type === "TableKeyString" && callbackField.value.type === "TableConstructorExpression"){
                            if(callbackField.key.name === "Args"){
                                const callbackArgs: CallbackArg[] = [];

                                for (let arg of callbackField.value.fields){
                                    if(arg.value.type === "TableConstructorExpression"){
                                        let argType: string | undefined;
                                        let argName: string | undefined;
                                        for(let argParam of arg.value.fields){
                                            if(argParam.type === "TableKeyString" && argParam.value.type === "StringLiteral"){
                                                if(argParam.key.name === "Type"){
                                                    argType = unquote(argParam.value.raw);
                                                }
                                                if(argParam.key.name === "Name"){
                                                    argName = unquote(argParam.value.raw);
                                                }
                                            }
                                        }
                                        callbackArgs.push({type: argType!, name: argName});
                                    }
                                }

                                callback.args = callbackArgs;
                            }
                            //hypothetical support for stuff outside of Args would go here...
                        }
                    }
                }

                result.callbacks[callbackNode.key.name] = callback;
            }
        }

        if (node.key.name === "RegisterFunctions" && node.value.type === "TableConstructorExpression"){
            for(let callbackFunctionNode of node.value.fields){
                if((callbackFunctionNode.type === "TableKey" || callbackFunctionNode.type === "TableKeyString") && callbackFunctionNode.value.type === "TableConstructorExpression"){
                    let luaIdArg: number;
                    let luaFuncArg: number;
                    let luaModArg: boolean;
                    for (let arg of callbackFunctionNode.value.fields){
                        if(arg.type === "TableKeyString"){
                            if (arg.key.name === "IdArg" && arg.value.type === "NumericLiteral"){
                                luaIdArg = arg.value.value - 1;
                            }
                            if (arg.key.name === "FunctionArg" && arg.value.type === "NumericLiteral"){
                                luaFuncArg = arg.value.value - 1;
                            }
                            if (arg.key.name === "HasModArg" && arg.value.type === "BooleanLiteral"){
                                luaModArg = arg.value.value;
                            }
                        }
                    }

                    const finalFuncConfig: RegisterFuncConfig = {idArg: luaIdArg!, funcArg: luaFuncArg!, hasModArg: luaModArg!};
                    if(callbackFunctionNode.type === "TableKey" && callbackFunctionNode.key.type === "StringLiteral"){
                        result.registerFunctions[unquote(callbackFunctionNode.key.raw)] = finalFuncConfig;
                    }
                    if(callbackFunctionNode.type === "TableKeyString"){
                        result.registerFunctions[callbackFunctionNode.key.name] = finalFuncConfig;
                    }
                }
            }
        }
    });

    return result;
}
