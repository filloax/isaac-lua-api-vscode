---@class Minimap
_G.Minimap = {}

---Returns the minimap's current display size.
---@return Vector --When not expanded, always returns `Vector(47,47)`.
function Minimap.GetDisplayedSize()
end

---@return integer
---|0 # Normal
---|1 # Expanded (Opaque)
---|2 # Expanded
function Minimap.GetState()
end

---Returns how long the button action for the map has been held down to expand the map
---@return integer
function Minimap.GetHoldTime()
end

---Returns the Sprite object that holds map icons for Curses, Restock, and map-revealing effects
---@return Sprite
function Minimap.GetItemIconsSprite()
end

---Returns the Sprite object that holds all map icons 
---@return Sprite
function Minimap.GetIconsSprite()
end

---@return integer
function Minimap.GetShakeDuration()
end

---@return Vector
function Minimap.GetShakeOffset()
end

---@param duration integer
function Minimap.SetShakeDuration(duration)
end

---@param offset Vector
function Minimap.SetShakeOffset(offset)
end

---@param state integer
---|0 # Normal
---|1 # Expanded (Opaque)
---|2 # Expanded
function Minimap.SetState(state)
end

---Sets how long the button action for the map has been held down to expand the map
---@param time integer
function Minimap.SetHoldTime(time)
end