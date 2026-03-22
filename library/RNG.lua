---@meta

---@class RNG
local RNG = {}

---Returns the current seed of the RNG object.
---@return integer
function RNG:GetSeed()
end

---"Iterates" the RNG's seed to the next random number in the psuedo-random sequence. (The internal PRNG algorithm used is Xorshift.)
---@return integer --Integer returned is the new seed of the RNG object.
function RNG:Next()
end

---Returns a float between `0` (inclusive) and `1` (exclusive).
---
---Note that this will automatically call the `RNG.Next` method before retrieving the random number. Since this mutates the RNG object, you should use this method with care.
---@return number
function RNG:RandomFloat()
end


---@return RNG
function _G.RNG()
end

---Returns an integer between `0` (inclusive) and the max value (exclusive).
---
---Note that this will automatically call the `RNG.Next` method before retrieving the random number. Since this mutates the RNG object, you should use this method with care.
---@param Max integer
---@return integer
function RNG:RandomInt(Max)
end

---@param Seed integer
---@param ShiftIdx integer
function RNG:SetSeed(Seed, ShiftIdx)
end



