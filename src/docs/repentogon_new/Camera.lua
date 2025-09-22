---@class Camera
local Camera = {}

---The camera will attempt to focus on the specified position. Currently, this must be called every frame or else the game will stop trying to focus on it.
---@param pos Vector
function Camera:SetFocusPosition(pos)
end

---Immediately moves the camera to the specified position.
---
---**BUG:** This function currently does not work with Active Cam enabled as the camera snaps back to its original position in each update.
---@param pos Vector
function Camera:SnapToPosition(pos)
end

---Returns if the provided in-world position is visible to the camera.
---@param pos Vector
---@return boolean
function Camera:IsPosVisible(pos)
end

function Camera:Update()
end

---Will set whether or not camera clamping is enabled. If true, will have it follow the player, acting like it does in large rooms
---@param clamped boolean
function Camera:SetClampEnabled(clamped)
end

---Returns whether or not camera clamping is enabled.
---@return boolean
function Camera:IsClampEnabled()
end