---Same as `FireBossProjectiles`, but returns a table containing the list of
---spawned projectiles.
---@param NumProjectiles integer
---@param TargetPos Vector
---@param TrajectoryModifier number
---@param Params ProjectileParams
---@return EntityProjectile[]
function EntityNPC:FireBossProjectilesEx(NumProjectiles, TargetPos, TrajectoryModifier, Params)
end

---@param sprite Sprite
---@param desc GridEntityDesc
---@param velocity Vector
---@param backdrop BackdropType? @default: `BackdropType.BASEMENT`.
---@return EntityProjectile
function EntityNPC:FireGridEntity(sprite, desc, velocity, backdrop)
end

---Same as `FireProjectiles`, but returns a table containing the list of 
---spawned projectiles.
---@param Position Vector
---@param Velocity Vector
---@param Mode ProjectileMode
---@param Params ProjectileParams
---@return EntityProjectile[]
function EntityNPC:FireProjectilesEx(Position, Velocity, Mode, Params)
end

---Returns the ControllerId for the NPC, which indicates which player 
---is controlling it. Will return -1 when its not being controlled by 
---any player.
---@return integer
function EntityNPC:GetControllerId()
end

---Returns the dynamic dirt color of the entity. This lets entities like 
---Nightcrawler blend in to the environment.
---@return Color
function EntityNPC:GetDirtColor()
end

---@return integer[]
function EntityNPC:GetHitList()
end

---@return number
function EntityNPC:GetShieldStrength()
end

---@param ID SoundEffect
---@param Volume? number @default: `1`
---@param FrameDelay? integer @default: `2`
---@param Loop? boolean @default: `false`
---@param Pitch? number @default: `1`
function EntityNPC:PlaySound(ID, Volume, FrameDelay, Loop, Pitch)
end

---Sets the ControllerId for the NPC, which indicates which player will 
---control it. Set it to `-1` for no player controls (back to normal behaviour).
---@param ControllerID integer
function EntityNPC:SetControllerId(ControllerID)
end

---@param Strength number
function EntityNPC:SetShieldStrength(Strength)
end

---@param Position Vector
---@param Target Vector
---@param Velocity? number @default: `-24`
---@param YOffset? number @default: `-8`
---@return EntityNPC @Returns the `EntityNPC` of the maggot being fired.
function EntityNPC:ShootMaggotProjectile(Position, Target, Velocity, YOffset)
end

---@param Position Vector
---@param Color Color
---@return EntityEffect
function EntityNPC:SpawnBloodCloud(Position, Color)
end

function EntityNPC:SpawnBloodSplash()
end

---@param Source Entity
---@param Target Vector
---@param YPosOffset? number @default: `-10`
---@param Big? boolean @default: `false`
---@return EntityNPC
function EntityNPC:ThrowLeech(Source, Target, YPosOffset, Big)
end

---@param Origin Vector
---@param Velocity Vector @default: `-8.0`
---@param YOffset? number @default: `0.0`
---@return EntityNPC
function EntityNPC:ThrowMaggotAtPos(Origin, Velocity, YOffset)
end

---@param Source Entity
---@param Target Vector
---@param Variant? integer @default: `0`
---@param YPosOffset? number @default: `-10.0`
---@return EntityNPC
function EntityNPC:ThrowRockSpider(Source, Target, Variant, YPosOffset)
end

---@param Source Entity
---@param Target Vector
---@return EntityNPC
function EntityNPC:ThrowStrider(Source, Target)
end

---Used by Lost Fly to force this NPC to focus on a specific target.
---@param Target Entity
---@param Duration integer
---@return boolean
function EntityNPC:TryForceTarget(Target, Duration)
end

---`Force` only applies to NPC poop (it's modified and then used as V1.y, 
---with V1.x being -20.0) and may be incorrect. This needs further investigation.
---@param Source EntityRef
---@param Direction Vector
---@param Force integer
---@return boolean
function EntityNPC:TryThrow(Source, Direction, Force)
end

---Instructs the entity to update its dirt color. This is generally done 
---automatically on vanilla entities.
---@param immediate boolean If true, the dirt color will be set to exactly what is beneath the entity. Otherwise, it will be updated smoothly over the course of multiple frames.
function EntityNPC:UpdateDirtColor(immediate)
end

---@return integer
function EntityNPC:GetDarkRedChampionRegenTimer()
end

---Returns the unique `LootList` used by Fireplaces.
---@return LootList
function EntityNPC:GetFireplaceLoot()
end

---Returns the unique `LootList` used by Shopkeepers.
---@return LootList
function EntityNPC:GetShopkeeperLoot()
end

---Sets an override to the return value of IsFlying, which is normally based on EntityGridCollisionClass. Can be used to make grounded enemies ignore creep, or flying enemies get hit by creep.
---@param IsFlying boolean
function EntityNPC:SetFlyingOverride(IsFlying)
end

---Removes any value set by `SetFlyingOverride()`.
function EntityNPC:ClearFlyingOverride()
end

---Will attempt to split the enemy in two like the Meat Cleaver collectible. Returns `false` if the enemy dies from the damage before they split, `true` otherwise.
---@param DefaultDamage number
---@param Source EntityRef
---@param DoScreenEffects? boolean @default: `true`
function EntityNPC:TrySplit(DefaultDamage, Source, DoScreenEffects)
end

---Similar to Sprite:ReplaceSpritesheet. Appends "_champion"/stage suffix to PngFilename if possible.
---@param LayerID integer
---@param PngFilename string
---@param LoadGraphics? boolean
function EntityNPC:ReplaceSpritesheet(LayerID, PngFilename, LoadGraphics)
end