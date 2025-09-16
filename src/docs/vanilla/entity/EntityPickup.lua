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
_G.EntityPickup = {}

function EntityPickup:AppearFast()
end

---@return boolean
function EntityPickup:CanReroll()
end

---@return integer
function EntityPickup:GetCoinValue()
end

---@return boolean
function EntityPickup:IsShopItem()
end

---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@param KeepPrice? boolean @default: `false`
---@param KeepSeed? boolean @default: `false`
---@param IgnoreModifiers? boolean @default: `false`
function EntityPickup:Morph(Type, Variant, SubType, KeepPrice, KeepSeed, IgnoreModifiers)
end

function EntityPickup:PlayDropSound()
end

function EntityPickup:PlayPickupSound()
end

---@param Player? EntityPlayer @default: `nil`
---@return boolean
function EntityPickup:TryOpenChest(Player)
end
