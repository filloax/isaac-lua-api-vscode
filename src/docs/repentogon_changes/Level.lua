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
