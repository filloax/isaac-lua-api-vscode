---@return integer[]
function EntityKnife:GetHitList()
end

---Returns `true` if the knife is being swung.
---@return boolean
function EntityKnife:GetIsSwinging()
end

---Sets if the knife is being swung
---@param bool boolean
function EntityKnife:SetIsSwinging(bool)
end

---Returns `true` if the using the Spirit Sword spin attack.
---@return boolean
function EntityKnife:GetIsSpinAttack()
end

---Sets if the Spirit Sword is doing its spin attack.
---@param bool boolean
function EntityKnife:SetIsSpinAttack(bool)
end

---Returns if the knife was created through the Multi Dimensional Baby effect.
---@return boolean
function EntityKnife:IsMultidimensionalTouched()
end

---Returns if the knife was created through the Angelic Prism effect.
---@return boolean
function EntityKnife:IsPrismTouched()
end

---Sets if the knife was created through the Multi Dimensional Baby effect.
---@param IsTouched boolean
function EntityKnife:SetMultidimensionalTouched(IsTouched)
end

---Sets if the knife was created through the Angelic Prism effect.
---@param IsTouched boolean
function EntityKnife:SetPrismTouched(IsTouched)
end

---Fire a new tear that inherits many attributes from this knife (flags, damage, size, color, etc).
---
---This will also trigger the `MC_POST_FIRE_SPLIT_TEAR` callback. For custom effects, a string may be passed in place of the `SplitTearType`.
---@param pos Vector
---@param velocity Vector
---@param damageMult? number @default: `0.5`.
---@param sizeMult? number @default: `0.6`.
---@param variant? @default: `0`.
---@param splitTearType? SplitTearType|string @default: `SplitTearType.SPLIT_GENERIC`
---@return EntityTear
function EntityKnife:FireSplitTear(pos, velocity, damageMult, sizeMult, variant, splitTearType)
end