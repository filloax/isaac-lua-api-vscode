---@class Weapon
local Weapon = {}

---TODO: Document me!
---@param collectible CollectibleType
function Weapon:ClearItemAnim(collectible)
end

---@return integer
function Weapon:GetCharge()
end

---@return Vector
function Weapon:GetDirection()
end

---@return integer
function Weapon:GetFireDelay()
end

---@return integer
function Weapon:GetMaxFireDelay()
end

---Returns the weapon's modifiersin bitmask form.
---@return WeaponModifier
function Weapon:GetModifiers()
end

---Returns the number of times the player has "fired". Not affected by multi-shot or additional shots, such as Mutant Spider and Mom's Eye. Some `WeaponType`s increase this in a different way, such as with Brimstone, which increases it by 1 every
---@return integer
function Weapon:GetNumFired()
end

---Returns the weapon's owner. Returns an `Entity` object, but is expected to be restricted to `EntityPlayer` and `EntityFamiliar`.
---@return Entity
function Weapon:GetOwner()
end

---@return WeaponType
function Weapon:GetWeaponType()
end

---Returns `false` for having collectibles like Marked and Analog Stick. Will still return true for `WeaponType`s that naturally allow you to shoot in any direction like Forgotten's Bone, Ludovico Technique, etc.
---@return boolean
function Weapon:IsAxisAligned()
end

---TODO: Document me!
---@param item CollectibleType
---@return boolean
function Weapon:IsItemAnimFinished(item)
end

---TODO: Document me!
---@param item CollectibleType
---@param anim integer
---@param position Vector
---@param charge number
function Weapon:PlayItemAnim(item, anim, position, charge)
end

---@param charge integer
function Weapon:SetCharge(charge)
end

---@param delay number
function Weapon:SetFireDelay(delay)
end

---@param time integer
function Weapon:SetHeadLockTime(time)
end

---@param modifiers WeaponModifier
function Weapon:SetModifiers(modifiers)
end
