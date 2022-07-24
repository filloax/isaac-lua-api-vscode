// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as path from "path";
import { ISAAC_GLOBALS } from './isaacGlobals';
import * as fs from 'fs'; // In NodeJS: 'const fs = require('fs')'

// Used https://github.com/ManticoreGamesInc/vscode-core 
// (with MIT license) as reference for how to do this

const LUA_CONFIG_FILENAME = ".luarc.json";

const CONFIG_EXT_ID = "boi-lua"

export function activate(context: vscode.ExtensionContext) {
    // Must be opened in a workspace
    if (!vscode.workspace.workspaceFolders) {
        return;
    }

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

    const filesConfig = vscode.workspace.getConfiguration("files", null);
    const associationsKey = "associations";
    const associations: any = filesConfig.get(associationsKey);

    if (associations) {
        if (enable && !("*.anm2" in associations)) {
            associations["*.anm2"] = "xml";
            console.log("Added .anm2 recognition");
        } else if (!enable && "*.anm2" in associations) {
            delete associations["*.anm2"];
            console.log("Removed .anm2 recognition");
        }
        filesConfig.update(associationsKey, associations);
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

function getCfgFilePath() {
    const workspaceFolders = vscode.workspace.workspaceFolders as vscode.WorkspaceFolder[];
    return path.join(workspaceFolders[0].uri.fsPath, LUA_CONFIG_FILENAME);
}