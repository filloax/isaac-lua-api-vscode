// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as path from "path";
import { ISAAC_GLOBALS } from './isaacGlobals';
import * as fs from 'fs'; // In NodeJS: 'const fs = require('fs')'
import { getState } from './persist';

// Used https://github.com/ManticoreGamesInc/vscode-core 
// (with MIT license) as reference for how to do this

const LUA_CONFIG_FILENAME = ".luarc.json";

const CONFIG_EXT_ID = "boi-lua";

export function activate(context: vscode.ExtensionContext) {
    const state = getState(context);

    // Manual enabling command
    let disposables = [
        vscode.commands.registerCommand(`${CONFIG_EXT_ID}.activate`, () => {
            state.asked = true;
            state.enabled = true;
            console.log("Manually activating");
            doActivate(context);
            vscode.window.showInformationMessage("Isaac Lua VSCode manually activated! (You won't need to do this again in this workspace)");
        }),
        vscode.commands.registerCommand(`${CONFIG_EXT_ID}.deactivate`, () => {
            state.asked = true;
            state.enabled = false;
            console.log("Manually deactivating");
            doDeactivate(context);
            vscode.window.showInformationMessage("Isaac Lua VSCode manually deactivated!");
        }),
    ];
    
    if (!state.asked) {
        checkActivate(context);
        // check on every lua file too
        context.subscriptions.push(vscode.workspace.onDidOpenTextDocument(ev => onDidOpenLuaFile(context, ev)));
    } else if (state.enabled) {
        console.log("Already enabled, activating");
        doActivate(context);
    } else {
        console.log("Already asked user and refused, won't ask again");
    }

    disposables.forEach(d => context.subscriptions.push(d));
}

function onDidOpenLuaFile(context: vscode.ExtensionContext, event: vscode.TextDocument) {
    const state = getState(context);
    if (event.languageId === 'lua' && !state.asked && !state.enabled) {
        checkActivate(context);
    }
}
  
function checkActivate(context: vscode.ExtensionContext) {
    // Must be opened in a workspace
    if (!vscode.workspace.workspaceFolders) {
        return;
    }
    const state = getState(context);

    if (state.asked || state.enabled) { return; }

    checkIsModEnvironment().then(result => {
        if (result) {
            askActivation().then(answer => {
                console.log("Answered", answer);
                state.enabled = answer;
                if (answer) {
                    console.log("User accepted, activating...");
                    doActivate(context);
                    vscode.window.showInformationMessage("Isaac Lua VSCode activated! (You won't need to do this again in this workspace)");
                };
                state.asked = true;
            });
        }
    });
}

async function askActivation() {
    const yesItem = { title: 'Yes' };
    const noItem = { title: 'No' };
    const out = await vscode.window.showInformationMessage(
        'Detected files matching an Isaac mod project (metadata.xml and lua files), do you want to activate isaac-vscode-lua?\nYou can do this later with the ',
        yesItem, noItem
    );
    return out === yesItem;
}

function doActivate(context: vscode.ExtensionContext) {
    console.log("Activating...");

    const emmyluaPath = path.join("out", "emmylua");
    const filenamePath = getCfgFilePath();

    if (!fs.existsSync(filenamePath)) {
        fs.writeFileSync(filenamePath, "{\n}");
    }

    const luaCfg: any = {};
    vscode.workspace.openTextDocument(filenamePath).then(doc => {
        const readCfg = JSON.parse(doc.getText());
        for (const k in readCfg) {
            luaCfg[k] = readCfg[k];
        }
    }).then(() => {
        luaCfg["$schema"] = "https://raw.githubusercontent.com/sumneko/vscode-lua/master/setting/schema.json";
        luaCfg["runtime.version"] = "Lua 5.3";

        setExternalLibrary(luaCfg, context, emmyluaPath, true);
        setDefinedGlobals(luaCfg, true);
        setMiscConfig(true);
        updateMaxFileSize(luaCfg);    

        fs.writeFileSync(filenamePath, JSON.stringify(luaCfg, null, 4));
        // console.log(JSON.stringify(luaCfg));
    });

    // resetOldVersions(context);
}

export function deactivate(context: vscode.ExtensionContext) {
    doDeactivate(context);
}

function doDeactivate(context: vscode.ExtensionContext) {
    const emmyluaPath = path.join("out", "emmylua");

    const filenamePath = getCfgFilePath();

    if (fs.existsSync(filenamePath)) {
        const luaCfg: any = {};
        vscode.workspace.openTextDocument(filenamePath).then(doc => {
            const readCfg = JSON.parse(doc.getText());
            for (const k in readCfg) {
                luaCfg[k] = readCfg[k];
            }
        }).then(() =>{
            setMiscConfig(false);
            setDefinedGlobals(luaCfg, false);
            setExternalLibrary(luaCfg, context, emmyluaPath, false);

            fs.writeFileSync(filenamePath, JSON.stringify(luaCfg, null, 4));
            // console.log(JSON.stringify(luaCfg));
        });
    }
}

export function setExternalLibrary(config: any, context: vscode.ExtensionContext, folder: string, enable: boolean) {
    console.log("setExternalLibrary", folder, enable);

    const extensionId = context.extension.id;
    const extensionPath = context.extension.extensionPath;
    const folderPath = extensionPath ? path.join(extensionPath, folder) : "";
    if (extensionPath) {
        const configKey = "workspace.library";
        config[configKey] = config[configKey] || [];
        const library: string[] = config[configKey];

        // remove any older versions of our path e.g. "publisher.name-0.0.1"
        for (let i = library.length - 1; i >= 0; i--) {
            const el = library[i];
            const isSelfExtension = el.toLowerCase().indexOf(extensionId.toLowerCase()) > -1;
            const isCurrentVersion = el.toLowerCase().indexOf(extensionPath.toLowerCase()) > -1;
            if (isSelfExtension && !isCurrentVersion) {
                library.splice(i, 1);
            }
        }
        const index = library.indexOf(folderPath);
        if (enable) {
            if (index === -1) {
                library.push(folderPath);
            }
        }
        else {
            if (index > -1) {
                library.splice(index, 1);
            }
        }
    }
}

async function checkIsModEnvironment() {
    return (await vscode.workspace.findFiles('**/metadata.xml')).length > 0
        && (await vscode.workspace.findFiles('**.lua')).length > 0;
}

function setDefinedGlobals(config: any, enable: boolean) {
    const configKey = "diagnostics.globals";
    config[configKey] = config[configKey] || [];
    const definedGlobals: string[] = config[configKey];

    ISAAC_GLOBALS.forEach(global => {
        const index = definedGlobals.indexOf(global);
        if (index === -1 && enable) {
            definedGlobals.push(global);
            console.log(`added ${global} to globals`);
        } else if (index !== -1 && !enable) {
            definedGlobals.splice(index, 1);
            console.log(`removed ${global} from globals`);
        }
    });
}

function setMiscConfig(enable: boolean) {
    const extConfig = vscode.workspace.getConfiguration(CONFIG_EXT_ID);
    // If workspaceSettings isn't on, do not modify (and revert modifications to)
    // the base VSCode settings
    if (!extConfig.get("workspaceSettings")) {
        enable = false;
    }

    const config = vscode.workspace.getConfiguration();
    const associations = { ...config.get("files.associations") } as Record<string, string>;
    if (associations) {
        if (enable && !(".anm2" in associations)) {
            associations[".anm2"] = "xml";
            console.log("Added .anm2 recognition");
        } else if (!enable && ".anm2" in associations) {
            delete associations[".anm2"];
            console.log("Removed .anm2 recognition");
        }
        config.update('files.associations', associations, vscode.ConfigurationTarget.Workspace);
    }
}

function updateMaxFileSize(config: any) {
    const ourfilesize = 120;

    const currentSize: number = config["workspace.preloadFileSize"] || 150;
    if (currentSize < ourfilesize) {
        // increase preloadFileSize to make sure our config gets loaded
        console.log(`Bumping Lua preloadFileSize to ${ourfilesize}`);
        config["workspace.preloadFileSize"] = ourfilesize;
    }
}

function getCfgFilePath() {
    const workspaceFolders = vscode.workspace.workspaceFolders as vscode.WorkspaceFolder[];
    return path.join(workspaceFolders[0].uri.fsPath, LUA_CONFIG_FILENAME);
}

// Remove global settings from old versions
function resetOldVersions(context: vscode.ExtensionContext) {
    const folder = path.join("out", "emmylua");
    const extensionId = context.extension.id;
    const extensionPath = context.extension.extensionPath;
    const folderPath = extensionPath ? path.join(extensionPath, folder) : "";
    const config = vscode.workspace.getConfiguration("Lua", null);
    const library: string[] | undefined = config.get("workspace.library");
    if (library && extensionPath) {
        // remove any older versions of our path e.g. "publisher.name-0.0.1"
        for (let i = library.length - 1; i >= 0; i--) {
            const el = library[i];
            const isSelfExtension = el.indexOf(extensionId) > -1;
            const isCurrentVersion = el.indexOf(extensionPath) > -1;
            if (isSelfExtension && !isCurrentVersion) {
                library.splice(i, 1);
            }
        }
        const index = library.indexOf(folderPath);
        if (index > -1) {
            library.splice(index, 1);
        }
        config.update("workspace.library", library, true);
    }

    const configKey = "diagnostics.globals";
    const definedGlobals: string[] | undefined = config.get(configKey);

    if (definedGlobals) {
        ISAAC_GLOBALS.forEach(global => {
            const index = definedGlobals.indexOf(global);
            if (index !== -1) {
                definedGlobals.splice(index, 1);
                console.log(`removed ${global} from globals`);
            }
        });
        config.update(configKey, definedGlobals);
    }
}