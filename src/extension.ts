// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as path from "path";

// Used https://github.com/ManticoreGamesInc/vscode-core 
// (with MIT license) as reference for how to do this

export function activate(context: vscode.ExtensionContext) {
    const emmyluaPath = path.join("out", "emmylua");
    setExternalLibrary(context, emmyluaPath, true);
    updateConfig();
}

export function deactivate(context: vscode.ExtensionContext) {
    const emmyluaPath = path.join("out", "emmylua");
    setExternalLibrary(context, emmyluaPath, false);
}

export function setExternalLibrary(context: vscode.ExtensionContext, folder: string, enable: boolean) {
    console.log("setExternalLibrary", folder, enable);

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
        config.update("workspace.library", library, true);
    }
}

function updateConfig() {
    const ourfilesize = 120;

    const sumneko = vscode.workspace.getConfiguration("Lua");
    const currentSize: number = sumneko.get("workspace.preloadFileSize") || 150;
    if (currentSize < ourfilesize) {
        // increase preloadFileSize to make sure our config gets loaded
        sumneko.update("workspace.preloadFileSize", ourfilesize, true);
        console.log(`Bumping Lua preloadFileSize to ${ourfilesize}`);
    }
}