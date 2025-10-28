---@class EntityDesc
local EntityDesc = {}

---@param entType? EntityType @default: `0`
---@param variant? integer @default: `0`
---@param subtype? integer @default: `0`
---@param championColor? ChampionColor @default: `-1`
---@param health? number @default: `0.0`
---@param maxHealth? number @default: `0.0`
---@param playerControlled? boolean @default: `false`
function _G.EntityDesc(entType, variant, subtype, championColor, health, maxHealth, playerControlled)
end

---@return EntityType
function EntityDesc:GetType()
end

---@return integer
function EntityDesc:GetVariant()
end

---@return integer
function EntityDesc:GetSubtype()
end

---@return ChampionColor
function EntityDesc:GetChampionId()
end

---@return number
function EntityDesc:GetHealth()
end

---@return number
function EntityDesc:GetMaxHealth()
end

---@return boolean
function EntityDesc:IsPlayerControlled()
end

---@param entType EntityType
function EntityDesc:SetType(entType)
end

---@param variant integer
function EntityDesc:SetVariant(variant)
end

---@param subtype integer
function EntityDesc:SetSubtype(subtype)
end

---@param championColor ChampionColor
function EntityDesc:SetChampionId(championColor)
end

---@param health number
function EntityDesc:SetHealth(health)
end

---@param maxHealth number
function EntityDesc:SetMaxHealth(maxHealth)
end

---@param playerControlled boolean
function EntityDesc:SetPlayerControlled(playerControlled)
end