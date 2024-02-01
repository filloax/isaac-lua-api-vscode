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

