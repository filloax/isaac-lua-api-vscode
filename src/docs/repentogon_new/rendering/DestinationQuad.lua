---@class DestinationQuad
local DestinationQuad_Local = {}

_G.DestinationQuad = {}

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

---@param topLeft Vector
---@param bottomRight Vector
---@return DestinationQuad
function _G.DestinationQuad.NewFromBounds(topLeft, bottomRight)
end

---@param topLeft Vector
---@param width number
---@param height number
---@return DestinationQuad
function _G.DestinationQuad.NewFromRectangle(topLeft, width, height)
end

---@return Vector
function DestinationQuad_Local:GetBottomLeft()
end

---@return Vector
function DestinationQuad_Local:GetBottomRight()
end

---@return Vector
function DestinationQuad_Local:GetTopLeft()
end

---@return Vector
function DestinationQuad_Local:GetTopRight()
end

---@param vector Vector
function DestinationQuad_Local:SetBottomLeft(vector)
end

---@param vector Vector
function DestinationQuad_Local:SetBottomRight(vector)
end

---@param vector Vector
function DestinationQuad_Local:SetTopLeft(vector)
end

---@param vector Vector
function DestinationQuad_Local:SetTopRight(vector)
end

---@return DestinationQuad
function DestinationQuad_Local:Copy()
end

---@param offset Vector
function DestinationQuad_Local:Translate(offset)
end

---@param scale Vector
---@param anchor Vector
function DestinationQuad_Local:Scale(scale, anchor)
end

---@param rotation number @Rotation is in degrees.
---@param anchor Vector
function DestinationQuad_Local:Rotate(rotation, anchor)
end

---@param shear Vector
---@param anchor Vector
function DestinationQuad_Local:Shear(shear, anchor)
end

---Applies a 2x3 render matrix to the image, effectively applying a `Translate`, `Scale`, `Rotate` and `Shear` all at once.
---
---The table must have at least 2 rows, each with at least 3 columns.
---@param renderMatrix table
---@param anchor Vector
function DestinationQuad_Local:ApplyMatrix(renderMatrix, anchor)
end

---@param flipX boolean
---@param flipY boolean
function DestinationQuad_Local:Flip(flipX, flipY)
end
