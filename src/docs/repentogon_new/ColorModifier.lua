---@class ColorModifier
---@field A number
---@field B number
---@field Brightness number 
---@field Contrast number
---@field G number
---@field R number
local ColorModifier = {}

---@param r? number @default: `1`
---@param g? number @default: `1`
---@param b? number @default: `1`
---@param a? number @default: `0`
---@param brightness? number @default: `0`
---@param contrast? number @default: `1`
---@return ColorModifier
function _G.ColorModifier(r, g, b, a, brightness, contrast)
end

---@param Right ColorModifier
---@return ColorModifier
function ColorModifier:__add(Right)
end

---@param Right ColorModifier
---@return ColorModifier
function ColorModifier:__div(Right)
end

---@param Right ColorModifier
---@return ColorModifier
function ColorModifier:__eq(Right)
end

---@param Right ColorModifier
---@return ColorModifier
function ColorModifier:__mul(Right)
end

---@param Right ColorModifier
---@return ColorModifier
function ColorModifier:__sub(Right)
end