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
