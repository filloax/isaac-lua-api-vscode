---@meta

---@class EntityKnife : Entity
---@field Charge number
---@field MaxDistance number
---@field PathFollowSpeed number
---@field PathOffset number
---@field Rotation number
---@field RotationOffset number
---@field Scale number
---@field TearFlags TearFlags
local EntityKnife = {}

---@param Flags TearFlags
function EntityKnife:AddTearFlags(Flags)
end

---@param Flags TearFlags
function EntityKnife:ClearTearFlags(Flags)
end

---@return number
function EntityKnife:GetKnifeDistance()
end

---@return number
function EntityKnife:GetKnifeVelocity()
end

---@return integer
function EntityKnife:GetRenderZ()
end

---@param Flags TearFlags
---@return boolean
function EntityKnife:HasTearFlags(Flags)
end

---@return boolean
function EntityKnife:IsFlying()
end

function EntityKnife:Reset()
end

---@param Speed number
function EntityKnife:SetPathFollowSpeed(Speed)
end

---@param Charge number
---@param Range number
function EntityKnife:Shoot(Charge, Range)
end



---Returns an array of entity indexes that have been hit by the knife.
---@return integer[]
function EntityKnife:GetHitList()
end

---Returns `true` if the knife is being swung.
---@return boolean
function EntityKnife:GetIsSwinging()
end

---Sets if the knife is being swung
---@param bool boolean
function EntityKnife:SetIsSwinging(bool)
end

---Returns `true` if the using the Spirit Sword spin attack.
---@return boolean
function EntityKnife:GetIsSpinAttack()
end

---Sets if the Spirit Sword is doing its spin attack.
---@param bool boolean
function EntityKnife:SetIsSpinAttack(bool)
end

---Returns if the knife was created through the Multi Dimensional Baby effect.
---@return boolean
function EntityKnife:IsMultidimensionalTouched()
end

---Returns if the knife was created through the Angelic Prism effect.
---@return boolean
function EntityKnife:IsPrismTouched()
end

---Sets if the knife was created through the Multi Dimensional Baby effect.
---@param IsTouched boolean
function EntityKnife:SetMultidimensionalTouched(IsTouched)
end

---Sets if the knife was created through the Angelic Prism effect.
---@param IsTouched boolean
function EntityKnife:SetPrismTouched(IsTouched)
end

---Fire a new tear that inherits many attributes from this knife (flags, damage, size, color, etc).
---
---This will also trigger the `MC_POST_FIRE_SPLIT_TEAR` callback. For custom effects, a string may be passed in place of the `SplitTearType`.
---@param pos Vector
---@param velocity Vector
---@param damageMult? number @default: `0.5`.
---@param sizeMult? number @default: `0.6`.
---@param variant? TearVariant @default: `0`.
---@param splitTearType? SplitTearType|string @default: `SplitTearType.SPLIT_GENERIC`
---@return EntityTear
function EntityKnife:FireSplitTear(pos, velocity, damageMult, sizeMult, variant, splitTearType)
end

---@param entity Entity
---@return boolean
function EntityKnife:InHitList(entity)
end

---@param entity Entity
function EntityKnife:AddToHitList(entity)
end

---@param entity Entity
function EntityKnife:RemoveFromHitList(entity)
end

---For a "hitbox" `EntityKnife` `[KnifeSubType.CLUB_HITBOX` created by melee weapon "swings" (Bone Club, Spirit Sword, etc) this function returns the "main" `EntityKnife` of that melee weapon. Returns `nil` otherwise, and will return `nil` for hitbox entities spawned via other means.
---@return EntityKnife?
function EntityKnife:GetHitboxParentKnife()
end

--Allows setting a custom value for `GetHitboxParentKnife`, which is intended to only be used for a "hitbox" `EntityKnife` `KnifeSubType.CLUB_HITBOX` to refer to the "main" `EntityKnife` of a melee weapon (Bone Club, Spirit Sword, etc).
---
---Note that setting this has no influence on any vanilla logic - this reference is only for the convenience of modders. Please use appropriately.
---@param knife EntityKnife
function EntityKnife:SetHitboxParentKnife(knife)
end

---Set the distance of a thrown knife.
---@param distance number
function EntityKnife:SetKnifeDistance(distance)
end

---Set the velocity speed of a thrown knife.
---@param velocity number
function EntityKnife:SetKnifeVelocity(velocity)
end

