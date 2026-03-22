---@meta

---@class EntityLaser : Entity
---@field Angle number
---@field AngleDegrees number
---@field BlackHpDropChance number
---@field BounceLaser Entity
---@field CurveStrength number
---@field DisableFollowParent boolean
---@field EndPoint Vector
---@field FirstUpdate boolean
---@field GridHit boolean
---@field HomingLaser userdata @LaserHomingType
---@field HomingType integer @LaserHomingType
---@field IsActiveRotating boolean
---@field LaserLength number
---@field LastAngleDegrees number
---@field MaxDistance number
---@field OneHit boolean
---@field ParentOffset Vector
---@field Radius number
---@field RotationDegrees number
---@field RotationDelay integer
---@field RotationSpd number
---@field SampleLaser boolean
---@field Shrink boolean
---@field StartAngleDegrees number
---@field TearFlags TearFlags
---@field Timeout integer
local EntityLaser_Local = {}

_G.EntityLaser = {}

---@param Flags TearFlags
function EntityLaser_Local:AddTearFlags(Flags)
end

---@param Start Vector
---@param Dir Vector
---@param PositionOffset Vector
---@param Parent Entity
---@param Margin number
---@return Vector
function _G.EntityLaser.CalculateEndPoint(Start, Dir, PositionOffset, Parent, Margin)
end

---@param Flags TearFlags
function EntityLaser_Local:ClearTearFlags(Flags)
end

---@return Vector
function EntityLaser_Local:GetEndPoint()
end

---@return VectorList
function EntityLaser_Local:GetNonOptimizedSamples()
end

---@return integer
function EntityLaser_Local:GetRenderZ()
end

---@return VectorList
function EntityLaser_Local:GetSamples()
end

---@param Flags TearFlags
---@return boolean
function EntityLaser_Local:HasTearFlags(Flags)
end

---@return boolean
function EntityLaser_Local:IsCircleLaser()
end

---@return boolean
function EntityLaser_Local:IsSampleLaser()
end

---@param Delay integer
---@param AngleDegrees number
---@param RotationSpd number
---@param TimeoutComplete boolean
function EntityLaser_Local:SetActiveRotation(Delay, AngleDegrees, RotationSpd, TimeoutComplete)
end

---@param Chance number
function EntityLaser_Local:SetBlackHpDropChance(Chance)
end

---@param Type integer @LaserHomingType
function EntityLaser_Local:SetHomingType(Type)
end

---@param Distance number
function EntityLaser_Local:SetMaxDistance(Distance)
end

---@param Value boolean
function EntityLaser_Local:SetMultidimensionalTouched(Value)
end

---@param Value boolean
function EntityLaser_Local:SetOneHit(Value)
end

---@param Value integer
function EntityLaser_Local:SetTimeout(Value)
end

---@param Variant LaserVariant
---@param SourcePos Vector
---@param AngleDegrees number
---@param Timeout integer
---@param PosOffset Vector
---@param Source Entity
---@return EntityLaser
function _G.EntityLaser.ShootAngle(Variant, SourcePos, AngleDegrees, Timeout, PosOffset, Source)
end


---@return boolean
function EntityLaser_Local:GetDisableFollowParent()
end

---Returns an array of entity indexes that have been hit by the laser.
---@return integer[]
function EntityLaser_Local:GetHitList()
end

---@return boolean
function EntityLaser_Local:GetOneHit()
end

---@return number
function EntityLaser_Local:GetScale()
end

---@return boolean
function EntityLaser_Local:GetShrink()
end

---@return integer
function EntityLaser_Local:GetTimeout()
end

function EntityLaser_Local:ResetSpriteScale()
end

---@param angle number
---@param speed? number @default: `8`
function EntityLaser_Local:RotateToAngle(angle, speed)
end

---@param isDisabled boolean
function EntityLaser_Local:SetDisableFollowParent(isDisabled)
end

---@param scale number
function EntityLaser_Local:SetScale(scale)
end

---@param isShrink boolean
function EntityLaser_Local:SetShrink(isShrink)
end

---@return number
function EntityLaser_Local:GetDamageMultiplier()
end

---@param damageMult number
function EntityLaser_Local:SetDamageMultiplier(damageMult)
end

---Requests the laser's shape to be fully recalculated next time it updates. Can be used to force the laser to instantly change its MaxDistance/Radius instead of transitioning to it. No effect for OneHit or non-sample lasers.
function EntityLaser_Local:RecalculateSamplesNextUpdate()
end

---Sets if the laser was created through the Multi Dimensional Baby effect.
---@return boolean
function EntityLaser_Local:IsMultidimensionalTouched()
end

---Returns if the laser was created through the Angelic Prism effect.
---@return boolean
function EntityLaser_Local:IsPrismTouched()
end

---Returns if the laser was created through the Angelic Prism effect.
---@return boolean
function EntityLaser_Local:SetPrismTouched()
end

---Fire a new tear that inherits many attributes from this laser (flags, damage, size, color, etc).
---
---This will also trigger the `MC_POST_FIRE_SPLIT_TEAR` callback. For custom effects, a string may be passed in place of the `SplitTearType`.
---@param pos Vector
---@param velocity Vector
---@param damageMult? number @default: `0.5`.
---@param sizeMult? number @default: `0.6`.
---@param variant? TearVariant @default: `0`.
---@param splitTearType? SplitTearType|string @default: `SplitTearType.SPLIT_GENERIC`
---@return EntityTear
function EntityLaser_Local:FireSplitTear(pos, velocity, damageMult, sizeMult, variant, splitTearType)
end

---Returns if the entity has been hit by the laser.
---@param entity Entity
---@return boolean
function EntityLaser_Local:InHitList(entity)
end

---Set if the entity has been hit by the laser.
---@param entity Entity
function EntityLaser_Local:AddToHitList(entity)
end

---Remove the entity from the list of entities that have been hit by the laser.
---@param entity Entity
function EntityLaser_Local:RemoveFromHitList(entity)
end

---Set the sound the laser plays on its first update.
---@param sound SoundEffect
function EntityLaser_Local:SetInitSound(sound)
end

---Used by Mosntro's Lung + Technology synergy.
---@return integer
function EntityLaser_Local:GetNumChainedLasers()
end

---Used by Mosntro's Lung + Technology synergy.
---@param num integer
function EntityLaser_Local:SetNumChainedLasers(num)
end

