---@meta

---@class SourceQuad: DestinationQuad
local SourceQuad = {}

---Constructs a new destination quad object.
---@param topLeft Vector
---@param topRight Vector
---@param bottomLeft Vector
---@param bottomRight Vector
function _G.SourceQuad(topLeft, topRight, bottomLeft, bottomRight)
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

