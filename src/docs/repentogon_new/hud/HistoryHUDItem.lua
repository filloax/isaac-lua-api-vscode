---@class HistoryHUDItem
local HistoryHUDItem = {}

---@return HistoryItem
function HistoryHUDItem:GetHistoryItem()
end

---@return Vector
function HistoryHUDItem:GetRenderOffset()
end

---@return CollectibleType | TrinketType
function HistoryHUDItem:GetItemID()
end

---@return boolean
function HistoryHUDItem:IsVisible()
end

---@return integer
function HistoryHUDItem:GetTime()
end

---@return boolean
function HistoryHUDItem:IsTrinket()
end
