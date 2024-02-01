---@class Ambush
_G.Ambush = {}

---@return integer
function Ambush.GetCurrentWave() end

---Returns the maximum amount of boss rush waves.
---@return integer numWaves By default, the maximum amount of boss rush waves are `15`. It's important to note that mods can modify the maximum amount of boss rush waves.
function Ambush.GetMaxBossrushWaves() end

---Returns the maximum amount of challenge room waves.
---@return integer numWaves By default, the maximum amount of challenge room waves are `3`. It's important to note that mods can modify the maximum amount of challenge room waves.
function Ambush.GetMaxChallengeWaves() end

---@return RoomConfigRoom
function Ambush.GetNextWave() end

---@return RoomConfigRoom[]
function Ambush.GetNextWaves() end

---Sets the maximum amount of boss rush waves. This caps out at `25`.
---@param waves integer
function Ambush.SetMaxBossrushWaves(waves) end

---**BUG:** Currently, the value returned from this function is not reset on game restart.
---@param waves integer
function Ambush.SetMaxChallengeWaves(waves) end

---**BUG:** Calling this function will do nothing unless a boss rush has been triggered at least once during the current game session.
function Ambush.SpawnBossrushWave() end

---**BUG:** Calling this function crashes the game if the current game mode is Greed or Greedier.
---
---The game also crashes if the current floor is Blue Womb.
function Ambush.SpawnWave() end

---**BUG:** Calling this function outside of the boss rush room or a challenge room will do nothing except permanently close the doors, resulting in a softlock.
function Ambush.StartChallenge() end
