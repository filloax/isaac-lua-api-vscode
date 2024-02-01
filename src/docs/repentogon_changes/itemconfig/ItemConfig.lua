---Returns true if the collectible can be rerolled.
---@param collectible CollectibleType | integer
---@return boolean
function ItemConfig:CanRerollCollectible(collectible)
end

---Returns a table of ItemConfigItem objects with the provided tag.
---@param tag string
---@return ItemConfigItem[]
function ItemConfig:GetTaggedItems(tag)
end

---Returns true if the trinket is valid.
---@param trinketType TrinketType
---@return boolean
function ItemConfig:IsValidTrinket(trinketType)
end
