---@class Capsule
local Capsule = {}

---Causes the capsule to run collision code with `capsule2`
---@param capsule2 Capsule 
---@param vec Vector 
---@return boolean 
function Capsule:Collide(capsule2, vec)
end

---TODO: Document me!
---@return Vector 
function Capsule:GetDirection()
end

---TODO: Document me!
---@return number 
function Capsule:GetF1()
end

---TODO: Document me!
---@return number 
function Capsule:GetF2()
end

---TODO: Returns the capsule's position.
---@return Vector 
function Capsule:GetPosition()
end

---TODO: Document me!
---@return Vector 
function Capsule:GetV2()
end

---TODO: Document me!
---@return Vector 
function Capsule:GetV3()
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

