---@class GridEntity
---@field CollisionClass GridCollisionClass
---@field Desc GridEntityDesc
---@field Position Vector @const
---@field State integer
---@field VarData integer
local GridEntity = {}

---@param Immediate? boolean
---@return boolean
function GridEntity:Destroy(Immediate)
end

---**[Repentance+ Only]**
---@param Immediate? boolean
---@param source? EntityRef
---@return boolean
function GridEntity:DestroyWithSource(Immediate, source)
end

---@return integer
function GridEntity:GetGridIndex()
end

--This RNG is initialized with the same seed for all grid entities in the whole run. Instead, it's advised to create a custom data structure or use either the SpawnSeed or VariableSeed fields from the GridEntityDesc object (GridEntity:GetSaveState()).
---@return RNG
function GridEntity:GetRNG()
end

---@return GridEntityDesc
function GridEntity:GetSaveState()
end

---@return Sprite
function GridEntity:GetSprite()
end

---@return GridEntityType
function GridEntity:GetType()
end

---@return integer
function GridEntity:GetVariant()
end

---@param Damage integer
---@return boolean
function GridEntity:Hurt(Damage)
end

---**[Repentance+ Only]**
---@param Damage integer
---@param source EntityRef
---@return boolean
function GridEntity:HurtWithSource(Damage, source)
end

---@param Seed integer
function GridEntity:Init(Seed)
end

function GridEntity:PostInit()
end

---@param Offset Vector
function GridEntity:Render(Offset)
end

---@param Type GridEntityType
function GridEntity:SetType(Type)
end

---@param Variant integer
function GridEntity:SetVariant(Variant)
end

---@return GridEntityDoor
function GridEntity:ToDoor()
end

---@return GridEntityPit
function GridEntity:ToPit()
end

---@return GridEntityPoop
function GridEntity:ToPoop()
end

---@return GridEntityPressurePlate
function GridEntity:ToPressurePlate()
end

---@return GridEntityRock
function GridEntity:ToRock()
end

---@return GridEntitySpikes
function GridEntity:ToSpikes()
end

---@return GridEntityTNT
function GridEntity:ToTNT()
end

function GridEntity:Update()
end
