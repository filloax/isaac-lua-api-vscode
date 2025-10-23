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
---@param Target Entity?
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

---@param ID Card
function EntityPlayer:AddCard(ID)
end

---@param Amount integer
function EntityPlayer:AddCoins(Amount)
end

---@param Type CollectibleType
---@param Charge? integer @default: `0`
---@param FirstTimePickingUp? boolean @default: `true`
---@param Slot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
---@param VarData? integer @default: `0`
function EntityPlayer:AddCollectible(Type, Charge, FirstTimePickingUp, Slot, VarData)
end

---@param Cooldown integer
function EntityPlayer:AddControlsCooldown(Cooldown)
end

---@param Item ItemConfigItem
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
---@param AdjustOrbitLayer? boolean @default: `false`
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
---@param PlayAnim? boolean @default: `true`
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
---@param FirstTimePickingUp? boolean @default: `true`
function EntityPlayer:AddTrinket(Type, FirstTimePickingUp)
end

---@param Collectible CollectibleType
---@param Position Vector
---@param AdjustOrbitLayer? boolean @default: `false`
---@param DontUpdate? boolean @default: `false`
---@return EntityFamiliar
function EntityPlayer:AddWisp(Collectible, Position, AdjustOrbitLayer, DontUpdate)
end

function EntityPlayer:AnimateAppear()
end

---@param ID Card
---@param AnimName? string @default: `"Pickup"`
function EntityPlayer:AnimateCard(ID, AnimName)
end

---@param Collectible CollectibleType
---@param AnimName? string @default: `"Pickup"`
---@param SpriteAnimName? string @default: `"PlayerPickupSparkle"`
function EntityPlayer:AnimateCollectible(Collectible, AnimName, SpriteAnimName)
end

function EntityPlayer:AnimateHappy()
end

function EntityPlayer:AnimateLightTravel()
end

---@param sprite Sprite
---@param HideShadow? boolean @default: `false`
---@param AnimName? string @default: `"Pickup"`
function EntityPlayer:AnimatePickup(sprite, HideShadow, AnimName)
end

---@param Pill PillColor
---@param AnimName? string @default: `"Pickup"`
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
---@param AnimName? string @default: `"Pickup"`
---@param SpriteAnimName? string @default: `"PlayerPickupSparkle"`
function EntityPlayer:AnimateTrinket(Trinket, AnimName, SpriteAnimName)
end

---@return boolean
function EntityPlayer:AreControlsEnabled()
end

---@return boolean
function EntityPlayer:AreOpposingShootDirectionsPressed()
end

---@param Type? CollectibleType @default: `CollectibleType.COLLECTIBLE_NULL`
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
---@param SourceItemConfigItem? ItemConfigItem @default: `nil`
---@param FamiliarSubType? integer @default: `-1`
function EntityPlayer:CheckFamiliar(FamiliarVariant, TargetCount, rng, SourceItemConfigItem, FamiliarSubType)
end

function EntityPlayer:ClearCostumes()
end

function EntityPlayer:ClearTemporaryEffects()
end

---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
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
---@param Source? Entity @default: `nil`
---@return EntityBomb
function EntityPlayer:FireBomb(Position, Velocity, Source)
end

---@param Direction Vector
---@param Source? Entity @default: `nil`
---@param DamageMultiplier? number @default: `1`
---@return EntityLaser
function EntityPlayer:FireBrimstone(Direction, Source, DamageMultiplier)
end

---@param Angle number
---@param Parent Entity
---@return EntityLaser
function EntityPlayer:FireDelayedBrimstone(Angle, Parent)
end

---@param Parent Entity
---@param RotationOffset? number @default: `0`
---@param CantOverwrite? boolean @default: `false`
---@param SubType? integer @default: `0`
---@param Variant? integer @default: `0`
---@return EntityKnife
function EntityPlayer:FireKnife(Parent, RotationOffset, CantOverwrite, SubType, Variant)
end

---@param Position Vector
---@param Velocity Vector
---@param CanBeEye? boolean @default: `true`
---@param NoTractorBeam? boolean @default: `false`
---@param CanTriggerStreakEnd? boolean @default: `true`
---@param Source? Entity @default: `nil`
---@param DamageMultiplier? number @default: `1`
---@return EntityTear
function EntityPlayer:FireTear(Position, Velocity, CanBeEye, NoTractorBeam, CanTriggerStreakEnd, Source, DamageMultiplier)
end

---@param Position Vector
---@param OffsetID LaserOffset
---@param Direction Vector
---@param LeftEye? boolean
---@param OneHit? boolean @default: `false`
---@param Source? Entity @default: `nil`
---@param DamageMultiplier? number @default: `1`
---@return EntityLaser
function EntityPlayer:FireTechLaser(Position, OffsetID, Direction, LeftEye, OneHit, Source, DamageMultiplier)
end

---@param Position Vector
---@param Direction Vector
---@param Radius number
---@param Source? Entity @default: `nil`
---@param DamageMultiplier? number @default: `1`
---@return EntityLaser
function EntityPlayer:FireTechXLaser(Position, Direction, Radius, Source, DamageMultiplier)
end

---@return boolean
function EntityPlayer:FlushQueueItem()
end

---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
---@param Force? boolean @default: `false`
---@return boolean
function EntityPlayer:FullCharge(ActiveSlot, Force)
end

---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
---@return integer
function EntityPlayer:GetActiveCharge(ActiveSlot)
end

---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
---@return CollectibleType
function EntityPlayer:GetActiveItem(ActiveSlot)
end

---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
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

---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
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
---@param DamageScale? number @default: `1`
---@param TearDisplacement? integer @default: `1`
---@param Source? Entity @default: `nil`
---@return TearParams
function EntityPlayer:GetTearHitParams(WeaponType, DamageScale, TearDisplacement, Source)
end

---@param ShotDirection Vector
---@return Vector
function EntityPlayer:GetTearMovementInheritance(ShotDirection)
end

---The damage number for Poison and Burn status effects, or under certain synergies with Ipecac.
---
---Used by Ipecac to have a +2 flat damage instead of its +40 flat damage.
---@return number
function EntityPlayer:GetTearPoisonDamage()
end

---For Experimental Treatement, returns `-1`, `0` or `1` depending on the range rolled.
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

---@param Flags? DamageFlag @default: `0`
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
---@param IgnoreModifiers? boolean @default: `false`
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

---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
---@return boolean
function EntityPlayer:NeedsCharge(ActiveSlot)
end

---@param Animation string
function EntityPlayer:PlayExtraAnimation(Animation)
end

---@param Animation string
function EntityPlayer:QueueExtraAnimation(Animation)
end

---@param Item ItemConfigItem
---@param Charge? integer @default: `0`
---@param Touched? boolean @default: `false`
---@param Golden? boolean @default: `false`
---@param VarData? integer @default: `0`
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
---@param IgnoreModifiers? boolean @default: `false`
---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
---@param RemoveFromPlayerForm? boolean @default: `true`
function EntityPlayer:RemoveCollectible(Type, IgnoreModifiers, ActiveSlot, RemoveFromPlayerForm)
end

---@param Item ItemConfigItem
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

---@param Item ItemConfigItem
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
---@param ActiveSlot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
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
---@param Target? Vector @default: `Vector.Zero`
---@return EntityFamiliar
function EntityPlayer:ThrowFriendlyDip(Subtype, Position, Target)
end

---@param Velocity Vector
---@return Entity
function EntityPlayer:ThrowHeldEntity(Velocity)
end

---@param Type? CollectibleType @default: `CollectibleType.COLLECTIBLE_NULL`
---@param Charge? integer @default: `0`
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

---@param ID Card
---@param UseFlags? UseFlag @default: `0`
function EntityPlayer:UseCard(ID, UseFlags)
end

---@param ID PillEffect
---@param PillColor PillColor
---@param UseFlags? UseFlag @default: `0`
function EntityPlayer:UsePill(ID, PillColor, UseFlags)
end

---@return boolean
function EntityPlayer:WillPlayerRevive()
end

---@param type PoopSpellType
function EntityPlayer:UsePoopSpell(type)
end
