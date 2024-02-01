---@class MultiShotParams
local MultiShotParams = {}

---Returns the angle the eyes are offset from each other. For example, The Wiz makes them `45` degrees.
---@return number
function MultiShotParams:GetMultiEyeAngle()
end

---Returns the number of eyes simultaniously shooting. For example, for The Wiz, it's `2`, for Mutant Spider, it's `1`.
---@return integer
function MultiShotParams:GetNumEyesActive()
end

---Returns the amount of lanes used to spread the shot tears onto. Lane positions are calculated by dividing the area,
---defined by the shooting direction +- the spreadAngle, by the number of lanes. This will create a pattern similar to
---a symetrical hand fan. Normally the number of lanes should be the same number as the amount of tears divided by
---the number of eyes.
---
---A smaller number of lanes than the amount of tears will cause tears to overlap each other. A higher lane count than
---tears will make the fan pattern asymetrical.
---@return integer
function MultiShotParams:GetNumLanesPerEye()
end

---Returns the amount of tears additionally shot in random directions. Same effect as "Eye Sore" collectible.
---@return integer
function MultiShotParams:GetNumRandomDirTears()
end

---Returns the number of tears the player can simultaneously fire.
---@return integer
function MultiShotParams:GetNumTears()
end

---Returns the spread angle for the given `WeaponType`.
---@param weaponType WeaponType
---@return number
function MultiShotParams:GetSpreadAngle(weaponType)
end

---Returns true if the cross eye effect is active (i.e: player shoots in two directions with 45 degrees offset to each other).
---@return boolean
function MultiShotParams:IsCrossEyed()
end

---Returns true if two additional shots will be triggered. This is similar to Mom's Eye.
---@return boolean
function MultiShotParams:IsShootingBackwards()
end

---Returns true if two additional shots will be triggered. This is similar to Loki's Horns.
---@return boolean
function MultiShotParams:IsShootingSideways()
end

---Sets if the cross eyes effect is active.
---@param active boolean
function MultiShotParams:SetIsCrossEyed(active)
end

---Sets if the player can have an additional tear be shot backwards. This is similar to Mom's Eye.
---@param active boolean
function MultiShotParams:SetIsShootingBackwards(active)
end

---Sets if the player can have an additional tear be shot sideways. This is similar to Loki's Horns.
---@param active boolean
function MultiShotParams:SetIsShootingSideways(active)
end

---When more than one eye is active, defines the angle the eyes are offset to eachother. For example, The Wiz makes them `45` degrees.
---@param angle number
function MultiShotParams:SetMultiEyeAngle(angle)
end

---Sets the number of eyes active. For example, for The Wiz, it's `2`, for Mutant Spider, it's `1`.
---@param value integer
function MultiShotParams:SetNumEyesActive(value)
end

---Sets the number of lanes per eye. See `GetNumLanesPerEye` for more information.
---@param amount integer
function MultiShotParams:SetNumLanesPerEye(amount)
end

---Sets the amount of tears additionally shot in random directions. Same effect as "Eye Sore" collectible.
---@param value integer
function MultiShotParams:SetNumRandomDirTears(value)
end

---Sets the number of tears the player can fire simultaneously.
---@param amount integer
function MultiShotParams:SetNumTears(amount)
end

---Sets the spread angle for the given `WeaponType`.
---@param weaponType WeaponType
---@param angle number
function MultiShotParams:SetSpreadAngle(weaponType, angle)
end
