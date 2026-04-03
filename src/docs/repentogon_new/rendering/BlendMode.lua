---@class BlendMode
---@field AlphaDestinationFactor BlendFactor
---@field AlphaSourceFactor BlendFactor
---@field RGBDestinationFactor BlendFactor
---@field RGBSourceFactor BlendFactor
---@field Equation BlendEquation
local BlendMode_Local = {}

_G.BlendMode = {}

---@param srcRGB BlendFactor
---@param dstRGB BlendFactor
---@param srcAlpha BlendFactor
---@param dstAlpha BlendFactor
---@param equation BlendEquation
function _G.BlendMode.New(srcRGB, dstRGB, srcAlpha, dstAlpha, equation)
end

---@param blendType BlendType
function _G.BlendMode.NewFromType(blendType)
end

---@param type BlendType
function BlendMode_Local:SetMode(type)
end