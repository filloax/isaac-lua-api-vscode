---@class RoomDescriptorDoors

---@class RoomDescriptor
---Allows you to check which level grid index each DoorSlot in the room connects to.
---
---For example, roomdesc.Doors[DoorSlot.UP0] provides the level grid index that the upwards door would connect to.
---
---The value will be -1 if the RoomShape does not allow a door in that slot.
---
---Note that this typically provides a valid index even if there is no door present, and even if the room itself does not allow a door in that slot.
---@field Doors {[DoorSlot]: RoomDescriptorDoors}
---Returns a bitmask corresponding to which door slots are currently enabled.
---
---Doors are typically only included in this bitmask when there is a door currently present, even if the room would allow a door in that slot.
---@field AllowedDoors integer
---@field BossDeathSeed integer
local RoomDescriptor_RGON = {}

-- Note: in current emmylua, defining class twice to add fields to it is valid, as done above

---@param gridIndex integer
function RoomDescriptor_RGON:AddRestrictedGridIndex(gridIndex) end

---@return EntitiesSaveStateVector
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