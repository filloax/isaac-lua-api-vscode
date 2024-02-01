---@class DestinationQuad
local DestinationQuad = {}

---Constructs a new destination quad object.
---@param topLeft Vector
---@param topRight Vector
---@param bottomLeft Vector
---@param bottomRight Vector
---@return DestinationQuad
function _G.DestinationQuad(topLeft, topRight, bottomLeft, bottomRight)
end

---@return Vector
function DestinationQuad:GetBottomLeft()
end

---@return Vector
function DestinationQuad:GetBottomRight()
end

---@return Vector
function DestinationQuad:GetTopLeft()
end

---@return Vector
function DestinationQuad:GetTopRight()
end

---@param vector Vector
function DestinationQuad:SetBottomLeft(vector)
end

---@param vector Vector
function DestinationQuad:SetBottomRight(vector)
end

---@param vector Vector
function DestinationQuad:SetTopLeft(vector)
end

---@param vector Vector
function DestinationQuad:SetTopRight(vector)
end
