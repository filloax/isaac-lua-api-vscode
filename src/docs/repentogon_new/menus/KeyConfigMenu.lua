---@class KeyConfigMenu
_G.KeyConfigMenu = {}

---@return Sprite 
function KeyConfigMenu.GetSprite()
end

---@return integer
function KeyConfigMenu.GetColumn()
end

---@return integer 
function KeyConfigMenu.GetSelectedElement()
end

---@param column integer 
function KeyConfigMenu.SetSelectedColumn(column)
end

---@param elementNumber integer 
function KeyConfigMenu.SetSelectedElement(elementNumber)
end

---Returns true if the player is editing their key config.
---@return boolean
function KeyConfigMenu.IsEditActive()
end