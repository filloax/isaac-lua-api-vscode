---@class SourceQuad
local SourceQuad = {}

---Constructs a new destination quad object.
---@param topLeft Vector
---@param topRight Vector
---@param bottomLeft Vector
---@param bottomRight Vector
function _G.SourceQuad(topLeft, topRight, bottomLeft, bottomRight)
end

---@return Vector
function SourceQuad:GetBottomLeft()
end

---@return Vector
function SourceQuad:GetBottomRight()
end

---@return Vector
function SourceQuad:GetTopLeft()
end

---@return Vector
function SourceQuad:GetTopRight()
end

---@param vector Vector
function SourceQuad:SetBottomLeft(vector)
end

---@param vector Vector
function SourceQuad:SetBottomRight(vector)
end

---@param vector Vector
function SourceQuad:SetTopLeft(vector)
end

---@param vector Vector
function SourceQuad:SetTopRight(vector)
end
