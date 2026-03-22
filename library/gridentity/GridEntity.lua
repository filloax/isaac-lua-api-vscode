---@meta

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


---@return integer
function GridEntity:GetAltRockType()
end

---@return Vector
function GridEntity:GetRenderPosition()
end

---TODO: Document me!
---@param entity Entity
---@param damage integer
---@param damageFlags DamageFlag
---@param unknown number TODO: Document me!
---@param unknown2 boolean TODO: Document me!
function GridEntity:HurtDamage(entity, damage, damageFlags, unknown, unknown2)
end

---TODO: Document me!
---@param damage integer
---@param damageFlags DamageFlag
---@param unknown number TODO: Document me!
---@param unknown2 boolean TODO: Document me!
function GridEntity:HurtSurroundings(damage, damageFlags, unknown, unknown2)
end

---Returns true if the rock can be broken.
---@return boolean
function GridEntity:IsBreakableRock()
end

---TODO: Document me!
---@param gridType GridEntityType
---@param backdropType BackdropType
function GridEntity:PlayBreakSound(gridType, backdropType)
end

---TODO: Document me!
---@param gridType GridEntityType
function GridEntity:RegisterRockDestroyed(gridType)
end

---TODO: Document me!
---@param offset Vector
function GridEntity:RenderTop(offset)
end

---Used to cast a `GridEntity` object to a `GridEntityDecoration` object.
---@return GridEntityDecoration? `nil` is conversion is not successful
function GridEntity:ToDecoration()
end

---Used to cast a `GridEntity` object to a `GridEntityFire` object.
---@return GridEntityFire? `nil` is conversion is not successful
function GridEntity:ToFire()
end

---Used to cast a `GridEntity` object to a `GridEntityGravity` object.
---@return GridEntityGravity? `nil` is conversion is not successful
function GridEntity:ToGravity()
end

---Used to cast a `GridEntity` object to a `GridEntityLock` object.
---@return GridEntityLock? `nil` is conversion is not successful
function GridEntity:ToLock()
end

---Used to cast a `GridEntity` object to a `GridEntityStairs` object.
---@return GridEntityStairs? `nil` is conversion is not successful
function GridEntity:ToStairs()
end

---Used to cast a `GridEntity` object to a `GridEntityStatue` object.
---@return GridEntityStatue? `nil` is conversion is not successful
function GridEntity:ToStatue()
end

---Used to cast a `GridEntity` object to a `GridEntityTeleporter` object.
---@return GridEntityTeleporter? `nil` is conversion is not successful
function GridEntity:ToTeleporter()
end

---Used to cast a `GridEntity` object to a `GridEntityTrapDoor` object.
---@return GridEntityTrapDoor? `nil` is conversion is not successful
function GridEntity:ToTrapDoor()
end

---Used to cast a `GridEntity` object to a `GridEntityWall` object.
---@return GridEntityWall? `nil` is conversion is not successful
function GridEntity:ToWall()
end

---Used to cast a `GridEntity` object to a `GridEntityWeb` object.
---@return GridEntityWeb? `nil` is conversion is not successful
function GridEntity:ToWeb()
end

---TODO: Document me!
function GridEntity:TrySpawnLadder()
end

---TODO: Document me!
function GridEntity:TrySpawnWorms()
end

function GridEntity:UpdateCollision()
end

---Updates the GridEntity's neighbors.
function GridEntity:UpdateNeighbors()
end

---@return WaterClipFlag
function GridEntity:GetWaterClipFlags()
end

---@param flags WaterClipFlag
function GridEntity:SetWaterClipFlags(flags)
end

function GridEntity:ResetWaterClipFlags()
end


