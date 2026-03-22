---@meta

---@class GridEntityRock : GridEntity
---@field Anim string
---@field FrameCnt integer
---@field RubbleAnim string
local GridEntityRock = {}

---@return integer
function GridEntityRock:GetBigRockFrame()
end

---@return string
function GridEntityRock:GetRubbleAnim()
end

---@return Sprite
function GridEntityRock:GetSprite()
end

---@param Frame integer
function GridEntityRock:SetBigRockFrame(Frame)
end

function GridEntityRock:UpdateAnimFrame()
end



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


