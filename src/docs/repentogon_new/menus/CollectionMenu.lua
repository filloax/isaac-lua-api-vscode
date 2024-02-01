---@class CollectionMenu
_G.CollectionMenu = {}

---Returns the collection menu sprite (Paper sprite and all other decoration).
---@return Sprite 
function CollectionMenu:GetCollectionMenuSprite()
end

---Returns the sprite of the selectable elements that shows the "DeathScreen" item sprites.
---@return Sprite 
function CollectionMenu:GetDeathScreenSprite()
end

---@return integer
function CollectionMenu:GetSelectedPage()
end

---@return integer
function CollectionMenu:GetSelectedElement()
end

---Sets the current page.
---@param page integer 
function CollectionMenu:SetSelectedPage(page)
end

---@param elementNumber integer
function CollectionMenu:SetSelectedElement(elementNumber)
end