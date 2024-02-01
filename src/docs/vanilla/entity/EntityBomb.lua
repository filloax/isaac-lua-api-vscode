---@class EntityBomb : Entity
---@field ExplosionDamage number
---@field Flags TearFlags
---@field IsFetus boolean
---@field RadiusMultiplier number
local EntityBomb = {}

---@param Flags TearFlags
function EntityBomb:AddTearFlags(Flags)
end

---@param Flags TearFlags
function EntityBomb:ClearTearFlags(Flags)
end

---@param Flags TearFlags
---@return boolean
function EntityBomb:HasTearFlags(Flags)
end

---@param Countdown integer
function EntityBomb:SetExplosionCountdown(Countdown)
end

