import * as vscode from 'vscode';

export function getState(context: vscode.ExtensionContext): State {
    return new StateImpl(context);
}

export type State = {
    enabled: boolean;
    asked: boolean;
};

class StateImpl implements State {
    private _enabled: boolean;
    private _asked: boolean;
    private _state: vscode.Memento;
  
    constructor(context: vscode.ExtensionContext) {
        this._state = context.workspaceState;
        this._enabled = this._state.get('enabled') || false;
        this._asked = this._state.get('asked') || false;
    }

    public get enabled(): boolean {
        return this._enabled;
    }
    public set enabled(value: boolean) {
        this._enabled = value;
        this.update("enabled", value);
    }

    public get asked(): boolean {
        return this._asked;
    }
    public set asked(value: boolean) {
        this._asked = value;
        this.update("asked", value);
    }

    update(key: string, value: any) {
        this._state.update(key, value);
    }
}

