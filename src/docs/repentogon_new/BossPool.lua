---@class BossPoolEntry
---@field bossID BossType | integer
---@field weight number
---@field weightAlt number
---@field achievementID Achievement | integer

---@class BossPool
local BossPool = {}

---Return the start of the double trouble room set.
---Any boss room that has a variant in the [doubleTroubleRoomID, doubleTroubleRoomID + 50) range is considered a double trouble room for the stage.
---@return integer
function BossPool:GetDoubleTroubleRoomID()
end

---@return BossPoolEntry[]
function BossPool:GetEntries()
end

---@return string
function BossPool:GetName()
end

---@return RNG
function BossPool:GetRNG()
end

---@return number
function BossPool:GetWeight()
end