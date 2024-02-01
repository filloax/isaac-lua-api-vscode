---@return Color
function EntityFamiliar:GetDirtColor()
end

---@return FollowerPriority
function EntityFamiliar:GetFollowerPriority()
end

---@return PathFinder
function EntityFamiliar:GetPathFinder()
end

---Returns `nil` for familiars that don't mimic the player's attacks 
---(Incubus, etc).
---@return Weapon?
function EntityFamiliar:GetWeapon()
end

---Triggers effects on the familiar as if a room was cleared and incrementing `.RoomClearCount` (i.e. Sack of pennies dropping a coin).
function EntityFamiliar:TriggerRoomClear()
end

---@param aimDirection Vector 
---@param direction Direction
---@return Vector?
function EntityFamiliar:TryAimAtMarkedTarget(aimDirection, direction)
end

function EntityFamiliar:UpdateDirtColor()
end