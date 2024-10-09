---@class ItemConfigClass
---@field ModdedCardFront Sprite
---@field Hidden boolean
---@field InitialWeight number
---@field Weight number @Can be modified
local ItemConfigCard_RGON = {}

---@return function
function ItemConfigCard_RGON:GetAvailabilityCondition()
end

---@param func function
function ItemConfigCard_RGON:SetAvailabilityCondition(func)
end

function ItemConfigCard_RGON:ClearAvailabilityCondition()
end