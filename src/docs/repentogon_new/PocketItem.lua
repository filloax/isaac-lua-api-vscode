---@class PocketItem
local PocketItem = {}

---Returns the ID of the PocketItem. Returns `0` if the slot is empty.
---
---For cards, returns `Card`.
---
---For pills, returns `PillColor`.
---
---For items, returns the corresponding `ActiveSlot` (either `ActiveSlot.SLOT_POCKET` or `ActiveSlot.SLOT_POCKET2`).
---@return ActiveSlot
function PocketItem:GetSlot()
end

---Returns the `PocketItemType`.
---
---This value is unreliable if the slot is currently empty, as the game sometimes does not clear it.
---@return PocketItemType
function PocketItem:GetType()
end