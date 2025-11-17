---@class EntityNPC : Entity
---@field CanShutDoors boolean
---@field ChildNPC EntityNPC @const
---@field EntityRef Entity
---@field GroupIdx integer
---@field I1 integer
---@field I2 integer
---@field ParentNPC EntityNPC @const
---@field Pathfinder PathFinder
---@field ProjectileCooldown integer
---@field ProjectileDelay integer
---@field Scale number
---@field State integer
---@field StateFrame integer
---@field V1 Vector
---@field V2 Vector
local EntityNPC_Local = {}

_G.EntityNPC = {}

---@param HorizontalAnim string
---@param VerticalAnim string
---@param SpeedThreshold number
function EntityNPC_Local:AnimWalkFrame(HorizontalAnim, VerticalAnim, SpeedThreshold)
end

---@param DistanceLimit number
---@return Vector
function EntityNPC_Local:CalcTargetPosition(DistanceLimit)
end

---@param Velocity Vector
---@return boolean
function EntityNPC_Local:CanBeDamagedFromVelocity(Velocity)
end

---@return boolean
function EntityNPC_Local:CanReroll()
end

---@param NumProjectiles integer
---@param TargetPos Vector
---@param TrajectoryModifier number
---@param Params ProjectileParams
---@return EntityProjectile
function EntityNPC_Local:FireBossProjectiles(NumProjectiles, TargetPos, TrajectoryModifier, Params)
end

---@param Pos Vector
---@param Velocity Vector
---@param Mode integer @ProjectilesMode
---@param Params ProjectileParams
function EntityNPC_Local:FireProjectiles(Pos, Velocity, Mode, Params)
end

---@return integer
function EntityNPC_Local:GetAliveEnemyCount()
end

---@return integer
function EntityNPC_Local:GetBossColorIdx()
end

---@return integer
function EntityNPC_Local:GetChampionColorIdx()
end

---@return Entity
function EntityNPC_Local:GetPlayerTarget()
end

---@return boolean
function EntityNPC_Local:IsBoss()
end

---@return boolean
function EntityNPC_Local:IsChampion()
end

function EntityNPC_Local:KillUnique()
end

---@param Seed integer
---@param ChampionColorIdx? ChampionColor @default: `-1`
---@param Init? boolean @default: `false`
function EntityNPC_Local:MakeChampion(Seed, ChampionColorIdx, Init)
end

---@param Size number
---@return EntityEffect
function EntityNPC_Local:MakeSplat(Size)
end

---@param type EntityType
---@param Variant integer
---@param SubType integer
---@param ChampionColorIdx integer
---@return boolean
function EntityNPC_Local:Morph(type, Variant, SubType, ChampionColorIdx)
end

---@param GroupIdx integer
---@return EntityList
function EntityNPC_Local:QueryNPCsGroup(GroupIdx)
end

---@param SpawnerType EntityType
---@param Type EntityType
---@param OnlyEnemies boolean
---@return EntityList
function EntityNPC_Local:QueryNPCsSpawnerType(SpawnerType, Type, OnlyEnemies)
end

---@param Type EntityType
---@param Variant integer
---@return EntityList
function EntityNPC_Local:QueryNPCsType(Type, Variant)
end

function EntityNPC_Local:ResetPathFinderTarget()
end

---@param Position Vector
---@param Spawner? Entity
---@param TargetPos Vector
---@param Big boolean
---@param YOffset number
---@return EntityNPC
function _G.EntityNPC.ThrowSpider(Position, Spawner, TargetPos, Big, YOffset)
end
