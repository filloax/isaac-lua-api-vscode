---@param layerID BombCostumeLayer
---@return Sprite
function EntityBomb:GetCostumeLayerSprite(layerID)
end

---@return integer
function EntityBomb:GetExplosionCountdown()
end

---@return number
function EntityBomb:GetFallSpeed()
end

---@return number
function EntityBomb:GetFallAcceleration()
end

---@return integer[]
function EntityBomb:GetHitList()
end

---@return number
function EntityBomb:GetScale()
end

---@return boolean
function EntityBomb:IsLoadingCostumes()
end

---@param speed number
function EntityBomb:SetFallSpeed(speed)
end

---@param acceleration number
function EntityBomb:SetFallAcceleration(acceleration)
end

---@param load? boolean @default: `true`
function EntityBomb:SetLoadCostumes(load)
end

---@param scale number
function EntityBomb:SetScale(scale)
end

function EntityBomb:UpdateDirtColor()
end

---Target angle for rocket bombs. It influences both their movement and the orientation of their sprite.
---@return number
function EntityBomb:GetRocketAngle()
end

---Target angle for rocket bombs. It influences both their movement and the orientation of their sprite.
---@param angle number
function EntityBomb:SetRocketAngle(angle)
end

---Target speed for rocket bombs. Naturally increases by 1 every frame.
---@return number
function EntityBomb:GetRocketSpeed()
end

---Target speed for rocket bombs. Naturally increases by 1 every frame.
---@param speed number
function EntityBomb:SetRocketSpeed(speed)
end

---Returns if the bomb was created through the Angelic Prism effect.
---@return boolean
function EntityBomb:IsPrismTouched()
end

---Sets if the bomb was created through the Angelic Prism effect.
---@param IsTouched boolean
function EntityBomb:SetPrismTouched(IsTouched)
end
