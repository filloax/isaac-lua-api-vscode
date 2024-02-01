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
_G.EntityNPC = {}

---@param HorizontalAnim string
---@param VerticalAnim string
---@param SpeedThreshold number
function EntityNPC:AnimWalkFrame(HorizontalAnim, VerticalAnim, SpeedThreshold)
end

---@param DistanceLimit number
---@return Vector
function EntityNPC:CalcTargetPosition(DistanceLimit)
end

---@param Velocity Vector
---@return boolean
function EntityNPC:CanBeDamagedFromVelocity(Velocity)
end

---@return boolean
function EntityNPC:CanReroll()
end

---@param NumProjectiles integer
---@param TargetPos Vector
---@param TrajectoryModifier number
---@param Params ProjectileParams
---@return EntityProjectile
function EntityNPC:FireBossProjectiles(NumProjectiles, TargetPos, TrajectoryModifier, Params)
end

---@param Pos Vector
---@param Velocity Vector
---@param Mode integer @ProjectilesMode
---@param Params ProjectileParams
function EntityNPC:FireProjectiles(Pos, Velocity, Mode, Params)
end

---@return integer
function EntityNPC:GetAliveEnemyCount()
end

---@return integer
function EntityNPC:GetBossColorIdx()
end

---@return integer
function EntityNPC:GetChampionColorIdx()
end

---@return Entity
function EntityNPC:GetPlayerTarget()
end

---@return boolean
function EntityNPC:IsBoss()
end

---@return boolean
function EntityNPC:IsChampion()
end

function EntityNPC:KillUnique()
end

---@param Seed integer
---@param ChampionColorIdx? ChampionColor @default: `-1`
---@param Init? boolean @default: `false`
function EntityNPC:MakeChampion(Seed, ChampionColorIdx, Init)
end

---@param Size number
---@return EntityEffect
function EntityNPC:MakeSplat(Size)
end

---@param type EntityType
---@param Variant integer
---@param SubType integer
---@param ChampionColorIdx integer
---@return boolean
function EntityNPC:Morph(type, Variant, SubType, ChampionColorIdx)
end


---@param GroupIdx integer
---@return EntityList
function EntityNPC:QueryNPCsGroup(GroupIdx)
end

---@param SpawnerType EntityType
---@param Type EntityType
---@param OnlyEnemies boolean
---@return EntityList
function EntityNPC:QueryNPCsSpawnerType(SpawnerType, Type, OnlyEnemies)
end

---@param Type EntityType
---@param Variant integer
---@return EntityList
function EntityNPC:QueryNPCsType(Type, Variant)
end

function EntityNPC:ResetPathFinderTarget()
end

---@param Position Vector
---@param Spawner? Entity
---@param TargetPos Vector
---@param Big boolean
---@param YOffset number
---@return EntityNPC
function EntityNPC.ThrowSpider(Position, Spawner, TargetPos, Big, YOffset)
end
