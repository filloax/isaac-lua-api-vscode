---@meta

---@class Level
---@field DungeonReturnPosition Vector
---@field DungeonReturnRoomIndex integer
---@field EnterDoor integer
---@field GreedModeWave integer
---@field LeaveDoor integer
local Level = {}

---@param Chance number
function Level:AddAngelRoomChance(Chance)
end

---@param Curse LevelCurse
---@param ShowName boolean
function Level:AddCurse(Curse, ShowName)
end

function Level:ApplyBlueMapEffect()
end

---@param Persistent? boolean @default: `false`. Set to `true` for it to persist across exiting and contiuing the run. It will reset regardless on the next floor.
function Level:ApplyCompassEffect(Persistent)
end

function Level:ApplyMapEffect()
end

---@param RoomIndex integer
---@return boolean
function Level:CanOpenChallengeRoom(RoomIndex)
end

---@return boolean
function Level:CanSpawnDevilRoom()
end

---@param Stage LevelStage
---@return boolean
function Level:CanStageHaveCurseOfLabyrinth(Stage)
end

---@param RoomIndex integer
---@param Dimension? integer @default: `-1`
function Level:ChangeRoom(RoomIndex, Dimension)
end

function Level:DisableDevilRoom()
end

---@param Seed integer
---@return boolean
function Level:ForceHorsemanBoss(Seed)
end

---@return LevelStage
function Level:GetAbsoluteStage()
end

---@return number
function Level:GetAngelRoomChance()
end

---@return boolean
function Level:GetCanSeeEverything()
end

---@return Room
function Level:GetCurrentRoom()
end

---@return RoomDescriptor
function Level:GetCurrentRoomDesc()
end

---@return integer
function Level:GetCurrentRoomIndex()
end

---@return string
function Level:GetCurseName()
end

---@return integer
function Level:GetCurses()
end

---@return RNG
function Level:GetDevilAngelRoomRNG()
end

---@return integer
function Level:GetDungeonPlacementSeed()
end

---@return Vector
function Level:GetEnterPosition()
end

---@return boolean
function Level:GetHeartPicked()
end

---@return integer
function Level:GetLastBossRoomListIndex()
end

---@return RoomDescriptor
function Level:GetLastRoomDesc()
end

---@return string
function Level:GetName()
end

---@return integer
function Level:GetNonCompleteRoomIndex()
end

---@return number
function Level:GetPlanetariumChance()
end

---@return integer
function Level:GetPreviousRoomIndex()
end

---@param IAmErrorRoom boolean
---@param Seed integer
---@return integer
function Level:GetRandomRoomIndex(IAmErrorRoom, Seed)
end

---@param RoomIdx integer
---@param Dimension? integer @default: `-1`
---@return RoomDescriptor
function Level:GetRoomByIdx(RoomIdx, Dimension)
end

---@return integer
function Level:GetRoomCount()
end

---@return CppList_RoomDescriptor
function Level:GetRooms()
end

---@return LevelStage
function Level:GetStage()
end

---@return StageType
function Level:GetStageType()
end

---@return integer
function Level:GetStartingRoomIndex()
end

---@param LevelStateFlag LevelStateFlag
---@return boolean
function Level:GetStateFlag(LevelStateFlag)
end

---@return boolean
function Level:HasBossChallenge()
end

---@param ForceAngel boolean
---@param ForceDevil boolean
function Level:InitializeDevilAngelRoom(ForceAngel, ForceDevil)
end

---@return boolean
function Level:IsAltStage()
end

---@return boolean
function Level:IsAscent()
end

---@return boolean
function Level:IsDevilRoomDisabled()
end

---@return boolean
function Level:IsNextStageAvailable()
end

---@return boolean
function Level:IsPreAscent()
end

---@param CurrentRoomIdx integer
---@param Slot DoorSlot
---@return boolean
function Level:MakeRedRoomDoor(CurrentRoomIdx, Slot)
end

---@param RoomType RoomType
---@param Visited boolean
---@param rng RNG
---@param IgnoreGroup? boolean @default: `false`
---@return integer
function Level:QueryRoomTypeIndex(RoomType, Visited, rng, IgnoreGroup)
end

function Level:RemoveCompassEffect()
end

---@param Curses LevelCurse
function Level:RemoveCurses(Curses)
end

---@param Value boolean
function Level:SetCanSeeEverything(Value)
end

function Level:SetHeartPicked()
end

function Level:SetNextStage()
end

function Level:SetRedHeartDamage()
end

---Changes the current floor, and it's stage. For the changes to fully apply, either use the reseed console command, or Game.StartStageTransition.
---@param StageOffset integer @Acts as the new "floor". 1 is Basement I, 2 Basmement II, 3 Caves I, etc
---@param StageTypeOffset integer @Acts as the new "stage" based on the listed IDs in stages.xml. See [this link](https://wofsauge.github.io/IsaacDocs/rep/Level.html?h=setstage#setstage) for more details.
function Level:SetStage(StageOffset, StageTypeOffset)
end

---@param LevelStateFlag LevelStateFlag
---@param Val boolean
function Level:SetStateFlag(LevelStateFlag, Val)
end

function Level:ShowMap()
end

---@param Sticky boolean
function Level:ShowName(Sticky)
end

---@param CurrentRoomIdx integer
---@param Slot DoorSlot
function Level:UncoverHiddenDoor(CurrentRoomIdx, Slot)
end

function Level:Update()
end

function Level:UpdateVisibility()
end


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
---@overload fun(self: Level, roomShape: RoomShape, doorMask: DoorMask, gridIndex: integer, dimension?: Dimension, allowMultipleDoors?: boolean, allowSpecialNeighbors?: boolean, allowNoNeighbors?: boolean): boolean
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

---@return RNG
function Level:GetGenerationRNG()
end

