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

--not actual method, metamethods not supported for now
---@param right Color
---@return Color
--function Color:__mul(right)
--end

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
---@field EntityGridCollisionClass EntityGridCollisionClass
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
---@field SpawnerEntity Entity
---@field SpawnerType integer @EntityType
---@field SpawnerVariant integer
---@field SpawnGridIndex integer
---@field SplatColor Color
---@field SpriteOffset Vector
---@field SpriteRotation number
---@field SpriteScale Vector
---@field SubType integer
---@field Target Entity
---@field TargetPosition Vector
---@field Type integer @EntityType
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

---@param includeDead boolean
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

---@return any @EntityBomb
function Entity:ToBomb()
end

---@return any @EntityEffect
function Entity:ToEffect()
end

---@return any @EntityFamiliar
function Entity:ToFamiliar()
end

---@return any @EntityKnife
function Entity:ToKnife()
end

---@return any @EntityLaser
function Entity:ToLaser()
end

---@return EntityNPC
function Entity:ToNPC()
end

---@return any @EntityPickup
function Entity:ToPickup()
end

---@return any @EntityPlayer
function Entity:ToPlayer()
end

---@return any @EntityProjectile
function Entity:ToProjectile()
end

---@return any @EntityTear
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
---@param Spawner Entity
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
---@param ItemStateOnly boolean
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
---@param IgnoreKeeper boolean
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

---@param Up boolean
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
---@param ReplaceTick boolean
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
---@param LeftEye boolean
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
---@param ForceSmallBomb boolean
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
---@param Slot ActiveSlot
---@param KeepInPools boolean
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
---@param KeepPersistent boolean
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
---@diagnostic disable-next-line: duplicate-set-field
function EntityPlayer:UseActiveItem(Item, UseFlags, Slot)
end

---@param Item CollectibleType
---@param ShowAnim? boolean @default: false
---@param KeepActiveItem? boolean @default: false
---@param AllowNonMainPlayer? boolean @default: true
---@param ToAddCostume? boolean @default: false
---@param Slot? ActiveSlot @default: -1
---@diagnostic disable-next-line: duplicate-set-field
function EntityPlayer:UseActiveItem(Item, ShowAnim, KeepActiveItem, AllowNonMainPlayer, ToAddCostume, Slot)
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

---@class ActionTriggers : integer
---@class ActiveSlot : integer
---@class BabySubType : integer
---@class BackdropType : integer
---@class BatterySubType : integer
---@class BedSubType : integer
---@class BombSubType : integer
---@class BombVariant : integer
---@class ButtonAction : integer
---@class CacheFlag : integer
---@class Card : integer
---@class Challenge : integer
---@class ChampionColor : integer
---@class ChestSubType : integer
---@class CoinSubType : integer
---@class CollectibleType : integer
---@class DamageFlag : integer
---@class Difficulty : integer
---@class Direction : integer
---@class DoorSlot : integer
---@class DoorState : integer
---@class DoorVariant : integer
---@class EffectVariant : integer
---@class EntityCollisionClass : integer
---@class EntityFlag : integer
---@class EntityGridCollisionClass : integer
---@class EntityPartition : integer
---@class EntityType : integer
---@class FamiliarVariant : integer
---@class GameStateFlag : integer
---@class GridCollisionClass : integer
---@class GridEntityType : integer
---@class GridRooms : integer
---@class HeartSubType : integer
---@class InputHook : integer
---@class ItemConfig : integer
---@class ItemPoolType : integer
---@class ItemType : integer
---@class Keyboard : integer
---@class KeySubType : integer
---@class LaserOffset : integer
---@class LaserSubType : integer
---@class LevelCurse : integer
---@class LevelStage : integer
---@class LevelStateFlag : integer
---@class LocustSubtypes : integer
---@class ModCallbacks : integer
---@class Mouse : integer
---@class Music : integer
---@class NpcState : integer
---@class NullItemID : integer
---@class PickupPrice : integer
---@class PickupVariant : integer
---@class PillColor : integer
---@class PillEffect : integer
---@class PlayerForm : integer
---@class PlayerSpriteLayer : integer
---@class PlayerType : integer
---@class PoopPickupSubType : integer
---@class PoopSpellType : integer
---@class ProjectileFlags : integer
---@class ProjectileVariant : integer
---@class RenderMode : integer
---@class RoomDescriptor : integer
---@class RoomShape : integer
---@class RoomTransitionAnim : integer
---@class RoomType : integer
---@class SackSubType : integer
---@class SeedEffect : integer
---@class SkinColor : integer
---@class SortingLayer : integer
---@class SoundEffect : integer
---@class StageType : integer
---@class TearFlags : BitSet128
---@class TearVariant : integer
---@class TrinketType : integer
---@class UseFlag : integer
---@class WeaponType : integer


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

---@return integer
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
---@param Spawner Entity
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

---@param object userdata
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

---@param Immediate boolean
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
---@param Force boolean
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

---@param Spawner Entity
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
---@return table
function Isaac.FindByType(Type, Variant, SubType, Cache, IgnoreFriendly)
end

---@param Position Vector
---@param Radius number
---@param Partitions? integer @default: 0xFFFFFFFF
---@return table
function Isaac.FindInRadius(Position, Radius, Partitions)
end

---@param cardHudName string
---@return integer
function Isaac.GetCardIdByName(cardHudName)
end

---@return integer
function Isaac.GetChallenge()
end

---@param challengeName string
---@return integer
function Isaac.GetChallengeIdByName(challengeName)
end

---@param path string
---@return integer
function Isaac.GetCostumeIdByPath(path)
end

---@param curseName string
---@return integer
function Isaac.GetCurseIdByName(curseName)
end

---@param entityName string
---@return integer
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
---@return integer
function Isaac.GetItemIdByName(itemName)
end

---@param musicName string
---@return integer
function Isaac.GetMusicIdByName(musicName)
end

---@param pillEffect string
---@return integer
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

---@return table
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
---@return integer
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
---@return integer
function Isaac.GetTrinketIdByName(trinketName)
end

---@param gridEntityType GridEntityType
---@param variant integer
---@param position Vector
---@param forced boolean
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
---@param Spawner Entity
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
_G.ItemConfig = {}

---@param ID Card
---@return ItemConfig_Card
function ItemConfig:GetCard(ID)
end

---@return CardConfigList
function ItemConfig:GetCards()
end

---@param ID integer
---@return ItemConfig_Item
function ItemConfig:GetCollectible(ID)
end

---@return userdata
function ItemConfig:GetCollectibles()
end

---@param ID integer
---@return ItemConfig_Item
function ItemConfig:GetNullItem(ID)
end

---@return ItemConfigList
function ItemConfig:GetNullItems()
end

---@param ID PillEffect
---@return ItemConfig_PillEffect
function ItemConfig:GetPillEffect(ID)
end

---@return PillConfigList
function ItemConfig:GetPillEffects()
end

---@param ID integer
---@return ItemConfig_Item
function ItemConfig:GetTrinket(ID)
end

---@return ItemConfigList
function ItemConfig:GetTrinkets()
end

---@param ID CollectibleType
---@return boolean
function ItemConfig.IsValidCollectible(ID)
end

---@param Item ItemConfig
---@return boolean
function ItemConfig.ShouldAddCostumeOnPickup(Item)
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
---@param TopLeftClamp Vector
---@param BottomRightClamp Vector
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

---@param AnimationName string
---@param Reset? boolean @default: true
---@return boolean
function Sprite:SetAnimation(AnimationName, Reset)
end

--- Passing Reset as false will continue the animation from the current frame.
--- This is a really good tool for familiars that alternate between different
--- FloatDirection animations dynamically and other entities that follow
--- similar behaviors.
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
local Vector = {}

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

