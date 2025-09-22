---@class RoomConfig
_G.RoomConfig = {}

---Returns a RoomConfigRoom corresponding to the given arguments.
---@param seed integer
---@param reduceWeight boolean If true, the selected room's weight is decreased.
---@param stage StbType The stage the room belongs to.
---@param type RoomType
---@param shape? RoomShape @default: `RoomShape.NUM_ROOMSHAPES`, which allows the function to pick a room regardless of its shape.
---@param minVariant? integer @default: `-1`.
---@param maxVariant? integer @default: `-1`
---@param minDifficulty? integer @default: `0.`
---@param maxDifficulty? integer @default: `10.`
---@param requiredDoors? integer @default: `0.`
---@param subType? integer @default: `-1`.
---@param mode? integer @default: `-1`. TODO: Document me!
---@return RoomConfigRoom
function RoomConfig.GetRandomRoom(seed, reduceWeight, stage, type, shape, minVariant, maxVariant, minDifficulty,
										maxDifficulty, requiredDoors, subType, mode)
end

---Returns a RoomConfigRoom corresponding to the given arguments.
---@param stage StbType
---@param type RoomType
---@param variant integer
---@param difficulty? integer @default: `-1`, pulling from all difficulties.
---@return RoomConfigRoom
function RoomConfig.GetRoomByStageTypeAndVariant(stage, type, variant, difficulty)
end

---@param StbType StbType
---@return RoomConfigStage
function RoomConfig.GetStage(StbType)
end

---Adds the provided Lua Rooms to the specified RoomConfigSet. For details on how to generate Lua Rooms, refer to the [Custom StageAPI Github page](https://github.com/Meowlala/BOIStageAPI15/tree/master).
---
---The function returns a table containing the placed RoomConfigRoom objects, in the same order as the input `Rooms` table. If a room at a given index could not be converted into a valid RoomConfigRoom, the corresponding entry in the returned table will be nil instead.
---@param stage StbType
---@param mode integer
---@param rooms table
---@return RoomConfigRoom[]
function RoomConfig.AddRooms(stage, mode, rooms)
end

---@alias RoomConfigHolder RoomConfig
_G.RoomConfigHolder = RoomConfig