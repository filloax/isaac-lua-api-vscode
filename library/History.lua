---@meta

---@class History
local History = {}

---Returns a table of collectible `HistoryItem` objects.
---@return HistoryItem[]
function History:GetCollectiblesHistory()
end

---Removes an item from the item history tracker on the right-hand side of the screen. Note that this does not remove the item effect from Isaac.
---@param index integer
---@return boolean `true` if an item was removed, `false` if not.
function History:RemoveHistoryItemByIndex(index)
end

---Returns a list of `HistoryItem`s found in the player's inventory that match the collectible ID, if any are found.
---@param itemIdOrList CollectibleType | CollectibleType[]
---@return HistoryItem[]
function History:SearchCollectibles(itemIdOrList)
end

---Returns a list of `HistoryItem`s found in the player's inventory that match the trinket ID, if any are found.
---@param itemIdOrList TrinketType | TrinketType[]
---@return HistoryItem[]
function History:SearchTrinkets(itemIdOrList)
end

