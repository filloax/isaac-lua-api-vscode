---@class EntityPickup : Entity
---@field AutoUpdatePrice boolean
---@field Charge integer
---@field OptionsPickupIndex integer
---@field Price PickupPrice | integer
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
---@param KeepSeed? boolean @default: `false. If set to `true`, keeps the initial RNG seed of the pickup instead of rerolling it
---@param IgnoreModifiers? boolean @default: `false`. If set to `, ignores item effects that might turn this pickup into something other than the specificed variant and sub-type. Specifically, this can be used to prevent a collectible from being affected by Tainted Isaac's rotation mechanic. (For example, if you manually spawn a quest collectible such as a Polaroid, it will be affected by Tainted Isaac's rotation mechanic, which is normally undesired. To fix this, you can immediately morph it into the same entity type / variant /sub-type after spawning with this argument set to true.)
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