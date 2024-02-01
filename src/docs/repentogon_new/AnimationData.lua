---@class AnimationData
local AnimationData = {}

---Returns a table of all the animation's `AnimationLayer` objects, ordered from bottom to top (NOT ordered by layer ID).
---@return AnimationLayer[]
function AnimationData:GetAllLayers() end

---@param layerId integer
---@return AnimationLayer
function AnimationData:GetLayer(layerId) end

---Returns the amount of frames the animation has.
---@return integer
function AnimationData:GetLength() end

---@return string
function AnimationData:GetName() end

---@return boolean
function AnimationData:IsLoopingAnimation() end
