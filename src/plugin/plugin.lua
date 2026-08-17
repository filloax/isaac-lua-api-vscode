--[[
Sumneko/LuaLS plugin to make *:AddCallback
recognize the functions inside as
the respective callback

Example:

```
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, function(_, ent, dmg, <other params>)
    ...
end)
```

Ignores call if ---@param manually specified

Workspaces can also define their own callback types and their own
AddCallback-like registration functions (like StageAPI.AddCallback) by
placing a `.isaac-callbacks.lua` file at the workspace root.
]]

print("Loading Isaac Lua plugin!")

local guide = require 'parser.guide'
local luadoc = require 'parser.luadoc'
local furi = require 'file-uri'
local workspace = require 'workspace'

---Args set by `Lua.runtime.pluginArgs` LuaLS setting,
---and passed by Lua LS
---@class PluginArgs
---@field EnableStageAPISupport boolean

local PLUGIN_ARG_LIST = select(3, ...) or {}

local function includes(ls, v)
    for _, v2 in ipairs(ls) do
        if v2 == v then
            return true
        end
    end
    return false
end

---@type PluginArgs
local PLUGIN_ARGS = {
    EnableStageAPISupport = includes(PLUGIN_ARG_LIST, "enableStageAPISupport")
}

if PLUGIN_ARGS.EnableStageAPISupport then
    print("Enabled StageAPI support")
end

---@class CallbackParamConfig
---@field Type string
---@field Name string?

---@class CallbackConfig
---@field Args CallbackParamConfig[]
---@field Returns CallbackParamConfig[]
---@field RequireRegisterFunc string? If set, only applies to the specified register func

---Contains arg types
---@type table<string, CallbackConfig>
local CALLBACK_TYPES = {}

-- probably less complicated would have been enough, but extension paths be wonky so just in case
---@param path string
---@param apply fun(data: table)
---@return boolean found
---@return boolean|string ok
local function safeLoadData(path, apply)
    local chunk, loadErr = loadfile(path)
    if not chunk then
        return false, loadErr or 'unknown error'
    end
    local ok, data = pcall(chunk)
    if not ok then
        return true, data
    end
    if type(data) ~= 'table' then
        return true, ('expected file to return a table, got %s'):format(type(data))
    end
    apply(data)
    return true, true
end

do
    local scriptPath = debug.getinfo(1, 'S').source:match('^@(.*)[/\\][^/\\]+$')
    if scriptPath then
        safeLoadData(scriptPath .. '/callbackParams.lua', function (data)
            CALLBACK_TYPES = data
        end)

        if PLUGIN_ARGS.EnableStageAPISupport then
            safeLoadData(scriptPath .. '/callbackParamsStageAPI.lua', function (callbacks)
                for name, params in pairs(callbacks) do
                    CALLBACK_TYPES[name] = params
                end
            end)
        end
    end
end

local MOD_TYPE = "ModReference"
-- in characters
local MANUAL_DOC_LOOKBACK = 500
local WORKSPACE_CONFIG_FILENAME = '.isaac-config.lua'

---@class CallbackRegisterFuncConfig
---@field IdArg integer arg index (from 1) with the callback id
---@field FunctionArg integer arg index holding the callback function
---@field HasModArg boolean If true, adds mod (self) as first arg to callbacks

---@class WorkspaceConfig
---@field Callbacks table<string, CallbackConfig>
---@field RegisterFunctions table<string, CallbackRegisterFuncConfig>

-- Matched only against name (used for mod references with varying name)
---@type table<string, CallbackRegisterFuncConfig>
local CALLBACK_REGISTER_FUNCS = {
    AddCallback = { IdArg = 2, FunctionArg = 3, HasModArg = true },
    AddPriorityCallback = { IdArg = 2, FunctionArg = 4, HasModArg = true },
}

-- Callback register functions with full dot path to match against owner table
-- like StageAPI.AddCallback, takes priority on match
---@type table<string, CallbackRegisterFuncConfig>
local PATH_REGISTER_FUNCS = {}

local hasPathRegisterFuncs = false
if PLUGIN_ARGS.EnableStageAPISupport then
    PATH_REGISTER_FUNCS["StageAPI.AddCallback"] = {
        IdArg = 2, FunctionArg = 4, HasModArg = false,
    }
    hasPathRegisterFuncs = true
end

--#region customization / user config

---@param data WorkspaceConfig
local function applyWorkspaceConfig(data)
    if type(data.Callbacks) == 'table' then
        for name, params in pairs(data.Callbacks) do
            CALLBACK_TYPES[name] = params
        end
    end
    if type(data.RegisterFunctions) == 'table' then
        for key, cfg in pairs(data.RegisterFunctions) do
            hasPathRegisterFuncs = true
            -- apparently for a simple one like this two plain searches faster than one pattern
            if key:find('.', 1, true) or key:find(':', 1, true) then
                -- print("Registered path register func " .. tostring(key))
                PATH_REGISTER_FUNCS[key] = cfg
            else
                -- print("Registered callback register func " .. tostring(key))
                CALLBACK_REGISTER_FUNCS[key] = cfg
            end
        end
    end
end

local searchedRootUris = {}
local erroredRootUris = {}

---@param uri string
local function loadWorkspaceConfig(uri)
    local rootUri = workspace.getRootUri(uri)
    if not rootUri or searchedRootUris[rootUri] then
        return
    end

    local rootPath = furi.decode(rootUri)
    local configPath = rootPath .. '/' .. WORKSPACE_CONFIG_FILENAME
    local found, ok = safeLoadData(configPath, applyWorkspaceConfig)

    if not found then
        searchedRootUris[rootUri] = true
        return
    end

    if ok == true then
        searchedRootUris[rootUri] = true
        print("Loaded configuration at " .. tostring(configPath))
    elseif not erroredRootUris[rootUri] then
        erroredRootUris[rootUri] = true
        print("Failed to load configuration at " .. tostring(configPath) .. ": " .. tostring(ok))
    end
end

--#endregion

---@param paramName string
---@param typename string
---@param referenceParamName? string
---@param pos integer
local function buildParamComment(paramName, typename, referenceParamName, pos)
    return {
        type = 'comment.short',
        start = pos,
        finish = pos,
        text = ('-@param %s %s'):format(paramName, typename, referenceParamName),
        -- Currently does not show any hint, and not using the user's name makes recognition not work
        -- text = ('-@param %s %s %s'):format(paramName, typename, referenceParamName),
        virtual = true,
    }
end

---Trailing or a nil |
---@param typeStr string
---@return boolean
local function isTypeOptional(typeStr)
    typeStr = typeStr:match('^%s*(.-)%s*$')
    return typeStr:sub(-1) == '?'
        or typeStr:find('|%s*nil%s*|') ~= nil
        or typeStr:find('|%s*nil%s*$') ~= nil
        or typeStr:find('^nil%s*|') ~= nil
end

---@param typeStr string
---@return string
local function makeTypeOptional(typeStr)
    if isTypeOptional(typeStr) then
        return typeStr
    end
    return "(" .. typeStr .. ')?'
end

---@param returns CallbackParamConfig[]
---@param pos integer
local function buildReturnsComment(returns, pos)
    -- multiple returns in a comment to ensure it gets assigned properly
    local parts = {}
    for i, ret in ipairs(returns) do
        local optType = makeTypeOptional(ret.Type)
        parts[i] = ret.Name and ('%s %s'):format(optType, ret.Name) or optType
    end
    return {
        type = 'comment.short',
        start = pos,
        finish = pos,
        text = '-@return ' .. table.concat(parts, ', '),
        virtual = true,
    }
end

---Add a comment to the param in the AST (rather than fiddling with internals)
---@param ast parser.object
---@param paramSource parser.object
---@param typeName string
---@param refParamName? string
local function bindParamType(ast, paramSource, typeName, refParamName)
    if not guide.isParam(paramSource) then
        return
    end
    local paramName = guide.getKeyName(paramSource)
    if not paramName then
        return
    end
    local comment = buildParamComment(paramName, typeName, refParamName, paramSource.start - 1)
    luadoc.buildAndBindDoc(ast, paramSource.parent.parent, comment)
end

---Add a ---@return comment to the function in the AST
---@param ast parser.object
---@param funcNode parser.object
---@param returns CallbackParamConfig[]?
local function bindFuncReturns(ast, funcNode, returns)
    if not returns or #returns == 0 then
        return
    end
    local comment = buildReturnsComment(returns, funcNode.start - 1)
    luadoc.buildAndBindDoc(ast, funcNode, comment)
end

--- Check if ---@param or ---@return comment exists in func
---@param ast parser.object
---@param callSource parser.object
local function hasManualDoc(ast, callSource)
    local comments = ast.state and ast.state.comms
    if not comments then
        return false
    end
    local best
    for _, comment in ipairs(comments) do
        if comment.finish
        and comment.finish <= callSource.start
        and callSource.start - comment.finish <= MANUAL_DOC_LOOKBACK
        then
            if not best or comment.finish > best.finish then
                best = comment
            end
        end
    end
    return best ~= nil and best.text ~= nil
        and (
            best.text:find('@param', 1, true) ~= nil
            or best.text:find('@return', 1, true) ~= nil
        )
end

---@param ast parser.object
---@param funcArgs parser.object[]
---@param paramTypes CallbackConfig
---@param hasModArg boolean
local function bindFuncArgs(ast, funcArgs, paramTypes, hasModArg)
    for i, paramSource in ipairs(funcArgs) do
        local paramCfg
        if hasModArg then
            -- first param is the mod/self reference
            paramCfg = i > 1 and paramTypes.Args[i - 1]
        else
            paramCfg = paramTypes.Args[i]
        end
        if paramCfg then
            bindParamType(ast, paramSource, paramCfg.Type, paramCfg.Name)
        end
    end
end


--#region modify pre-defined function params
local ACCESS_TYPES = {
    ["getlocal"] = true,
    ["getglobal"] = true,
    ["getfield"] = true,
}
local FIELD_DEF_TYPES = {'setfield', 'tablefield', 'setmethod'}
local GLOBAL_SET_TYPES = {'setglobal'}

---@param fnArg parser.object
local function isPassedFunction(fnArg)
    return fnArg and ACCESS_TYPES[fnArg.type]
end

---@param ast parser.object
---@return parser.object[]
local function findFunctionDefs(ast, name, cache, key, assignStatementTypes)
    local byName = cache[key]
    if not byName then
        byName = {}
        cache[key] = byName
        guide.eachSourceTypes(ast, assignStatementTypes, function (src)
            local srcName = guide.getKeyName(src)
            if srcName and src.value and src.value.type == 'function' then
                if not byName[srcName] then
                    byName[srcName] = {}
                end
                table.insert(byName[srcName], src)
            end
        end)
    end
    return byName[name] or {}
end

---@param refBase parser.object
---@param defBase parser.object
local function isSameTable(refBase, defBase)
    if not refBase or not defBase then
        return false
    end
    if defBase.type == 'table' then
        return refBase.type == 'getlocal'
            and refBase.node ~= nil
            and refBase.node.value == defBase
    end
    if refBase.type ~= defBase.type then
        return false
    end
    if refBase.type == 'getlocal' then
        return refBase.node == defBase.node
    elseif refBase.type == 'getglobal' then
        return guide.getKeyName(refBase) == guide.getKeyName(defBase)
    elseif refBase.type == 'getfield' then
        return guide.getKeyName(refBase) == guide.getKeyName(defBase)
            and isSameTable(refBase.node, defBase.node)
    end
    return false
end

---@param fnArg parser.object
---@return parser.object?
local function getMatchingFunctionDefinition(ast, fnArg, cache)
    local typ = fnArg.type
    if typ == "getlocal" then
        return fnArg.node
    elseif typ == "getglobal" or typ == "getfield" then
        local name = guide.getKeyName(fnArg)
        if not name then return end
        if typ == "getglobal" then
            local defs = findFunctionDefs(ast, name, cache, "globals", GLOBAL_SET_TYPES)
            return defs[1]
        else
            local defs = findFunctionDefs(ast, name, cache, "fields", FIELD_DEF_TYPES)
            -- check if same table
            for _, def in ipairs(defs) do
                if isSameTable(fnArg.node, def.node) then
                    return def
                end
            end
        end
    end
end

---@param def parser.object
local function getFunctionDefArgs(def)
    return def.value and def.value.args
end

--#endregion


---Gets dot-separated path for function calls to match against
---custom callback config, like `StageAPI.AddCallback`
---@param node parser.object?
---@return string?
local function buildDottedPath(node)
    if not node then
        return nil
    end
    if node.type == 'getglobal' or node.type == 'getlocal' then
        return guide.getKeyName(node)
    elseif node.type == 'getfield' then
        local base = buildDottedPath(node.node)
        local key = guide.getKeyName(node)
        if not base or not key then
            return nil
        end
        return base .. "." .. key
    elseif node.type == "getmethod" then
        local base = buildDottedPath(node.node)
        local key = guide.getKeyName(node)
        if not base or not key then
            return nil
        end
        return base .. ":" .. key
    end
    return nil
end

---@param callee parser.object
---@return CallbackRegisterFuncConfig?
---@return string?
local function getRegisterFuncConfig(callee)
    if hasPathRegisterFuncs then
        -- first match against full path for custom callback registrators,
        -- otherwise fall back to more generic match for vanilla :AddCallback
        -- that does not have a fixed name before
        local path = buildDottedPath(callee)
        -- print("PATH IS " .. tostring(path))
        local fullMatch = path and PATH_REGISTER_FUNCS[path]
        if fullMatch then
            return fullMatch, path
        end
    end

    local funcName = guide.getKeyName(callee)
    if funcName and CALLBACK_REGISTER_FUNCS[funcName] then
        return CALLBACK_REGISTER_FUNCS[funcName], funcName
    end
end

---@param uri string
---@param ast parser.object
---@return parser.object? ast
function OnTransformAst(uri, ast)
    loadWorkspaceConfig(uri)

    if not next(CALLBACK_TYPES) then
        return
    end

    local cache = {}

    guide.eachSourceType(ast, 'call', function(callSource)
        local callee = callSource.node

        if not callee then
            return
        end

        local cfg, cfgName = getRegisterFuncConfig(callee)
        if not cfg then
            return
        end
        local fnArgIdx = cfg.FunctionArg
        local idArgIdx = cfg.IdArg
        local hasModArg = cfg.HasModArg

        -- print("funcName", tostring(guide.getKeyName(callee)))

        local args = callSource.args
        if not args then
            return
        end

        local fnArg = args[fnArgIdx]
        -- function was passed instead of being inlined
        local isPassedFnArg = isPassedFunction(fnArg)
        if not fnArg or (fnArg.type ~= 'function' and not isPassedFnArg) then
            return
        end

        local callbackName = guide.getKeyName(args[idArgIdx])

        -- print("found callbackName " .. tostring(callbackName))

        if not callbackName then
            return
        end

        local paramTypes = CALLBACK_TYPES[callbackName]
        if not paramTypes or (paramTypes.RequireRegisterFunc and cfgName ~= paramTypes.RequireRegisterFunc) then
            return
        end

        if isPassedFnArg then -- passed function
            local def = getMatchingFunctionDefinition(ast, fnArg, cache)
            if not def then return end

            if hasManualDoc(ast, def) then
                return
            end

            local funcArgs = getFunctionDefArgs(def)
            if not funcArgs then
                return
            end

            bindFuncArgs(ast, funcArgs, paramTypes, hasModArg)
            bindFuncReturns(ast, def.value, paramTypes.Returns)
        else -- inline function
            if hasManualDoc(ast, callSource) then
                return
            end

            local funcArgs = fnArg.args
            if not funcArgs then
                return
            end

            bindFuncArgs(ast, funcArgs, paramTypes, hasModArg)
            bindFuncReturns(ast, fnArg, paramTypes.Returns)
        end
    end)
end

print("Loaded Isaac Lua plugin!")