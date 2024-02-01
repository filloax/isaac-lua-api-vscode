---@class ItemConfig
local ItemConfig = {
    Config = {}
}

---@param ID Card
---@return ItemConfigCard
function ItemConfig:GetCard(ID)
end

---@return CardConfigList
function ItemConfig:GetCards()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig:GetCollectible(ID)
end

---@return userdata
function ItemConfig:GetCollectibles()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig:GetNullItem(ID)
end

---@return ItemConfigList
function ItemConfig:GetNullItems()
end

---@param ID PillEffect
---@return ItemConfigPillEffect
function ItemConfig:GetPillEffect(ID)
end

---@return PillConfigList
function ItemConfig:GetPillEffects()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig:GetTrinket(ID)
end

---@return ItemConfigList
function ItemConfig:GetTrinkets()
end

---@param ID CollectibleType
---@return boolean
function ItemConfig.Config.IsValidCollectible(ID)
end

---@param Item ItemConfig
---@return boolean
function ItemConfig.Config.ShouldAddCostumeOnPickup(Item)
end
