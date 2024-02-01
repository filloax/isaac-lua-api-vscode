---@class EntityProjectile : Entity
---@field Acceleration number
---@field ChangeFlags integer
---@field ChangeTimeout integer
---@field ChangeVelocity number
---@field CurvingStrength number
---@field Damage number
---@field DepthOffset number
---@field FallingAccel number
---@field FallingSpeed number
---@field Height number
---@field HomingStrength number
---@field ProjectileFlags ProjectileFlags
---@field Scale number
---@field WiggleFrameOffset integer
local EntityProjectile = {}

---@param Flags integer
function EntityProjectile:AddChangeFlags(Flags)
end

---@param Value number
function EntityProjectile:AddFallingAccel(Value)
end

---@param Value number
function EntityProjectile:AddFallingSpeed(Value)
end

---@param Value number
function EntityProjectile:AddHeight(Value)
end

---@param Flags integer
function EntityProjectile:AddProjectileFlags(Flags)
end

---@param Value number
function EntityProjectile:AddScale(Value)
end

---@param Flags integer
function EntityProjectile:ClearProjectileFlags(Flags)
end

---@param Flags integer
---@return boolean
function EntityProjectile:HasProjectileFlags(Flags)
end

