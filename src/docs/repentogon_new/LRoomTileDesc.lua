---@class LRoomTileDesc
local LRoomTileDesc = {}

---Returns the grid coordinates of the high half's top left corner.
---@return {[1]: integer, [2]: integer}
function LRoomTileDesc:GetHighTopLeft()
end

---Returns the grid coordinates of the low half's top left corner.
---@return {[1]: integer, [2]: integer}
function LRoomTileDesc:GetLowTopLeft()
end

---Returns the grid coordinates of the high half's bottom right corner.
---@return {[1]: integer, [2]: integer}
function LRoomTileDesc:GetHighBottomRight()
end

---Returns the grid coordinates of the low half's bottom right corner.
---@return {[1]: integer, [2]: integer}
function LRoomTileDesc:GetLowBottomRight()
end

---Returns the grid coordinates of a random tile in this L
---@param seed integer
---@return {[1]: integer, [2]: integer}
function LRoomTileDesc:GetRandomTile(seed)
end