---@class PersistentGameData
local PersistentGameData = {}

---Returns the amount of deaths from an entity that's recorded in the Bestiary.
---@param entityType EntityType
---@param entityVariant integer
---@return integer
function PersistentGameData:GetBestiaryDeathCount(entityType, entityVariant)
end

---Returns the amount of times an entity has been countered that's recorded in the Bestiary.
---@param entityType EntityType
---@param entityVariant integer
---@return integer
function PersistentGameData:GetBestiaryEncounterCount(entityType, entityVariant)
end

---Returns the amount of times an entity has been killed that's recorded in the Bestiary.
---@param entityType EntityType
---@param entityVariant integer
---@return integer
function PersistentGameData:GetBestiaryKillCount(entityType, entityVariant)
end

---Returns an event counter.
---@param eventCounter EventCounter
---@return integer
function PersistentGameData:GetEventCounter(eventCounter)
end

---Increases the counter towards the provided `EventCounter` by `incrementAmount`. Also accepts negative values to decrease.
---@param eventCounter EventCounter
---@param incrementAmount integer
function PersistentGameData:IncreaseEventCounter(eventCounter, incrementAmount)
end

---Returns true if the provided challenge has been completed.
---
---This function is the same as `Isaac.IsChallengeDone` and is recommended you use that version instead, as it's categorized with the other challenge-related functions.
---@param challengeId Challenge
---@return boolean
function PersistentGameData:IsChallengeCompleted(challengeId)
end

---Returns true if the collectible is in the collection (at least picked up once in any run)
---@param collectible CollectibleType
---@return boolean
function PersistentGameData:IsItemInCollection(collectible)
end

---Tries to unlock an achievement.
---@param achievement Achievement
---@param blockPaperPopup? boolean @default: `false`. Prevents popping up the achievement paper for modded achievements.
---@return boolean successful Returns `true` if the achievement was successfully unlocked, `false` if it has already been unlocked or the unlock failed.
function PersistentGameData:TryUnlock(achievement, blockPaperPopup)
end

---Returns true if the provided achievement is unlocked.
---@param achievement Achievement
---@return boolean
function PersistentGameData:Unlocked(achievement)
end

---@param entType EntityType
---@param variant? integer @default: `0`
function PersistentGameData:AddBestiaryKill(entType, variant)
end

---@param bossType BossType
function PersistentGameData:AddBossKilled(bossType)
end

---@param bossType BossType
---@return boolean
function PersistentGameData:IsBossKilled(bossType)
end