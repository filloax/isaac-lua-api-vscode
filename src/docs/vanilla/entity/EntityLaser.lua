---@class EntityLaser : Entity
---@field Angle number
---@field AngleDegrees number
---@field BlackHpDropChance number
---@field BounceLaser Entity
---@field CurveStrength number
---@field DisableFollowParent boolean
---@field EndPoint Vector
---@field FirstUpdate boolean
---@field GridHit boolean
---@field HomingLaser userdata @LaserHomingType
---@field HomingType integer @LaserHomingType
---@field IsActiveRotating boolean
---@field LaserLength number
---@field LastAngleDegrees number
---@field MaxDistance number
---@field OneHit boolean
---@field ParentOffset Vector
---@field Radius number
---@field RotationDegrees number
---@field RotationDelay integer
---@field RotationSpd number
---@field SampleLaser boolean
---@field Shrink boolean
---@field StartAngleDegrees number
---@field TearFlags TearFlags
---@field Timeout integer
local EntityLaser_Local = {}

_G.EntityLaser = {}

---@param Flags TearFlags
function EntityLaser_Local:AddTearFlags(Flags)
end

---@param Start Vector
---@param Dir Vector
---@param PositionOffset Vector
---@param Parent Entity
---@param Margin number
---@return Vector
function _G.EntityLaser.CalculateEndPoint(Start, Dir, PositionOffset, Parent, Margin)
end

---@param Flags TearFlags
function EntityLaser_Local:ClearTearFlags(Flags)
end

---@return Vector
function EntityLaser_Local:GetEndPoint()
end

---@return VectorList
function EntityLaser_Local:GetNonOptimizedSamples()
end

---@return integer
function EntityLaser_Local:GetRenderZ()
end

---@return VectorList
function EntityLaser_Local:GetSamples()
end

---@param Flags TearFlags
---@return boolean
function EntityLaser_Local:HasTearFlags(Flags)
end

---@return boolean
function EntityLaser_Local:IsCircleLaser()
end

---@return boolean
function EntityLaser_Local:IsSampleLaser()
end

---@param Delay integer
---@param AngleDegrees number
---@param RotationSpd number
---@param TimeoutComplete boolean
function EntityLaser_Local:SetActiveRotation(Delay, AngleDegrees, RotationSpd, TimeoutComplete)
end

---@param Chance number
function EntityLaser_Local:SetBlackHpDropChance(Chance)
end

---@param Type integer @LaserHomingType
function EntityLaser_Local:SetHomingType(Type)
end

---@param Distance number
function EntityLaser_Local:SetMaxDistance(Distance)
end

---@param Value boolean
function EntityLaser_Local:SetMultidimensionalTouched(Value)
end

---@param Value boolean
function EntityLaser_Local:SetOneHit(Value)
end

---@param Value integer
function EntityLaser_Local:SetTimeout(Value)
end

---@param Variant LaserVariant
---@param SourcePos Vector
---@param AngleDegrees number
---@param Timeout integer
---@param PosOffset Vector
---@param Source Entity
---@return EntityLaser
function _G.EntityLaser.ShootAngle(Variant, SourcePos, AngleDegrees, Timeout, PosOffset, Source)
end
