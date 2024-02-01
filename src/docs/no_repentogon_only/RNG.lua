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

