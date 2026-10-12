import * as vscode from 'vscode';
import { Constants } from './constants';

interface Config {
    get workspaceSettings(): boolean;
    get repentogonEnabled(): boolean;
    get pluginEnabled(): boolean;
    get stageAPISupportEnabled(): boolean;
    get callbackFunctionCompletionEnabled(): boolean;
    get callbackParamAliases(): Record<string, string>;
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
    get pluginEnabled(): boolean {
        return this._config.get("pluginEnabled") === true;
    }
    get stageAPISupportEnabled(): boolean {
        return this._config.get("stageAPISupportEnabled") === true;
    }
    get callbackFunctionCompletionEnabled(): boolean {
        return this._config.get("callbackFunctionCompletionEnabled") === true;
    }
    get callbackParamAliases(): Record<string, string> {
        return this._config.get("callbackParamAliases", {});
    }
}

export function getConfig() { return new ConfigImpl(); }