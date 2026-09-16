---@class SourceQuad: DestinationQuad
local SourceQuad = {}

_G.SourceQuad = {}

---Constructs a new destination quad object.
---@param topLeft Vector
---@param topRight Vector
---@param bottomLeft Vector
---@param bottomRight Vector
---@param uv boolean?
---@return SourceQuad
function _G.SourceQuad(topLeft, topRight, bottomLeft, bottomRight, uv)
end

---@param topLeft Vector
---@param bottomRight Vector
---@param uv boolean?
---@return SourceQuad
function _G.SourceQuad.NewFromBounds(topLeft, bottomRight, uv)
end

---@param topLeft Vector
---@param width number
---@param height number
---@param uv boolean?
---@return SourceQuad
function _G.SourceQuad.NewFromRectangle(topLeft, width, height, uv)
end

---Specialized version of Copy for `SourceQuad`.
---@return SourceQuad
function SourceQuad:Copy()
end

---@return boolean
function SourceQuad:IsUVSpace()
end

function SourceQuad:ConvertToPixelSpace()
end

function SourceQuad:ConvertToUVSpace()
end
