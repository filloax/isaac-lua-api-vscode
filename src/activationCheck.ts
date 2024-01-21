import * as vscode from 'vscode';
import { getState } from './persist';

function checkActivate(context: vscode.ExtensionContext, onActivate: (context: vscode.ExtensionContext) => void) {
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
                    onActivate(context);
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

async function checkIsModEnvironment() {
    return (await vscode.workspace.findFiles('**/metadata.xml')).length > 0
        && (await vscode.workspace.findFiles('**.lua')).length > 0;
}

export { checkActivate };