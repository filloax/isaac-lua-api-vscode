---@class EntityEffect : Entity
---@field DamageSource integer
---@field FallingAcceleration number
---@field FallingSpeed number
---@field IsFollowing boolean
---@field LifeSpan integer
---@field m_Height number
---@field MaxRadius number
---@field MinRadius number
---@field ParentOffset Vector
---@field Rotation number
---@field Scale number
---@field State integer
---@field Timeout integer
_G.EntityEffect = {}

---@param Parent Entity
function EntityEffect:FollowParent(Parent)
end

---@param Variant integer
---@return boolean
function EntityEffect.IsPlayerCreep(Variant)
end

---@param DamageSource EntityType
function EntityEffect:SetDamageSource(DamageSource)
end

---@param min number
---@param max number
function EntityEffect:SetRadii(min, max)
end

---@param Timeout integer
function EntityEffect:SetTimeout(Timeout)
end

