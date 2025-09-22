---Returns true of the Red Key door outline can spawn on the door slot.
---@param roomIndex integer
---@param doorSlot DoorSlot
---@return boolean
function Level:CanSpawnDoorOutline(roomIndex, doorSlot)
end

---Returns the current Dimension.
---@return Dimension
function Level:GetDimension()
end

--If set, the level will automatically attempt to place the Knife Piece puzzle door for this `LevelStage`.
---@return SpecialQuest
function Level:GetForceSpecialQuest()
end

---Returns true if the floor has the abandoned mineshaft room used for the second knife piece puzzle.
---@return boolean
function Level:HasAbandonedMineshaft()
end

---Returns true if the floor has a mirror dimension used for the first knife piece puzzle.
---@return boolean
function Level:HasMirrorDimension()
end

---Returns true if the floor has the photo door used to enter Mausoleum/Gehenna leading to the Ascent sequence.
---@return boolean
function Level:HasPhotoDoor()
end

---Returns `true` if the provided `levelStage` and `stageType` combination is available to be generated in any given run. Returns `false` if locked behind an achievement.
---@param levelStage LevelStage
---@param stageType StageType
---@return boolean
function Level:IsStageAvailable(levelStage, stageType)
end

---@param room LevelGeneratorEntry
---@param roomConfig RoomConfigRoom
---@param seed integer
---@return boolean successful True if the room was placed successfully.
function Level:PlaceRoom(room, roomConfig, seed)
end

---Sets whether the level should attempt to place the Knife Piece puzzle door for this LevelStage.
---
---This is set to `SpecialQuest.DEFAULT` immediately before calling MC_PRE_LEVEL_INIT.
---@param Quest SpecialQuest
function Level:SetForceSpecialQuest(Quest)
end

---Sets the name of the level.
---@param name string
function Level:SetName(name)
end

---@return integer
function Level:GetGreedWavesClearedWithoutRedHeartDamage()
end

---@param wavesCleared integer
function Level:SetGreedWavesClearedWithoutRedHeartDamage(wavesCleared)
end

---Returns the pickups that will be transferred to the next floor by the Myosotis trinket effect.
---@return EntitiesSaveStateVector
function Level:GetMyosotisPickups()
end

---Returns true if the room would be able to fit at this location.`.
---@param roomConfigRoomToPlace RoomConfigRoom
---@param gridIndex integer
---@param dimension Dimension @default: `Dimension.CURRENT`
---@param allowMultipleDoors? boolean @default: `true`. Set to false to only allow successful placement if the room would only have one door (for placing special rooms).
---@param allowSpecialNeighbors? boolean @default: `false`. Set to true to allow connections to existing special rooms (note secret rooms are always allowed, but boss rooms are never allowed).
---@param allowNoNeighbors? boolean @default: `false`. Set to true to allow placing the room out in the void with no neighbors.
---@return boolean
---@overload fun(self: Level, roomShape: RoomShape, doorMask: DoorMask, gridIndex: integer, allowMultipleDoors?: boolean, allowSpecialNeighbors?: boolean, allowNoNeighbors?: boolean): boolean
function Level:CanPlaceRoom(roomConfigRoomToPlace, gridIndex, dimension, allowMultipleDoors, allowSpecialNeighbors, allowNoNeighbors)
end

---Will only place the room if it can fit and all doors can be successfully connected to neighboring rooms.
---
---If successful, returns the new RoomDescriptor, returns nil otherwise.
---
---If a seed of nil or 0 is provided, a seed will be auto-generated based on the location, room shape, and level seed.
---@param roomConfigRoom RoomConfigRoom
---@param gridIndex integer
---@param dimension? Dimension @default: `Dimension.CURRENT`
---@param seed? integer @default: `0`
---@param allowMultipleDoors? boolean @default: `true`. Set to false to only allow successful placement if the room would only have one door (for placing special rooms).
---@param allowSpecialNeighbors? boolean @default: `false`. Set to true to allow connections to existing special rooms (note secret rooms are always allowed, but boss rooms are never allowed).
---@param allowNoNeighbors? boolean @default: `false`. Set to true to allow placing the room out in the void with no neighbors.
---@return RoomDescriptor?
function Level:TryPlaceRoom(roomConfigRoom, gridIndex, dimension, seed, allowMultipleDoors, allowSpecialNeighbors, allowNoNeighbors)
end

---Returns true if the room could be successfully placed connected to the specified DoorSlot of an existing room.
---@param roomConfigRoomToPlace RoomConfigRoom
---@param neightborRoomDescriptor RoomDescriptor
---@param doorSlot DoorSlot
---@param allowMultipleDoors? boolean @default: `true`. Set to false to only allow successful placement if the room would only have one door (for placing special rooms).
---@param allowSpecialNeighbors? boolean @default: `false`. Set to true to allow connections to existing special rooms (note secret rooms are always allowed, but boss rooms are never allowed).
---@return boolean
---@overload fun(self: Level, roomShape: RoomShape, doorMask: DoorMask, neightborRoomDescriptor: RoomDescriptor, doorSlot: DoorSlot, allowMultipleDoors?: boolean, allowSpecialNeighbors?: boolean)
function Level:CanPlaceRoomAtDoor(roomConfigRoomToPlace, neightborRoomDescriptor, doorSlot, allowMultipleDoors, allowSpecialNeighbors)
end

---Similar to `TryPlaceRoom`, but attempts to place the provided room (the RoomConfigRoom) as a neighbor of an existing room (the RoomDescriptor) at the specified DoorSlot.
---@param roomConfigRoomToPlace RoomConfigRoom
---@param neightborRoomDescriptor RoomDescriptor
---@param doorSlot DoorSlot
---@param seed? integer @default: `0`
---@param allowMultipleDoors? boolean @default: `true`. Set to false to only allow successful placement if the room would only have one door (for placing special rooms).
---@param allowSpecialNeighbors? boolean @default: `false`. Set to true to allow connections to existing special rooms (note secret rooms are always allowed, but boss rooms are never allowed).
---@return RoomDescriptor?
function Level:TryPlaceRoomAtDoor(roomConfigRoomToPlace, neightborRoomDescriptor, doorSlot, seed, allowMultipleDoors, allowSpecialNeighbors)
end

---Returns a table of level GridIndexes that would be valid locations to place the given room.
---@param roomConfigRoom RoomConfigRoom
---@param dimension? Dimension @default: `-1`
---@param allowMultipleDoors? boolean @default: `true`. Set to false to only allow successful placement if the room would only have one door (for placing special rooms).
---@param allowSpecialNeighbors? boolean @default: `false`. Set to true to allow connections to existing special rooms (note secret rooms are always allowed, but boss rooms are never allowed).
---@return integer[]
---@overload fun(self: Level, roomShape: RoomShape, doorMask: DoorMask, dimension?: Dimension, allowMultipleDoors?: boolean, allowSpecialNeighbors?: boolean)
function Level:FindValidRoomPlacementLocations(roomConfigRoom, dimension, allowMultipleDoors, allowSpecialNeighbors)
end

---Returns a table map of DoorSlot->RoomDescriptor. Don't use ipairs!
---
---Can be used to determine the neighbors of a room before even placing it.
---
---Note that this does not give you any signal of if a room would actually fit, or if the neighbors would even allow a connection.
---@param gridIndex integer
---@param roomShape RoomShape
---@param dimension? Dimension @default: `Dimension.CURRENT`
---@return {[DoorSlot]: RoomDescriptor}
function Level:GetNeighboringRooms(gridIndex, roomShape, dimension)
end