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