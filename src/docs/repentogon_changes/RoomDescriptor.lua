---@class RoomDescriptor
---@field Doors userdata @RoomDescriptorDoors
---@field AllowedDoors integer
---@field BossDeathSeed integer
local RoomDescriptor_RGON = {}

-- Note: in current emmylua, defining class twice to add fields to it is valid, as done above

---TODO: Document me!
---@param gridIndex integer
function RoomDescriptor_RGON:AddRestrictedGridIndex(gridIndex) end

---TODO: Document me!
---@return EntitiesSaveStateVector
function RoomDescriptor_RGON:GetGridEntitiesSaveState(gridIndex) end

---TODO: Document me!
---@return EntitiesSaveStateVector
function RoomDescriptor_RGON:GetEntitiesSaveState() end

---TODO: Document me!
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