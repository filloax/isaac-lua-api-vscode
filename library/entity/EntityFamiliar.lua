---@meta

---@class EntityFamiliar : Entity
---@field Coins integer
---@field FireCooldown integer
---@field HeadFrameDelay integer
---@field Hearts integer
---@field IsDelayed boolean # Not officially documented but functional
---@field IsFollower boolean # Not officially documented but functional
---@field Keys integer
---@field LastDirection Direction
---@field MoveDirection Direction
---@field OrbitAngleOffset number
---@field OrbitLayer integer # Not officially documented but functional
---@field OrbitSpeed number # Not officially documented but functional
---@field OrbitDistance Vector
---@field Player EntityPlayer
---@field RoomClearCount integer
---@field ShootDirection Direction
---@field State integer
_G.EntityFamiliar = {}

---@param Value integer
function EntityFamiliar:AddCoins(Value)
end

---@param Hearts integer
function EntityFamiliar:AddHearts(Hearts)
end

---@param Keys integer
function EntityFamiliar:AddKeys(Keys)
end

function EntityFamiliar:AddToDelayed()
end

function EntityFamiliar:AddToFollowers()
end

---@param Layer integer
function EntityFamiliar:AddToOrbit(Layer)
end

---@param Dir Vector
---@return EntityTear
function EntityFamiliar:FireProjectile(Dir)
end

function EntityFamiliar:FollowParent()
end

---@param Pos Vector
function EntityFamiliar:FollowPosition(Pos)
end

---@param Layer integer
---@return Vector
function EntityFamiliar.GetOrbitDistance(Layer)
end

---@param Pos Vector
---@return Vector
function EntityFamiliar:GetOrbitPosition(Pos)
end

---@param NumFrames integer
function EntityFamiliar:MoveDelayed(NumFrames)
end

---@param Speed number
function EntityFamiliar:MoveDiagonally(Speed)
end

---@param MaxDistance number
---@param FrameInterval? integer @default: `13`
---@param Flags? integer @default: `0`
---@param ConeDir? Vector @default: `Vector.Zero`
---@param ConeAngle? number @default: `15`
function EntityFamiliar:PickEnemyTarget(MaxDistance, FrameInterval, Flags, ConeDir, ConeAngle)
end

---@param Dir Direction
function EntityFamiliar:PlayChargeAnim(Dir)
end

---@param Dir Direction
function EntityFamiliar:PlayFloatAnim(Dir)
end

---@param Dir Direction
function EntityFamiliar:PlayShootAnim(Dir)
end

---@param Layer integer
---@param Add boolean
---@return integer
function EntityFamiliar:RecalculateOrbitOffset(Layer, Add)
end

function EntityFamiliar:RemoveFromDelayed()
end

function EntityFamiliar:RemoveFromFollowers()
end

function EntityFamiliar:RemoveFromOrbit()
end

---When called in POST_FAMILIAR_UPDATE on a custom familiar, appears to handle everything for a basic shooting familiar. This includes handling animations, firing tears, and synergies.
function EntityFamiliar:Shoot()
end



---@return boolean
function EntityFamiliar:CanBeDamagedByEnemies()
end

---@return boolean
function EntityFamiliar:CanBeDamagedByLasers()
end

---@return boolean
function EntityFamiliar:CanBeDamagedByProjectiles()
end

---@return boolean
function EntityFamiliar:CanBlockProjectiles()
end

---@return boolean
function EntityFamiliar:CanCharm()
end

---@return Color
function EntityFamiliar:GetDirtColor()
end

---@return FollowerPriority
function EntityFamiliar:GetFollowerPriority()
end

---@return ItemConfigItem
function EntityFamiliar:GetItemConfig()
end

---Returns the amount in frames that the familiar's movements are delayed from the player's. 30 frames = 1 second.
function EntityFamiliar:GetMoveDelayNum()
end

---@return number
function EntityFamiliar:GetMultiplier()
end

---@return PathFinder
function EntityFamiliar:GetPathFinder()
end

---Returns `nil` for familiars that don't mimic the player's attacks
---(Incubus, etc).
---@return Weapon?
function EntityFamiliar:GetWeapon()
end

---Makes it so that the next time GetMultiplier is called (which doesn't exist yet), `MC_EVALUATE_FAMILIAR_MULTIPLIER` is triggered to recalculate/allow modifying the multiplier.
function EntityFamiliar:InvalidateCachedMultiplier()
end

---@return boolean
function EntityFamiliar:IsCharmed()
end

function EntityFamiliar:RemoveFromPlayer()
end

---Sets the amount in frames that the familiar's movements are delayed from the player's. 30 frames = 1 second.
---@param delay integer
function EntityFamiliar:SetMoveDelayNum(delay)
end

---Triggers effects on the familiar as if a room was cleared and incrementing `.RoomClearCount` (i.e. Sack of pennies dropping a coin).
function EntityFamiliar:TriggerRoomClear()
end

---@param aimDirection Vector
---@param direction Direction
---@return Vector?
function EntityFamiliar:TryAimAtMarkedTarget(aimDirection, direction)
end

function EntityFamiliar:UpdateDirtColor()
end

---@return boolean
function EntityFamiliar:IsLilDelirium()
end

---@param value boolean
function EntityFamiliar:SetLilDelirium(value)
end

---Returns a random `CollectibleType`. Used by Lemegenton for determining what wisp to spawn.
---@param rng RNG
---@return CollectibleType
function _G.EntityFamiliar.GetRandomWisp(rng)
end

---Returns the Entity associated with the familiar's active [Weapon](Weapon.md).
---
---Returns `nil` if it cannot be found.
---@return Entity?
function EntityFamiliar:GetActiveWeaponEntity()
end

---Returns the amount of times the familiar's active `Weapon` has been fired.
function EntityFamiliar:GetActiveWeaponNumFired()
end

