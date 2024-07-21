---@class ItemConfig
_G.ItemConfig = {}

---@class ItemConfig
local ItemConfig1 = {
    Config = {}
}

---@param ID Card
---@return ItemConfigCard
function ItemConfig1:GetCard(ID)
end

---@return CardConfigList
function ItemConfig1:GetCards()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig1:GetCollectible(ID)
end

---@return userdata
function ItemConfig1:GetCollectibles()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig1:GetNullItem(ID)
end

---@return ItemConfigList
function ItemConfig1:GetNullItems()
end

---@param ID PillEffect
---@return ItemConfigPillEffect
function ItemConfig1:GetPillEffect(ID)
end

---@return PillConfigList
function ItemConfig1:GetPillEffects()
end

---@param ID integer
---@return ItemConfigItem
function ItemConfig1:GetTrinket(ID)
end

---@return ItemConfigList
function ItemConfig1:GetTrinkets()
end

---@param ID CollectibleType
---@return boolean
function ItemConfig1.Config.IsValidCollectible(ID)
end

---@param Item ItemConfig
---@return boolean
function ItemConfig1.Config.ShouldAddCostumeOnPickup(Item)
end
