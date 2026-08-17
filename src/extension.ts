// Used https://github.com/ManticoreGamesInc/vscode-core 
// (with MIT license) as reference for how to do this

import * as vscode from 'vscode';
import * as path from "path";
import * as fs from 'fs'; // In NodeJS: 'const fs = require('fs')'
import { getState } from './persist';
import { checkActivate } from './activationCheck';
import { setDefinedGlobals, setExternalLibrary, setMiscConfig, setPlugin, setPluginArgs, updateMaxFileSize } from './luaSettings';
import { getConfig } from './config';
import { Constants } from './constants';
import { modifyJsoncFile } from './modifyJson';

const LUA_CONFIG_FILENAME = ".luarc.json";
const LUA_EXTENSION_ID = "sumneko.lua";

const VANILLA_LUA_LIBRARY = path.join("out", "emmylua", "vanilla");
const REPENTOGON_LUA_LIBRARY = path.join("out", "emmylua", "repentogon");
const STAGEAPI_LUA_LIBRARY = path.join("out", "emmylua", "stageapi");

export function activate(context: vscode.ExtensionContext) {
    const state = getState(context);

    // Manual enabling command
    let disposables = [
        vscode.commands.registerCommand(`${Constants.EXT_ID}.activate`, () => {
            state.asked = true;
            state.enabled = true;
            console.log("Manually activating");
            onActivate(context);
            vscode.window.showInformationMessage("Isaac Lua VSCode manually activated! (You won't need to do this again in this workspace)");
        }),
        vscode.commands.registerCommand(`${Constants.EXT_ID}.deactivate`, () => {
            state.asked = true;
            state.enabled = false;
            console.log("Manually deactivating");
            onDeactivate(context);
            vscode.window.showInformationMessage("Isaac Lua VSCode manually deactivated!");
        }),
    ];
    
    if (!state.asked) {
        checkActivate(context, onActivate);
        // check on every lua file too
        context.subscriptions.push(vscode.workspace.onDidOpenTextDocument(ev => onDidOpenLuaFile(context, ev)));
    } else if (state.enabled) {
        console.log("Already enabled, activating");
        onActivate(context);
    } else {
        console.log("Already asked user and refused, won't ask again");
    }

    disposables.forEach(d => context.subscriptions.push(d));
}

export function deactivate(context: vscode.ExtensionContext) {
    onDeactivate(context);
}

function onDidOpenLuaFile(context: vscode.ExtensionContext, event: vscode.TextDocument) {
    const state = getState(context);
    if (event.languageId === 'lua' && !state.asked && !state.enabled) {
        checkActivate(context, onActivate);
    }
}

function onActivate(context: vscode.ExtensionContext) {
    console.log("Activating...");

    const config = getConfig();
    const filenamePath = getCfgFilePath();

    if (!filenamePath) {
        return;
    }

    if (!fs.existsSync(filenamePath)) {
        fs.writeFileSync(filenamePath, "{\n}");
    }

    modifyJsoncFile(filenamePath, luaCfg => {
        // luaCfg["$schema"] = "https://raw.githubusercontent.com/sumneko/vscode-lua/master/setting/schema.json";
        luaCfg["runtime.version"] = "Lua 5.3";

        setExternalLibrary(luaCfg, context, VANILLA_LUA_LIBRARY, !config.repentogonEnabled);
        setExternalLibrary(luaCfg, context, REPENTOGON_LUA_LIBRARY, config.repentogonEnabled);
        setExternalLibrary(luaCfg, context, STAGEAPI_LUA_LIBRARY, config.stageAPISupportEnabled);
        setDefinedGlobals(luaCfg, true, config.repentogonEnabled);
        setPlugin(luaCfg, context, config.pluginEnabled);
        setPluginArgs(luaCfg, getPluginArgs(config));

        setMiscConfig(config.workspaceSettings);
        updateMaxFileSize(luaCfg);    

        return luaCfg;
    });

    context.subscriptions.push(vscode.workspace.onDidChangeConfiguration(event => onConfigChange(context, event)));
}

function onDeactivate(context: vscode.ExtensionContext) {
    const filenamePath = getCfgFilePath();

    if (!filenamePath) {
        return;
    }

    if (fs.existsSync(filenamePath)) {
        modifyJsoncFile(filenamePath, luaCfg => {
            setMiscConfig(false);
            setDefinedGlobals(luaCfg, false);
            setExternalLibrary(luaCfg, context, VANILLA_LUA_LIBRARY, false);
            setExternalLibrary(luaCfg, context, REPENTOGON_LUA_LIBRARY, false);
            setExternalLibrary(luaCfg, context, STAGEAPI_LUA_LIBRARY, false);
            setPlugin(luaCfg, context, false);
            setPluginArgs(luaCfg, {});
            return luaCfg;
        });
    }
}

async function onConfigChange(context: vscode.ExtensionContext, event: vscode.ConfigurationChangeEvent) {
    const config = getConfig();
    const filenamePath = getCfgFilePath();
    if (!filenamePath) {
        return;
    }

    const repentogonEnabledChanged = event.affectsConfiguration("boi-lua.repentogonEnabled");
    const pluginEnabledChanged = event.affectsConfiguration("boi-lua.pluginEnabled");
    const enableStageAPISupportChanged = event.affectsConfiguration("boi-lua.stageAPISupportEnabled");
    const anyChanged = [repentogonEnabledChanged, pluginEnabledChanged, enableStageAPISupportChanged].some(x => x);


    if (anyChanged) {
        await modifyJsoncFile(filenamePath, luaCfg => {
            if (repentogonEnabledChanged) {
                setExternalLibrary(luaCfg, context, VANILLA_LUA_LIBRARY, !config.repentogonEnabled);
                setExternalLibrary(luaCfg, context, REPENTOGON_LUA_LIBRARY, config.repentogonEnabled);
            }
            if (pluginEnabledChanged) {
                setPlugin(luaCfg, context, config.pluginEnabled);
            }
            if (pluginEnabledChanged || enableStageAPISupportChanged) {
                setPluginArgs(luaCfg, getPluginArgs(config));
            }
            if (enableStageAPISupportChanged) {
                setExternalLibrary(luaCfg, context, STAGEAPI_LUA_LIBRARY, config.stageAPISupportEnabled);
            }
            return luaCfg;
        });

        // The Lua plugin (and its args) are only read by the language server
        // on startup, config changes affecting it require a restart
        if (pluginEnabledChanged || enableStageAPISupportChanged) {
            await restartLuaLanguageServer();
        }
    }
}

async function restartLuaLanguageServer() {
    const luaExtension = vscode.extensions.getExtension(LUA_EXTENSION_ID);
    if (!luaExtension) {
        return;
    }

    try {
        // lua.startServer stops any running server before starting a new one
        await vscode.commands.executeCommand("lua.startServer");
        vscode.window.showInformationMessage("Restarted Lua language server to apply plugin settings.");
    } catch (error) {
        console.error("Failed to restart Lua language server", error);
    }
}

function getPluginArgs(config: ReturnType<typeof getConfig>) {
    const args: Record<string, unknown> = {};
    if (config.stageAPISupportEnabled) {
        args["enableStageAPISupport"] = config.stageAPISupportEnabled;
    }
    return args;
}

function getCfgFilePath() {
    const workspaceFolders = vscode.workspace.workspaceFolders as vscode.WorkspaceFolder[];
    if (!workspaceFolders) {
        console.error("No workspace has been opened, disabling most extension functionalities!");
        return null;
    }
    return path.join(workspaceFolders[0].uri.fsPath, LUA_CONFIG_FILENAME);
}