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