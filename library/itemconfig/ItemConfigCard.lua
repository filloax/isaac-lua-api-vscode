---@meta

---@class ItemConfigCard
---@field AchievementID integer
---@field Description string
---@field GreedModeAllowed boolean
---@field HudAnim string
---@field ID integer
---@field Name string
---@field PickupSubtype integer
---@field CardType integer @Accepts any value from the ItemConfig.CARDTYPE_* enum
---@field AnnouncerVoice integer @Accepts any value from the SoundEffect.SOUND_* enum
---@field AnnouncerDelay integer
---@field MimicCharge integer
local ItemConfigCard = {}

---@return boolean
function ItemConfigCard:IsCard()
end

---@return boolean
function ItemConfigCard:IsRune()
end

---@return boolean
function ItemConfigCard:IsAvailable()
end


---@class ItemConfigCard
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


