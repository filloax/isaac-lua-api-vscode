---@class RoomDescriptor
---Allows you to check which level grid index each DoorSlot in the room connects to.
---
---For example, roomdesc.Doors[DoorSlot.UP0] provides the level grid index that the upwards door would connect to.
---
---The value will be -1 if the RoomShape does not allow a door in that slot.
---
---Note that this typically provides a valid index even if there is no door present, and even if the room itself does not allow a door in that slot.
---@field Doors {[DoorSlot]: integer}
---Returns a bitmask corresponding to which door slots are currently enabled.
---
---Doors are typically only included in this bitmask when there is a door currently present, even if the room would allow a door in that slot.
---@field AllowedDoors integer
---@field BossDeathSeed integer
local RoomDescriptor_RGON = {}

-- Note: in current emmylua, defining class twice to add fields to it is valid, as done above

---@param gridIndex integer
function RoomDescriptor_RGON:AddRestrictedGridIndex(gridIndex) end

---@return GridEntitiesSaveStateVector
function RoomDescriptor_RGON:GetGridEntitiesSaveState(gridIndex) end

---@return EntitiesSaveStateVector
function RoomDescriptor_RGON:GetEntitiesSaveState() end

---@return integer[]
function RoomDescriptor_RGON:GetRestrictedGridIndexes() end

---@param rng RNG
function RoomDescriptor_RGON:InitSeeds(rng)
end

---@return Dimension
function RoomDescriptor_RGON:GetDimension()
end

---@return {[DoorSlot]: RoomDescriptor}
function RoomDescriptor_RGON:GetNeighboringRooms()
end

---Prevents coin spawn from killed enemies on room reenter when counter reaches 10.
function RoomDescriptor_RGON:GetTaintedKeeperCoinSpawns()
end

---@param numSpawns integer
function RoomDescriptor_RGON:SetTaintedKeeperCoinSpawns(numSpawns)
end

---The trinket to be copied by the Error trinket.
---@return TrinketType
function RoomDescriptor_RGON:GetErrorTrinketEffect()
end

---Group is only used by effects that need to randomly select a room to warp to (e.g. Teleport, Gold Pill Teleport, etc.). A room can only be selected if its group is either `RoomGroup.GROUP_NONE` or matches the current room's group.
---
---By default, all rooms use `RoomGroup.GROUP_NONE`. The only exception is Ultra Secret Rooms, which are assigned a different group by the game during level generation.
---@return RoomGroup | integer
function RoomDescriptor_RGON:GetGroup()
end

---**It is suggested to use CreateGroup instead of setting an arbitrary group.**
---
---Group is only used by effects that need to randomly select a room to warp to (e.g. Teleport, Gold Pill Teleport, etc.). A room can only be selected if its group is either `RoomGroup.GROUP_NONE` or matches the current room's group.
---
---By default, all rooms use `RoomGroup.GROUP_NONE`. The only exception is Ultra Secret Rooms, which are assigned a different group by the game during level generation.
---@param group RoomGroup | integer
function RoomDescriptor_RGON:SetGroup(group)
end

---Creates a new unique group id for `SetGroup`.
---
---**The function will error if a group with the specified name already exists.**
---@param groupName string
---@return integer
function _G.RoomDescriptor.CreateGroup(groupName)
end

---Returns the group id tied to the specified name.
---@param groupName string
---@return integer? @Returns `nil` if the name has not been registered.
function _G.RoomDescriptor.GetGroupByName(groupName)
end