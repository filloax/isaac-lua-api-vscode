---Returns the rock's altrock type.
---@param backdrop? BackdropType @default: `BackdropType.BACKDROP_NULL`.
---@return integer
function GridEntityRock:GetAltRockType(backdrop)
end

---TODO: Document me!
---@param gridType GridEntityType
---@param backdrop? BackdropType @default: `BackdropType.BACKDROP_NULL`.
function GridEntityRock:PlayBreakSound(gridType, backdrop)
end

---TODO: Document me!
---@param gridType GridEntityType
function GridEntityRock:RegisterRockDestroyed(gridType)
end

---TODO: Document me!
---@param offset Vector
function GridEntityRock:RenderTop(offset)
end

---TODO: Document me!
---@param gridType GridEntityType
---@param gridVariant integer
---@param seed integer
---@param unknown boolean TODO: Document me!
---@param backdrop? BackdropType @default: `BackdropType.BACKDROP_NULL`.
function GridEntityRock:SpawnDrops(gridType, gridVariant, seed, unknown, backdrop)
end

---TODO: Document me!
function GridEntityRock:TrySpawnLadder()
end

---TODO: Document me!
function GridEntityRock:TrySpawnWorms()
end

---Updates the rock's collision.
function GridEntityRock:UpdateCollision()
end

---Updates the rock's neighbors.
function GridEntityRock:UpdateNeighbors()
end
