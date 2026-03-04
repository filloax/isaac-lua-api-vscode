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