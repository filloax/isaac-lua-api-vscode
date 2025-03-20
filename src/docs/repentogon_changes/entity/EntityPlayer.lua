---@param charge integer
---@param slot ActiveSlot
---@param flashHUD boolean Currently appears to be redundant. Chargebar flashes regardless of using true or false
---@param overcharge boolean
---@param force boolean
---@return integer chargesAdded The true amount of charges added, which may have been capped by the targeted item's max charges.
function EntityPlayer:AddActiveCharge(charge, slot, flashHUD, overcharge, force)
end

---@param position Vector
function EntityPlayer:AddBoneOrbital(position)
end

---@param CacheFlag CacheFlag | integer
---@param EvaluateItems? boolean @default: `false`
function EntityPlayer:AddCacheFlags(CacheFlag, EvaluateItems)
end

---@param collectible CollectibleType
---@param amount? integer @default: `1`
function EntityPlayer:AddInnateCollectible(collectible, amount)
end

---This is currently capped at a max of three familiars.
function EntityPlayer:AddLeprocy()
end

---@param collectibleType CollectibleType
---@param position Vector
function EntityPlayer:AddLocust(collectibleType, position)
end

---Adds a smelted trinket directly to the player's inventory.
---@param trinketType TrinketType
---@param firstTimePickingUp? boolean @default: `true`
---@return boolean wasAdded `true` if the trinket was added successfully, `false` otherwise.
function EntityPlayer:AddSmeltedTrinket(trinketType, firstTimePickingUp)
end

---@param count? integer @default: `1`
function EntityPlayer:AddUrnSouls(count)
end

---In the works, isn't exposed yet
--[[ ---@param minecart EntityNPC
function EntityPlayer:AttachMinecart(minecart)
end ]]

---@param collectibleType CollectibleType
---@return boolean
function EntityPlayer:CanAddCollectibleToInventory(collectibleType)
end

---@return boolean
function EntityPlayer:CanCrushRocks()
end

---@param collectibleType CollectibleType
---@return boolean
function EntityPlayer:CanOverrideActiveItem(collectibleType)
end

--- By some conditions, usually health-related, determines whether a player can use the given pill effect.
---@param pillEffect PillEffect
function EntityPlayer:CanUsePill(pillEffect)
end

---Same as `CheckFamiliar`, but returns a table containing the list of
---spawned projectiles.
---@param FamiliarVariant integer
---@param TargetCount integer
---@param rng RNG
---@param SourceItemConfigItem? ItemConfigItem @default: `nil`
---@param FamiliarSubType? integer @default: `-1`
---@return EntityFamiliar[]
function EntityPlayer:CheckFamiliarEx(FamiliarVariant, TargetCount, rng, SourceItemConfigItem, FamiliarSubType)
end

---@param collectible CollectibleType
function EntityPlayer:ClearCollectibleAnim(collectible)
end

---@param Force? boolean @default: `false`. If set to `true`, the charge is reset instead of only rolling for a chance to reset.
function EntityPlayer:ClearDeadEyeCharge(Force)
end

---@param collectible CollectibleType
function EntityPlayer:ClearItemAnimCollectible(collectible)
end

function EntityPlayer:ClearItemAnimNullItems()
end

---@param collectible CollectibleType
---@param existingPedestal? EntityPickup @default: `nil`. If defined, the collectible will be swapped out for the dropped collectible instead of a new pedestal spawning.
---@param removeFromPlayerForm? boolean @default: `false`
function EntityPlayer:DropCollectible(collectible, existingPedestal, removeFromPlayerForm)
end

---@param index integer
---@param pickup? EntityPickup @default: `nil`
---@return EntityPickup
function EntityPlayer:DropCollectibleByHistoryIndex(index, pickup)
end

---@param weaponType WeaponType
---@param set boolean
function EntityPlayer:EnableWeaponType(weaponType, set)
end

---@param position Vector
---@param Velocity Vector
---@param Offset? Vector @default: `Vector.Zero`
---@return EntityEffect
function EntityPlayer:FireBrimstoneBall(position, Velocity, Offset)
end

---@param slot? ActiveSlot @default: `ActiveSlot.SLOT_PRIMARY`
---@return ActiveItemDesc
function EntityPlayer:GetActiveItemDesc(slot)
end

---@param collectible CollectibleType
---@return ActiveSlot
function EntityPlayer:GetActiveItemSlot(collectible)
end

---@param slot ActiveSlot
---@return integer
function EntityPlayer:GetActiveMaxCharge(slot)
end

---@param slot ActiveSlot
---@return integer
function EntityPlayer:GetActiveMinUsableCharge(slot)
end

---@return integer
function EntityPlayer:GetActiveWeaponNumFired()
end

---@return BagOfCraftingPickup[]
function EntityPlayer:GetBagOfCraftingContent()
end

---@return CollectibleType
function EntityPlayer:GetBagOfCraftingOutput()
end

---Returns the current content of the bag in the given Slot ID.
---@param slotId integer
---@return BagOfCraftingPickup
function EntityPlayer:GetBagOfCraftingSlot(slotId)
end

---Returns the current charge for when the player stops shooting
---and charges the Kidney Stone item.
---@return integer
function EntityPlayer:GetBladderCharge()
end

---@return Vector
function EntityPlayer:GetBodyMoveDirection()
end

---Returns how many times the player has taken damage with the
---Cambion Conception item.
---@return integer
function EntityPlayer:GetCambionConceptionState()
end

---Corresponds to the current visible state of Cambion Conception's costume (0-2).
---@return integer
function EntityPlayer:GetCambionPregnancyLevel()
end

---Returns a table with the amount of each collectible the player
---has without counting innate items.
---@return table<CollectibleType, integer>
function EntityPlayer:GetCollectiblesList()
end

---@class CostumeLayerMap
---@field costumeIndex integer
---@field layerID integer
---@field priority integer
---@field isBodyLayer boolean

---@return CostumeLayerMap[]
function EntityPlayer:GetCostumeLayerMap()
end

---@return CostumeSpriteDesc[]
function EntityPlayer:GetCostumeSpriteDescs()
end

---@return integer
function EntityPlayer:GetD8DamageModifier()
end

---@return integer
function EntityPlayer:GetD8FireDelayModifier()
end

---@return integer
function EntityPlayer:GetD8RangeModifier()
end

---@return integer
function EntityPlayer:GetD8SpeedModifier()
end

---@return integer
function EntityPlayer:GetDamageModifier()
end

---@return integer
function EntityPlayer:GetDeadEyeCharge()
end

---Returns the name of the player's death animation.
---@return string
---|"Death" # The regular death animation name
---|"LostDeath" # When playing as the Lost, under the Lost Curse, or in Tainted Jacob's Ghost form
function EntityPlayer:GetDeathAnimName()
end

---Returns the offset of the player's damage stat for Eden's random stats.
---@return number
function EntityPlayer:GetEdenDamage()
end

---Returns the offset of the player's fire delay stat for Eden's random stats.
---@return number
function EntityPlayer:GetEdenFireDelay()
end

---Returns the offset of the player's luck stat for Eden's random stats.
---@return number
function EntityPlayer:GetEdenLuck()
end

---Returns the offset of the player's range stat for Eden's random stats.
---@return number
function EntityPlayer:GetEdenRange()
end

---Returns the offset of the player's shot speed stat for Eden's random stats.
---@return number
function EntityPlayer:GetEdenShotSpeed()
end

---Returns the offset of the player's speed stat for Eden's random stats.
---@return number
function EntityPlayer:GetEdenSpeed()
end

---@return Vector
function EntityPlayer:GetEnterPosition()
end

---@return EntityConfigPlayer
function EntityPlayer:GetEntityConfigPlayer()
end

---@return integer
function EntityPlayer:GetEpiphoraCharge()
end

---Returns the current charge of Tainted Eve's innate Sumptorium ability
---@return integer
function EntityPlayer:GetEveSumptoriumCharge()
end

---For Experimental Treatement, returns `-1`, `0` or `1` depending on the fire delay rolled.
---@return integer
function EntityPlayer:GetFireDelayModifier()
end

---Returns flipped form of the current character (only used for Tainted Lazarus), otherwise `nil`.
---@return EntityPlayer?
function EntityPlayer:GetFlippedForm()
end

---Returns the entity used by Active Camera to determine where the camera should focus. This can be either the Marked target EntityEffect or a weapon's entity. If none of these exist, this returns `nil`.
---@return Entity?
function EntityPlayer:GetFocusEntity()
end

---@param isLeftFootprint boolean If true, the left footprint color is returned. Otherwise, the right footprint color is returned.
---@return KColor
function EntityPlayer:GetFootprintColor(isLeftFootprint)
end

---@return integer
function EntityPlayer:GetGlitchBabySubType()
end

---Returns a table containing the variant and subtype for the pickup that can spawn from the Glyph of Balance.
---@param variant PickupVariant? @default: `-1`. TODO: Find out what this does.
---@param subtype? integer @default: `-1`. TODO: Find out what this does.
---@return integer[] pickups
function EntityPlayer:GetGlyphOfBalanceDrop(variant, subtype)
end

---@return integer
function EntityPlayer:GetGreedsGulletHearts()
end

---@return HealthType
function EntityPlayer:GetHealthType()
end

---Returns the Entity that the player is holding over the head, such as throwable red bombs or enemies grabbed with the Suplex! collectible.
---@return Entity?
function EntityPlayer:GetHeldEntity()
end

---Returns the Sprite object that is used when the player is holding a collectible sprite over their head, such as active item usage.
---@return Sprite
function EntityPlayer:GetHeldSprite()
end

---@return History
function EntityPlayer:GetHistory()
end

---Returns how many hearts have been collected with the Immaculate Conception item. Resets to 0 after spawning a familiar/soul heart.
---@return integer
function EntityPlayer:GetImmaculateConceptionState()
end

---Returns the coins spent while the player is holding the Keeper's Sack collectible.
---@return integer
function EntityPlayer:GetKeepersSackBonus()
end

---Returns the color of the player's laser.
---@return Color
function EntityPlayer:GetLaserColor()
end

---For Experimental Treatement, returns `-1`, `0` or `1` depending on the luck rolled.
---@return integer
function EntityPlayer:GetLuckModifier()
end

---Returns the amount of frames left until Tainted Magdalene's swing attack from being damaged can be used again. Returns `0` if the player is not Tainted Magdalene.
---@return integer
function EntityPlayer:GetMaggySwingCooldown()
end

---Returns the target cross effect of the Marked collectible. If the effect is not being displayed, this function returns `nil`.
---@return EntityEffect?
function EntityPlayer:GetMarkedTarget()
end

---Returns the maximum charge for when the player stops shooting and charges the Kidney Stone item.
---@return integer
function EntityPlayer:GetMaxBladderCharge()
end

---Returns the maximum attack duration of the Kidney Stone item.
---@return integer
function EntityPlayer:GetMaxPeeBurstCooldown()
end

---Returns the amount of frames left until the laser from the Mega Blast collectible deactivates.
---@return integer
function EntityPlayer:GetMegaBlastDuration()
end

---Returns the CollectibleType corresponding to the collectible given to the player by the Metronome collectible. Returns `CollectibleType.COLLECTIBLE_NULL` if Metronome hasn't been used in the room.
---@return CollectibleType
function EntityPlayer:GetMetronomeCollectibleID()
end

---@param WeaponType? WeaponType @default: `WeaponType.WEAPON_TEARS`
---@return MultiShotParams
function EntityPlayer:GetMultiShotParams(WeaponType)
end

---Returns the frame at which the player stops shooting and starts charging the Kidney Stone item.
---@return MultiShotParams
---@return integer
function EntityPlayer:GetNextUrethraBlockFrame()
end

---Returns the attack duration of the Kidney Stone item.
---@return integer
function EntityPlayer:GetPeeBurstCooldown()
end

---Returns the amount of collectibles the player has tied to the specified transformation.
---@param playerForm PlayerForm
---@return integer
function EntityPlayer:GetPlayerFormCounter(playerForm)
end

---Gets the card/pill/rune in the specified pocket slot.
---@param SlotId PillCardSlot
---@return PocketItem
function EntityPlayer:GetPocketItem(SlotId)
end

---Returns the amount of frames left until the charging effect from the A Pony or White Pony item deactivates.
---@return integer
function EntityPlayer:GetPonyCharge()
end

---Returns the current state of the Purity collectible. Returns `PurityState.BLUE` if the player does not have the Purity collectible.
---@return PurityState
function EntityPlayer:GetPurityState()
end

---Returns the frames left until the damage bonus from Red Stew expires.
---@return integer
function EntityPlayer:GetRedStewBonusDuration()
end

---For Experimental Treatement, returns `-1`, `0` or `1` depending on the shot speed rolled.
---@return integer
function EntityPlayer:GetShotSpeedModifier()
end

---@class SmeltedTrinket
---@field trinketAmount integer
---@field goldenTrinketAmount integer

---Returns a table containing all of the trinkets the player has smelted and their corresponding amounts.
---@return SmeltedTrinket[]
function EntityPlayer:GetSmeltedTrinkets()
end

---TODO: Document me!
---@param position Vector @default: `self.Position`
---@return integer
function EntityPlayer:GetSpecialGridCollision(position)
end

---For Experimental Treatement, returns `-1`, `0` or `1` depending on the speed rolled.
---@return integer
function EntityPlayer:GetSpeedModifier()
end

---Returns the amount of charges the active item in the provided slot has.
---@param slot ActiveSlot The slot to get the active item's charges from. Returns `0` if the slot does not have an active item.
---@return integer
function EntityPlayer:GetTotalActiveCharge(slot)
end

---Returns a table of all of the collectibles the player has consumed with the Void collectible.
---@return CollectibleType[]
function EntityPlayer:GetVoidedCollectiblesList()
end

---Returns the Weapon object in the corresponding slot, or `nil` if no Weapon can be found.
---
---Blindfolded players still have a Weapon in slot 1.
---
---Always check for `nil`, even for slot 1, as it can be deleted by mods via `Isaac.DestroyWeapon`
---@param weaponSlot integer
---|0 # Backup Weapon such as Notched Axe and Urn of Souls.
---|1 # Primary Weapon.
---|2 # Additional Weapon. Few instances of this exist in the vanilla game but can also be populated by mods.
---|3 # Additional Weapon.
---|4 # Additional Weapon.
---@return Weapon?
function EntityPlayer:GetWeapon(weaponSlot)
end

---Returns a bitmask of weapon modifiers.
---@return WeaponModifier
function EntityPlayer:GetWeaponModifiers()
end

---Returns the item that was last used by the player and would be activated again upon using Wild Card.
---
---If the player used an active item, its `CollectibleType` is returned. If the player used a consumable, its variant is returned. If the player used ? Mark Card, returns `1`. If no active item had ever been used by the player before, turns `0`.
---@return integer
function EntityPlayer:GetWildCardItem()
end

---Returns the type of item that was last used by the player and would be activated again upon using Wild Card.
---
---If the player used a consumable (including ? Mark Card), returns `ItemType.ITEM_PASSIVE`. If no active item had been used by the player before, returns `255`.
---@return PocketItemType
function EntityPlayer:GetWildCardItemType()
end

---Returns a table of CollectibleTypes corresponding to the item wisps the player has.
---@return table
function EntityPlayer:GetWispCollectiblesList()
end

---Returns true when the player is in the Lost form triggered by the white fire in Downpour or when in Tainted Jacob's ghost form when being touched by Dark Esau.
---@return boolean
function EntityPlayer:HasInstantDeathCurse()
end

---@return boolean
function EntityPlayer:HasPoisonImmunity()
end

---Increases or decreases the counter towards one of the player's transformations.
---@param form PlayerForm
---@param num integer
function EntityPlayer:IncrementPlayerFormCounter(form, num)
end

---Call this after spawning characters with "special" tears (Forgotten, Lilith, Azazel etc) with InitTwin, or they won't have their proper tear type.
function EntityPlayer:InitPostLevelInitStats()
end

---Initializes a new player that is controlled by the player's same controller.
---
---**BUG:** The twin player will desync from its main twin on save and continue. This softlocks the game in singleplayer, as the game prompts for a controller. This is a result of hardcoded behavior.
---@param playerType PlayerType
---@return EntityPlayer
function EntityPlayer:InitTwin(playerType)
end

---Returns true if the animation associated with the collectible is visible.
---@param collectibleType CollectibleType
---@param animationName string
---@return boolean
function EntityPlayer:IsCollectibleAnimFinished(collectibleType, animationName)
end

---Returns true if the costume associated with the collectible is visible.
---@param collectibleType CollectibleType
---@param playerSpriteLayer integer
---@return boolean
function EntityPlayer:IsCollectibleCostumeVisible(collectibleType, playerSpriteLayer)
end

---TODO: Document me!
---@param entity Entity
---@return boolean
function EntityPlayer:IsEntityValidTarget(entity)
end

---TODO: Document me!
---@param foot? integer @default: `-1`.
---|-1 # Returns true every 12 frames
---|0 # Returns true every 24 frames
---|1 # Always false
---@return boolean
function EntityPlayer:IsFootstepFrame(foot)
end

---Returns `true` is the player is headless due to collectibles such as Guillotine, The Intruder, Scissors, and Decap Attack.
---@return boolean
function EntityPlayer:IsHeadless()
end

---Returns `true` if the player is the non-active form of Tainted Lazarus with Birthright
---@return boolean
function EntityPlayer:IsHologram()
end

---TODO: Document me!
---@return boolean
function EntityPlayer:IsInvisible()
end

---@param item ItemConfigItem
---@param layerID PlayerSpriteLayer
---@return boolean
---@overload fun(self: EntityPlayer, item: ItemConfigItem, layerName: string)
function EntityPlayer:IsItemCostumeVisible(item, layerID)
end

---For online play. Returns `true` if you're a local player, `false` otherwise.
---@return boolean
function EntityPlayer:IsLocalPlayer()
end

---@param nullItem NullItemID
---@param layerID PlayerSpriteLayer
---@overload fun(self: EntityPlayer, nullItem: NullItemID, layerName: string)
function EntityPlayer:IsNullItemCostumeVisible(nullItem, layerID)
end

---TODO: Document me!
---@return boolean
function EntityPlayer:IsPacifist()
end

---Returns true if the player can no longer shoot due to charging the Kidney Stone item.
---@return boolean
function EntityPlayer:IsUrethraBlocked()
end

---Turns the player into a co-op ghost.
function EntityPlayer:MorphToCoopGhost()
end

---Plays an animation tied to the provided collectible.
---@param collectible CollectibleType
---@param checkBodyLayers boolean TODO: Document me!
---@param animName string
---@param frameNum? integer TODO: Document me!
function EntityPlayer:PlayCollectibleAnim(collectible, checkBodyLayers, animName, frameNum)
end

---Plays a sound effect after a delay.
---@param soundEffect SoundEffect The sound to play.
---@param soundDelay? integer @default: `2`. TODO: Document me!
---@param frameDelay? integer @default: `2`. TODO: Document me!
---@param volume? number @default: `1`. The volume of the sound.
function EntityPlayer:PlayDelayedSFX(soundEffect, soundDelay, frameDelay, volume)
end

---Removes the collectible from the player associated with the specified history index.
---@param index integer
function EntityPlayer:RemoveCollectibleByHistoryIndex(index)
end

---@param slot PillCardSlot
function EntityPlayer:RemovePocketItem(slot)
end

---Removes the poop spell from the specified queue position and shifts all spells to fill the space. A new spell is randomly picked to fill the last space.
---
---Poop spells are used only by Tainted Blue Baby.
---@param position? integer @default: `0`. The queue position of the spell.
function EntityPlayer:RemovePoopSpell(position)
end

---Rerolls all of the player's collectibles.
---@param rng RNG
---@param includeActiveItems boolean
function EntityPlayer:RerollAllCollectibles(rng, includeActiveItems)
end

---This is used by the Genesis active item.
function EntityPlayer:ResetPlayer()
end

---Revives the player if they are a co-op ghost.
---@return boolean didRevive `true` if the player was revived successfully.
function EntityPlayer:ReviveCoopGhost()
end

---Produces a random quantity of various pickups, similar to Tainted Cain's ability.
---
---If an EntityPickup is passed, it will be removed by this function. Use the other version of this function to avoid this.
---@param collectible CollectibleType
---@param position? Vector @default: `self.Position`
---@param rng? RNG @default: PlayerDropRNG
---@param itemPool? ItemPoolType @default: `ItemPoolType.POOL_NULL`.
---@overload fun(pickup: EntityPickup, rng?: RNG, itemPool?: ItemPoolType)
function EntityPlayer:SalvageCollectible(collectible, position, rng, itemPool)
end

---TODO: Document me!
---@param varData integer
---@param slot ActiveSlot
function EntityPlayer:SetActiveVarData(varData, slot)
end

---Sets the content of the player's Bag of Crafting.
---@param contentTable BagOfCraftingPickup[]
function EntityPlayer:SetBagOfCraftingContent(contentTable)
end

---Sets the output of the player's Bag of Crafting to the specified collectible.
---@param collectible CollectibleType
function EntityPlayer:SetBagOfCraftingOutput(collectible)
end

---Sets the specified slot in the player's Bag of Crafting to the specified pickup or collectible.
---@param slot integer
---@param pickup BagOfCraftingPickup
function EntityPlayer:SetBagOfCraftingSlot(slot, pickup)
end

---Sets the charge for when the player stops shooting and charges the Kidney Stone item.
---
---**BUG:** The player's head turns pitch black when this function is used without Kidney Stone.
---@param charge integer
function EntityPlayer:SetBladderCharge(charge)
end

---Sets how much damage has been taken for the Cambion Conception item.
---@param state integer
function EntityPlayer:SetCambionConceptionState(state)
end

---Disables or enables the player's ability to shoot.
---@param canShoot boolean
---@return boolean unknown TODO: Document me!
function EntityPlayer:SetCanShoot(canShoot)
end

---Changes the player's controller index.
---@param index integer
function EntityPlayer:SetControllerIndex(index)
end

---For Experimental Treatement, set to `-1`, `0` or `1` to adjust the multiplier applied to the stat.
---@param modifier integer
function EntityPlayer:SetDamageModifier(modifier)
end

---Sets the offset of the player's damage stat for Eden's random stats.
---
---Has no effect on players that aren't Eden or Tainted Eden
---@param damage number
function EntityPlayer:SetEdenDamage(damage)
end

---Sets the offset of the player's fire delay stat for Eden's random stats.
---
---Has no effect on players that aren't Eden or Tainted Eden
---@param damage number
function EntityPlayer:SetEdenFireDelay(damage)
end

---Sets the offset of the player's luck stat for Eden's random stats.
---
---Has no effect on players that aren't Eden or Tainted Eden
---@param luck number
function EntityPlayer:SetEdenLuck(luck)
end

---Sets the offset of the player's range stat for Eden's random stats.
---
---Has no effect on players that aren't Eden or Tainted Eden
---@param range number
function EntityPlayer:SetEdenRange(range)
end

---Sets the offset of the player's shot speed stat for Eden's random stats.
---
---Has no effect on players that aren't Eden or Tainted Eden
---@param shotSpeed number
function EntityPlayer:SetEdenShotSpeed(shotSpeed)
end

---Sets the offset of the player's speed stat for Eden's random stats.
---
---Has no effect on players that aren't Eden or Tainted Eden
---@param speed number
function EntityPlayer:SetEdenSpeed(speed)
end

---Sets the current charge of Tainted Eve's innate Sumptorium ability
---@param chargeNumber integer
function EntityPlayer:SetEveSumptoriumCharge(chargeNumber)
end

---For Experimental Treatement, set to `-1`, `0` or `1` to adjust the multiplier applied to the stat.
---@param modifier integer
function EntityPlayer:SetFireDelayModifier(modifier)
end

---Sets the player's footprint color.
---@param color KColor
---@param isRightFootprint? boolean @default: `false`. If true, the left footprint color is returned. Otherwise, the right footprint color is returned.
function EntityPlayer:SetFootprintColor(color, isRightFootprint)
end

---Sets how many hearts have been collected for the Immaculate Conception item.
---@param state integer @Can only be between `0`-`14`, inclusive. Values outside this are clamped to this range.
function EntityPlayer:SetImmaculateConceptionState(state)
end

---Changes the player's item state to the specified collectible. This is usually used for collectibles that the player holds above their head before activating (i.e: Bob's Rotten Head, Glass Cannon)
---@param collectible CollectibleType
function EntityPlayer:SetItemState(collectible)
end

---Sets the current coin bonus for the player's Keeper Sack collectible.
---@param bonus integer
function EntityPlayer:SetKeepersSackBonus(bonus)
end

---Sets the player's laser color.
---@param color Color
function EntityPlayer:SetLaserColor(color)
end

---For Experimental Treatement, set to `-1`, `0` or `1` to adjust the multiplier applied to the stat.
---@param modifier integer
function EntityPlayer:SetLuckModifier(modifier)
end

---Sets the cooldown of Tainted Magdalene's swing attack to the specified amount of frames.
---@param cooldown integer
function EntityPlayer:SetMaggySwingCooldown(cooldown)
end

---Sets the maximum charge for when the player stops shooting and charges the Kidney Stone item.
---@param charge integer
function EntityPlayer:SetMaxBladderCharge(charge)
end

---Sets the duration of the Mega Blast laser to the specified amount of frames. Setting the duration above zero will activate the effect if it hasn't already.
---
---**Bug:** If the Mega Blast laser is active and you call the function again with a lower duration, the laser will persist even after the amount of frames has passed until the player leaves the room.
---@param duration integer
function EntityPlayer:SetMegaBlastDuration(duration)
end

---Sets the frame at which the player stops shooting and starts charging the Kidney Stone item.
---
---Setting the frame to a number before the current game frame will activate the chargeup for Kidney Stone.
---@param frame integer
function EntityPlayer:SetNextUrethraBlockFrame(frame)
end

---Sets the duration of the charge effect from the A Pony and White Pony to the specified amount of frames.
---
---Setting the duration above 0 will activate the effect.
---@param duration integer
function EntityPlayer:SetPonyCharge(duration)
end

---Sets the specified slot in the poop list to a type of poop. This is only used by Tainted Blue Baby.
---@param position integer
---@param spellType PoopSpellType
function EntityPlayer:SetPoopSpell(position, spellType)
end

---Sets the duration of the damage bonus given by the Red Stew collectible to the specified amount of frames.
---
---Setting the duration above 0 will activate the effect.
---@param duration integer
function EntityPlayer:SetRedStewBonusDuration(duration)
end

---For Experimental Treatement, set to `-1`, `0` or `1` to adjust the multiplier applied to the stat.
---@param modifier integer
function EntityPlayer:SetShotSpeedModifier(modifier)
end

---For Experimental Treatement, set to `-1`, `0` or `1` to adjust the multiplier applied to the stat.
---@param modifier integer
function EntityPlayer:SetSpeedModifier(modifier)
end

---TODO: Document me!
---@param damage number
function EntityPlayer:SetTearPoisonDamage(damage)
end

---For Experimental Treatement, set to `-1`, `0` or `1` to adjust the multiplier applied to the stat.
---@param modifier integer
function EntityPlayer:SetTearRangeModifier(modifier)
end

---Sets whether the tear spam attack from the Kidney Stone collectible is about to activate.
---
---If the player does not have the Kidney Stone collectible, the effect is immediately activated.
---
---**Bug:** Setting the `block` argument to false seems to do nothing at all.
---@param block boolean
function EntityPlayer:SetUrethraBlock(block)
end

---Sets the active Weapon in the assigned `weaponSlot`
---@param weapon Weapon
---@param weaponSlot integer
---|0 # Backup Weapon such as Notched Axe and Urn of Souls.
---|1 # Primary Weapon.
---|2 # Additional Weapon.
---|3 # Additional Weapon.
---|4 # Additional Weapon.
function EntityPlayer:SetWeapon(weapon, weaponSlot)
end

---Makes the player shoot a blue flame from the Candle collectible.
---@param direction Vector
function EntityPlayer:ShootBlueCandle(direction)
end

---Randomizes the player's current costumes.
---@param seed integer
function EntityPlayer:ShuffleCostumes(seed)
end

---Spawns a creep effect that acts like the ones created by the Aquarius collectible.
---@param tearParams? TearParams @default: `self.TearParams`. The tear parameters that the creep will inherit from.
function EntityPlayer:SpawnAquariusCreep(tearParams)
end

---Acts like a use of Sumptorium, removing health and spawning a clot with the type of health removed.
---@param position Vector The position of the blood clot to spawn at.
---@param allowPlayerDeath? boolean @default: `false`. If `true`, the blood clot will still spawn even if the player has half a heart or no health and kill the player.
function EntityPlayer:SpawnClot(position, allowPlayerDeath)
end

---Spawns a ring of tears that orbit around the player akin to the Saturnus collectible
---@return integer tearsSpawned The amount of tears spawned.
function EntityPlayer:SpawnSaturnusTears()
end

---If the player is The Forgotten/The Soul, the two will swap forms. Otherwise, this function does nothing.
---@param force? boolean @default: `false`. If true, the two will swap even if one of them does not have any health or a room/stage transition is active.
---@param noEffects? boolean @default: `false`. If true, the dust and fade effect will be disabled when switching from The Soul to The Forgotten.
function EntityPlayer:SwapForgottenForm(force, noEffects)
end

---TODO: Document me!
---@param player EntityPlayer
---@param collectibleFlags integer
function EntityPlayer:SyncConsumableCounts(player, collectibleFlags)
end

---Teleports the player to the specified position in the current room.
---@param position Vector
---@param showEffects? boolean @default: `true`. If `true`, the teleport animation and sound plays.
---@param teleportTwinPlayers? boolean @default: `false`. If `true`, the player's twins (i.e: Jacon & Esau, Tainted Lazarus with Birthright) are both teleported to the position.
function EntityPlayer:Teleport(position, showEffects, teleportTwinPlayers)
end

---Triggers effects on the player as if a room was cleared (i.e. Charging actives).
function EntityPlayer:TriggerRoomClear()
end

---Tries to add the specified pickup to the player's Bag of Crafting.
---@param pickup EntityPickup
function EntityPlayer:TryAddToBagOfCrafting(pickup)
end

---Attempts to decrease the uses left for the Glowing Hourglass collectible, if the player has it.
---@param uses integer **BUG**: Uses will decrease by one no matter what this is set to.
---@param forceHourglass? boolean Optional. If true, all of the charges are removed and the hourglass is turned into its regular form.
function EntityPlayer:TryDecreaseGlowingHourglassUses(uses, forceHourglass)
end

---Spawns a copy of the player at its current position and plays the death animation and sound.
---@return boolean unknown TODO: Document me!
function EntityPlayer:TryFakeDeath()
end

---If the player is holding Tainted Forgotten, he is thrown towards the specified direction.
---@param direction Vector
---@return boolean wasThrown `true` if Tainted Forgotten was thrown, false otherwise.
function EntityPlayer:TryForgottenThrow(direction)
end

---Adds a heart container to the player if there are none left in order to prevent death.
---@return boolean didPrevent `true` if death was presented, false otherwise.
function EntityPlayer:TryPreventDeath()
end

---Tries to remove the specified smelted trinket from the player.
---@param trinket TrinketType
function EntityPlayer:TryRemoveSmeltedTrinket(trinket)
end

---Updates the costume of Cambion Conception or Immaculate Conception
---@param cambion boolean Set to `true` for Cambion Conception, otherwise Immaculate Conception.
function EntityPlayer:UpdateIsaacPregnancy(cambion)
end

---Returns true if the specified collectible has been consumed by the Void collectible.
---@param collectible CollectibleType
---@return boolean
function EntityPlayer:VoidHasCollectible(collectible)
end

---@return integer
function EntityPlayer:GetUrnSouls()
end

---@param type integer
---@param costume boolean
---@param cooldown? integer @default: `default cooldown`
---@param additive? boolean @default: `true`
function EntityPlayer:AddNullItemEffect(type, costume, cooldown, additive)
end

---@param type integer
---@param costume boolean
---@param cooldown? integer @default: `default cooldown`
---@param additive? boolean @default: `true`
function EntityPlayer:AddCollectibleEffect(type, costume, cooldown, additive)
end

---@param direction Direction
---@param time integer
---@param force? boolean
function EntityPlayer:SetHeadDirection(direction, time, force)
end

---@return integer
function EntityPlayer:GetHeadDirectionLockTime()
end

---@param time integer
function EntityPlayer:SetHeadDirectionLockTime(time)
end

---@param LoopIndex integer
---@param Weapon WeaponType
---@param ShotDirection Vector
---@param ShotSpeed number
---@param params MultiShotParams
---@return PosVel
function EntityPlayer:GetMultiShotPositionVelocity(LoopIndex, Weapon, ShotDirection, ShotSpeed, params)
end

---@return integer --May return -1 in some circumstances
function EntityPlayer:GetPlayerIndex()
end

---@return integer
function EntityPlayer:GetBombPlaceDelay()
end

---@param delay integer
function EntityPlayer:SetBombPlaceDelay(delay)
end

---Returns an array of tables for all currently spoofed (innate) collectibles.
---@return {CollectibleID: CollectibleType, AppendedCount: integer, IsBlocked: boolean}[]
function EntityPlayer:GetSpoofedCollectiblesList()
end

---Blocks the provided `CollectibleType`. This will make it so the game thinks you don't have the item, even if it's in your inventory.
---@param itemID CollectibleType
function EntityPlayer:BlockCollectible(itemID)
end

---Unblocks a `CollectibleType` set by EntityPlayer::BlockCollectible().
---@param itemID CollectibleType
function EntityPlayer:UnblockCollectible(itemID)
end

---Returns if the `CollectibleType` was blocked through EntityPlayer::BlockCollectible().
---@param itemID CollectibleType
---@return boolean
function EntityPlayer:IsCollectibleBlocked(itemID)
end

---@param Type CollectibleType
---@param IgnoreModifiers? boolean @default: `false`
---@param IgnoreSpoof? boolean @default: `false`. Ignores innate items when set to true.
---@return boolean
function EntityPlayer:HasCollectible(Type, IgnoreModifiers, IgnoreSpoof)
end

---@param Type CollectibleType
---@param OnlyCountTrueItems? boolean @default: `false`
---@param IgnoreSpoof? boolean @default: `false`. Ignores innate items when set to true.
---@return integer
function EntityPlayer:GetCollectibleNum(Type, OnlyCountTrueItems, IgnoreSpoof)
end

---Returns `true` if you have a golden variant of the provided `TrinketType`.
---@param trinketType TrinketType
---@return boolean
function EntityPlayer:HasGoldenTrinket(trinketType)
end

---Returns the grace period countdown of retaining stats from the Hallowed Ground/Star of Bethlehem aura.
---@return integer
function EntityPlayer:GetHallowedGroundCountdown()
end

---Sets the grace period countdown of retaining stats from the Hallowed Ground/Star of Bethlehem aura.
---@param countdown integer
function EntityPlayer:SetHallowedGroundCountdown(countdown)
end

---Returns `true` if a "?" would be displayed on the player's extra life count (ie, Guppy's Collar)
---@return boolean
function EntityPlayer:HasChanceRevive()
end

---Returns the bitmask corresponding to which familiars have been spawned by Cambion/Immaculate Conception. The additional familiars provided by this bitmask are spawned during familiar cache evaluation, but only while the player has one of those two items.
---@return ConceptionFamiliarFlag
function EntityPlayer:GetConceptionFamiliarFlags()
end

---Sets the bitmask corresponding to which familiars have been spawned by Cambion/Immaculate Conception. The additional familiars provided by this bitmask are spawned during familiar cache evaluation, but only while the player has one of those two items.
---@param flag ConceptionFamiliarFlag
function EntityPlayer:SetConceptionFamiliarFlags(flag)
end

---Converts a soul heart into a black heart.
---@param soulHeartIndex integer @Determines which soul heart gets converted. 1 for the first Soul Heart, 2 for the second, and so on.
function EntityPlayer:SetBlackHeart(soulHeartIndex)
end

---Returns the pickups that are stored on the player through the use of the Moving Box collectible.
---@return EntitiesSaveStateVector
function EntityPlayer:GetMovingBoxContents()
end

---Returns the player's TearDisplacement value, used to check what eye the player was last shooting from.
---@return integer
---|-1 # Left eye
---|1 # Right eye
function EntityPlayer:GetTearDisplacement()
end

---Add CustomCacheTag(s) to be evaluated next time EvaluateItems runs (which is right now, if the optional boolean is passed).
---@param tag string | string[]
---@param EvaluateItems? boolean @default: `false`.
function EntityPlayer:AddCustomCacheTag(tag, EvaluateItems)
end

---Returns the current cached value for the specified CustomCacheTag.
---@param CustomCacheTag string
---@return integer @Will return `0` by default if the provided tag has not been evaluated.
function EntityPlayer:GetCustomCacheValue(CustomCacheTag)
end

---@return integer
function EntityPlayer:GetMaxCoins()
end

---@return integer
function EntityPlayer:GetMaxKeys()
end

---@return integer
function EntityPlayer:GetMaxBombs()
end