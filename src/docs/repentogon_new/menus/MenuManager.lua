---@class MenuManager
_G.MenuManager = {}

---Returns the `MainMenuType` of the currently active (visible) section of the main menu.
---@return MainMenuType
function MenuManager.GetActiveMenu()
end

---@return Sprite 
function MenuManager.GetBackWidgetSprite()
end

---Returns the color modifier lerp amount. This is formatted as the absolute rate of change.
---@return number
function MenuManager.GetColorModifierLerpAmount()
end

---@return ColorModifier
function MenuManager.GetCurrentColorModifier()
end

---@return Sprite 
function MenuManager.GetSelectWidgetSprite()
end

---@return Sprite 
function MenuManager.GetShadowSprite()
end

---@return ColorModifier
function MenuManager.GetTargetColorModifier()
end

---@return Vector 
function MenuManager.GetViewPosition()
end

---Changes the active menu on the main menu to match the input `menuType`.
---@param menuType MainMenuType
function MenuManager.SetActiveMenu(menuType)
end

---@param colorModifier ColorModifier
---@param lerp? boolean @default: `true`
---@param rate? number @default: `0.015`.
function MenuManager.SetColorModifier(colorModifier, lerp, rate)
end

---@param position Vector 
function MenuManager.SetViewPosition(position)
end