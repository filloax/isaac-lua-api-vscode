---@class TemporaryEffects
local TemporaryEffects = {}

---@param CollectibleType CollectibleType
---@param AddCostume? boolean @default: `true`
---@param Count? integer @default: `1`
function TemporaryEffects:AddCollectibleEffect(CollectibleType, AddCostume, Count)
end

---@param NullId integer @ItemConfigNullItemID
---@param AddCostume? boolean @default: `true`
---@param Count? integer @default: `1`
function TemporaryEffects:AddNullEffect(NullId, AddCostume, Count)
end

---@param TrinketType TrinketType
---@param AddCostume? boolean @default: `true`
---@param Count? integer @default: `1`
function TemporaryEffects:AddTrinketEffect(TrinketType, AddCostume, Count)
end

function TemporaryEffects:ClearEffects()
end

---@param CollectibleType CollectibleType
---@return TemporaryEffect
function TemporaryEffects:GetCollectibleEffect(CollectibleType)
end

---@param CollectibleType CollectibleType
---@return integer
function TemporaryEffects:GetCollectibleEffectNum(CollectibleType)
end

---@return EffectList
function TemporaryEffects:GetEffectsList()
end

---@param NullId integer @ItemConfigNullItemID
---@return TemporaryEffect
function TemporaryEffects:GetNullEffect(NullId)
end

---@param NullId integer @ItemConfigNullItemID
---@return integer
function TemporaryEffects:GetNullEffectNum(NullId)
end

---@param TrinketType TrinketType
---@return TemporaryEffect
function TemporaryEffects:GetTrinketEffect(TrinketType)
end

---@param TrinketType TrinketType
---@return integer
function TemporaryEffects:GetTrinketEffectNum(TrinketType)
end

---@param CollectibleType CollectibleType
---@return boolean
function TemporaryEffects:HasCollectibleEffect(CollectibleType)
end

---@param NullId integer @ItemConfigNullItemID
---@return boolean
function TemporaryEffects:HasNullEffect(NullId)
end

---@param TrinketType TrinketType
---@return boolean
function TemporaryEffects:HasTrinketEffect(TrinketType)
end

---@param CollectibleType CollectibleType
---@param Count? integer @default: `1`. Setting this to -1 removes all instances of the effect
function TemporaryEffects:RemoveCollectibleEffect(CollectibleType, Count)
end

---@param NullId integer @ItemConfigNullItemID
---@param Count? integer @default: `1`. Setting this to -1 removes all instances of the effect
function TemporaryEffects:RemoveNullEffect(NullId, Count)
end

---@param TrinketType TrinketType
---@param Count? integer @default: `1`. Setting this to -1 removes all instances of the effect
function TemporaryEffects:RemoveTrinketEffect(TrinketType, Count)
end
