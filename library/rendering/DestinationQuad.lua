---@meta

---@class DestinationQuad
local DestinationQuad = {}

---Constructs a new destination quad object.
---
---Printing as a string creates a string representation of the quad object.
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

---@return DestinationQuad
function DestinationQuad:Copy()
end

---@param offset Vector
function DestinationQuad:Translate(offset)
end

---@param scale Vector
---@param anchor Vector
function DestinationQuad:Scale(scale, anchor)
end

---@param rotation number @Rotation is in degrees.
---@param anchor Vector
function DestinationQuad:Rotate(rotation, anchor)
end

---@param shear Vector
---@param anchor Vector
function DestinationQuad:Shear(shear, anchor)
end

---Applies a 2x3 render matrix to the image, effectively applying a `Translate`, `Scale`, `Rotate` and `Shear` all at once.
---
---The table must have at least 2 rows, each with at least 3 columns.
---@param renderMatrix table
---@param anchor Vector
function DestinationQuad:ApplyMatrix(renderMatrix, anchor)
end

---@param flipX boolean
---@param flipY boolean
function DestinationQuad:Flip(flipX, flipY)
end

