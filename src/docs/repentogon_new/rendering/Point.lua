---@class Point
local Point = {}

---@param position Vector
---@param spritesheetCoordinate number The Y position of the spritesheet that should be drawn by the time this Point is reached. For example, two points of `0` and `64` SpritesheetCoordinate will render the spritesheet starting from `y 0` to `y 64`, while an additional third point of `0` will draw it in reverse from `y 64` to `y 0`. `width` acts as 
---@param width? number @default: `1.0`. A multiplier for how wide the beam should be. A non-zero value will scale the spritesheet width accordingly. This is interpolated between points.
---@return Point
function _G.Point(position, spritesheetCoordinate, width)
end

---@return number
function Point:GetSpritesheetCoordinate()
end

---@return number
function Point:GetWidth()
end

---@return Vector
function Point:GetPosition()
end

---@param height number
function Point:SetSpritesheetCoordinate(height)
end

---@param width number
function Point:SetWidth(width)
end

---@param position Vector
function Point:SetPosition(position)
end

---@return Color
function Point:GetColor()
end

---@param color Color
function Point:SetColor(color)
end

---If false, Point is using screenspace when rendering. Otherwise, it's using worldspace.
---@return boolean
function Point:GetIsWorldSpace()
end

---If false, automatically converts this Point's position from worldspace to screenspace when rendering.
---@param isWorldSpace boolean
function Point:SetIsWorldSpace(isWorldSpace)
end