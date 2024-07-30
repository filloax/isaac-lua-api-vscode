---@class ItemConfig
local ItemConfig_Class = {
    Config = {}
}

---@param ID Card
---@return ItemConfigCard
function ItemConfig_Class:GetCard(ID)
end

---@return CardConfigList
function ItemConfig_Class:GetCards()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig_Class:GetCollectible(ID)
end

---@return userdata
function ItemConfig_Class:GetCollectibles()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig_Class:GetNullItem(ID)
end

---@return ItemConfigList
function ItemConfig_Class:GetNullItems()
end

---@param ID PillEffect
---@return ItemConfigPillEffect
function ItemConfig_Class:GetPillEffect(ID)
end

---@return PillConfigList
function ItemConfig_Class:GetPillEffects()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig_Class:GetTrinket(ID)
end

---@return ItemConfigList
function ItemConfig_Class:GetTrinkets()
end

---@param ID CollectibleType
---@return boolean
function ItemConfig_Class.Config.IsValidCollectible(ID)
end

---@param Item ItemConfigItem
---@return boolean
function ItemConfig_Class.Config.ShouldAddCostumeOnPickup(Item)
end
