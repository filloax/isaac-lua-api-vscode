import * as vscode from 'vscode';
import { getConfig } from './config';
import { Constants } from './constants';
import * as luaparse from 'luaparse';
import * as jsonVanillaCallbacks from "./docs/enums/callbacks/vanilla.json";
import * as jsonRgonCallbacks from "./docs/enums/callbacks/repentogon.json";
import * as jsonStageApiCallbacks from "./docs/enums/callbacks/stageapi.json";
import { Callbacks, IsaacCallback, IsaacLuaConfig, RegisterFuncConfig, getIsaacLuaConfig, onChangeIsaacLuaConfig } from './isaacLuaConfig';
import { walk } from './luaUtil';
import { mergeDeep } from './util';
import { table } from 'console';

const vanillaCallbacks: Callbacks = jsonVanillaCallbacks;
const rgonCallbacks: Callbacks = jsonRgonCallbacks;
const stageApiCallbacks: Callbacks = jsonStageApiCallbacks;

let callbackTables: Callbacks[] = [];
// callback value -> callback name
let callbackByValue = new Map<number | string, string>();
let callbacksMerged: Callbacks = {};

/* eslint-disable @typescript-eslint/naming-convention */
// (as for plugin.lua, first id for mod arg funcs is mod)
const DEFAULT_REGISTER_FUNCTIONS: Record<string, RegisterFuncConfig> = {
    "AddCallback": { idArg: 1, funcArg: 2, hasModArg: true },
    "AddPriorityCallback": { idArg: 1, funcArg: 3, hasModArg: true },
    "StageAPI.AddCallback": { idArg: 1, funcArg: 3, hasModArg: false },
};
/* eslint-enable @typescript-eslint/naming-convention */
let registerFunctions: Record<string, RegisterFuncConfig> = { ...DEFAULT_REGISTER_FUNCTIONS };

interface TableCacheEntry { version: number; tables: string[]; }
// document path : last ok parsed table list
const tableCache = new Map<string, TableCacheEntry>();

const config = getConfig();

export function rebuildCompletionCallbacks() {
    rebuildCallbacks(getIsaacLuaConfig());
}

function rebuildCallbacks(luaConfig: IsaacLuaConfig | undefined){
    const tables: Callbacks[] = [];
    const byValue = new Map<number | string, string>();
    const merged: Callbacks = {};

    //json callback stuff
    if(config.repentogonEnabled){tables.push(rgonCallbacks);} //load before vanilla callbacks so that rgon vanilla overrides take priority
    tables.push(vanillaCallbacks);
    if(config.stageAPISupportEnabled){tables.push(stageApiCallbacks);}

    for (let callbacks of tables) {
        for (let callbackId in callbacks) {
            const entry = callbacks[callbackId];
            if (entry.value !== undefined) {
                const numericValue = typeof entry.value === "string" ? parseInt(entry.value, 10) : entry.value;
                if (!isNaN(numericValue) && byValue.get(numericValue) === undefined) {
                    byValue.set(numericValue, callbackId);
                } else {
                    byValue.set(entry.value, callbackId);
                }
            }

            // merge callbacks like build py script to handle
            // repentogon overrides
            const mergedEntry = mergeDeep(merged[callbackId] || {}, entry);
            merged[callbackId] = mergedEntry;
        }
    }

    //lua config callback and func stuff (we add callbacks to table after the value mapping so that we dont waste time on records which wont have a value anyways)
    if (luaConfig) {
        tables.push(luaConfig.callbacks);
    }

    callbackTables = tables;
    callbackByValue = byValue;
    callbacksMerged = merged;
    registerFunctions = { ...DEFAULT_REGISTER_FUNCTIONS, ...luaConfig?.registerFunctions };

    tableCache.clear();
}

function getCallbackTablesFromLua(ast: luaparse.Chunk): string[]{
    const tableCounts: Record<string, number> = {};

    walk(ast, (node) => {
        if(node.type === "FunctionDeclaration"){
            if(node.identifier && node.identifier.type === "MemberExpression"){
                if(node.identifier.base.type === "Identifier"){
                    const base = node.identifier.base.name;
                    const funcName = node.identifier.identifier.name;

                    if (!registerFunctions[funcName] && node.identifier.indexer === ":") {
                        tableCounts[base] = (tableCounts[base] ?? 0) + 1;
                    }
                }
            }
        }
    });

    return Object.keys(tableCounts).sort((a, b) => tableCounts[b] - tableCounts[a]);
}

const namePatterns = {
    pre: ["PRE"],
    on: ["POST"],
};

function getFuncNameFromCallback(callbackName: string): string{
    const words = callbackName.split("_");

    let prefix: string | undefined;
    for (const [key, checkWords] of Object.entries(namePatterns)) {
        // first two words
        if (checkWords.includes(words[0]) || (checkWords.includes(words[1]) && words[0] === "MC")) {
            prefix = key;
        }
    }
    if (!prefix) {
        prefix = "on";
    }

    let funcName = prefix;

    const startFrom = (words[0] === "MC") ? 2 : 1;
    
    words.map((word, idx) => {
        if (idx >= startFrom){
            funcName += word.charAt(0) + word.substring(1).toLowerCase();
        }
    });

    return funcName;
}

function getCalleePath(node: luaparse.Expression): string | undefined {
    if (node.type === 'Identifier') {
        return node.name;
    }
    if (node.type === 'MemberExpression') {
        const base = getCalleePath(node.base);
        const key = node.identifier.name;
        if (!base || !key) {return undefined;}
        return `${base}${node.indexer}${key}`;
    }
    return undefined;
}

function getRegisterConfig(callExpr: luaparse.CallExpression): { cfg: RegisterFuncConfig; offset: number } | undefined {
    const fullPath = getCalleePath(callExpr.base);
    let cfg = fullPath ? registerFunctions[fullPath] : undefined;

    let name = "";
    let isColonCall = false;

    if (callExpr.base.type === 'MemberExpression') {
        name = callExpr.base.identifier.name;
        isColonCall = callExpr.base.indexer === ':';
    } else if (callExpr.base.type === 'Identifier') {
        name = callExpr.base.name;
    }

    if (!cfg) {
        cfg = registerFunctions[name];
    }

    if (!cfg) {return undefined;}

    const offset = isColonCall ? -1 : 0;

    return { cfg, offset };
}

vscode.commands.registerCommand(`${Constants.EXT_ID}.deleteLineXBack`, async (backAmount: number, text: string, funcName: string) => {
  const editor = vscode.window.activeTextEditor;
  if (!editor) {return;}

  const targetLine = Math.max(0, editor.selection.active.line - backAmount);
  const line = editor.document.lineAt(targetLine);

  await editor.edit(editBuilder => {
    editBuilder.delete(line.rangeIncludingLineBreak);
  });

  const lines = text.split('\n');
  const selections: vscode.Selection[] = [];
  lines.forEach((line, idx) => {
    if (line.includes(funcName) && idx > 0){ //skip first iteration cuz thats actually the inline string that gets deleted, also we substract by one cuz we removed a line earlier
        const start = new vscode.Position(targetLine + idx - 1, line.indexOf(funcName));
        const end = new vscode.Position(targetLine + idx - 1, line.indexOf(funcName) + funcName.length);

        selections.push(new vscode.Selection(start, end));
    }
  });

  editor.selections = selections;
});

interface CompletionPair {
    inlineString: string; //these have a space by default and no ',' as that is the trigger point for the autocomplete.
    bodyString: string;
    isColonMethod: boolean;
}

export function inlineParamCompletion(context: vscode.ExtensionContext) {    
    rebuildCallbacks(getIsaacLuaConfig());
    context.subscriptions.push(onChangeIsaacLuaConfig(rebuildCallbacks));
    context.subscriptions.push(vscode.workspace.onDidCloseTextDocument(doc => {
        tableCache.delete(doc.uri.toString());
    }));

    const provider : vscode.InlineCompletionItemProvider = {
        provideInlineCompletionItems(document, position, context, token) {
            if(!config.callbackFunctionCompletionEnabled) {return [];}

            const lineText = document.lineAt(position.line).text;
            const beforeCursor = lineText.slice(0, position.character);

            //Step 1: Find the suggestion moment.
            if(!beforeCursor.trimEnd().endsWith(',')) {return[];}
            if (lineText.includes(')') && position.character > lineText.lastIndexOf(')')) {return [];}

            const luaLineCode = beforeCursor + "nil)";
            let lineAST = luaparse.parse(luaLineCode, {wait: false, comments: false});
            const statement = lineAST.body[0];
            if (!statement || statement.type !== 'CallStatement') {return [];}
            
            const callExpr = statement.expression;
            if (callExpr.type !== 'CallExpression') {return [];}

            const match = getRegisterConfig(callExpr);
            if(!match){return[];} 
            const funcIndex = match.cfg.funcArg + match.offset;
            const idIndex = match.cfg.idArg + match.offset;

            if((callExpr.arguments.length - 1) !== funcIndex || idIndex < 0 || idIndex >= callExpr.arguments.length) {return[];}

            let callbackName: string | undefined = undefined;
            const idArg = callExpr.arguments[idIndex];
            if (idArg.type === "MemberExpression"){
                callbackName = idArg.identifier.name;
            } else if (idArg.type === "NumericLiteral"){
                callbackName = callbackByValue.get(idArg.value);
            } else if (idArg.type === "StringLiteral"){
                callbackName = idArg.raw.substring(1, idArg.raw.length-1);
                if (!(callbackName in callbacksMerged)) {
                    // treat string as value
                    callbackName = callbackByValue.get(callbackName);
                }
            }
            if (callbackName === undefined) {return[];}

            //Step 2: Get the function name from callback used, and insert it into inline suggestions
            const completionTypes = config.callbackFunctionCompletionTypes;
            const tableCacheKey = document.uri.toString();
            const cachedTables = tableCache.get(tableCacheKey);
            let sortedTables: string[] = cachedTables?.tables ?? [];

            if (completionTypes.tableMethod && !cachedTables || cachedTables?.version !== document.version) {
                try {
                    const allLuaCode = document.getText(new vscode.Range(new vscode.Position(0, 0), new vscode.Position(position.line, 0)));
                    const allAST = luaparse.parse(allLuaCode, {wait: false, comments: false});
                    sortedTables = getCallbackTablesFromLua(allAST);
                    tableCache.set(tableCacheKey, { version: document.version, tables: sortedTables });
                } catch {
                    // keep cached result
                }
            }

            const funcName = getFuncNameFromCallback(callbackName);

            const completionPairs: CompletionPair[] = [];
            if (completionTypes.inlineFunction) {
                completionPairs.push({
                    inlineString: " function()\n\nend",
                    bodyString: "",
                    isColonMethod: false
                });
            }
            if (completionTypes.localFunction) {
                completionPairs.push({
                    inlineString: ` ${funcName}`,
                    bodyString: `local function ${funcName}()\n\nend`,
                    isColonMethod: false
                });
            }

            const hasModRefParam = match.cfg.hasModArg;
            if (completionTypes.tableMethod) {
                sortedTables.forEach(tableName => {
                    completionPairs.push({
                        inlineString: ` ${tableName}.${funcName}`,
                        bodyString: `function ${tableName}${hasModRefParam ? ":" : "."}${funcName}()\n\nend`,
                        isColonMethod: hasModRefParam
                    });
                });
            }
            if (completionPairs.length === 0) {return [];}

            //Step 3: Add params based on callback used
            const paramAliases = config.callbackParamAliases;
            let callback = callbacksMerged[callbackName];
            
            let callbackParams: string[] = [];
            if(callback !== undefined && callback.args !== undefined){
                callbackParams = callback.args.map((arg, idx) => {
                    if(!arg.name){
                        return `unknownArg${idx + 1}`;
                    }
                    
                    let name: string;

                    if(arg.name === arg.name.toUpperCase()){
                        name = arg.name.toLowerCase();
                    } else {
                        name = arg.name.charAt(0).toLowerCase() + arg.name.slice(1);
                    }

                    if(paramAliases[name]){
                        return paramAliases[name];
                    } else {
                        return name;
                    }
                });
            }

            const finalCompletionItems: vscode.InlineCompletionItem[] = [];
            
            completionPairs.map((pair) => {
                let inlineStr = pair.inlineString;
                let bodyStr = pair.bodyString;

                let paramsList = [...callbackParams];

                //prolly will be coming back to this condition later since it kinda irks me
                if (hasModRefParam && !pair.isColonMethod) {
                    paramsList.unshift("_");
                }

                const paramString = paramsList.join(", ");

                inlineStr = inlineStr.replace("()", `(${paramString})`);
                bodyStr = bodyStr.replace("()", `(${paramString})`);

                if (!lineText.trim().endsWith(')')) { inlineStr += ')'; }
                if (beforeCursor.endsWith(' ')) { inlineStr = inlineStr.substring(1); }

                const indent = beforeCursor.match(/^\s*/)?.[0] || "";
                if (!inlineStr.includes('(')) {
                    const indentedBody = bodyStr.split('\n').map(line => indent + line).join('\n');
                    
                    let finalLineText = lineText;
                    if (lineText.trimEnd().endsWith(')')) {
                        const parIdx = lineText.lastIndexOf(')');
                        finalLineText = lineText.slice(0, parIdx) + lineText.slice(parIdx + 1);
                    }
                    const replacementText = `${inlineStr}\n${indentedBody}\n${finalLineText + inlineStr}`;
                    
                    const completionItem = new vscode.InlineCompletionItem(
                        replacementText,
                        new vscode.Range(position, position)
                    );

                    completionItem.command = {
                        title: "Delete Line",
                        command: `${Constants.EXT_ID}.deleteLineXBack`,
                        arguments: [bodyStr.split('\n').length + 1, replacementText, funcName]
                    };

                    finalCompletionItems.push(completionItem);
                } else {
                    const indentedInline = inlineStr.split('\n').map(line => line.includes("end") ? indent + line : line).join('\n');

                    finalCompletionItems.push(
                        new vscode.InlineCompletionItem(
                            indentedInline,
                            new vscode.Range(position, position)
                        )
                    );
                }
            });

            return finalCompletionItems;
        }
    };

    context.subscriptions.push(
        vscode.languages.registerInlineCompletionItemProvider(
            {language: "lua"},
            provider
        )
    );
}