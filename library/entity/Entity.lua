---@meta

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
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddBurn(Source, Duration, Damage, IgnoreBosses)
end

---@param sourceEntity EntityRef
---@param Duration integer
function Entity:AddCharmed(sourceEntity, Duration)
end

---@param Source EntityRef
---@param Duration integer
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddConfusion(Source, Duration, IgnoreBosses)
end

---@param Flags EntityFlag
function Entity:AddEntityFlags(Flags)
end

---@param Source EntityRef
---@param Duration integer
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddFear(Source, Duration, IgnoreBosses)
end

---@param Source EntityRef
---@param Duration integer
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddFreeze(Source, Duration, IgnoreBosses)
end

---@param HitPoints number
function Entity:AddHealth(HitPoints)
end

---@param Source EntityRef
---@param Duration integer
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddMidasFreeze(Source, Duration, IgnoreBosses)
end

---@param Source EntityRef
---@param Duration integer
---@param Damage number
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddPoison(Source, Duration, Damage, IgnoreBosses)
end

---@param Source EntityRef
---@param Duration integer
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddShrink(Source, Duration, IgnoreBosses)
end

---@param Source EntityRef
---@param Duration integer
---@param SlowValue number
---@param SlowColor Color
---@param IgnoreBosses? boolean @**[Repentance+ Only]** default: `false`. Set to `true` to bypass the boss' status effect cooldown
function Entity:AddSlowing(Source, Duration, SlowValue, SlowColor, IgnoreBosses)
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

---**[Repentance+ Only]**
---@param source EntityRef
function Entity:KillWithSource(source)
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
---@param Flags DamageFlag | integer
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

---@param source EntityRef
---@param duration integer
function Entity:AddBaited(source, duration)
end

---@param source EntityRef
---@param duration integer
function Entity:AddBleeding(source, duration)
end

---@param source EntityRef
---@param duration integer
function Entity:AddBrimstoneMark(source, duration)
end

---@param source EntityRef
---@param duration integer
function Entity:AddIce(source, duration)
end

---@param source EntityRef
---@param pushDirection Vector
---@param duration integer
---@param takeImpactDamage boolean
function Entity:AddKnockback(source, pushDirection, duration, takeImpactDamage)
end

---@param source EntityRef
---@param duration integer
function Entity:AddMagnetized(source, duration)
end

---@param source EntityRef
---@param duration integer
function Entity:AddWeakness(source, duration)
end

---@param initialLength integer
---@param source EntityRef
---@return integer
function Entity:ComputeStatusEffectDuration(initialLength, source)
end

---@param target? Entity @default: `nil`. If `nil`, this will recursively copy status effects to all Child Entities.
---@param overwrite? boolean @default: `false`. If `true`, removes all other status effects from `target`, and sets the properties of existing once to match the entity. default: false
function Entity:CopyStatusEffects(target, overwrite)
end

---@param entity Entity
---@param low boolean
---@return boolean
function Entity:ForceCollide(entity, low)
end

---@return integer
function Entity:GetBaitedCountdown()
end

---@return integer
function Entity:GetBleedingCountdown()
end

---@return integer
function Entity:GetBossStatusEffectCooldown()
end

---@return integer
function Entity:GetBrimstoneMarkCooldown()
end

---@return integer
function Entity:GetBurnCountdown()
end

---@return integer
function Entity:GetBurnDamageTimer()
end

---@return integer
function Entity:GetCharmedCountdown()
end

---@param vector? Vector @default: 'Vector.Zero'
---@return Capsule
function Entity:GetCollisionCapsule(vector)
end

---If the entity recently took damage with the DAMAGE_COUNTDOWN `DamageFlag`, 
---this returns how many more frames must pass before they can take damage with 
---the DAMAGE_COUNTDOWN `DamageFlag` again.
---
---Note that this is NOT the same as the player's invincibility frames 
---(`EntityPlayer:GetDamageCooldown()`). The DAMAGE_COUNTDOWN `DamageFlag` and
---this associated countdown are typically used to control how rapidly an enemy
---will take damage from the few sources that uses that flag, such as the the
---collision damage effects from the "My Little Unicorn", "The Nail", and "The 
---Gamekid".
---@return integer
function Entity:GetDamageCountdown()
end

---@param unknown boolean
---@return Shape
function Entity:GetDebugShape(unknown)
end

--- Returns the corresponding `EntityConfig` entry for this entity.
---@return EntityConfigEntity
function Entity:GetEntityConfigEntity()
end

---@return integer
function Entity:GetFearCountdown()
end

---@return integer
function Entity:GetFireDamageCooldown()
end

---@return integer
function Entity:GetFreezeCountdown()
end

---Returns the entity index that's used in entity hit lists.
---@return integer
function Entity:GetHitListIndex()
end

---@return integer
function Entity:GetIceCountdown()
end

---@return integer
function Entity:GetKnockbackCountdown()
end

---@return Vector
function Entity:GetKnockbackDirection()
end

---@return integer
function Entity:GetMagnetizedCountdown()
end

---@return integer
function Entity:GetMidasFreezeCountdown()
end

--- Returns the minecart the entity is riding.
---
--- If the entity is not riding a minecart, the function returns nil.
---@return EntityNPC?
function Entity:GetMinecart()
end

---@param nullLayerName string
---@return Capsule
function Entity:GetNullCapsule(nullLayerName)
end

--- Returns position of null layer mark. Alternatively returns `Vector.Zero` if the layer is not visible, has no frame available for the current animation, or for other unknown reasons.
---@param nullLayerName string
---@return Vector
function Entity:GetNullOffset(nullLayerName)
end

---@return integer
function Entity:GetPauseTime()
end

---@return integer
function Entity:GetPoisonDamageTimer()
end

--- Returns 2 values, both Vectors. 1st the Position of the entity, 2nd the Velocity of the entity.
---@return PosVel
function Entity:GetPosVel()
end

---The prediction is the target's current position plus their velocity
---multiplied by the distance between this and the target. `Delay` acts
---as a multiplier for how far ahead the prediction should be. For 
---example, `1.0` would predict where the target's velocity would place 
---them on the next update.
---@param target Entity
---@param strength integer
---@return Vector
function Entity:GetPredictedTargetPosition(target, strength)
end

---@return number
function Entity:GetShadowSize()
end

---@return integer
function Entity:GetShrinkCountdown()
end

---@return integer
function Entity:GetSlowingCountdown()
end

---@return number
function Entity:GetSpeedMultiplier()
end

---@return EntityType
function Entity:GetType()
end

---@return integer
function Entity:GetWeaknessCountdown()
end

---@param position Vector
---@param velocity Vector
---@return EntityNPC
function Entity:GiveMinecart(position, velocity)
end

---@param ref EntityRef
---@return boolean
function Entity:IgnoreEffectFromFriendly(ref)
end

---This function spawns two dust poof effects of subtypes 3 and 4;
---the second of which will be the the Child of the one returned.
---@param position Vector? @default: `self.Position`
---@param color Color? @default: `Color.Default`
---@param scale? number @default: `1.0`
function Entity:MakeBloodPoof(position, color, scale)
end

---This function spawns two dust poof effects of subtypes 1 and 2;
---the second of which will be the the Child of the one returned.
---@param position Vector? @default: `self.Position`
---@param color Color? @default: `Color.Default`
---@param scale? number @default: `1.0`
function Entity:MakeGroundPoof(position, color, scale)
end

---@param countdown integer
function Entity:SetBaitedCountdown(countdown)
end

---@param countdown integer
function Entity:SetBleedingCountdown(countdown)
end

---@param cooldown integer
function Entity:SetBossStatusEffectCooldown(cooldown)
end

---@param countdown integer
function Entity:SetBrimstoneMarkCountdown(countdown)
end

---@param countdown integer
function Entity:SetBurnCountdown(countdown)
end

---@param timer integer
function Entity:SetBurnDamageTimer(timer)
end

---@param countdown integer
function Entity:SetCharmedCountdown(countdown)
end

---Sets colors to be used alongside their parameters.
---@param params ColorParams[]
function Entity:SetColorParams(params)
end

---@param countdown integer
function Entity:SetConfusionCountdown(countdown)
end

---Sets how many frames must pass before the entity can take damage that has the DAMAGE_COUNTDOWN `DamageFlag`.
---
---Note that this is NOT the same as the player's invincibility frames (`EntityPlayer:GetDamageCooldown()`). The DAMAGE_COUNTDOWN `DamageFlag` and this associated countdown are typically used to control how rapidly an enemy will take damage from the few sources that uses that flag, such as the the collision damage effects from the "My Little Unicorn", "The Nail", and "The Gamekid".
---@param countdown integer
function Entity:SetDamageCountdown(countdown)
end

---@param isDead boolean
function Entity:SetDead(isDead)
end

---@param countdown integer
function Entity:SetFearCountdown(countdown)
end

---@param cooldown integer
function Entity:SetFireDamageCooldown(cooldown)
end

---@param countdown integer
function Entity:SetFreezeCountdown(countdown)
end

---@param countdown integer
function Entity:SetIceCountdown(countdown)
end

---@param isInvincible boolean
function Entity:SetInvincible(isInvincible)
end

---@param countdown integer
function Entity:SetKnockbackCountdown(countdown)
end

---@param direction Vector
function Entity:SetKnockbackDirection(direction)
end

---@param countdown integer
function Entity:SetMagnetizedCountdown(countdown)
end

---@param countdown integer
function Entity:SetMidasFreezeCountdown(countdown)
end

---@param duration integer
function Entity:SetPauseTime(duration)
end

---@param countdown integer
function Entity:SetPoisonCountdown(countdown)
end

---@param timer integer
function Entity:SetPoisonDamageTimer(timer)
end

---@param size number
function Entity:SetShadowSize(size)
end

---@param countdown integer
function Entity:SetShrinkCountdown(countdown)
end

---@param countdown integer
function Entity:SetSlowingCountdown(countdown)
end

---@param amount number
function Entity:SetSpeedMultiplier(amount)
end

---@param countdown integer
function Entity:SetWeaknessCountdown(countdown)
end

---@param subType? integer @default: `0`
---@param position? Vector @default: `self.Position`
---@param offset? Vector @default: `Vector.Zero`
---@param color? Color @default: `Color.Default`
---@param velocity? Vector @default: `Vector.Zero`
---@return EntityEffect
function Entity:SpawnBloodEffect(subType, position, offset, color, velocity)
end

---@param position Vector
---@param velocity Vector
---@param strength integer
function Entity:SpawnWaterImpactEffects(position, velocity, strength)
end

---Deprecated in favor of `Entity:SpawnWaterImpactEffects()`
---@deprecated
---@param position Vector
---@param velocity Vector
---@param strength integer
function Entity:SpawnGroundImpactEffects(position, velocity, strength)
end

function Entity:TeleportToRandomPosition()
end

---Used to cast an `Entity` object to an `EntityDelirium` object. 
---The conversion will only succeed if the source entity is an instance 
---of Delirium (in its normal form or in a transformed form).
---@return EntityDelirium? `nil` is conversion is not successful
function Entity:ToDelirium()
end

---Used to cast an `Entity` object to an `EntitySlot` object.
---@return EntitySlot? `nil` if conversion is not successful.
function Entity:ToSlot()
end

---@param source EntityRef
---@param throwDirection Vector
---@param force number
function Entity:TryThrow(source, throwDirection, force)
end

---@return WaterClipFlag
function Entity:GetWaterClipFlags()
end

---@param flags WaterClipFlag
function Entity:SetWaterClipFlags(flags)
end

function Entity:ResetWaterClipFlags()
end

---@return boolean
function Entity:CanDevolve()
end

