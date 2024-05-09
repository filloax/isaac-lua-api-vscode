---@class ModReference
---@field Name string
local ModReference = {}

---@param callbackID ModCallbacks | string
---@param callbackFn function
---@param entityID? integer
function ModReference:AddCallback(callbackID, callbackFn, entityID)
end

---@param callbackID ModCallbacks | string
---@param priority CallbackPriority
---@param callbackFn function
---@param entityID? integer
function ModReference:AddPriorityCallback(callbackID, priority, callbackFn, entityID)
end

---@return boolean
function ModReference:HasData()
end

---@return string
function ModReference:LoadData()
end

---@param callbackID integer
---@param callbackFn function
function ModReference:RemoveCallback(callbackID, callbackFn)
end

function ModReference:RemoveData()
end

---@param data string
function ModReference:SaveData(data)
end

-- Disabled as it will complain about mod tables with added functions
-- in mods with more files, depending on how they are handled; you can
-- re-enable it and keep it if you don't have that problem
--[[ ---@param modname string
---@param apiversion number
---@return ModReference
function RegisterMod(modname, apiversion)
end ]]