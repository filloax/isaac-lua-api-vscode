---@class ModReference
---@field Name string
local ModReference = {}

---@param callbackID ModCallbacks
---@param callbackFn function
---@param entityID? integer
function ModReference:AddCallback(callbackID, callbackFn, entityID) end

---@param callbackID ModCallbacks
---@param priority CallbackPriority
---@param callbackFn function
---@param entityID? integer
function ModReference:AddPriorityCallback(callbackID, priority, callbackFn, entityID) end

---@return boolean
function ModReference:HasData() end

---@return string
function ModReference:LoadData() end

---@param callbackID integer
---@param callbackFn function
function ModReference:RemoveCallback(callbackID, callbackFn) end

function ModReference:RemoveData() end

---@param data string
function ModReference:SaveData(data) end