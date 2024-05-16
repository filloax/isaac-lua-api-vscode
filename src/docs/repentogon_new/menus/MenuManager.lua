---@class MenuManager
_G.MenuManager = {}

---Returns the active menu on the main menu matching `MainMenuType`.
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

---Changes the active menu on the main menu to match the given `MainMenuType`.
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

---Selectively allows/disallows the game's menu to read certain inputs. Useful for custom menus.
---@param mask ButtonActionBitwise
function MenuManager.SetInputMask(mask)
end

---@return ButtonActionBitwise
function MenuManager.GetInputMask()
end