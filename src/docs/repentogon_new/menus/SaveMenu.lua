---@class SaveMenu
_G.SaveMenu = {}

---@return Sprite 
function SaveMenu.GetSaveSelectionMenuSprite()
end

---@return Sprite 
function SaveMenu.GetDeleteButtonSprite()
end

---@return Sprite 
function SaveMenu.GetDeletePopupSprite()
end

---@return Sprite 
function SaveMenu.GetSave1DrawingSprite()
end

---@return Sprite 
function SaveMenu.GetSave2DrawingSprite()
end

---@return Sprite 
function SaveMenu.GetSave3DrawingSprite()
end

---@return integer 
function SaveMenu.GetSelectedElement()
end

---Returns true if the save file deletion mode is active.
---@return boolean
function SaveMenu.IsDeleteActive()
end

---Sets the current element.
---@param elementNumber integer 
function SaveMenu.SetSelectedElement(elementNumber)
end

---Overrides the spritesheet used for a save file drawing. `MC_POST_SAVESLOT_LOAD` is a good place to use this.
---@param slot
---|1
---|2
---|3
---@param pngFilename string
function SaveMenu.SetSlotSpritesheet(slot, pngFilename)
end