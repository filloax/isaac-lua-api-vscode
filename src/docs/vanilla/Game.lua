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
function Game:Fadein(Speed)
end

---@param Speed number
---@param Target integer @FadeoutTarget
function Game:Fadeout(Speed, Target)
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

---@return integer
function Game:GetDonationModAngel()
end

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

---@param SameStage boolean
---@param Animation integer @StageTransition::Animation
---@param Player EntityPlayer
function Game:StartStageTransition(SameStage, Animation, Player)
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
