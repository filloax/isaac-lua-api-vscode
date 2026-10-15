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
    private get _config(): vscode.WorkspaceConfiguration {
        return vscode.workspace.getConfiguration(Constants.EXT_ID);
    }

    get workspaceSettings(): boolean {
        return this._config.get("workspaceSettings") !== undefined;
    }

    get repentogonEnabled(): boolean {
        return this._config.get("repentogonEnabled", false);
    }

    get pluginEnabled(): boolean {
        return this._config.get("pluginEnabled", false);
    }

    get stageAPISupportEnabled(): boolean {
        return this._config.get("stageAPISupportEnabled", false);
    }

    get callbackFunctionCompletionEnabled(): boolean {
        return this._config.get("callbackFunctionCompletionEnabled", true);
    }

    get callbackParamAliases(): Record<string, string> {
        return this._config.get("callbackParamAliases", {});
    }
}

export function getConfig() { return new ConfigImpl(); }