---@class LevelGenerator
local LevelGenerator = {}

---Returns a table of all of the `LevelGeneratorRoom` objects.
---@return LevelGeneratorRoom[]
function LevelGenerator:GetAllRooms()
end

---Returns a table of all of the `LevelGeneratorRoom` objects that are deadends.
---@return LevelGeneratorRoom[]
function LevelGenerator:GetDeadEnds()
end

---Returns a table of all of the `LevelGeneratorRoom` objects that are not deadends.
---@return LevelGeneratorRoom[]
function LevelGenerator:GetNonDeadEnds()
end

---Places a LevelGeneratorRoom object onto the level-grid.
---@param column integer The column. It must be between `0` and `12`.
---@param row integer The row. It must be between `0` and `12`.
---@param shape RoomShape The shape of the room.
---@param room LevelGeneratorRoom The level generator room.
---@return integer?  generationIndex If the room was placed, the generation index is returned. Otherwise it is `nil`.
function LevelGenerator:PlaceRoom(column, row, shape, room)
end
