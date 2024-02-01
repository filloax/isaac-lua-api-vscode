---@class Beam
local Beam = {}

---Constructs a new beam object.
---
---**Example**
---
---```lua
---
---local sprite = Sprite()
---sprite:Load("gfx/893.000_ball and chain.anm2", true)
---chain = Beam(sprite, "chain", true, false)---
---
---mod:AddCallback(ModCallbacks.MC_POST_PLAYER_RENDER, function(_, player)
---    chain:GetSprite():PlayOverlay("Chain", false)
---    local center = game:GetLevel():GetCurrentRoom():GetCenterPos()
---    chain:Add(Isaac.WorldToScreen(center))
---    chain:Add(Isaac.WorldToScreen(player.Position))
---    chain:Render()
---end)
---```
---@param sprite Sprite
---@param layerId integer
---@param useOverlay boolean
---@param unknownBool boolean TODO: Document me!
---@return Beam
---@overload fun(sprite: Sprite, layerName: string, useOverlay: boolean, unknownBool: boolean)
function _G.Beam(sprite, layerId, useOverlay, unknownBool)
end

---Adds a point to the beam.
---@param position Vector
---@param spritesheetCoordinate number The Y position of the spritesheet that should be drawn by the time this Point is reached. For example, two points of `0` and `64` SpritesheetCoordinate will render the spritesheet starting from `y 0` to `y 64`, while an additional third point of `0` will draw it in reverse from `y 64` to `y 0`. `width` acts as 
---@param width? number @default: `1.0`. A multiplier for how wide the beam should be. A non-zero value will scale the spritesheet width accordingly. This is interpolated between points.
---@overload fun(self: Beam, point: Point)
function Beam:Add(position, spritesheetCoordinate, width)
end

---@return integer
function Beam:GetLayer()
end

---Returns a table of the `Point` objects currently stored.
---@return Point[]
function Beam:GetPoints()
end

---@return Sprite
function Beam:GetSprite()
end

---TODO: Document me!
---@return boolean
function Beam:GetUnkBool()
end

---Returns if the beam is currently using the overlay sprite or not.
---@return boolean
function Beam:GetUseOverlay()
end

---Renders the beam.
---@param clearPoints? boolean @default: `true`
function Beam:Render(clearPoints)
end

---Sets the beam's layer.
---@param layerId integer
---@overload fun(self: Beam, layerName: string)
function Beam:SetLayer(layerId)
end

---Sets the beam's sprite.
---@param sprite Sprite
---@overload fun(self: Beam, sprite: Sprite, layerName: string, useOverlay: boolean)
---@overload fun(self: Beam, sprite: Sprite, layerId: integer, useOverlay: boolean)
function Beam:SetSprite(sprite)
end

---TODO: Document me!
---@param unknownBool boolean
function Beam:SetUnkBool(unknownBool)
end

---TODO: Document me!
---@param useOverlay boolean
function Beam:SetUseOverlay(useOverlay)
end
