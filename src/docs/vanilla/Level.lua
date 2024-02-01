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

---@param Persistent boolean
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

---@param Stage LevelStage
---@param StageType StageType
function Level:SetStage(Stage, StageType)
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
