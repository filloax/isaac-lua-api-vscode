---@class Vector
---@field X number
---@field Y number
---@operator add(Vector): Vector
---@operator sub(Vector): Vector
---@operator unm: Vector
---@operator mul(number|Vector): Vector
---@operator div(number|Vector): Vector
local Vector = {}

---@param x number
---@param y number
---@return Vector
function _G.Vector(x, y) end

_G.Vector = {
    ---@type Vector
    One = Vector(1, 1),
    ---@type Vector
    Zero = Vector(0, 0),
}

---@param AngleDegrees number
---@return Vector
function _G.Vector.FromAngle(AngleDegrees)
end

---@param first Vector
---@param second Vector
---@param t number
---@return Vector
function Vector.Lerp(first, second, t)
end

---@param Right Vector
---@return Vector
function Vector:__add(Right)
end

---@param Modifier number|Vector
---@return Vector
function Vector:__div(Modifier)
end

---@param Modifier number|Vector
---@return Vector
function Vector:__mul(Modifier)
end

---@param Right Vector
---@return Vector
function Vector:__sub(Right)
end

---@return Vector
function Vector:__unm()
end

---@param MinX number
---@param MinY number
---@param MaxX number
---@param MaxY number
function Vector:Clamp(MinX, MinY, MaxX, MaxY)
end

---@param MinX number
---@param MinY number
---@param MaxX number
---@param MaxY number
---@return Vector
function Vector:Clamped(MinX, MinY, MaxX, MaxY)
end

---@param second Vector
---@return number
function Vector:Cross(second)
end

---@param second Vector
---@return number
function Vector:Distance(second)
end

---@param second Vector
---@return number
function Vector:DistanceSquared(second)
end

---@param second Vector
---@return number
function Vector:Dot(second)
end

---@return number
function Vector:GetAngleDegrees()
end

---@return number
function Vector:Length()
end

---@return number
function Vector:LengthSquared()
end

function Vector:Normalize()
end

---@return Vector
function Vector:Normalized()
end

---@param NewLength number
function Vector:Resize(NewLength)
end

---@param NewLength number
---@return Vector
function Vector:Resized(NewLength)
end

---@param AngleDegrees number
---@return Vector
function Vector:Rotated(AngleDegrees)
end