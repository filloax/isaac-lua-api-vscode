---@class PlayerHUD
local PlayerHUD = {}

---Returns the PlayerHUDHeart from the provided index.
---@param index integer
---@return PlayerHUDHeart?
function PlayerHUD:GetHeartByIndex(index)
end

---Returns a table of `PlayerHUDHeart` objects.
---@return PlayerHUDHeart[]
function PlayerHUD:GetHearts()
end

---@return HUD
function PlayerHUD:GetHUD()
end

---@return EntityPlayer
function PlayerHUD:GetPlayer()
end

---@param slot ActiveSlot
---@param position Vector
---@param alpha? number @default: `1`.
---@param scale? number @default: `1`.
function PlayerHUD:RenderActiveItem(slot, position, alpha, scale)
end

---@return integer
function PlayerHUD:GetIndex()
end

---@return PlayerHUDLayout
function PlayerHUD:GetLayout()
end