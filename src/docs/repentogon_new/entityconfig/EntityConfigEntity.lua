---@class EntityConfigEntity
local EntityConfigEntity = {}

---Returns true if the entity can be a champion.
---@return boolean
function EntityConfigEntity:CanBeChampion()
end

---Returns true if the entity can be rerolled.
---@return boolean
function EntityConfigEntity:CanBeRerolledInto()
end

---Returns true if the entity can shut doors while active.
---@return boolean
function EntityConfigEntity:CanShutDoors()
end

---Returns the path of the entity's .anm2 file.
---@return string
function EntityConfigEntity:GetAnm2Path()
end

---Returns the entity's base hp.
---@return number
function EntityConfigEntity:GetBaseHP()
end

---Returns the name of the entity's bestiary entry animation.
---@return string
function EntityConfigEntity:GetBestiaryAnimation()
end

---Returns the path of the entity's .anm2 file used for the bestiary.
---@return string
function EntityConfigEntity:GetBestiaryAnm2Path()
end

---TODO: Document me!
---@return string
function EntityConfigEntity:GetBestiaryFloorAlt()
end

---Returns a readonly vector of the entity's bestiary sprite offset.
---@return Vector
function EntityConfigEntity:GetBestiaryOffset()
end

---Returns the name of the entity's bestiary overlay animation.
---@return string
function EntityConfigEntity:GetBestiaryOverlay()
end

---Returns the entity's scale in the bestiary.
---@return number
function EntityConfigEntity:GetBestiaryScale()
end

---Returns the entity's BossID.
---@return BossType
function EntityConfigEntity:GetBossID()
end

---Returns the entity's collision damage.
---@return number
function EntityConfigEntity:GetCollisionDamage()
end

---Returns the entity's collision interval.
---@return integer
function EntityConfigEntity:GetCollisionInterval()
end

---Returns the entity's collision radius.
---@return number
function EntityConfigEntity:GetCollisionRadius()
end

---Returns a readonly vector of the entity's collision radius multiplier.
---@return Vector
function EntityConfigEntity:GetCollisionRadiusMultiplier()
end

---Returns the bitmask of the entity's EntityTags.
---@return integer
function EntityConfigEntity:GetEntityTags()
end

---Returns the entity's friction.
---@return number
function EntityConfigEntity:GetFriction()
end

---Returns the bitmask of the entity's GibFlags
---@return integer
function EntityConfigEntity:GetGibFlags()
end

---Returns the amount of gibs the entity spawns upon death.
---@return NullItemID
function EntityConfigEntity:GetGibsAmount()
end

---Returns the entity's grid collision points.
---@return integer
function EntityConfigEntity:GetGridCollisionPoints()
end

---Returns the entity's mass.
---@return number
function EntityConfigEntity:GetMass()
end

---Returns the name of the mod the entity is from. If the entity is not from a mod, `nil` is returned instead.
---@return string? 
function EntityConfigEntity:GetModName()
end

---Returns the entity's name.
---@return string
function EntityConfigEntity:GetName()
end

---Returns the entity's portrait id.
---@return integer
function EntityConfigEntity:GetPortraitID()
end

---Returns the entity's shadow size. Note that this is the value of the `shadowSize` attribute in `entities2.xml` divided by 100.
---@return number
function EntityConfigEntity:GetShadowSize()
end

---Returns the entity's shield strength.
---@return number
function EntityConfigEntity:GetShieldStrength()
end

---Returns the entity's stage hp.
---@return number
function EntityConfigEntity:GetStageHP()
end

---Returns the entity's type.
---@return integer
function EntityConfigEntity:GetType()
end

---Returns the entity's variant.
---@return integer
function EntityConfigEntity:GetVariant()
end

---Returns true if the entity has the all of the EntityTags in the provided bitset.
---@param tags integer
---@return boolean
function EntityConfigEntity:HasEntityTags(tags)
end

---Returns true if the entity has all of the GibFlags in the provided bitset.
---@param flags integer
---@return boolean
function EntityConfigEntity:HasGibFlags(flags)
end

---Returns true if the entity is a boss.
---@return boolean
function EntityConfigEntity:IsBoss()
end
