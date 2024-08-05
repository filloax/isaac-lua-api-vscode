---@diagnostic disable: inject-field
---Returns true if achievements can't be unlocked this run.
---@return boolean
function Game:AchievementUnlocksDisallowed()
end

---Adds a debug flag to the game. Multiple can be added simultaneously with 
---bitwise concatenation (e.g. 
---`DebugFlag.ENTITY_POSITIONS | DebugFlag.HITSPHERES`).
---@param flags DebugFlag
function Game:AddDebugFlags(flags)
end

---Devolves an enemy, as if the item D10 was used on it.
---@param entity Entity
function Game:DevolveEnemy(entity)
end

---@return ChallengeParams
function Game:GetChallengeParams()
end

---Returns the current color modifier for the screen.
---@return ColorModifier
function Game:GetCurrentColorModifier()
end

---Returns a DebugFlags bitmask.
---@return DebugFlag
function Game:GetDebugFlags()
end

---Deprecated as `ItemOverlay` is now a global table.
---@deprecated
---@return userdata @ItemOverlay
function Game:GetItemOverlay()
end

---Returns the lerped color modifier. This is formatted as the absolute 
---rate of change (ie, all values are positive).
---@return ColorModifier
function Game:GetLerpColorModifier()
end

---@return PauseMenuStates
function Game:GetPauseMenuState()
end

---Returns the amount of planetariums that have been entered in the current run.
---@return integer
function Game:GetPlanetariumsVisited()
end

---Returns the target ColorModifier.
---If currently lerping between two ColorModifier states, returns the target state.
---It is otherwise the same as `Game:GetCurrentColorModifier`.
---@return ColorModifier
function Game:GetTargetColorModifier()
end

---Returns true if the entity was erased for the run.
---@param entity Entity
---@return boolean
---@overload fun(self: Game, type: EntityType, variant?: integer, subType?: integer): boolean
function Game:IsErased(entity)
end

---Returns `true` if the next or current wave is a boss wave. Returns `false`
---otherwise or if not in Greed Mode.
---@return boolean
function Game:IsGreedBoss()
end

---Returns `true` if the next or current wave is the optional "nightmare" wave. Returns `false` otherwise or if not in Greed Mode.
---@return boolean
function Game:IsGreedFinalBoss()
end

---Returns `true` if current mode is Hard Mode or Greedier
---@return boolean
function Game:IsHardMode()
end

---@return boolean
function Game:IsPauseMenuOpen()
end

---Returns `true` if the current run is a rerun.
---@return boolean
function Game:IsRerun()
end

---Sets marks and unlocks achievements associated with this type for all players. Used by the game to award marks as well as tainted completion paper groups.
---@param completionType CompletionType
function Game:RecordPlayerCompletion(completionType)
end

---@param colorModifier ColorModifier
---@param lerp? boolean @default: `true`
---@param rate? number @default: `0.015`.
function Game:SetColorModifier(colorModifier, lerp, rate)
end

---TODO: Document me!
function Game:ShowGenericLeaderboard()
end

---@param position Vector
---@return Entity
function Game:SpawnBombCrater(position)
end

---@param SameStage boolean
---@param Animation integer @StageTransition::Animation
---@param Player? EntityPlayer
function Game:StartStageTransition(SameStage, Animation, Player)
end

---Sets how many times you've donated to a donation machine this floor, used for increasing angel deal chance when after 10 coins donated. Resets on the next floor.
---@param donation integer
function Game:SetDonationModAngel(donation)
end

---Sets how many times you've donated to a donation machine this floor, used for Greed Donation Machine jam chance. Resets on the next floor.
---@param donation integer
function Game:SetDonationModGreed(donation)
end

---Sets the dizzy amount akin to Wavy Cap. The current intensity of the effect will gradually move towards the "TargetIntensity".
---
---**NOTE**: Best to stay within `0`-`1` and increment by `0.1` while using this function. `1` has the most extreme effect on the screen while `0` removes the effect.
---@param TargetIntensity number @If provided, the current intensity is instantly changed to that amount. If unspecified, the current intensity will remain unchanged.
---@param CurrentIntensity? number @Starting intensity of the effect.
function Game:SetDizzyAmount(TargetIntensity, CurrentIntensity)
end

---Returns the current dizzy amount akin to Wavy Cap.
---@return integer
function Game:GetDizzyAmount()
end

---@param duration number
---@param amount number
function Game:SetBloom(duration, amount)
end

---Clears out all enemies listed as an erased enemy, allowing them to spawn again.
function Game:ClearErasedEnemies()
end

---Returns the amount of shops the player has entered this run.
---@return integer
function Game:GetShopVisits()
end

---Adds the amount of shops the player has entered this run.
---@param count integer
function Game:AddShopVisits(count)
end

---Returns the currently active `GenericPrompt` object.
---**BUG**: Will crash if used during a run while no generic prompt is active.
---@return GenericPrompt
function Game:GetGenericPrompt()
end