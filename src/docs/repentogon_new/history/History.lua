---@class History
local History = {}

---Returns a table of collectible `HistoryItem` objects.
---@return HistoryItem[]
function History:GetCollectiblesHistory()
end

---Removes an item from the item history tracker on the right-hand side of the screen. Note that this does not remove the item effect from Isaac.
---@param index integer
---@return boolean `true` if an item was removed, `false` if not.
function History:RemoveItemByIndex(index)
end