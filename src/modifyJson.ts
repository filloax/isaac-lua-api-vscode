import * as vscode from 'vscode';
import * as fleece from 'golden-fleece';

export async function modifyJsoncFile(filePath: string, modifyJson: (obj: any) => any): Promise<void> {
    try {
        const document = await vscode.workspace.openTextDocument(filePath);
        const text = document.getText();

        const jsonObj = fleece.evaluate(text);

        const modifiedObj = modifyJson(jsonObj);

        const modifiedText = fleece.patch(text, modifiedObj);

        const edit = new vscode.WorkspaceEdit();
        const fullRange = new vscode.Range(
            document.positionAt(0),
            document.positionAt(text.length)
        );

        edit.replace(document.uri, fullRange, modifiedText);
        await vscode.workspace.applyEdit(edit);
        await document.save();

    } catch (error) {
        vscode.window.showErrorMessage(`Failed to modify JSONC file: ${error}`);
    }
}
