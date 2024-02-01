---@class ScoreSheet
_G.ScoreSheet = {}

---TODO: Document me!
---@param Stage LevelStage
---@param StageType StageType
---@param Time integer
function ScoreSheet.AddFinishedStage(Stage, StageType, Time)
end

---TODO: Document me!
function ScoreSheet.Calculate()
end

---Returns the obtained points for defeating Blue Baby in the Chest.
---@return integer
---|0 # Blue Baby has not been defeated.
---|4000 # Blue Baby has been defeated.
function ScoreSheet.GetBlueBabyBonus()
end

---Returns the current amount of points lost for suffering damage.
---@return integer
function ScoreSheet.GetDamagePenalty()
end

---Returns the obtained points for visiting rooms, clearing rooms, and killing enemies.
---@return integer
function ScoreSheet.GetExplorationBonus()
end

---Returns the current amount of points lost for collecting items throughout the run.
---@return integer
function ScoreSheet.GetItemPenalty()
end

---Returns the obtained points for defeating The Lamb in the Dark Room.
---@return integer
---|0 # The Lamb has not been defeated.
---|4000 # The Lamb has been defeated.
function ScoreSheet.GetLambBonus()
end

---Returns the obtained points for defeating Mega Satan.
---@return integer
---|0 # Mega Satan has not been defeated.
---|6666 # Mega Satan has been defeated.
function ScoreSheet.GetMegaSatanBonus()
end

---Returns the run's ending.
---@return Ending
function ScoreSheet.GetRunEnding()
end

---Returns the amount of time the run has lasted for in the score sheet.
---@return integer
function ScoreSheet.GetRunTime()
end

---Returns the `LevelStage` goal set for the run.
---@return LevelStage
function ScoreSheet.GetRunTimeLevel()
end

---Returns the `StageType` goal set for the run.
---@return StageType
function ScoreSheet.GetRunTimeLevelType()
end

---Returns the obtained points for clearing Boss Rush and/or defeating Hush.
---@return integer
---|0 # Neither events have been completed.
---|4444 # Boss Rush has been cleared.
---|5555 # Hush has been defeated.
---|9999 # Both events have been completed.
function ScoreSheet.GetRushBonus()
end

---Returns the obtained points for the raw amount of pickups collected.
---@return integer
function ScoreSheet.GetSchwagBonus()
end

---Returns the amount of points for reaching certain floors. Each floor's bonus can only be activated once per run. `StageType` is ignored. Below is a list of floors and their respective bonuses.
---
---Basement 1: `500`
---
---Basement 2: `1000`
---
---Caves 1/2: `1500`
---
---Depths 1/2: `2500`
---
---Womb 1/2, Cathedral, Sheol: `3000`
---
---Chest, Dark Room: `4000`
---@return integer
function ScoreSheet.GetStageBonus()
end

---Returns how many points you lose in a run for spending time clearing floors, which varies according to the events you've cleared throughout the run.
---@return integer
function ScoreSheet.GetTimePenalty()
end

---Returns the total amount of points for the run.
---
---This is the same as the score displayed when expanding the map.
---@return integer
function ScoreSheet.GetTotalScore()
end

---Sets the run's ending.
---@param ending Ending
function ScoreSheet.SetRunEnding(ending)
end
