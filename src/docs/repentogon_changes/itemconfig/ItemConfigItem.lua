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