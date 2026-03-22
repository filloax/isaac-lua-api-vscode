---@meta

---@class HUD
local HUD = {}

function HUD:AssignPlayerHUDs()
end

---@param Player EntityPlayer
---@param ActiveSlot ActiveSlot
function HUD:FlashChargeBar(Player, ActiveSlot)
end

---@param Player EntityPlayer
---@param ActiveSlot ActiveSlot
function HUD:InvalidateActiveItem(Player, ActiveSlot)
end

---@param Player EntityPlayer
function HUD:InvalidateCraftingItem(Player)
end

---@return boolean
function HUD:IsVisible()
end

---@param MainString? string
---@param SecondaryString? string
---@vararg string
function HUD:ShowFortuneText(MainString, SecondaryString, ...)
end

---@param MainString string
---@param SecondaryString? string
---@param IsCurseDisplay? boolean @default: `false`
---@param ClearStack? boolean @**[Repentance+ Only]** default: `true`.
---@diagnostic disable-next-line: duplicate-set-field
function HUD:ShowItemText(MainString, SecondaryString, IsCurseDisplay, ClearStack)
end

---@param Player EntityPlayer
---@param Item ItemConfigItem
---@param ClearStack? boolean @**[Repentance+ Only]** default: `true`.
---@diagnostic disable-next-line: duplicate-set-field
function HUD:ShowItemText(Player, Item, ClearStack)
end

---@param Visible? boolean @default: `false`
function HUD:SetVisible(Visible)
end

function HUD:Update()
end

function HUD:PostUpdate()
end

function HUD:Render()
end


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

---@return Sprite
function HUD:GetStackedStreakSprite()
end

---@return Sprite
function HUD:GetPlayerStreakSprite()
end

---The HUD display for the player's inventory.
---@return HistoryHUD
function HUD:GetHistoryHUD()
end

