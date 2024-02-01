---@param layerID BombCostumeLayer
---@return Sprite
function EntityBomb:GetCostumeLayerSprite(layerID)
end

---@return integer
function EntityBomb:GetExplosionCountdown()
end

---@return number
function EntityBomb:GetFallingSpeed()
end

---@return number
function EntityBomb:GetHeight()
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
function EntityBomb:SetFallingSpeed(speed)
end

---@param height number
function EntityBomb:SetHeight(height)
end

---@param load boolean @default: `true`
function EntityBomb:SetLoadCostumes(load)
end

---@param scale number
function EntityBomb:SetScale(scale)
end

function EntityBomb:UpdateDirtColor()
end
