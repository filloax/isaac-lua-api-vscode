---@return boolean
function EntityLaser:GetDisableFollowParent()
end

---Returns an array of entity indexes that have been hit by the laser.
---@return integer[]
function EntityLaser:GetHitList()
end

---@return boolean
function EntityLaser:GetOneHit()
end

---@return number
function EntityLaser:GetScale()
end

---@return boolean
function EntityLaser:GetShrink()
end

---@return integer
function EntityLaser:GetTimeout()
end

function EntityLaser:ResetSpriteScale()
end

---@param angle number
---@param speed? number @default: `8`
function EntityLaser:RotateToAngle(angle, speed)
end

---@param isDisabled boolean
function EntityLaser:SetDisableFollowParent(isDisabled)
end

---@param scale number
function EntityLaser:SetScale(scale)
end

---@param isShrink boolean
function EntityLaser:SetShrink(isShrink)
end

---@return number
function EntityLaser:GetDamageMultiplier()
end

---@param damageMult number
function EntityLaser:SetDamageMultiplier(damageMult)
end

---Requests the laser's shape to be fully recalculated next time it updates. Can be used to force the laser to instantly change its MaxDistance/Radius instead of transitioning to it. No effect for OneHit or non-sample lasers.
function EntityLaser:RecalculateSamplesNextUpdate()
end

---Sets if the laser was created through the Multi Dimensional Baby effect.
---@return boolean
function EntityLaser:IsMultidimensionalTouched()
end

---Returns if the laser was created through the Angelic Prism effect.
---@return boolean
function EntityLaser:IsPrismTouched()
end

---Returns if the laser was created through the Angelic Prism effect.
---@return boolean
function EntityLaser:SetPrismTouched()
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
function EntityLaser:FireSplitTear(pos, velocity, damageMult, sizeMult, variant, splitTearType)
end

---Returns if the entity has been hit by the laser.
---@param entity Entity
---@return boolean
function EntityLaser:InHitList(entity)
end

---Set if the entity has been hit by the laser.
---@param entity Entity
function EntityLaser:AddToHitList(entity)
end

---Remove the entity from the list of entities that have been hit by the laser.
---@param entity Entity
function EntityLaser:RemoveFromHitList(entity)
end

---Set the sound the laser plays on its first update.
---@param sound SoundEffect
function EntityLaser:SetInitSound(sound)
end

---Used by Mosntro's Lung + Technology synergy.
---@return integer
function EntityLaser:GetNumChainedLasers()
end

---Used by Mosntro's Lung + Technology synergy.
---@param num integer
function EntityLaser:SetNumChainedLasers(num)
end
