---@class GridEntityDoor : GridEntity
---@field Busted boolean
---@field CloseAnimation string
---@field CurrentRoomType RoomType
---@field Direction Direction
---@field ExtraSprite Sprite
---@field ExtraVisible boolean
---@field LockedAnimation string
---@field OpenAnimation string
---@field OpenLockedAnimation string
---@field PreviousState integer
---@field PreviousVariant integer
---@field Slot DoorSlot
---@field TargetRoomIndex integer
---@field TargetRoomType RoomType
local GridEntityDoor = {}

function GridEntityDoor:Bar()
end

---@return boolean
function GridEntityDoor:CanBlowOpen()
end

---@param Force? boolean
function GridEntityDoor:Close(Force)
end

---@return Vector
function GridEntityDoor:GetSpriteOffset()
end

---@return boolean
function GridEntityDoor:IsBusted()
end

---@return boolean
function GridEntityDoor:IsKeyFamiliarTarget()
end

---@return boolean
function GridEntityDoor:IsLocked()
end

---@return boolean
function GridEntityDoor:IsOpen()
end

---@param Type RoomType
---@return boolean
function GridEntityDoor:IsRoomType(Type)
end

---@return boolean
function GridEntityDoor:IsTargetRoomArcade()
end

function GridEntityDoor:Open()
end

---@param Locked boolean
function GridEntityDoor:SetLocked(Locked)
end

---@param CurrentRoomType RoomType
---@param TargetRoomType RoomType
function GridEntityDoor:SetRoomTypes(CurrentRoomType, TargetRoomType)
end

function GridEntityDoor:SpawnDust()
end

---@param FromExplosion boolean
---@param source Entity
---@return boolean
function GridEntityDoor:TryBlowOpen(FromExplosion, source)
end

---@param player EntityPlayer
---@param Force? boolean
---@return boolean
function GridEntityDoor:TryUnlock(player, Force)
end

