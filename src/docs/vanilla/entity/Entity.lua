---@class Entity
---@field Child Entity
---@field CollisionDamage number
---@field DepthOffset number
---@field DropSeed integer
---@field EntityCollisionClass EntityCollisionClass
---@field FlipX boolean
---@field FrameCount integer
---@field Friction number
---@field GridCollisionClass EntityGridCollisionClass
---@field HitPoints number
---@field Index integer
---@field InitSeed integer
---@field Mass number
---@field MaxHitPoints number
---@field Parent Entity
---@field Position Vector
---@field PositionOffset Vector
---@field RenderZOffset integer
---@field Size number
---@field SizeMulti Vector
---@field SpawnerEntity Entity?
---@field SpawnerType EntityType
---@field SpawnerVariant integer
---@field SpawnGridIndex integer
---@field Color Color
---@field SortingLayer SortingLayer # Affects render priority, see enum
---@field SplatColor Color
---@field SpriteOffset Vector
---@field SpriteRotation number
---@field SpriteScale Vector
---@field SubType integer
---@field Target Entity
---@field TargetPosition Vector
---@field Type EntityType
---@field Variant integer
---@field Velocity Vector
---@field Visible boolean
local Entity = {}

---@param Source EntityRef
---@param Duration integer
---@param Damage number
function Entity:AddBurn(Source, Duration, Damage)
end

---@param sourceEntity EntityRef
---@param Duration integer
function Entity:AddCharmed(sourceEntity, Duration)
end

---@param Source EntityRef
---@param Duration integer
---@param IgnoreBosses? boolean @default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddConfusion(Source, Duration, IgnoreBosses)
end

---@param Flags EntityFlag
function Entity:AddEntityFlags(Flags)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddFear(Source, Duration)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddFreeze(Source, Duration)
end

---@param HitPoints number
function Entity:AddHealth(HitPoints)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddMidasFreeze(Source, Duration)
end

---@param Source EntityRef
---@param Duration integer
---@param Damage number
function Entity:AddPoison(Source, Duration, Damage)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddShrink(Source, Duration)
end

---@param Source EntityRef
---@param Duration integer
---@param SlowValue number
---@param SlowColor Color
function Entity:AddSlowing(Source, Duration, SlowValue, SlowColor)
end

---@param Velocity Vector
function Entity:AddVelocity(Velocity)
end

function Entity:BloodExplode()
end

---@return boolean
function Entity:CanShutDoors()
end

---@param Flags EntityFlag
function Entity:ClearEntityFlags(Flags)
end

---@return boolean
function Entity:CollidesWithGrid()
end

function Entity:Die()
end

---@return boolean
function Entity:Exists()
end

---@return integer
function Entity:GetBossID()
end

---@return Color
function Entity:GetColor()
end

---@return table
function Entity:GetData()
end

---@return RNG
function Entity:GetDropRNG()
end

---@return EntityFlag
function Entity:GetEntityFlags()
end

---@return Entity
function Entity:GetLastChild()
end

---@return Entity
function Entity:GetLastParent()
end

---@return Sprite
function Entity:GetSprite()
end

---@param Other Entity
---@return boolean
function Entity:HasCommonParentWithEntity(Other)
end

---@param Flags EntityFlag
---@return boolean
function Entity:HasEntityFlags(Flags)
end

---@return boolean
function Entity:HasFullHealth()
end

---@return boolean
function Entity:HasMortalDamage()
end

---@param includeDead? boolean
---@return boolean
function Entity:IsActiveEnemy(includeDead)
end

---@return boolean
function Entity:IsBoss()
end

---@return boolean
function Entity:IsDead()
end

---@return boolean
function Entity:IsEnemy()
end

---@return boolean
function Entity:IsFlying()
end

---@param Frame integer
---@param Offset integer
---@return boolean
function Entity:IsFrame(Frame, Offset)
end

---@return boolean
function Entity:IsInvincible()
end

---@return boolean
function Entity:IsVisible()
end

---@return boolean
function Entity:IsVulnerableEnemy()
end

function Entity:Kill()
end

---@param Value number
function Entity:MultiplyFriction(Value)
end

function Entity:PostRender()
end

function Entity:Remove()
end

function Entity:RemoveStatusEffects()
end

---@param Offset Vector
function Entity:Render(Offset)
end

---@param Offset Vector
---@return boolean
function Entity:RenderShadowLayer(Offset)
end

---@param Color Color
---@param Duration integer
---@param Priority integer
---@param Fadeout boolean
---@param Share boolean
function Entity:SetColor(Color, Duration, Priority, Fadeout, Share)
end

---@param Size number
---@param SizeMulti Vector
---@param NumGridCollisionPoints integer
function Entity:SetSize(Size, SizeMulti, NumGridCollisionPoints)
end

---@param AnimationName string
---@param FrameNum integer
function Entity:SetSpriteFrame(AnimationName, FrameNum)
end

---@param AnimationName string
---@param FrameNum integer
function Entity:SetSpriteOverlayFrame(AnimationName, FrameNum)
end

---@param Damage number
---@param Flags integer
---@param Source EntityRef
---@param DamageCountdown integer
---@return boolean
function Entity:TakeDamage(Damage, Flags, Source, DamageCountdown)
end

---Used to cast an `Entity` object to an `EntityBomb` object.
---@return EntityBomb? --`nil` if conversion is not successful.
function Entity:ToBomb()
end

---Used to cast an `Entity` object to an `EntityEffect` object.
---@return EntityEffect? --`nil` if conversion is not successful.
function Entity:ToEffect()
end

---Used to cast an `Entity` object to an `EntityFamiliar` object.
---@return EntityFamiliar? --`nil` if conversion is not successful.
function Entity:ToFamiliar()
end

---Used to cast an `Entity` object to an `EntityKnife` object.
---@return EntityKnife? --`nil` if conversion is not successful.
function Entity:ToKnife()
end

---Used to cast an `Entity` object to an `EntityLaser` object.
---@return EntityLaser? --`nil` if conversion is not successful.
function Entity:ToLaser()
end

---Used to cast an `Entity` object to an `EntityNPC` object.
---@return EntityNPC? --`nil` if conversion is not successful.
function Entity:ToNPC()
end

---Used to cast an `Entity` object to an `EntityPickup` object.
---@return EntityPickup? --`nil` if conversion is not successful.
function Entity:ToPickup()
end

---Used to cast an `Entity` object to an `EntityPlayer` object.
---@return EntityPlayer? --`nil` if conversion is not successful.
function Entity:ToPlayer()
end

---Used to cast an `Entity` object to an `EntityProjectile` object.
---@return EntityProjectile? --`nil` if conversion is not successful.
function Entity:ToProjectile()
end

---Used to cast an `Entity` object to an `EntityTear` object.
---@return EntityTear? --`nil` if conversion is not successful.
function Entity:ToTear()
end

function Entity:Update()
end