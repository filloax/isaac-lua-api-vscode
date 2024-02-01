---@class BestiaryMenu
_G.BestiaryMenu = {}

---Returns the bestiary menu sprite.
---@return Sprite
function BestiaryMenu:GetBestiaryMenuSprite()
end

---Returns the sprite of the selectable elements that shows the "DeathScreen" enemy sprite.
---@return Sprite
function BestiaryMenu:GetDeathScreenSprite()
end

---Returns the animated enemy preview sprite.
---@return Sprite
function BestiaryMenu:GetEnemySprite()
end

---Returns the current page number.
---@return integer
function BestiaryMenu:GetSelectedPage()
end

---@return integer
function BestiaryMenu:GetLastEnemyPageID()
end

---@return integer
function BestiaryMenu:GetNumBossPages()
end

---@return integer
function BestiaryMenu:GetNumMonsterPages()
end

---@return integer
function BestiaryMenu:GetNumPages()
end

---Returns the selected element on the current page.
---@return integer
function BestiaryMenu:GetSelectedElement()
end

---Sets the current page.
---@param page integer
function BestiaryMenu:SetSelectedPage(page)
end

---Sets the selected element on the current page.
---@param element integer
function BestiaryMenu:SetSelectedElement(element)
end
