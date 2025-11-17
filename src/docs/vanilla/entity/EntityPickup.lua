---@class EntityPickup : Entity
---@field AutoUpdatePrice boolean
---@field Charge integer
---@field OptionsPickupIndex integer
---@field Price PickupPrice
---@field ShopItemId integer
---@field State integer
---@field Timeout integer
---@field Touched boolean
---@field Wait integer
local EntityPickup_Local = {}

function EntityPickup_Local:AppearFast()
end

---@return boolean
function EntityPickup_Local:CanReroll()
end

---@return integer
function EntityPickup_Local:GetCoinValue()
end

---@return boolean
function EntityPickup_Local:IsShopItem()
end

---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@param KeepPrice? boolean @default: `false`
---@param KeepSeed? boolean @default: `false`
---@param IgnoreModifiers? boolean @default: `false`
function EntityPickup_Local:Morph(Type, Variant, SubType, KeepPrice, KeepSeed, IgnoreModifiers)
end

function EntityPickup_Local:PlayDropSound()
end

function EntityPickup_Local:PlayPickupSound()
end

---@param Player? EntityPlayer @default: `nil`
---@return boolean
function EntityPickup_Local:TryOpenChest(Player)
end