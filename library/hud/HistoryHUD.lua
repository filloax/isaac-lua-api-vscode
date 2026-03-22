---@meta

---@class HistoryHUD
local HistoryHUD = {}

---@alias playerHistoryHUDIndex
---| 0 #First player
---| 1 #First player twin

---Returns the base render position of the History HUD.
---@return Vector
function HistoryHUD:GetPosition()
end

---@return HistoryHUDItem[]
function HistoryHUD:GetItems()
end

---@param playerIndex playerHistoryHUDIndex
---@return EntityPlayer
function HistoryHUD:GetPlayer(playerIndex)
end

---@param playerIndex playerHistoryHUDIndex
---@return HistoryHUDItem[]
function HistoryHUD:GetCollectibles(playerIndex)
end

---Positions of the rendered collectibles.
---@param playerIndex playerHistoryHUDIndex
---@return Vector[]
function HistoryHUD:GetCollectibleOffsets(playerIndex)
end

---@param playerIndex playerHistoryHUDIndex
---@return HistoryHUDItem[]
function HistoryHUD:GetTrinkets(playerIndex)
end

---Positions of the rendered trinkets.
---@param playerIndex playerHistoryHUDIndex
function HistoryHUD:GetTrinketOffsets(playerIndex)
end


