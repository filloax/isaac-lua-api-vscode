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
