---@class ItemOverlay
_G.ItemOverlay = {}

---Returns the overlay's delay.
---@return integer
function ItemOverlay.GetDelay()
end

---Returns the Mega Mush player sprite.
---@return Sprite
function ItemOverlay.GetMegaMushPlayerSprite()
end


---@return Giantbook
function ItemOverlay.GetOverlayID()
end

---Returns the player.
---@return EntityPlayer
function ItemOverlay.GetPlayer()
end

---Returns the sprite.
---@return Sprite
function ItemOverlay.GetSprite()
end

---Shows the overlay.
---@param giantbookId Giantbook
---@param delay? integer @default: `3`
---@param player? EntityPlayer @default: `nil`
function ItemOverlay.Show(giantbookId, delay, player)
end
