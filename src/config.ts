import * as vscode from 'vscode';
import { Constants } from './constants';

interface Config {
    get workspaceSettings(): boolean;
    get repentogonEnabled(): boolean;
}

class ConfigImpl implements Config {
    private _config: vscode.WorkspaceConfiguration;

    constructor() {
        this._config = vscode.workspace.getConfiguration(Constants.EXT_ID);
    }

    get workspaceSettings(): boolean {
        return this._config.get("workspaceSettings") !== undefined;
    }
    get repentogonEnabled(): boolean {
        return this._config.get("repentogonEnabled") === true;
    }
}

export function getConfig() { return new ConfigImpl(); }