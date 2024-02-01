---@class EntityDelirium : Entity
---@field Angle integer This variable is an eight bit integers, so the allowed values are the integers from 0 to 255 (inclusive). You can use a linear interpolation between the [0: 255] and the [0: 360[ ranges in order to convert angles in degree to this system.
---@field AttackID integer Internal `I1` value used by Delirium to identify the bullet hell pattern it is currently executing.
---@field BossType integer `EntityType` of the boss Delirium is currently transformed as.
---@field BossVariant integer Variant of the boss Delirium is currently transformed as.
---@field Cycle integer Internal `I2` value used by Delirium to identify whether red mode is activated and the amount of time before a teleportation. You should not use this variable directly and instead rely on the `GetTeleportationTimer`, `SetTeleportationTimer`, `IsRedMode` and `SetRedMode` functions instead. The only reason to use this variable directly is if you want to freeze it to a certain value that you know will do exactly what you want (for instance disable red mode and prevent teleportation).
---@field RemainingAttacks integer Number of attacks remaining before Delirium transforms into another boss.
---@field StateD NpcState Internal `State` of Delirium.
---@field TransformationTimer integer Get or set the amount of time before Delirium transforms into another boss.
local EntityDelirium = {}

---@return integer
function EntityDelirium:GetTeleportationTimer()
end

---Returns a boolean indicating if the red mode is activated or not.
---@return boolean
function EntityDelirium:IsRedMode()
end

---Enable or disable red mode according to the parameter on. 
---@param on boolean
function EntityDelirium:SetRedMode(on)
end

---Set the number of frames before Delirium teleports. Negative values are not allowed.
---@param timer integer
function EntityDelirium:SetTeleportationTimer(timer)
end

---Transform Delirium into the entity with the specified type and variant.
---@param type EntityType
---@param variant? integer @default: `0`
function EntityDelirium:Transform(type, variant)
end
