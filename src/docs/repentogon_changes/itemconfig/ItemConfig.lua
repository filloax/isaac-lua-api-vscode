---Returns true if the collectible can be rerolled.
---@param collectible CollectibleType | integer
---@return boolean
function ItemConfig_Class:CanRerollCollectible(collectible)
end

---Returns a table of ItemConfigItem objects with the provided tag.
---@param tag string
---@return ItemConfigItem[]
function ItemConfig_Class:GetTaggedItems(tag)
end

---Returns true if the trinket is valid.
---@param trinketType TrinketType
---@return boolean
function ItemConfig_Class:IsValidTrinket(trinketType)
end
