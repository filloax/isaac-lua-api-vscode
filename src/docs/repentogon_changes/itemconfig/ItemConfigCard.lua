---@class ItemConfigClass
---@field ModdedCardFront Sprite
---@field Hidden boolean
---@field InitialWeight number
---@field Weight number @Can be modified

---@return function
function ItemConfigCard:GetAvailabilityCondition()
end

---@param func function
function ItemConfigCard:SetAvailabilityCondition(func)
end

function ItemConfigCard:ClearAvailabilityCondition()
end
