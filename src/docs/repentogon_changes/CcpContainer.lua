---@class RoomConfigSet : CppList
local RoomConfigSet = {}

---@param idx integer
---@return RoomConfigRoom
function RoomConfigSet:Get(idx)
end

---Adds the provided Lua Rooms to the RoomConfigSet. For details on how to generate Lua Rooms, refer to the [Custom StageAPI Github page](https://github.com/Meowlala/BOIStageAPI15/tree/master).
---
---The function returns a table containing the placed RoomConfigRoom objects, in the same order as the input `Rooms` table. If a room at a given index could not be converted into a valid RoomConfigRoom, the corresponding entry in the returned table will be nil instead.
---@param rooms table
---@return RoomConfigRoom[]
function RoomConfigSet:AddRooms(rooms)
end