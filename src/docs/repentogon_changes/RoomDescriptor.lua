---@class RoomDescriptor
---@field Doors userdata @RoomDescriptorDoors
---@field AllowedDoors integer
local RoomDescriptor1 = {}

-- Note: in current emmylua, defining class twice to add fields to it is valid, as done above

---TODO: Document me!
---@param gridIndex integer
function RoomDescriptor1:AddRestrictedGridIndex(gridIndex) end

---TODO: Document me!
---@return EntitiesSaveStateVector
function RoomDescriptor1:GetGridEntitiesSaveState(gridIndex) end

---TODO: Document me!
---@return EntitiesSaveStateVector
function RoomDescriptor1:GetEntitiesSaveState() end

---TODO: Document me!
---@return integer[]
function RoomDescriptor1:GetRestrictedGridIndexes() end
