import * as vscode from 'vscode';
import { getConfig } from './config';
import { Constants } from './constants';
import * as luaparse from 'luaparse';

function walk(node: unknown, visitor: (node: luaparse.Node) => boolean | void): void {
  if (!node || typeof node !== 'object') {return;}
  
  if ('type' in node && typeof node.type === 'string') {
    if (visitor(node as luaparse.Node) === false) {return;}
  }

  for (const value of Object.values(node)) {
    if (Array.isArray(value)) {
      value.forEach(item => walk(item, visitor));
    } else if (value && typeof value === 'object' && 'type' in value) {
      walk(value, visitor);
    }
  }
}

const WORKSPACE_CFG_FILENAME = ".isaac-config.lua";

//add error handling
async function getWorkspaceConfig(){
    const folder = vscode.workspace.workspaceFolders?.[0];
    if (!folder) {return undefined;}

    const uri = vscode.Uri.joinPath(folder.uri, WORKSPACE_CFG_FILENAME);
    const config = await vscode.workspace.fs.readFile(uri);
    
    return Buffer.from(config).toString('utf8');
}

interface CallbackArg {
    type: string;
    name?: string;
}

interface CallbackReturn {
    type: string;
    optional?: boolean;
}

interface IsaacCallback {
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

type Callbacks = Record<string, IsaacCallback>;

import * as jsonVanillaCallbacks from "./docs/enums/callbacks/vanilla.json";
import * as jsonRgonCallbacks from "./docs/enums/callbacks/repentogon.json";
import * as jsonStageApiCallbacks from "./docs/enums/callbacks/stageapi.json";

const vanillaCallbacks: Callbacks = jsonVanillaCallbacks;
const rgonCallbacks: Callbacks = jsonRgonCallbacks;
const stageApiCallbacks: Callbacks = jsonStageApiCallbacks;
const customCallbacks: Callbacks = {};

const callbackTables: Callbacks[] = [];
const callbackByValue = new Map<number, IsaacCallback>();

interface RegisterFuncConfig {
    idArg: number; //where you define da callback
    funcArg: number; //where you define da function
    hasModArg: boolean;
}

/* eslint-disable @typescript-eslint/naming-convention */
const REGISTER_FUNCTIONS: Record<string, RegisterFuncConfig> = {
    "AddCallback": { idArg: 0, funcArg: 1, hasModArg: true },
    "AddPriorityCallback": { idArg: 0, funcArg: 2, hasModArg: true },
    "StageAPI.AddCallback": { idArg: 1, funcArg: 3, hasModArg: false },
};
/* eslint-enable @typescript-eslint/naming-convention */

const config = getConfig();
async function loadCallbacksAndConfig(){
    const workspaceConfig = await getWorkspaceConfig();
    
    //json callback stuff
    if(config.repentogonEnabled){callbackTables.push(rgonCallbacks);} //load before vanilla callbacks so that rgon vanilla overrides take priority
    callbackTables.push(vanillaCallbacks);
    if(config.stageAPISupportEnabled){callbackTables.push(stageApiCallbacks);}
    
    for (var callbacks of callbackTables) {
        for (var callbackId in callbacks) {
            const entry = callbacks[callbackId];
            if (entry.value !== undefined) {
                const numericValue = typeof entry.value === "string" ? parseInt(entry.value, 10) : entry.value;
                if (!isNaN(numericValue) && callbackByValue.get(numericValue) === undefined) {
                    callbackByValue.set(numericValue, entry);
                }
            }
        }
    }
    
    //lua config callback and func stuff (we add callbacks to table after the value mapping so that we dont waste time on records which wont have a value anyways)
    const workspaceAST = luaparse.parse(workspaceConfig!, {wait: false, comments: false});
    console.log(workspaceAST);
    walk(workspaceAST, (node) => {
        if (node.type === "TableKeyString"){
            if (node.key.name === "Callbacks" && node.value.type === "TableConstructorExpression"){
                const callbackNodes = node.value.fields;

                for (var callbackNode of callbackNodes){
                    const callback: IsaacCallback = {};

                    if (callbackNode.type === "TableKeyString") {
                        callback.value = callbackNode.key.name;
                        
                        if (callbackNode.value.type === "TableConstructorExpression"){
                            for (var callbackField of callbackNode.value.fields){
                                if(callbackField.type === "TableKeyString" && callbackField.value.type === "TableConstructorExpression"){
                                    if(callbackField.key.name === "Args"){
                                        const callbackArgs: CallbackArg[] = [];

                                        for (var arg of callbackField.value.fields){
                                            if(arg.value.type === "TableConstructorExpression"){
                                                var argType;
                                                var argName;
                                                for(var argParam of arg.value.fields){
                                                    if(argParam.type === "TableKeyString" && argParam.value.type === "StringLiteral"){
                                                        if(argParam.key.name === "Type"){
                                                            argType = argParam.value.raw.substring(1, argParam.value.raw.length-1);
                                                        }
                                                        if(argParam.key.name === "Name"){
                                                            argName = argParam.value.raw.substring(1, argParam.value.raw.length-1);
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
                    }

                    customCallbacks[callback.value!] = callback;
                }
                
                callbackTables.push(customCallbacks);
            }
            if (node.key.name === "RegisterFunctions" && node.value.type === "TableConstructorExpression"){
                const callbackFunctions = node.value.fields;

                for(var callbackFunctionNode of callbackFunctions){
                    //const callbackFunction: RegisterFuncConfig = {};
                    if((callbackFunctionNode.type === "TableKey" || callbackFunctionNode.type === "TableKeyString") && callbackFunctionNode.value.type === "TableConstructorExpression"){
                        const callbackFuncConfig = callbackFunctionNode.value.fields;
                        for (var arg of callbackFuncConfig){
                            var luaIdArg;
                            var luaFuncArg;
                            var luaModArg;

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

                            const finalFuncConfig: RegisterFuncConfig = {idArg: luaIdArg!, funcArg: luaFuncArg!, hasModArg: luaModArg!};
                            if(callbackFunctionNode.type === "TableKey" && callbackFunctionNode.key.type === "StringLiteral"){
                                REGISTER_FUNCTIONS[callbackFunctionNode.key.raw.substring(1, callbackFunctionNode.key.raw.length - 1)] = finalFuncConfig;
                            }
                            if(callbackFunctionNode.type === "TableKeyString"){
                                REGISTER_FUNCTIONS[callbackFunctionNode.key.name] = finalFuncConfig;
                            }
                        }
                    }
                }
            }
        }
    });
}

function findCallback(callbackId: string | number): IsaacCallback | undefined {
    if (typeof callbackId === "string") {
        for (var callbacks of callbackTables) {
            if (callbacks[callbackId] !== undefined) {
                return callbacks[callbackId];
            }
        }
    } else if (typeof callbackId === "number") {
        return callbackByValue.get(callbackId);
    }

    return undefined;
}

function getCallbackTablesFromLua(ast: luaparse.Chunk): string[]{
    const tableCounts: Record<string, number> = {};

    walk(ast, (node) => {
        if(node.type === "FunctionDeclaration"){
            if(node.identifier && node.identifier.type === "MemberExpression"){
                if(node.identifier.base.type === "Identifier"){
                    const base = node.identifier.base.name;
                    const funcName = node.identifier.identifier.name;

                    if (!REGISTER_FUNCTIONS[funcName] && node.identifier.indexer === ":") {
                        tableCounts[base] = (tableCounts[base] ?? 0) + 1;
                    }
                }
            }
        }
    });

    return Object.keys(tableCounts).sort((a, b) => tableCounts[b] - tableCounts[a]);
}

function getFuncNameFromCallback(callbackName: string): string{
    const words = callbackName.split("_");

    //am i even a good programmer at this point...
    var funcName = "";
    if (words[1] === "PRE"){
        funcName += "pre";
        words.map((word, idx) => {
            if (idx > 1){
                funcName += word.charAt(0) + word.substring(1).toLowerCase();
            }
        });
    } else if (words[1] === "POST") {
        funcName += "on";
        words.map((word, idx) => {
            if (idx > 1){
                funcName += word.charAt(0) + word.substring(1).toLowerCase();
            }
        });
    } else {
        funcName += "on";
        words.map((word, idx) => {
            if (idx > 0){
                funcName += word.charAt(0) + word.substring(1).toLowerCase();
            }
        });
    }

    return funcName;
}

function getCalleePath(node: luaparse.Expression): string | undefined {
    if (node.type === 'Identifier') {
        return node.name;
    }
    if (node.type === 'MemberExpression') {
        const base = getCalleePath(node.base);
        const key = node.identifier.name;
        if (!base || !key) {return undefined;}
        return `${base}${node.indexer}${key}`;
    }
    return undefined;
}

function getRegisterConfig(callExpr: luaparse.CallExpression): { cfg: RegisterFuncConfig; offset: number } | undefined {
    const fullPath = getCalleePath(callExpr.base);
    var cfg = fullPath ? REGISTER_FUNCTIONS[fullPath] : undefined;

    var name = "";
    var isColonCall = false;

    if (callExpr.base.type === 'MemberExpression') {
        name = callExpr.base.identifier.name;
        isColonCall = callExpr.base.indexer === ':';
    } else if (callExpr.base.type === 'Identifier') {
        name = callExpr.base.name;
    }

    if (!cfg) {
        cfg = REGISTER_FUNCTIONS[name];
    }

    if (!cfg) {return undefined;}

    const offset = (!isColonCall && callExpr.base.type === 'MemberExpression' && cfg.hasModArg) ? 1 : 0;

    return { cfg, offset };
}

vscode.commands.registerCommand(`${Constants.EXT_ID}.deleteLineXBack`, async (backAmount: number, text: string, funcName: string) => {
  const editor = vscode.window.activeTextEditor;
  if (!editor) {return;}

  const targetLine = Math.max(0, editor.selection.active.line - backAmount);
  const line = editor.document.lineAt(targetLine);

  await editor.edit(editBuilder => {
    editBuilder.delete(line.rangeIncludingLineBreak);
  });

  const lines = text.split('\n');
  const selections: vscode.Selection[] = [];
  lines.forEach((line, idx) => {
    if (line.includes(funcName) && idx > 0){ //skip first iteration cuz thats actually the inline string that gets deleted, also we substract by one cuz we removed a line earlier
        const start = new vscode.Position(targetLine + idx - 1, line.indexOf(funcName));
        const end = new vscode.Position(targetLine + idx - 1, line.indexOf(funcName) + funcName.length);

        selections.push(new vscode.Selection(start, end));
    }
  });

  editor.selections = selections;
});

interface CompletionPair {
    inlineString: string; //these have a space by default and no ',' as that is the trigger point for the autocomplete.
    bodyString: string;
    isColonMethod: boolean;
}

export function inlineParamCompletion(context: vscode.ExtensionContext) {    
    loadCallbacksAndConfig();
    
    const provider : vscode.InlineCompletionItemProvider = {
        provideInlineCompletionItems(document, position, context, token) {
            if(!config.callbackFunctionCompletionEnabled) {return [];}

            const lineText = document.lineAt(position.line).text;
            const beforeCursor = lineText.slice(0, position.character);

            //Step 1: Find the suggestion moment.
            if(!beforeCursor.trimEnd().endsWith(',')) {return[];}
            if (lineText.includes(')') && position.character > lineText.lastIndexOf(')')) {return [];}

            const luaLineCode = beforeCursor + "nil)";
            var lineAST = luaparse.parse(luaLineCode, {wait: false, comments: false});
            const statement = lineAST.body[0];
            if (!statement || statement.type !== 'CallStatement') {return [];}
            
            const callExpr = statement.expression;
            if (callExpr.type !== 'CallExpression') {return [];}

            const match = getRegisterConfig(callExpr);
            if(!match){return[];} 
            const funcIndex = match.cfg.funcArg + match.offset;
            const idIndex = match.cfg.idArg + match.offset;

            if((callExpr.arguments.length - 1) !== funcIndex) {return[];}

            var callbackName: string | number | undefined = undefined;
            const idArg = callExpr.arguments[idIndex];
            if (idArg.type === "MemberExpression"){
                callbackName = idArg.identifier.name;
            } else if (idArg.type === "NumericLiteral"){
                callbackName = idArg.value;
            } else if (idArg.type === "StringLiteral"){
                callbackName = idArg.raw.substring(1, idArg.raw.length-1);
            }
            if (callbackName === undefined) {return[];}

            //Step 2: Get the function name from callback used, and insert it into inline suggestions
            const allLuaCode = document.getText(new vscode.Range(new vscode.Position(0, 0), new vscode.Position(position.line-1, 0)));
            var allAST = luaparse.parse(allLuaCode, {wait: false, comments: false});
            const sortedTables = getCallbackTablesFromLua(allAST);

            const funcName = typeof callbackName === "string" ? getFuncNameFromCallback(callbackName) : "placeholder";

            const completionPairs: CompletionPair[] = [
                {
                    inlineString: " function()\n\nend",
                    bodyString: "",
                    isColonMethod: false
                },
                {
                    inlineString: ` ${funcName}`,
                    bodyString: `local function ${funcName}()\n\nend`,
                    isColonMethod: false
                }
            ];

            sortedTables.forEach(tableName => {
                completionPairs.push({
                    inlineString: ` ${tableName}.${funcName}`,
                    bodyString: `function ${tableName}:${funcName}()\n\nend`,
                    isColonMethod: true
                });
            });

            //Step 3: Add params based on callback used
            const paramAliases = config.callbackParamAliases;
            var hasModRefParam = match.cfg.hasModArg;
            var callback = findCallback(callbackName);
            
            var callbackParams: string[] = [];
            if(callback !== undefined && callback.args !== undefined){
                callbackParams = callback.args.map((arg, idx) => {
                    if(!arg.name){
                        return `unknownArg${idx + 1}`;
                    }
                    
                    var name: string;

                    if(arg.name === arg.name.toUpperCase()){
                        name = arg.name.toLowerCase();
                    } else {
                        name = arg.name.charAt(0).toLowerCase() + arg.name.slice(1);
                    }

                    if(paramAliases[name]){
                        return paramAliases[name];
                    } else {
                        return name;
                    }
                });
            }

            const finalCompletionItems: vscode.InlineCompletionItem[] = [];
            
            completionPairs.map((pair) => {
                var inlineStr = pair.inlineString;
                var bodyStr = pair.bodyString;

                var paramsList = [...callbackParams];

                //prolly will be coming back to this condition later since it kinda irks me
                if (hasModRefParam && !pair.isColonMethod) {
                    paramsList.unshift("_");
                }

                const paramString = paramsList.join(", ");

                inlineStr = inlineStr.replace("()", `(${paramString})`);
                bodyStr = bodyStr.replace("()", `(${paramString})`);

                if (!lineText.trim().endsWith(')')) { inlineStr += ')'; }
                if (beforeCursor.endsWith(' ')) { inlineStr = inlineStr.substring(1); }

                const indent = beforeCursor.match(/^\s*/)?.[0] || "";
                if (!inlineStr.includes('(')) {
                    const indentedBody = bodyStr.split('\n').map(line => indent + line).join('\n');
                    
                    var finalLineText = lineText;
                    if (lineText.trimEnd().endsWith(')')) { finalLineText = lineText.slice(0, -1); }
                    const replacementText = `${inlineStr}\n${indentedBody}\n${finalLineText + inlineStr}`;
                    
                    const completionItem = new vscode.InlineCompletionItem(
                        replacementText,
                        new vscode.Range(position, position)
                    );

                    completionItem.command = {
                        title: "Delete Line",
                        command: `${Constants.EXT_ID}.deleteLineXBack`,
                        arguments: [bodyStr.split('\n').length + 1, replacementText, funcName]
                    };

                    finalCompletionItems.push(completionItem);
                } else {
                    const indentedInline = inlineStr.split('\n').map(line => line.includes("end") ? indent + line : line).join('\n');

                    finalCompletionItems.push(
                        new vscode.InlineCompletionItem(
                            indentedInline,
                            new vscode.Range(position, position)
                        )
                    );
                }
            });

            return finalCompletionItems;
        }
    };

    context.subscriptions.push(
        vscode.languages.registerInlineCompletionItemProvider(
            {language: "lua"},
            provider
        )
    );
}