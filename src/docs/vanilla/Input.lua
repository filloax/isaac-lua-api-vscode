---@class Input
_G.Input = {}

---@param action integer
---@param controllerId integer
---@return number
function Input.GetActionValue(action, controllerId)
end

---@param button integer
---@param controllerId integer
---@return number
function Input.GetButtonValue(button, controllerId)
end

---@param gameCoords boolean
---@return Vector
function Input.GetMousePosition(gameCoords)
end

---@param action integer
---@param controllerId integer
---@return boolean
function Input.IsActionPressed(action, controllerId)
end

---@param action integer
---@param controllerId integer
---@return boolean
function Input.IsActionTriggered(action, controllerId)
end

---@param button integer
---@param controllerId integer
---@return boolean
function Input.IsButtonPressed(button, controllerId)
end

---@param button integer
---@param controllerId integer
---@return boolean
function Input.IsButtonTriggered(button, controllerId)
end

---@param button integer
---@return boolean
function Input.IsMouseBtnPressed(button)
end

--TODO: Uncomment for next update
--[[ ---@return string
function Input.GetDeviceNameByIdx()
end ]]