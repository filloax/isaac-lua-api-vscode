---@class Capsule
local Capsule = {}

---Causes the capsule to run collision code with `capsule2`
---@param capsule2 Capsule 
---@param vec Vector 
---@return boolean 
function Capsule:Collide(capsule2, vec)
end

---@return Vector 
function Capsule:GetDirection()
end

---Returns the `size` of the capsule (consistent with size in both constructors)
---@return number 
function Capsule:GetF1()
end

---TODO: Document me!
---@return number 
function Capsule:GetF2()
end

---@return Vector 
function Capsule:GetPosition()
end

---Returns the starting position of the capsule (can be set with `position`)
---@return Vector 
function Capsule:GetVec2()
end

---Returns the ending position of the capsule (can be set with `targetposition`)
---@return Vector 
function Capsule:GetVec3()
end

---@param position Vector
---@param sizeMultiplier Vector
---@param rotation number
---@param size number
---@return Capsule
function _G.Capsule(position, sizeMultiplier, rotation, size)
end

---@param position Vector
---@param targetPosition Vector
---@param size number 
---@return Capsule
function _G.Capsule(position, targetPosition, size)
end

