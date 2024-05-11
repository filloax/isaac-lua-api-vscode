---@class CppList
---@field Size integer
local CppList = {}

-- missing metamethod len as not supported for now

---@param idx integer
---@return any
function CppList:Get(idx)
end

---@class CppList_RoomDescriptor : CppList
local CppList_RoomDescriptor = {}

---@param idx integer
---@return RoomDescriptor
function CppList_RoomDescriptor:Get(idx)
end

---@class CppList_RoomConfigSpawn : CppList
local CppList_RoomConfigSpawn = {}

---@param idx integer
---@return RoomConfig_Spawn
function CppList_RoomConfigSpawn:Get(idx)
end

---@class CppList_RoomConfigEntries : CppList
local CppList_RoomConfigEntries = {}

---@param idx integer
---@return userdata
function CppList_RoomConfigEntries:Get(idx)
end

---@class EntityList : CppList
local EntityList = {}

---@param idx integer
---@return Entity
function EntityList:Get(idx)
end

---@class CardConfigList : CppList
local CardConfigList = {}

---@param idx integer
---@return ItemConfigCard
function CardConfigList:Get(idx)
end

---@class CostumeConfigList : CppList
local CostumeConfigList = {}

---@param idx integer
---@return ItemConfigCostume
function CostumeConfigList:Get(idx)
end

---@class EffectList : CppList
local EffectList = {}

---@param idx integer
---@return TemporaryEffect
function EffectList:Get(idx)
end

---@class ItemConfigList : CppList
local ItemConfigList = {}

---@param idx integer
---@return ItemConfigItem
function ItemConfigList:Get(idx)
end

---@class PillConfigList : CppList
local PillConfigList = {}

---@param idx integer
---@return ItemConfigPillEffect
function PillConfigList:Get(idx)
end

---@class VectorList : CppList
local VectorList = {}

---@param idx integer
---@return Vector
function VectorList:Get(idx)
end

---@class CppList_intValues : CppList
local CppList_intValues = {}
