---@meta

---@class ItemConfigItem
---@field AchievementID integer
---@field AddBlackHearts integer
---@field AddBombs integer
---@field AddCoins integer
---@field AddCostumeOnPickup boolean # Not officially documented but functional
---@field AddHearts integer
---@field AddKeys integer
---@field AddMaxHearts integer
---@field AddSoulHearts integer
---@field CacheFlags integer
---@field ChargeType integer
---@field ClearEffectsOnRemove boolean
---@field Costume ItemConfigCostume @const
---@field CraftingQuality integer
---@field Description string
---@field DevilPrice integer
---@field Discharged boolean
---@field GfxFileName string
---@field Hidden boolean
---@field ID integer
---@field InitCharge integer
---@field MaxCharges integer
---@field MaxCooldown integer
---@field Name string
---@field PassiveCache boolean
---@field PersistentEffect boolean
---@field Quality integer
---@field ShopPrice integer
---@field Special boolean
---@field Tags integer
---@field Type ItemType
local ItemConfigItem = {}

---@param Tags integer
---@return boolean
function ItemConfigItem:HasTags(Tags)
end

---@return boolean
function ItemConfigItem:IsCollectible()
end

---@return boolean
function ItemConfigItem:IsNull()
end

---@return boolean
function ItemConfigItem:IsTrinket()
end

---@return boolean
function ItemConfigItem:IsAvailable()
end


---Returns `true` if the `ItemConfigItem` has the provided `tagName` as a custom tag,
---@param tagName string
---@return boolean
function ItemConfigItem:HasCustomTag(tagName)
end

---Returns a table of strings containing the `ItemConfigItem`'s custom tags,
---@return string[]
function ItemConfigItem:GetCustomTags()
end

---Returns `true` if the `ItemConfigItem` has the provided `tagName` as a custom cache tag,
---@param tagName string
---@return boolean
function ItemConfigItem:HasCustomCacheTag(tagName)
end

---Returns a table of strings containing the `ItemConfigItem`'s custom cache tags,
---@return string[]
function ItemConfigItem:GetCustomCacheTags()
end

---Adds the provided string to the table of custom tags.
---@param tagName string
function ItemConfigItem:AddCustomTag(tagName)
end

---Removes the provided string from the table of custom tags.
---@param tagName string
function ItemConfigItem:RemoveCustomTag(tagName)
end

---Adds the provided string to the table of custom cache tags.
---@param tagName string
function ItemConfigItem:AddCustomCacheTag(tagName)
end

---Removes the provided string from the table of custom cache tags.
---@param tagName string
function ItemConfigItem:RemoveCustomCacheTag(tagName)
end

