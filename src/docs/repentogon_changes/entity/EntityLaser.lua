---@return boolean
function EntityLaser_Local:GetDisableFollowParent()
end

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

---@param entity Entity
---@return boolean
function EntityLaser_Local:InHitList(entity)
end

---@param entity Entity
function EntityLaser_Local:AddToHitList(entity)
end

---@param entity Entity
function EntityLaser_Local:RemoveFromHitList(entity)
end
