---@diagnostic disable: missing-return

---@class ActiveItemDesc
---@field BatteryCharge integer
---@field Charge integer
---@field Item CollectibleType
---@field PartialCharge number
---@field TimedRechargeCooldown integer
---@field VarData integer
local ActiveItemDesc = {}



---@class BitSet128
---@field l integer
---@field h integer
---@operator bnot: BitSet128
---@operator bor(BitSet128): BitSet128
---@operator band(BitSet128): BitSet128
---@operator bxor(BitSet128): BitSet128
---@operator shl(BitSet128): BitSet128
---@operator shr(BitSet128): BitSet128


---@param l? integer @default = 0
---@param h? integer @default = 0
---@return BitSet128
function _G.BitSet128(l, h)
end


---@class Color
---@field A number
---@field B number
---@field BO number
---@field G number
---@field GO number
---@field R number
---@field RO number
---@operator mul(Color): Color
local Color = {}

---@param R number
---@param G number
---@param B number
---@param A? number @default: 1
---@param RO? number @default: 0
---@param GO? number @default: 0
---@param BO? number @default: 0
---@return Color
function _G.Color(R, G, B, A, RO, GO, BO)
end

---@param m1 Color
---@param m2 Color
---@param t number
---@return Color
function Color.Lerp(m1, m2, t)
end

function Color:Reset()
end

---@param Red number
---@param Green number
---@param Blue number
---@param Amount number
function Color:SetColorize(Red, Green, Blue, Amount)
end

---@param RedOffset number
---@param GreenOffset number
---@param BlueOffset number
function Color:SetOffset(RedOffset, GreenOffset, BlueOffset)
end

---@param RedTint number
---@param GreenTint number
---@param BlueTint number
---@param AlphaTint number
function Color:SetTint(RedTint, GreenTint, BlueTint, AlphaTint)
end



---@class CppList
local CppList = {}

-- missing metamethod len as not supported for now

---@param idx integer
---@return any
function CppList:Get(idx)
end

---@return any
function CppList:Size()
end

---@class CppList_RoomDescriptor : CppList
local CppList_RoomDescriptor = {}

---@param idx integer
---@return RoomDescriptor
function CppList_RoomDescriptor:Get(idx)
end


---@class CppList_RoomConfigSpawn : CppList
local CppList_RoomConfigSpawn = {}

---@param idx integer
---@return RoomConfig_Spawn
function CppList_RoomConfigSpawn:Get(idx)
end


---@class CppList_RoomConfigEntries : CppList
local CppList_RoomConfigEntries = {}

---@param idx integer
---@return userdata
function CppList_RoomConfigEntries:Get(idx)
end


---@class EntityList : CppList
local EntityList = {}

---@param idx integer
---@return Entity
function EntityList:Get(idx)
end


---@class CardConfigList : CppList
local CardConfigList = {}

---@param idx integer
---@return ItemConfig_Card
function CardConfigList:Get(idx)
end


---@class CostumeConfigList : CppList
local CostumeConfigList = {}

---@param idx integer
---@return ItemConfig_Costume
function CostumeConfigList:Get(idx)
end


---@class EffectList : CppList
local EffectList = {}

---@param idx integer
---@return TemporaryEffect
function EffectList:Get(idx)
end


---@class ItemConfigList : CppList
local ItemConfigList = {}

---@param idx integer
---@return ItemConfig_Item
function ItemConfigList:Get(idx)
end


---@class PillConfigList : CppList
local PillConfigList = {}

---@param idx integer
---@return ItemConfig_PillEffect
function PillConfigList:Get(idx)
end


---@class VectorList : CppList
local VectorList = {}

---@param idx integer
---@return Vector
function VectorList:Get(idx)
end


---@class CppList_intValues : CppList
local CppList_intValues = {}



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

---@param entityType integer
---@param entityVariant integer
---@param entitySubtype integer
---@param position Vector
---@param velocity Vector
---@param Spawner Entity
---@return Entity
function Isaac.Spawn(entityType, entityVariant, entitySubtype, position, velocity, Spawner)
end

---@param Source EntityRef
---@param Duration integer
---@param Damage number
function Entity:AddBurn(Source, Duration, Damage)
end

---@param sourceEntity EntityRef
---@param Duration integer
function Entity:AddCharmed(sourceEntity, Duration)
end

---@param Source EntityRef
---@param Duration integer
---@param IgnoreBosses boolean
function Entity:AddConfusion(Source, Duration, IgnoreBosses)
end

---@param Flags integer
function Entity:AddEntityFlags(Flags)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddFear(Source, Duration)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddFreeze(Source, Duration)
end

---@param HitPoints number
function Entity:AddHealth(HitPoints)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddMidasFreeze(Source, Duration)
end

---@param Source EntityRef
---@param Duration integer
---@param Damage number
function Entity:AddPoison(Source, Duration, Damage)
end

---@param Source EntityRef
---@param Duration integer
function Entity:AddShrink(Source, Duration)
end

---@param Source EntityRef
---@param Duration integer
---@param SlowValue number
---@param SlowColor Color
function Entity:AddSlowing(Source, Duration, SlowValue, SlowColor)
end

---@param Velocity Vector
function Entity:AddVelocity(Velocity)
end

function Entity:BloodExplode()
end

---@return boolean
function Entity:CanShutDoors()
end

---@param Flags integer
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

---@return integer
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

---@param Flags integer
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
---@param Flags integer
---@param Source EntityRef
---@param DamageCountdown integer
---@return boolean
function Entity:TakeDamage(Damage, Flags, Source, DamageCountdown)
end

---@return EntityBomb
function Entity:ToBomb()
end

---@return EntityEffect
function Entity:ToEffect()
end

---@return EntityFamiliar
function Entity:ToFamiliar()
end

---@return EntityKnife
function Entity:ToKnife()
end

---@return EntityLaser
function Entity:ToLaser()
end

---@return EntityNPC
function Entity:ToNPC()
end

---@return EntityPickup
function Entity:ToPickup()
end

---@return EntityPlayer
function Entity:ToPlayer()
end

---@return EntityProjectile
function Entity:ToProjectile()
end

---@return EntityTear
function Entity:ToTear()
end

function Entity:Update()
end

---@class EntityBomb : Entity
---@field ExplosionDamage number
---@field Flags TearFlags
---@field IsFetus boolean
---@field RadiusMultiplier number
local EntityBomb = {}

---@param Flags TearFlags
function EntityBomb:AddTearFlags(Flags)
end

---@param Flags TearFlags
function EntityBomb:ClearTearFlags(Flags)
end

---@param Flags TearFlags
---@return boolean
function EntityBomb:HasTearFlags(Flags)
end

---@param Countdown integer
function EntityBomb:SetExplosionCountdown(Countdown)
end



---@class EntityEffect : Entity
---@field DamageSource integer
---@field FallingAcceleration number
---@field FallingSpeed number
---@field IsFollowing boolean
---@field LifeSpan integer
---@field m_Height number
---@field MaxRadius number
---@field MinRadius number
---@field ParentOffset Vector
---@field Rotation number
---@field Scale number
---@field State integer
---@field Timeout integer
_G.EntityEffect = {}

---@param Parent Entity
function EntityEffect:FollowParent(Parent)
end

---@param Variant integer
---@return boolean
function EntityEffect.IsPlayerCreep(Variant)
end

---@param DamageSource EntityType
function EntityEffect:SetDamageSource(DamageSource)
end

---@param min number
---@param max number
function EntityEffect:SetRadii(min, max)
end

---@param Timeout integer
function EntityEffect:SetTimeout(Timeout)
end



---@class EntityFamiliar : Entity
---@field Coins integer
---@field FireCooldown integer
---@field HeadFrameDelay integer
---@field Hearts integer
---@field Keys integer
---@field LastDirection Direction
---@field MoveDirection Direction
---@field OrbitAngleOffset number
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
---@param FrameInterval? integer @default: 13
---@param Flags? integer @default: 0
---@param ConeDir? Vector @default: Vector.Zero
---@param ConeAngle? number @default: 15
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

function EntityFamiliar:Shoot()
end



---@class EntityKnife : Entity
---@field Charge number
---@field MaxDistance number
---@field PathFollowSpeed number
---@field PathOffset number
---@field Rotation number
---@field RotationOffset number
---@field Scale number
---@field TearFlags TearFlags
local EntityKnife = {}

---@param Flags TearFlags
function EntityKnife:AddTearFlags(Flags)
end

---@param Flags TearFlags
function EntityKnife:ClearTearFlags(Flags)
end

---@return number
function EntityKnife:GetKnifeDistance()
end

---@return number
function EntityKnife:GetKnifeVelocity()
end

---@return integer
function EntityKnife:GetRenderZ()
end

---@param Flags TearFlags
---@return boolean
function EntityKnife:HasTearFlags(Flags)
end

---@return boolean
function EntityKnife:IsFlying()
end

function EntityKnife:Reset()
end

---@param Speed number
function EntityKnife:SetPathFollowSpeed(Speed)
end

---@param Charge number
---@param Range number
function EntityKnife:Shoot(Charge, Range)
end



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
_G.EntityLaser = {}

---@param Flags TearFlags
function EntityLaser:AddTearFlags(Flags)
end

---@param Start Vector
---@param Dir Vector
---@param PositionOffset Vector
---@param Parent Entity
---@param Margin number
---@return Vector
function EntityLaser.CalculateEndPoint(Start, Dir, PositionOffset, Parent, Margin)
end

---@param Flags TearFlags
function EntityLaser:ClearTearFlags(Flags)
end

---@return Vector
function EntityLaser:GetEndPoint()
end

---@return userdata @HomingLaser::SampleList
function EntityLaser:GetNonOptimizedSamples()
end

---@return integer
function EntityLaser:GetRenderZ()
end

---@return userdata @HomingLaser::SampleList
function EntityLaser:GetSamples()
end

---@param Flags TearFlags
---@return boolean
function EntityLaser:HasTearFlags(Flags)
end

---@return boolean
function EntityLaser:IsCircleLaser()
end

---@return boolean
function EntityLaser:IsSampleLaser()
end

---@param Delay integer
---@param AngleDegrees number
---@param RotationSpd number
---@param TimeoutComplete boolean
function EntityLaser:SetActiveRotation(Delay, AngleDegrees, RotationSpd, TimeoutComplete)
end

---@param Chance number
function EntityLaser:SetBlackHpDropChance(Chance)
end

---@param Type integer @LaserHomingType
function EntityLaser:SetHomingType(Type)
end

---@param Distance number
function EntityLaser:SetMaxDistance(Distance)
end

---@param Value boolean
function EntityLaser:SetMultidimensionalTouched(Value)
end

---@param Value boolean
function EntityLaser:SetOneHit(Value)
end

---@param Value integer
function EntityLaser:SetTimeout(Value)
end

---@param Variant integer
---@param SourcePos Vector
---@param AngleDegrees number
---@param Timeout integer
---@param PosOffset Vector
---@param Source Entity
---@return EntityLaser
function EntityLaser.ShootAngle(Variant, SourcePos, AngleDegrees, Timeout, PosOffset, Source)
end



---@class EntityNPC : Entity
---@field CanShutDoors boolean
---@field ChildNPC EntityNPC @const
---@field EntityRef Entity
---@field GroupIdx integer
---@field I1 integer
---@field I2 integer
---@field ParentNPC EntityNPC @const
---@field Pathfinder PathFinder
---@field ProjectileCooldown integer
---@field ProjectileDelay integer
---@field Scale number
---@field State integer
---@field StateFrame integer
---@field V1 Vector
---@field V2 Vector
_G.EntityNPC = {}

---@param HorizontalAnim string
---@param VerticalAnim string
---@param SpeedThreshold number
function EntityNPC:AnimWalkFrame(HorizontalAnim, VerticalAnim, SpeedThreshold)
end

---@param DistanceLimit number
---@return Vector
function EntityNPC:CalcTargetPosition(DistanceLimit)
end

---@param Velocity Vector
---@return boolean
function EntityNPC:CanBeDamagedFromVelocity(Velocity)
end

---@return boolean
function EntityNPC:CanReroll()
end

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

---@return integer
function EntityNPC:GetAliveEnemyCount()
end

---@return integer
function EntityNPC:GetBossColorIdx()
end

---@return integer
function EntityNPC:GetChampionColorIdx()
end

---@return Entity
function EntityNPC:GetPlayerTarget()
end

---@return boolean
function EntityNPC:IsBoss()
end

---@return boolean
function EntityNPC:IsChampion()
end

function EntityNPC:KillUnique()
end

---@param Seed integer
---@param ChampionColorIdx? ChampionColor @default: -1
---@param Init? boolean @default: false
function EntityNPC:MakeChampion(Seed, ChampionColorIdx, Init)
end

---@param Size number
---@return EntityEffect
function EntityNPC:MakeSplat(Size)
end

---@param type EntityType
---@param Variant integer
---@param SubType integer
---@param ChampionColorIdx integer
---@return boolean
function EntityNPC:Morph(type, Variant, SubType, ChampionColorIdx)
end

---@param ID SoundEffect
---@param Volume number
---@param FrameDelay integer
---@param Loop boolean
---@param Pitch number
function EntityNPC:PlaySound(ID, Volume, FrameDelay, Loop, Pitch)
end

---@param GroupIdx integer
---@return EntityList
function EntityNPC:QueryNPCsGroup(GroupIdx)
end

---@param SpawnerType EntityType
---@param Type EntityType
---@param OnlyEnemies boolean
---@return EntityList
function EntityNPC:QueryNPCsSpawnerType(SpawnerType, Type, OnlyEnemies)
end

---@param Type EntityType
---@param Variant integer
---@return EntityList
function EntityNPC:QueryNPCsType(Type, Variant)
end

function EntityNPC:ResetPathFinderTarget()
end

---@param Position Vector
---@param Spawner? Entity
---@param TargetPos Vector
---@param Big boolean
---@param YOffset number
---@return EntityNPC
function EntityNPC.ThrowSpider(Position, Spawner, TargetPos, Big, YOffset)
end



---@class EntityPickup : Entity
---@field AutoUpdatePrice boolean
---@field Charge integer
---@field OptionsPickupIndex integer
---@field Price integer
---@field ShopItemId integer
---@field State integer
---@field Timeout integer
---@field Touched boolean
---@field Wait integer
local EntityPickup = {}

function EntityPickup:AppearFast()
end

---@return boolean
function EntityPickup:CanReroll()
end

---@return integer
function EntityPickup:GetCoinValue()
end

---@return boolean
function EntityPickup:IsShopItem()
end

---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@param KeepPrice? boolean @default: false
---@param KeepSeed? boolean @default: false
---@param IgnoreModifiers? boolean @default: false
function EntityPickup:Morph(Type, Variant, SubType, KeepPrice, KeepSeed, IgnoreModifiers)
end

function EntityPickup:PlayDropSound()
end

function EntityPickup:PlayPickupSound()
end

---@param Player? EntityPlayer @default: nil
---@return boolean
function EntityPickup:TryOpenChest(Player)
end



---@class EntityPlayer : Entity
---@field BabySkin BabySubType
---@field CanFly boolean
---@field ControllerIndex integer @const
---@field ControlsCooldown integer
---@field ControlsEnabled boolean
---@field Damage number
---@field FireDelay number
---@field FriendBallEnemy userdata @EntityDesc @const
---@field HeadFrameDelay integer
---@field IBSCharge number
---@field ItemHoldCooldown integer
---@field LaserColor Color
---@field Luck number
---@field MaxFireDelay number
---@field MoveSpeed number
---@field QueuedItem QueuedItemData
---@field SamsonBerserkCharge integer
---@field SecondaryActiveItem ActiveItemDesc
---@field ShotSpeed number
---@field TearColor Color
---@field TearFallingAcceleration number
---@field TearFallingSpeed number
---@field TearFlags TearFlags
---@field TearHeight number
---@field TearRange number
---@field TearsOffset Vector
local EntityPlayer = {}

---@param BlackHearts integer
function EntityPlayer:AddBlackHearts(BlackHearts)
end

---@param Amount integer
function EntityPlayer:AddBloodCharge(Amount)
end

---@param Amount integer
---@param Position Vector
---@param Target Entity
---@return Entity
function EntityPlayer:AddBlueFlies(Amount, Position, Target)
end

---@param Position Vector
---@return Entity
function EntityPlayer:AddBlueSpider(Position)
end

---@param Amount integer
function EntityPlayer:AddBombs(Amount)
end

---@param Hearts integer
function EntityPlayer:AddBoneHearts(Hearts)
end

---@param BrokenHearts integer
function EntityPlayer:AddBrokenHearts(BrokenHearts)
end

---@param CacheFlag CacheFlag
function EntityPlayer:AddCacheFlags(CacheFlag)
end

---@param ID Card
function EntityPlayer:AddCard(ID)
end

---@param Amount integer
function EntityPlayer:AddCoins(Amount)
end

---@param Type CollectibleType
---@param Charge? integer @default: 0
---@param FirstTimePickingUp? boolean @default: true
---@param Slot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@param VarData? integer @default: 0
function EntityPlayer:AddCollectible(Type, Charge, FirstTimePickingUp, Slot, VarData)
end

---@param Cooldown integer
function EntityPlayer:AddControlsCooldown(Cooldown)
end

---@param Item ItemConfig_Item
---@param ItemStateOnly? boolean
function EntityPlayer:AddCostume(Item, ItemStateOnly)
end

function EntityPlayer:AddCurseMistEffect()
end

function EntityPlayer:AddDeadEyeCharge()
end

function EntityPlayer:AddDollarBillEffect()
end

---@param EternalHearts integer
function EntityPlayer:AddEternalHearts(EternalHearts)
end

---@param Subtype integer
---@param Position Vector
function EntityPlayer:AddFriendlyDip(Subtype, Position)
end

---@param GigaBombs integer
function EntityPlayer:AddGigaBombs(GigaBombs)
end

function EntityPlayer:AddGoldenBomb()
end

---@param Hearts integer
function EntityPlayer:AddGoldenHearts(Hearts)
end

function EntityPlayer:AddGoldenKey()
end

---@param Hearts integer
function EntityPlayer:AddHearts(Hearts)
end

---@param Collectible CollectibleType
---@param Position Vector
---@param AdjustOrbitLayer? boolean @default: false
---@return EntityFamiliar
function EntityPlayer:AddItemWisp(Collectible, Position, AdjustOrbitLayer)
end

---@param Flies integer
function EntityPlayer:AddJarFlies(Flies)
end

---@param Hearts integer
function EntityPlayer:AddJarHearts(Hearts)
end

---@param Amount integer
function EntityPlayer:AddKeys(Amount)
end

---@param MaxHearts integer
---@param IgnoreKeeper? boolean
function EntityPlayer:AddMaxHearts(MaxHearts, IgnoreKeeper)
end

---@param Position Vector
---@param PlayAnim? boolean @default: true
---@return EntityFamiliar
function EntityPlayer:AddMinisaac(Position, PlayAnim)
end

---@param NullId NullItemID
function EntityPlayer:AddNullCostume(NullId)
end

---@param Pill PillColor
function EntityPlayer:AddPill(Pill)
end

---@param Num integer
function EntityPlayer:AddPoopMana(Num)
end

---@param Form PlayerForm
function EntityPlayer:AddPlayerFormCostume(Form)
end

function EntityPlayer:AddPrettyFly()
end

---@param RottenHearts integer
function EntityPlayer:AddRottenHearts(RottenHearts)
end

---@param Amount integer
function EntityPlayer:AddSoulCharge(Amount)
end

---@param SoulHearts integer
function EntityPlayer:AddSoulHearts(SoulHearts)
end

---@param Position Vector
---@return EntityFamiliar
function EntityPlayer:AddSwarmFlyOrbital(Position)
end

---@param Type TrinketType
---@param FirstTimePickingUp? boolean @default: true
function EntityPlayer:AddTrinket(Type, FirstTimePickingUp)
end

---@param Collectible CollectibleType
---@param Position Vector
---@param AdjustOrbitLayer? boolean @default: false
---@param DontUpdate? boolean @default: false
---@return EntityFamiliar
function EntityPlayer:AddWisp(Collectible, Position, AdjustOrbitLayer, DontUpdate)
end

function EntityPlayer:AnimateAppear()
end

---@param ID Card
---@param AnimName? string @default: "Pickup"
function EntityPlayer:AnimateCard(ID, AnimName)
end

---@param Collectible CollectibleType
---@param AnimName? string @default: "Pickup"
---@param SpriteAnimName? string @default: "PlayerPickupSparkle"
function EntityPlayer:AnimateCollectible(Collectible, AnimName, SpriteAnimName)
end

function EntityPlayer:AnimateHappy()
end

function EntityPlayer:AnimateLightTravel()
end

---@param sprite Sprite
---@param HideShadow? boolean @default: false
---@param AnimName? string @default: "Pickup"
function EntityPlayer:AnimatePickup(sprite, HideShadow, AnimName)
end

---@param Pill PillColor
---@param AnimName? string @default: "Pickup"
function EntityPlayer:AnimatePill(Pill, AnimName)
end

function EntityPlayer:AnimatePitfallIn()
end

function EntityPlayer:AnimatePitfallOut()
end

function EntityPlayer:AnimateSad()
end

---@param Up? boolean
function EntityPlayer:AnimateTeleport(Up)
end

function EntityPlayer:AnimateTrapdoor()
end

---@param Trinket TrinketType
---@param AnimName? string @default: "Pickup"
---@param SpriteAnimName? string @default: "PlayerPickupSparkle"
function EntityPlayer:AnimateTrinket(Trinket, AnimName, SpriteAnimName)
end

---@return boolean
function EntityPlayer:AreControlsEnabled()
end

---@return boolean
function EntityPlayer:AreOpposingShootDirectionsPressed()
end

---@param Type? CollectibleType @default: CollectibleType.COLLECTIBLE_NULL
---@return boolean
function EntityPlayer:CanAddCollectible(Type)
end

---@return boolean
function EntityPlayer:CanPickBlackHearts()
end

---@return boolean
function EntityPlayer:CanPickBoneHearts()
end

---@return boolean
function EntityPlayer:CanPickGoldenHearts()
end

---@return boolean
function EntityPlayer:CanPickRedHearts()
end

---@return boolean
function EntityPlayer:CanPickRottenHearts()
end

---@return boolean
function EntityPlayer:CanPickSoulHearts()
end

---@return boolean
function EntityPlayer:CanPickupItem()
end

---@return boolean
function EntityPlayer:CanShoot()
end

---@return boolean
function EntityPlayer:CanTurnHead()
end

---@param PlayerType PlayerType
function EntityPlayer:ChangePlayerType(PlayerType)
end

---@param FamiliarVariant integer
---@param TargetCount integer
---@param rng RNG
---@param SourceItemConfigItem? ItemConfig_Item @default: nil
---@param FamiliarSubType? integer @default: -1
function EntityPlayer:CheckFamiliar(FamiliarVariant, TargetCount, rng, SourceItemConfigItem, FamiliarSubType)
end

function EntityPlayer:ClearCostumes()
end

function EntityPlayer:ClearDeadEyeCharge()
end

function EntityPlayer:ClearTemporaryEffects()
end

---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
function EntityPlayer:DischargeActiveItem(ActiveSlot)
end

---@param Luck integer
function EntityPlayer:DonateLuck(Luck)
end

---@param Direction Vector
function EntityPlayer:DoZitEffect(Direction)
end

---@param PocketNum integer
---@param Pos Vector
function EntityPlayer:DropPocketItem(PocketNum, Pos)
end

---@param DropPos Vector
---@param ReplaceTick? boolean
function EntityPlayer:DropTrinket(DropPos, ReplaceTick)
end

function EntityPlayer:EvaluateItems()
end

---@param Position Vector
---@param Velocity Vector
---@param Source? Entity @default: nil
---@return EntityBomb
function EntityPlayer:FireBomb(Position, Velocity, Source)
end

---@param Direction Vector
---@param Source? Entity @default: nil
---@param DamageMultiplier? number @default: 1
---@return EntityLaser
function EntityPlayer:FireBrimstone(Direction, Source, DamageMultiplier)
end

---@param Angle number
---@param Parent Entity
---@return EntityLaser
function EntityPlayer:FireDelayedBrimstone(Angle, Parent)
end

---@param Parent Entity
---@param RotationOffset? number @default: 0
---@param CantOverwrite? boolean @default: false
---@param SubType? integer @default: 0
---@param Variant? integer @default: 0
---@return EntityKnife
function EntityPlayer:FireKnife(Parent, RotationOffset, CantOverwrite, SubType, Variant)
end

---@param Position Vector
---@param Velocity Vector
---@param CanBeEye? boolean @default: true
---@param NoTractorBeam? boolean @default: false
---@param CanTriggerStreakEnd? boolean @default: true
---@param Source? Entity @default: nil
---@param DamageMultiplier? number @default: 1
---@return EntityTear
function EntityPlayer:FireTear(Position, Velocity, CanBeEye, NoTractorBeam, CanTriggerStreakEnd, Source, DamageMultiplier)
end

---@param Position Vector
---@param OffsetID LaserOffset
---@param Direction Vector
---@param LeftEye? boolean
---@param OneHit? boolean @default: false
---@param Source? Entity @default: nil
---@param DamageMultiplier? number @default: 1
---@return EntityLaser
function EntityPlayer:FireTechLaser(Position, OffsetID, Direction, LeftEye, OneHit, Source, DamageMultiplier)
end

---@param Position Vector
---@param Direction Vector
---@param Radius number
---@param Source? Entity @default: nil
---@param DamageMultiplier? number @default: 1
---@return EntityLaser
function EntityPlayer:FireTechXLaser(Position, Direction, Radius, Source, DamageMultiplier)
end

---@return boolean
function EntityPlayer:FlushQueueItem()
end

---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@param Force? integer @default: false
---@return boolean
function EntityPlayer:FullCharge(ActiveSlot, Force)
end

---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@return integer
function EntityPlayer:GetActiveCharge(ActiveSlot)
end

---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@return CollectibleType
function EntityPlayer:GetActiveItem(ActiveSlot)
end

---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@return integer
function EntityPlayer:GetActiveSubCharge(ActiveSlot)
end

---@return Entity
function EntityPlayer:GetActiveWeaponEntity()
end

---@return Vector
function EntityPlayer:GetAimDirection()
end

---@return BabySubType
function EntityPlayer:GetBabySkin()
end

---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@return integer
function EntityPlayer:GetBatteryCharge(ActiveSlot)
end

---@return integer
function EntityPlayer:GetBlackHearts()
end

---@return integer
function EntityPlayer:GetBloodCharge()
end

---@return SkinColor
function EntityPlayer:GetBodyColor()
end

---@return integer
function EntityPlayer:GetBombFlags()
end

---@param TearFlags TearFlags
---@param ForceSmallBomb? boolean
---@return BombVariant
function EntityPlayer:GetBombVariant(TearFlags, ForceSmallBomb)
end

---@return integer
function EntityPlayer:GetBoneHearts()
end

---@return integer
function EntityPlayer:GetBrokenHearts()
end

---@param SlotId integer
---@return Card
function EntityPlayer:GetCard(SlotId)
end

---@param ID Card
---@return RNG
function EntityPlayer:GetCardRNG(ID)
end

---@return integer
function EntityPlayer:GetCollectibleCount()
end

---@param Type CollectibleType
---@param OnlyCountTrueItems? boolean @default: false
---@return integer
function EntityPlayer:GetCollectibleNum(Type, OnlyCountTrueItems)
end

---@param ID CollectibleType
---@return RNG
function EntityPlayer:GetCollectibleRNG(ID)
end

---@param NullFrameName string
---@param HeadScale boolean
---@param Direction Vector
---@return Vector
function EntityPlayer:GetCostumeNullPos(NullFrameName, HeadScale, Direction)
end

---@return integer
function EntityPlayer:GetDamageCooldown()
end

---@return integer
function EntityPlayer:GetEffectiveMaxHearts()
end

---@return integer
function EntityPlayer:GetEffectiveBloodCharge()
end

---@return integer
function EntityPlayer:GetEffectiveSoulCharge()
end

---@return TemporaryEffects
function EntityPlayer:GetEffects()
end

---@return integer
function EntityPlayer:GetEternalHearts()
end

---@return integer
function EntityPlayer:GetExtraLives()
end

---@return Direction
function EntityPlayer:GetFireDirection()
end

---@return Vector
function EntityPlayer:GetFlyingOffset()
end

---@return integer
function EntityPlayer:GetGoldenHearts()
end

---@return number
function EntityPlayer:GetGreedDonationBreakChance()
end

---@return SkinColor
function EntityPlayer:GetHeadColor()
end

---@return Direction
function EntityPlayer:GetHeadDirection()
end

---@return integer
function EntityPlayer:GetHeartLimit()
end

---@return integer
function EntityPlayer:GetHearts()
end

---@return CollectibleType
function EntityPlayer:GetItemState()
end

---@return integer
function EntityPlayer:GetJarFlies()
end

---@return integer
function EntityPlayer:GetJarHearts()
end

---@param ID LaserOffset
---@param Direction Vector
---@return Vector
function EntityPlayer:GetLaserOffset(ID, Direction)
end

---@return integer
function EntityPlayer:GetLastActionTriggers()
end

---@return integer
function EntityPlayer:GetLastDamageFlags()
end

---@return EntityRef
function EntityPlayer:GetLastDamageSource()
end

---@return Vector
function EntityPlayer:GetLastDirection()
end

---@return EntityPlayer
function EntityPlayer:GetMainTwin()
end

---@return integer
function EntityPlayer:GetMaxHearts()
end

---@return integer
function EntityPlayer:GetMaxPocketItems()
end

---@return integer
function EntityPlayer:GetMaxPoopMana()
end

---@return integer
function EntityPlayer:GetMaxTrinkets()
end

---@return CollectibleType
function EntityPlayer:GetModelingClayEffect()
end

---@return Direction
function EntityPlayer:GetMovementDirection()
end

---@return Vector
function EntityPlayer:GetMovementInput()
end

---@return Vector
function EntityPlayer:GetMovementJoystick()
end

---@return Vector
function EntityPlayer:GetMovementVector()
end

---@param WeaponType? WeaponType @default: WeaponType.WEAPON_TEARS
---@return userdata @MultiShotParams
function EntityPlayer:GetMultiShotParams(WeaponType)
end

---@param LoopIndex integer
---@param Weapon WeaponType
---@param ShotDirection Vector
---@param ShotSpeed number
---@param params userdata @MultiShotParams
---@return PosVel
function EntityPlayer:GetMultiShotPositionVelocity(LoopIndex, Weapon, ShotDirection, ShotSpeed, params)
end

---@return string
function EntityPlayer:GetName()
end

---@return Entity
function EntityPlayer:GetNPCTarget()
end

---@return integer
function EntityPlayer:GetNumBlueFlies()
end

---@return integer
function EntityPlayer:GetNumBlueSpiders()
end

---@return integer
function EntityPlayer:GetNumBombs()
end

---@return integer
function EntityPlayer:GetNumCoins()
end

---@return integer
function EntityPlayer:GetNumGigaBombs()
end

---@return integer
function EntityPlayer:GetNumKeys()
end

---@return EntityPlayer
function EntityPlayer:GetOtherTwin()
end

---@param SlotId integer
---@return PillColor
function EntityPlayer:GetPill(SlotId)
end

---@param ID PillEffect
---@return RNG
function EntityPlayer:GetPillRNG(ID)
end

---@return PlayerType
function EntityPlayer:GetPlayerType()
end

---@param SlotId integer
---@return userdata @PlayerPocketItem
function EntityPlayer:GetPocketItem(SlotId)
end

---@return integer
function EntityPlayer:GetPoopMana()
end

---@param Position integer
---@return PoopSpellType
function EntityPlayer:GetPoopSpell(Position)
end

---@return Vector
function EntityPlayer:GetRecentMovementVector()
end

---@return integer
function EntityPlayer:GetRottenHearts()
end

---@return Vector
function EntityPlayer:GetShootingInput()
end

---@return Vector
function EntityPlayer:GetShootingJoystick()
end

---@return number
function EntityPlayer:GetSmoothBodyRotation()
end

---@return integer
function EntityPlayer:GetSoulHearts()
end

---@return integer
function EntityPlayer:GetSoulCharge()
end

---@return EntityPlayer
function EntityPlayer:GetSubPlayer()
end

---@param WeaponType WeaponType
---@param DamageScale? number @default: 1
---@param TearDisplacement? integer @default: 1
---@param Source? Entity @default: nil
---@return TearParams
function EntityPlayer:GetTearHitParams(WeaponType, DamageScale, TearDisplacement, Source)
end

---@param ShotDirection Vector
---@return Vector
function EntityPlayer:GetTearMovementInheritance(ShotDirection)
end

---@return number
function EntityPlayer:GetTearPoisonDamage()
end

---@return integer
function EntityPlayer:GetTearRangeModifier()
end

---@return integer
function EntityPlayer:GetTotalDamageTaken()
end

---@return Entity
function EntityPlayer:GetTractorBeam()
end

---@param TrinketIndex integer
---@return TrinketType
function EntityPlayer:GetTrinket(TrinketIndex)
end

---@param TrinketID TrinketType
---@return integer
function EntityPlayer:GetTrinketMultiplier(TrinketID)
end

---@param TrinketID TrinketType
---@return RNG
function EntityPlayer:GetTrinketRNG(TrinketID)
end

---@return Vector
function EntityPlayer:GetVelocityBeforeUpdate()
end

---@return CollectibleType
function EntityPlayer:GetZodiacEffect()
end

---@param Type CollectibleType
---@param IgnoreModifiers? boolean @default: false
---@return boolean
function EntityPlayer:HasCollectible(Type, IgnoreModifiers)
end

---@return boolean
function EntityPlayer:HasCurseMistEffect()
end

---@return boolean
function EntityPlayer:HasFullHearts()
end

---@return boolean
function EntityPlayer:HasFullHeartsAndSoulHearts()
end

---@return boolean
function EntityPlayer:HasGoldenBomb()
end

---@return boolean
function EntityPlayer:HasGoldenKey()
end

---@param Flags? DamageFlag @default: 0
---@return boolean
function EntityPlayer:HasInvincibility(Flags)
end

---@param Form PlayerForm
---@return boolean
function EntityPlayer:HasPlayerForm(Form)
end

---@return boolean
function EntityPlayer:HasTimedItem()
end

---@param Type TrinketType
---@param IgnoreModifiers? boolean @default: false
---@return boolean
function EntityPlayer:HasTrinket(Type, IgnoreModifiers)
end

---@param WeaponType WeaponType
---@return boolean
function EntityPlayer:HasWeaponType(WeaponType)
end

function EntityPlayer:InitBabySkin()
end

---@param Heart integer
---@return boolean
function EntityPlayer:IsBlackHeart(Heart)
end

---@param heart integer
---@return boolean
function EntityPlayer:IsBoneHeart(heart)
end

---@return boolean
function EntityPlayer:IsCoopGhost()
end

---@return boolean
function EntityPlayer:IsExtraAnimationFinished()
end

---@return boolean
function EntityPlayer:IsFullSpriteRendering()
end

---@return boolean
function EntityPlayer:IsHeldItemVisible()
end

---@return boolean
function EntityPlayer:IsHoldingItem()
end

---@return boolean
function EntityPlayer:IsItemQueueEmpty()
end

---@return boolean
function EntityPlayer:IsP2Appearing()
end

---@param Position Vector
---@return boolean
function EntityPlayer:IsPosInSpotLight(Position)
end

---@return boolean
function EntityPlayer:IsSubPlayer()
end

---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@return boolean
function EntityPlayer:NeedsCharge(ActiveSlot)
end

---@param Animation string
function EntityPlayer:PlayExtraAnimation(Animation)
end

---@param Animation string
function EntityPlayer:QueueExtraAnimation(Animation)
end

---@param Item ItemConfig_Item
---@param Charge? integer @default: 0
---@param Touched? boolean @default: false
---@param Golden? boolean @default: false
---@param VarData? integer @default: 0
function EntityPlayer:QueueItem(Item, Charge, Touched, Golden, VarData)
end

---@param BlackHeart integer
function EntityPlayer:RemoveBlackHeart(BlackHeart)
end

function EntityPlayer:RemoveBlueFly()
end

function EntityPlayer:RemoveBlueSpider()
end

---@param Type CollectibleType
---@param IgnoreModifiers? boolean @default: false
---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
---@param RemoveFromPlayerForm? boolean @default: true
function EntityPlayer:RemoveCollectible(Type, IgnoreModifiers, ActiveSlot, RemoveFromPlayerForm)
end

---@param Item ItemConfig_Item
function EntityPlayer:RemoveCostume(Item)
end

function EntityPlayer:RemoveCurseMistEffect()
end

function EntityPlayer:RemoveGoldenBomb()
end

function EntityPlayer:RemoveGoldenKey()
end

function EntityPlayer:RemoveSkinCostume()
end

---@param position Vector
function EntityPlayer:RenderBody(position)
end

---@param position Vector
function EntityPlayer:RenderGlow(position)
end

---@param position Vector
function EntityPlayer:RenderHead(position)
end

---@param position Vector
function EntityPlayer:RenderTop(position)
end

---@param Item ItemConfig_Item
---@param SpritePath string
---@param SpriteId integer
function EntityPlayer:ReplaceCostumeSprite(Item, SpritePath, SpriteId)
end

function EntityPlayer:ResetDamageCooldown()
end

function EntityPlayer:ResetItemState()
end

function EntityPlayer:RespawnFamiliars()
end

function EntityPlayer:Revive()
end

---@param Charge integer
---@param ActiveSlot? ActiveSlot @default: ActiveSlot.SLOT_PRIMARY
function EntityPlayer:SetActiveCharge(Charge, ActiveSlot)
end

---@param Amount integer
function EntityPlayer:SetBloodCharge(Amount)
end

---@param SlotId integer
---@param ID Card
function EntityPlayer:SetCard(SlotId, ID)
end

function EntityPlayer:SetFullHearts()
end

---@param DamageCooldown integer
function EntityPlayer:SetMinDamageCooldown(DamageCooldown)
end

---@param SlotId integer
---@param Pill PillColor
function EntityPlayer:SetPill(SlotId, Pill)
end

---@param Type CollectibleType
---@param Slot? ActiveSlot
---@param KeepInPools? boolean
function EntityPlayer:SetPocketActiveItem(Type, Slot, KeepInPools)
end

---@param Cooldown integer
function EntityPlayer:SetShootingCooldown(Cooldown)
end

---@param Amount integer
function EntityPlayer:SetSoulCharge(Amount)
end

---@param TrapDoor GridEntity
function EntityPlayer:SetTargetTrapDoor(TrapDoor)
end

---@param Direction Vector
function EntityPlayer:ShootRedCandle(Direction)
end

---@param Timeout integer
---@return EntityLaser
function EntityPlayer:SpawnMawOfVoid(Timeout)
end

function EntityPlayer:StopExtraAnimation()
end

function EntityPlayer:SwapActiveItems()
end

---@param Position Vector
---@param Target Vector
---@return Entity
function EntityPlayer:ThrowBlueSpider(Position, Target)
end

---@param Subtype integer
---@param Position Vector
---@param Target? Vector @default: Vector.Zero
---@return EntityFamiliar
function EntityPlayer:ThrowFriendlyDip(Subtype, Position, Target)
end

---@param Velocity Vector
---@return Entity
function EntityPlayer:ThrowHeldEntity(Velocity)
end

---@param Type? CollectibleType @default: CollectibleType.COLLECTIBLE_NULL
---@param Charge? integer @default: 0
function EntityPlayer:TriggerBookOfVirtues(Type, Charge)
end

---@param Entity Entity
---@return boolean
function EntityPlayer:TryHoldEntity(Entity)
end

---@param Type TrinketType
---@return boolean
function EntityPlayer:TryHoldTrinket(Type)
end

---@param Collectible CollectibleType
---@param KeepPersistent? boolean
function EntityPlayer:TryRemoveCollectibleCostume(Collectible, KeepPersistent)
end

---@param NullId NullItemID
function EntityPlayer:TryRemoveNullCostume(NullId)
end

---@param Type TrinketType
---@return boolean
function EntityPlayer:TryRemoveTrinket(Type)
end

---@param Trinket TrinketType
function EntityPlayer:TryRemoveTrinketCostume(Trinket)
end

---@return boolean
function EntityPlayer:TryUseKey()
end

function EntityPlayer:UpdateCanShoot()
end

---@param Item CollectibleType
---@param UseFlags? UseFlag @default: 0
---@param Slot? ActiveSlot @default: -1
---@overload fun(self: EntityPlayer, Item: CollectibleType, ShowAnim?: boolean, KeepActiveItem?: boolean, AllowNonMainPlayer?: boolean, ToAddCostume?: boolean, Slot?: ActiveSlot)
function EntityPlayer:UseActiveItem(Item, UseFlags, Slot)
end

---@param ID Card
---@param UseFlags? UseFlag @default: 0
function EntityPlayer:UseCard(ID, UseFlags)
end

---@param ID PillEffect
---@param PillColor PillColor
---@param UseFlags? UseFlag @default: 0
function EntityPlayer:UsePill(ID, PillColor, UseFlags)
end

---@return boolean
function EntityPlayer:WillPlayerRevive()
end

---@param type PoopSpellType
function EntityPlayer:UsePoopSpell(type)
end



---@class EntityProjectile : Entity
---@field Acceleration number
---@field ChangeFlags integer
---@field ChangeTimeout integer
---@field ChangeVelocity number
---@field CurvingStrength number
---@field Damage number
---@field DepthOffset number
---@field FallingAccel number
---@field FallingSpeed number
---@field Height number
---@field HomingStrength number
---@field ProjectileFlags ProjectileFlags
---@field Scale number
---@field WiggleFrameOffset integer
local EntityProjectile = {}

---@param Flags integer
function EntityProjectile:AddChangeFlags(Flags)
end

---@param Value number
function EntityProjectile:AddFallingAccel(Value)
end

---@param Value number
function EntityProjectile:AddFallingSpeed(Value)
end

---@param Value number
function EntityProjectile:AddHeight(Value)
end

---@param Flags integer
function EntityProjectile:AddProjectileFlags(Flags)
end

---@param Value number
function EntityProjectile:AddScale(Value)
end

---@param Flags integer
function EntityProjectile:ClearProjectileFlags(Flags)
end

---@param Flags integer
---@return boolean
function EntityProjectile:HasProjectileFlags(Flags)
end



---@class EntityTear : Entity
---@field BaseDamage number @const
---@field BaseScale number @const
---@field Bounced boolean
---@field CanTriggerStreakEnd boolean
---@field ContinueVelocity Vector
---@field FallingAcceleration number
---@field FallingSpeed number
---@field Height number
---@field HomingFriction number
---@field KnockbackMultiplier number
---@field ParentOffset Vector
---@field PosDisplacement Vector @const
---@field Rotation number
---@field Scale number
---@field StickDiff Vector
---@field StickTarget Entity
---@field StickTimer integer
---@field TearFlags integer @TearFlags
---@field TearIndex integer @const
---@field WaitFrames integer
local EntityTear = {}

---@param Flags integer @TearFlags
function EntityTear:AddTearFlags(Flags)
end

---@param NewVariant integer
function EntityTear:ChangeVariant(NewVariant)
end

---@param Flags integer @TearFlags
function EntityTear:ClearTearFlags(Flags)
end

---@param Flags integer @TearFlags
---@return boolean
function EntityTear:HasTearFlags(Flags)
end

function EntityTear:ResetSpriteScale()
end

---@param Intensity number
function EntityTear:SetDeadEyeIntensity(Intensity)
end

---@param Multiplier number
function EntityTear:SetKnockbackMultiplier(Multiplier)
end

---@param Offset Vector
function EntityTear:SetParentOffset(Offset)
end

---@param Value integer
function EntityTear:SetWaitFrames(Value)
end


---@class EntityPtr
---@field Ref Entity
local EntityPtr = {}

---@param Entity Entity
---@return EntityPtr
function _G.EntityPtr(Entity)
end

---@param ref Entity
function EntityPtr:SetReference(ref)
end

---@class EntityRef
---@field Entity Entity
---@field IsCharmed boolean
---@field IsFriendly boolean
---@field Position Vector
---@field SpawnerType integer @EntityType
---@field SpawnerVariant integer
---@field Type integer @EntityType
---@field Variant integer

---@param Entity Entity
---@return EntityRef
function EntityRef(Entity)

end

---@enum ModCallbacks
ModCallbacks = {
	MC_NPC_UPDATE = 0,			-- Callback is a method that takes (EntityNPC). Called after an NPC is updated. When adding callback, specify an EntityType so it is only called for entities of that type.
	MC_POST_UPDATE = 1,			-- Callback is a method with no arguments. Called after game update.
	MC_POST_RENDER = 2,			-- Callback is a method with no arguments. Called after game render.
	MC_USE_ITEM = 3,			-- Callback is a method that takes (CollectibleType, RNG). Return true to show the "use item" animation, otherwise false. Called when a custom active item is used, after discharging it. When adding callback, specify a CollectibleType to only respond to one custom active. The item RNG allows for the item's random events to be seeded.
	MC_POST_PEFFECT_UPDATE = 4,	-- Callback is a method that takes (EntityPlayer). Called for each player, each frame, after the player evaluates the effects of items that must be constantly evaluated.
	MC_USE_CARD = 5,			-- Callback is a method that takes (Card). Called when a custom card is used. When adding callback, specify a Card ID to only respond to one card type.
	MC_FAMILIAR_UPDATE = 6,		-- Callback is a method that takes (Entity_Familiar). Called every frame for each custom familiar. When adding callback, specify a Variant to restrict calls to a specific familiar.
	MC_FAMILIAR_INIT = 7,		-- Callback is a method that takes (Entity_Familiar). Called just after a custom familiar is initialized. When adding callback, specify a Variant to restrict calls to a specific familiar.
	
	-- Callback is a method that takes (EntityPlayer, CacheFlag).
	-- Called one or more times when a player's stats must be re-evaluated, such as after picking up an item, using certain pills, manually calling EvaluateItems on EntityPlayer.
	-- Use this to let custom items change the player's stats, familiars, flying, weapons, etc.
	-- Items tell the game which stats they affect using cache values in items.xml. Then the callback should respond to the CacheFlag by setting the corresponding player stat.
	-- Other items' stat modifiers, multipliers, etc are applied before this callback is called.
	MC_EVALUATE_CACHE = 8,
	
	MC_POST_PLAYER_INIT = 9,	-- Callback is a method that takes (EntityPlayer). Called after the player is initialized.
	MC_USE_PILL = 10,			-- Callback is a method that takes (PillEffect). Called when a custom pill is used. When adding callback, specify a PillEffect ID to only respond to one pill effect.
	
	-- Callback is a method that takes (TookDamage : Entity, DamageAmount : number, DamageFlag : number (bit flags from DamageFlag enumeration), DamageSource : EntityRef, DamageCountdownFrames : number).
	-- Return true or nil if the entity or player should sustain the damage, otherwise false to ignore it.
	-- If the entity is an EntityPlayer, the DamageAmount is the integer number of half-hearts of damage that the player will take. Otherwise, DamageAmount is a number of hit points.
	-- Called before new damage is applied. A DAMAGE_COUNTDOWN flag means the entity will ignore any other DAMAGE_COUNTDOWN hits for the duration specified.
	-- When adding callback, specify an EntityType to respond to only damage taken by that entity type.
	MC_ENTITY_TAKE_DMG = 11,
	MC_POST_CURSE_EVAL = 12, -- Callback is a method that takes (integer Curses). Curses is a bitmask containing current curses. Called after Level applied it's curses. Returns the new curse bitmask. Use Isaac.GetCurseIdByName to get a custom curse
	
	-- Callback that takes (Entity, InputHook, ButtonAction). It is called when game/game entities wants to read action input.
	-- Entity can be nil if the input is read not from an entity Class. InputHook and ButtonActions are enumerations. Return nil if you don't want to overwrite the input or value otherwise.
	-- Return value can be bool if it's a Is__ hook or float if it's an Get__Value hook. Float values should be in range of 0.0 and 1.0
	MC_INPUT_ACTION = 13,
	MC_LEVEL_GENERATOR = 14, -- WIP, isn't active atm
	MC_POST_GAME_STARTED = 15, -- (bool) - It's started from a savestate
	MC_POST_GAME_END = 16, -- (bool) - Gameover
	MC_PRE_GAME_EXIT = 17, -- (bool) - ShouldSave
	MC_POST_NEW_LEVEL = 18, -- This triggers after new room!
	MC_POST_NEW_ROOM = 19,
	MC_GET_CARD = 20, -- (RNG& rng, integer CurrentCard, bool Playing, bool Runes, bool OnlyRunes) - This is used for Card Pools. Because not all cards have the same chance to spawn, use RNG for seeded random and return your card id (if you don't want to change the current card, return CurrentCard or nil). If desired Playing (can include playing cards), Runes (can include runes), OnlyRunes (only return runes) filter can be used to make your selection.
	MC_GET_SHADER_PARAMS = 21, -- (string shaderName) - returns a table containing a key -> value pair for custom shader parameters
	MC_EXECUTE_CMD = 22, -- (string cmd, string params) - returns a string separated by \n (newline) per output line
	
	MC_PRE_USE_ITEM = 23, -- (CollectibleType ItemId, RNG& ItemRng) - return true if the item can't be used / processed inside the script, other values or no value will continue the routine
	MC_PRE_ENTITY_SPAWN = 24, -- (EntityType Type, integer Variant, integer SubType, const Vector2 Position, const Vector2 Velocity, const Entity Spawner, integer Seed), optional return - an array table with new values { Type, Variant, Subtype, Seed }
	MC_POST_FAMILIAR_RENDER = 25, -- (EntityFamiliar Fam, Vector Offset)
	MC_PRE_FAMILIAR_COLLISION = 26, -- (EntityFamiliar Fam, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_NPC_INIT = 27, -- (EntityNPC NPC)
	MC_POST_NPC_RENDER = 28, -- (EntityNPC NPC, Vector Offset)
	MC_POST_NPC_DEATH = 29, -- (EntityNPC NPC)
	MC_PRE_NPC_COLLISION = 30, -- (EntityNPC NPC, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_PLAYER_UPDATE = 31, -- (EntityPlayer Player)
	MC_POST_PLAYER_RENDER = 32, -- (EntityPlayer Player, Vector Offset)
	MC_PRE_PLAYER_COLLISION = 33, -- (EntityPlayer Player, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_PICKUP_INIT = 34, -- (EntityPickup Pickup)
	MC_POST_PICKUP_UPDATE = 35, -- (EntityPickup Pickup)
	MC_POST_PICKUP_RENDER = 36, -- (EntityPickup Pickup, Vector Offset)
	MC_POST_PICKUP_SELECTION = 37, -- (EntityPickup Pickup, integer Variant, integer Subtype), return nil or an array table with new Variant and Subtype - return { Variant, Subtype }
	MC_PRE_PICKUP_COLLISION = 38, -- (EntityPickup Pickup, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_TEAR_INIT = 39, -- (EntityTear Pickup)
	MC_POST_TEAR_UPDATE = 40, -- (EntityTear Pickup)
	MC_POST_TEAR_RENDER = 41, -- (EntityTear Pickup, Vector Offset)
	MC_PRE_TEAR_COLLISION = 42, -- (EntityTear Tear, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_PROJECTILE_INIT = 43, -- (EntityProjectile Projectile)
	MC_POST_PROJECTILE_UPDATE = 44, -- (EntityProjectile Projectile)
	MC_POST_PROJECTILE_RENDER = 45, -- (EntityProjectile Projectile, Vector Offset)
	MC_PRE_PROJECTILE_COLLISION = 46, -- (EntityProjectile Projectile, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_LASER_INIT = 47, -- (EntityLaser Laser)
	MC_POST_LASER_UPDATE = 48, -- (EntityLaser Laser)
	MC_POST_LASER_RENDER = 49, -- (EntityLaser Laser, Vector Offset)
	MC_POST_KNIFE_INIT = 50, -- (EntityKnife Knife)
	MC_POST_KNIFE_UPDATE = 51, -- (EntityKnife Knife)
	MC_POST_KNIFE_RENDER = 52, -- (EntityKnife Knife, Vector Offset)
	MC_PRE_KNIFE_COLLISION = 53, -- (EntityKnife Knife, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_EFFECT_INIT = 54, -- (EntityEffect Effect)
	MC_POST_EFFECT_UPDATE = 55, -- (EntityEffect Effect)
	MC_POST_EFFECT_RENDER = 56, -- (EntityEffect Effect, Vector Offset)
	MC_POST_BOMB_INIT = 57, -- (EntityBomb Bomb)
	MC_POST_BOMB_UPDATE = 58, -- (EntityBomb Bomb)
	MC_POST_BOMB_RENDER = 59, -- (EntityBomb Bomb, Vector Offset)
	MC_PRE_BOMB_COLLISION = 60, -- (EntityBomb Bomb, Entity Collider, boolean Low), returns true/false to ignore collision code (true to respond to collision, false to not), or nil to continue the internal code.
	MC_POST_FIRE_TEAR = 61, -- (EntityTear Tear)
	MC_PRE_GET_COLLECTIBLE = 62, -- (integer PoolType, boolean Decrease, integer Seed), evaluates before special events
	MC_POST_GET_COLLECTIBLE = 63, -- (CollectibleType SelectedCollectible, integer PoolType, boolean Decrease, integer Seed)
	MC_GET_PILL_COLOR = 64, -- (PillColor SelectedPill, integer Seed)
	MC_GET_PILL_EFFECT = 65, -- (PillEffect SelectedPillEffect, PillColor PillColor)
	MC_GET_TRINKET = 66, -- (TrinketType SelectedTrinket, RNG& TrinketRNG)
	MC_POST_ENTITY_REMOVE = 67, -- (Entity Ent)
	MC_POST_ENTITY_KILL = 68, -- (Entity Ent)
	MC_PRE_NPC_UPDATE = 69, -- (EntityNPC NPC), returns true if the internal ai should be ignored, false or nil/nothing otherwise
	MC_PRE_SPAWN_CLEAN_AWARD = 70, -- (RNG& Rng, Vector SpawnPos), returns true if the spawn routine should be ignored, false or nil/nothing otherwise
	MC_PRE_ROOM_ENTITY_SPAWN = 71 -- (EntityType Type, integer Variant, integer SubType, integer GridIndex, integer Seed) - This is called when entering a new room, before spawning entities which are part its layout. Grid entities will also trigger this callback and their type will the same as the type used by the gridspawn command. Because of this, effects are assigned the type 999 instead of 1000 in this callback. Optional return: an array table with new values { Type, Variant, Subtype }. Returning a table will override any replacements that might naturally occur i.e. enemy variants.
}

---@enum EntityType
EntityType = {
	ENTITY_NULL = 0,
	ENTITY_PLAYER = 1,     --  1 player
	ENTITY_TEAR = 2,       --  2 tear projectile
	ENTITY_FAMILIAR = 3,   --  3 familiar
	ENTITY_BOMB = 4,   --  4 bomb drop
	ENTITY_PICKUP = 5,     --	 5 pickup item
	ENTITY_SLOT = 6,			 --  6 slot machine
	ENTITY_LASER = 7,      --  7 laser beam
	ENTITY_KNIFE = 8,      --  8 mom's knife
	ENTITY_PROJECTILE = 9, --	 9 blood projectile
	ENTITY_GAPER = 10,      -- 10 enemy: Gaper
	ENTITY_GUSHER = 11,     -- 11 enemy: Gusher
	ENTITY_HORF = 12,       -- 12 enemy: Horf
	ENTITY_FLY = 13,        -- 13 enemy: Fly
	ENTITY_POOTER = 14,     -- 14 enemy: Pooter
	ENTITY_CLOTTY = 15,     -- 15 enemy: Clotty
	ENTITY_MULLIGAN = 16,   -- 16 enemy: Mulligan
	ENTITY_SHOPKEEPER = 17,
	ENTITY_ATTACKFLY = 18,  -- 18 enemy: Attack Fly
	ENTITY_LARRYJR = 19,    -- 19 boss: Larry Jr./Hollow
	ENTITY_MONSTRO = 20,    -- 20 boss: Monstro
	ENTITY_MAGGOT = 21,
	ENTITY_HIVE = 22,
	ENTITY_CHARGER = 23,
	ENTITY_GLOBIN = 24,
	ENTITY_BOOMFLY = 25,
	ENTITY_MAW = 26,
	ENTITY_HOST = 27,
	ENTITY_CHUB = 28,
	ENTITY_HOPPER = 29,     -- 29 enemy: Hopper
	ENTITY_BOIL = 30,	-- 30 enemy: Boil, variants: 1 - Gut, 2 - Sack
	ENTITY_SPITTY = 31,
	ENTITY_BRAIN = 32,
	ENTITY_FIREPLACE = 33,
	ENTITY_LEAPER = 34,
	ENTITY_MRMAW = 35,
	ENTITY_GURDY = 36,
	ENTITY_BABY = 38,
	ENTITY_VIS = 39,
	ENTITY_GUTS = 40,
	ENTITY_KNIGHT = 41,
	ENTITY_STONEHEAD = 42,
	ENTITY_MONSTRO2 = 43,
	ENTITY_POKY = 44,
	ENTITY_MOM = 45,
	ENTITY_SLOTH = 46, -- 46 miniboss: Sloth
	ENTITY_LUST = 47,  -- 47 miniboss: Lust
	ENTITY_WRATH = 48, -- 48 miniboss: Wrath
	ENTITY_GLUTTONY = 49, -- 49 miniboss: Gluttony
	ENTITY_GREED = 50, -- 50 miniboss: Greed
	ENTITY_ENVY = 51,  -- 51 miniboss: Envy
	ENTITY_PRIDE = 52, -- 52 miniboss: Pride
	ENTITY_DOPLE = 53,
	ENTITY_FLAMINGHOPPER = 54, -- 54 enemy: Flaming Hopper
	ENTITY_LEECH = 55,
	ENTITY_LUMP = 56,
	ENTITY_MEMBRAIN = 57, -- 57 enemy: Membrain and Mama Guts
	ENTITY_PARA_BITE = 58,
	ENTITY_FRED = 59,
	ENTITY_EYE = 60,
	ENTITY_SUCKER = 61, -- 61 enemy: Sucker
	ENTITY_PIN = 62,	 -- 62 boss: Pin
	ENTITY_FAMINE = 63,
	ENTITY_PESTILENCE = 64,
	ENTITY_WAR = 65, -- variant 1: Conquest
	ENTITY_DEATH = 66,
	ENTITY_DUKE = 67,	 -- 67 boss: Duke of Flies/Husk
	ENTITY_PEEP = 68,
	ENTITY_LOKI = 69,
	ENTITY_FISTULA_BIG = 71,
	ENTITY_FISTULA_MEDIUM = 72,
	ENTITY_FISTULA_SMALL = 73,
	ENTITY_BLASTOCYST_BIG = 74,	-- 74 boss: Blastocyst
	ENTITY_BLASTOCYST_MEDIUM = 75,
	ENTITY_BLASTOCYST_SMALL = 76,
	ENTITY_EMBRYO = 77,
	ENTITY_MOMS_HEART = 78,
	ENTITY_GEMINI = 79, -- 79 boss: Gemini
	ENTITY_MOTER = 80, -- 80 enemy: Moter
	ENTITY_FALLEN = 81, -- variant 1: Krampus
	ENTITY_HEADLESS_HORSEMAN = 82, -- Headless Horseman
	ENTITY_HORSEMAN_HEAD = 83, -- Head for Headless Horseman
	ENTITY_SATAN = 84,
	ENTITY_SPIDER = 85, -- 85 enemy: Spider
	ENTITY_KEEPER = 86,
	ENTITY_GURGLE = 87,
	ENTITY_WALKINGBOIL = 88, -- ai for WalkingBoil, WalkingGut and WalkingSack
	ENTITY_BUTTLICKER = 89,
	ENTITY_HANGER = 90, -- 90 enemy: Hanger
	ENTITY_SWARMER = 91,
	ENTITY_HEART = 92,
	ENTITY_MASK = 93,
	ENTITY_BIGSPIDER = 94,
	ENTITY_ETERNALFLY = 96, -- 96 enemy: Eternal Fly
	ENTITY_MASK_OF_INFAMY = 97,
	ENTITY_HEART_OF_INFAMY = 98,
	ENTITY_GURDY_JR = 99, -- 99 enemy: Gurdy Jr.
	ENTITY_WIDOW = 100,
	ENTITY_DADDYLONGLEGS = 101,
	ENTITY_ISAAC = 102,

    -- Rebirth enemies
	ENTITY_STONE_EYE = 201,
	ENTITY_CONSTANT_STONE_SHOOTER = 202,
	ENTITY_BRIMSTONE_HEAD = 203,
	ENTITY_MOBILE_HOST = 204,
	ENTITY_NEST = 205,
	ENTITY_BABY_LONG_LEGS = 206,
	ENTITY_CRAZY_LONG_LEGS = 207,
	ENTITY_FATTY = 208,
	ENTITY_FAT_SACK = 209,
	ENTITY_BLUBBER = 210,
	ENTITY_HALF_SACK = 211,
	ENTITY_DEATHS_HEAD = 212,
	ENTITY_MOMS_HAND = 213,
	ENTITY_FLY_L2 = 214,
	ENTITY_SPIDER_L2 = 215,
	ENTITY_SWINGER = 216,
	ENTITY_DIP = 217,
	ENTITY_WALL_HUGGER = 218,
	ENTITY_WIZOOB = 219,
	ENTITY_SQUIRT = 220,
	ENTITY_COD_WORM = 221,
	ENTITY_RING_OF_FLIES = 222,
	ENTITY_DINGA = 223,
	ENTITY_OOB = 224,
	ENTITY_BLACK_MAW = 225,
	ENTITY_SKINNY = 226,
	ENTITY_BONY = 227,
	ENTITY_HOMUNCULUS = 228,
	ENTITY_TUMOR = 229,
	ENTITY_CAMILLO_JR = 230,
	ENTITY_NERVE_ENDING = 231,
	ENTITY_SKINBALL = 232,
	ENTITY_MOM_HEAD = 233,
	ENTITY_ONE_TOOTH = 234,
	ENTITY_GAPING_MAW = 235,
	ENTITY_BROKEN_GAPING_MAW = 236,
	ENTITY_GURGLING = 237,
	ENTITY_SPLASHER = 238,
	ENTITY_GRUB = 239,
	ENTITY_WALL_CREEP = 240,
	ENTITY_RAGE_CREEP = 241,
	ENTITY_BLIND_CREEP = 242,
	ENTITY_CONJOINED_SPITTY = 243,
	ENTITY_ROUND_WORM = 244,
	ENTITY_POOP = 245,
	ENTITY_RAGLING = 246,
	ENTITY_FLESH_MOBILE_HOST = 247,
	ENTITY_PSY_HORF = 248,
	ENTITY_FULL_FLY = 249,
	ENTITY_TICKING_SPIDER = 250,
	ENTITY_BEGOTTEN = 251,
	ENTITY_NULLS = 252,
	ENTITY_PSY_TUMOR = 253,
	ENTITY_FLOATING_KNIGHT = 254,
	ENTITY_NIGHT_CRAWLER = 255,
	--Afterbirth
	ENTITY_DART_FLY = 256,
	ENTITY_CONJOINED_FATTY = 257,
	ENTITY_FAT_BAT = 258,
	ENTITY_IMP = 259,

	--Rebirth bosses
	ENTITY_THE_HAUNT = 260,
	ENTITY_DINGLE = 261,
	ENTITY_MEGA_MAW = 262,
	ENTITY_GATE = 263,
	ENTITY_MEGA_FATTY = 264,
	ENTITY_CAGE = 265,
	ENTITY_MAMA_GURDY = 266,
	ENTITY_DARK_ONE = 267,
	ENTITY_ADVERSARY = 268,
	ENTITY_POLYCEPHALUS = 269,
	ENTITY_MR_FRED = 270,
	ENTITY_URIEL = 271,
	ENTITY_GABRIEL = 272,
	ENTITY_THE_LAMB = 273,
	ENTITY_MEGA_SATAN = 274,
	ENTITY_MEGA_SATAN_2 = 275,

	--Afterbirth #2
	ENTITY_ROUNDY = 276,
	ENTITY_BLACK_BONY = 277,
	ENTITY_BLACK_GLOBIN = 278,
	ENTITY_BLACK_GLOBIN_HEAD = 279,
	ENTITY_BLACK_GLOBIN_BODY = 280,
	ENTITY_SWARM = 281,
	ENTITY_MEGA_CLOTTY = 282,
	ENTITY_BONE_KNIGHT = 283,
	ENTITY_CYCLOPIA = 284,
	ENTITY_RED_GHOST = 285,
	ENTITY_FLESH_DEATHS_HEAD = 286,
	ENTITY_MOMS_DEAD_HAND = 287,
	ENTITY_DUKIE = 288,
	ENTITY_ULCER = 289,
	ENTITY_MEATBALL = 290,
	ENTITY_PITFALL = 291,
	ENTITY_MOVABLE_TNT = 292,
	ENTITY_ULTRA_COIN = 293,
	ENTITY_ULTRA_DOOR = 294,
	ENTITY_CORN_MINE = 295,
	ENTITY_HUSH_FLY = 296,
	ENTITY_HUSH_GAPER = 297,
	ENTITY_HUSH_BOIL = 298,
	ENTITY_GREED_GAPER = 299,
	ENTITY_MUSHROOM = 300,
	ENTITY_POISON_MIND = 301,
	ENTITY_STONEY = 302,
	ENTITY_BLISTER = 303,
	ENTITY_THE_THING = 304,
	ENTITY_MINISTRO = 305,
	ENTITY_PORTAL = 306,

	-- Booster enemies
	ENTITY_TARBOY = 307,
	ENTITY_FISTULOID = 308,
	ENTITY_GUSH = 309,
	ENTITY_LEPER = 310,
	ENTITY_MR_MINE = 311,
	
	-- Afterbirth bosses
	ENTITY_STAIN = 401,
	ENTITY_BROWNIE = 402,
	ENTITY_FORSAKEN = 403,
	ENTITY_LITTLE_HORN = 404,
	ENTITY_RAG_MAN = 405,
	ENTITY_ULTRA_GREED = 406,
	ENTITY_HUSH = 407,
	ENTITY_HUSH_SKINLESS = 408,
	ENTITY_RAG_MEGA = 409,
	ENTITY_SISTERS_VIS = 410,
	ENTITY_BIG_HORN = 411,
	ENTITY_DELIRIUM = 412,
	ENTITY_MATRIARCH = 413,
	
	-- Repentance
	ENTITY_BONE_WORM = 801,
	ENTITY_BLOOD_PUPPY = 802,
	
	ENTITY_QUAKE_GRIMACE = 804,
	ENTITY_BISHOP = 805,
	ENTITY_BUBBLES = 806,
	ENTITY_WRAITH = 807,
	ENTITY_WILLO = 808,
	ENTITY_BOMB_GRIMACE = 809,
	ENTITY_SMALL_LEECH = 810,
	ENTITY_DEEP_GAPER = 811,
	ENTITY_SUB_HORF = 812,
	ENTITY_BLURB = 813,
	ENTITY_STRIDER = 814,
	ENTITY_FISSURE = 815,
	ENTITY_POLTY = 816,
	ENTITY_PREY = 817,
	ENTITY_ROCK_SPIDER = 818,
	ENTITY_FLY_BOMB = 819,
	ENTITY_DANNY = 820,
	ENTITY_BLASTER = 821,
	ENTITY_BOUNCER = 822,
	ENTITY_QUAKEY = 823,
	ENTITY_GYRO = 824,
	ENTITY_FIRE_WORM = 825,
	ENTITY_HARDY = 826,
	ENTITY_FACELESS = 827,
	ENTITY_NECRO = 828,
	ENTITY_MOLE = 829,
	ENTITY_BIG_BONY = 830,
	ENTITY_GUTTED_FATTY = 831,
	ENTITY_EXORCIST = 832,
	ENTITY_CANDLER = 833,
	ENTITY_WHIPPER = 834,
	ENTITY_PEEPER_FATTY = 835,
	ENTITY_VIS_VERSA = 836,
	ENTITY_HENRY = 837,
	ENTITY_WILLO_L2 = 838,
	
	ENTITY_PON = 840,
	ENTITY_REVENANT = 841,
	
	
	ENTITY_BOMBGAGGER = 844,
	ENTITY_GAPER_L2 = 850,
	ENTITY_TWITCHY = 851,
	ENTITY_SPIKEBALL = 852,
	ENTITY_SMALL_MAGGOT = 853,
	ENTITY_ADULT_LEECH = 854,
	ENTITY_CHARGER_L2 = 855,
	ENTITY_GASBAG = 856,
	ENTITY_COHORT = 857,
	
	ENTITY_FLOATING_HOST = 859,
	ENTITY_UNBORN = 860,
	ENTITY_PUSTULE = 861,
	ENTITY_CYST = 862,
	ENTITY_MORNINGSTAR = 863,
	ENTITY_MOCKULUS = 864,
	ENTITY_EVIS = 865,
	ENTITY_DARK_ESAU = 866,
	ENTITY_MOTHERS_SHADOW = 867,
	ENTITY_ARMYFLY = 868,
	ENTITY_MIGRAINE = 869,
	ENTITY_DRIP = 870,
	ENTITY_SPLURT = 871,
	ENTITY_CLOGGY = 872,
	ENTITY_FLY_TRAP = 873,
	ENTITY_FARTIGAN = 874,
	ENTITY_POOT_MINE = 875,
	ENTITY_DUMP = 876,
	ENTITY_GRUDGE = 877,
	ENTITY_BUTT_SLICKER = 878,
	ENTITY_BLOATY = 879,
	ENTITY_FLESH_MAIDEN = 880,
	ENTITY_NEEDLE = 881,
	ENTITY_DUST = 882,
	ENTITY_BABY_BEGOTTEN = 883,
	ENTITY_SWARM_SPIDER = 884,
	ENTITY_CULTIST = 885,
	ENTITY_VIS_FATTY = 886,
	ENTITY_DUSTY_DEATHS_HEAD = 887,
	ENTITY_SHADY = 888,
	ENTITY_CLICKETY_CLACK = 889,
	ENTITY_MAZE_ROAMER = 890,
	ENTITY_GOAT = 891,
	ENTITY_POOFER = 892,
	ENTITY_BALL_AND_CHAIN = 893,
	
	ENTITY_REAP_CREEP = 900,
	ENTITY_LIL_BLUB = 901,
	ENTITY_RAINMAKER = 902,
	ENTITY_VISAGE = 903,
	ENTITY_SIREN = 904,
	ENTITY_HERETIC = 905,
	ENTITY_HORNFEL = 906,
	ENTITY_GIDEON = 907,
	ENTITY_BABY_PLUM = 908,
	ENTITY_SCOURGE = 909,
	ENTITY_CHIMERA = 910,
	ENTITY_ROTGUT = 911,
	ENTITY_MOTHER = 912,
	ENTITY_MIN_MIN = 913,
	ENTITY_CLOG = 914,
	ENTITY_SINGE = 915,
	ENTITY_BUMBINO = 916,
	ENTITY_COLOSTOMIA = 917,
	ENTITY_TURDLET = 918,
	ENTITY_RAGLICH = 919, -- currently unused
	ENTITY_HORNY_BOYS = 920,
	ENTITY_CLUTCH = 921, -- currently unused
	ENTITY_CADAVRA = 922, -- currently unused
	ENTITY_DOGMA = 950,
	ENTITY_BEAST = 951,
	ENTITY_GENERIC_PROP = 960,
	ENTITY_FROZEN_ENEMY = 963,
	ENTITY_DUMMY = 964,
	ENTITY_MINECART = 965,
	ENTITY_SIREN_HELPER = 966,
	ENTITY_HORNFEL_DOOR = 967,
	ENTITY_TRIGGER_OUTPUT = 969,
	ENTITY_ENVIRONMENT = 970,
	
	ENTITY_EFFECT = 1000, -- 1000 special effects
	ENTITY_TEXT = 9001
}

---@enum GridEntityType
GridEntityType = {
	GRID_NULL = 0,
	GRID_DECORATION = 1,
	GRID_ROCK = 2,
	GRID_ROCKB = 3,	
	GRID_ROCKT = 4,	
	GRID_ROCK_BOMB = 5,	
	GRID_ROCK_ALT = 6,	
	GRID_PIT = 7,
	GRID_SPIKES = 8,
	GRID_SPIKES_ONOFF = 9,
	GRID_SPIDERWEB = 10,
	GRID_LOCK = 11,
	GRID_TNT = 12,
	GRID_FIREPLACE = 13, -- not used!
	GRID_POOP = 14,
	GRID_WALL = 15,
	GRID_DOOR = 16,
	GRID_TRAPDOOR = 17,
	GRID_STAIRS = 18,
	GRID_GRAVITY = 19,
	GRID_PRESSURE_PLATE = 20,
	GRID_STATUE = 21,
	GRID_ROCK_SS = 22,
	
	-- Repentance
	GRID_TELEPORTER = 23,
	GRID_PILLAR = 24,
	GRID_ROCK_SPIKED = 25,
	GRID_ROCK_ALT2 = 26, -- special skull in Depths 2
	GRID_ROCK_GOLD = 27,
}

---@enum EffectVariant
EffectVariant = {
	EFFECT_NULL = 0,
	BOMB_EXPLOSION = 1,
	BLOOD_EXPLOSION = 2,
	FLY_EXPLOSION = 3,
	ROCK_PARTICLE = 4,
	BLOOD_PARTICLE = 5,
	DEVIL = 6,
	BLOOD_SPLAT = 7,
	LADDER = 8,
	ANGEL = 9,
	BLUE_FLAME = 10,
	BULLET_POOF = 11,
	TEAR_POOF_A = 12,
	TEAR_POOF_B = 13,
	RIPPLE_POOF = 14,
		CROSS_POOF = 14, -- AB+ backwards compatibility
	POOF01 = 15,
	POOF02 = 16,
	POOF04 = 17,
	BOMB_CRATER = 18,
	CRACK_THE_SKY = 19,
	SCYTHE_BREAK = 20,
	TINY_BUG = 21,
	CREEP_RED = 22,
	CREEP_GREEN = 23,
	CREEP_YELLOW = 24,
	CREEP_WHITE = 25,
	CREEP_BLACK = 26,
	WOOD_PARTICLE = 27,
	MONSTROS_TOOTH = 28,
	MOM_FOOT_STOMP = 29,
	TARGET = 30,
	ROCKET = 31,
	PLAYER_CREEP_LEMON_MISHAP = 32,
	TINY_FLY = 33,
	FART = 34,
	TOOTH_PARTICLE = 35,
	XRAY_WALL = 36,
	PLAYER_CREEP_HOLYWATER = 37,
	SPIDER_EXPLOSION = 38,
	HEAVEN_LIGHT_DOOR = 39,
	STARFLASH = 40,
	WATER_DROPLET = 41,
	BLOOD_GUSH = 42,
	POOP_EXPLOSION = 43,
	PLAYER_CREEP_WHITE = 44,
	PLAYER_CREEP_BLACK = 45,
	PLAYER_CREEP_RED = 46,
	TRINITY_SHIELD = 47,
	BATTERY = 48,
	HEART = 49,
	LASER_IMPACT = 50,
	HOT_BOMB_FIRE = 51,
	RED_CANDLE_FLAME = 52,
	PLAYER_CREEP_GREEN = 53,
	PLAYER_CREEP_HOLYWATER_TRAIL = 54,
	SPIKE = 55,			
	CREEP_BROWN = 56,	
	PULLING_EFFECT = 57,
	POOP_PARTICLE = 58,	
	DUST_CLOUD = 59,	
	BOOMERANG = 60,
	SHOCKWAVE = 61,
	ROCK_EXPLOSION = 62,
	WORM = 63,
	BEETLE = 64,
	WISP = 65,
	EMBER_PARTICLE = 66,
	SHOCKWAVE_DIRECTIONAL = 67,
	WALL_BUG = 68,
	BUTTERFLY = 69,
	BLOOD_DROP = 70,
	BRIMSTONE_SWIRL = 71,
	CRACKWAVE = 72,
	SHOCKWAVE_RANDOM = 73,
	ISAACS_CARPET = 74,
	BAR_PARTICLE = 75,
	DICE_FLOOR = 76,
	LARGE_BLOOD_EXPLOSION = 77,
	PLAYER_CREEP_LEMON_PARTY = 78,
	TEAR_POOF_SMALL = 79,
	TEAR_POOF_VERYSMALL = 80,
	FRIEND_BALL = 81,
	WOMB_TELEPORT = 82,
	SPEAR_OF_DESTINY = 83,
	EVIL_EYE = 84,
	DIAMOND_PARTICLE = 85,
	NAIL_PARTICLE = 86,
	FALLING_EMBER = 87,
	DARK_BALL_SMOKE_PARTICLE = 88,
	ULTRA_GREED_FOOTPRINT = 89,
	PLAYER_CREEP_PUDDLE_MILK = 90,
	MOMS_HAND = 91,
	PLAYER_CREEP_BLACKPOWDER = 92,
	PENTAGRAM_BLACKPOWDER = 93,
	CREEP_SLIPPERY_BROWN = 94,
	GOLD_PARTICLE = 95,
	HUSH_LASER = 96,
	IMPACT = 97,
	COIN_PARTICLE = 98,
	WATER_SPLASH = 99,
	HUSH_ASHES = 100,
	HUSH_LASER_UP = 101,
	BULLET_POOF_HUSH = 102,
	ULTRA_GREED_BLING = 103,
	FIREWORKS = 104,
	BROWN_CLOUD = 105,
	FART_RING = 106,
	BLACK_HOLE = 107,
	MR_ME = 108,
	DEATH_SKULL = 109,
	ENEMY_BRIMSTONE_SWIRL = 110,
	HAEMO_TRAIL = 111,
	HALLOWED_GROUND = 112,
	BRIMSTONE_BALL = 113,
	FORGOTTEN_CHAIN = 114,
	BROKEN_SHOVEL_SHADOW = 115,
	DIRT_PATCH = 116,
	FORGOTTEN_SOUL = 117,
	SMALL_ROCKET = 118,
	
	-- Repentance
	TIMER = 119,
	SPAWNER = 120,
	LIGHT = 121,
	BIG_HORN_HOLE_HELPER = 122,
	HALO = 123,
	TAR_BUBBLE = 124,
	BIG_HORN_HAND = 125,
	TECH_DOT = 126,
	MAMA_MEGA_EXPLOSION = 127,
	OPTION_LINE = 128, -- unused

	LEECH_EXPLOSION = 130,
	MAGGOT_EXPLOSION = 131,
	BIG_SPLASH = 132,
	WATER_RIPPLE = 133,
	PEDESTAL_RIPPLE = 134,
	RAIN_DROP = 135,
	GRID_ENTITY_PROJECTILE_HELPER = 136,
	WORMWOOD_HOLE = 137,
	MIST = 138,
	TRAPDOOR_COVER = 139,
	BACKDROP_DECORATION = 140,
	SMOKE_CLOUD = 141,
	WHIRLPOOL = 142,
	FARTWAVE = 143,
	ENEMY_GHOST = 144,
	ROCK_POOF = 145,
	DIRT_PILE = 146,
	FIRE_JET = 147,
	FIRE_WAVE = 148,
	BIG_ROCK_EXPLOSION = 149,
	BIG_CRACKWAVE = 150,
	BIG_ATTRACT = 151,
	HORNFEL_ROOM_CONTROLLER = 152,
	OCCULT_TARGET = 153,
	DOOR_OUTLINE = 154,
	CREEP_SLIPPERY_BROWN_GROWING = 155,
	TALL_LADDER = 156,
	WILLO_SPAWNER = 157,
	TADPOLE = 158,
	LIL_GHOST = 159,
	BISHOP_SHIELD = 160,
	PORTAL_TELEPORT = 161,
	HERETIC_PENTAGRAM = 162,
	CHAIN_GIB = 163,
	SIREN_RING = 164,
	CHARM_EFFECT = 165,
	SPRITE_TRAIL = 166,
	CHAIN_LIGHTNING = 167,
	COLOSTOMIA_PUDDLE = 168,
	CREEP_STATIC = 169,
	DOGMA_DEBRIS = 170,
	DOGMA_BLACKHOLE = 171,
	DOGMA_ORB = 172,
	CRACKED_ORB_POOF = 173,
	SHOP_SPIKES = 174,
	KINETI_BEAM = 175,
	CLEAVER_SLASH = 176,
	REVERSE_EXPLOSION = 177,
	URN_OF_SOULS = 178,
	ENEMY_SOUL = 179,
	RIFT = 180,
	LAVA_SPAWNER = 181,
	BIG_KNIFE = 182,
	MOTHER_SHOCKWAVE = 183,
	WORM_FRIEND_SNARE = 184,
	REDEMPTION = 185,
	HUNGRY_SOUL = 186,
	EXPLOSION_WAVE = 187,
	DIVINE_INTERVENTION = 188,
	PURGATORY = 189,
	MOTHER_TRACER = 190,
	PICKUP_GHOST = 191,
	FISSURE_SPAWNER = 192,
	ANIMA_CHAIN = 193,
	DARK_SNARE = 194,
	CREEP_LIQUID_POOP = 195,
	GROUND_GLOW = 196,
	DEAD_BIRD = 197,
	GENERIC_TRACER = 198,
	ULTRA_DEATH_SCYTHE = 199,
}

---@enum PickupVariant
PickupVariant = {
	PICKUP_NULL = 0,
	PICKUP_HEART = 10,
	PICKUP_COIN = 20,
	PICKUP_KEY = 30,
	PICKUP_BOMB = 40,
	PICKUP_THROWABLEBOMB = 41,
	PICKUP_POOP = 42,
	PICKUP_CHEST = 50,
	PICKUP_BOMBCHEST = 51,
	PICKUP_SPIKEDCHEST = 52,
	PICKUP_ETERNALCHEST = 53,
	PICKUP_MIMICCHEST = 54,
	PICKUP_OLDCHEST = 55,
	PICKUP_WOODENCHEST = 56,
	PICKUP_MEGACHEST = 57,
	PICKUP_HAUNTEDCHEST = 58,
	PICKUP_LOCKEDCHEST = 60,
	PICKUP_GRAB_BAG = 69,
	PICKUP_PILL = 70,
	PICKUP_LIL_BATTERY = 90,
	PICKUP_COLLECTIBLE = 100,
	PICKUP_SHOPITEM = 150,
	PICKUP_TAROTCARD = 300,
	PICKUP_BIGCHEST = 340,
	PICKUP_TRINKET = 350,
	PICKUP_REDCHEST = 360,
	PICKUP_TROPHY = 370,
	PICKUP_BED = 380,
	PICKUP_MOMSCHEST = 390,
}

---@enum HeartSubType
HeartSubType = {
	HEART_FULL = 1,
	HEART_HALF = 2,
	HEART_SOUL = 3,
	HEART_ETERNAL = 4,
	HEART_DOUBLEPACK = 5,
	HEART_BLACK = 6,
	HEART_GOLDEN = 7,
	HEART_HALF_SOUL = 8,
	HEART_SCARED = 9,
	HEART_BLENDED = 10,
	HEART_BONE = 11,
	HEART_ROTTEN = 12,
}

---@enum CoinSubType
CoinSubType = {
	COIN_PENNY = 1,
	COIN_NICKEL = 2,
	COIN_DIME = 3,
	COIN_DOUBLEPACK = 4,
	COIN_LUCKYPENNY = 5,
	COIN_STICKYNICKEL = 6,
	COIN_GOLDEN = 7,
}

---@enum KeySubType
KeySubType = {
	KEY_NORMAL = 1,
	KEY_GOLDEN = 2,
	KEY_DOUBLEPACK = 3,
	KEY_CHARGED = 4,
}

---@enum BatterySubType
BatterySubType = {
	BATTERY_NORMAL = 1,
	BATTERY_MICRO = 2,
	BATTERY_MEGA = 3,
	BATTERY_GOLDEN = 4,
}

---@enum SackSubType
SackSubType = {
	SACK_NORMAL = 1,
	SACK_BLACK = 2,
}

---@enum ChestSubType
ChestSubType = {
	CHEST_OPENED = 0,
	CHEST_CLOSED = 1
}

---@enum BombSubType
BombSubType = {
	BOMB_NORMAL = 1,
	BOMB_DOUBLEPACK = 2,
	BOMB_TROLL = 3,
	BOMB_GOLDEN = 4,
	BOMB_SUPERTROLL = 5,
	BOMB_GOLDENTROLL = 6,
	BOMB_GIGA = 7,
}

---@enum BedSubType
BedSubType = {
	BED_ISAAC = 0,
	BED_MOM = 1,
}

---@enum PickupPrice
PickupPrice = {
	PRICE_ONE_HEART = -1,
	PRICE_TWO_HEARTS = -2,
	PRICE_THREE_SOULHEARTS = -3,
	PRICE_ONE_HEART_AND_TWO_SOULHEARTS = -4,
	PRICE_SPIKES = -5,
	PRICE_SOUL = -6,
	PRICE_FREE = -1000,
}

---@enum PoopPickupSubType
PoopPickupSubType = {
	POOP_SMALL = 0,
	POOP_BIG = 1,
}

---@enum Challenge
Challenge = {
	CHALLENGE_NULL = 0,
	CHALLENGE_PITCH_BLACK = 1,
	CHALLENGE_HIGH_BROW = 2,
	CHALLENGE_HEAD_TRAUMA = 3,
	CHALLENGE_DARKNESS_FALLS = 4,
	CHALLENGE_THE_TANK = 5,
	CHALLENGE_SOLAR_SYSTEM = 6,
	CHALLENGE_SUICIDE_KING = 7,
	CHALLENGE_CAT_GOT_YOUR_TONGUE = 8,
	CHALLENGE_DEMO_MAN = 9,
	CHALLENGE_CURSED = 10,
	CHALLENGE_GLASS_CANNON = 11,
	CHALLENGE_WHEN_LIFE_GIVES_LEMONS = 12,
	CHALLENGE_BEANS = 13,
	CHALLENGE_ITS_IN_THE_CARDS = 14,
	CHALLENGE_SLOW_ROLL = 15,
	CHALLENGE_COMPUTER_SAVY = 16,
	CHALLENGE_WAKA_WAKA = 17,
	CHALLENGE_THE_HOST = 18,
	CHALLENGE_THE_FAMILY_MAN = 19,
	CHALLENGE_PURIST = 20,
	CHALLENGE_XXXXXXXXL = 21,
	CHALLENGE_SPEED = 22,
	CHALLENGE_BLUE_BOMBER = 23,
	CHALLENGE_PAY_TO_PLAY = 24,
	CHALLENGE_HAVE_A_HEART = 25,
	CHALLENGE_I_RULE = 26,
	CHALLENGE_BRAINS = 27,
	CHALLENGE_PRIDE_DAY = 28,
	CHALLENGE_ONANS_STREAK = 29,
	CHALLENGE_GUARDIAN = 30,
	CHALLENGE_BACKASSWARDS = 31,
	CHALLENGE_APRILS_FOOL = 32,
	CHALLENGE_POKEY_MANS = 33,
	CHALLENGE_ULTRA_HARD = 34,
	CHALLENGE_PONG = 35,
	--NUM_CHALLENGES = 36
	
	-- Repentance
	CHALLENGE_SCAT_MAN = 36,
	CHALLENGE_BLOODY_MARY = 37,
	CHALLENGE_BAPTISM_BY_FIRE = 38,
	CHALLENGE_ISAACS_AWAKENING = 39,
	CHALLENGE_SEEING_DOUBLE = 40,
	CHALLENGE_PICA_RUN = 41,
	CHALLENGE_HOT_POTATO = 42,
	CHALLENGE_CANTRIPPED = 43,
	CHALLENGE_RED_REDEMPTION = 44,
	CHALLENGE_DELETE_THIS = 45,
	NUM_CHALLENGES = 46
}

---@enum BombVariant
BombVariant = {
    BOMB_NORMAL = 0,
    BOMB_BIG = 1,
    BOMB_DECOY = 2,
    BOMB_TROLL = 3,
    BOMB_SUPERTROLL = 4,
    BOMB_POISON = 5,
    BOMB_POISON_BIG = 6,
    BOMB_SAD = 7,
    BOMB_HOT = 8,
    BOMB_BUTT = 9,
    BOMB_MR_MEGA = 10,
    BOMB_BOBBY = 11,
    BOMB_GLITTER = 12,
	BOMB_THROWABLE = 13,
	BOMB_SMALL = 14,
	BOMB_BRIMSTONE = 15,
	BOMB_SAD_BLOOD = 16,
	BOMB_GIGA = 17,
	BOMB_GOLDENTROLL = 18,
	BOMB_ROCKET = 19,
	BOMB_ROCKET_GIGA = 20,
}

---@enum CacheFlag
CacheFlag = {
	CACHE_DAMAGE = 0x1,
	CACHE_FIREDELAY = 0x2,
	CACHE_SHOTSPEED = 0x4,
	CACHE_RANGE = 0x8,
	CACHE_SPEED = 0x10,
	CACHE_TEARFLAG = 0x20,
	CACHE_TEARCOLOR = 0x40,
	CACHE_FLYING = 0x80,
	CACHE_WEAPON = 0x100,
	CACHE_FAMILIARS = 0x200,
	CACHE_LUCK = 0x400,
	CACHE_SIZE = 0x800, -- invalidates player size
	CACHE_COLOR = 0x1000, -- invalidates player color
	CACHE_PICKUP_VISION = 0x2000, -- invalidates effects that predict pickup drops (i.e. Guppy's Eye)
	
	CACHE_ALL = 0xFFFF,

	CACHE_TWIN_SYNC = 0x80000000, -- special cache flag used when syncing Jacob and Esau's speed
}

---@enum NpcState
NpcState = {
	STATE_INIT = 0,
	STATE_APPEAR = 1,
	STATE_APPEAR_CUSTOM = 2,
	STATE_IDLE = 3,
	STATE_MOVE = 4,
	STATE_SUICIDE = 5,
	STATE_JUMP = 6,
	STATE_STOMP = 7,
	STATE_ATTACK = 8,
	STATE_ATTACK2 = 9,	
	STATE_ATTACK3 = 10,
	STATE_ATTACK4 = 11,
	STATE_ATTACK5 = 12,
	STATE_SUMMON = 13,
	STATE_SUMMON2 = 14,
	STATE_SUMMON3 = 15,
	STATE_SPECIAL = 16,
	STATE_UNIQUE_DEATH = 17,
	STATE_DEATH = 18
}

---@enum EntityGridCollisionClass
EntityGridCollisionClass = {
	GRIDCOLL_NONE = 0,
	GRIDCOLL_WALLS_X = 1,	-- only collide with vertical walls
	GRIDCOLL_WALLS_Y = 2,	-- only collide with horizontal walls
	GRIDCOLL_WALLS = 3,		-- only collide with walls
	GRIDCOLL_BULLET = 4,	-- detect collision with solids (no pits), don't correct position
	GRIDCOLL_GROUND = 5,	-- collide with all grid entities (rocks, pits, ..), correct position
	GRIDCOLL_NOPITS = 6,	-- collide with all grid entities except pits and correct position
	GRIDCOLL_PITSONLY = 7,	-- moving inside a pit, collide with everything else, correct position
}
	
---@enum EntityCollisionClass
EntityCollisionClass = {
	ENTCOLL_NONE = 0,			-- no collision with other entities
	ENTCOLL_PLAYERONLY = 1,		-- collide with player only
	ENTCOLL_PLAYEROBJECTS = 2,	-- collide with player, tears, familiars, ..
	ENTCOLL_ENEMIES = 3,		-- collide with enemies
	ENTCOLL_ALL = 4				-- collide with everything
}

---@enum EntityFlag
EntityFlag = {
	FLAG_NO_STATUS_EFFECTS = 1,			-- prevent freeze/poison/slow/charm/confusion/fear/burn
	FLAG_NO_INTERPOLATE = 1<<1,			-- do not interpolate position
	FLAG_APPEAR = 1<<2,					-- play appear animation after Init
	FLAG_RENDER_FLOOR = 1<<3,				-- will be rendered to floor texture
	FLAG_NO_TARGET = 1<<4,					-- will not be a target of NPCs or familiars
	FLAG_FREEZE = 1<<5,					-- freezing effect
	FLAG_POISON = 1<<6,					-- poison effect
	FLAG_SLOW = 1<<7,						-- slowing (velocity)
	FLAG_CHARM = 1<<8,						-- Charmed
	FLAG_CONFUSION = 1<<9,					-- Confused
	FLAG_MIDAS_FREEZE = 1<<10,				-- Midas frozen
	FLAG_FEAR = 1<<11,						-- Fleeing in Fear (like Mom's Pad)
	FLAG_BURN = 1<<12,						-- Caused by Fire Mind tears, works like poison except with Red color effect.
	FLAG_RENDER_WALL = 1<<13,				-- will be rendered to wall texture
	FLAG_INTERPOLATION_UPDATE = 1<<14,		-- entity is updating at 60 fps, and this is an odd frame
	FLAG_APPLY_GRAVITY = 1<<15,			-- In sidescrolling room, this indicates that we're in a gravity zone.
	FLAG_NO_BLOOD_SPLASH = 1<<16,
	FLAG_NO_REMOVE_ON_TEX_RENDER = 1<<17,	-- for FLAG_RENDER_FLOOR and FLAG_RENDER_WALL
	FLAG_NO_DEATH_TRIGGER = 1<<18,
	
	-- NOTE: Those next flags share the same bit but have a different meaning depending on entity type
	FLAG_NO_SPIKE_DAMAGE = 1<<19,			-- EntityNPC: shouldn't take any damage from spikes
	FLAG_LASER_POP = 1<<19,					-- EntityTear: Pop tear fired by a laser, should decelerate very quickly for the first few frames
	FLAG_ITEM_SHOULD_DUPLICATE = 1<<19,		-- EntityPickup: item pedestal affected by Damocles, will be duplicated at the end of the current frame
	
	FLAG_BOSSDEATH_TRIGGERED = 1<<20,
	FLAG_DONT_OVERWRITE = 1<<21,			-- Used in entityfactory to not remove this entity if there is no space left for new entity
	FLAG_SPAWN_STICKY_SPIDERS = 1<<22,		-- Used by Sticky bombs to generate spiders on death
	FLAG_SPAWN_BLACK_HP = 1<<23,			-- Used by black hp drop tear flag to drop a black hp on enemy death
	FLAG_SHRINK = 1<<24,					-- God's flesh effect
	FLAG_NO_FLASH_ON_DAMAGE = 1<<25,		-- Entity will not flash red when damaged
	FLAG_NO_KNOCKBACK = 1<<26,				-- Bombs and farts have no knockback effects
	FLAG_SLIPPERY_PHYSICS = 1<<27,			-- Standing on a slippery surface
	FLAG_ADD_JAR_FLY = 1<<28,				-- Adds a fly to the jar when killed
	FLAG_FRIENDLY = 1<<29,					-- Charmed and m_CharmCountdown<0
	FLAG_NO_PHYSICS_KNOCKBACK = 1<<30,		-- No knockback from general collisions
	FLAG_DONT_COUNT_BOSS_HP = 1<<31,		-- Do not count boss hp
	FLAG_NO_SPRITE_UPDATE = 1<<32,			-- Do not update sprite animation
	FLAG_CONTAGIOUS = 1<<33,				-- Used for Contagious item (if the enemy is infected)
	FLAG_BLEED_OUT = 1<<34,					-- Used for Mom's Razor
	FLAG_HIDE_HP_BAR = 1<<35,				-- Added for Ultra Greed so his HP can be hidden after he "dies" since his entity sticks around
	FLAG_NO_DAMAGE_BLINK = 1<<36,			-- Player was given a short period of invulnerability by something other than damage, don't blink
	FLAG_PERSISTENT = 1<<37,				-- Entity persists between rooms
	
	FLAG_BACKDROP_DETAIL = 1<<38,			-- Was spawned as a backdrop decoration, should be deleted if the current backdrop changes (due to Delirium)
	FLAG_AMBUSH = 1<<39,					-- Enemy was spawned by some sort of ambush (Greed Mode, challenge rooms), don't collide with the player for a few frames
	FLAG_GLITCH = 1<<40,					-- Glitched out, has different effects depending on the entity
	FLAG_SPIN = 1<<41,						-- Used by Spin to Win, causes a familiar to rapidly spin around its owner
	FLAG_NO_REWARD = 1<<42,					-- Doesn't spawn any kind of reward on death
	FLAG_REDUCE_GIBS = 1<<43,				-- Spawn less gibs on death
	FLAG_TRANSITION_UPDATE = 1<<44,			-- Updates during room/stage transitions
	FLAG_NO_PLAYER_CONTROL = 1<<45,			-- Cannot be controlled by players
	FLAG_NO_QUERY = 1<<46,					-- Hide from query results
	FLAG_KNOCKED_BACK = 1<<47,				-- Strong knockback: Forcefy moved in a specified direction for a short duration
	FLAG_APPLY_IMPACT_DAMAGE = 1<<48,		-- Inflicts damage upon colliding with enemies, takes damage when colliding with walls
	FLAG_ICE_FROZEN = 1<<49,				-- Frozen solid
	FLAG_ICE = 1<<50,						-- Flagged to become frozen on death
	FLAG_MAGNETIZED = 1<<51,				-- Magnetized: Attracts nearby enemies, projectiles and pickups
	FLAG_BAITED = 1<<52,					-- Baited: Is targeted by nearby enemies
	FLAG_KILLSWITCH = 1<<53,				-- Killed by a killswitch
	FLAG_WEAKNESS = 1<<54,					-- Weakness effect from Reverse Strength
	FLAG_EXTRA_GORE = 1<<55,				-- Spawns more gibs on death
	FLAG_BRIMSTONE_MARKED = 1<<56,			-- Marked by Azazel B, takes extra damage from Brimstone attacks
	FLAG_HELD = 1<<57,						-- Picked up by a player
	FLAG_THROWN = 1<<58,					-- Thrown by a player
	FLAG_FRIENDLY_BALL = 1<<59,				-- Used to detect enemies spawned by Friendly Ball
}

---@enum DamageFlag
DamageFlag = {
	DAMAGE_NOKILL = 1,			-- damage can not kill the receiver
	DAMAGE_FIRE = 1<<1,			-- source is some sort of fire (ie. fireplace)
	DAMAGE_EXPLOSION = 1<<2,	-- damage comes from an explosion
	DAMAGE_LASER = 1<<3,		-- damage comes from laser
	DAMAGE_ACID = 1<<4,			-- damage comes from acid, e.g. blood acid
	DAMAGE_RED_HEARTS = 1<<5,	-- damage affects only red hearts if > 1 (ex: razor)
	DAMAGE_COUNTDOWN = 1<<6,	-- damage from unicorn horn, the nail, game kid that has cooldown
	DAMAGE_SPIKES = 1<<7,		-- damage from spikes
	DAMAGE_CLONES = 1<<8,		-- damage is done by clones when they took damage, avoid infinite loops
	DAMAGE_POOP = 1<<9,			-- damage from red poop
	DAMAGE_DEVIL = 1<<10,		-- damage comes from devil room deal
	DAMAGE_ISSAC_HEART = 1<<11,	-- Indicates the damage has been redirected from Isaac's Heart familiar
	DAMAGE_TNT = 1<<12,			-- damage comes from a TNT barrel
	DAMAGE_INVINCIBLE = 1<<13,	-- damages even if invincible (currently only for player). Used on IV Bag.
	DAMAGE_SPAWN_FLY = 1<<14,	-- creates a fly when damage is applied
	DAMAGE_POISON_BURN = 1<<15, -- damage comes from POISON/BURN flags
	DAMAGE_CURSED_DOOR = 1<<16, -- damage comes from a cursed door
	DAMAGE_TIMER = 1<<17,		-- damage comes from the passage of time (used for player damage by time limited special seeds)
	DAMAGE_IV_BAG = 1<<18,		-- damage from using the IV Bag
	DAMAGE_PITFALL = 1<<19,		-- damage comes from the passage of time (used for player damage by time limited special seeds)
	DAMAGE_CHEST = 1<<20,		-- damage comes from spiked chest
	DAMAGE_FAKE = 1<<21,		-- fake damage that should trigger player's damage effects.
	DAMAGE_BOOGER = 1<<22,		-- damage from booger tear
	DAMAGE_SPAWN_BLACK_HEART = 1<<23,	-- should drop a black heart if damage is lethal
	DAMAGE_CRUSH = 1<<24,				-- damage comes from a strong impact (Mom's foot, rock spikes, rock tears)
	DAMAGE_NO_MODIFIERS = 1<<25,		-- ignore damage modifiers (such as doubled damage from the Womb and later floors or reduced damage from the Wafer)
	DAMAGE_SPAWN_RED_HEART = 1<<26,		-- should drop a red heart if damage is lethal
	DAMAGE_SPAWN_COIN = 1<<27,			-- should drop a coin if damage is lethal
	DAMAGE_NO_PENALTIES = 1<<28,		-- damage shouldn't apply any penalties (such as devil deal chance)
	DAMAGE_SPAWN_TEMP_HEART = 1<<29,	-- should drop a half red heart that quickly despawns if damage is lethal
	DAMAGE_IGNORE_ARMOR = 1<<30,		-- damage ignores boss armor
	DAMAGE_SPAWN_CARD = 1<<31,			-- should drop a card if damage is lethal
	DAMAGE_SPAWN_RUNE = 1<<32,			-- should drop a rune if damage is lethal
}

---@enum SortingLayer
SortingLayer = {
	SORTING_BACKGROUND = 0,			-- Background level, behind grid entities (creep, pitfalls)
	SORTING_DOOR = 1,				-- Used by door Xray animation
	SORTING_NORMAL = 2				-- Uses Y position to determine Z sorting
}

---@enum FamiliarVariant
FamiliarVariant = {
	FAMILIAR_NULL = 0,
	BROTHER_BOBBY = 1,
	DEMON_BABY = 2,
	LITTLE_CHUBBY = 3,
	LITTLE_GISH = 4,
	LITTLE_STEVEN = 5,
	ROBO_BABY = 6,
	SISTER_MAGGY = 7,
	ABEL = 8,
	GHOST_BABY = 9,
	HARLEQUIN_BABY = 10,
	RAINBOW_BABY = 11,
	ISAACS_HEAD = 12,
	BLUE_BABY_SOUL = 13,
	DEAD_BIRD = 14,
	EVES_BIRD_FOOT = 15,
	DADDY_LONGLEGS = 16,
	PEEPER = 17,
	BOMB_BAG = 20,
	SACK_OF_PENNIES = 21,
	LITTLE_CHAD = 22,
	RELIC = 23,
	BUM_FRIEND = 24,
	HOLY_WATER = 25,
	KEY_PIECE_1 = 26,
	KEY_PIECE_2 = 27,
	KEY_FULL = 28,
	FOREVER_ALONE = 30,
	DISTANT_ADMIRATION = 31,
	GUARDIAN_ANGEL = 32,
	FLY_ORBITAL = 33,
	SACRIFICIAL_DAGGER = 35,
	DEAD_CAT = 40,
	ONE_UP = 41,
	GUPPYS_HAIRBALL = 42,
	BLUE_FLY = 43,
	CUBE_OF_MEAT_1 = 44,
	CUBE_OF_MEAT_2 = 45,
	CUBE_OF_MEAT_3 = 46,
	CUBE_OF_MEAT_4 = 47,
	ISAACS_BODY = 48,
	SMART_FLY = 50,
	DRY_BABY = 51,
	JUICY_SACK = 52,
	ROBO_BABY_2 = 53,
	ROTTEN_BABY = 54,
	HEADLESS_BABY = 55,
	LEECH = 56,
	MYSTERY_SACK = 57,
	BBF = 58,
	BOBS_BRAIN = 59,
	BEST_BUD = 60,
	LIL_BRIMSTONE = 61,
	ISAACS_HEART = 62,
	LIL_HAUNT = 63,
	DARK_BUM = 64,
	BIG_FAN = 65,
	SISSY_LONGLEGS = 66,
	PUNCHING_BAG = 67,
	GUILLOTINE = 68,
	BALL_OF_BANDAGES_1 = 69,
	BALL_OF_BANDAGES_2 = 70,
	BALL_OF_BANDAGES_3 = 71,
	BALL_OF_BANDAGES_4 = 72,
	BLUE_SPIDER = 73,
	MONGO_BABY = 74,
	SAMSONS_CHAINS = 75,
	CAINS_OTHER_EYE = 76,
	BLUEBABYS_ONLY_FRIEND = 77,
	SCISSORS = 78,
	GEMINI = 79,
	INCUBUS = 80,
	FATES_REWARD = 81,
	LIL_CHEST = 82,
	SWORN_PROTECTOR = 83,
	FRIEND_ZONE = 84,
	LOST_FLY = 85,
	CHARGED_BABY = 86,
	LIL_GURDY = 87,
	BUMBO = 88,
	CENSER = 89,
	KEY_BUM = 90,
	RUNE_BAG = 91,
	SERAPHIM = 92,
	GB_BUG = 93,
	SPIDER_MOD = 94,
	FARTING_BABY = 95,
	SUCCUBUS = 96,
	LIL_LOKI = 97,
	OBSESSED_FAN = 98,
	PAPA_FLY = 99,
	MILK = 100,
	MULTIDIMENSIONAL_BABY = 101,
	SUPER_BUM = 102,
	TONSIL = 103,
	BIG_CHUBBY = 104,
	DEPRESSION = 105,
	SHADE = 106,
	HUSHY = 107,
	LIL_MONSTRO = 108,
	KING_BABY = 109,
	FINGER = 110,
	YO_LISTEN = 111,
	ACID_BABY = 112,
	SPIDER_BABY = 113,
	SACK_OF_SACKS = 114,
	BROWN_NUGGET_POOTER = 115,
	BLOODSHOT_EYE = 116,
	MOMS_RAZOR = 117,
	
	-- Booster Pack #1
	ANGRY_FLY = 118,
	BUDDY_IN_A_BOX = 119,
	SPRINKLER = 120,
	
	-- Booster Pack #2
	LEPROSY = 121,

	-- Booster Pack #3
	LIL_HARBINGERS = 122,
	ANGELIC_PRISM = 123,
	
	-- Booster Pack #5
	MYSTERY_EGG = 124,
	LIL_SPEWER = 125,
	SLIPPED_RIB = 126,
	POINTY_RIB = 127,
	BONE_ORBITAL = 128,
	HALLOWED_GROUND = 129,
	JAW_BONE = 130,
	
	-- Repentance
	INTRUDER = 200,
	DIP = 201,
	DAMOCLES = 202,
	BLOOD_OATH = 203,
	PSY_FLY = 204,
	MENORAH = 205,
	WISP = 206,
	PEEPER_2 = 207,
	BOILED_BABY = 208,
	FREEZER_BABY = 209,
	BIRD_CAGE = 210,
	LOST_SOUL = 211,
	LIL_DUMPY = 212,
	KNIFE_PIECE_1 = 213,
	KNIFE_PIECE_2 = 214,
	
	TINYTOMA = 216,
	TINYTOMA_2 = 217,
	BOT_FLY = 218,
	
	SIREN_MINION = 220,
	PASCHAL_CANDLE = 221,
	STITCHES = 222,
	KNIFE_FULL = 223,
	BABY_PLUM = 224,
	FRUITY_PLUM = 225,
	SPIN_TO_WIN = 226,
	
	MINISAAC = 228,
	SWARM_FLY_ORBITAL = 229,
	LIL_ABADDON = 230,
	ABYSS_LOCUST = 231,
	LIL_PORTAL = 232,
	WORM_FRIEND = 233,
	BONE_SPUR = 234,
	TWISTED_BABY = 235,
	STAR_OF_BETHLEHEM = 236,
	ITEM_WISP = 237,
	BLOOD_BABY = 238,
	CUBE_BABY = 239,
	UMBILICAL_BABY = 240,
	BLOOD_PUPPY = 241,
	VANISHING_TWIN = 242,
	DECAP_ATTACK = 243,
	
	FORGOTTEN_BODY = 900,
}

---@enum LocustSubtypes
LocustSubtypes = {
	LOCUST_OF_WRATH = 1,
	LOCUST_OF_PESTILENCE = 2,
	LOCUST_OF_FAMINE = 3,
	LOCUST_OF_DEATH = 4,
	LOCUST_OF_CONQUEST = 5
}

---@enum ItemType
ItemType = {
	ITEM_NULL = 0,
	ITEM_PASSIVE = 1,
	ITEM_TRINKET = 2,
	ITEM_ACTIVE = 3,
	ITEM_FAMILIAR = 4
}

---@enum NullItemID
NullItemID = {
	ID_NULL = - 1,
	ID_EXPLOSIVE_DIARRHEA = 0,
	ID_PUBERTY = 1,
	ID_I_FOUND_PILLS = 2,
	ID_LORD_OF_THE_FLIES = 3,
	ID_STATUE = 4,
	ID_GUPPY = 5,
	ID_WIZARD = 6,
	ID_MAGDALENE = 7,
	ID_CAIN = 8,
	ID_JUDAS = 9,
	ID_EVE = 10,
	ID_AZAZEL = 11,
	ID_EDEN = 12,
	ID_SAMSON = 13,
	ID_BLINDFOLD = 14,
	ID_BLANKFACE = 15,
	ID_CHRISTMAS = 16,
	ID_PURITY_GLOW = 17,
	ID_EMPTY_VESSEL = 18,
	ID_MAW_MARK = 19,
	ID_MUSHROOM = 20,
	ID_ANGEL = 21,
	ID_BOB = 22,
	ID_DRUGS = 23,
	ID_MOM = 24,
	ID_BABY = 25,
	ID_EVIL_ANGEL = 26,
	ID_POOP = 27,
	ID_RELAX = 28,
	ID_OVERDOSE = 29,
	ID_BOOMERANG = 30,
	ID_MEGABLAST = 31,
	ID_LAZARUS = 32,
	ID_LAZARUS2 = 33,
	ID_LILITH = 34,
	ID_IWATA = 35,
	ID_APOLLYON = 36,
	ID_BOOKWORM = 37,
	ID_ADULTHOOD = 38,
	ID_SPIDERBABY = 39,
	ID_BATWING_WINGS = 40,
	ID_HUGE_GROWTH = 41,
	ID_ERA_WALK = 42,
	ID_SACRIFICIAL_ALTAR = 43,
	ID_FORGOTTEN = 44,
	
	-- Repentance
	ID_BRIMSTONE2 = 45,
	ID_HOLY_CARD = 46,
	ID_KEEPER = 47,
	ID_CAMO_BOOST = 48,
	ID_LAZARUS_BOOST = 49,
	
	ID_SPIN_TO_WIN = 50,
	ID_BETHANY = 51,
	ID_JACOB = 52,
	ID_ESAU = 53,
	ID_BLOOD_OATH = 54,
	ID_INTRUDER = 55,
	ID_SOL = 56,
	ID_IT_HURTS = 57,
	ID_MARS = 58,
	ID_TOOTH_AND_NAIL = 59,
	ID_REVERSE_MAGICIAN = 60,
	ID_REVERSE_HIGH_PRIESTESS = 61,
	ID_REVERSE_EMPRESS = 62,
	ID_REVERSE_CHARIOT = 63,
	ID_REVERSE_STRENGTH = 64,
	ID_REVERSE_HANGED_MAN = 65,
	ID_REVERSE_SUN = 66,
	ID_REVERSE_DEVIL = 67,
	ID_REVERSE_CHARIOT_ALT = 68,
	ID_REVERSE_TEMPERANCE = 69,
	ID_REVERSE_STARS = 70,
	ID_WAVY_CAP_1 = 71,
	ID_WAVY_CAP_2 = 72,
	ID_WAVY_CAP_3 = 73,
	ID_LUNA = 74,
	ID_JUPITER_BODY = 75,
	ID_JUPITER_BODY_ANGEL = 76,
	ID_JUPITER_BODY_PONY = 77,
	ID_JUPITER_BODY_WHITEPONY = 78,
	ID_ISAAC_B = 79,
	ID_MAGDALENE_B = 80,
	ID_CAIN_B = 81,
	ID_JUDAS_B = 82,
	ID_BLUEBABY_B = 83,
	ID_EVE_B = 84,
	ID_SAMSON_B = 85,
	ID_AZAZEL_B = 86,
	ID_LAZARUS_B = 87,
	ID_EDEN_B = 88,
	ID_LOST_B = 89,
	ID_LILITH_B = 90,
	ID_KEEPER_B = 91,
	ID_APOLLYON_B = 92,
	ID_FORGOTTEN_B = 93,
	ID_BETHANY_B = 94,
	ID_JACOB_B = 95,
	ID_AZAZELS_RAGE_1 = 96,
	ID_AZAZELS_RAGE_2 = 97,
	ID_AZAZELS_RAGE_3 = 98,
	ID_AZAZELS_RAGE_4 = 99,
	ID_ESAU_JR = 100,
	ID_SPIRIT_SHACKLES_SOUL = 101,
	ID_SPIRIT_SHACKLES_DISABLED = 102,
	ID_BERSERK_SAMSON = 103,
	ID_LAZARUS2_B = 104,
	ID_SOUL_B = 105,
	ID_FORGOTTEN_BOMB = 106,
	ID_EXTRA_BIG_FAN = 107,
	ID_JACOB2_B = 108,
	ID_JACOBS_CURSE = 109,
	ID_BLOODY_BABYLON = 110,
	ID_DARK_ARTS = 111,
	ID_LOST_CURSE = 112,
	ID_LAZARUS_SOUL_REVIVE = 113,
	ID_SOUL_MAGDALENE = 114,
	ID_SOUL_BLUEBABY = 115,
	ID_MIRROR_DEATH = 116,
	ID_HEMOPTYSIS = 117,
	ID_I_FOUND_HORSE_PILLS = 118,
	ID_HORSE_PUBERTY = 119,
	ID_SOUL_FORGOTTEN = 120,
	ID_SOUL_JACOB = 121,
	ID_BETHANY_B_BIRTHRIGHT = 122,
	ID_JUDAS_BIRTHRIGHT = 123,
	ID_JUDAS_BIRTHRIGHT_TIMED = 124,
	ID_DOUBLE_GUPPYS_EYE = 125,
	ID_DOUBLE_GLASS_EYE = 126,
	ID_HEMOPTYSIS_BOOST = 127,
	ID_SOUL_JUDAS = 128,
	ID_JUDAS_BIRTHRIGHT_STAGE = 129,
	ID_JUDAS_BIRTHRIGHT_PERMANENT = 130,
	ID_ESAU_JR_FAMILIAR = 131,
	NUM_NULLITEMS = 132
}

---@enum WeaponType
WeaponType = {
	WEAPON_TEARS = 1,
	WEAPON_BRIMSTONE = 2,
	WEAPON_LASER = 3,
	WEAPON_KNIFE = 4,
	WEAPON_BOMBS = 5,
	WEAPON_ROCKETS = 6,
	WEAPON_MONSTROS_LUNGS = 7,
	WEAPON_LUDOVICO_TECHNIQUE = 8,
	WEAPON_TECH_X = 9,
	WEAPON_BONE = 10,
	WEAPON_NOTCHED_AXE = 11,		-- Notched Axe
	WEAPON_URN_OF_SOULS = 12,		-- Urn of Souls
	WEAPON_SPIRIT_SWORD = 13,		-- Spirit Sword
	WEAPON_FETUS = 14,				-- (currently unused)
	WEAPON_UMBILICAL_WHIP = 15,		-- Fetus whip
	NUM_WEAPON_TYPES = 16
}

---@enum PlayerSpriteLayer
PlayerSpriteLayer = {
	SPRITE_GLOW = 0,
	SPRITE_BODY = 1,
	SPRITE_BODY0 = 2,
	SPRITE_BODY1 = 3,
	SPRITE_HEAD = 4,
	SPRITE_HEAD0 = 5,
	SPRITE_HEAD1 = 6,
	SPRITE_HEAD2 = 7,
	SPRITE_HEAD3 = 8,
	SPRITE_HEAD4 = 9,
	SPRITE_HEAD5 = 10,
	SPRITE_TOP0 = 11,
	SPRITE_EXTRA = 12,
	SPRITE_GHOST = 13,
	SPRITE_BACK = 14,
	NUM_SPRITE_LAYERS = 15
}

---@enum BabySubType
BabySubType = {
	BABY_UNASSIGNED = - 1,
	BABY_SPIDER = 0,
	BABY_LOVE = 1,
	BABY_BLOAT = 2,
	BABY_WATER = 3,
	BABY_PSY = 4,
	BABY_CURSED = 5,
	BABY_TROLL = 6,
	BABY_YBAB = 7,
	BABY_COCKEYED = 8,
	BABY_HOST = 9,
	BABY_LOST = 10,
	BABY_CUTE = 11,
	BABY_CROW = 12,
	BABY_SHADOW = 13,
	BABY_GLASS = 14,
	BABY_GOLD = 15,
	BABY_CY = 16,
	BABY_BEAN = 17,
	BABY_MAG = 18,
	BABY_WRATH = 19,
	BABY_WRAPPED = 20,
	BABY_BEGOTTEN = 21,
	BABY_DEAD = 22,
	BABY_FIGHTING = 23,
	BABY_0 = 24,
	BABY_GLITCH = 25,
	BABY_MAGNET = 26,
	BABY_BLACK = 27,
	BABY_RED = 28,
	BABY_WHITE = 29,
	BABY_BLUE = 30,
	BABY_RAGE = 31,
	BABY_CRY = 32,
	BABY_YELLOW = 33,
	BABY_LONG = 34,
	BABY_GREEN = 35,
	BABY_LIL = 36,
	BABY_BIG = 37,
	BABY_BROWN = 38,
	BABY_NOOSE = 39,
	BABY_HIVE = 40,
	BABY_BUDDY = 41,
	BABY_COLORFUL = 42,
	BABY_WHORE = 43,
	BABY_CRACKED = 44,
	BABY_DRIPPING = 45,
	BABY_BLINDING = 46,
	BABY_SUCKY = 47,
	BABY_DARK = 48,
	BABY_PICKY = 49,
	BABY_REVENGE = 50,
	BABY_BELIAL = 51,
	BABY_SALE = 52,
	BABY_GOAT = 53,
	BABY_SUPER_GREED = 54,
	BABY_MORT = 55,
	BABY_APOLLYON = 56,
	BABY_BONE = 57,
	BABY_BOUND = 58,
	--BABY_BASIC = 59
	
	-- Repentance
	BABY_FOUND_SOUL = 59,
	BABY_LOST_WHITE = 60,
	BABY_LOST_BLACK = 61,
	BABY_LOST_BLUE = 62,
	BABY_LOST_GREY = 63,
	BABY_WISP = 64,
	BABY_DOUBLE = 65,
	BABY_GLOWING = 66,
	BABY_ILLUSION = 67,
	BABY_HOPE = 68,
	BABY_SOLOMON_A = 69,
	BABY_SOLOMON_B = 70,
	BABY_BASIC = 71
}

---@enum LaserOffset
LaserOffset = {
	LASER_TECH1_OFFSET = 0,
	LASER_TECH2_OFFSET = 1,
	LASER_TECH5_OFFSET = 2,
	LASER_SHOOP_OFFSET = 3,
	LASER_BRIMSTONE_OFFSET = 4,
	LASER_MOMS_EYE_OFFSET = 5,
	LASER_TRACTOR_BEAM_OFFSET = 6
}

---@enum ActionTriggers
ActionTriggers = {
	ACTIONTRIGGER_NONE = 0,
	ACTIONTRIGGER_BOMBPLACED = 1,
	ACTIONTRIGGER_MOVED = 1 << 1,
	ACTIONTRIGGER_SHOOTING = 1 << 2,
	ACTIONTRIGGER_CARDPILLUSED = 1 << 3,
	ACTIONTRIGGER_ITEMACTIVATED = 1 << 4,
	ACTIONTRIGGER_ITEMSDROPPED = 1 << 5
}

---@enum GridCollisionClass
GridCollisionClass = {
	COLLISION_NONE = 0,
	COLLISION_PIT = 1,
	COLLISION_OBJECT = 2,
	COLLISION_SOLID = 3,
	COLLISION_WALL = 4,
	COLLISION_WALL_EXCEPT_PLAYER = 5
}

---@enum Direction
Direction = {
	NO_DIRECTION = -1,
	LEFT = 0,
	UP = 1,
	RIGHT = 2,
	DOWN = 3
}

---@enum LevelStage
LevelStage = {
	STAGE_NULL = 0,
	STAGE1_1 = 1,
	STAGE1_2 = 2,
	STAGE2_1 = 3,
	STAGE2_2 = 4,
	STAGE3_1 = 5,
	STAGE3_2 = 6,
	STAGE4_1 = 7,
	STAGE4_2 = 8,
	STAGE4_3 = 9,
	STAGE5 = 10,
	STAGE6 = 11,
	STAGE7 = 12,
	STAGE8 = 13, -- Home
	NUM_STAGES = 14,
	
	STAGE1_GREED = 1,
	STAGE2_GREED = 2,
	STAGE3_GREED = 3,
	STAGE4_GREED = 4,
	STAGE5_GREED = 5,
	STAGE6_GREED = 6,
	STAGE7_GREED = 7,
	
	NUM_BACKWARDS_STAGES = 7, -- Save stages up to Mausoleum II for the Ascent (7 stages)
}

---@enum StageType
StageType = {
	STAGETYPE_ORIGINAL = 0,
	STAGETYPE_WOTL = 1,
	STAGETYPE_AFTERBIRTH = 2,
	STAGETYPE_GREEDMODE = 3, -- deprecated, Greed Mode no longer has its own stages
	STAGETYPE_REPENTANCE = 4,
	STAGETYPE_REPENTANCE_B = 5,
}

---@enum RoomType
RoomType = {
	ROOM_NULL = 0,
	ROOM_DEFAULT = 1,
	ROOM_SHOP = 2,
	ROOM_ERROR = 3,
	ROOM_TREASURE = 4,
	ROOM_BOSS = 5,
	ROOM_MINIBOSS = 6,
	ROOM_SECRET = 7,
	ROOM_SUPERSECRET = 8,
	ROOM_ARCADE = 9,
	ROOM_CURSE = 10,
	ROOM_CHALLENGE = 11,
	ROOM_LIBRARY = 12,
	ROOM_SACRIFICE = 13,
	ROOM_DEVIL = 14,
	ROOM_ANGEL = 15,
	ROOM_DUNGEON = 16,
	ROOM_BOSSRUSH = 17,
	ROOM_ISAACS = 18,
	ROOM_BARREN = 19,
	ROOM_CHEST = 20,
	ROOM_DICE = 21,
	ROOM_BLACK_MARKET = 22,
	ROOM_GREED_EXIT = 23,
	--NUM_ROOMTYPES = 24
	
	-- Repentance
	ROOM_PLANETARIUM = 24,
	ROOM_TELEPORTER = 25,		-- Mausoleum teleporter entrance, currently unused
	ROOM_TELEPORTER_EXIT = 26,	-- Mausoleum teleporter exit, currently unused
	ROOM_SECRET_EXIT = 27,		-- Trapdoor room to the alt path floors
	ROOM_BLUE = 28,				-- Blue Womb rooms spawned by Blue Key
	ROOM_ULTRASECRET = 29,		-- Red secret rooms
	NUM_ROOMTYPES = 30
}

---@enum RoomShape
RoomShape = {
	ROOMSHAPE_1x1 = 1,
	ROOMSHAPE_IH = 2,
	ROOMSHAPE_IV = 3,
	ROOMSHAPE_1x2 = 4,
	ROOMSHAPE_IIV = 5,
	ROOMSHAPE_2x1 = 6,
	ROOMSHAPE_IIH = 7,
	ROOMSHAPE_2x2 = 8,
	ROOMSHAPE_LTL = 9,
	ROOMSHAPE_LTR = 10,
	ROOMSHAPE_LBL = 11,
	ROOMSHAPE_LBR = 12,
	NUM_ROOMSHAPES = 13
}

---@enum DoorSlot
DoorSlot = {
	NO_DOOR_SLOT = - 1,
	LEFT0 = 0,
	UP0 = 1,
	RIGHT0 = 2,
	DOWN0 = 3,
	LEFT1 = 4,
	UP1 = 5,
	RIGHT1 = 6,
	DOWN1 = 7,
	NUM_DOOR_SLOTS = 8
}

---@enum LevelCurse
LevelCurse = {
	CURSE_NONE = 0,
	CURSE_OF_DARKNESS = 1,
	CURSE_OF_LABYRINTH = 1 << 1,
	CURSE_OF_THE_LOST = 1 << 2,
	CURSE_OF_THE_UNKNOWN = 1 << 3,
	CURSE_OF_THE_CURSED = 1 << 4,
	CURSE_OF_MAZE = 1 << 5,
	CURSE_OF_BLIND = 1 << 6,
	CURSE_OF_GIANT = 1 << 7, -- Less rooms, all rooms are large and generated by merging existing rooms together (currently unused)
	NUM_CURSES = 9
}

---@enum PlayerType
PlayerType = {
	PLAYER_POSSESSOR = -1,
	
	PLAYER_ISAAC = 0,
	PLAYER_MAGDALENE = 1,
	PLAYER_CAIN = 2,
	PLAYER_JUDAS = 3,
	PLAYER_BLUEBABY = 4,
	PLAYER_EVE = 5,
	PLAYER_SAMSON = 6,
	PLAYER_AZAZEL = 7,
	PLAYER_LAZARUS = 8,
	PLAYER_EDEN = 9,
	PLAYER_THELOST = 10,
	PLAYER_LAZARUS2 = 11,
	PLAYER_BLACKJUDAS = 12,
	PLAYER_LILITH = 13,
	PLAYER_KEEPER = 14,
	PLAYER_APOLLYON = 15,
	PLAYER_THEFORGOTTEN = 16,
	PLAYER_THESOUL = 17,
	--NUM_PLAYER_TYPES = 18
	
	-- Repentance
	PLAYER_BETHANY = 18,
	PLAYER_JACOB = 19,
	PLAYER_ESAU = 20,
	PLAYER_ISAAC_B = 21,
	PLAYER_MAGDALENE_B = 22,
	PLAYER_CAIN_B = 23,
	PLAYER_JUDAS_B = 24,
	PLAYER_BLUEBABY_B = 25,
	PLAYER_EVE_B = 26,
	PLAYER_SAMSON_B = 27,
	PLAYER_AZAZEL_B = 28,
	PLAYER_LAZARUS_B = 29,
	PLAYER_EDEN_B = 30,
	PLAYER_THELOST_B = 31,
	PLAYER_LILITH_B = 32,
	PLAYER_KEEPER_B = 33,
	PLAYER_APOLLYON_B = 34,
	PLAYER_THEFORGOTTEN_B = 35,
	PLAYER_BETHANY_B = 36,
	PLAYER_JACOB_B = 37,
	PLAYER_LAZARUS2_B = 38,
	PLAYER_JACOB2_B = 39,
	PLAYER_THESOUL_B = 40,
	NUM_PLAYER_TYPES = 41
}

---@enum PlayerForm
PlayerForm = {
	PLAYERFORM_GUPPY = 0,
	PLAYERFORM_LORD_OF_THE_FLIES = 1,
	PLAYERFORM_MUSHROOM = 2,
	PLAYERFORM_ANGEL = 3,
	PLAYERFORM_BOB = 4,
	PLAYERFORM_DRUGS = 5,
	PLAYERFORM_MOM = 6,
	PLAYERFORM_BABY = 7,
	PLAYERFORM_EVIL_ANGEL = 8,
	PLAYERFORM_POOP = 9,
	PLAYERFORM_BOOK_WORM = 10,
	PLAYERFORM_ADULTHOOD = 11,
	PLAYERFORM_SPIDERBABY = 12,
	PLAYERFORM_STOMPY = 13,
	PLAYERFORM_FLIGHT = 14, -- AB+, unused
	NUM_PLAYER_FORMS = 15
}

---@enum PillColor
PillColor = {
	PILL_NULL = 0,
	PILL_BLUE_BLUE = 1,
	PILL_WHITE_BLUE = 2,
	PILL_ORANGE_ORANGE = 3,
	PILL_WHITE_WHITE = 4,
	PILL_REDDOTS_RED = 5,
	PILL_PINK_RED = 6,
	PILL_BLUE_CADETBLUE = 7,
	PILL_YELLOW_ORANGE = 8,
	PILL_ORANGEDOTS_WHITE = 9,
	PILL_WHITE_AZURE = 10,
	PILL_BLACK_YELLOW = 11,
	PILL_WHITE_BLACK = 12,
	PILL_WHITE_YELLOW = 13,
	--NUM_PILLS = 14
	
	NUM_STANDARD_PILLS = 14,
	PILL_GOLD = 14,
	NUM_PILLS = 15,
	PILL_GIANT_FLAG = 0x800,
	PILL_COLOR_MASK = 0x7ff,
}

---@enum Music
Music = {
	MUSIC_NULL = 0,
	MUSIC_BASEMENT = 1,
	MUSIC_CAVES = 2,
	MUSIC_DEPTHS = 3,
	MUSIC_CELLAR = 4,
	MUSIC_CATACOMBS = 5,
	MUSIC_NECROPOLIS = 6,
	MUSIC_WOMB_UTERO = 7,
	MUSIC_GAME_OVER = 8,
	MUSIC_BOSS = 9,
	MUSIC_CATHEDRAL = 10,
	MUSIC_SHEOL = 11,
	MUSIC_DARK_ROOM = 12,
	MUSIC_CHEST = 13,
	MUSIC_BURNING_BASEMENT = 14,
	MUSIC_FLOODED_CAVES = 15,
	MUSIC_DANK_DEPTHS = 16,
	MUSIC_SCARRED_WOMB = 17,
	MUSIC_BLUE_WOMB = 18,
	MUSIC_UTERO = 19,
	MUSIC_MOM_BOSS = 20,
	MUSIC_MOMS_HEART_BOSS = 21,
	MUSIC_ISAAC_BOSS = 22,
	MUSIC_SATAN_BOSS = 23,
	MUSIC_DARKROOM_BOSS = 24,
	MUSIC_BLUEBABY_BOSS = 25,
	MUSIC_BOSS2 = 26,
	MUSIC_HUSH_BOSS = 27,
	MUSIC_ULTRAGREED_BOSS = 28,
	MUSIC_LIBRARY_ROOM = 30,
	MUSIC_SECRET_ROOM = 31,
	MUSIC_SECRET_ROOM2 = 32,
	MUSIC_DEVIL_ROOM = 33,
	MUSIC_ANGEL_ROOM = 34,
	MUSIC_SHOP_ROOM = 35,
	MUSIC_ARCADE_ROOM = 36,
	MUSIC_BOSS_OVER = 37,
	MUSIC_CHALLENGE_FIGHT = 38,
	MUSIC_BOSS_RUSH = 39,
	MUSIC_JINGLE_BOSS_RUSH_OUTRO = 40,
	MUSIC_BOSS3 = 41,
	MUSIC_JINGLE_BOSS_OVER3 = 42,
	MUSIC_MOTHER_BOSS = 43,
	MUSIC_DOGMA_BOSS = 44,
	MUSIC_BEAST_BOSS = 45,
	MUSIC_JINGLE_MOTHER_OVER = 47,
	MUSIC_JINGLE_DOGMA_OVER = 48,
	MUSIC_JINGLE_BEAST_OVER = 49,
	MUSIC_PLANETARIUM = 50,
	MUSIC_SECRET_ROOM_ALT_ALT = 51,
	MUSIC_BOSS_OVER_TWISTED = 52,
	MUSIC_CREDITS = 60,
	MUSIC_TITLE = 61,
	MUSIC_TITLE_AFTERBIRTH = 62,
	MUSIC_TITLE_REPENTANCE = 63,
	MUSIC_JINGLE_GAME_START_ALT = 64,
	MUSIC_JINGLE_NIGHTMARE_ALT = 65,
	MUSIC_MOTHERS_SHADOW_INTRO = 66,
	MUSIC_DOGMA_INTRO = 67,
	MUSIC_STRANGE_DOOR_JINGLE = 68,
	MUSIC_DARK_CLOSET = 69,
	MUSIC_CREDITS_ALT = 70,
	MUSIC_CREDITS_ALT_FINAL = 71,
	MUSIC_JINGLE_BOSS = 81,
	MUSIC_JINGLE_BOSS_OVER = 83,
	MUSIC_JINGLE_HOLYROOM_FIND = 84,
	MUSIC_JINGLE_SECRETROOM_FIND = 85,
	MUSIC_JINGLE_TREASUREROOM_ENTRY_0 = 87,
	MUSIC_JINGLE_TREASUREROOM_ENTRY_1 = 88,
	MUSIC_JINGLE_TREASUREROOM_ENTRY_2 = 89,
	MUSIC_JINGLE_TREASUREROOM_ENTRY_3 = 90,
	MUSIC_JINGLE_CHALLENGE_ENTRY = 91,
	MUSIC_JINGLE_CHALLENGE_OUTRO = 92,
	MUSIC_JINGLE_GAME_OVER = 93,
	MUSIC_JINGLE_DEVILROOM_FIND = 94,
	MUSIC_JINGLE_GAME_START = 95,
	MUSIC_JINGLE_NIGHTMARE = 96,
	MUSIC_JINGLE_BOSS_OVER2 = 97,
	MUSIC_JINGLE_HUSH_OVER = 98,
	MUSIC_INTRO_VOICEOVER = 100,
	MUSIC_EPILOGUE_VOICEOVER = 101,
	MUSIC_VOID = 102,
	MUSIC_VOID_BOSS = 103,
	MUSIC_DOWNPOUR = 104,
	MUSIC_MINES = 105,
	MUSIC_MAUSOLEUM = 106,
	MUSIC_CORPSE = 107,
	MUSIC_DROSS = 108,
	MUSIC_ASHPIT = 109,
	MUSIC_GEHENNA = 110,
	MUSIC_MORTIS = 111, -- unused
	MUSIC_ISAACS_HOUSE = 112,
	MUSIC_FINAL_VOICEOVER = 113,
	MUSIC_DOWNPOUR_REVERSE = 114,
	MUSIC_DROSS_REVERSE = 115,
	MUSIC_MINESHAFT_AMBIENT = 116,
	MUSIC_MINESHAFT_ESCAPE = 117,
	MUSIC_REVERSE_GENESIS = 118,
	NUM_MUSIC = 119
}

---@enum SoundEffect
SoundEffect = {
	SOUND_NULL = 0,
	SOUND_1UP = 1,
	SOUND_BIRD_FLAP = 2,
	SOUND_BLOBBY_WIGGLE = 3,
	SOUND_INSECT_SWARM_LOOP = 4,
	SOUND_BLOOD_LASER = 5,
	SOUND_BLOOD_LASER_SMALL = 6, -- new
	SOUND_BLOOD_LASER_LARGE = 7,
	SOUND_BOOK_PAGE_TURN_12 = 8,
	SOUND_BOSS_BUG_HISS = 9,
	SOUND_BLOOD_LASER_LARGER = 10, -- new
	SOUND_BOSS_GURGLE_ROAR = 11,
	SOUND_BOSS_LITE_GURGLE = 12,
	SOUND_BOSS_LITE_HISS = 13,
	SOUND_BOSS_LITE_ROAR = 14,
	SOUND_BOSS_LITE_SLOPPY_ROAR = 15,
	SOUND_BOSS_SPIT_BLOB_BARF = 16,
	SOUND_PAPER_IN = 17, -- new
	SOUND_PAPER_OUT = 18, -- new
	SOUND_CHEST_DROP = 21,
	SOUND_CHEST_OPEN = 22,
	SOUND_CHOIR_UNLOCK = 23,
	SOUND_COIN_SLOT = 24,
	SOUND_CUTE_GRUNT = 25,
	SOUND_DEATH_BURST_BONE = 27, -- new
	SOUND_DEATH_BURST_LARGE = 28,
	SOUND_DEATH_REVERSE = 29, -- new
	SOUND_DEATH_BURST_SMALL = 30,
	SOUND_DEATH_CARD = 33,
	SOUND_DEVIL_CARD = 34,
	SOUND_DOOR_HEAVY_CLOSE = 35,
	SOUND_DOOR_HEAVY_OPEN = 36,
	SOUND_FART = 37,
	SOUND_FETUS_JUMP = 38,
	SOUND_FETUS_LAND = 40,
	SOUND_FIREDEATH_HISS = 43,
	SOUND_FLOATY_BABY_ROAR = 44,
	SOUND_COIN_INSERT = 45, -- new
	SOUND_METAL_DOOR_CLOSE = 46, -- new
	SOUND_METAL_DOOR_OPEN = 47, -- new
	SOUND_FORESTBOSS_STOMPS = 48,
	SOUND_SCYTHE_BREAK = 49, -- new
	SOUND_STONE_WALKER = 50, -- new
	SOUND_GASCAN_POUR = 51,
	SOUND_HELLBOSS_GROUNDPOUND = 52,
	SOUND_GLASS_BREAK = 53, -- new
	SOUND_HOLY = 54,
	SOUND_ISAAC_HURT_GRUNT = 55,
	SOUND_CHILD_HAPPY_ROAR_SHORT = 56,
	SOUND_CHILD_ANGRY_ROAR = 57,
	SOUND_KEYPICKUP_GAUNTLET = 58,
	SOUND_KEY_DROP0 = 59,
	SOUND_BABY_HURT = 60,
	SOUND_MAGGOT_BURST_OUT = 64,
	SOUND_MAGGOT_ENTER_GROUND = 66,
	SOUND_MEAT_FEET_SLOW0 = 68,
	SOUND_MEAT_IMPACTS = 69,
	SOUND_MEAT_IMPACTS_OLD = 70,
	SOUND_MEAT_JUMPS = 72,
	SOUND_MEATY_DEATHS = 77,
	SOUND_POT_BREAK_2 = 78, -- new
	SOUND_MUSHROOM_POOF_2 = 79, -- new
	SOUND_BLACK_POOF = 80, -- new
	SOUND_STATIC = 81, -- new
	SOUND_MOM_VOX_DEATH = 82,
	SOUND_MOM_VOX_EVILLAUGH = 84,
	SOUND_MOM_VOX_FILTERED_DEATH_1 = 85,
	SOUND_MOM_VOX_FILTERED_EVILLAUGH = 86,
	SOUND_MOM_VOX_FILTERED_HURT = 87,
	SOUND_MOM_VOX_FILTERED_ISAAC = 90,
	SOUND_MOM_VOX_GRUNT = 93,
	SOUND_MOM_VOX_HURT = 97,
	SOUND_MOM_VOX_ISAAC = 101,
	SOUND_MONSTER_GRUNT_0 = 104,
	SOUND_MONSTER_GRUNT_1 = 106,
	SOUND_MONSTER_GRUNT_2 = 108,
	SOUND_MONSTER_GRUNT_4 = 112,
	SOUND_MONSTER_GRUNT_5 = 114,
	SOUND_MONSTER_ROAR_0 = 115,
	SOUND_MONSTER_ROAR_1 = 116,
	SOUND_MONSTER_ROAR_2 = 117,
	SOUND_MONSTER_ROAR_3 = 118,
	SOUND_MONSTER_YELL_A = 119,
	SOUND_MONSTER_YELL_B = 122,
	SOUND_POWERUP1 = 128,
	SOUND_POWERUP2 = 129,
	SOUND_POWERUP3 = 130,
	SOUND_POWERUP_SPEWER = 132,
	SOUND_REDLIGHTNING_ZAP = 133,
	SOUND_REDLIGHTNING_ZAP_WEAK = 134,	 -- new
	SOUND_REDLIGHTNING_ZAP_STRONG = 135, -- new
	SOUND_REDLIGHTNING_ZAP_BURST = 136, -- new
	SOUND_ROCK_CRUMBLE = 137,
	SOUND_POT_BREAK = 138,
	SOUND_MUSHROOM_POOF = 139,
	SOUND_ROCKET_BLAST_DEATH = 141,
	SOUND_SMB_LARGE_CHEWS_4 = 142,
	SOUND_SCARED_WHIMPER = 143,
	SOUND_SHAKEY_KID_ROAR = 146,
	SOUND_SINK_DRAIN_GURGLE = 149,
	SOUND_TEARIMPACTS = 150,
	SOUND_TEARS_FIRE = 153,
	SOUND_UNLOCK00 = 156,
	SOUND_VAMP_GULP = 157,
	SOUND_WHEEZY_COUGH = 158,
	SOUND_SPIDER_COUGH = 159,
	SOUND_PORTAL_OPEN = 160,
	SOUND_PORTAL_LOOP = 161,
	SOUND_PORTAL_SPAWN = 162,
	SOUND_TAR_LOOP = 163,
	SOUND_ZOMBIE_WALKER_KID = 165,
	SOUND_ANIMAL_SQUISH = 166,
	SOUND_ANGRY_GURGLE = 167,
	SOUND_BAND_AID_PICK_UP = 169,
	SOUND_BATTERYCHARGE = 170,
	SOUND_BEEP = 171,
	SOUND_LIGHTBOLT = 172, -- new
	SOUND_LIGHTBOLT_CHARGE = 173, -- new
	SOUND_BLOODBANK_TOUCHED = 174,
	SOUND_BLOODBANK_SPAWN = 175,
	SOUND_BLOODSHOOT = 178,
	SOUND_BOIL_HATCH = 181,
	SOUND_BOSS1_EXPLOSIONS = 182,
	SOUND_EXPLOSION_WEAK = 183, -- new
	SOUND_EXPLOSION_STRONG = 184, -- new
	SOUND_BOSS2_BUBBLES = 185,
	SOUND_EXPLOSION_DEBRIS = 186, -- new
	SOUND_BOSS2INTRO_ERRORBUZZ = 187,
	SOUND_CASTLEPORTCULLIS = 190,
	SOUND_CHARACTER_SELECT_LEFT = 194,
	SOUND_CHARACTER_SELECT_RIGHT = 195,
	SOUND_DERP = 197,
	SOUND_DIMEDROP = 198,
	SOUND_DIMEPICKUP = 199,
	SOUND_LUCKYPICKUP = 200,
	SOUND_FETUS_FEET = 201,
	SOUND_GOLDENKEY = 204,
	SOUND_GOOATTACH0 = 205,
	SOUND_GOODEATH = 207,
	SOUND_HAND_LASERS = 211,
	SOUND_HEARTIN = 212,
	SOUND_HEARTOUT = 213,
	SOUND_HELL_PORTAL1 = 214,
	SOUND_HELL_PORTAL2 = 215,
	SOUND_ISAACDIES = 217,
	SOUND_ITEMRECHARGE = 218,
	SOUND_KISS_LIPS1 = 219,
	SOUND_LEECH = 221,
	SOUND_MAGGOTCHARGE = 224,
	SOUND_MEATHEADSHOOT = 226,
	SOUND_METAL_BLOCKBREAK = 229,
	SOUND_NICKELDROP = 231,
	SOUND_NICKELPICKUP = 232,
	SOUND_PENNYDROP = 233,
	SOUND_PENNYPICKUP = 234,
	SOUND_PLOP = 237,
	SOUND_SATAN_APPEAR = 238,
	SOUND_SATAN_BLAST = 239,
	SOUND_SATAN_CHARGE_UP = 240,
	SOUND_SATAN_GROW = 241,
	SOUND_SATAN_HURT = 242,
	SOUND_SATAN_RISE_UP = 243,
	SOUND_SATAN_SPIT = 245,
	SOUND_SATAN_STOMP = 246,
	SOUND_SCAMPER = 249,
	SOUND_SHELLGAME = 252,
	SOUND_SLOTSPAWN = 255,
	SOUND_SPLATTER = 258,
	SOUND_STEAM_HALFSEC = 261,
	SOUND_STONESHOOT = 262,
	SOUND_WEIRD_WORM_SPIT = 263,
	SOUND_SUMMONSOUND = 265,
	SOUND_SUPERHOLY = 266,
	SOUND_THUMBS_DOWN = 267,
	SOUND_THUMBSUP = 268,
	SOUND_FIRE_BURN = 269,
	SOUND_HAPPY_RAINBOW = 270,
	SOUND_LASERRING = 271,			-- new (ab)
	SOUND_LASERRING_WEAK = 272,		-- new (ab)
	SOUND_LASERRING_STRONG = 273,	-- new (ab)
	SOUND_CASH_REGISTER = 274,		-- new (ab+)

	SOUND_ANGEL_WING = 275,
	SOUND_ANGEL_BEAM = 276,
	SOUND_HOLY_MANTLE = 277,

	SOUND_MEGA_BLAST_START = 278,
	SOUND_MEGA_BLAST_LOOP = 279,
	SOUND_MEGA_BLAST_END = 280,

	SOUND_BLOOD_LASER_LOOP = 281,
	
	SOUND_MENU_SCROLL = 282,
	SOUND_MENU_NOTE_APPEAR = 283,
	SOUND_MENU_NOTE_HIDE = 284,
	SOUND_MENU_CHARACTER_SELECT = 285,
	SOUND_SUMMON_POOF = 286,

	SOUND_BOO_MAD = 300,
	SOUND_FART_GURG = 301,
	SOUND_FAT_GRUNT = 302,
	SOUND_FAT_WIGGLE = 303,
	SOUND_FIRE_RUSH = 304,
	SOUND_GHOST_ROAR = 305,
	SOUND_GHOST_SHOOT = 306,
	SOUND_GRROOWL = 307,
	SOUND_GURG_BARF = 308,
	SOUND_INHALE = 309,
	SOUND_LOW_INHALE = 310,
	SOUND_MEGA_PUKE = 311,
	SOUND_MOUTH_FULL = 312,
	SOUND_MULTI_SCREAM = 313,
	SOUND_SKIN_PULL = 314,
	SOUND_WHISTLE = 315,
	SOUND_DEVILROOM_DEAL = 316,
	SOUND_SPIDER_SPIT_ROAR = 317,
	SOUND_WORM_SPIT = 318,
	SOUND_LITTLE_SPIT = 319,
	SOUND_SATAN_ROOM_APPEAR = 320,
	SOUND_HEARTBEAT = 321,
	SOUND_HEARTBEAT_FASTER = 322,
	SOUND_HEARTBEAT_FASTEST = 323,

	SOUND_48_HR_ENERGY = 324,
	SOUND_ALGIZ = 325,
	SOUND_AMNESIA = 326,
	SOUND_ANZUS = 327,
	SOUND_BAD_GAS = 328,
	SOUND_BAD_TRIP = 329,
	SOUND_BALLS_OF_STEEL = 330,
	SOUND_BERKANO = 331,
	SOUND_BOMBS_ARE_KEY = 332,
	SOUND_CARD_VS_HUMAN = 333,
	SOUND_CHAOS_CARD = 334,
	SOUND_CREDIT_CARD = 335,
	SOUND_DAGAZ = 336,
	SOUND_DEATH = 337,
	SOUND_EHWAZ = 338,
	SOUND_EXPLOSIVE_DIAH = 339,
	SOUND_FULL_HP = 340,
	SOUND_HAGALAZ = 341,
	SOUND_HP_DOWN = 342,
	SOUND_HP_UP = 343,
	SOUND_HEMATEMISIS = 344,
	SOUND_I_FOUND_PILLS = 345,
	SOUND_JERA = 346,
	SOUND_JOKER = 347,
	SOUND_JUDGEMENT = 348,
	SOUND_JUSTICE = 349,
	SOUND_LEMON_PARTY = 350,
	SOUND_LUCK_DOWN = 351,
	SOUND_LUCK_UP = 352,
	SOUND_PARALYSIS = 353,
	SOUND_PERTHRO = 354,
	SOUND_PHEROMONES = 355,
	SOUND_PRETTY_FLY = 356,
	SOUND_PUBERTY = 357,
	SOUND_RUA_WIZ = 358,
	SOUND_RANGE_DOWN = 359,
	SOUND_RANGE_UP = 360,
	SOUND_RULES_CARD = 361,
	SOUND_SEE_4EVER = 362,
	SOUND_SPEED_DOWN = 363,
	SOUND_SPEED_UP = 364,
	SOUND_STRENGTH = 365,
	SOUND_SUICIDE_KING = 366,
	SOUND_TEARS_DOWN = 367,
	SOUND_TEARS_UP = 368,
	SOUND_TELEPILLS = 369,
	SOUND_TEMPERANCE = 370,
	SOUND_THE_CHARIOT = 371,
	SOUND_THE_DEVIL = 372,
	SOUND_THE_EMPEROR = 373,
	SOUND_EMPRESS = 374,
	SOUND_FOOL = 375,
	SOUND_HANGED_MAN = 376,
	SOUND_HERMIT = 377,
	SOUND_HIEROPHANT = 378,
	SOUND_HIGHT_PRIESTESS = 379,
	SOUND_THE_LOVERS = 380,
	SOUND_MAGICIAN = 381,
	SOUND_MOON = 382,
	SOUND_STARS = 383,
	SOUND_SUN = 384,
	SOUND_TOWER = 385,
	SOUND_WORLD = 386,
	SOUND_TWO_CLUBS = 387,
	SOUND_TWO_DIAMONDS = 388,
	SOUND_TWO_HEARTS = 389,
	SOUND_TWO_SPADES = 390,
	SOUND_WHEEL_OF_FORTUNE = 391,
	SOUND_RAGMAN_1 = 392,
	SOUND_RAGMAN_2 = 393,
	SOUND_RAGMAN_3 = 394,
	SOUND_RAGMAN_4 = 395,
	SOUND_FLUSH = 396,
	SOUND_WATER_DROP = 397,
	SOUND_WET_FEET = 398,

	SOUND_ADDICTED = 399,
	SOUND_DICE_SHARD = 400,
	SOUND_EMERGENCY = 401,
	SOUND_INFESTED_EXCL = 402,
	SOUND_INFESTED_QUEST = 403,
	SOUND_JAIL_CARD = 404,
	SOUND_LARGER = 405,
	SOUND_PERCS = 406,
	SOUND_POWER_PILL = 407,
	SOUND_QUESTION_MARK = 408,
	SOUND_RELAX = 409,
	SOUND_RETRO = 410,
	SOUND_SMALL = 411,
	SOUND_QQQ = 412, -- ??? pill
	SOUND_DANGLE_WHISTLE = 413,
	SOUND_LITTLE_HORN_COUGH = 414,
	SOUND_LITTLE_HORN_GRUNT_1 = 415,
	SOUND_LITTLE_HORN_GRUNT_2 = 416,
	SOUND_THE_FORSAKEN_LAUGH = 417,
	SOUND_THE_FORSAKEN_SCREAM = 418,
	SOUND_THE_STAIN_BURST = 419,
	SOUND_BROWNIE_LAUGH = 420,
	SOUND_HUSH_ROAR = 421,
	SOUND_HUSH_GROWL = 422,
	SOUND_HUSH_LOW_ROAR = 423,
	SOUND_FRAIL_CHARGE = 424,
	SOUND_HUSH_CHARGE = 425,
	SOUND_MAW_OF_VOID = 426,
	SOUND_ULTRA_GREED_COIN_DESTROY = 427,
	SOUND_ULTRA_GREED_COINS_FALLING = 428,
	SOUND_ULTRA_GREED_DEATH_SCREAM = 429,
	SOUND_ULTRA_GREED_TURN_GOLD_1 = 430,
	SOUND_ULTRA_GREED_TURN_GOLD_2 = 431,
	SOUND_ULTRA_GREED_ROAR_1 = 432,
	SOUND_ULTRA_GREED_ROAR_2 = 433,
	SOUND_ULTRA_GREED_SPIT = 434,
	SOUND_ULTRA_GREED_PULL_SLOT = 435,
	SOUND_ULTRA_GREED_SLOT_SPIN_LOOP = 436,
	SOUND_ULTRA_GREED_SLOT_STOP = 437,
	SOUND_ULTRA_GREED_SLOT_WIN_LOOP_END = 438,
	SOUND_ULTRA_GREED_SLOT_WIN_LOOP = 439,
	SOUND_ULTRA_GREED_SPINNING = 440,
	SOUND_DOG_BARK = 441,
	SOUND_DOG_HOWELL = 442,
	SOUND_X_LAX = 443,
	SOUND_WRONG = 444,
	SOUND_VURP = 445,
	SOUND_SUNSHINE = 446,
	SOUND_SPADES = 447,
	SOUND_HORF = 448,
	SOUND_HOLY_CARD = 449,
	SOUND_HEARTS = 450,
	SOUND_GULP = 451,
	SOUND_FRIENDS = 452,
	SOUND_EXCITED = 453,
	SOUND_DROWSY = 454,
	SOUND_DIAMONDS = 455,
	SOUND_CLUBS = 456,
	SOUND_BLACK_RUNE = 457,
	SOUND_PING_PONG = 458,
	SOUND_SPEWER = 459,
	SOUND_MOM_FOOTSTEPS = 460,
	SOUND_BONE_HEART = 461,
	SOUND_BONE_SNAP = 462,
	SOUND_SHOVEL_DROP = 463,
	SOUND_SHOVEL_DIG = 464,
	SOUND_GOLD_HEART = 465,
	SOUND_GOLD_HEART_DROP = 466,
	SOUND_BONE_DROP = 467,
	SOUND_UNHOLY = 468,
	SOUND_BUTTON_PRESS = 469,
	SOUND_GOLDENBOMB = 470,
	SOUND_CANDLE_LIGHT = 471,
	SOUND_THUNDER = 472,
	SOUND_WATER_FLOW_LOOP = 473,
	SOUND_BOSS2_DIVE = 474,
	SOUND_BOSS2INTRO_PIPES_TURNON = 475,
	SOUND_WATER_FLOW_LARGE = 476,
	SOUND_DEMON_HIT = 477,
	SOUND_PUNCH = 478,
	SOUND_FLUTE = 479,
	SOUND_LAVA_LOOP = 480,
	SOUND_WOOD_PLANK_BREAK = 481,
	SOUND_BULLET_SHOT = 482,
	SOUND_FLAME_BURST = 483,
	SOUND_INFLATE = 484,
	SOUND_CLAP = 485,
	SOUND_BOSS2INTRO_WATER_EXPLOSION = 486,
	SOUND_STONE_IMPACT = 487,
	SOUND_BOSS2_WATERTHRASHING = 488,
	SOUND_FART_MEGA = 489,
	SOUND_MATCHSTICK = 490,
	SOUND_FORTUNE_COOKIE = 491,
	SOUND_BULB_FLASH = 492,
	SOUND_BATTERYDISCHARGE = 493,
	SOUND_WHIP = 494,
	SOUND_WHIP_HIT = 495,
	SOUND_FREEZE = 496,
	SOUND_ROTTEN_HEART = 497,
	SOUND_FREEZE_SHATTER = 498,
	SOUND_BONE_BOUNCE = 499,
	SOUND_BONE_BREAK = 500,
	SOUND_BISHOP_HIT = 501,
	
	SOUND_CHAIN_LOOP = 503,
	SOUND_CHAIN_BREAK = 504,
	SOUND_MINECART_LOOP = 505,
	SOUND_TOOTH_AND_NAIL = 506,
	SOUND_TOOTH_AND_NAIL_TICK = 507,

	SOUND_STATIC_BUILDUP = 508,

	SOUND_THREAD_SNAP= 509,
	SOUND_BIG_LEECH = 510,

	SOUND_REVERSE_EXPLOSION = 511,
		
	SOUND_REVERSE_FOOL = 512,
	SOUND_REVERSE_MAGICIAN = 513,
	SOUND_REVERSE_HIGH_PRIESTESS = 514,
	SOUND_REVERSE_EMPRESS = 515,
	SOUND_REVERSE_EMPEROR = 516,
	SOUND_REVERSE_HIEROPHANT = 517,
	SOUND_REVERSE_LOVERS = 518,
	SOUND_REVERSE_CHARIOT = 519,
	SOUND_REVERSE_JUSTICE = 520,
	SOUND_REVERSE_HERMIT = 521,
	SOUND_REVERSE_WHEEL_OF_FORTUNE = 522,
	SOUND_REVERSE_STRENGTH = 523,
	SOUND_REVERSE_HANGED_MAN = 524,
	SOUND_REVERSE_DEATH = 525,
	SOUND_REVERSE_TEMPERANCE = 526,
	SOUND_REVERSE_DEVIL = 527,
	SOUND_REVERSE_TOWER = 528,
	SOUND_REVERSE_STARS = 529,
	SOUND_REVERSE_MOON = 530,
	SOUND_REVERSE_SUN = 531,
	SOUND_REVERSE_JUDGEMENT = 532,
	SOUND_REVERSE_WORLD = 533,

	SOUND_FLAMETHROWER_START = 534,
	SOUND_FLAMETHROWER_LOOP = 535,
	SOUND_FLAMETHROWER_END = 536,
	SOUND_ROCKET_LAUNCH = 537,
	SOUND_SWORD_SPIN = 538,
	SOUND_BABY_BRIM = 539,
	SOUND_KNIFE_PULL = 540,

	SOUND_DOGMA_APPEAR_SCREAM = 541,
	SOUND_DOGMA_DEATH = 542,
	SOUND_DOGMA_BLACKHOLE_CHARGE = 543,
	SOUND_DOGMA_BLACKHOLE_SHOOT = 544,
	SOUND_DOGMA_BLACKHOLE_OPEN = 545,
	SOUND_DOGMA_BLACKHOLE_CLOSE = 546,
	SOUND_DOGMA_BRIMSTONE_CHARGE = 547,
	SOUND_DOGMA_BRIMSTONE_SHOOT = 548,
	SOUND_DOGMA_GODHEAD = 549,
	SOUND_DOGMA_JACOBS = 550,
	SOUND_DOGMA_JACOBS_ZAP = 551,
	SOUND_DOGMA_SCREAM = 552,
	SOUND_DOGMA_PREACHER = 553,
	SOUND_DOGMA_RING_START = 554,
	SOUND_DOGMA_RING_LOOP = 555,
	SOUND_DOGMA_FEATHER_SPRAY = 556,
	SOUND_DOGMA_JACOBS_DOT = 557,
	SOUND_DOGMA_BLACKHOLE_LOOP = 558,

	SOUND_DOGMA_ANGEL_TRANSFORM = 559,
	SOUND_DOGMA_ANGEL_TRANSFORM_END = 560,
	SOUND_DOGMA_LIGHT_APPEAR = 561,
	SOUND_DOGMA_LIGHT_BALL_THROW = 562,
	SOUND_DOGMA_LIGHT_RAY_CHARGE = 563,
	SOUND_DOGMA_LIGHT_RAY_FIRE = 564,
	SOUND_DOGMA_SPIN_ATTACK = 565,
	SOUND_DOGMA_WING_FLAP = 566,
	SOUND_DOGMA_TV_BREAK = 567,

	SOUND_DIVINE_INTERVENTION = 568,

	SOUND_MENU_FLIP_LIGHT = 569,
	SOUND_MENU_FLIP_DARK = 570,
	SOUND_MENU_RIP = 571,
	SOUND_URN_OPEN = 572,
	SOUND_URN_CLOSE = 573,
	SOUND_RECALL = 574,

	SOUND_LARYNX_SCREAM_LO = 575,
	SOUND_LARYNX_SCREAM_MED = 576,
	SOUND_LARYNX_SCREAM_HI = 577,

	SOUND_GROUND_TREMOR = 578,

	SOUND_SOUL_PICKUP = 579,
	SOUND_BALL_AND_CHAIN_LOOP = 580,
	SOUND_BALL_AND_CHAIN_HIT = 581,
	SOUND_LAZARUS_FLIP_DEAD = 582,
	SOUND_LAZARUS_FLIP_ALIVE = 583,

	SOUND_RECALL_FINISH = 584,
	SOUND_ROCKET_LAUNCH_SHORT = 585,
	SOUND_ROCKET_LAUNCH_TINY = 586,
	SOUND_ROCKET_EXPLOSION = 587,
	SOUND_JELLY_BOUNCE = 588,
	SOUND_POOP_LASER = 589,
	SOUND_POISON_WARN = 590,
	SOUND_POISON_HURT = 591,
	SOUND_BERSERK_START = 592,
	SOUND_BERSERK_TICK = 593,
	SOUND_BERSERK_END = 594,
	SOUND_EDEN_GLITCH = 595,

	SOUND_RAILROAD_TRACK_RAISE = 596,
	SOUND_RAILROAD_TRACK_RAISE_FAR = 597,

	SOUND_MOM_AND_DAD_1 = 598,
	SOUND_MOM_AND_DAD_2 = 599,
	SOUND_MOM_AND_DAD_3 = 600,
	SOUND_MOM_AND_DAD_4 = 601,

	SOUND_THUMBSUP_AMPLIFIED = 602,
	SOUND_THUMBSDOWN_AMPLIFIED = 603,
	SOUND_POWERUP_SPEWER_AMPLIFIED = 604,
	SOUND_POOPITEM_THROW = 605,
	SOUND_POOPITEM_STORE = 606,
	SOUND_POOPITEM_HOLD = 607,
	SOUND_MIRROR_ENTER = 608,
	SOUND_MIRROR_EXIT = 609,
	SOUND_MIRROR_BREAK = 610,
	
	SOUND_ANIMA_TRAP = 611,
	SOUND_ANIMA_RATTLE = 612,
	SOUND_ANIMA_BREAK = 613,

	SOUND_VAMP_DOUBLE = 614,
	SOUND_FLASHBACK = 615,
	SOUND_DARK_ESAU_OPEN = 616,
	SOUND_DARK_ESAU_DEATH_OPEN = 617,
	
	SOUND_MOTHER_DEATH1 = 618,
	SOUND_MOTHER_DEATH2 = 619,
	SOUND_MOTHER_FISTPOUND1 = 620,
	SOUND_MOTHER_FISTPOUND2 = 621,
	SOUND_MOTHER_FISTPOUND3 = 622,
	SOUND_MOTHER_FISTULA = 623,
	SOUND_MOTHER_APPEAR1 = 624,
	SOUND_MOTHER_APPEAR2 = 625,
	SOUND_MOTHER_KNIFE_START = 626,
	SOUND_MOTHER_KNIFE_THROW = 627,
	SOUND_MOTHER_SUMMON_ISAACS_START = 628,
	SOUND_MOTHER_SUMMON_ISAACS_END = 629,
	SOUND_MOTHER_HAND_BOIL_START = 630,
	SOUND_MOTHER_GRUNT1 = 631,
	SOUND_MOTHER_GRUNT5 = 632,
	SOUND_MOTHER_GRUNT6 = 633,
	SOUND_MOTHER_GRUNT7 = 634,
	SOUND_MOTHER_LAUGH = 635,
	SOUND_MOTHER_SPIN_START = 636,
	SOUND_MOTHER_WALL_SHOT_START = 637,
	SOUND_MOTHER_MISC = 638,
	SOUND_MOTHER_SHOOT = 639,
	SOUND_MOTHER_SUCTION = 640,
	SOUND_MOTHER_ISAAC_RISE = 641,
	SOUND_MOTHER_ISAAC_HIT = 642,
	SOUND_MOTHER_WRIST_SWELL = 643,
	SOUND_MOTHER_WRIST_EXPLODE = 644,
	SOUND_MOTHER_DEATH_MELT = 645,
	SOUND_MOTHER_ANGER_SHAKE = 646,
	SOUND_MOTHER_CHARGE1 = 647,
	SOUND_MOTHER_CHARGE2 = 648,
	SOUND_MOTHER_LAND_SMASH = 649,

	SOUND_ISAAC_ROAR = 650,

	SOUND_FAMINE_APPEAR = 651,
	SOUND_FAMINE_DEATH_1 = 652,
	SOUND_FAMINE_DEATH_2 = 653,
	SOUND_FAMINE_DASH_START = 654,
	SOUND_FAMINE_DASH = 655,
	SOUND_FAMINE_SHOOT = 656,
	SOUND_FAMINE_BURST = 657,
	SOUND_FAMINE_GURGLE = 658,

	SOUND_PESTILENCE_MAGGOT_START = 659,
	SOUND_PESTILENCE_MAGGOT_SHOOT = 660,
	SOUND_PESTILENCE_MAGGOT_RETURN = 661,
	SOUND_PESTILENCE_BODY_SHOOT = 662,
	SOUND_PESTILENCE_HEAD_DEATH = 663,
	SOUND_PESTILENCE_DEATH = 664,
	SOUND_PESTILENCE_COUGH = 665,
	SOUND_PESTILENCE_BARF = 666,
	SOUND_PESTILENCE_APPEAR = 667,
	SOUND_PESTILENCE_HEAD_EXPLODE = 668,
	SOUND_PESTILENCE_MAGGOT_ENTER = 669,
	SOUND_PESTILENCE_MAGGOT_POPOUT = 670,
	SOUND_PESTILENCE_MAGGOT_SHOOT2 = 671,
	SOUND_PESTILENCE_NECK_PUKE = 672,
	SOUND_PESTILENCE_PUKE_START = 673,

	SOUND_WAR_APPEAR = 674,
	SOUND_WAR_APPEAR_LAVA = 675,
	SOUND_WAR_BOMB_TOSS = 676,
	SOUND_WAR_DASH_START = 677,
	SOUND_WAR_DASH = 678,
	SOUND_WAR_HORSE_DEATH = 679,
	SOUND_WAR_DEATH = 680,
	SOUND_WAR_FIRE_SCREEM = 681,
	SOUND_WAR_GRAB_PLAYER = 682,
	SOUND_WAR_BOMB_HOLD = 683,
	SOUND_WAR_BOMB_PULL_OUT = 684,
	SOUND_WAR_CHASE = 685,
	SOUND_WAR_BOMB_TICK = 686,
	SOUND_WAR_FLAME = 687,
	SOUND_WAR_LAVA_SPLASH = 688,
	SOUND_WAR_LAVA_DASH = 689,

	SOUND_DEATH_DIES = 690,
	SOUND_DEATH_DESTROY_SKULLS = 691,
	SOUND_DEATH_GROWL = 692,
	SOUND_DEATH_SWIPE_START = 693,
	SOUND_DEATH_SWIPE = 694,
	SOUND_DEATH_SUMMON_SCYTHES = 695,
	SOUND_DEATH_SUMMON_SKULLS = 696,

	SOUND_BEAST_DEATH = 697,
	SOUND_BEAST_LASER = 698,
	SOUND_BEAST_BACKGROUND_DIVE = 699,
	SOUND_BEAST_FIRE_RING = 700,
	SOUND_BEAST_GHOST_DASH = 701,
	SOUND_BEAST_GHOST_RISE = 702,
	SOUND_BEAST_LAVA_BALL_SPLASH = 703,
	SOUND_BEAST_LAVA_RISE = 704,
	SOUND_BEAST_SUCTION_LOOP = 705,
	SOUND_BEAST_FIRE_BARF = 706,
	SOUND_BEAST_GHOST_ROAR = 707,
	SOUND_BEAST_INTRO_SCREAM = 708,
	SOUND_BEAST_SUCTION_END = 709,
	SOUND_BEAST_SUCTION_START = 710,
	SOUND_BEAST_SPIT = 711,
	SOUND_BEAST_SURFACE_GROWL = 712,
	SOUND_BEAST_SWITCH_SIDES = 713,

	SOUND_MOTHERSHADOW_APPEAR = 714,
	SOUND_MOTHERSHADOW_CHARGE_UP = 715,
	SOUND_MOTHERSHADOW_DASH = 716,
	SOUND_MOTHERSHADOW_END = 717,
	SOUND_MOTHERSHADOW_INTRO = 718,

	SOUND_BUMBINO_DEATH = 719,
	SOUND_BUMBINO_DIZZY = 720,
	SOUND_BUMBINO_HIT_WALL = 721,
	SOUND_BUMBINO_MISC = 722,
	SOUND_BUMBINO_PUNCH = 723,
	SOUND_BUMBINO_RAM = 724,
	SOUND_BUMBINO_SLAM = 725,
	SOUND_BUMBINO_SNAP_OUT = 726,

	SOUND_SIREN_SCREAM = 727,
	SOUND_SIREN_SING = 728,

	SOUND_DEATH_SKULL_SUMMON_LOOP = 729,
	SOUND_DEATH_SKULL_SUMMON_END = 730,

	SOUND_BEAST_DEATH_2 = 731,
	SOUND_BEAST_ANGELIC_BLAST = 732,

	SOUND_ANCIENT_RECALL = 733,
	SOUND_ERA_WALK = 734,
	SOUND_HUGE_GROWTH = 735,
	SOUND_RUNE_SHARD = 736,
	SOUND_SHOT_SPEED_DOWN = 737,
	SOUND_SHOT_SPEED_UP = 738,
	SOUND_EXPERIMENTAL_PILL = 739,
	SOUND_CRACKED_KEY = 740,
	SOUND_QUEEN_OF_HEARTS = 741,
	SOUND_WILD_CARD = 742,
	SOUND_SOUL_OF_ISAAC = 743,
	SOUND_SOUL_OF_MAGDALENE = 744,
	SOUND_SOUL_OF_CAIN = 745,
	SOUND_SOUL_OF_JUDAS = 746,
	SOUND_SOUL_OF_XXX = 747,
	SOUND_SOUL_OF_EVE = 748,
	SOUND_SOUL_OF_SAMSON = 749,
	SOUND_SOUL_OF_AZAZEL = 750,
	SOUND_SOUL_OF_LAZARUS = 751,
	SOUND_SOUL_OF_EDEN = 752,
	SOUND_SOUL_OF_THE_LOST = 753,
	SOUND_SOUL_OF_LILITH = 754,
	SOUND_SOUL_OF_THE_KEEPER = 755,
	SOUND_SOUL_OF_APOLLYON = 756,
	SOUND_SOUL_OF_THE_FORGOTTEN = 757,
	SOUND_SOUL_OF_BETHANY = 758,
	SOUND_SOUL_OF_JACOB_AND_ESAU = 759,
	SOUND_MEGA_BAD_GAS = 760,
	SOUND_MEGA_BAD_TRIP = 761,
	SOUND_MEGA_BALLS_OF_STEEL = 762,
	SOUND_MEGA_BOMBS_ARE_KEY = 763,
	SOUND_MEGA_EXPLOSIVE_DIARRHEA = 764,
	SOUND_MEGA_FULL_HEALTH = 765,
	SOUND_MEGA_HEALTH_UP = 766,
	SOUND_MEGA_HEALTH_DOWN = 767,
	SOUND_MEGA_I_FOUND_PILLS = 768,
	SOUND_MEGA_PUBERTY = 769,
	SOUND_MEGA_PRETTY_FLY = 770,
	SOUND_MEGA_RANGE_DOWN = 771,
	SOUND_MEGA_RANGE_UP = 772,
	SOUND_MEGA_SPEED_DOWN = 773,
	SOUND_MEGA_SPEED_UP = 774,
	SOUND_MEGA_TEARS_DOWN = 775,
	SOUND_MEGA_TEARS_UP = 776,
	SOUND_MEGA_LUCK_DOWN = 777,
	SOUND_MEGA_LUCK_UP = 778,
	SOUND_MEGA_TELEPILLS = 779,
	SOUND_MEGA_48_HR_ENERGY = 780,
	SOUND_MEGA_HEMATEMESIS = 781,
	SOUND_MEGA_PARALYSIS = 782,
	SOUND_MEGA_I_CAN_SEE_FOREVER = 783,
	SOUND_MEGA_PHEROMONES = 784,
	SOUND_MEGA_AMNESIA = 785,
	SOUND_MEGA_LEMON_PARTY = 786,
	SOUND_MEGA_ARE_YOU_A_WIZARD = 787,
	SOUND_MEGA_PERCS = 788,
	SOUND_MEGA_ADDICTED = 789,
	SOUND_MEGA_RELAX = 790,
	SOUND_MEGA_TRIPLE_QUESTION_MARK = 791,
	SOUND_MEGA_ONE_MAKES_YOU_LARGER = 792,
	SOUND_MEGA_ONE_MAKES_YOU_SMALL = 793,
	SOUND_MEGA_INFESTED = 794,
	SOUND_MEGA_INFESTED_1 = 795,
	SOUND_MEGA_POWER_PILL = 796,
	SOUND_MEGA_RETRO_VISION = 797,
	SOUND_MEGA_FRIENDS_TIL_THE_END = 798,
	SOUND_MEGA_EXLAX = 799,
	SOUND_MEGA_SOMETHINGS_WRONG = 800,
	SOUND_MEGA_IM_DROWSY = 801,
	SOUND_MEGA_IM_EXCITED = 802,
	SOUND_MEGA_GULP = 803,
	SOUND_MEGA_HORF = 804,
	SOUND_MEGA_SUNSHINE = 805,
	SOUND_MEGA_VURP = 806,
	SOUND_MEGA_SHOT_SPEED_DOWN = 807,
	SOUND_MEGA_SHOT_SPEED_UP = 808,
	SOUND_MEGA_EXPERIMENTAL_PILL = 809,

	SOUND_SIREN_LUNGE = 810,
	SOUND_SIREN_MINION_SMOKE = 811,
	SOUND_SIREN_SCREAM_ATTACK = 812,
	SOUND_SIREN_SING_STAB = 813,

	SOUND_BEAST_LAVABALL_RISE = 814,
	SOUND_BEAST_GROWL = 815,
	SOUND_BEAST_GRUMBLE = 816,
	
	NUM_SOUND_EFFECTS = 817
}

---@enum DoorState
DoorState = {
	STATE_INIT = 0,
	STATE_CLOSED = 1,
	STATE_OPEN = 2,
	STATE_ONE_CHAIN = 3,
	STATE_HALF_CRACKED = 4
}

---@enum DoorVariant
DoorVariant = {
	DOOR_UNSPECIFIED = 0,
	DOOR_LOCKED = 1,
	DOOR_LOCKED_DOUBLE = 2,
	DOOR_LOCKED_CRACKED = 3,
	DOOR_LOCKED_BARRED = 4,
	DOOR_LOCKED_KEYFAMILIAR = 5,
	DOOR_LOCKED_GREED = 6,
	DOOR_HIDDEN = 7,
	DOOR_UNLOCKED = 8
}

---@enum Difficulty
Difficulty = {
	DIFFICULTY_NORMAL = 0,
	DIFFICULTY_HARD = 1,
	DIFFICULTY_GREED = 2,
	DIFFICULTY_GREEDIER = 3
}

---@enum LevelStateFlag
LevelStateFlag = {
	STATE_BUM_KILLED = 0,
	STATE_EVIL_BUM_KILLED = 1,
	STATE_REDHEART_DAMAGED = 2,
	STATE_BUM_LEFT = 3,
	STATE_EVIL_BUM_LEFT = 4,
	STATE_DAMAGED = 5,
	STATE_SHOPKEEPER_KILLED_LVL = 6,
	STATE_COMPASS_EFFECT = 7,
	STATE_MAP_EFFECT = 8,
	STATE_BLUE_MAP_EFFECT = 9,
	STATE_FULL_MAP_EFFECT = 10,
	STATE_GREED_LOST_PENALTY = 11,
	STATE_GREED_MONSTRO_SPAWNED = 12,
	STATE_ITEM_DUNGEON_FOUND = 13,
	STATE_MAMA_MEGA_USED = 14,
	--NUM_STATE_FLAGS = 15

	STATE_WOODEN_CROSS_REMOVED = 15,
	STATE_SHOVEL_QUEST_TRIGGERED = 16,
	STATE_SATANIC_BIBLE_USED = 17,
	STATE_SOL_EFFECT = 18,
	STATE_LEVEL_START_TRIGGERED = 19,
	STATE_LUNA_EFFECT = 20,
	STATE_VOID_DOOR_DISABLED = 21,
	STATE_MINESHAFT_ESCAPE = 22,
	STATE_MIRROR_BROKEN = 23,
	NUM_STATE_FLAGS = 24
}

---@enum GameStateFlag
GameStateFlag = {
	STATE_FAMINE_SPAWNED = 0,
		STATE_PESTILENCE_SPAWNED = 1, -- obsolete
		STATE_WAR_SPAWNED = 2,        -- obsolete
		STATE_DEATH_SPAWNED = 3,      -- obsolete
	STATE_BOSSPOOL_SWITCHED = 4,
	STATE_DEVILROOM_SPAWNED = 5,
	STATE_DEVILROOM_VISITED = 6,
	STATE_BOOK_REVELATIONS_USED = 7,
	STATE_BOOK_PICKED_UP = 8,
	STATE_WRATH_SPAWNED = 9,
	STATE_GLUTTONY_SPAWNED = 10,
	STATE_LUST_SPAWNED = 11,
	STATE_SLOTH_SPAWNED = 12,
	STATE_ENVY_SPAWNED = 13,
	STATE_PRIDE_SPAWNED = 14,
	STATE_GREED_SPAWNED = 15,
	STATE_SUPERGREED_SPAWNED = 16,
	STATE_DONATION_SLOT_BROKEN = 17,
	STATE_DONATION_SLOT_JAMMED = 18,
	STATE_HEAVEN_PATH = 19,
		STATE_REBIRTH_BOSS_SWITCHED = 20, -- obsolete
		STATE_HAUNT_SELECTED = 21,        -- obsolete
		STATE_ADVERSARY_SELECTED = 22,    -- obsolete
		STATE_MR_FRED_SELECTED = 23,      -- obsolete
		STATE_MAMA_GURDY_SELECTED = 24,   -- obsolete
	STATE_URIEL_SPAWNED = 25,
	STATE_GABRIEL_SPAWNED = 26,
	STATE_FALLEN_SPAWNED = 27,
		STATE_HEADLESS_HORSEMAN_SPAWNED = 28, -- obsolete
	STATE_KRAMPUS_SPAWNED = 29,
	STATE_DONATION_SLOT_BLOWN = 30,
	STATE_SHOPKEEPER_KILLED = 31,
	STATE_ULTRAPRIDE_SPAWNED = 32,
	STATE_BOSSRUSH_DONE = 33,
	STATE_GREED_SLOT_JAMMED = 34,
		STATE_AFTERBIRTH_BOSS_SWITCHED = 35, -- obsolete
		STATE_BROWNIE_SELECTED = 36,         -- obsolete
	STATE_SUPERBUM_APPEARED = 37,
	STATE_BOSSRUSH_DOOR_SPAWNED = 38,
	STATE_BLUEWOMB_DOOR_SPAWNED = 39,
	STATE_BLUEWOMB_DONE = 40,
	STATE_HEART_BOMB_COIN_PICKED = 41,
		STATE_ABPLUS_BOSS_SWITCHED = 42, -- obsolete
		STATE_SISTERS_VIS_SELECTED = 43, -- obsolete
	STATE_MAX_COINS_OBTAINED = 43,		-- set when reaching 99 coins, used to check for the Golden Razor achievement
	
	STATE_SECRET_PATH = 44,				-- set when entering a trapdoor that leads to the alternate path
	STATE_PERFECTION_SPAWNED = 45,		-- set when Perfection has dropped from a boss
	STATE_MAUSOLEUM_HEART_KILLED = 46,	-- set when Mom's Heart has been killed in the Mausoleum
	STATE_BACKWARDS_PATH_INIT = 47,		-- set when entering Mausoleum/Gehenna II through the photo door, causes Dad's Note to spawn instead of the Mom boss room
	STATE_BACKWARDS_PATH = 48,			-- set during the Ascent
	
	NUM_STATE_FLAGS = 49
}

---@enum CollectibleType
CollectibleType = {
	COLLECTIBLE_NULL = 0,
	COLLECTIBLE_SAD_ONION = 1,
	COLLECTIBLE_INNER_EYE = 2,
	COLLECTIBLE_SPOON_BENDER = 3,
	COLLECTIBLE_CRICKETS_HEAD = 4,
	COLLECTIBLE_MY_REFLECTION = 5,
	COLLECTIBLE_NUMBER_ONE = 6,
	COLLECTIBLE_BLOOD_OF_THE_MARTYR = 7,
	COLLECTIBLE_BROTHER_BOBBY = 8,
	COLLECTIBLE_SKATOLE = 9,
	COLLECTIBLE_HALO_OF_FLIES = 10,
	COLLECTIBLE_1UP = 11,
	COLLECTIBLE_MAGIC_MUSHROOM = 12,
	COLLECTIBLE_VIRUS = 13,
	COLLECTIBLE_ROID_RAGE = 14,
	COLLECTIBLE_HEART = 15,
	COLLECTIBLE_RAW_LIVER = 16,
	COLLECTIBLE_SKELETON_KEY = 17,
	COLLECTIBLE_DOLLAR = 18,
	COLLECTIBLE_BOOM = 19,
	COLLECTIBLE_TRANSCENDENCE = 20,
	COLLECTIBLE_COMPASS = 21,
	COLLECTIBLE_LUNCH = 22,
	COLLECTIBLE_DINNER = 23,
	COLLECTIBLE_DESSERT = 24,
	COLLECTIBLE_BREAKFAST = 25,
	COLLECTIBLE_ROTTEN_MEAT = 26,
	COLLECTIBLE_WOODEN_SPOON = 27,
	COLLECTIBLE_BELT = 28,
	COLLECTIBLE_MOMS_UNDERWEAR = 29,
	COLLECTIBLE_MOMS_HEELS = 30,
	COLLECTIBLE_MOMS_LIPSTICK = 31,
	COLLECTIBLE_WIRE_COAT_HANGER = 32,
	COLLECTIBLE_BIBLE = 33,
	COLLECTIBLE_BOOK_OF_BELIAL = 34,
	COLLECTIBLE_NECRONOMICON = 35,
	COLLECTIBLE_POOP = 36,
	COLLECTIBLE_MR_BOOM = 37,
	COLLECTIBLE_TAMMYS_HEAD = 38,
	COLLECTIBLE_MOMS_BRA = 39,
	COLLECTIBLE_KAMIKAZE = 40,
	COLLECTIBLE_MOMS_PAD = 41,
	COLLECTIBLE_BOBS_ROTTEN_HEAD = 42,
	-- 43
	COLLECTIBLE_TELEPORT = 44,
	COLLECTIBLE_YUM_HEART = 45,
	COLLECTIBLE_LUCKY_FOOT = 46,
	COLLECTIBLE_DOCTORS_REMOTE = 47,
	COLLECTIBLE_CUPIDS_ARROW = 48,
	COLLECTIBLE_SHOOP_DA_WHOOP = 49,
	COLLECTIBLE_STEVEN = 50,
	COLLECTIBLE_PENTAGRAM = 51,
	COLLECTIBLE_DR_FETUS = 52,
	COLLECTIBLE_MAGNETO = 53,
	COLLECTIBLE_TREASURE_MAP = 54,
	COLLECTIBLE_MOMS_EYE = 55,
	COLLECTIBLE_LEMON_MISHAP = 56,
	COLLECTIBLE_DISTANT_ADMIRATION = 57,
	COLLECTIBLE_BOOK_OF_SHADOWS = 58,
	COLLECTIBLE_BOOK_OF_BELIAL_PASSIVE = 59,
	COLLECTIBLE_LADDER = 60,
	-- 61
	COLLECTIBLE_CHARM_VAMPIRE = 62,
	COLLECTIBLE_BATTERY = 63,
	COLLECTIBLE_STEAM_SALE = 64,
	COLLECTIBLE_ANARCHIST_COOKBOOK = 65,
	COLLECTIBLE_HOURGLASS = 66,
	COLLECTIBLE_SISTER_MAGGY = 67,
	COLLECTIBLE_TECHNOLOGY = 68,
	COLLECTIBLE_CHOCOLATE_MILK = 69,
	COLLECTIBLE_GROWTH_HORMONES = 70,
	COLLECTIBLE_MINI_MUSH = 71,
	COLLECTIBLE_ROSARY = 72,
	COLLECTIBLE_CUBE_OF_MEAT = 73,
	COLLECTIBLE_QUARTER = 74,
	COLLECTIBLE_PHD = 75,
	COLLECTIBLE_XRAY_VISION = 76,
	COLLECTIBLE_MY_LITTLE_UNICORN = 77,
	COLLECTIBLE_BOOK_OF_REVELATIONS = 78,
	COLLECTIBLE_MARK = 79,
	COLLECTIBLE_PACT = 80,
	COLLECTIBLE_DEAD_CAT = 81,
	COLLECTIBLE_LORD_OF_THE_PIT = 82,
	COLLECTIBLE_THE_NAIL = 83,
	COLLECTIBLE_WE_NEED_TO_GO_DEEPER = 84,
	COLLECTIBLE_DECK_OF_CARDS = 85,
	COLLECTIBLE_MONSTROS_TOOTH = 86,
	COLLECTIBLE_LOKIS_HORNS = 87,
	COLLECTIBLE_LITTLE_CHUBBY = 88,
	COLLECTIBLE_SPIDER_BITE = 89,
	COLLECTIBLE_SMALL_ROCK = 90,
	COLLECTIBLE_SPELUNKER_HAT = 91,
	COLLECTIBLE_SUPER_BANDAGE = 92,
	COLLECTIBLE_GAMEKID = 93,
	COLLECTIBLE_SACK_OF_PENNIES = 94,
	COLLECTIBLE_ROBO_BABY = 95,
	COLLECTIBLE_LITTLE_CHAD = 96,
	COLLECTIBLE_BOOK_OF_SIN = 97,
	COLLECTIBLE_RELIC = 98,
	COLLECTIBLE_LITTLE_GISH = 99,
	COLLECTIBLE_LITTLE_STEVEN = 100,
	COLLECTIBLE_HALO = 101,
	COLLECTIBLE_MOMS_BOTTLE_OF_PILLS = 102,
	COLLECTIBLE_COMMON_COLD = 103,
	COLLECTIBLE_PARASITE = 104,
	COLLECTIBLE_D6 = 105,
	COLLECTIBLE_MR_MEGA = 106,
	COLLECTIBLE_PINKING_SHEARS = 107,
	COLLECTIBLE_WAFER = 108,
	COLLECTIBLE_MONEY_EQUALS_POWER = 109,
	COLLECTIBLE_MOMS_CONTACTS = 110,
	COLLECTIBLE_BEAN = 111,
	COLLECTIBLE_GUARDIAN_ANGEL = 112,
	COLLECTIBLE_DEMON_BABY = 113,
	COLLECTIBLE_MOMS_KNIFE = 114,
	COLLECTIBLE_OUIJA_BOARD = 115,
	COLLECTIBLE_9_VOLT = 116,
	COLLECTIBLE_DEAD_BIRD = 117,
	COLLECTIBLE_BRIMSTONE = 118,
	COLLECTIBLE_BLOOD_BAG = 119,
	COLLECTIBLE_ODD_MUSHROOM_THIN = 120,
	COLLECTIBLE_ODD_MUSHROOM_LARGE = 121,
	COLLECTIBLE_WHORE_OF_BABYLON = 122,
	COLLECTIBLE_MONSTER_MANUAL = 123,
	COLLECTIBLE_DEAD_SEA_SCROLLS = 124,
	COLLECTIBLE_BOBBY_BOMB = 125,
	COLLECTIBLE_RAZOR_BLADE = 126,
	COLLECTIBLE_FORGET_ME_NOW = 127,
	COLLECTIBLE_FOREVER_ALONE = 128,
	COLLECTIBLE_BUCKET_OF_LARD = 129,
	COLLECTIBLE_PONY = 130,
	COLLECTIBLE_BOMB_BAG = 131,
	COLLECTIBLE_LUMP_OF_COAL = 132,
	COLLECTIBLE_GUPPYS_PAW = 133,
	COLLECTIBLE_GUPPYS_TAIL = 134,
	COLLECTIBLE_IV_BAG = 135,
	COLLECTIBLE_BEST_FRIEND = 136,
	COLLECTIBLE_REMOTE_DETONATOR = 137,
	COLLECTIBLE_STIGMATA = 138,
	COLLECTIBLE_MOMS_PURSE = 139,
	COLLECTIBLE_BOBS_CURSE = 140,
	COLLECTIBLE_PAGEANT_BOY = 141,
	COLLECTIBLE_SCAPULAR = 142,
	COLLECTIBLE_SPEED_BALL = 143,
	COLLECTIBLE_BUM_FRIEND = 144,
	COLLECTIBLE_GUPPYS_HEAD = 145,
	COLLECTIBLE_PRAYER_CARD = 146,
	COLLECTIBLE_NOTCHED_AXE = 147,
	COLLECTIBLE_INFESTATION = 148,
	COLLECTIBLE_IPECAC = 149,
	COLLECTIBLE_TOUGH_LOVE = 150,
	COLLECTIBLE_MULLIGAN = 151,
	COLLECTIBLE_TECHNOLOGY_2 = 152,
	COLLECTIBLE_MUTANT_SPIDER = 153,
	COLLECTIBLE_CHEMICAL_PEEL = 154,
	COLLECTIBLE_PEEPER = 155,
	COLLECTIBLE_HABIT = 156,
	COLLECTIBLE_BLOODY_LUST = 157,
	COLLECTIBLE_CRYSTAL_BALL = 158,
	COLLECTIBLE_SPIRIT_OF_THE_NIGHT = 159,
	COLLECTIBLE_CRACK_THE_SKY = 160,
	COLLECTIBLE_ANKH = 161,
	COLLECTIBLE_CELTIC_CROSS = 162,
	COLLECTIBLE_GHOST_BABY = 163,
	COLLECTIBLE_CANDLE = 164,
	COLLECTIBLE_CAT_O_NINE_TAILS = 165,
	COLLECTIBLE_D20 = 166,
	COLLECTIBLE_HARLEQUIN_BABY = 167,
	COLLECTIBLE_EPIC_FETUS = 168,
	COLLECTIBLE_POLYPHEMUS = 169,
	COLLECTIBLE_DADDY_LONGLEGS = 170,
	COLLECTIBLE_SPIDER_BUTT = 171,
	COLLECTIBLE_SACRIFICIAL_DAGGER = 172,
	COLLECTIBLE_MITRE = 173,
	COLLECTIBLE_RAINBOW_BABY = 174,
	COLLECTIBLE_DADS_KEY = 175,
	COLLECTIBLE_STEM_CELLS = 176,
	COLLECTIBLE_PORTABLE_SLOT = 177,
	COLLECTIBLE_HOLY_WATER = 178,
	COLLECTIBLE_FATE = 179,
	COLLECTIBLE_BLACK_BEAN = 180,
	COLLECTIBLE_WHITE_PONY = 181,
	COLLECTIBLE_SACRED_HEART = 182,
	COLLECTIBLE_TOOTH_PICKS = 183,
	COLLECTIBLE_HOLY_GRAIL = 184,
	COLLECTIBLE_DEAD_DOVE = 185,
	COLLECTIBLE_BLOOD_RIGHTS = 186,
	COLLECTIBLE_GUPPYS_HAIRBALL = 187,
	COLLECTIBLE_ABEL = 188,
	COLLECTIBLE_SMB_SUPER_FAN = 189,
	COLLECTIBLE_PYRO = 190,
	COLLECTIBLE_3_DOLLAR_BILL = 191,
	COLLECTIBLE_TELEPATHY_BOOK = 192,
	COLLECTIBLE_MEAT = 193,
	COLLECTIBLE_MAGIC_8_BALL = 194,
	COLLECTIBLE_MOMS_COIN_PURSE = 195,
	COLLECTIBLE_SQUEEZY = 196,
	COLLECTIBLE_JESUS_JUICE = 197,
	COLLECTIBLE_BOX = 198,
	COLLECTIBLE_MOMS_KEY = 199,
	COLLECTIBLE_MOMS_EYESHADOW = 200,
	COLLECTIBLE_IRON_BAR = 201,
	COLLECTIBLE_MIDAS_TOUCH = 202,
	COLLECTIBLE_HUMBLEING_BUNDLE = 203,
	COLLECTIBLE_FANNY_PACK = 204,
	COLLECTIBLE_SHARP_PLUG = 205,
	COLLECTIBLE_GUILLOTINE = 206,
	COLLECTIBLE_BALL_OF_BANDAGES = 207,
	COLLECTIBLE_CHAMPION_BELT = 208,
	COLLECTIBLE_BUTT_BOMBS = 209,
	COLLECTIBLE_GNAWED_LEAF = 210,
	COLLECTIBLE_SPIDERBABY = 211,
	COLLECTIBLE_GUPPYS_COLLAR = 212,
	COLLECTIBLE_LOST_CONTACT = 213,
	COLLECTIBLE_ANEMIC = 214,
	COLLECTIBLE_GOAT_HEAD = 215,
	COLLECTIBLE_CEREMONIAL_ROBES = 216,
	COLLECTIBLE_MOMS_WIG = 217,
	COLLECTIBLE_PLACENTA = 218,
	COLLECTIBLE_OLD_BANDAGE = 219,
	COLLECTIBLE_SAD_BOMBS = 220,
	COLLECTIBLE_RUBBER_CEMENT = 221,
	COLLECTIBLE_ANTI_GRAVITY = 222,
	COLLECTIBLE_PYROMANIAC = 223,
	COLLECTIBLE_CRICKETS_BODY = 224,
	COLLECTIBLE_GIMPY = 225,
	COLLECTIBLE_BLACK_LOTUS = 226,
	COLLECTIBLE_PIGGY_BANK = 227,
	COLLECTIBLE_MOMS_PERFUME = 228,
	COLLECTIBLE_MONSTROS_LUNG = 229,
	COLLECTIBLE_ABADDON = 230,
	COLLECTIBLE_BALL_OF_TAR = 231,
	COLLECTIBLE_STOP_WATCH = 232,
	COLLECTIBLE_TINY_PLANET = 233,
	COLLECTIBLE_INFESTATION_2 = 234,
	-- 235
	COLLECTIBLE_E_COLI = 236,
	COLLECTIBLE_DEATHS_TOUCH = 237,
	COLLECTIBLE_KEY_PIECE_1 = 238,
	COLLECTIBLE_KEY_PIECE_2 = 239,
	COLLECTIBLE_EXPERIMENTAL_TREATMENT = 240,
	COLLECTIBLE_CONTRACT_FROM_BELOW = 241,
	COLLECTIBLE_INFAMY = 242,
	COLLECTIBLE_TRINITY_SHIELD = 243,
	COLLECTIBLE_TECH_5 = 244,
	COLLECTIBLE_20_20 = 245,
	COLLECTIBLE_BLUE_MAP = 246,
	COLLECTIBLE_BFFS = 247,
	COLLECTIBLE_HIVE_MIND = 248,
	COLLECTIBLE_THERES_OPTIONS = 249,
	COLLECTIBLE_BOGO_BOMBS = 250,
	COLLECTIBLE_STARTER_DECK = 251,
	COLLECTIBLE_LITTLE_BAGGY = 252,
	COLLECTIBLE_MAGIC_SCAB = 253,
	COLLECTIBLE_BLOOD_CLOT = 254,
	COLLECTIBLE_SCREW = 255,
	COLLECTIBLE_HOT_BOMBS = 256,
	COLLECTIBLE_FIRE_MIND = 257,
	COLLECTIBLE_MISSING_NO = 258,
	COLLECTIBLE_DARK_MATTER = 259,
	COLLECTIBLE_BLACK_CANDLE = 260,
	COLLECTIBLE_PROPTOSIS = 261,
	COLLECTIBLE_MISSING_PAGE_2 = 262,
	COLLECTIBLE_CLEAR_RUNE = 263,
	COLLECTIBLE_SMART_FLY = 264,
	COLLECTIBLE_DRY_BABY = 265,
	COLLECTIBLE_JUICY_SACK = 266,
	COLLECTIBLE_ROBO_BABY_2 = 267,
	COLLECTIBLE_ROTTEN_BABY = 268,
	COLLECTIBLE_HEADLESS_BABY = 269,
	COLLECTIBLE_LEECH = 270,
	COLLECTIBLE_MYSTERY_SACK = 271,
	COLLECTIBLE_BBF = 272,
	COLLECTIBLE_BOBS_BRAIN = 273,
	COLLECTIBLE_BEST_BUD = 274,
	COLLECTIBLE_LIL_BRIMSTONE = 275,
	COLLECTIBLE_ISAACS_HEART = 276,
	COLLECTIBLE_LIL_HAUNT = 277,
	COLLECTIBLE_DARK_BUM = 278,
	COLLECTIBLE_BIG_FAN = 279,
	COLLECTIBLE_SISSY_LONGLEGS = 280,
	COLLECTIBLE_PUNCHING_BAG = 281,
	COLLECTIBLE_HOW_TO_JUMP = 282,
	COLLECTIBLE_D100 = 283,
	COLLECTIBLE_D4 = 284,
	COLLECTIBLE_D10 = 285,
	COLLECTIBLE_BLANK_CARD = 286,
	COLLECTIBLE_BOOK_OF_SECRETS = 287,
	COLLECTIBLE_BOX_OF_SPIDERS = 288,
	COLLECTIBLE_RED_CANDLE = 289,
	COLLECTIBLE_THE_JAR = 290,
	COLLECTIBLE_FLUSH = 291,
	COLLECTIBLE_SATANIC_BIBLE = 292,
	COLLECTIBLE_HEAD_OF_KRAMPUS = 293,
	COLLECTIBLE_BUTTER_BEAN = 294,
	COLLECTIBLE_MAGIC_FINGERS = 295,
	COLLECTIBLE_CONVERTER = 296,
	COLLECTIBLE_BLUE_BOX = 297,
	COLLECTIBLE_UNICORN_STUMP = 298,
	COLLECTIBLE_TAURUS = 299,
	COLLECTIBLE_ARIES = 300,
	COLLECTIBLE_CANCER = 301,
	COLLECTIBLE_LEO = 302,
	COLLECTIBLE_VIRGO = 303,
	COLLECTIBLE_LIBRA = 304,
	COLLECTIBLE_SCORPIO = 305,
	COLLECTIBLE_SAGITTARIUS = 306,
	COLLECTIBLE_CAPRICORN = 307,
	COLLECTIBLE_AQUARIUS = 308,
	COLLECTIBLE_PISCES = 309,
	COLLECTIBLE_EVES_MASCARA = 310,
	COLLECTIBLE_JUDAS_SHADOW = 311,
	COLLECTIBLE_MAGGYS_BOW = 312,
	COLLECTIBLE_HOLY_MANTLE = 313,
	COLLECTIBLE_THUNDER_THIGHS = 314,
	COLLECTIBLE_STRANGE_ATTRACTOR = 315,
	COLLECTIBLE_CURSED_EYE = 316,
	COLLECTIBLE_MYSTERIOUS_LIQUID = 317,
	COLLECTIBLE_GEMINI = 318,
	COLLECTIBLE_CAINS_OTHER_EYE = 319,
	COLLECTIBLE_BLUE_BABYS_ONLY_FRIEND = 320,
	COLLECTIBLE_SAMSONS_CHAINS = 321,
	COLLECTIBLE_MONGO_BABY = 322,
	COLLECTIBLE_ISAACS_TEARS = 323,
	COLLECTIBLE_UNDEFINED = 324,
	COLLECTIBLE_SCISSORS = 325,
	COLLECTIBLE_BREATH_OF_LIFE = 326,
	COLLECTIBLE_POLAROID = 327,
	COLLECTIBLE_NEGATIVE = 328,
	COLLECTIBLE_LUDOVICO_TECHNIQUE = 329,
	COLLECTIBLE_SOY_MILK = 330,
	COLLECTIBLE_GODHEAD = 331,
	COLLECTIBLE_LAZARUS_RAGS = 332,
	COLLECTIBLE_MIND = 333,
	COLLECTIBLE_BODY = 334,
	COLLECTIBLE_SOUL = 335,
	COLLECTIBLE_DEAD_ONION = 336,
	COLLECTIBLE_BROKEN_WATCH = 337,
	COLLECTIBLE_BOOMERANG = 338,
	COLLECTIBLE_SAFETY_PIN = 339,
	COLLECTIBLE_CAFFEINE_PILL = 340,
	COLLECTIBLE_TORN_PHOTO = 341,
	COLLECTIBLE_BLUE_CAP = 342,
	COLLECTIBLE_LATCH_KEY = 343,
	COLLECTIBLE_MATCH_BOOK = 344,
	COLLECTIBLE_SYNTHOIL = 345,
	COLLECTIBLE_SNACK = 346,
	COLLECTIBLE_DIPLOPIA = 347,
	COLLECTIBLE_PLACEBO = 348,
	COLLECTIBLE_WOODEN_NICKEL = 349,
	COLLECTIBLE_TOXIC_SHOCK = 350,
	COLLECTIBLE_MEGA_BEAN = 351,
	COLLECTIBLE_GLASS_CANNON = 352,
	COLLECTIBLE_BOMBER_BOY = 353,
	COLLECTIBLE_CRACK_JACKS = 354,
	COLLECTIBLE_MOMS_PEARLS = 355,
	COLLECTIBLE_CAR_BATTERY = 356,
	COLLECTIBLE_BOX_OF_FRIENDS = 357,
	COLLECTIBLE_THE_WIZ = 358,
	COLLECTIBLE_8_INCH_NAILS = 359,
	COLLECTIBLE_INCUBUS = 360,
	COLLECTIBLE_FATES_REWARD = 361,
	COLLECTIBLE_LIL_CHEST = 362,
	COLLECTIBLE_SWORN_PROTECTOR = 363,
	COLLECTIBLE_FRIEND_ZONE = 364,
	COLLECTIBLE_LOST_FLY = 365,
	COLLECTIBLE_SCATTER_BOMBS = 366,
	COLLECTIBLE_STICKY_BOMBS = 367,
	COLLECTIBLE_EPIPHORA = 368,
	COLLECTIBLE_CONTINUUM = 369,
	COLLECTIBLE_MR_DOLLY = 370,
	COLLECTIBLE_CURSE_OF_THE_TOWER = 371,
	COLLECTIBLE_CHARGED_BABY = 372,
	COLLECTIBLE_DEAD_EYE = 373,
	COLLECTIBLE_HOLY_LIGHT = 374,
	COLLECTIBLE_HOST_HAT = 375,
	COLLECTIBLE_RESTOCK = 376,
	COLLECTIBLE_BURSTING_SACK = 377,
	COLLECTIBLE_NUMBER_TWO = 378,
	COLLECTIBLE_PUPULA_DUPLEX = 379,
	COLLECTIBLE_PAY_TO_PLAY = 380,
	COLLECTIBLE_EDENS_BLESSING = 381,
	COLLECTIBLE_FRIEND_BALL = 382,
	COLLECTIBLE_TEAR_DETONATOR = 383,
	COLLECTIBLE_LIL_GURDY = 384,
	COLLECTIBLE_BUMBO = 385,
	COLLECTIBLE_D12 = 386,
	COLLECTIBLE_CENSER = 387,
	COLLECTIBLE_KEY_BUM = 388,
	COLLECTIBLE_RUNE_BAG = 389,
	COLLECTIBLE_SERAPHIM = 390,
	COLLECTIBLE_BETRAYAL = 391,
	COLLECTIBLE_ZODIAC = 392,
	COLLECTIBLE_SERPENTS_KISS = 393,
	COLLECTIBLE_MARKED = 394,
	COLLECTIBLE_TECH_X = 395,
	COLLECTIBLE_VENTRICLE_RAZOR = 396,
	COLLECTIBLE_TRACTOR_BEAM = 397,
	COLLECTIBLE_GODS_FLESH = 398,
	COLLECTIBLE_MAW_OF_THE_VOID = 399,
	COLLECTIBLE_SPEAR_OF_DESTINY = 400,
	COLLECTIBLE_EXPLOSIVO = 401,
	COLLECTIBLE_CHAOS = 402,
	COLLECTIBLE_SPIDER_MOD = 403,
	COLLECTIBLE_FARTING_BABY = 404,
	COLLECTIBLE_GB_BUG = 405,
	COLLECTIBLE_D8 = 406,
	COLLECTIBLE_PURITY = 407,
	COLLECTIBLE_ATHAME = 408,
	COLLECTIBLE_EMPTY_VESSEL = 409,
	COLLECTIBLE_EVIL_EYE = 410,
	COLLECTIBLE_LUSTY_BLOOD = 411,
	COLLECTIBLE_CAMBION_CONCEPTION = 412,
	COLLECTIBLE_IMMACULATE_CONCEPTION = 413,
	COLLECTIBLE_MORE_OPTIONS = 414,
	COLLECTIBLE_CROWN_OF_LIGHT = 415,
	COLLECTIBLE_DEEP_POCKETS = 416,
	COLLECTIBLE_SUCCUBUS = 417,
	COLLECTIBLE_FRUIT_CAKE = 418,
	COLLECTIBLE_TELEPORT_2 = 419,
	COLLECTIBLE_BLACK_POWDER = 420,
	COLLECTIBLE_KIDNEY_BEAN = 421,
	COLLECTIBLE_GLOWING_HOUR_GLASS = 422,
	COLLECTIBLE_CIRCLE_OF_PROTECTION = 423,
	COLLECTIBLE_SACK_HEAD = 424,
	COLLECTIBLE_NIGHT_LIGHT = 425,
	COLLECTIBLE_OBSESSED_FAN = 426,
	COLLECTIBLE_MINE_CRAFTER = 427,
	COLLECTIBLE_PJS = 428,
	COLLECTIBLE_HEAD_OF_THE_KEEPER = 429,
	COLLECTIBLE_PAPA_FLY = 430,
	COLLECTIBLE_MULTIDIMENSIONAL_BABY = 431,
	COLLECTIBLE_GLITTER_BOMBS = 432,
	COLLECTIBLE_MY_SHADOW = 433,
	COLLECTIBLE_JAR_OF_FLIES = 434,
	COLLECTIBLE_LIL_LOKI = 435,
	COLLECTIBLE_MILK = 436,
	COLLECTIBLE_D7 = 437,
	COLLECTIBLE_BINKY = 438,
	COLLECTIBLE_MOMS_BOX = 439,
	COLLECTIBLE_KIDNEY_STONE = 440,
	COLLECTIBLE_MEGA_BLAST = 441,
	COLLECTIBLE_DARK_PRINCES_CROWN = 442,
	COLLECTIBLE_APPLE = 443,
	COLLECTIBLE_LEAD_PENCIL = 444,
	COLLECTIBLE_DOG_TOOTH = 445,
	COLLECTIBLE_DEAD_TOOTH = 446,
	COLLECTIBLE_LINGER_BEAN = 447,
	COLLECTIBLE_SHARD_OF_GLASS = 448,
	COLLECTIBLE_METAL_PLATE = 449,
	COLLECTIBLE_EYE_OF_GREED = 450,
	COLLECTIBLE_TAROT_CLOTH = 451,
	COLLECTIBLE_VARICOSE_VEINS = 452,
	COLLECTIBLE_COMPOUND_FRACTURE = 453,
	COLLECTIBLE_POLYDACTYLY = 454,
	COLLECTIBLE_DADS_LOST_COIN = 455,
	COLLECTIBLE_MIDNIGHT_SNACK = 456,
	COLLECTIBLE_CONE_HEAD = 457,
	COLLECTIBLE_BELLY_BUTTON = 458,
	COLLECTIBLE_SINUS_INFECTION = 459,
	COLLECTIBLE_GLAUCOMA = 460,
	COLLECTIBLE_PARASITOID = 461,
	COLLECTIBLE_EYE_OF_BELIAL = 462,
	COLLECTIBLE_SULFURIC_ACID = 463,
	COLLECTIBLE_GLYPH_OF_BALANCE = 464,
	COLLECTIBLE_ANALOG_STICK = 465,
	COLLECTIBLE_CONTAGION = 466,
	COLLECTIBLE_FINGER = 467,
	COLLECTIBLE_SHADE = 468,
	COLLECTIBLE_DEPRESSION = 469,
	COLLECTIBLE_HUSHY = 470,
	COLLECTIBLE_LIL_MONSTRO = 471,
	COLLECTIBLE_KING_BABY = 472,
	COLLECTIBLE_BIG_CHUBBY = 473,
	COLLECTIBLE_BROKEN_GLASS_CANNON = 474,
	COLLECTIBLE_PLAN_C = 475,
	COLLECTIBLE_D1 = 476,
	COLLECTIBLE_VOID = 477,
	COLLECTIBLE_PAUSE = 478,
	COLLECTIBLE_SMELTER = 479,
	COLLECTIBLE_COMPOST = 480,
	COLLECTIBLE_DATAMINER = 481,
	COLLECTIBLE_CLICKER = 482,
	COLLECTIBLE_MAMA_MEGA = 483,
	COLLECTIBLE_WAIT_WHAT = 484,
	COLLECTIBLE_CROOKED_PENNY = 485,
	COLLECTIBLE_DULL_RAZOR = 486,
	COLLECTIBLE_POTATO_PEELER = 487,
	COLLECTIBLE_METRONOME = 488,
	COLLECTIBLE_D_INFINITY = 489,
	COLLECTIBLE_EDENS_SOUL = 490,
	COLLECTIBLE_ACID_BABY = 491,
	COLLECTIBLE_YO_LISTEN = 492,
	COLLECTIBLE_ADRENALINE = 493,
	COLLECTIBLE_JACOBS_LADDER = 494,
	COLLECTIBLE_GHOST_PEPPER = 495,
	COLLECTIBLE_EUTHANASIA = 496,
	COLLECTIBLE_CAMO_UNDIES = 497,
	COLLECTIBLE_DUALITY = 498,
	COLLECTIBLE_EUCHARIST = 499,
	COLLECTIBLE_SACK_OF_SACKS = 500,
	COLLECTIBLE_GREEDS_GULLET = 501,
	COLLECTIBLE_LARGE_ZIT = 502,
	COLLECTIBLE_LITTLE_HORN = 503,
	COLLECTIBLE_BROWN_NUGGET = 504,
	COLLECTIBLE_POKE_GO = 505,
	COLLECTIBLE_BACKSTABBER = 506,
	COLLECTIBLE_SHARP_STRAW = 507,
	COLLECTIBLE_MOMS_RAZOR = 508,
	COLLECTIBLE_BLOODSHOT_EYE = 509,
	COLLECTIBLE_DELIRIOUS = 510,
	
	-- Booster Pack #1
	COLLECTIBLE_ANGRY_FLY = 511,
	COLLECTIBLE_BLACK_HOLE = 512,
	COLLECTIBLE_BOZO = 513,
	COLLECTIBLE_BROKEN_MODEM = 514,
	COLLECTIBLE_MYSTERY_GIFT = 515,
	COLLECTIBLE_SPRINKLER = 516,
	COLLECTIBLE_FAST_BOMBS = 517,
	COLLECTIBLE_BUDDY_IN_A_BOX = 518,
	COLLECTIBLE_LIL_DELIRIUM = 519,

	-- Booster Pack #2
	COLLECTIBLE_JUMPER_CABLES = 520,
	COLLECTIBLE_COUPON = 521,
	COLLECTIBLE_TELEKINESIS = 522,
	COLLECTIBLE_MOVING_BOX = 523,
	COLLECTIBLE_TECHNOLOGY_ZERO = 524,
	COLLECTIBLE_LEPROSY = 525,
	
	-- Booster Pack #3
	COLLECTIBLE_7_SEALS = 526,
	COLLECTIBLE_MR_ME = 527,
	COLLECTIBLE_ANGELIC_PRISM = 528,
	COLLECTIBLE_POP = 529,

	-- Booster Pack #4
	COLLECTIBLE_DEATHS_LIST = 530,
	COLLECTIBLE_HAEMOLACRIA = 531,
	COLLECTIBLE_LACHRYPHAGY = 532,
	COLLECTIBLE_TRISAGION = 533,
	COLLECTIBLE_SCHOOLBAG = 534,
	
	-- Booster Pack #5
	COLLECTIBLE_BLANKET = 535,
	COLLECTIBLE_SACRIFICIAL_ALTAR = 536,
	COLLECTIBLE_LIL_SPEWER = 537,
	COLLECTIBLE_MARBLES = 538,
	COLLECTIBLE_MYSTERY_EGG = 539,
	COLLECTIBLE_FLAT_STONE = 540,

	COLLECTIBLE_MARROW = 541,
	COLLECTIBLE_SLIPPED_RIB = 542,
	COLLECTIBLE_HALLOWED_GROUND = 543,
	COLLECTIBLE_POINTY_RIB = 544,
	COLLECTIBLE_BOOK_OF_THE_DEAD = 545,
	COLLECTIBLE_DADS_RING = 546,
	COLLECTIBLE_DIVORCE_PAPERS = 547,
	COLLECTIBLE_JAW_BONE = 548,
	COLLECTIBLE_BRITTLE_BONES = 549,

	COLLECTIBLE_BROKEN_SHOVEL_1 = 550,
	COLLECTIBLE_BROKEN_SHOVEL_2 = 551,
	COLLECTIBLE_MOMS_SHOVEL = 552,

	--NUM_COLLECTIBLES = 553
	
	-- Repentance
	COLLECTIBLE_MUCORMYCOSIS = 553,
	COLLECTIBLE_2SPOOKY = 554,
	COLLECTIBLE_GOLDEN_RAZOR = 555,
	COLLECTIBLE_SULFUR = 556,
	COLLECTIBLE_FORTUNE_COOKIE = 557,
	COLLECTIBLE_EYE_SORE = 558,
	COLLECTIBLE_120_VOLT = 559,
	COLLECTIBLE_IT_HURTS = 560,
	COLLECTIBLE_ALMOND_MILK = 561,
	COLLECTIBLE_ROCK_BOTTOM = 562,
	COLLECTIBLE_NANCY_BOMBS = 563,
	COLLECTIBLE_BAR_OF_SOAP = 564,
	COLLECTIBLE_BLOOD_PUPPY = 565,
	COLLECTIBLE_DREAM_CATCHER = 566,
	COLLECTIBLE_PASCHAL_CANDLE = 567,
	COLLECTIBLE_DIVINE_INTERVENTION = 568,
	COLLECTIBLE_BLOOD_OATH = 569,
	COLLECTIBLE_PLAYDOUGH_COOKIE = 570,
	COLLECTIBLE_SOCKS = 571,
	COLLECTIBLE_EYE_OF_THE_OCCULT = 572,
	COLLECTIBLE_IMMACULATE_HEART = 573,
	COLLECTIBLE_MONSTRANCE = 574,
	COLLECTIBLE_INTRUDER = 575,
	COLLECTIBLE_DIRTY_MIND = 576,
	COLLECTIBLE_DAMOCLES = 577,
	COLLECTIBLE_FREE_LEMONADE = 578,
	COLLECTIBLE_SPIRIT_SWORD = 579,
	COLLECTIBLE_RED_KEY = 580,
	COLLECTIBLE_PSY_FLY = 581,
	COLLECTIBLE_WAVY_CAP = 582,
	COLLECTIBLE_ROCKET_IN_A_JAR = 583,
	COLLECTIBLE_BOOK_OF_VIRTUES = 584,
	COLLECTIBLE_ALABASTER_BOX = 585,
	COLLECTIBLE_STAIRWAY = 586,
	-- 587
	COLLECTIBLE_SOL = 588,
	COLLECTIBLE_LUNA = 589,
	COLLECTIBLE_MERCURIUS = 590,
	COLLECTIBLE_VENUS = 591,
	COLLECTIBLE_TERRA = 592,
	COLLECTIBLE_MARS = 593,
	COLLECTIBLE_JUPITER = 594,
	COLLECTIBLE_SATURNUS = 595,
	COLLECTIBLE_URANUS = 596,
	COLLECTIBLE_NEPTUNUS = 597,
	COLLECTIBLE_PLUTO = 598,
	COLLECTIBLE_VOODOO_HEAD = 599,
	COLLECTIBLE_EYE_DROPS = 600,
	COLLECTIBLE_ACT_OF_CONTRITION = 601,
	COLLECTIBLE_MEMBER_CARD = 602,
	COLLECTIBLE_BATTERY_PACK = 603,
	COLLECTIBLE_MOMS_BRACELET = 604,
	COLLECTIBLE_SCOOPER = 605,
	COLLECTIBLE_OCULAR_RIFT = 606,
	COLLECTIBLE_BOILED_BABY = 607,
	COLLECTIBLE_FREEZER_BABY = 608,
	COLLECTIBLE_ETERNAL_D6 = 609,
	COLLECTIBLE_BIRD_CAGE = 610,
	COLLECTIBLE_LARYNX = 611,
	COLLECTIBLE_LOST_SOUL = 612,
	-- 613
	COLLECTIBLE_BLOOD_BOMBS = 614,
	COLLECTIBLE_LIL_DUMPY = 615,
	COLLECTIBLE_BIRDS_EYE = 616,
	COLLECTIBLE_LODESTONE = 617,
	COLLECTIBLE_ROTTEN_TOMATO = 618,
	COLLECTIBLE_BIRTHRIGHT = 619,
	-- 620
	COLLECTIBLE_RED_STEW = 621,
	COLLECTIBLE_GENESIS = 622,
	COLLECTIBLE_SHARP_KEY = 623,
	COLLECTIBLE_BOOSTER_PACK = 624,
	COLLECTIBLE_MEGA_MUSH = 625,
	COLLECTIBLE_KNIFE_PIECE_1 = 626,
	COLLECTIBLE_KNIFE_PIECE_2 = 627,
	COLLECTIBLE_DEATH_CERTIFICATE = 628,
	COLLECTIBLE_BOT_FLY = 629,
	-- 630
	COLLECTIBLE_MEAT_CLEAVER = 631,
	COLLECTIBLE_EVIL_CHARM = 632,
	COLLECTIBLE_DOGMA = 633,
	COLLECTIBLE_PURGATORY = 634,
	COLLECTIBLE_STITCHES = 635,
	COLLECTIBLE_R_KEY = 636,
	COLLECTIBLE_KNOCKOUT_DROPS = 637,
	COLLECTIBLE_ERASER = 638,
	COLLECTIBLE_YUCK_HEART = 639,
	COLLECTIBLE_URN_OF_SOULS = 640,
	COLLECTIBLE_AKELDAMA = 641,
	COLLECTIBLE_MAGIC_SKIN = 642,
	COLLECTIBLE_REVELATION = 643,
	COLLECTIBLE_CONSOLATION_PRIZE = 644,
	COLLECTIBLE_TINYTOMA = 645,
	COLLECTIBLE_BRIMSTONE_BOMBS = 646,
	COLLECTIBLE_4_5_VOLT = 647,
	-- 648
	COLLECTIBLE_FRUITY_PLUM = 649,
	COLLECTIBLE_PLUM_FLUTE = 650,
	COLLECTIBLE_STAR_OF_BETHLEHEM = 651,
	COLLECTIBLE_CUBE_BABY = 652,
	COLLECTIBLE_VADE_RETRO = 653,
	COLLECTIBLE_FALSE_PHD = 654,
	COLLECTIBLE_SPIN_TO_WIN = 655,
	COLLECTIBLE_DAMOCLES_PASSIVE = 656,
	COLLECTIBLE_VASCULITIS = 657,
	COLLECTIBLE_GIANT_CELL = 658,
	COLLECTIBLE_TROPICAMIDE = 659,
	COLLECTIBLE_CARD_READING = 660,
	COLLECTIBLE_QUINTS = 661,
	-- 662
	COLLECTIBLE_TOOTH_AND_NAIL = 663,
	COLLECTIBLE_BINGE_EATER = 664,
	COLLECTIBLE_GUPPYS_EYE = 665,
	-- 666
	COLLECTIBLE_STRAW_MAN = 667,
	COLLECTIBLE_DADS_NOTE = 668,
	COLLECTIBLE_SAUSAGE = 669,
	COLLECTIBLE_OPTIONS = 670,
	COLLECTIBLE_CANDY_HEART = 671,
	COLLECTIBLE_POUND_OF_FLESH = 672,
	COLLECTIBLE_REDEMPTION = 673,
	COLLECTIBLE_SPIRIT_SHACKLES = 674,
	COLLECTIBLE_CRACKED_ORB = 675,
	COLLECTIBLE_EMPTY_HEART = 676,
	COLLECTIBLE_ASTRAL_PROJECTION = 677,
	COLLECTIBLE_C_SECTION = 678,
	COLLECTIBLE_LIL_ABADDON = 679,
	COLLECTIBLE_MONTEZUMAS_REVENGE = 680,
	COLLECTIBLE_LIL_PORTAL = 681,
	COLLECTIBLE_WORM_FRIEND = 682,
	COLLECTIBLE_BONE_SPURS = 683,
	COLLECTIBLE_HUNGRY_SOUL = 684,
	COLLECTIBLE_JAR_OF_WISPS = 685,
	COLLECTIBLE_SOUL_LOCKET = 686,
	COLLECTIBLE_FRIEND_FINDER = 687,
	COLLECTIBLE_INNER_CHILD = 688,
	COLLECTIBLE_GLITCHED_CROWN = 689,
	COLLECTIBLE_JELLY_BELLY = 690,
	COLLECTIBLE_SACRED_ORB = 691,
	COLLECTIBLE_SANGUINE_BOND = 692,
	COLLECTIBLE_SWARM = 693,
	COLLECTIBLE_HEARTBREAK = 694,
	COLLECTIBLE_BLOODY_GUST = 695,
	COLLECTIBLE_SALVATION = 696,
	COLLECTIBLE_VANISHING_TWIN = 697,
	COLLECTIBLE_TWISTED_PAIR = 698,
	COLLECTIBLE_AZAZELS_RAGE = 699,
	COLLECTIBLE_ECHO_CHAMBER = 700,
	COLLECTIBLE_ISAACS_TOMB = 701,
	COLLECTIBLE_VENGEFUL_SPIRIT = 702,
	COLLECTIBLE_ESAU_JR = 703,
	COLLECTIBLE_BERSERK = 704,
	COLLECTIBLE_DARK_ARTS = 705,
	COLLECTIBLE_ABYSS = 706,
	COLLECTIBLE_SUPPER = 707,
	COLLECTIBLE_STAPLER = 708,
	COLLECTIBLE_SUPLEX = 709,
	COLLECTIBLE_BAG_OF_CRAFTING = 710,
	COLLECTIBLE_FLIP = 711,
	COLLECTIBLE_LEMEGETON = 712,
	COLLECTIBLE_SUMPTORIUM = 713,
	COLLECTIBLE_RECALL = 714,
	COLLECTIBLE_HOLD = 715,
	COLLECTIBLE_KEEPERS_SACK = 716,
	COLLECTIBLE_KEEPERS_KIN = 717,
	-- 718
	COLLECTIBLE_KEEPERS_BOX = 719,
	COLLECTIBLE_EVERYTHING_JAR = 720,
	COLLECTIBLE_TMTRAINER = 721,
	COLLECTIBLE_ANIMA_SOLA = 722,
	COLLECTIBLE_SPINDOWN_DICE = 723,
	COLLECTIBLE_HYPERCOAGULATION = 724,
	COLLECTIBLE_IBS = 725,
	COLLECTIBLE_HEMOPTYSIS = 726,
	COLLECTIBLE_GHOST_BOMBS = 727,
	COLLECTIBLE_GELLO = 728,
	COLLECTIBLE_DECAP_ATTACK = 729,
	COLLECTIBLE_GLASS_EYE = 730,
	COLLECTIBLE_STYE = 731,
	COLLECTIBLE_MOMS_RING = 732,
	
	NUM_COLLECTIBLES = 733
}

---@enum TrinketType
TrinketType = {
	TRINKET_NULL = 0,
	TRINKET_SWALLOWED_PENNY = 1,
	TRINKET_PETRIFIED_POOP = 2,
	TRINKET_AAA_BATTERY = 3,
	TRINKET_BROKEN_REMOTE = 4,
	TRINKET_PURPLE_HEART = 5,
	TRINKET_BROKEN_MAGNET = 6,
	TRINKET_ROSARY_BEAD = 7,
	TRINKET_CARTRIDGE = 8,
	TRINKET_PULSE_WORM = 9,
	TRINKET_WIGGLE_WORM = 10,
	TRINKET_RING_WORM = 11,
	TRINKET_FLAT_WORM = 12,
	TRINKET_STORE_CREDIT = 13,
	TRINKET_CALLUS = 14,
	TRINKET_LUCKY_ROCK = 15,
	TRINKET_MOMS_TOENAIL = 16,
	TRINKET_BLACK_LIPSTICK = 17,
	TRINKET_BIBLE_TRACT = 18,
	TRINKET_PAPER_CLIP = 19,
	TRINKET_MONKEY_PAW = 20,
	TRINKET_MYSTERIOUS_PAPER = 21,
	TRINKET_DAEMONS_TAIL = 22,
	TRINKET_MISSING_POSTER = 23,
	TRINKET_BUTT_PENNY = 24,
	TRINKET_MYSTERIOUS_CANDY = 25,
	TRINKET_HOOK_WORM = 26,
	TRINKET_WHIP_WORM = 27,
	TRINKET_BROKEN_ANKH = 28,
	TRINKET_FISH_HEAD = 29,
	TRINKET_PINKY_EYE = 30,
	TRINKET_PUSH_PIN = 31,
	TRINKET_LIBERTY_CAP = 32,
	TRINKET_UMBILICAL_CORD = 33,
	TRINKET_CHILDS_HEART = 34,
	TRINKET_CURVED_HORN = 35,
	TRINKET_RUSTED_KEY = 36,
	TRINKET_GOAT_HOOF = 37,
	TRINKET_MOMS_PEARL = 38,
	TRINKET_CANCER = 39,
	TRINKET_RED_PATCH = 40,
	TRINKET_MATCH_STICK = 41,
	TRINKET_LUCKY_TOE = 42,
	TRINKET_CURSED_SKULL = 43,
	TRINKET_SAFETY_CAP = 44,
	TRINKET_ACE_SPADES = 45,
	TRINKET_ISAACS_FORK = 46,
	TRINKET_POLAROID_OBSOLETE = 47,
	TRINKET_MISSING_PAGE = 48,
	TRINKET_BLOODY_PENNY = 49,
	TRINKET_BURNT_PENNY = 50,
	TRINKET_FLAT_PENNY = 51,
	TRINKET_COUNTERFEIT_PENNY = 52,
	TRINKET_TICK = 53,
	TRINKET_ISAACS_HEAD = 54,
	TRINKET_MAGGYS_FAITH = 55,
	TRINKET_JUDAS_TONGUE = 56,
	TRINKET_SOUL = 57,
	TRINKET_SAMSONS_LOCK = 58,
	TRINKET_CAINS_EYE = 59,
	TRINKET_EVES_BIRD_FOOT = 60,
	TRINKET_LEFT_HAND = 61,
	TRINKET_SHINY_ROCK = 62,
	TRINKET_SAFETY_SCISSORS = 63,
	TRINKET_RAINBOW_WORM = 64,
	TRINKET_TAPE_WORM = 65,
	TRINKET_LAZY_WORM = 66,
	TRINKET_CRACKED_DICE = 67,
	TRINKET_SUPER_MAGNET = 68,
	TRINKET_FADED_POLAROID = 69,
	TRINKET_LOUSE = 70,
	TRINKET_BOBS_BLADDER = 71,
	TRINKET_WATCH_BATTERY = 72,
	TRINKET_BLASTING_CAP = 73,
	TRINKET_STUD_FINDER = 74,
	TRINKET_ERROR = 75,
	TRINKET_POKER_CHIP = 76,
	TRINKET_BLISTER = 77,
	TRINKET_SECOND_HAND = 78,
	TRINKET_ENDLESS_NAMELESS = 79,
	TRINKET_BLACK_FEATHER = 80,
	TRINKET_BLIND_RAGE = 81,
	TRINKET_GOLDEN_HORSE_SHOE = 82,
	TRINKET_STORE_KEY = 83,
	TRINKET_RIB_OF_GREED = 84,
	TRINKET_KARMA = 85,
	TRINKET_LIL_LARVA = 86,
	TRINKET_MOMS_LOCKET = 87,
	TRINKET_NO = 88,
	TRINKET_CHILD_LEASH = 89,
	TRINKET_BROWN_CAP = 90,
	TRINKET_MECONIUM = 91,
	TRINKET_CRACKED_CROWN = 92,
	TRINKET_USED_DIAPER = 93,
	TRINKET_FISH_TAIL = 94,
	TRINKET_BLACK_TOOTH = 95,
	TRINKET_OUROBOROS_WORM = 96,
	TRINKET_TONSIL = 97,
	TRINKET_NOSE_GOBLIN = 98,
	TRINKET_SUPER_BALL = 99,
	TRINKET_VIBRANT_BULB = 100,
	TRINKET_DIM_BULB = 101,
	TRINKET_FRAGMENTED_CARD = 102,
	TRINKET_EQUALITY = 103,
	TRINKET_WISH_BONE = 104,
	TRINKET_BAG_LUNCH = 105,
	TRINKET_LOST_CORK = 106,
	TRINKET_CROW_HEART = 107,
	TRINKET_WALNUT = 108,
	TRINKET_DUCT_TAPE = 109,
	TRINKET_SILVER_DOLLAR = 110,
	TRINKET_BLOODY_CROWN = 111,
	TRINKET_PAY_TO_WIN = 112,
	TRINKET_LOCUST_OF_WRATH = 113,
	TRINKET_LOCUST_OF_PESTILENCE = 114,
	TRINKET_LOCUST_OF_FAMINE = 115,
	TRINKET_LOCUST_OF_DEATH = 116,
	TRINKET_LOCUST_OF_CONQUEST = 117,
	TRINKET_BAT_WING = 118,
	TRINKET_STEM_CELL = 119,
	
	-- Booster pack #1
	TRINKET_HAIRPIN = 120,
	TRINKET_WOODEN_CROSS = 121,
	TRINKET_BUTTER = 122,

	-- Booster pack #2
	TRINKET_FILIGREE_FEATHERS = 123,
	
	-- Booster pack #3
	TRINKET_DOOR_STOP = 124,
	
	-- Booster pack #4
	TRINKET_EXTENSION_CORD = 125,
	
	-- Booster pack #5
	TRINKET_ROTTEN_PENNY = 126,
	TRINKET_BABY_BENDER = 127,
	TRINKET_FINGER_BONE = 128,
	
	--NUM_TRINKETS = 129
	
	-- Repentance
	TRINKET_JAW_BREAKER = 129,
	TRINKET_CHEWED_PEN = 130,
	TRINKET_BLESSED_PENNY = 131,
	TRINKET_BROKEN_SYRINGE = 132,
	TRINKET_SHORT_FUSE = 133,
	TRINKET_GIGANTE_BEAN = 134,
	TRINKET_LIGHTER = 135,
	TRINKET_BROKEN_PADLOCK = 136,
	TRINKET_MYOSOTIS = 137,
	TRINKET_M = 138,
	TRINKET_TEARDROP_CHARM = 139,
	TRINKET_APPLE_OF_SODOM = 140,
	TRINKET_FORGOTTEN_LULLABY = 141,
	TRINKET_BETHS_FAITH = 142,
	TRINKET_OLD_CAPACITOR = 143,
	TRINKET_BRAIN_WORM = 144,
	TRINKET_PERFECTION = 145,
	TRINKET_DEVILS_CROWN = 146,
	TRINKET_CHARGED_PENNY = 147,
	TRINKET_FRIENDSHIP_NECKLACE = 148,
	TRINKET_PANIC_BUTTON = 149,
	TRINKET_BLUE_KEY = 150,
	TRINKET_FLAT_FILE = 151,
	TRINKET_TELESCOPE_LENS = 152,
	TRINKET_MOMS_LOCK = 153,
	TRINKET_DICE_BAG = 154,
	TRINKET_HOLY_CROWN = 155,
	TRINKET_MOTHERS_KISS = 156,
	TRINKET_TORN_CARD = 157,
	TRINKET_TORN_POCKET = 158,
	TRINKET_GILDED_KEY = 159,
	TRINKET_LUCKY_SACK = 160,
	TRINKET_WICKED_CROWN = 161,
	TRINKET_AZAZELS_STUMP = 162,
	TRINKET_DINGLE_BERRY = 163,
	TRINKET_RING_CAP = 164,
	TRINKET_NUH_UH = 165,
	TRINKET_MODELING_CLAY = 166,
	TRINKET_POLISHED_BONE = 167,
	TRINKET_HOLLOW_HEART = 168,
	TRINKET_KIDS_DRAWING = 169,
	TRINKET_CRYSTAL_KEY = 170,
	TRINKET_KEEPERS_BARGAIN = 171,
	TRINKET_CURSED_PENNY = 172,
	TRINKET_YOUR_SOUL = 173,
	TRINKET_NUMBER_MAGNET = 174,
	TRINKET_STRANGE_KEY = 175,
	TRINKET_LIL_CLOT = 176,
	TRINKET_TEMPORARY_TATTOO = 177,
	TRINKET_SWALLOWED_M80 = 178,
	TRINKET_RC_REMOTE = 179,
	TRINKET_FOUND_SOUL = 180,
	TRINKET_EXPANSION_PACK = 181,
	TRINKET_BETHS_ESSENCE = 182,
	TRINKET_THE_TWINS = 183,
	TRINKET_ADOPTION_PAPERS = 184,
	TRINKET_CRICKET_LEG = 185,
	TRINKET_APOLLYONS_BEST_FRIEND = 186,
	TRINKET_BROKEN_GLASSES = 187,
	TRINKET_ICE_CUBE = 188,
	TRINKET_SIGIL_OF_BAPHOMET = 189,
	NUM_TRINKETS = 190,
	
	-- Golden trinkets
	TRINKET_GOLDEN_FLAG = 0x8000,
	TRINKET_ID_MASK = 0x7fff,
}

---@enum PillEffect
PillEffect = {
	PILLEFFECT_NULL = - 1,
	PILLEFFECT_BAD_GAS = 0,
	PILLEFFECT_BAD_TRIP = 1,
	PILLEFFECT_BALLS_OF_STEEL = 2,
	PILLEFFECT_BOMBS_ARE_KEYS = 3,
	PILLEFFECT_EXPLOSIVE_DIARRHEA = 4,
	PILLEFFECT_FULL_HEALTH = 5,
	PILLEFFECT_HEALTH_DOWN = 6,
	PILLEFFECT_HEALTH_UP = 7,
	PILLEFFECT_I_FOUND_PILLS = 8,
	PILLEFFECT_PUBERTY = 9,
	PILLEFFECT_PRETTY_FLY = 10,
	PILLEFFECT_RANGE_DOWN = 11,
	PILLEFFECT_RANGE_UP = 12,
	PILLEFFECT_SPEED_DOWN = 13,
	PILLEFFECT_SPEED_UP = 14,
	PILLEFFECT_TEARS_DOWN = 15,
	PILLEFFECT_TEARS_UP = 16,
	PILLEFFECT_LUCK_DOWN = 17,
	PILLEFFECT_LUCK_UP = 18,
	PILLEFFECT_TELEPILLS = 19,
	PILLEFFECT_48HOUR_ENERGY = 20,
	PILLEFFECT_HEMATEMESIS = 21,
	PILLEFFECT_PARALYSIS = 22,
	PILLEFFECT_SEE_FOREVER = 23,
	PILLEFFECT_PHEROMONES = 24,
	PILLEFFECT_AMNESIA = 25,
	PILLEFFECT_LEMON_PARTY = 26,
	PILLEFFECT_WIZARD = 27,
	PILLEFFECT_PERCS = 28,
	PILLEFFECT_ADDICTED = 29,
	PILLEFFECT_RELAX = 30,
	PILLEFFECT_QUESTIONMARK = 31,
	PILLEFFECT_LARGER = 32,
	PILLEFFECT_SMALLER = 33,
	PILLEFFECT_INFESTED_EXCLAMATION = 34,
	PILLEFFECT_INFESTED_QUESTION = 35,
	PILLEFFECT_POWER = 36,
	PILLEFFECT_RETRO_VISION = 37,
	PILLEFFECT_FRIENDS_TILL_THE_END = 38,
	PILLEFFECT_X_LAX = 39,
	PILLEFFECT_SOMETHINGS_WRONG = 40,
	PILLEFFECT_IM_DROWSY = 41,
	PILLEFFECT_IM_EXCITED = 42,
	PILLEFFECT_GULP = 43,
	PILLEFFECT_HORF = 44,
	PILLEFFECT_SUNSHINE = 45,
	PILLEFFECT_VURP = 46,
	--NUM_PILL_EFFECTS = 47

	PILLEFFECT_SHOT_SPEED_DOWN = 47,
	PILLEFFECT_SHOT_SPEED_UP = 48,
	PILLEFFECT_EXPERIMENTAL = 49,
	NUM_PILL_EFFECTS = 50
}

---@enum Card
Card = {
	CARD_RANDOM = - 1,
	CARD_NULL = 0,
	CARD_FOOL = 1,
	CARD_MAGICIAN = 2,
	CARD_HIGH_PRIESTESS = 3,
	CARD_EMPRESS = 4,
	CARD_EMPEROR = 5,
	CARD_HIEROPHANT = 6,
	CARD_LOVERS = 7,
	CARD_CHARIOT = 8,
	CARD_JUSTICE = 9,
	CARD_HERMIT = 10,
	CARD_WHEEL_OF_FORTUNE = 11,
	CARD_STRENGTH = 12,
	CARD_HANGED_MAN = 13,
	CARD_DEATH = 14,
	CARD_TEMPERANCE = 15,
	CARD_DEVIL = 16,
	CARD_TOWER = 17,
	CARD_STARS = 18,
	CARD_MOON = 19,
	CARD_SUN = 20,
	CARD_JUDGEMENT = 21,
	CARD_WORLD = 22,
	CARD_CLUBS_2 = 23,
	CARD_DIAMONDS_2 = 24,
	CARD_SPADES_2 = 25,
	CARD_HEARTS_2 = 26,
	CARD_ACE_OF_CLUBS = 27,
	CARD_ACE_OF_DIAMONDS = 28,
	CARD_ACE_OF_SPADES = 29,
	CARD_ACE_OF_HEARTS = 30,
	CARD_JOKER = 31,
	RUNE_HAGALAZ = 32,
	RUNE_JERA = 33,
	RUNE_EHWAZ = 34,
	RUNE_DAGAZ = 35,
	RUNE_ANSUZ = 36,
	RUNE_PERTHRO = 37,
	RUNE_BERKANO = 38,
	RUNE_ALGIZ = 39,
	RUNE_BLANK = 40,
	RUNE_BLACK = 41,
	CARD_CHAOS = 42,
	CARD_CREDIT = 43,
	CARD_RULES = 44,
	CARD_HUMANITY = 45,
	CARD_SUICIDE_KING = 46,
	CARD_GET_OUT_OF_JAIL = 47,
	CARD_QUESTIONMARK = 48,
	CARD_DICE_SHARD = 49,
	CARD_EMERGENCY_CONTACT = 50,
	CARD_HOLY = 51,
	
	-- Booster Pack #1
	CARD_HUGE_GROWTH = 52,
	CARD_ANCIENT_RECALL = 53,
	CARD_ERA_WALK = 54,
	
	--NUM_CARDS = 55
	
	-- Repentance
	RUNE_SHARD = 55,
	CARD_REVERSE_FOOL = 56,
	CARD_REVERSE_MAGICIAN = 57,
	CARD_REVERSE_HIGH_PRIESTESS = 58,
	CARD_REVERSE_EMPRESS = 59,
	CARD_REVERSE_EMPEROR = 60,
	CARD_REVERSE_HIEROPHANT = 61,
	CARD_REVERSE_LOVERS = 62,
	CARD_REVERSE_CHARIOT = 63,
	CARD_REVERSE_JUSTICE = 64,
	CARD_REVERSE_HERMIT = 65,
	CARD_REVERSE_WHEEL_OF_FORTUNE = 66,
	CARD_REVERSE_STRENGTH = 67,
	CARD_REVERSE_HANGED_MAN = 68,
	CARD_REVERSE_DEATH = 69,
	CARD_REVERSE_TEMPERANCE = 70,
	CARD_REVERSE_DEVIL = 71,
	CARD_REVERSE_TOWER = 72,
	CARD_REVERSE_STARS = 73,
	CARD_REVERSE_MOON = 74,
	CARD_REVERSE_SUN = 75,
	CARD_REVERSE_JUDGEMENT = 76,
	CARD_REVERSE_WORLD = 77,
	CARD_CRACKED_KEY = 78,
	CARD_QUEEN_OF_HEARTS = 79,
	CARD_WILD = 80,
	CARD_SOUL_ISAAC = 81,
	CARD_SOUL_MAGDALENE = 82,
	CARD_SOUL_CAIN = 83,
	CARD_SOUL_JUDAS = 84,
	CARD_SOUL_BLUEBABY = 85,
	CARD_SOUL_EVE = 86,
	CARD_SOUL_SAMSON = 87,
	CARD_SOUL_AZAZEL = 88,
	CARD_SOUL_LAZARUS = 89,
	CARD_SOUL_EDEN = 90,
	CARD_SOUL_LOST = 91,
	CARD_SOUL_LILITH = 92,
	CARD_SOUL_KEEPER = 93,
	CARD_SOUL_APOLLYON = 94,
	CARD_SOUL_FORGOTTEN = 95,
	CARD_SOUL_BETHANY = 96,
	CARD_SOUL_JACOB = 97,
	NUM_CARDS = 98
}

---@enum TearVariant
TearVariant = {
	BLUE = 0,
	BLOOD = 1,
	TOOTH = 2,
	METALLIC = 3,
	BOBS_HEAD = 4,
	FIRE_MIND = 5,
	DARK_MATTER = 6,
	MYSTERIOUS = 7,
	SCHYTHE = 8,
	CHAOS_CARD = 9,
	LOST_CONTACT = 10,
	CUPID_BLUE = 11,
	CUPID_BLOOD = 12,
	NAIL = 13,
	PUPULA = 14,
	PUPULA_BLOOD = 15,
	GODS_FLESH = 16,
	GODS_FLESH_BLOOD = 17,
	DIAMOND = 18,
	EXPLOSIVO = 19,
	COIN = 20,
	MULTIDIMENSIONAL = 21,
	STONE = 22,
	NAIL_BLOOD = 23,
	GLAUCOMA = 24,
	GLAUCOMA_BLOOD = 25,
	BOOGER = 26,
	EGG = 27,
	RAZOR = 28,
	BONE = 29,
	BLACK_TOOTH = 30,
	NEEDLE = 31,
	BELIAL = 32,
	EYE = 33,
	EYE_BLOOD = 34,
	BALLOON = 35,
	HUNGRY = 36,
	BALLOON_BRIMSTONE = 37,
	BALLOON_BOMB = 38,
	
	-- Repentance
	FIST = 39,
	GRIDENT = 40,
	ICE = 41,
	ROCK = 42,
	KEY = 43,
	KEY_BLOOD = 44,
	ERASER = 45,
	FIRE = 46,
	SWORD_BEAM = 47,
	SPORE = 48,
	TECH_SWORD_BEAM = 49,
}

local function TEARFLAG(x)
	return x >= 64 and BitSet128(0,1<<(x-64)) or BitSet128(1<<x,0)
end

---@enum TearFlags
TearFlags = {
	TEAR_NORMAL = BitSet128(0,0),
	TEAR_SPECTRAL = TEARFLAG(0),					-- Ouija board type tear (goes thru obstacles)
	TEAR_PIERCING = TEARFLAG(1),					-- Cupid's arrow type tear (goes thru enemy)
	TEAR_HOMING = TEARFLAG(2),						-- Spoon bender type tear (homes to enemy)
	TEAR_SLOW = TEARFLAG(3),						-- Spider bite type tear (slows on contact)
	TEAR_POISON = TEARFLAG(4),						-- Common cold type tear (poisons on contact)
	TEAR_FREEZE = TEARFLAG(5),						-- Mom's contact type tear (freezes on contact)
	TEAR_SPLIT = TEARFLAG(6),						-- Parasite type tear (splits on collision)
	TEAR_GROW = TEARFLAG(7),						-- Lump of coal type tear (grows by range)
	TEAR_BOOMERANG = TEARFLAG(8),					-- My reflection type tear (returns back)
	TEAR_PERSISTENT = TEARFLAG(9),					-- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage)
	TEAR_WIGGLE = TEARFLAG(10),						-- Wiggle worm type tear (wiggles)
	TEAR_MULLIGAN = TEARFLAG(11),					-- Mulligan type tear (creates fly on hit)
	TEAR_EXPLOSIVE = TEARFLAG(12),					-- IPECAC type tear (explodes on hit)
	TEAR_CHARM = TEARFLAG(13),						-- Mom's Eyeshadow tear
	TEAR_CONFUSION = TEARFLAG(14),					-- Iron Bar tear
	TEAR_HP_DROP = TEARFLAG(15),					-- These tears cause enemy to drop hearts if killed (33% chance)
	TEAR_ORBIT = TEARFLAG(16),						-- Used for Little Planet (orbit arounds the player)
	TEAR_WAIT = TEARFLAG(17),						-- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
	TEAR_QUADSPLIT = TEARFLAG(18),					-- Splits into 4 smaller tears if it hits the ground
	TEAR_BOUNCE = TEARFLAG(19),						-- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
	TEAR_FEAR = TEARFLAG(20),						-- Mom's Perfume type tear of fear (fear on contact)
	TEAR_SHRINK = TEARFLAG(21),						-- Proptosis tears start large and shrink
	TEAR_BURN = TEARFLAG(22),						-- Fire Mind tears cause Burn effect on enemies
	TEAR_ATTRACTOR = TEARFLAG(23),					-- Attracts enemies and pickups
	TEAR_KNOCKBACK = TEARFLAG(24),					-- Tear impact pushes enemies back further
	TEAR_PULSE = TEARFLAG(25),						-- Makes the tear pulse
	TEAR_SPIRAL = TEARFLAG(26),						-- Makes the tear path spiral
	TEAR_FLAT = TEARFLAG(27),						-- Makes the tear oval in the direction of travel
	TEAR_SAD_BOMB = TEARFLAG(28),					-- Used by Bombs (Sad Bomb)
	TEAR_BUTT_BOMB = TEARFLAG(29),					-- Used by Bombs (Butt Bomb)
	TEAR_SQUARE = TEARFLAG(30),						-- Used for Hook Worm
	TEAR_GLOW = TEARFLAG(31),						-- Used for GodHead (they will have a glow around them)
	TEAR_GISH = TEARFLAG(32),						-- Used for Gish player tears (to color enemy black on slowing)
	TEAR_MYSTERIOUS_LIQUID_CREEP = TEARFLAG(33),	-- Mysterious Liquid tears spawn damaging green creep when hit
	TEAR_SHIELDED = TEARFLAG(34),					-- Lost Contact tears, block enemy projectiles
	TEAR_GLITTER_BOMB = TEARFLAG(35),				-- Used by Bombs (Glitter Bomb)
	TEAR_SCATTER_BOMB = TEARFLAG(36),				-- Used for Scatter bombs
	TEAR_STICKY = TEARFLAG(37),						-- Used for Sticky bombs and Explosivo tears
	TEAR_CONTINUUM = TEARFLAG(38),					-- Tears loop around the screen
	TEAR_LIGHT_FROM_HEAVEN = TEARFLAG(39),			-- Create damaging light beam on hit
	TEAR_COIN_DROP = TEARFLAG(40),					-- Used by Bumbo, spawns a coin when tear hits
	TEAR_BLACK_HP_DROP = TEARFLAG(41),				-- Enemy drops a black hp when dies
	TEAR_TRACTOR_BEAM = TEARFLAG(42),				-- Tear with this flag will follow parent player's beam
	TEAR_GODS_FLESH = TEARFLAG(43),					-- God's flesh flag to minimize enemies
	TEAR_GREED_COIN = TEARFLAG(44),					-- Greed coin tears that has a chance to generate a coin when hit
	TEAR_CROSS_BOMB = TEARFLAG(45),					-- Bomber Boy
	TEAR_BIG_SPIRAL = TEARFLAG(46),					-- Ouroboros Worm, big radius oscilating tears
	TEAR_PERMANENT_CONFUSION = TEARFLAG(47),		-- Glaucoma tears, permanently confuses enemies
	TEAR_BOOGER = TEARFLAG(48),						-- Booger tears, stick and do damage over time
	TEAR_EGG = TEARFLAG(49),						-- Egg tears, leave creep and spawns spiders or flies
	TEAR_ACID = TEARFLAG(50),						-- Sulfuric Acid tears, can break grid entities
	TEAR_BONE = TEARFLAG(51),						-- Bone tears, splits in 2
	TEAR_BELIAL = TEARFLAG(52),						-- Belial tears, piecing tears gets double damage + homing
	TEAR_MIDAS = TEARFLAG(53),						-- Midas touch tears
	TEAR_NEEDLE = TEARFLAG(54),						-- Needle tears
	TEAR_JACOBS = TEARFLAG(55),						-- Jacobs ladder tears
	TEAR_HORN = TEARFLAG(56),						-- Little Horn tears
	TEAR_LASER = TEARFLAG(57),						-- Technology Zero
	TEAR_POP = TEARFLAG(58),						-- Pop!
	TEAR_ABSORB = TEARFLAG(59),						-- Hungry Tears
	TEAR_LASERSHOT = TEARFLAG(60),					-- Trisagion, generates a laser on top of the tear
	TEAR_HYDROBOUNCE = TEARFLAG(61),				-- Flat Stone
	TEAR_BURSTSPLIT = TEARFLAG(62),					-- Haemolacria
	TEAR_CREEP_TRAIL = TEARFLAG(63),				-- Bob's Bladder
	TEAR_PUNCH = TEARFLAG(64),						-- Knockout Drops
	TEAR_ICE = TEARFLAG(65),						-- Uranus
	TEAR_MAGNETIZE = TEARFLAG(66),					-- Lodestone
	TEAR_BAIT = TEARFLAG(67),						-- Rotten Tomato
	TEAR_OCCULT = TEARFLAG(68),						-- Eye of the Occult
	TEAR_ORBIT_ADVANCED = TEARFLAG(69),				-- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
	TEAR_ROCK = TEARFLAG(70),						-- Rock tears, chance to break rocks, deal extra damage to rock type enemies
	TEAR_TURN_HORIZONTAL = TEARFLAG(71),			-- Brain Worm, tears turn and go horizontally when moving past an enemy
	TEAR_BLOOD_BOMB = TEARFLAG(72),					-- Blood Bombs, leave blood creep on the ground
	TEAR_ECOLI = TEARFLAG(73),						-- E. Coli tears, turn enemies into poop
	TEAR_COIN_DROP_DEATH = TEARFLAG(74),			-- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
	TEAR_BRIMSTONE_BOMB = TEARFLAG(75),				-- Brimstone Bombs, explosion creates a brimstone cross
	TEAR_RIFT = TEARFLAG(76),						-- Rift tears, creates a black hole on impact
	TEAR_SPORE = TEARFLAG(77),						-- Spore tears, stick to enemies and multiply on enemy death
	TEAR_GHOST_BOMB = TEARFLAG(78),					-- Ghost bombs
	TEAR_CARD_DROP_DEATH = TEARFLAG(79),			-- Killed enemies will drop a random tarot card
	TEAR_RUNE_DROP_DEATH = TEARFLAG(80),			-- Killed enemies will drop a random rune
	TEAR_TELEPORT = TEARFLAG(81),					-- Hit enemies will teleport to a different part of the room
	
	TEAR_EFFECT_COUNT = 82,
	
	-- Reserved flags - cannot be randomly picked
	TEAR_REROLL_ROCK_WISP = TEARFLAG(115),			
	TEAR_MOM_STOMP_WISP = TEARFLAG(116),			
	TEAR_ENEMY_TO_WISP = TEARFLAG(117),				
	TEAR_REROLL_ENEMY = TEARFLAG(118),				-- D10 Wisps, chance to reroll enemy on hit
	TEAR_GIGA_BOMB = TEARFLAG(119),					-- Causes giant explosions that create holes in the ground (for Giga Bombs)
	TEAR_EXTRA_GORE = TEARFLAG(120),				-- Causes enemies to explode into more gibs on death (for Donkey Jawbone)
	TEAR_RAINBOW = TEARFLAG(121),					-- Causes lasers to visually cycle between rainbow colors
	TEAR_DETONATE = TEARFLAG(122),					-- Can be detonated by Remote Detonator
	TEAR_CHAIN = TEARFLAG(123),						-- Akeldama tears, stick to each other and form a chain that can be swung around
	TEAR_DARK_MATTER = TEARFLAG(124),				-- Used to identify Dark Matter tears
	TEAR_GOLDEN_BOMB = TEARFLAG(125),				-- Used to identify bombs dropped while having a golden bomb
	TEAR_FAST_BOMB = TEARFLAG(126),					-- Used to identify bombs dropped while having Fast Bombs
	TEAR_LUDOVICO = TEARFLAG(127),					-- Used as a weapon for Ludovico Technique
}

---@enum ButtonAction
ButtonAction = {
	ACTION_LEFT = 0,
	ACTION_RIGHT = 1,
	ACTION_UP = 2,
	ACTION_DOWN = 3,
	ACTION_SHOOTLEFT = 4,
	ACTION_SHOOTRIGHT = 5,
	ACTION_SHOOTUP = 6,
	ACTION_SHOOTDOWN = 7,
	ACTION_BOMB = 8,
	ACTION_ITEM = 9,
	ACTION_PILLCARD = 10,
	ACTION_DROP = 11,
	ACTION_PAUSE = 12,
	ACTION_MAP = 13,
	ACTION_MENUCONFIRM = 14,
	ACTION_MENUBACK = 15,
	ACTION_RESTART = 16,
	ACTION_FULLSCREEN = 17,
	ACTION_MUTE = 18,
	ACTION_JOINMULTIPLAYER = 19,
	ACTION_MENULEFT = 20,
	ACTION_MENURIGHT = 21,
	ACTION_MENUUP = 22,
	ACTION_MENUDOWN = 23,
	ACTION_MENULT = 24,
	ACTION_MENURT = 25,
	ACTION_MENUTAB = 26,
	
	ACTION_CONSOLE = 28 -- USE ONLY FOR HOOKING! To check the input use IsButtonTriggered with desired key
}

---@enum Keyboard
Keyboard = {
	KEY_SPACE = 32,
	KEY_APOSTROPHE = 39,
	KEY_COMMA = 44,
	KEY_MINUS = 45,
	KEY_PERIOD = 46,
	KEY_SLASH = 47,
	KEY_0 = 48,
	KEY_1 = 49,
	KEY_2 = 50,
	KEY_3 = 51,
	KEY_4 = 52,
	KEY_5 = 53,
	KEY_6 = 54,
	KEY_7 = 55,
	KEY_8 = 56,
	KEY_9 = 57,
	KEY_SEMICOLON = 59,
	KEY_EQUAL = 61,
	KEY_A = 65,
	KEY_B = 66,
	KEY_C = 67,
	KEY_D = 68,
	KEY_E = 69,
	KEY_F = 70,
	KEY_G = 71,
	KEY_H = 72,
	KEY_I = 73,
	KEY_J = 74,
	KEY_K = 75,
	KEY_L = 76,
	KEY_M = 77,
	KEY_N = 78,
	KEY_O = 79,
	KEY_P = 80,
	KEY_Q = 81,
	KEY_R = 82,
	KEY_S = 83,
	KEY_T = 84,
	KEY_U = 85,
	KEY_V = 86,
	KEY_W = 87,
	KEY_X = 88,
	KEY_Y = 89,
	KEY_Z = 90,
	KEY_LEFT_BRACKET = 91,
	KEY_BACKSLASH = 92,
	KEY_RIGHT_BRACKET = 93,
	KEY_GRAVE_ACCENT = 96,
	KEY_WORLD_1 = 161,
	KEY_WORLD_2 = 162,
	KEY_ESCAPE = 256,
	KEY_ENTER = 257,
	KEY_TAB = 258,
	KEY_BACKSPACE = 259,
	KEY_INSERT = 260,
	KEY_DELETE = 261,
	KEY_RIGHT = 262,
	KEY_LEFT = 263,
	KEY_DOWN = 264,
	KEY_UP = 265,
	KEY_PAGE_UP = 266,
	KEY_PAGE_DOWN = 267,
	KEY_HOME = 268,
	KEY_END = 269,
	KEY_CAPS_LOCK = 280,
	KEY_SCROLL_LOCK = 281,
	KEY_NUM_LOCK = 282,
	KEY_PRINT_SCREEN = 283,
	KEY_PAUSE = 284,
	KEY_F1 = 290,
	KEY_F2 = 291,
	KEY_F3 = 292,
	KEY_F4 = 293,
	KEY_F5 = 294,
	KEY_F6 = 295,
	KEY_F7 = 296,
	KEY_F8 = 297,
	KEY_F9 = 298,
	KEY_F10 = 299,
	KEY_F11 = 300,
	KEY_F12 = 301,
	KEY_F13 = 302,
	KEY_F14 = 303,
	KEY_F15 = 304,
	KEY_F16 = 305,
	KEY_F17 = 306,
	KEY_F18 = 307,
	KEY_F19 = 308,
	KEY_F20 = 309,
	KEY_F21 = 310,
	KEY_F22 = 311,
	KEY_F23 = 312,
	KEY_F24 = 313,
	KEY_F25 = 314,
	KEY_KP_0 = 320,
	KEY_KP_1 = 321,
	KEY_KP_2 = 322,
	KEY_KP_3 = 323,
	KEY_KP_4 = 324,
	KEY_KP_5 = 325,
	KEY_KP_6 = 326,
	KEY_KP_7 = 327,
	KEY_KP_8 = 328,
	KEY_KP_9 = 329,
	KEY_KP_DECIMAL = 330,
	KEY_KP_DIVIDE = 331,
	KEY_KP_MULTIPLY = 332,
	KEY_KP_SUBTRACT = 333,
	KEY_KP_ADD = 334,
	KEY_KP_ENTER = 335,
	KEY_KP_EQUAL = 336,
	KEY_LEFT_SHIFT = 340,
	KEY_LEFT_CONTROL = 341,
	KEY_LEFT_ALT = 342,
	KEY_LEFT_SUPER = 343,
	KEY_RIGHT_SHIFT = 344,
	KEY_RIGHT_CONTROL = 345,
	KEY_RIGHT_ALT = 346,
	KEY_RIGHT_SUPER = 347,
	KEY_MENU = 348
}

---@enum Mouse
Mouse = {
	MOUSE_BUTTON_1 = 0,
	MOUSE_BUTTON_2 = 1,
	MOUSE_BUTTON_3 = 2,
	MOUSE_BUTTON_4 = 3,
	MOUSE_BUTTON_5 = 4,
	MOUSE_BUTTON_6 = 5,
	MOUSE_BUTTON_7 = 6,
	MOUSE_BUTTON_8 = 7,
	MOUSE_BUTTON_LAST = 7,
	MOUSE_BUTTON_LEFT = 0,
	MOUSE_BUTTON_RIGHT = 1,
	MOUSE_BUTTON_MIDDLE = 2
}

---@enum InputHook
InputHook = {
	IS_ACTION_PRESSED = 0,
	IS_ACTION_TRIGGERED = 1,
	GET_ACTION_VALUE = 2
}

---@enum SeedEffect
SeedEffect = {
	SEED_NORMAL = 0,
	SEED_MOVEMENT_PITCH = 1,
	SEED_HEALTH_PITCH = 2,
	SEED_CAMO_ISAAC = 3,
	SEED_CAMO_ENEMIES = 4,
	SEED_CAMO_PICKUPS = 5,
	SEED_CAMO_EVERYTHING = 6,
	SEED_FART_SOUNDS = 7,
	SEED_OLD_TV = 8,
	SEED_DYSLEXIA = 9,
	SEED_NO_HUD = 10,
	SEED_PICKUPS_SLIDE = 11,
	SEED_CONTROLS_REVERSED = 12,
	SEED_ALL_CHAMPIONS = 13,
	SEED_INVISIBLE_ISAAC = 14,
	SEED_INVISIBLE_ENEMIES = 15,
	SEED_INFINITE_BASEMENT = 16,
	SEED_ALWAYS_CHARMED = 17,
	SEED_ALWAYS_CONFUSED = 18,
	SEED_ALWAYS_AFRAID = 19,
	SEED_ALWAYS_ALTERNATING_FEAR = 20,
	SEED_ALWAYS_CHARMED_AND_AFRAID = 21,
	SEED_EXTRA_BLOOD = 23,
	SEED_POOP_TRAIL = 24,
	SEED_PACIFIST = 25,
	SEED_DAMAGE_WHEN_STOPPED = 26,
	SEED_DAMAGE_ON_INTERVAL = 27,
	SEED_DAMAGE_ON_TIME_LIMIT = 28,
	SEED_PILLS_NEVER_IDENTIFY = 29,
	SEED_MYSTERY_TAROT_CARDS = 30,
	SEED_ENEMIES_RESPAWN = 32,
	SEED_ITEMS_COST_MONEY = 33,
	SEED_BIG_HEAD = 35,
	SEED_SMALL_HEAD = 36,
	SEED_BLACK_ISAAC = 37,
	SEED_GLOWING_TEARS = 38,
	SEED_SLOW_MUSIC = 41,
	SEED_ULTRA_SLOW_MUSIC = 42,
	SEED_FAST_MUSIC = 43,
	SEED_ULTRA_FAST_MUSIC = 44,
	SEED_NO_FACE = 46,
	SEED_ISAAC_TAKES_HIGH_DAMAGE = 47,
	SEED_ISAAC_TAKES_MASSIVE_DAMAGE = 48,
	SEED_ICE_PHYSICS = 52,
	SEED_KAPPA = 53,
	SEED_CHRISTMAS = 54,
	SEED_KIDS_MODE = 55,
	SEED_PERMANENT_CURSE_DARKNESS = 56,
	SEED_PERMANENT_CURSE_LABYRINTH = 57,
	SEED_PERMANENT_CURSE_LOST = 58,
	SEED_PERMANENT_CURSE_UNKNOWN = 59,
	SEED_PERMANENT_CURSE_MAZE = 60,
	SEED_PERMANENT_CURSE_BLIND = 61,
	SEED_PERMANENT_CURSE_CURSED = 62,
	SEED_PREVENT_CURSE_DARKNESS = 63,
	SEED_PREVENT_CURSE_LABYRINTH = 64,
	SEED_PREVENT_CURSE_LOST = 65,
	SEED_PREVENT_CURSE_UNKNOWN = 66,
	SEED_PREVENT_CURSE_MAZE = 67,
	SEED_PREVENT_CURSE_BLIND = 68,
	SEED_PREVENT_ALL_CURSES = 70,
	SEED_NO_BOSS_ROOM_EXITS = 71,
	SEED_PICKUPS_TIMEOUT = 72,
	SEED_INVINCIBLE = 73,
	SEED_SHOOT_IN_MOVEMENT_DIRECTION = 74,
	SEED_SHOOT_OPPOSITE_MOVEMENT_DIRECTION = 75,
	SEED_AXIS_ALIGNED_CONTROLS = 76,
	SEED_SUPER_HOT = 77,
	SEED_RETRO_VISION = 78,
	NUM_SEEDS = 79
}

---@enum GridRooms
GridRooms = {
	NO_ROOM_IDX = -99999,
	
	ROOM_DEVIL_IDX = -1,
	ROOM_ERROR_IDX = -2,
	ROOM_DEBUG_IDX = -3,
	ROOM_DUNGEON_IDX = -4,
	ROOM_BOSSRUSH_IDX = -5,
	ROOM_BLACK_MARKET_IDX = -6,
	ROOM_MEGA_SATAN_IDX = -7,
	ROOM_BLUE_WOOM_IDX = -8,
	ROOM_THE_VOID_IDX = -9,

	ROOM_SECRET_EXIT_IDX = -10,
	ROOM_GIDEON_DUNGEON_IDX = -11,
	ROOM_GENESIS_IDX = -12,
	ROOM_SECRET_SHOP_IDX = -13,
	ROOM_ROTGUT_DUNGEON1_IDX = -14,
	ROOM_ROTGUT_DUNGEON2_IDX = -15,
	ROOM_BLUE_ROOM_IDX = -16,
	ROOM_EXTRA_BOSS_IDX = -17,
	ROOM_ANGEL_SHOP_IDX = -18,
	NUM_OFF_GRID_ROOMS = 18,
	
	MAX_GRID_ROOMS = 507,
	MAX_ROOMS = 525,
	
	-- Not real room indices, doors that point to those indices have special behavior
	ROOM_MIRROR_IDX = -100,
	ROOM_MINESHAFT_IDX = -101,
}

---@enum ItemPoolType
ItemPoolType = {
	POOL_NULL = - 1,
	POOL_TREASURE = 0,
	POOL_SHOP = 1,
	POOL_BOSS = 2,
	POOL_DEVIL = 3,
	POOL_ANGEL = 4,
	POOL_SECRET = 5,
	POOL_LIBRARY = 6,
	POOL_SHELL_GAME = 7, -- unused (for now)
	POOL_GOLDEN_CHEST = 8,
	POOL_RED_CHEST = 9,
	POOL_BEGGAR = 10,
	POOL_DEMON_BEGGAR = 11,
	POOL_CURSE = 12,
	POOL_KEY_MASTER = 13,
	POOL_BATTERY_BUM = 14,
	POOL_MOMS_CHEST = 15,
	POOL_GREED_TREASURE = 16,
	POOL_GREED_BOSS = 17,
	POOL_GREED_SHOP = 18,
	POOL_GREED_DEVIL = 19,
	POOL_GREED_ANGEL = 20,
	POOL_GREED_CURSE = 21,
	POOL_GREED_SECRET = 22,
	POOL_CRANE_GAME = 23,
	POOL_ULTRA_SECRET = 24,
	POOL_BOMB_BUM = 25,
	POOL_PLANETARIUM = 26,
	POOL_OLD_CHEST = 27,
	POOL_BABY_SHOP = 28,
	POOL_WOODEN_CHEST = 29,
	POOL_ROTTEN_BEGGAR = 30,
	NUM_ITEMPOOLS = 31
}

---@enum ProjectileVariant
ProjectileVariant = {
	PROJECTILE_NORMAL = 0,
	PROJECTILE_BONE = 1,
	PROJECTILE_FIRE = 2,
	PROJECTILE_PUKE = 3,
	PROJECTILE_TEAR = 4,
	PROJECTILE_CORN = 5,
	PROJECTILE_HUSH = 6,
	PROJECTILE_COIN = 7,
	PROJECTILE_GRID = 8,	-- rocks thrown by Polties
	PROJECTILE_ROCK = 9,	-- stone shot
	PROJECTILE_RING = 10,	-- unused
	PROJECTILE_MEAT = 11,	-- globin shot
	PROJECTILE_FCUK = 12,	-- steven shot
	PROJECTILE_WING = 13,	-- feather shot (from Dogma)
	PROJECTILE_LAVA = 14,	-- lava ball (from Beast boss fight)
	PROJECTILE_HEAD = 15,	-- dead gaper flung by Mother
	PROJECTILE_PEEP = 16,	-- eye shot
}

---@enum ProjectileFlags
ProjectileFlags = {
	SMART = 1,			-- follow player
	EXPLODE = 1 << 1,		-- explode on impact
	ACID_GREEN = 1 << 2,	-- acid splat on impact
	GOO = 1 << 3,			-- goo splat on impact
	GHOST = 1 << 4,		-- slide through solid entities
	WIGGLE = 1 << 5,
	BOOMERANG = 1 << 6,	-- come back
	HIT_ENEMIES = 1 << 7, -- can hit enemies
	ACID_RED = 1 << 8,	-- blood acid
	GREED = 1 << 9,		-- Greed projectiles have same effect as Greed enemy's bullets.
	RED_CREEP = 1 << 10,	-- Bullet leaves a red creep
	ORBIT_CW = 1 << 11,	-- Bullet orbits a point clockwise and passes through walls similar to Tiny Planet
	ORBIT_CCW = 1 << 12,	-- Bullet orbits a point counter-clockwise and passes through walls similar to Tiny Planet
	NO_WALL_COLLIDE = 1 << 13,
	CREEP_BROWN = 1 << 14,	-- Bullet leaves a brown creep
	FIRE = 1 << 15, -- Projectile was cast by a fireplace
	BURST = 1 << 16, -- Bursts into more bullets
	ANY_HEIGHT_ENTITY_HIT = 1 << 17, -- Bullets that can hit at any height
	CURVE_LEFT = 1 << 18, -- Bullets curve slightly on a circular path
	CURVE_RIGHT = 1 << 19, -- Bullets curve slightly on a circular path
	TURN_HORIZONTAL = 1 << 20, -- Bullets turn and go horizontally and increase in speed when they pass the const static uint64_t player on either side
	SINE_VELOCITY = 1 << 21, -- Bullet velocity varies over time as a function of a wave
	MEGA_WIGGLE = 1 << 22, -- Like wiggle worm but the wiggling increases in amplitude over time
	SAWTOOTH_WIGGLE = 1 << 23, -- Bullets travel on a sawtooth shaped path
	SLOWED = 1 << 24,
	TRIANGLE = 1 << 25,
	MOVE_TO_PARENT = 1 << 26,
	ACCELERATE = 1 << 27,
	DECELERATE = 1 << 28,
	BURST3 = 1 << 29,
	CONTINUUM = 1 << 30, -- Bullets reappear from the opposite side as they leave the screen
	CANT_HIT_PLAYER = 1 << 31,
	-- "Change" flags will change the bullet's behavior after a timeout.
	CHANGE_FLAGS_AFTER_TIMEOUT = 1 << 32, -- change m_ProjectileFlags to m_TimeoutProjectileFlags.
	CHANGE_VELOCITY_AFTER_TIMEOUT = 1 << 33,
	STASIS = 1 << 34,
	FIRE_WAVE = 1 << 35,
	FIRE_WAVE_X = 1 << 36,
	ACCELERATE_EX = 1 << 37,
	BURST8 = 1 << 38,
	FIRE_SPAWN = 1 << 39,
	ANTI_GRAVITY = 1 << 40,
	TRACTOR_BEAM = 1 << 41,
	BOUNCE = 1 << 42,
	BOUNCE_FLOOR = 1 << 43,
	SHIELDED = 1 << 44,
	BLUE_FIRE_SPAWN = 1 << 45,
	LASER_SHOT = 1 << 46,
	GODHEAD = 1 << 47,
	SMART_PERFECT = 1 << 48,
	BURSTSPLIT = 1 << 49,
	WIGGLE_ROTGUT = 1 << 50,
	FREEZE = 1 << 51,
	ACCELERATE_TO_POSITION = 1 << 52,
	BROCCOLI = 1 << 53,
	BACKSPLIT = 1 << 54,
	SIDEWAVE = 1 << 55,
	ORBIT_PARENT = 1 << 56,
	FADEOUT = 1 << 57,
}

---@enum EntityPartition
EntityPartition = {
	FAMILIAR = 1,
	BULLET = 1<<1,
	TEAR = 1<<2,
	ENEMY = 1<<3,
	PICKUP = 1<<4,
	PLAYER = 1<<5,
	EFFECT = 1<<6
}

---@enum ChampionColor
ChampionColor = {
	RED = 0, -- 33% more life, full heart
	YELLOW = 1, -- 33% faster, lil battery
	GREEN = 2, -- trail of green creep, pill
	ORANGE = 3, -- greed shot (drop coins when hit), 1-3 coins
	BLUE = 4, -- half speed, 3 blue flies
	BLACK = 5, -- explodes on death, bomb
	WHITE = 6, -- must be killed last, half eternal heart
	GREY = 7, -- 33% health half speed, key
	TRANSPARENT = 8, -- spectral, locked chest
	FLICKER = 9, -- partly invisible, red chest
	PINK = 10, -- random shots, no drop
	PURPLE = 11, -- pull player/tears, trinket
	DARK_RED = 12, -- regenerate, double heart
	LIGHT_BLUE = 13, -- spread shot on death, half heart

	CAMO = 14, -- camo kid like color, drops a rune when killed
	PULSE_GREEN = 15, -- when killed creates 2 mobs of same kind
	PULSE_GREY = 16, -- shots reflected while in gray state, drops random pickup
	FLY_PROTECTED = 17, -- has halo of fly like shopkeeper, spawns 2 attack flies on death
	TINY = 18, -- 33% less hp, half size, speed +33%, 20% chance of small pill
	GIANT = 19, -- double size, 50% more hp, does 2 hearts of damage, 10% slower, 20% chance of large pill
	
	PULSE_RED = 20, -- heals all enemies in the room including himself by 30hp every second  - spawns a red heart when killed
	SIZE_PULSE = 21, -- spawns flies when hit, one attack fly for each time it takes damage - spawns 4-6 blue flies when killed
	KING = 22, -- turns all enemies in the room into yellow champions and has tripple HP - spawns 2-3 random pickups when killed
	DEATH = 23, -- does 2 hearts of damage when touched - does death effect when killed

	BROWN = 24, -- constantly poops
	RAINBOW = 25, -- many champion effects combined, drops one of everything
}

---@enum ActiveSlot
ActiveSlot = {
	SLOT_PRIMARY = 0, -- main slot
	SLOT_SECONDARY = 1, -- schoolbag slot
	SLOT_POCKET = 2, -- permanent card/pill slot (tainted alts)
	SLOT_POCKET2 = 3, -- single use card/pill slot (Dice Bag)
}

---@enum UseFlag
UseFlag = {
	USE_NOANIM = 1,				-- Don't play use animations
	USE_NOCOSTUME = 1 << 1,		-- Don't add costume
	USE_OWNED = 1 << 2,			-- Effect was triggered by an active item owned by the player
	USE_ALLOWNONMAIN = 1 << 3,	-- Allow the effect to trigger on non-main players (i.e. coop babies)
	USE_REMOVEACTIVE = 1 << 4,	-- D4 only: Reroll the player's active item

	USE_CARBATTERY = 1 << 5,	-- Effect was triggered a second time by Car Battery (or Tarot Cloth for cards)
	USE_VOID = 1 << 6,			-- Effect was triggered by Void

	USE_MIMIC = 1 << 7,			-- Effect was mimicked by an active item (Blank Card, Placebo)
	USE_NOANNOUNCER = 1 << 8,	-- Never play announcer voice
	
	USE_ALLOWWISPSPAWN = 1 << 9, -- This allows an item to spawn wisps when called from another item usage as the wisps generator checks for NOANIM, so usually you want to use this with NOANIM call
	USE_CUSTOMVARDATA = 1 << 10, -- If set, forces UseActiveItem to use the CustomVarData argument instead of the active item's stored VarData
	
	USE_NOHUD = 1 << 11,		 -- Don't display text in the HUD (this is currently only used by Echo Chamber)  
}

---@enum RoomTransitionAnim
RoomTransitionAnim = {
	WALK = 0, -- mostly when using doors
	FADE = 1, -- fadein/fadout used for Mom's Hand
	PIXELATION = 2, -- fade+pixelation effect used for secret item dungeon
	TELEPORT = 3,
	MAZE = 4, -- for curse of the maze
	ANKH = 5,
	DEAD_CAT = 6,
	ONE_UP = 7,
	COLLAR = 8,
	JUDAS_SHADOW = 9,
	LAZARUS = 10,
	WOMB_TELEPORT = 11, -- for Ventricle razor teleport
	GLOWING_HOURGLASS = 12, -- for glowing hourglass teleport
	D7 = 13,
	MISSING_POSTER = 14,
	BOSS_FORCED = 15, -- No transition, goes directly to boss intro (for backwardass challenge)
	PORTAL_TELEPORT = 16, -- for card reading teleport
	FORGOTTEN_TELEPORT = 17, -- for the Forgotten's birthright
	FADE_MIRROR = 18,
	MINECART = 19,
	DEATH_CERTIFICATE = 20,
}

---@enum BackdropType
BackdropType = {
	BACKDROP_NULL = 0,
	BASEMENT = 1,
	CELLAR = 2,
	BURNT_BASEMENT = 3,
	CAVES = 4,
	CATACOMBS = 5,
	FLOODED_CAVES = 6,
	DEPTHS = 7,
	NECROPOLIS = 8,
	DANK_DEPTHS = 9,
	WOMB = 10,
	UTERO = 11,
	SCARRED_WOMB = 12,
	BLUE_WOMB = 13,
	SHEOL = 14,
	CATHEDRAL = 15,
	DARKROOM = 16,
	CHEST = 17,
	MEGA_SATAN = 18,
	LIBRARY = 19,
	SHOP = 20,
	ISAAC = 21,
	BARREN = 22,
	SECRET = 23,
	DICE = 24,
	ARCADE = 25,
	ERROR_ROOM = 26,
	BLUE_WOMB_PASS = 27,
	GREED_SHOP = 28,
	DUNGEON = 29,
	SACRIFICE = 30,
	DOWNPOUR = 31,
	MINES = 32,
	MAUSOLEUM = 33,
	CORPSE = 34,
	PLANETARIUM = 35,
	DOWNPOUR_ENTRANCE = 36,
	MINES_ENTRANCE = 37,
	MAUSOLEUM_ENTRANCE = 38,
	CORPSE_ENTRANCE = 39,
	MAUSOLEUM2 = 40,
	MAUSOLEUM3 = 41,
	MAUSOLEUM4 = 42,
	CORPSE2 = 43,
	CORPSE3 = 44,
	DROSS = 45,
	ASHPIT = 46,
	GEHENNA = 47,
	MORTIS = 48,
	ISAACS_BEDROOM = 49,
	HALLWAY = 50,
	MOMS_BEDROOM = 51,
	CLOSET = 52,
	CLOSET_B = 53,
	DOGMA = 54,
	DUNGEON_GIDEON = 55,
	DUNGEON_ROTGUT = 56,
	DUNGEON_BEAST = 57,
	MINES_SHAFT = 58,
	ASHPIT_SHAFT = 59,
	DARK_CLOSET = 60,
	NUM_BACKDROPS = 61
}

---@enum PoopSpellType
PoopSpellType = {
	SPELL_NONE = 0,

	SPELL_POOP = 1,
	SPELL_CORNY = 2,
	SPELL_BURNING = 3,
	SPELL_STONE = 4,
	SPELL_STINKY = 5,
	SPELL_BLACK = 6,
	SPELL_HOLY = 7,
	SPELL_LIQUID = 8,
	SPELL_FART = 9,
	SPELL_BOMB = 10,
	SPELL_DIARRHEA = 11,

	NUM_POOP_SPELLS = 12,

	SPELL_BAG_SIZE = 20,
	SPELL_QUEUE_SIZE = 6
}

---@enum LaserSubType
LaserSubType = {
	LASER_SUBTYPE_LINEAR = 0,				-- Typical laser that has a start and end point.
	LASER_SUBTYPE_RING_LUDOVICO = 1,		-- Controlled ring laser a la Tech+Ludovico, Brim+Ludovico
	LASER_SUBTYPE_RING_PROJECTILE = 2,		-- Ring laser that travels like a projectile (Technology X)
	LASER_SUBTYPE_RING_FOLLOW_PARENT = 3,	-- Ring lasers that encircle their parents (Maw of the Void)
	LASER_SUBTYPE_NO_IMPACT = 4				-- For Technology Zero, doesn't create an impact
}


	-- ItemConfig.CHARGE_*
ItemConfig.CHARGE_NORMAL = 0
ItemConfig.CHARGE_TIMED = 1
ItemConfig.CHARGE_SPECIAL = 2
	
	-- ItemConfig.TAG_*
ItemConfig.TAG_DEAD = 1					-- Dead things (for the Parasite unlock)
ItemConfig.TAG_SYRINGE = 1<<1				-- Syringes (for Little Baggy and the Spun! transformation)
ItemConfig.TAG_MOM = 1<<2					-- Mom's things (for Mom's Contact and the Yes Mother? transformation)
ItemConfig.TAG_TECH = 1<<3				-- Technology items (for the Technology Zero unlock)
ItemConfig.TAG_BATTERY = 1<<4				-- Battery items (for the Jumper Cables unlock)
ItemConfig.TAG_GUPPY = 1<<5				-- Guppy items (Guppy transformation)
ItemConfig.TAG_FLY = 1<<6					-- Fly items (Beelzebub transformation)
ItemConfig.TAG_BOB = 1<<7					-- Bob items (Bob transformation)
ItemConfig.TAG_MUSHROOM = 1<<8			-- Mushroom items (Fun Guy transformation)
ItemConfig.TAG_BABY = 1<<9				-- Baby items (Conjoined transformation)
ItemConfig.TAG_ANGEL = 1<<10				-- Angel items (Seraphim transformation)
ItemConfig.TAG_DEVIL = 1<<11				-- Devil items (Leviathan transformation)
ItemConfig.TAG_POOP = 1<<12				-- Poop items (Oh Shit transformation)
ItemConfig.TAG_BOOK = 1<<13				-- Book items (Book Worm transformat)
ItemConfig.TAG_SPIDER = 1<<14				-- Spider items (Spider Baby transformation)
ItemConfig.TAG_QUEST = 1<<15				-- Quest item (cannot be rerolled or randomly obtained)
ItemConfig.TAG_MONSTER_MANUAL = 1<<16		-- Can be spawned by Monster Manual
ItemConfig.TAG_NO_GREED = 1<<17			-- Cannot appear in Greed Mode
ItemConfig.TAG_FOOD = 1<<18				-- Food item (for Binge Eater)
ItemConfig.TAG_TEARS_UP = 1<<19			-- Tears up item (for Lachryphagy unlock detection)
ItemConfig.TAG_OFFENSIVE = 1<<20			-- Whitelisted item for Lost B
ItemConfig.TAG_NO_KEEPER = 1<<21			-- Blacklisted item for Keeper/Keeper B
ItemConfig.TAG_NO_LOST_BR = 1<<22			-- Blacklisted item for Lost's Birthright
ItemConfig.TAG_STARS = 1<<23				-- Star themed items (for the Planetarium unlock)
ItemConfig.TAG_SUMMONABLE = 1<<24			-- Summonable items (for Bethany B)
ItemConfig.TAG_NO_CANTRIP = 1<<25			-- Can't be obtained in Cantripped challenge
ItemConfig.TAG_WISP = 1<<26				-- Active items that have wisps attached to them (automatically set)
ItemConfig.TAG_UNIQUE_FAMILIAR = 1<<27	-- Unique familiars that cannot be duplicated
ItemConfig.TAG_NO_CHALLENGE = 1<<28		-- Items that shouldn't be obtainable in challenges
ItemConfig.TAG_NO_DAILY = 1<<29			-- Items that shouldn't be obtainable in daily runs
ItemConfig.TAG_LAZ_SHARED = 1<<30			-- Items that should be shared between Tainted Lazarus' forms
ItemConfig.TAG_LAZ_SHARED_GLOBAL = 1<<31	-- Items that should be shared between Tainted Lazarus' forms but only through global checks (such as PlayerManager::HasCollectible)
ItemConfig.TAG_NO_EDEN = 1<<32			-- Items that can't be randomly rolled
	
	-- ItemConfig.CARDTYPE_*
ItemConfig.CARDTYPE_TAROT = 0				-- Tarot cards
ItemConfig.CARDTYPE_SUIT = 1				-- Standard playing cards (twos, aces and Joker, does not include Suicide King, Rules Card or Queen of Hearts)
ItemConfig.CARDTYPE_RUNE = 2				-- Runes
ItemConfig.CARDTYPE_SPECIAL	= 3		-- Special cards (anything that doesn't fall in the above categories excludes non-cards such as Dice Shard, see below)
ItemConfig.CARDTYPE_SPECIAL_OBJECT = 4	-- Special pocket items that do not qualify as "cards"
ItemConfig.CARDTYPE_TAROT_REVERSE = 5 	-- Reversed tarot cards

---@enum RenderMode
RenderMode = {
	RENDER_NULL = 0,				-- Currently not rendering room entities
	RENDER_NORMAL = 1,				-- Rendering room entities normally (in a dry room)
	RENDER_SKIP = 2,				-- 
	RENDER_WATER_ABOVE = 3,			-- Rendering room entities above the water in a flooded room
	RENDER_WATER_REFRACT = 4,		-- Rendering room entities below the water in a flooded room
	RENDER_WATER_REFLECT = 5		-- Rendering the reflection of room entities in a flooded room
}

	-- RoomDescriptor.DISPLAY_*
RoomDescriptor.DISPLAY_NONE = 0
RoomDescriptor.DISPLAY_BOX = 1
RoomDescriptor.DISPLAY_LOCK = 2
RoomDescriptor.DISPLAY_ICON = 4
RoomDescriptor.DISPLAY_ALL = 5
	
	-- RoomDescriptor.FLAG_*
RoomDescriptor.FLAG_CLEAR = 1<<0						-- Room is clear, don't spawn enemies when visiting
RoomDescriptor.FLAG_PRESSURE_PLATES_TRIGGERED = 1<<1	-- All pressure plates have been triggered in this room. This won't be set if there are no trigger pressure plates in the first place.
RoomDescriptor.FLAG_SACRIFICE_DONE = 1<<2				-- Sacrifice room has paid out
RoomDescriptor.FLAG_CHALLENGE_DONE = 1<<3				-- Challenge room finished
RoomDescriptor.FLAG_SURPRISE_MINIBOSS = 1<<4			-- Load Greed/Krampus instead of the room specified by Type, Variant
RoomDescriptor.FLAG_HAS_WATER = 1<<5					-- Pits in this room contain water
RoomDescriptor.FLAG_ALT_BOSS_MUSIC = 1<<6				-- Play alternate boss music in this room
RoomDescriptor.FLAG_NO_REWARD = 1<<7					-- Don't pay out with a reward when clearing this room, used for traps that lock the player in the room when triggered
RoomDescriptor.FLAG_FLOODED = 1<<8					-- Was flooded by an item (i.e. Flush)
RoomDescriptor.FLAG_PITCH_BLACK = 1<<9				-- Complete darkness
RoomDescriptor.FLAG_RED_ROOM = 1<<10					-- Room spawned by Red Key
RoomDescriptor.FLAG_DEVIL_TREASURE = 1<<11			-- Treasure room transformed by Devil's Crown
RoomDescriptor.FLAG_USE_ALTERNATE_BACKDROP = 1<<12	-- Use an alternate backdrop (this is used by some floors such as Dross and Ashpit)
RoomDescriptor.FLAG_CURSED_MIST = 1<<13				-- Room is covered in cursed mist, player is temporarily reduced to base items and stats
RoomDescriptor.FLAG_MAMA_MEGA = 1<<14					-- Mama Mega has activated in this room
RoomDescriptor.FLAG_NO_WALLS = 1<<15					-- Don't generate walls (for Beast arena)
RoomDescriptor.FLAG_ROTGUT_CLEARED = 1<<16			-- Rotgut's heart was killed, immediately play Rotgut's death animation when reentering this room
RoomDescriptor.FLAG_PORTAL_LINKED = 1<<17				-- A portal spawned by Lil Portal now links to this room, don't create more portals that link to it
RoomDescriptor.FLAG_BLUE_REDIRECT = 1<<18				-- If walking into this room through a door, redirect to a Blue Womb room instead (this is used by Blue Key)

---@enum SkinColor
SkinColor = {
	SKIN_PINK = -1,
	SKIN_WHITE = 0,
	SKIN_BLACK = 1,
	SKIN_BLUE = 2,
	SKIN_RED = 3,
	SKIN_GREEN = 4,
	SKIN_GREY = 5,
	SKIN_SHADOW = 6
}

-- The following enums are DEPRECATED and are only left in for AB+ backwards compatibility
-- Do not use them!

PlayerType.PLAYER_MAGDALENA = 1
PlayerType.PLAYER_XXX = 4
PlayerType.PLAYER_MAGDALENA_B = 22
PlayerType.PLAYER_XXX_B = 25

FamiliarVariant.LEPROCY = 121

EntityType.ENTITY_BOMBDROP = 4
EntityType.ENTITY_SPITY = 31

CollectibleType.COLLECTIBLE_MAXS_HEAD = 4
CollectibleType.COLLECTIBLE_BLOOD_MARTYR = 7
CollectibleType.COLLECTIBLE_ONE_UP = 11
CollectibleType.COLLECTIBLE_PILLS_HERE = 43
CollectibleType.COLLECTIBLE_059 = 59
CollectibleType.COLLECTIBLE_TAROT_CARD = 61
CollectibleType.COLLECTIBLE_BOOK_REVELATIONS = 78
CollectibleType.COLLECTIBLE_WE_NEED_GO_DEEPER = 84
CollectibleType.COLLECTIBLE_MOMS_BOTTLE_PILLS = 102
CollectibleType.COLLECTIBLE_MONEY_IS_POWER = 109
CollectibleType.COLLECTIBLE_NINE_VOLT = 116
CollectibleType.COLLECTIBLE_ODD_MUSHROOM_RATE = 120
CollectibleType.COLLECTIBLE_ODD_MUSHROOM_DAMAGE = 121
CollectibleType.COLLECTIBLE_BUCKET_LARD = 129
CollectibleType.COLLECTIBLE_SPIRIT_NIGHT = 159
CollectibleType.COLLECTIBLE_CAT_NINE_TAILS = 165
CollectibleType.COLLECTIBLE_235 = 235
CollectibleType.COLLECTIBLE_263 = 263
CollectibleType.COLLECTIBLE_BLUEBABYS_ONLY_FRIEND = 320
CollectibleType.COLLECTIBLE_MAW_OF_VOID = 399
CollectibleType.COLLECTIBLE_MEGA_SATANS_BREATH = 441
CollectibleType.COLLECTIBLE_DARK_PRINCESS_CROWN = 442
CollectibleType.COLLECTIBLE_MOLDY_BREAD = 456
CollectibleType.COLLECTIBLE_TONSIL = 474
CollectibleType.COLLECTIBLE_DINF = 489
CollectibleType.COLLECTIBLE_ADDERLINE = 493
CollectibleType.COLLECTIBLE_LEPROCY = 525
CollectibleType.COLLECTIBLE_LIL_HARBINGERS = 526
CollectibleType.COLLECTIBLE_DEATH_LIST = 530
CollectibleType.COLLECTIBLE_BROKEN_SHOVEL = 550
	
TrinketType.TRINKET_FIRECRACKER = 133
TrinketType.TRINKET_GIANT_BEAN = 134

TearFlags.TEAR_MIGAN = TearFlags.TEAR_MULLIGAN
TearFlags.TEAR_BOMBERANG = TearFlags.TEAR_BOOMERANG

SoundEffect.SOUND_PORTAL_LOOP = 502
 
ItemPoolType.POOL_GREED_TREASUREL = 16
ItemPoolType.POOL_24 = 24
ItemPoolType.POOL_CHALLENGE = 7
ItemPoolType.POOL_BOSSRUSH = 14
ItemPoolType.POOL_DUNGEON = 15
ItemPoolType.POOL_GREED_LIBRARY = 23
ItemPoolType.POOL_GREED_GOLDEN_CHEST = 24



---@class Font
local Font = {}

---@return Font
function _G.Font()
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: 0
---@param Center? boolean @default: false
function Font:DrawString(String, PositionX, PositionY, RenderColor, BoxWidth, Center)
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param ScaleX number
---@param ScaleY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: 0
---@param Center? boolean @default: false
function Font:DrawStringScaled(String, PositionX, PositionY, ScaleX, ScaleY, RenderColor, BoxWidth, Center)
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param ScaleX number
---@param ScaleY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: 0
---@param Center? boolean @default: false
function Font:DrawStringScaledUTF8(String, PositionX, PositionY, ScaleX, ScaleY, RenderColor, BoxWidth, Center)
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: 0
---@param Center? boolean @default: false
function Font:DrawStringUTF8(String, PositionX, PositionY, RenderColor, BoxWidth, Center)
end

---@return integer
function Font:GetBaselineHeight()
end

---@param Character string
---@return integer
function Font:GetCharacterWidth(Character)
end

---@return integer
function Font:GetLineHeight()
end

---@param String string
---@return integer
function Font:GetStringWidth(String)
end

---@param String string
---@return integer
function Font:GetStringWidthUTF8(String)
end

---@return boolean
function Font:IsLoaded()
end

---@param FilePath string
---@return boolean
function Font:Load(FilePath)
end

---@param MissingCharacter string
function Font:SetMissingCharacter(MissingCharacter)
end

function Font:Unload()
end



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
---@param LineCheck? boolean @default: true
---@param Source? Entity @default: nil
---@param TearFlags? TearFlags @default: TearFlags.TEAR_NORMAL
---@param DamageFlags? integer @default: DamageFlags.DAMAGE_EXPLOSION
---@param DamageSource? boolean @default: false
function Game:BombDamage(Position, Damage, Radius, LineCheck, Source, TearFlags, DamageFlags, DamageSource)
end

---@param Position Vector
---@param Damage number
---@param TearFlags? TearFlags @default: TearFlags.TEAR_NORMAL
---@param Color? Color @default: Color.Default
---@param Source? Entity @default: nil
---@param RadiusMult? number @default: 1
---@param LineCheck? boolean @default: true
---@param DamageSource? boolean @default: false
---@param DamageFlags? integer @default: DamageFlags.DAMAGE_EXPLOSION
function Game:BombExplosionEffects(Position, Damage, TearFlags, Color, Source, RadiusMult, LineCheck, DamageSource, DamageFlags)
end

---@param Position Vector
---@param Radius number
---@param TearFlags TearFlags
---@param Source? Entity @default: nil
---@param RadiusMult? number @default: 1
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
---@param Dimension? integer @default: -1
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
---@param Radius? number @default: 85
---@param Source? Entity @default: nil
---@param FartScale? number @default: 1
---@param FartSubType? integer @default: 0
---@param FartColor? Color @default: Color.Default
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

---@return userdata @ItemOverlay
function Game:GetItemOverlay()
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
function Game:MoveToRandomRoom(IAmErrorRoom, Seed)
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
---@param Backdrop? BackdropType @default: BackdropType.NUM_BACKDROPS
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
---@param Color? Color @default: Color.Default
---@param Height? number @default: 100000
---@param SubType? integer @default: 0
function Game:SpawnParticles(Pos, ParticleType, NumParticles, Speed, Color, Height, SubType)
end

---@param RoomIndex integer
---@param Direction Direction
---@param Animation? RoomTransitionAnim @default: RoomTransitionAnim.WALK
---@param Player? EntityPlayer @default: nil
---@param Dimension? integer @default: -1
function Game:StartRoomTransition(RoomIndex, Direction, Animation, Player, Dimension)
end

---@param SameStage boolean
---@param Animation integer @StageTransition::Animation
function Game:StartStageTransition(SameStage, Animation)
end

function Game:Update()
end

---@param Position Vector
---@param Force? number @default: 10
---@param Radius? number @default: 250
function Game:UpdateStrangeAttractor(Position, Force, Radius)
end



-- Others (mostly constructors) are defined in their own files

---@param object any
---@return integer
function GetPtrHash(object)
end

---@return integer
function Random()
end

---@class GridEntity
---@field CollisionClass GridCollisionClass
---@field Desc GridEntityDesc
---@field Position Vector @const
---@field State integer
---@field VarData integer
local GridEntity = {}

---@param Immediate? boolean
---@return boolean
function GridEntity:Destroy(Immediate)
end

---@return integer
function GridEntity:GetGridIndex()
end

---@return RNG
function GridEntity:GetRNG()
end

---@return GridEntityDesc
function GridEntity:GetSaveState()
end

---@return Sprite
function GridEntity:GetSprite()
end

---@return GridEntityType
function GridEntity:GetType()
end

---@return integer
function GridEntity:GetVariant()
end

---@param Damage integer
---@return boolean
function GridEntity:Hurt(Damage)
end

---@param Seed integer
function GridEntity:Init(Seed)
end

function GridEntity:PostInit()
end

---@param Offset Vector
function GridEntity:Render(Offset)
end

---@param Type GridEntityType
function GridEntity:SetType(Type)
end

---@param Variant integer
function GridEntity:SetVariant(Variant)
end

---@return GridEntityDoor
function GridEntity:ToDoor()
end

---@return GridEntityPit
function GridEntity:ToPit()
end

---@return GridEntityPoop
function GridEntity:ToPoop()
end

---@return GridEntityPressurePlate
function GridEntity:ToPressurePlate()
end

---@return GridEntityRock
function GridEntity:ToRock()
end

---@return GridEntitySpikes
function GridEntity:ToSpikes()
end

---@return GridEntityTNT
function GridEntity:ToTNT()
end

function GridEntity:Update()
end



---@class GridEntityDesc : GridEntity
---@field Initialized boolean
---@field SpawnCount integer
---@field SpawnSeed integer
---@field State integer
---@field Type GridEntityType
---@field VarData integer
---@field VariableSeed integer
---@field Variant integer
local GridEntityDesc = {}



---@class GridEntityDoor : GridEntity
---@field Busted boolean
---@field CloseAnimation string
---@field CurrentRoomType RoomType
---@field Direction Direction
---@field ExtraSprite Sprite
---@field ExtraVisible boolean
---@field LockedAnimation string
---@field OpenAnimation string
---@field OpenLockedAnimation string
---@field PreviousState integer
---@field PreviousVariant integer
---@field Slot DoorSlot
---@field TargetRoomIndex integer
---@field TargetRoomType RoomType
local GridEntityDoor = {}

function GridEntityDoor:Bar()
end

---@return boolean
function GridEntityDoor:CanBlowOpen()
end

---@param Force? boolean
function GridEntityDoor:Close(Force)
end

---@return Vector
function GridEntityDoor:GetSpriteOffset()
end

---@return boolean
function GridEntityDoor:IsBusted()
end

---@return boolean
function GridEntityDoor:IsKeyFamiliarTarget()
end

---@return boolean
function GridEntityDoor:IsLocked()
end

---@return boolean
function GridEntityDoor:IsOpen()
end

---@param Type RoomType
---@return boolean
function GridEntityDoor:IsRoomType(Type)
end

---@return boolean
function GridEntityDoor:IsTargetRoomArcade()
end

function GridEntityDoor:Open()
end

---@param Locked boolean
function GridEntityDoor:SetLocked(Locked)
end

---@param CurrentRoomType RoomType
---@param TargetRoomType RoomType
function GridEntityDoor:SetRoomTypes(CurrentRoomType, TargetRoomType)
end

function GridEntityDoor:SpawnDust()
end

---@param FromExplosion boolean
---@param source Entity
---@return boolean
function GridEntityDoor:TryBlowOpen(FromExplosion, source)
end

---@param player EntityPlayer
---@param Force? boolean
---@return boolean
function GridEntityDoor:TryUnlock(player, Force)
end



---@class GridEntityPit : GridEntity
---@field HasLadder boolean
local GridEntityPit = {}

---@param parentEntity GridEntity
function GridEntityPit:MakeBridge(parentEntity)
end

---@param Value boolean
function GridEntityPit:SetLadder(Value)
end

function GridEntityPit:UpdateCollision()
end



---@class GridEntityPoop : GridEntity
---@field ReducedSpawnRate boolean
---@field ReviveTimer integer
---@field StateAnimation string
---@field UnderPlayer boolean
local GridEntityPoop = {}

function GridEntityPoop:ReduceSpawnRate()
end

function GridEntityPoop:RespawnRedPoop()
end



---@class GridEntityPressurePlate : GridEntity
---@field GreedModeRNG RNG
---@field NextGreedAnimation string
---@field TimerPlate Sprite
local GridEntityPressurePlate = {}

function GridEntityPressurePlate:Reward()
end



---@class GridEntityRock : GridEntity
---@field Anim string
---@field FrameCnt integer
---@field RubbleAnim string
local GridEntityRock = {}

---@return integer
function GridEntityRock:GetBigRockFrame()
end

---@return string
function GridEntityRock:GetRubbleAnim()
end

---@return Sprite
function GridEntityRock:GetSprite()
end

---@param Frame integer
function GridEntityRock:SetBigRockFrame(Frame)
end

function GridEntityRock:UpdateAnimFrame()
end



---@class GridEntitySpikes : GridEntity
---@field Timeout integer
local GridEntitySpikes = {}



---@class GridEntityTNT : GridEntity
---@field FrameCnt integer
local GridEntityTNT = {}



---@class GridEntityDesc
---@field Initialized boolean
---@field SpawnCount integer
---@field SpawnSeed integer
---@field State integer
---@field Type GridEntityType
---@field VarData integer
---@field VariableSeed integer
---@field Variant integer
local GridEntityDesc = {}



---@class HUD
local HUD = {}

function HUD:AssignPlayerHUDs()
end

---@param Player EntityPlayer
---@param ActiveSlot ActiveSlot
function HUD:FlashChargeBar(Player, ActiveSlot)
end

---@param Player EntityPlayer
---@param ActiveSlot ActiveSlot
function HUD:InvalidateActiveItem(Player, ActiveSlot)
end

---@param Player EntityPlayer
function HUD:InvalidateCraftingItem(Player)
end

---@return boolean
function HUD:IsVisible()
end

---@param MainString string
---@param SecondaryString string
---@vararg string
function HUD:ShowFortuneText(MainString, SecondaryString, ...)
end

---@param MainString string
---@param SecondaryString string
---@param IsCurseDisplay? boolean @default: false
---@diagnostic disable-next-line: duplicate-set-field
function HUD:ShowItemText(MainString, SecondaryString, IsCurseDisplay)
end

---@param Player EntityPlayer
---@param Item ItemConfig_Item
---@diagnostic disable-next-line: duplicate-set-field
function HUD:ShowItemText(Player, Item)
end

---@param Visible? boolean @default: false
function HUD:SetVisible(Visible)
end



---@class Input
_G.Input = {}

---@param action integer
---@param controllerId integer
---@return number
function Input.GetActionValue(action, controllerId)
end

---@param button integer
---@param controllerId integer
---@return number
function Input.GetButtonValue(button, controllerId)
end

---@param gameCoords boolean
---@return Vector
function Input.GetMousePosition(gameCoords)
end

---@param action integer
---@param controllerId integer
---@return boolean
function Input.IsActionPressed(action, controllerId)
end

---@param action integer
---@param controllerId integer
---@return boolean
function Input.IsActionTriggered(action, controllerId)
end

---@param button integer
---@param controllerId integer
---@return boolean
function Input.IsButtonPressed(button, controllerId)
end

---@param button integer
---@param controllerId integer
---@return boolean
function Input.IsButtonTriggered(button, controllerId)
end

---@param button integer
---@return boolean
function Input.IsMouseBtnPressed(button)
end



---@class Isaac
_G.Isaac = {}

---@param modRef table
---@param callbackId function
---@param callbackFn table
---@param entityId integer
function Isaac.AddCallback(modRef, callbackId, callbackFn, entityId)
end

---@param pillEffect integer
---@return integer
function Isaac.AddPillEffectToPool(pillEffect)
end

---@param text string
function Isaac.ConsoleOutput(text)
end

---@return integer
function Isaac.CountBosses()
end

---@return integer
function Isaac.CountEnemies()
end

---@param Spawner? Entity  Optionally specify only entities spawned by this entity
---@param Type? EntityType @default: EntityType.ENTITY_NULL
---@param Variant? integer @default: -1
---@param SubType? integer @default: -1
---@return integer
function Isaac.CountEntities(Spawner, Type, Variant, SubType)
end

---@param str string
function Isaac.DebugString(str)
end

---@param command string
---@return string
function Isaac.ExecuteCommand(command)
end

---@param pos Vector
---@param source Entity
---@param damage number
function Isaac.Explode(pos, source, damage)
end

---@param Type EntityType
---@param Variant? integer @default: -1
---@param SubType? integer @default: -1
---@param Cache? boolean @default: false
---@param IgnoreFriendly? boolean @default: false
---@return Entity[]
function Isaac.FindByType(Type, Variant, SubType, Cache, IgnoreFriendly)
end

---@param Position Vector
---@param Radius number
---@param Partitions? integer @default: 0xFFFFFFFF
---@return Entity[]
function Isaac.FindInRadius(Position, Radius, Partitions)
end

---@param cardHudName string
---@return Card
function Isaac.GetCardIdByName(cardHudName)
end

---@return Challenge
function Isaac.GetChallenge()
end

---@param challengeName string
---@return Challenge
function Isaac.GetChallengeIdByName(challengeName)
end

---@param path string
---@return integer
function Isaac.GetCostumeIdByPath(path)
end

---@param curseName string
---@return LevelCurse
function Isaac.GetCurseIdByName(curseName)
end

---@param entityName string
---@return EntityType
function Isaac.GetEntityTypeByName(entityName)
end

---@param entityName string
---@return integer
function Isaac.GetEntityVariantByName(entityName)
end

---@return integer
function Isaac.GetFrameCount()
end

---@param pos Vector
---@param step number
---@return Vector
function Isaac.GetFreeNearPosition(pos, step)
end

---@return ItemConfig
function Isaac.GetItemConfig()
end

---@param itemName string
---@return CollectibleType
function Isaac.GetItemIdByName(itemName)
end

---@param musicName string
---@return Music
function Isaac.GetMusicIdByName(musicName)
end

---@param pillEffect string
---@return PillEffect
function Isaac.GetPillEffectByName(pillEffect)
end

---@param playerID? integer @default: 0
---@return EntityPlayer
function Isaac.GetPlayer(playerID)
end

---@param playerName string
---@param Tainted? boolean @default: false
---@return PlayerType
function Isaac.GetPlayerTypeByName(playerName, Tainted)
end

---@return Vector
function Isaac.GetRandomPosition()
end

---@return Entity[]
function Isaac.GetRoomEntities()
end

---@return number
function Isaac.GetScreenHeight()
end

---@return number
function Isaac.GetScreenPointScale()
end

---@return number
function Isaac.GetScreenWidth()
end

---@param soundName string
---@return SoundEffect
function Isaac.GetSoundIdByName(soundName)
end

---@param str string
---@return integer
function Isaac.GetTextWidth(str)
end

---@return integer
function Isaac.GetTime()
end

---@param trinketName string
---@return TrinketType
function Isaac.GetTrinketIdByName(trinketName)
end

---@param gridEntityType GridEntityType
---@param variant integer
---@param position Vector
---@param forced? boolean [bug] currently doesn't have any effect
---@return GridEntity
function Isaac.GridSpawn(gridEntityType, variant, position, forced)
end

---@param modRef table
---@return boolean
function Isaac.HasModData(modRef)
end

---@param modRef table
---@return string
function Isaac.LoadModData(modRef)
end

---@param modRef table
---@param modName string
---@param apiVersion integer
function Isaac.RegisterMod(modRef, modName, apiVersion)
end

---@param modRef table
---@param callbackId function
---@param callbackFn table
function Isaac.RemoveCallback(modRef, callbackId, callbackFn)
end

---@param modRef table
function Isaac.RemoveModData(modRef)
end

---@param str string
---@param X number
---@param Y number
---@param ScaleX number
---@param ScaleY number
---@param R number
---@param G number
---@param B number
---@param A number
function Isaac.RenderScaledText(str, X, Y, ScaleX, ScaleY, R, G, B, A)
end

---@param str string
---@param X number
---@param Y number
---@param R number
---@param G number
---@param B number
---@param A number
function Isaac.RenderText(str, X, Y, R, G, B, A)
end

---@param modRef table
---@param data string
function Isaac.SaveModData(modRef, data)
end

---@param pos Vector
---@return Vector
function Isaac.ScreenToWorld(pos)
end

---@param pos Vector
---@return Vector
function Isaac.ScreenToWorldDistance(pos)
end

---@param entityType integer
---@param entityVariant integer
---@param entitySubtype integer
---@param position Vector
---@param velocity Vector
---@param Spawner Entity?
---@return Entity
function Isaac.Spawn(entityType, entityVariant, entitySubtype, position, velocity, Spawner)
end

---@param pos Vector
---@return Vector
function Isaac.WorldToRenderPosition(pos)
end

---@param pos Vector
---@return Vector
function Isaac.WorldToScreen(pos)
end

---@param pos Vector
---@return Vector
function Isaac.WorldToScreenDistance(pos)
end



---@class ItemConfig
local __ItemConfig_Class = {}

_G.ItemConfig = {
    -- ItemConfig does this weird thing
    Config = {},
}

---@param ID Card
---@return ItemConfig_Card
function __ItemConfig_Class:GetCard(ID)
end

---@return CardConfigList
function __ItemConfig_Class:GetCards()
end

---@param ID integer
---@return ItemConfig_Item
function __ItemConfig_Class:GetCollectible(ID)
end

---@return userdata
function __ItemConfig_Class:GetCollectibles()
end

---@param ID integer
---@return ItemConfig_Item
function __ItemConfig_Class:GetNullItem(ID)
end

---@return ItemConfigList
function __ItemConfig_Class:GetNullItems()
end

---@param ID PillEffect
---@return ItemConfig_PillEffect
function __ItemConfig_Class:GetPillEffect(ID)
end

---@return PillConfigList
function __ItemConfig_Class:GetPillEffects()
end

---@param ID integer
---@return ItemConfig_Item
function __ItemConfig_Class:GetTrinket(ID)
end

---@return ItemConfigList
function __ItemConfig_Class:GetTrinkets()
end

---@param ID CollectibleType
---@return boolean
function ItemConfig.Config.IsValidCollectible(ID)
end

---@param Item ItemConfig
---@return boolean
function ItemConfig.Config.ShouldAddCostumeOnPickup(Item)
end



---@class ItemConfig_Card
---@field AchievementID integer
---@field Description string
---@field GreedModeAllowed boolean
---@field HudAnim string
---@field ID integer
---@field Name string
local ItemConfig_Card = {}



---@class ItemConfig_Costume
---@field Anm2Path string
---@field HasOverlay boolean
---@field HasSkinAlt boolean
---@field ID integer
---@field IsFlying boolean
---@field OverwriteColor boolean
---@field Priority integer
---@field SkinColor SkinColor
local ItemConfig_Costume = {}



---@class ItemConfig_Item
---@field AchievementID integer
---@field AddBlackHearts integer
---@field AddBombs integer
---@field AddCoins integer
---@field AddHearts integer
---@field AddKeys integer
---@field AddMaxHearts integer
---@field AddSoulHearts integer
---@field CacheFlags integer
---@field ChargeType integer
---@field ClearEffectsOnRemove boolean
---@field Costume ItemConfig_Costume @const
---@field Description string
---@field DevilPrice integer
---@field Discharged boolean
---@field GfxFileName string
---@field Hidden boolean
---@field ID integer
---@field InitCharge integer
---@field MaxCharges integer
---@field MaxCooldown integer
---@field Name string
---@field PassiveCache boolean
---@field PersistentEffect boolean
---@field Quality integer
---@field ShopPrice integer
---@field Special boolean
---@field Tags integer
---@field Type ItemType
local ItemConfig_Item = {}

---@param Tags integer
---@return boolean
function ItemConfig_Item:HasTags(Tags)
end

---@return boolean
function ItemConfig_Item:IsCollectible()
end

---@return boolean
function ItemConfig_Item:IsNull()
end

---@return boolean
function ItemConfig_Item:IsTrinket()
end



---@class ItemConfig_PillEffect
---@field AchievementID integer
---@field GreedModeAllowed boolean
---@field ID integer
---@field Name string
local ItemConfig_PillEffect = {}



---@class ItemPool
local ItemPool = {}

---@param Add integer
---@param PoolType ItemPoolType
function ItemPool:AddBibleUpgrade(Add, PoolType)
end

---@param Item CollectibleType
function ItemPool:AddRoomBlacklist(Item)
end

---@param ID PillEffect
---@return PillColor
function ItemPool:ForceAddPillEffect(ID)
end

---@param Seed integer
---@param Playing boolean
---@param Rune boolean
---@param OnlyRunes boolean
---@return Card
function ItemPool:GetCard(Seed, Playing, Rune, OnlyRunes)
end

---@param PoolType ItemPoolType
---@param Decrease? boolean @default: false
---@param Seed? integer @default: Random()
---@param DefaultItem? CollectibleType @default: CollectibleType.COLLECTIBLE_NULL
---@return CollectibleType
function ItemPool:GetCollectible(PoolType, Decrease, Seed, DefaultItem)
end

---@return ItemPoolType
function ItemPool:GetLastPool()
end

---@param Seed integer
---@return PillColor
function ItemPool:GetPill(Seed)
end

---@param PillColor PillColor
---@param Player? EntityPlayer @default: nil
---@return PillEffect
function ItemPool:GetPillEffect(PillColor, Player)
end

---@param RoomType RoomType
---@param Seed integer
---@return ItemPoolType
function ItemPool:GetPoolForRoom(RoomType, Seed)
end

---@param DontAdvanceRNG? boolean @default: false
---@return TrinketType
function ItemPool:GetTrinket(DontAdvanceRNG)
end

---@param PillColor PillColor
function ItemPool:IdentifyPill(PillColor)
end

---@param PillColor PillColor
---@return boolean
function ItemPool:IsPillIdentified(PillColor)
end

---@param Collectible CollectibleType
---@return boolean
function ItemPool:RemoveCollectible(Collectible)
end

---@param Trinket TrinketType
---@return boolean
function ItemPool:RemoveTrinket(Trinket)
end

function ItemPool:ResetRoomBlacklist()
end

function ItemPool:ResetTrinkets()
end



---@class KColor
---@field Alpha number
---@field Blue number
---@field Green number
---@field Red number
local KColor = {}

---@param red number
---@param green number
---@param blue number
---@param alpha number
---@return KColor
function _G.KColor(red, green, blue, alpha)
end



---@class Level
---@field DungeonReturnPosition Vector
---@field DungeonReturnRoomIndex integer
---@field EnterDoor integer
---@field GreedModeWave integer
---@field LeaveDoor integer
local Level = {}

---@param Chance number
function Level:AddAngelRoomChance(Chance)
end

---@param Curse LevelCurse
---@param ShowName boolean
function Level:AddCurse(Curse, ShowName)
end

function Level:ApplyBlueMapEffect()
end

---@param Persistent boolean
function Level:ApplyCompassEffect(Persistent)
end

function Level:ApplyMapEffect()
end

---@param RoomIndex integer
---@return boolean
function Level:CanOpenChallengeRoom(RoomIndex)
end

---@return boolean
function Level:CanSpawnDevilRoom()
end

---@param Stage LevelStage
---@return boolean
function Level:CanStageHaveCurseOfLabyrinth(Stage)
end

---@param RoomIndex integer
---@param Dimension? integer @default: -1
function Level:ChangeRoom(RoomIndex, Dimension)
end

function Level:DisableDevilRoom()
end

---@param Seed integer
---@return boolean
function Level:ForceHorsemanBoss(Seed)
end

---@return LevelStage
function Level:GetAbsoluteStage()
end

---@return number
function Level:GetAngelRoomChance()
end

---@return boolean
function Level:GetCanSeeEverything()
end

---@return Room
function Level:GetCurrentRoom()
end

---@return RoomDescriptor
function Level:GetCurrentRoomDesc()
end

---@return integer
function Level:GetCurrentRoomIndex()
end

---@return string
function Level:GetCurseName()
end

---@return integer
function Level:GetCurses()
end

---@return RNG
function Level:GetDevilAngelRoomRNG()
end

---@return integer
function Level:GetDungeonPlacementSeed()
end

---@return Vector
function Level:GetEnterPosition()
end

---@return boolean
function Level:GetHeartPicked()
end

---@return integer
function Level:GetLastBossRoomListIndex()
end

---@return RoomDescriptor
function Level:GetLastRoomDesc()
end

---@return string
function Level:GetName()
end

---@return integer
function Level:GetNonCompleteRoomIndex()
end

---@return number
function Level:GetPlanetariumChance()
end

---@return integer
function Level:GetPreviousRoomIndex()
end

---@param IAmErrorRoom boolean
---@param Seed integer
---@return integer
function Level:GetRandomRoomIndex(IAmErrorRoom, Seed)
end

---@param RoomIdx integer
---@param Dimension? integer @default: -1
---@return RoomDescriptor
function Level:GetRoomByIdx(RoomIdx, Dimension)
end

---@return integer
function Level:GetRoomCount()
end

---@return CppList_RoomDescriptor
function Level:GetRooms()
end

---@return LevelStage
function Level:GetStage()
end

---@return StageType
function Level:GetStageType()
end

---@return integer
function Level:GetStartingRoomIndex()
end

---@param LevelStateFlag LevelStateFlag
---@return boolean
function Level:GetStateFlag(LevelStateFlag)
end

---@return boolean
function Level:HasBossChallenge()
end

---@param ForceAngel boolean
---@param ForceDevil boolean
function Level:InitializeDevilAngelRoom(ForceAngel, ForceDevil)
end

---@return boolean
function Level:IsAltStage()
end

---@return boolean
function Level:IsAscent()
end

---@return boolean
function Level:IsDevilRoomDisabled()
end

---@return boolean
function Level:IsNextStageAvailable()
end

---@return boolean
function Level:IsPreAscent()
end

---@param CurrentRoomIdx integer
---@param Slot DoorSlot
---@return boolean
function Level:MakeRedRoomDoor(CurrentRoomIdx, Slot)
end

---@param RoomType RoomType
---@param Visited boolean
---@param rng RNG
---@param IgnoreGroup? boolean @default: false
---@return integer
function Level:QueryRoomTypeIndex(RoomType, Visited, rng, IgnoreGroup)
end

function Level:RemoveCompassEffect()
end

---@param Curses LevelCurse
function Level:RemoveCurses(Curses)
end

---@param Value boolean
function Level:SetCanSeeEverything(Value)
end

function Level:SetHeartPicked()
end

function Level:SetNextStage()
end

function Level:SetRedHeartDamage()
end

---@param Stage LevelStage
---@param StageType StageType
function Level:SetStage(Stage, StageType)
end

---@param LevelStateFlag LevelStateFlag
---@param Val boolean
function Level:SetStateFlag(LevelStateFlag, Val)
end

function Level:ShowMap()
end

---@param Sticky boolean
function Level:ShowName(Sticky)
end

---@param CurrentRoomIdx integer
---@param Slot DoorSlot
function Level:UncoverHiddenDoor(CurrentRoomIdx, Slot)
end

function Level:Update()
end

function Level:UpdateVisibility()
end



---@class MusicManager
local MusicManager = {}

---@return MusicManager
function _G.MusicManager()
end

---@param ID MusicManager
---@param FadeRate? number @default: 0.08
function MusicManager:Crossfade(ID, FadeRate)
end

function MusicManager:Disable()
end

---@param LayerId? integer @default: 0
function MusicManager:DisableLayer(LayerId)
end

function MusicManager:Enable()
end

---@param LayerId? integer @default: 0
---@param Instant? boolean @default: false
function MusicManager:EnableLayer(LayerId, Instant)
end

---@param ID MusicManager
---@param Volume? number @default: 1
---@param FadeRate? number @default: 0.08
function MusicManager:Fadein(ID, Volume, FadeRate)
end

---@param FadeRate? number @default: 0.08
function MusicManager:Fadeout(FadeRate)
end

---@return Music
function MusicManager:GetCurrentMusicID()
end

---@return Music
function MusicManager:GetQueuedMusicID()
end

---@return boolean
function MusicManager:IsEnabled()
end

---@param LayerId? integer @default: 0
---@return boolean
function MusicManager:IsLayerEnabled(LayerId)
end

function MusicManager:Pause()
end

---@param TargetPitch number
function MusicManager:PitchSlide(TargetPitch)
end

---@param ID MusicManager
---@param Volume number
function MusicManager:Play(ID, Volume)
end

---@param ID MusicManager
function MusicManager:Queue(ID)
end

function MusicManager:ResetPitch()
end

function MusicManager:Resume()
end

function MusicManager:UpdateVolume()
end

---@param TargetVolume number
---@param FadeRate? number @default: 0.08
function MusicManager:VolumeSlide(TargetVolume, FadeRate)
end



---@class Options
---@type integer
Options.AnnouncerVoiceMode = nil
---@type boolean
Options.BulletVisibility = nil
---@type integer
Options.CameraStyle = nil
---@type boolean
Options.ChargeBars = nil
---@type integer
Options.ConsoleFont = nil
---@type boolean
Options.DisplayPopups = nil
---@type boolean
Options.DebugConsoleEnabled = nil
---@type integer
Options.ExtraHUDStyle = nil
---@type boolean
Options.FadedConsoleDisplay = nil
---@type boolean
Options.Filter = nil
---@type boolean
Options.FoundHUD = nil
---@type boolean
Options.Fullscreen = nil
---@type number
Options.Gamma = nil
---@type number
Options.HUDOffset = nil
---@type string
Options.Language = nil
---@type number
Options.MapOpacity = nil
---@type integer
Options.MaxRenderScale = nil
---@type integer
Options.MaxScale = nil
---@type boolean
Options.MouseControl = nil
---@type number
Options.MusicVolume = nil
---@type boolean
Options.PauseOnFocusLost = nil
---@type boolean
Options.RumbleEnabled = nil
---@type boolean
Options.SaveCommandHistory = nil
---@type number
Options.SFXVolume = nil
---@type boolean
Options.UseBorderlessFullscreen = nil
---@type boolean
Options.VSync = nil
local Options = {}



---@class PathFinder
local PathFinder = {}

---@param TargetPos Vector
function PathFinder:EvadeTarget(TargetPos)
end

---@param Pos Vector
---@param Speed number
---@param PathMarker integer
---@param UseDirectPath boolean
function PathFinder:FindGridPath(Pos, Speed, PathMarker, UseDirectPath)
end

---@return integer
function PathFinder:GetEvadeMovementCountdown()
end

---@return integer
function PathFinder:GetGridIndex()
end

---@return boolean
function PathFinder:HasDirectPath()
end

---@param Pos Vector
---@param IgnorePoop boolean
---@return boolean
function PathFinder:HasPathToPos(Pos, IgnorePoop)
end

---@param IgnoreStatusEffects boolean
---@return boolean
function PathFinder:MoveRandomly(IgnoreStatusEffects)
end

---@param Speed number
---@param IgnoreStatusEffects boolean
function PathFinder:MoveRandomlyAxisAligned(Speed, IgnoreStatusEffects)
end

---@param IgnoreStatusEffects boolean
function PathFinder:MoveRandomlyBoss(IgnoreStatusEffects)
end

function PathFinder:Reset()
end

function PathFinder:ResetMovementTarget()
end

---@param value boolean
function PathFinder:SetCanCrushRocks(value)
end

function PathFinder:UpdateGridIndex()
end



---@class PosVel
---@field Position Vector
---@field Velocity Vector
local PosVel = {}



---@return ProjectileParams
function ProjectileParams()
end

---@class ProjectileParams
---@field Acceleration number
---@field BulletFlags integer
---@field ChangeFlags integer
---@field ChangeTimeout integer
---@field ChangeVelocity number
---@field CircleAngle number
---@field Color Color
---@field CurvingStrength number
---@field DepthOffset number
---@field DotProductLimit number
---@field FallingAccelModifier number
---@field FallingSpeedModifier number
---@field FireDirectionLimit Vector
---@field GridCollision boolean
---@field HeightModifier number
---@field HomingStrength number
---@field PositionOffset Vector
---@field Scale number
---@field Spread number
---@field TargetPosition Vector
---@field Variant integer
---@field VelocityMulti number
---@field WiggleFrameOffset integer


---@class QueuedItemData
---@field Charge integer
---@field Item ItemConfig_Item
---@field Touched boolean
local QueuedItemData = {}



---@class RNG
local RNG = {}

---@return RNG
function _G.RNG()
end

---@return integer
function RNG:GetSeed()
end

---@return integer
function RNG:Next()
end

---@return number
function RNG:RandomFloat()
end

---@param Max integer
---@return integer
function RNG:RandomInt(Max)
end

---@param Seed integer
---@param ShiftIdx integer
function RNG:SetSeed(Seed, ShiftIdx)
end



---@class Room
local Room = {}

---@class LinecheckMode : integer

---@param Pos1 Vector
---@param Pos2 Vector
---@param Mode LinecheckMode
---@param GridPathThreshold? integer @default: 0
---@param IgnoreWalls? boolean @default: false
---@param IgnoreCrushable? boolean @default: false
---@return boolean
function Room:CheckLine(Pos1, Pos2, Mode, GridPathThreshold, IgnoreWalls, IgnoreCrushable)
end

---@param Index integer
---@param Damage integer
---@return boolean
function Room:DamageGrid(Index, Damage)
end

---@param Index integer
---@param Immediate boolean
---@return boolean
function Room:DestroyGrid(Index, Immediate)
end

---@param Duration integer
---@param Count integer
function Room:EmitBloodFromWalls(Duration, Count)
end

---@param Pos Vector
---@param InitialStep? number @default: 0
---@param AvoidActiveEntities? boolean @default: false
---@param AllowPits? boolean @default: false
---@return Vector
function Room:FindFreePickupSpawnPosition(Pos, InitialStep, AvoidActiveEntities, AllowPits)
end

---@param Pos Vector
---@param DistanceThreshold number
---@return Vector
function Room:FindFreeTilePosition(Pos, DistanceThreshold)
end

---@return integer
function Room:GetAliveBossesCount()
end

---@return integer
function Room:GetAliveEnemiesCount()
end

---@return integer
function Room:GetAwardSeed()
end

---@return BackdropType
function Room:GetBackdropType()
end

---@return integer
function Room:GetBossID()
end

---@return Vector
function Room:GetBottomRightPos()
end

---@return integer
function Room:GetBrokenWatchState()
end

---@return Vector
function Room:GetCenterPos()
end

---@param Position Vector
---@return integer
function Room:GetClampedGridIndex(Position)
end

---@param Pos Vector
---@param Margin number
---@return Vector
function Room:GetClampedPosition(Pos, Margin)
end

---@return integer
function Room:GetDecorationSeed()
end

---@return integer
function Room:GetDeliriumDistance()
end

---@return number
function Room:GetDevilRoomChance()
end

---@param Slot DoorSlot
---@return GridEntityDoor
function Room:GetDoor(Slot)
end

---@param Slot DoorSlot
---@return Vector
function Room:GetDoorSlotPosition(Slot)
end

---@return integer
function Room:GetDungeonRockIdx()
end

---@return number
function Room:GetEnemyDamageInflicted()
end

---@return EntityList
function Room:GetEntities()
end

---@return integer
function Room:GetFrameCount()
end

---@param GridIndex integer
---@return GridCollisionClass
function Room:GetGridCollision(GridIndex)
end

---@param Pos Vector
---@return GridCollisionClass
function Room:GetGridCollisionAtPos(Pos)
end

---@param Index integer
---@return GridEntity
function Room:GetGridEntity(Index)
end

---@param Position Vector
---@return GridEntity
function Room:GetGridEntityFromPos(Position)
end

---@return integer
function Room:GetGridHeight()
end

---@param Position Vector
---@return integer
function Room:GetGridIndex(Position)
end

---@param Index integer
---@return integer
function Room:GetGridPath(Index)
end

---@param Position Vector
---@return integer
function Room:GetGridPathFromPos(Position)
end

---@param GridIndex integer
---@return Vector
function Room:GetGridPosition(GridIndex)
end

---@return integer
function Room:GetGridSize()
end

---@return integer
function Room:GetGridWidth()
end

---@param Pos Vector
---@param Dir Vector
---@return Vector
function Room:GetLaserTarget(Pos, Dir)
end

---@return number
function Room:GetLavaIntensity()
end

---@return number
function Room:GetLightingAlpha()
end

---@return userdata @LRoomAreaDesc
function Room:GetLRoomAreaDesc()
end

---@return userdata @LRoomTileDesc
function Room:GetLRoomTileDesc()
end

---@return integer
function Room:GetNextShockwaveId()
end

---@param Margin number
---@return Vector
function Room:GetRandomPosition(Margin)
end

---@param Seed integer
---@return integer
function Room:GetRandomTileIndex(Seed)
end

---@return boolean
function Room:GetRedHeartDamage()
end

---@return RenderMode
function Room:GetRenderMode()
end

---@return Vector
function Room:GetRenderScrollOffset()
end

---@return Vector
function Room:GetRenderSurfaceTopLeft()
end

---@return integer
function Room:GetRoomConfigStage()
end

---@return RoomShape
function Room:GetRoomShape()
end

---@return integer
function Room:GetSecondBossID()
end

---@param Seed integer
---@return CollectibleType
function Room:GetSeededCollectible(Seed)
end

---@return integer
function Room:GetShopLevel()
end

---@return integer
function Room:GetSpawnSeed()
end

---@return integer
function Room:GetTintedRockIdx()
end

---@return Vector
function Room:GetTopLeftPos()
end

---@return RoomType
function Room:GetType()
end

---@return Vector
function Room:GetWaterCurrent()
end

---@return boolean
function Room:HasCurseMist()
end

---@return boolean
function Room:HasLava()
end

---@return boolean
function Room:HasSlowDown()
end

---@return boolean
function Room:HasTriggerPressurePlates()
end

---@return boolean
function Room:HasWater()
end

---@return boolean
function Room:HasWaterPits()
end

function Room:InvalidatePickupVision()
end

---@return boolean
function Room:IsAmbushActive()
end

---@return boolean
function Room:IsAmbushDone()
end

---@return boolean
function Room:IsClear()
end

---@return boolean
function Room:IsCurrentRoomLastBoss()
end

---@param Slot DoorSlot
---@return boolean
function Room:IsDoorSlotAllowed(Slot)
end

---@return boolean
function Room:IsFirstEnemyDead()
end

---@return boolean
function Room:IsFirstVisit()
end

---@return boolean
function Room:IsInitialized()
end

---@return boolean
function Room:IsLShapedRoom()
end

---@return boolean
function Room:IsMirrorWorld()
end

---@param Pos Vector
---@param Margin number
---@return boolean
function Room:IsPositionInRoom(Pos, Margin)
end

---@return boolean
function Room:IsSacrificeDone()
end

function Room:KeepDoorsClosed()
end

---@param Position Vector
function Room:MamaMegaExplosion(Position)
end

function Room:PlayMusic()
end

---@param Slot DoorSlot
function Room:RemoveDoor(Slot)
end

---@param GridIndex integer
---@param PathTrail integer
---@param KeepDecoration boolean
function Room:RemoveGridEntity(GridIndex, PathTrail, KeepDecoration)
end

function Room:Render()
end

function Room:RespawnEnemies()
end

---@param Pos Vector
---@param Margin number
---@return Vector
function Room:ScreenWrapPosition(Pos, Margin)
end

---@param Value boolean
function Room:SetAmbushDone(Value)
end

---@param State integer
function Room:SetBrokenWatchState(State)
end

function Room:SetCardAgainstHumanity()
end

---@param Clear boolean
function Room:SetClear(Clear)
end

---@param Value boolean
function Room:SetFirstEnemyDead(Value)
end

---@param FloorColor Color
function Room:SetFloorColor(FloorColor)
end

---@param Index integer
---@param Value integer
---@return boolean
function Room:SetGridPath(Index, Value)
end

function Room:SetRedHeartDamage()
end

---@param Done boolean
function Room:SetSacrificeDone(Done)
end

---@param ShockwaveId integer
---@param Params ShockwaveParams
function Room:SetShockwaveParam(ShockwaveId, Params)
end

---@param Duration integer
function Room:SetSlowDown(Duration)
end

---@param WallColor Color
function Room:SetWallColor(WallColor)
end

---@param KeepCollectibleIdx boolean
---@param ReselectSaleItem boolean
function Room:ShopReshuffle(KeepCollectibleIdx, ReselectSaleItem)
end

function Room:ShopRestockFull()
end

function Room:ShopRestockPartial()
end

function Room:SpawnClearAward()
end

---@param GridIndex integer
---@param Type GridEntityType
---@param Variant integer
---@param Seed integer
---@param VarData integer
---@return boolean
function Room:SpawnGridEntity(GridIndex, Type, Variant, Seed, VarData)
end

function Room:StopRain()
end

---@param Silent? boolean @default: false
function Room:TriggerClear(Silent)
end

---@param pit GridEntity
---@param rock GridEntity
---@return boolean
function Room:TryMakeBridge(pit, rock)
end

---@param PlayerPos Vector
---@param PlayerVelocity Vector
---@param Ladder Entity
function Room:TryPlaceLadder(PlayerPos, PlayerVelocity, Ladder)
end

---@param FirstTime? boolean @default: true
---@param IgnoreTime? boolean @default: false
---@param Force? boolean @default: false
---@return boolean
function Room:TrySpawnBlueWombDoor(FirstTime, IgnoreTime, Force)
end

---@param IgnoreTime? boolean @default: false
---@param Force? boolean @default: false
---@return boolean
function Room:TrySpawnBossRushDoor(IgnoreTime, Force)
end

---@param Animate? boolean @default: false
---@param Force? boolean @default: false
---@return boolean
function Room:TrySpawnDevilRoomDoor(Animate, Force)
end

---@param Force? boolean @default: false
---@return boolean
function Room:TrySpawnMegaSatanRoomDoor(Force)
end

---@param Animate? boolean @default: false
---@param Force? boolean @default: false
---@return boolean
function Room:TrySpawnSecretExit(Animate, Force)
end

---@param Force? boolean @default: false
---@return boolean
function Room:TrySpawnSecretShop(Force)
end

---@return boolean
function Room:TrySpawnSpecialQuestDoor()
end

---@param Force? boolean @default: false
---@return boolean
function Room:TrySpawnTheVoidDoor(Force)
end

function Room:TurnGold()
end

function Room:Update()
end

---@param WorldPos Vector
---@return Vector
function Room:WorldToScreenPosition(WorldPos)
end



---@class RoomConfig_Entry
---@field Subtype integer
---@field Type EntityType
---@field Variant integer
---@field Weight number
local RoomConfig_Entry = {}



---@class RoomConfig_Room
---@field Difficulty Difficulty @const
---@field Doors integer @const
---@field Height integer @const
---@field InitialWeight number @const
---@field Name string @const
---@field Shape RoomShape @const
---@field SpawnCount integer @const
---@field Spawns CppList_RoomConfigSpawn @const
---@field StageID integer @const
---@field Subtype integer @const
---@field Type RoomType @const
---@field Variant integer @const
---@field Weight number @const
---@field Width integer @const
local RoomConfig_Room = {}



---@class RoomConfig_Spawn
---@field EntryCount integer
---@field SumWeights number
---@field X integer
---@field Y integer
local RoomConfig_Spawn = {}

---@param r number
---@return RoomConfig_Entry
function RoomConfig_Spawn:PickEntry(r)
end



---@class RoomDescriptor
---@field AllowedDoors userdata @DoorSet
---@field AwardSeed integer
---@field ChallengeDone boolean
---@field Clear boolean
---@field ClearCount integer
---@field Data RoomConfig_Room
---@field DecorationSeed integer
---@field DeliriumDistance integer
---@field DisplayFlags integer
---@field Flags integer
---@field GridIndex integer
---@field HasWater boolean
---@field ListIndex integer
---@field NoReward boolean
---@field OverrideData RoomConfig_Room
---@field PitsCount integer
---@field PoopCount integer
---@field PressurePlatesTriggered boolean
---@field SacrificeDone boolean
---@field SafeGridIndex integer
---@field ShopItemDiscountIdx integer
---@field ShopItemIdx integer
---@field SpawnSeed integer
---@field SurpriseMiniboss boolean
---@field VisitedCount integer
local RoomDescriptor = {}



---@class Seeds
_G.Seeds = {}

---@param Value SeedEffect
function Seeds:AddSeedEffect(Value)
end

---@param Value SeedEffect
---@return boolean
function Seeds:CanAddSeedEffect(Value)
end

function Seeds:ClearSeedEffects()
end

function Seeds:ClearStartSeed()
end

---@return integer
function Seeds:CountSeedEffects()
end

---@return integer
function Seeds.CountUnlockedSeedEffects()
end

---@param Stage LevelStage
function Seeds:ForgetStageSeed(Stage)
end

---@return integer
function Seeds:GetNextSeed()
end

---@return integer
function Seeds:GetPlayerInitSeed()
end

---@param str string
---@return SeedEffect
function Seeds.GetSeedEffect(str)
end

---@param Stage LevelStage
---@return integer
function Seeds:GetStageSeed(Stage)
end

---@return integer
function Seeds:GetStartSeed()
end

---@return string
function Seeds:GetStartSeedString()
end

---@param Value SeedEffect
---@return boolean
function Seeds:HasSeedEffect(Value)
end

function Seeds.InitSeedInfo()
end

---@return boolean
function Seeds:IsCustomRun()
end

---@return boolean
function Seeds:IsInitialized()
end

---@param Seed1 SeedEffect
---@param Seed2 SeedEffect
---@return boolean
function Seeds:IsSeedComboBanned(Seed1, Seed2)
end

---@param str string
---@return boolean
function Seeds.IsSpecialSeed(str)
end

---@param str string
---@return boolean
function Seeds.IsStringValidSeed(str)
end

---@param Value SeedEffect
function Seeds:RemoveBlockingSeedEffects(Value)
end

---@param Value SeedEffect
function Seeds:RemoveSeedEffect(Value)
end

function Seeds:Reset()
end

---@param CurrentChallenge Challenge
function Seeds:Restart(CurrentChallenge)
end

---@param seed integer
---@return string
function Seeds.Seed2String(seed)
end

---@param StartSeed string
function Seeds:SetStartSeed(StartSeed)
end

---@param str string
---@return integer
function Seeds.String2Seed(str)
end



---@class SFXManager
local SFXManager = {}

---@return SFXManager
function _G.SFXManager()
end

---@param ID SoundEffect
---@param Pitch number
function SFXManager:AdjustPitch(ID, Pitch)
end

---@param ID SoundEffect
---@param Volume number
function SFXManager:AdjustVolume(ID, Volume)
end

---@param ID SoundEffect
---@return number
function SFXManager:GetAmbientSoundVolume(ID)
end

---@param ID SoundEffect
---@return boolean
function SFXManager:IsPlaying(ID)
end

---@param ID SoundEffect
---@param Volume? number @default: 1
---@param FrameDelay? integer @default: 2
---@param Loop? boolean @default: false
---@param Pitch? number @default: 1
---@param Pan? number @default: 0
function SFXManager:Play(ID, Volume, FrameDelay, Loop, Pitch, Pan)
end

---@param ID SoundEffect
function SFXManager:Preload(ID)
end

---@param ID SoundEffect
---@param Volume number
---@param Pitch number
function SFXManager:SetAmbientSound(ID, Volume, Pitch)
end

---@param ID SoundEffect
function SFXManager:Stop(ID)
end

function SFXManager:StopLoopingSounds()
end



---@class ShockwaveParams
---@field Age integer
---@field LifeSpan integer
---@field Position Vector
---@field Strength number
---@field Time number
---@field TimeDT number
local ShockwaveParams = {}



---@class Sprite
---@field Color Color
---@field FlipX boolean
---@field FlipY boolean
---@field Offset Vector
---@field PlaybackSpeed number
---@field Scale Vector
---@field Rotation number
local Sprite = {}

---@return Sprite
function _G.Sprite()
end

---@return string
function Sprite:GetAnimation()
end

---@return string
function Sprite:GetDefaultAnimation()
end

---@return string
function Sprite:GetDefaultAnimationName()
end

---@return string
function Sprite:GetFilename()
end

---@return integer
function Sprite:GetFrame()
end

---@return integer
function Sprite:GetLayerCount()
end

---@return string
function Sprite:GetOverlayAnimation()
end

---@return integer
function Sprite:GetOverlayFrame()
end

---@param SamplePos Vector
---@param RenderPos Vector
---@param AlphaThreshold number
---@param LayerID? integer @default: 0
---@return any @KColor
function Sprite:GetTexel(SamplePos, RenderPos, AlphaThreshold, LayerID)
end

---@param EventName string
---@return boolean
function Sprite:IsEventTriggered(EventName)
end

---@param AnimationName string
---@return boolean
function Sprite:IsFinished(AnimationName)
end

---@return boolean
function Sprite:IsLoaded()
end

---@param AnimationName string
---@return boolean
function Sprite:IsOverlayFinished(AnimationName)
end

---@param AnimationName string
---@return boolean
function Sprite:IsOverlayPlaying(AnimationName)
end

---@param AnimationName string
---@return boolean
function Sprite:IsPlaying(AnimationName)
end

---@param Filename string
---@param LoadGraphics boolean
function Sprite:Load(Filename, LoadGraphics)
end

function Sprite:LoadGraphics()
end

---@param AnimationName string
---@param Force? boolean
function Sprite:Play(AnimationName, Force)
end

---@param AnimationName string
---@param Force? boolean
function Sprite:PlayOverlay(AnimationName, Force)
end

---@param Seed integer
function Sprite:PlayRandom(Seed)
end

function Sprite:Reload()
end

function Sprite:RemoveOverlay()
end

---@param Position Vector
---@param TopLeftClamp? Vector @default: Vector.Zero
---@param BottomRightClamp? Vector @default: Vector.Zero
function Sprite:Render(Position, TopLeftClamp, BottomRightClamp)
end

---@param LayerId integer
---@param Position Vector
---@param TopLeftClamp? Vector @default: Vector.Zero
---@param BottomRightClamp? Vector @default: Vector.Zero
function Sprite:RenderLayer(LayerId, Position, TopLeftClamp, BottomRightClamp)
end

---@param LayerId integer
---@param PngFilename string
function Sprite:ReplaceSpritesheet(LayerId, PngFilename)
end

function Sprite:Reset()
end

--- Passing Reset as false will continue the animation from the current frame.
--- This is a really good tool for familiars that alternate between different
--- FloatDirection animations dynamically and other entities that follow
--- similar behaviors.
---@param AnimationName string
---@param Reset? boolean @default: true
---@return boolean
function Sprite:SetAnimation(AnimationName, Reset)
end

---@param AnimationName string
---@param FrameNum integer
---@overload fun(self: Sprite, FrameNum: integer)
function Sprite:SetFrame(AnimationName, FrameNum)
end

function Sprite:SetLastFrame()
end

---@param LayerId integer
---@param FrameNum integer
function Sprite:SetLayerFrame(LayerId, FrameNum)
end

---@param AnimationName string
---@return boolean
function Sprite:SetOverlayAnimation(AnimationName)
end

---@param AnimationName string
---@param FrameNum integer
function Sprite:SetOverlayFrame(AnimationName, FrameNum)
end

---@param RenderFirst boolean
function Sprite:SetOverlayRenderPriority(RenderFirst)
end

function Sprite:Stop()
end

function Sprite:Update()
end

---@param EventName string
---@return boolean
function Sprite:WasEventTriggered(EventName)
end




---@class TearParams
---@field BombVariant integer
---@field TearColor Color
---@field TearDamage number
---@field TearFlags TearFlags
---@field TearHeight number
---@field TearScale number
---@field TearVariant integer
local TearParams = {}



---@class TemporaryEffect
---@field Cooldown integer
---@field Count integer
---@field Item ItemConfig_Item
local TemporaryEffect = {}



---@class TemporaryEffects
local TemporaryEffects = {}

---@param CollectibleType CollectibleType
---@param AddCostume? boolean @default: true
---@param Count? integer @default: 1
function TemporaryEffects:AddCollectibleEffect(CollectibleType, AddCostume, Count)
end

---@param NullId integer @ItemConfigNullItemID
---@param AddCostume? boolean @default: true
---@param Count? integer @default: 1
function TemporaryEffects:AddNullEffect(NullId, AddCostume, Count)
end

---@param TrinketType TrinketType
---@param AddCostume? boolean @default: true
---@param Count? integer @default: 1
function TemporaryEffects:AddTrinketEffect(TrinketType, AddCostume, Count)
end

function TemporaryEffects:ClearEffects()
end

---@param CollectibleType CollectibleType
---@return TemporaryEffect
function TemporaryEffects:GetCollectibleEffect(CollectibleType)
end

---@param CollectibleType CollectibleType
---@return integer
function TemporaryEffects:GetCollectibleEffectNum(CollectibleType)
end

---@return EffectList
function TemporaryEffects:GetEffectsList()
end

---@param NullId integer @ItemConfigNullItemID
---@return TemporaryEffect
function TemporaryEffects:GetNullEffect(NullId)
end

---@param NullId integer @ItemConfigNullItemID
---@return integer
function TemporaryEffects:GetNullEffectNum(NullId)
end

---@param TrinketType TrinketType
---@return TemporaryEffect
function TemporaryEffects:GetTrinketEffect(TrinketType)
end

---@param TrinketType TrinketType
---@return integer
function TemporaryEffects:GetTrinketEffectNum(TrinketType)
end

---@param CollectibleType CollectibleType
---@return boolean
function TemporaryEffects:HasCollectibleEffect(CollectibleType)
end

---@param NullId integer @ItemConfigNullItemID
---@return boolean
function TemporaryEffects:HasNullEffect(NullId)
end

---@param TrinketType TrinketType
---@return boolean
function TemporaryEffects:HasTrinketEffect(TrinketType)
end

---@param CollectibleType CollectibleType
---@param Count? integer @default: 1
function TemporaryEffects:RemoveCollectibleEffect(CollectibleType, Count)
end

---@param NullId integer @ItemConfigNullItemID
---@param Count? integer @default: 1
function TemporaryEffects:RemoveNullEffect(NullId, Count)
end

---@param TrinketType TrinketType
---@param Count? integer @default: 1
function TemporaryEffects:RemoveTrinketEffect(TrinketType, Count)
end



---@type fun(x: number, y: number): Vector
_G.Vector = {}
_G.Vector.One = Vector(1, 1)
_G.Vector.Zero = Vector(0, 0)

---@return Vector
function RandomVector()
end

---@param AngleDegrees number
---@return Vector
function _G.Vector.FromAngle(AngleDegrees)
end

---@param first Vector
---@param second Vector
---@param t number
---@return Vector
function _G.Vector.Lerp(first, second, t)
end

---@class Vector
---@field X number
---@field Y number
---@operator add(Vector): Vector
---@operator sub(Vector): Vector
---@operator unm: Vector
---@operator mul(number|Vector): Vector
---@operator div(number|Vector): Vector
local Vector = {}

---@param Right Vector
---@return Vector
function Vector:__add(Right)
end

---@param Modifier number|Vector
---@return Vector
function Vector:__div(Modifier)
end

---@param Modifier number|Vector
---@return Vector
function Vector:__mul(Modifier)
end

---@param Right Vector
---@return Vector
function Vector:__sub(Right)
end

---@return Vector
function Vector:__unm()
end

---@param MinX number
---@param MinY number
---@param MaxX number
---@param MaxY number
function Vector:Clamp(MinX, MinY, MaxX, MaxY)
end

---@param MinX number
---@param MinY number
---@param MaxX number
---@param MaxY number
---@return Vector
function Vector:Clamped(MinX, MinY, MaxX, MaxY)
end

---@param second Vector
---@return number
function Vector:Cross(second)
end

---@param second Vector
---@return number
function Vector:Distance(second)
end

---@param second Vector
---@return number
function Vector:DistanceSquared(second)
end

---@param second Vector
---@return number
function Vector:Dot(second)
end

---@return number
function Vector:GetAngleDegrees()
end

---@return number
function Vector:Length()
end

---@return number
function Vector:LengthSquared()
end

function Vector:Normalize()
end

---@return Vector
function Vector:Normalized()
end

---@param NewLength number
function Vector:Resize(NewLength)
end

---@param NewLength number
---@return Vector
function Vector:Resized(NewLength)
end

---@param AngleDegrees number
---@return Vector
function Vector:Rotated(AngleDegrees)
end

-- Add, sub etc not detectable for now

