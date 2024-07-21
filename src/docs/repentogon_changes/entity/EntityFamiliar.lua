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

function EntityFamiliar:RemoveFromPlayer()
end

---@return boolean
function EntityFamiliar:CanBlockProjectiles()
end

---@return boolean
function EntityFamiliar:CanBeDamagedByProjectiles()
end

---@return boolean
function EntityFamiliar:CanBeDamagedByEnemies()
end

---@return boolean
function EntityFamiliar:CanBeDamagedByLasers()
end

---Returns the amount in frames that the familiar's movements are delayed from the player's. 30 frames = 1 second.
function EntityFamiliar:GetMoveDelayNum()
end

---Sets the amount in frames that the familiar's movements are delayed from the player's. 30 frames = 1 second.
---@param delay integer
function EntityFamiliar:SetMoveDelayNum(delay)
end

---@return ItemConfigItem
function EntityFamiliar:GetItemConfig()
end