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

---@param value boolean
function EntityLaser:SetTimeout(value)
end

---@return number
function EntityLaser:GetDamageMultiplier()
end

---@param damageMult number
function EntityLaser:SetDamageMultiplier(damageMult)
end