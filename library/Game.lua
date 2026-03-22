---@meta

---@class Game
---@field BlueWombParTime integer
---@field BossRushParTime integer
---@field Challenge Challenge
---@field Difficulty Difficulty @const
---@field ScreenShakeOffset Vector @const
---@field TimeCounter integer
local Game = {}

---@return Game
function _G.Game()
end

function Game:AddDevilRoomDeal()
end

---@param Boss EntityType
---@param Variant integer
function Game:AddEncounteredBoss(Boss, Variant)
end

---@param Duration integer
function Game:AddPixelation(Duration)
end

function Game:AddStageWithoutDamage()
end

function Game:AddStageWithoutHeartsPicked()
end

function Game:AddTreasureRoomsVisited()
end

---@param Position Vector
---@param Damage number
---@param Radius number
---@param LineCheck? boolean @default: `true`
---@param Source? Entity @default: `nil`
---@param TearFlags? TearFlags @default: `TearFlags.TEAR_NORMAL`
---@param DamageFlags? integer @default: `DamageFlags.DAMAGE_EXPLOSION`
---@param DamageSource? boolean @default: `false`
function Game:BombDamage(Position, Damage, Radius, LineCheck, Source, TearFlags, DamageFlags, DamageSource)
end

---@param Position Vector
---@param Damage number
---@param TearFlags? TearFlags @default: `TearFlags.TEAR_NORMAL`
---@param Color? Color @default: `Color.Default`
---@param Source? Entity @default: `nil`
---@param RadiusMult? number @default: `1`
---@param LineCheck? boolean @default: `true`
---@param DamageSource? boolean @default: `false`
---@param DamageFlags? integer @default: `DamageFlags.DAMAGE_EXPLOSION`
function Game:BombExplosionEffects(Position, Damage, TearFlags, Color, Source, RadiusMult, LineCheck, DamageSource,
								   DamageFlags)
end

---@param Position Vector
---@param Radius number
---@param TearFlags TearFlags
---@param Source? Entity @default: `nil`
---@param RadiusMult? number @default: `1`
function Game:BombTearflagEffects(Position, Radius, TearFlags, Source, RadiusMult)
end

---@param Position Vector
---@param Radius number
---@param Source Entity
---@param ShowEffect boolean
---@param DoSuperKnockback boolean
function Game:ButterBeanFart(Position, Radius, Source, ShowEffect, DoSuperKnockback)
end

---@param RoomIndex integer
---@param Dimension? integer @default: `-1`
function Game:ChangeRoom(RoomIndex, Dimension)
end

---@param Position Vector
---@param Radius number
---@param Source Entity
function Game:CharmFart(Position, Radius, Source)
end

function Game:ClearDonationModAngel()
end

function Game:ClearDonationModGreed()
end

function Game:ClearStagesWithoutDamage()
end

function Game:ClearStagesWithoutHeartsPicked()
end

---@param Darkness number
---@param Timeout integer
function Game:Darken(Darkness, Timeout)
end

---@param Donate integer
function Game:DonateAngel(Donate)
end

---@param Donate integer
function Game:DonateGreed(Donate)
end

---@param Ending integer @Ending
function Game:End(Ending)
end

---@param Speed number
---@param ShowIcon? boolean @**[Repentance+ Only]** default? `?`. Appears to be non-functional.
---@param KColor? KColor @**[Repentance+ Only]**
function Game:Fadein(Speed, ShowIcon, KColor)
end

---@param Speed number
---@param Target integer @FadeoutTarget
---@param KColor? KColor @**[Repentance+ Only]**
function Game:Fadeout(Speed, Target, KColor)
end

---@param Position Vector
---@param Radius? number @default: `85`
---@param Source? Entity @default: `nil`
---@param FartScale? number @default: `1`
---@param FartSubType? integer @default: `0`
---@param FartColor? Color @default: `Color.Default`
function Game:Fart(Position, Radius, Source, FartScale, FartSubType, FartColor)
end

function Game:FinishChallenge()
end

---@return userdata @Ambush
function Game:GetAmbush()
end

---@return number
function Game:GetDarknessModifier()
end

---@return integer
function Game:GetDevilRoomDeals()
end

---Returns how many times you've donated to a donation machine this floor, used for increasing angel deal chance when after 10 coins donated. Resets on the next floor.
---@return integer
function Game:GetDonationModAngel()
end

---Used for Greed Donation Machine jam chance.
---@return integer
function Game:GetDonationModGreed()
end

---@return Font
function Game:GetFont()
end

---@return integer
function Game:GetFrameCount()
end

---@return integer
function Game:GetGreedBossWaveNum()
end

---@return integer
function Game:GetGreedWavesNum()
end

---@return HUD
function Game:GetHUD()
end

---@return ItemPool
function Game:GetItemPool()
end

---@return LevelStage
function Game:GetLastDevilRoomStage()
end

---@return LevelStage
function Game:GetLastLevelWithDamage()
end

---@return LevelStage
function Game:GetLastLevelWithoutHalfHp()
end

---@return Level
function Game:GetLevel()
end

---@param Pos Vector
---@return EntityPlayer
function Game:GetNearestPlayer(Pos)
end

---@return integer
function Game:GetNumEncounteredBosses()
end

---@return integer
function Game:GetNumPlayers()
end

---@param Index integer
---@return EntityPlayer
function Game:GetPlayer(Index)
end

---@param Pos Vector
---@param Radius number
---@return EntityPlayer
function Game:GetRandomPlayer(Pos, Radius)
end

---@return Room
function Game:GetRoom()
end

---@return integer
function Game:GetScreenShakeCountdown()
end

---@return Seeds
function Game:GetSeeds()
end

---@return integer
function Game:GetStagesWithoutDamage()
end

---@return integer
function Game:GetStagesWithoutHeartsPicked()
end

---@param GameStateFlag GameStateFlag
---@return boolean
function Game:GetStateFlag(GameStateFlag)
end

---@return number
function Game:GetTargetDarkness()
end

---@return integer
function Game:GetTreasureRoomVisitCount()
end

---@return integer
function Game:GetVictoryLap()
end

---@param Boss EntityType
---@param Variant integer
---@return boolean
function Game:HasEncounteredBoss(Boss, Variant)
end

---@return boolean
function Game:HasHallucination()
end

---@return boolean
function Game:IsGreedMode()
end

---@return boolean
function Game:IsPaused()
end

---@param IAmErrorRoom boolean
---@param Seed integer
---@param Player EntityPlayer
function Game:MoveToRandomRoom(IAmErrorRoom, Seed, Player)
end

function Game:NextVictoryLap()
end

function Game:Render()
end

---@param e Entity
---@return boolean
function Game:RerollEnemy(e)
end

function Game:RerollLevelCollectibles()
end

---@param Seed integer
function Game:RerollLevelPickups(Seed)
end

---@param Stage LevelStage
function Game:SetLastDevilRoomStage(Stage)
end

---@param Stage LevelStage
function Game:SetLastLevelWithDamage(Stage)
end

---@param Stage LevelStage
function Game:SetLastLevelWithoutHalfHp(Stage)
end

---@param GameStateFlag GameStateFlag
---@param Val boolean
function Game:SetStateFlag(GameStateFlag, Val)
end

---@param Timeout integer
function Game:ShakeScreen(Timeout)
end

function Game:ShowFortune()
end

---@param FrameCount integer
---@param Backdrop? BackdropType @default: `BackdropType.NUM_BACKDROPS`
function Game:ShowHallucination(FrameCount, Backdrop)
end

function Game:ShowRule()
end

---@param Type EntityType
---@param Variant integer
---@param Position Vector
---@param Velocity Vector
---@param Spawner Entity?
---@param SubType integer
---@param Seed integer
---@return Entity
function Game:Spawn(Type, Variant, Position, Velocity, Spawner, SubType, Seed)
end

---@param desc userdata @EntityDesc
---@param Position Vector
---@param Spawner Entity
---@return EntityNPC
function Game:SpawnEntityDesc(desc, Position, Spawner)
end

---@param Pos Vector
---@param ParticleType EffectVariant
---@param NumParticles integer
---@param Speed number
---@param Color? Color @default: `Color.Default`
---@param Height? number @default: `100000`
---@param SubType? integer @default: `0`
function Game:SpawnParticles(Pos, ParticleType, NumParticles, Speed, Color, Height, SubType)
end

---@param RoomIndex integer
---@param Direction Direction
---@param Animation? RoomTransitionAnim @default: `RoomTransitionAnim.WALK`
---@param Player? EntityPlayer @default: `nil`
---@param Dimension? integer @default: `-1`
function Game:StartRoomTransition(RoomIndex, Direction, Animation, Player, Dimension)
end

function Game:Update()
end

---@param Position Vector
---@param Force? number @default: `10`
---@param Radius? number @default: `250`
function Game:UpdateStrangeAttractor(Position, Force, Radius)
end

---For reference, Monstro's stomp has Amplitude=0.035, Speed=0.025, Duration=10
---@param Position Vector
---@param Amplitude number
---@param Speed number
---@param Duration integer
function Game:MakeShockwave(Position, Amplitude, Speed, Duration)
end


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

---Creates a chain of short technology lasers similar to those created from Jacob's Ladder
---@param pos Vector
---@param baseDamage? number @default: `3.5`.
---@param tearFlags? TearFlags @default: `TearFlags.TEAR_NORMAL`.
---@param spawner? Entity @default: `nil`.
---@return EntityEffect Returns with variant `EffectVariant.CHAIN_LIGHTNING`.
function Game:ChainLightning(pos, baseDamage, tearFlags, spawner)
end

---Returns `true` if the the game starts from a continued state. Always returns `false` after `MC_POST_GAME_STARTED` execution.
---@return boolean
function Game:IsStartingFromState()
end

