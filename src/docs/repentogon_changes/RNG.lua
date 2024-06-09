---@overload fun(self: RNG, Min: integer, Max: integer): integer
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

---Returns the shift index used by the RNG object. By default, vanilla RNG objects use `35`.
---@return integer
function RNG:GetShiftIdx()
end

---Similar to `:Next()`, except it does not affect the internal state of the RNG object and serves to only return its seed if it did.
---@return integer
function RNG:PhantomNext()
end

---"Iterates" the RNG's seed to the previous random number in the psuedo-random sequence. (The internal PRNG algorithm used is Xorshift.)
---@return integer --Integer returned is the new seed of the RNG object.
function RNG:Previous()
end

---Similar to `:Previous()`, except it does not affect the internal state of the RNG object and serves to only return its seed if it did.
---@return integer
function RNG:PhantomPrevious()
end
