---@class HUD
local HUD = {}

---Flashes the red hearts on the hud tied to the provided player.
---@param player EntityPlayer
function HUD:FlashRedHearts(player)
end

---Get the fill of the boss hp bar
---@return number
function HUD:GetBossHPBarFill()
end

---Sprite object used to render pills, cards and rune sprites in the hud.
---@return Sprite
function HUD:GetCardsPillsSprite()
end

---@return Sprite
function HUD:GetChargeBarSprite()
end

---Sprite object used to render the coop player selection menu.
---@return Sprite
function HUD:GetCoopMenuSprite()
end

---Sprite object used for bag of crafting hud.
---@return Sprite
function HUD:GetCraftingSprite()
end

---Sprite object used for the fortune popup window.
---@return Sprite
function HUD:GetFortuneSprite()
end

---@return Sprite
function HUD:GetHeartsSprite()
end

---Sprite object used for Tainted Isaac inventory system.
---@return Sprite
function HUD:GetInventorySprite()
end

---@return Sprite
function HUD:GetPickupsHUDSprite()
end

---@param index? integer @default: `0`
---@return PlayerHUD	
function HUD:GetPlayerHUD(index)
end

---Tainted blue baby poop spell sprite
---@return Sprite
function HUD:GetPoopSpellSprite()
end

---Sprite object used for text streak popups. For example: picking up items, displaying floor name, etc.
---@return Sprite
function HUD:GetStreakSprite()
end

---Sets the fill of the boss hp bar.
---@param percent number Accepts values between `0` and `1`. Numbers below `0` cause the boss hp bar to not be rendered.
function HUD:SetBossHPBarFill(percent)
end
