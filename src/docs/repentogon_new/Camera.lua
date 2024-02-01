---@class Camera
local Camera = {}

---The camera will attempt to focus on the specified position. Currently, this must be called every frame or else the game will stop trying to focus on it.
---@param pos Vector
function Camera:SetFocusPosition(pos) end

---Immediately moves the camera to the specified position.
---
---**BUG:** This function currently does not work with Active Cam enabled as the camera snaps back to its original position in each update.
---@param pos Vector
function Camera:SnapToPosition(pos) end
