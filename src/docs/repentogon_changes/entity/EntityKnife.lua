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

---Returns if the tear was created through the Multi Dimensional Baby effect.
---@return boolean
function EntityKnife:IsMultidimensionalTouched()
end

---Returns if the tear was created through the Angelic Prism effect.
---@return boolean
function EntityKnife:IsPrismTouched()
end

---Sets if the tear was created through the Multi Dimensional Baby effect.
---@param IsTouched boolean
function EntityKnife:SetMultidimensionalTouched(IsTouched)
end

---Sets if the tear was created through the Angelic Prism effect.
---@param IsTouched boolean
function EntityKnife:SetPrimsTouched(IsTouched)
end