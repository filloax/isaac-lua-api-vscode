---@class AnimationFrame
local AnimationFrame = {}

---@return Color **READONLY**
function AnimationFrame:GetColor() end

---@return Vector crop **READONLY**
function AnimationFrame:GetCrop() end

---@return number
function AnimationFrame:GetHeight() end

---@return Vector **READONLY**
function AnimationFrame:GetPivot() end

---@return Vector **READONLY**
function AnimationFrame:GetPos() end

---@return number
function AnimationFrame:GetRotation() end

---@return Vector **READONLY**
function AnimationFrame:GetScale() end

---@return number
function AnimationFrame:GetWidth() end

---@return boolean
function AnimationFrame:IsInterpolated() end

---@return boolean
function AnimationFrame:IsVisible() end

---@return integer
function AnimationFrame:GetStartFrame() end

---@return integer
function AnimationFrame:GetEndFrame() end
