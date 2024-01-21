import * as vscode from 'vscode';
import { ISAAC_GLOBALS, REPENTOGON_GLOBALS, COMMON_MOD_GLOBALS } from './isaacGlobals';
import * as path from "path";


function setExternalLibrary(config: any, context: vscode.ExtensionContext, folder: string, enable: boolean) {
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

function setDefinedGlobals(config: any, enable: boolean, withRepentogon: boolean = false) {
    const configKey = "diagnostics.globals";
    config[configKey] = config[configKey] || [];
    const definedGlobals: string[] = config[configKey];

    const globals = [...ISAAC_GLOBALS, ...COMMON_MOD_GLOBALS];
    if (withRepentogon) { globals.push(...REPENTOGON_GLOBALS); }

    globals.forEach(global => {
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

export {
    setExternalLibrary,
    setDefinedGlobals,
    setMiscConfig,
    updateMaxFileSize,
};