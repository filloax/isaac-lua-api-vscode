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

---@param ID SoundEffect
---@param Volume number
---@param FrameDelay integer
---@param Loop boolean
---@param Pitch number
function EntityNPC:PlaySound(ID, Volume, FrameDelay, Loop, Pitch)
end
