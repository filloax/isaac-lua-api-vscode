---@class LevelGeneratorRoom
local LevelGeneratorRoom = {}

---TODO: Document me!
---@return integer
function LevelGeneratorRoom:Column()
end

---Return a mask of the available doors of the room slot. In order to check if a door at a given slot is available, use the DoorSlot enumeration.
---@return integer
function LevelGeneratorRoom:DoorMask()
end

---Index of the room during generation.
---@return integer `0` if the room was the first to be generated, `1` if it was the second, etc.
function LevelGeneratorRoom:GenerationIndex()
end

---@return boolean
function LevelGeneratorRoom:IsDeadEnd() end

---Returns a table of the generation indices of the neighboring rooms.
---@return integer[]
function LevelGeneratorRoom:Neighbors()
end

---Return the row of the room slot on the level grid.
---@return integer `0` for the first row, `1` for the second, etc.
function LevelGeneratorRoom:Row()
end

---Return the shape of the room, as per the `RoomShape` enumeration.
---@return RoomShape
function LevelGeneratorRoom:Shape()
end
