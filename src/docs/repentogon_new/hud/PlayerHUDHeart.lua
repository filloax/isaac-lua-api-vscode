---@class PlayerHUDHeart
local PlayerHUDHeart = {}

---TODO: Document me!
---@return integer
function PlayerHUDHeart:GetFlashType()
end

---Returns the name of the heart's animation.
---@return string
function PlayerHUDHeart:GetHeartAnim()
end

---Returns the name of the heart's overlay animation.
---@return string 
function PlayerHUDHeart:GetHeartOverlayAnim()
end 

---Returns true if the golden heart overlay is visible.
---@return boolean 
function PlayerHUDHeart:IsHoldenHeartOverlayVisible()
end

---Returns true if the heart is visible.
---@return boolean 
function PlayerHUDHeart:IsVisible()
end