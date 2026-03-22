---@meta

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
local EntityEffect_Local = {}

_G.EntityEffect = {}

---@param Parent Entity
function EntityEffect_Local:FollowParent(Parent)
end

---@param Variant integer
---@return boolean
function _G.EntityEffect.IsPlayerCreep(Variant)
end

---@param DamageSource EntityType
function EntityEffect_Local:SetDamageSource(DamageSource)
end

---@param min number
---@param max number
function EntityEffect_Local:SetRadii(min, max)
end

---@param Timeout integer
function EntityEffect_Local:SetTimeout(Timeout)
end



---@param position Vector
---@param scale number default: RandomFloat[`0.0`-`0.1`]
---@param lifespan? integer @default: `1`
---@param state? integer @default: `6`
---@param color? Color @default: `Color.Default`
---@return EntityEffect
function _G.EntityEffect.CreateLight(position, scale, lifespan, state, color)
end

---@return EntityEffect
---@param position Vector
---@param owner EntityPickup
---@param effect EntityEffect
function _G.EntityEffect.CreateLootPreview(position, owner, effect)
end

---Only works for `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---@return TearFlags
function EntityEffect_Local:GetAquariusTearFlags()
end

---Only works for `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---@param tearFlags TearFlags
function EntityEffect_Local:SetAquariusTearFlags(tearFlags)
end

---Only works for `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---@param tearFlags TearFlags
function EntityEffect_Local:AddAquariusTearFlags(tearFlags)
end

---Only works for `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---@param tearFlags TearFlags
---@return boolean
function EntityEffect_Local:HasAquariusTearFlags(tearFlags)
end

---Only works for `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
function EntityEffect_Local:ClearAquariusTearFlags()
end

