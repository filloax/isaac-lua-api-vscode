---Same as `FireBossProjectiles`, but returns a table containing the list of
---spawned projectiles.
---@param NumProjectiles integer
---@param TargetPos Vector
---@param TrajectoryModifier number
---@param Params ProjectileParams
---@return EntityProjectile[]
function EntityNPC_Local:FireBossProjectilesEx(NumProjectiles, TargetPos, TrajectoryModifier, Params)
end

---@param sprite Sprite
---@param desc GridEntityDesc
---@param velocity Vector
---@param backdrop BackdropType? @default: `BackdropType.BASEMENT`.
---@return EntityProjectile
function EntityNPC_Local:FireGridEntity(sprite, desc, velocity, backdrop)
end

---Same as `FireProjectiles`, but returns a table containing the list of
---spawned projectiles.
---@param Position Vector
---@param Velocity Vector
---@param Mode ProjectileMode
---@param Params ProjectileParams
---@return EntityProjectile[]
function EntityNPC_Local:FireProjectilesEx(Position, Velocity, Mode, Params)
end

---Returns the ControllerId for the NPC, which indicates which player
---is controlling it. Will return -1 when its not being controlled by
---any player.
---@return integer
function EntityNPC_Local:GetControllerId()
end

---Returns the dynamic dirt color of the entity. This lets entities like
---Nightcrawler blend in to the environment.
---@return Color
function EntityNPC_Local:GetDirtColor()
end

---@return integer[]
function EntityNPC_Local:GetHitList()
end

---@return number
function EntityNPC_Local:GetShieldStrength()
end

---Returns a Pathfinder class with fixed versions of its functions. This supersedes EntityNPC.Pathfinder, which has been left as-is for compatibility with existing mods.
---@return PathFinder
function EntityNPC_Local:GetPathfinder()
end

---@param ID SoundEffect
---@param Volume? number @default: `1`
---@param FrameDelay? integer @default: `2`
---@param Loop? boolean @default: `false`
---@param Pitch? number @default: `1`
function EntityNPC_Local:PlaySound(ID, Volume, FrameDelay, Loop, Pitch)
end

---Sets the ControllerId for the NPC, which indicates which player will
---control it. Set it to `-1` for no player controls (back to normal behaviour).
---@param ControllerID integer
function EntityNPC_Local:SetControllerId(ControllerID)
end

---@param Strength number
function EntityNPC_Local:SetShieldStrength(Strength)
end

---@param Position Vector
---@param Target Vector
---@param Velocity? number @default: `-24`
---@param YOffset? number @default: `-8`
---@return EntityNPC @Returns the `EntityNPC` of the maggot being fired.
function EntityNPC_Local:ShootMaggotProjectile(Position, Target, Velocity, YOffset)
end

---@param Position Vector
---@param Color Color
---@return EntityEffect
function EntityNPC_Local:SpawnBloodCloud(Position, Color)
end

function EntityNPC_Local:SpawnBloodSplash()
end

---@param Position Vector
---@param Source Entity
---@param Target Vector
---@param YPosOffset? number @default: `-10`
---@param Big? boolean @default: `false`
---@return EntityNPC
function _G.EntityNPC.ThrowLeech(Position, Source, Target, YPosOffset, Big)
end

---@param Origin Vector
---@param Velocity Vector @default: `-10.0`
---@param YOffset? number @default: `0.0`
---@param FallSpeed? number @default: `-8.0`
---@return EntityNPC
function _G.EntityNPC.ThrowMaggot(Origin, Velocity, YOffset, FallSpeed)
end

---@param Origin Vector
---@param Target Vector
---@param YOffset? number @default: `-8.0`
---@return EntityNPC
function _G.EntityNPC.ThrowMaggotAtPos(Origin, Target, YOffset)
end

---@param Position Vector
---@param Source Entity
---@param Velocity Vector
---@param Variant? integer @default: `0`
---@param YPosOffset? number @default: `-10.0`
---@return EntityNPC
function _G.EntityNPC.ThrowRockSpider(Position, Source, Velocity, Variant, YPosOffset)
end

---@param Position Vector
---@param Source Entity
---@param Target Vector
---@return EntityNPC
function _G.EntityNPC.ThrowStrider(Position, Source, Target)
end

---Used by Lost Fly to force this NPC to focus on a specific target.
---@param Target Entity
---@param Duration integer
---@return boolean
function EntityNPC_Local:TryForceTarget(Target, Duration)
end

---`Force` only applies to NPC poop (it's modified and then used as V1.y,
---with V1.x being -20.0) and may be incorrect. This needs further investigation.
---@param Source EntityRef
---@param Direction Vector
---@param Force integer
---@return boolean
function EntityNPC_Local:TryThrow(Source, Direction, Force)
end

---Instructs the entity to update its dirt color. This is generally done
---automatically on vanilla entities.
---@param immediate boolean If true, the dirt color will be set to exactly what is beneath the entity. Otherwise, it will be updated smoothly over the course of multiple frames.
function EntityNPC_Local:UpdateDirtColor(immediate)
end

---@return integer
function EntityNPC_Local:GetDarkRedChampionRegenTimer()
end

---Returns the unique `LootList` used by Fireplaces.
---@return LootList
function EntityNPC_Local:GetFireplaceLoot()
end

---Returns the unique `LootList` used by Shopkeepers.
---@return LootList
function EntityNPC_Local:GetShopkeeperLoot()
end

---Sets an override to the return value of IsFlying, which is normally based on EntityGridCollisionClass. Can be used to make grounded enemies ignore creep, or flying enemies get hit by creep.
---@param IsFlying boolean
function EntityNPC_Local:SetFlyingOverride(IsFlying)
end

---Removes any value set by `SetFlyingOverride()`.
function EntityNPC_Local:ClearFlyingOverride()
end

---Will attempt to split the enemy in two like the Meat Cleaver collectible. Returns `false` if the enemy dies from the damage before they split, `true` otherwise.
---@param DefaultDamage number
---@param Source EntityRef
---@param DoScreenEffects? boolean @default: `true`
function EntityNPC_Local:TrySplit(DefaultDamage, Source, DoScreenEffects)
end

---Similar to Sprite:ReplaceSpritesheet. Appends "_champion"/stage suffix to PngFilename if possible.
---@param LayerID integer
---@param PngFilename string
---@param LoadGraphics? boolean
function EntityNPC_Local:ReplaceSpritesheet(LayerID, PngFilename, LoadGraphics)
end

---When Siren controls familiars, they have their own EntityPlayer in order to do so. This returns that specific player if called on Siren
---@return EntityPlayer?
function EntityNPC_Local:GetSirenPlayerEntity()
end

---Applies the appropriate `tearFlags` to the EntityNPC.
---@param pos Vector
---@param tearFlags TearFlags
---@param sourceEnt? Entity @default: `nil`
---@param damage? number @default: `3.5`
function EntityNPC_Local:ApplyTearflagEffects(pos, tearFlags, sourceEnt, damage)
end
