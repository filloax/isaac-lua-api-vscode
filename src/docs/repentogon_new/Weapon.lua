---@class Weapon
local Weapon = {}

---Clears the animation set by PlayItemAnim
---@param collectible CollectibleType
function Weapon:ClearItemAnim(collectible)
end

---@return number
function Weapon:GetCharge()
end

---@return Vector
function Weapon:GetDirection()
end

---@return number
function Weapon:GetFireDelay()
end

---@return number
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

---Returns `true` if the current item animation is using its "fully charged" animation
---@param item CollectibleType
---@return boolean
function Weapon:IsItemAnimFinished(item)
end

---Plays a special head animation associated with a collectible.
---@param item CollectibleType
---@param animType integer
---|0 #Charging
---|1 #Charged
---|2 #ChargeShoot
---@param direction Vector
---@param frame integer
function Weapon:PlayItemAnim(item, animType, direction, frame)
end

---@param charge number
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

---Returns active entity used by weapon (Brimstone - EntityLaser, Mom's Knife -  EntityKnife and etc.). Returns `nil` if cannot be found.
---@return Entity
function Weapon:GetMainEntity()
end

---@return number
function Weapon:GetMaxCharge()
end