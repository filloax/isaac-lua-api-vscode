---@overload fun(self: RNG, Min: integer, Max: integer)
---@return integer
function RNG:RandomInt(Max)
end

---@param Seed integer
---@param ShiftIdx? integer
function RNG:SetSeed(Seed, ShiftIdx)
end

---Returns a float between `0` (inclusive) and `1` (exclusive).
---
---This does not advance the internal state of the RNG object.
---@return number
function RNG:PhantomFloat()
end

---Returns an integer between `0` (inclusive) and the max value (exclusive).
---
---This does not advance the internal state of the RNG object.
---@param max integer
---@return integer
function RNG:PhantomInt(max)
end

---Returns a random vector with length `1`.
---
---This does not advance the internal state of the RNG object.
---@return Vector
function RNG:PhantomVector()
end

---Returns a random vector with length `1`.
---@return Vector
function RNG:RandomVector()
end
