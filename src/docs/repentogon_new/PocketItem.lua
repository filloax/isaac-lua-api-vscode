---@class PocketItem
local PocketItem = {}

---Returns the ID of the PocketItem. Returns `0` if the slot is empty.
---
---For cards, returns `Card`. For pills, returns `PillEffect`. For items, returns `CollectibleEffect`.
---@return ActiveSlot
function PocketItem:GetSlot()
end

---Returns the `PocketItemType`. Returns `1` if the slot is empty.
---@return PocketItemType
function PocketItem:GetType()
end