---@class EntityKnife : Entity
---@field Charge number
---@field MaxDistance number
---@field PathFollowSpeed number
---@field PathOffset number
---@field Rotation number
---@field RotationOffset number
---@field Scale number
---@field TearFlags TearFlags
local EntityKnife = {}

---@param Flags TearFlags
function EntityKnife:AddTearFlags(Flags)
end

---@param Flags TearFlags
function EntityKnife:ClearTearFlags(Flags)
end

---@return number
function EntityKnife:GetKnifeDistance()
end

---@return number
function EntityKnife:GetKnifeVelocity()
end

---@return integer
function EntityKnife:GetRenderZ()
end

---@param Flags TearFlags
---@return boolean
function EntityKnife:HasTearFlags(Flags)
end

---@return boolean
function EntityKnife:IsFlying()
end

function EntityKnife:Reset()
end

---@param Speed number
function EntityKnife:SetPathFollowSpeed(Speed)
end

---@param Charge number
---@param Range number
function EntityKnife:Shoot(Charge, Range)
end

