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

---@param uri string
---@param ast parser.object
---@return parser.object? ast
function OnTransformAst(uri, ast)
    if not next(CALLBACK_PARAMS) then
        return
    end

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
        if not fnArg or fnArg.type ~= 'function' then
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

        if hasManualParams(ast, callSource) then
            return
        end

        local funcArgs = fnArg.args
        if not funcArgs then
            return
        end

        for i, paramSource in ipairs(funcArgs) do
            -- first param is the mod/self reference
            local typename = i == 1 and MOD_TYPE or paramTypes[i - 1]
            if typename then
                bindParamType(ast, paramSource, typename)
            end
        end
    end)
end

print("Loaded Isaac Lua plugin!")