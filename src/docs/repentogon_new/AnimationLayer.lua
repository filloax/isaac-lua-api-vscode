---@class AnimationLayer
local AnimationLayer = {}

---Returns the frame data from the provided frame number.
---@param frame integer
---@return AnimationFrame?
function AnimationLayer:GetFrame(frame) end

---@return integer
function AnimationLayer:GetLayerID() end

---@return boolean
function AnimationLayer:IsVisible() end
