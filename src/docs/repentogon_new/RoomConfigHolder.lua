---@class RoomConfigHolder
_G.RoomConfigHolder = {}

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
function RoomConfigHolder.GetRandomRoom(seed, reduceWeight, stage, type, shape, minVariant, maxVariant, minDifficulty,
										maxDifficulty, requiredDoors, subType, mode)
end

---Returns a RoomConfigRoom corresponding to the given arguments.
---@param stage StbType
---@param type RoomType
---@param variant integer
---@param difficulty? integer @default: `-1`, pulling from all difficulties.
---@return RoomConfigRoom
function RoomConfigHolder.GetRoomByStageTypeAndVariant(stage, type, variant, difficulty)
end
