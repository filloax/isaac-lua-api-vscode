---@class DailyChallengeMenu
_G.DailyChallengeMenu = {}

---Returns the daily challenge menu sprite (background, most of the visible papers).
---@return Sprite 
function DailyChallengeMenu.GetSprite()
end

---Returns the leaderboard sprite.
---@return Sprite
function DailyChallengeMenu.GetLeaderboardSprite()
end

---Returns the leaderboard score menu sprite.
---@return Sprite 
function DailyChallengeMenu.GetLeaderboardScoreMenuSprite()
end

---@return integer
function DailyChallengeMenu.GetSelectedElement()
end

---Returns the hours left until the daily challenge resets.
---@return integer
function DailyChallengeMenu.GetTimeLeftHours()
end

---Returns the minutes left until the daily challenge resets.
---@return integer
function DailyChallengeMenu.GetTimeLeftMinutes()
end

---Returns the seconds left until the daily challenge resets.
---@return integer
function DailyChallengeMenu.GetTimeLeftSeconds()
end

---@return boolean 
function DailyChallengeMenu.IsLeaderboardVisible()
end

---@param element integer 
function DailyChallengeMenu.SetSelectedElement(element)
end

---@return integer
function DailyChallengeMenu.GetState()
end

---@param state integer
function DailyChallengeMenu.SetState(state)
end