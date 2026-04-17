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

---Available for the following effects:
---
---* `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---* `EffectVariant.BRIMSTONE_BALL`
---* `EffectVariant.TECH_DOT`
---* `EffectVariant.CHAIN_LIGHTNING`
---@return TearFlags
function EntityEffect_Local:GetTearFlags()
end

---Available for the following effects:
---
---* `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---* `EffectVariant.BRIMSTONE_BALL`
---* `EffectVariant.TECH_DOT`
---* `EffectVariant.CHAIN_LIGHTNING`
---@param tearFlags TearFlags
function EntityEffect_Local:SetTearFlags(tearFlags)
end

---Available for the following effects:
---
---* `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---* `EffectVariant.BRIMSTONE_BALL`
---* `EffectVariant.TECH_DOT`
---* `EffectVariant.CHAIN_LIGHTNING`
---@param tearFlags TearFlags
function EntityEffect_Local:AddTearFlags(tearFlags)
end

---Available for the following effects:
---
---* `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---* `EffectVariant.BRIMSTONE_BALL`
---* `EffectVariant.TECH_DOT`
---* `EffectVariant.CHAIN_LIGHTNING`
---@param tearFlags TearFlags
---@return boolean
function EntityEffect_Local:HasTearFlags(tearFlags)
end

---Available for the following effects:
---
---* `EffectVariant.PLAYER_CREEP_HOLYWATER_TRAIL`
---* `EffectVariant.BRIMSTONE_BALL`
---* `EffectVariant.TECH_DOT`
---* `EffectVariant.CHAIN_LIGHTNING`
function EntityEffect_Local:ClearTearFlags()
end