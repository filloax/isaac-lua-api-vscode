---@return boolean
function EntityLaser:GetDisableFollowParent()
end

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

---@return boolean
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