---@class SourceQuad: DestinationQuad
local SourceQuad_Local = {}

_G.SourceQuad = {}

---Constructs a new destination quad object.
---@param topLeft Vector
---@param topRight Vector
---@param bottomLeft Vector
---@param bottomRight Vector
function _G.SourceQuad(topLeft, topRight, bottomLeft, bottomRight)
end

---@param topLeft Vector
---@param bottomRight Vector
---@return SourceQuad
function _G.SourceQuad.NewFromBounds(topLeft, bottomRight)
end

---@param topLeft Vector
---@param width number
---@param height number
---@return SourceQuad
function _G.SourceQuad.NewFromRectangle(topLeft, width, height)
end

---Specialized version of Copy for `SourceQuad`.
---@return SourceQuad
function SourceQuad_Local:Copy()
end

---@return boolean
function SourceQuad_Local:IsUVSpace()
end

function SourceQuad_Local:ConvertToPixelSpace()
end

function SourceQuad_Local:ConvertToUVSpace()
end