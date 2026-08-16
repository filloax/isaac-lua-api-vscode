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
]]

print("Loading Isaac Lua plugin!")

local guide = require 'parser.guide'
local luadoc = require 'parser.luadoc'

---Contains arg types
---@type table<string, string[]>
local CALLBACK_PARAMS = {}

do
    -- probably less complicated would have been enough, but extension paths be wonky so just in case
    local scriptPath = debug.getinfo(1, 'S').source:match('^@(.*)[/\\][^/\\]+$')
    if scriptPath then
        local chunk = loadfile(scriptPath .. '/callbackParams.lua')
        if chunk then
            local ok, data = pcall(chunk)
            if ok and type(data) == 'table' then
                CALLBACK_PARAMS = data
            end
        end
    end
end

local MOD_TYPE = "ModReference"

-- Arg position where function is passed in callback (starts from 1 remember)
local CALLBACK_REGISTER_FUNCS = {
    AddCallback = 3,
    AddPriorityCallback = 4,
}

-- in characters
local MANUAL_DOC_LOOKBACK = 500

---@param paramName string
---@param typename string
---@param pos integer
local function buildParamComment(paramName, typename, pos)
    return {
        type = 'comment.short',
        start = pos,
        finish = pos,
        text = ('-@param %s %s'):format(paramName, typename),
        virtual = true,
    }
end

---Add a comment to the param in the AST (rather than fiddling with internals)
---@param ast parser.object
---@param paramSource parser.object
---@param typename string
local function bindParamType(ast, paramSource, typename)
    if not guide.isParam(paramSource) then
        return
    end
    local paramName = guide.getKeyName(paramSource)
    if not paramName then
        return
    end
    local comment = buildParamComment(paramName, typename, paramSource.start - 1)
    luadoc.buildAndBindDoc(ast, paramSource.parent.parent, comment)
end

--- Check if ---@param comment exists in func
---@param ast parser.object
---@param callSource parser.object
local function hasManualParams(ast, callSource)
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
    return best ~= nil and best.text ~= nil and best.text:find('@param', 1, true) ~= nil
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
    return ACCESS_TYPES[fnArg.type]
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

---@param ast parser.object
---@param funcArgs parser.object[]
---@param paramTypes string[]
local function bindFuncArgs(ast, funcArgs, paramTypes)
    for i, paramSource in ipairs(funcArgs) do
        -- first param is the mod/self reference
        local typename = i == 1 and MOD_TYPE or paramTypes[i - 1]
        if typename then
            bindParamType(ast, paramSource, typename)
        end
    end
end

---@param uri string
---@param ast parser.object
---@return parser.object? ast
function OnTransformAst(uri, ast)
    if not next(CALLBACK_PARAMS) then
        return
    end

    local cache = {}

    guide.eachSourceType(ast, 'call', function(callSource)
        local callee = callSource.node

        if not callee then
            return
        end

        local funcName = guide.getKeyName(callee)

        local fnOffset = funcName and CALLBACK_REGISTER_FUNCS[funcName]
        if not fnOffset then
            return
        end

        -- print("funcName", tostring(funcName), "fnOffset", tostring(fnOffset))

        local args = callSource.args
        if not args then
            return
        end


        local fnArg = args[fnOffset]
        -- function was passed instead of being inlined
        local isPassedFnArg = isPassedFunction(fnArg)
        if not fnArg or (fnArg.type ~= 'function' and not isPassedFnArg) then
            return
        end

        -- first is self
        local idArgIndex = 2
        local callbackName = guide.getKeyName(args[idArgIndex])
        if not callbackName then
            return
        end

        local paramTypes = CALLBACK_PARAMS[callbackName]
        if not paramTypes then
            return
        end

        if isPassedFnArg then -- passed function
            local def = getMatchingFunctionDefinition(ast, fnArg, cache)
            if not def then return end

            if hasManualParams(ast, def) then
                return
            end

            local funcArgs = getFunctionDefArgs(def)
            if not funcArgs then
                return
            end

            bindFuncArgs(ast, funcArgs, paramTypes)
        else -- inline function
            if hasManualParams(ast, callSource) then
                return
            end

            local funcArgs = fnArg.args
            if not funcArgs then
                return
            end

            bindFuncArgs(ast, funcArgs, paramTypes)
        end
    end)
end

print("Loaded Isaac Lua plugin!")