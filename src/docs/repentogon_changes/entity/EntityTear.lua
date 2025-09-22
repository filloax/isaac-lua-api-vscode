---Returns the intensity value of the tear as a result of the Dead Eye collectible. It is between 0 and 1.
---@return number
function EntityTear:GetDeadEyeIntensity()
end

---Copies the tear and applies a black and white effect to it. This effect is the same one used by the Multidimensional Baby familiar.
---@return EntityTear newTear The newly created tear.
function EntityTear:MakeMultidimensionalCopy()
end

---Returns the tear halo sprite used by Godhead tears.
---@return Sprite
function EntityTear:GetTearHaloSprite()
end

---Returns the tear effect sprite used by tear variants like Fire Mind and Mysterious Liquid.
---@return Sprite
function EntityTear:GetTearEffectSprite()
end

---Returns the red aura sprite used by Dead Eye.
---@return Sprite
function EntityTear:GetDeadEyeSprite()
end

---@param force? boolean @default: `false`. If set to `true`, forces the tear to re-evaluate which scale animation it should be playing.
function EntityTear:ResetSpriteScale(force)
end

---Returns if the tear was created through the Multi Dimensional Baby effect.
---@return boolean
function EntityTear:IsMultidimensionalTouched()
end

---Returns if the tear was created through the Angelic Prism effect.
---@return boolean
function EntityTear:IsPrismTouched()
end

---Sets if the tear was created through the Multi Dimensional Baby effect.
---@param IsTouched boolean
function EntityTear:SetMultidimensionalTouched(IsTouched)
end

---Sets if the tear was created through the Angelic Prism effect.
---@param IsTouched boolean
function EntityTear:SetPrismTouched(IsTouched)
end

---Returns a table of Entity `Index` values
---@return integer[]
function EntityTear:GetHitList()
end

---Clears out the hit list, allowing the tear to hit the same enemy again
function EntityTear:ClearHitList()
end

---Fire a new tear that inherits many attributes from this tear (flags, damage, size, color, etc).
---
---This will also trigger the `MC_POST_FIRE_SPLIT_TEAR` callback. For custom effects, a string may be passed in place of the `SplitTearType`.
---@param pos Vector
---@param velocity Vector
---@param damageMult? number @default: `0.5`.
---@param sizeMult? number @default: `0.6`.
---@param variant? @default: `0`.
---@param splitTearType? SplitTearType|string @default: `SplitTearType.SPLIT_GENERIC`
---@return EntityTear
function EntityTear:FireSplitTear(pos, velocity, damageMult, sizeMult, variant, splitTearType)
end