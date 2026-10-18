import * as vscode from 'vscode';
import { Constants } from './constants';

interface Config {
    get workspaceSettings(): boolean;
    get repentogonEnabled(): boolean;
    get pluginEnabled(): boolean;
    get stageAPISupportEnabled(): boolean;
    get callbackFunctionCompletionEnabled(): boolean;
    get callbackFunctionCompletionTypes(): CallbackCompletionTypes;
    get callbackParamAliases(): Record<string, string>;
}

export interface CallbackCompletionTypes {
    inlineFunction: boolean;
    localFunction: boolean;
    tableMethod: boolean;
}

const DEFAULT_COMPLETION_TYPES: CallbackCompletionTypes = {
    inlineFunction: true,
    localFunction: true,
    tableMethod: true,
};

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

    get callbackFunctionCompletionTypes(): CallbackCompletionTypes {
        return { ...DEFAULT_COMPLETION_TYPES, ...this._config.get("callbackFunctionCompletionTypes", {}) };
    }

    get callbackParamAliases(): Record<string, string> {
        return this._config.get("callbackParamAliases", {});
    }
}

export function getConfig() { return new ConfigImpl(); }