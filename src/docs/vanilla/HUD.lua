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
---@param ClearStack? boolean @default: `true`. Repentance+ Exclusive
---@diagnostic disable-next-line: duplicate-set-field
function HUD:ShowItemText(MainString, SecondaryString, IsCurseDisplay, ClearStack)
end

---@param Player EntityPlayer
---@param Item ItemConfigItem
---@param ClearStack? boolean @default: `true`. Repentance+ Exclusive
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
