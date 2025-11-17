_G.EntityPickup = {}

---Adds the specified collectible to cycle with the pedestal's collectibles.
---
---Does nothing for non-collectible EntityPickups.
---@param collectible CollectibleType
---@return boolean wasAdded Returns `true` if adding the collectible was successful.
function EntityPickup_Local:AddCollectibleCycle(collectible)
end

---Returns the pickup's alternate pedestal.
---@return PedestalType --Returns -1 for non-collectible EntityPickups
function EntityPickup_Local:GetAlternatePedestal()
end

---Returns a table of all collectibles types being used inside its collectible cycle (i.e. Cracked Crown).
---@return CollectibleType[] --Table will be empty if used on non-collectible EntityPickups
function EntityPickup_Local:GetCollectibleCycle()
end

---@return integer
function EntityPickup_Local:GetDropDelay()
end

---Returns the sprite of the pickup's price label.
---@return Sprite
function EntityPickup_Local:GetPriceSprite()
end

---Shoots the pickup in a random direction.
---
---This is a static function and must be called via EntityPickup.GetRandomPickupVelocity(Position, RNG, VelocityType).
---@param Position Vector
---@param RNG? RNG @default: `nil`
---@param VelocityType? integer @default: `0`. VelocityType 0 will shoot pickups in a random direction around the wanted position. VelocityType 1 will shoot pickups in a cone pointing down, mostly used for Beggar payouts. VelocityType also seems to affect pickups in Challenge Rooms, causing them to have a weaker velocity.
---@return Vector
function _G.EntityPickup.GetRandomPickupVelocity(Position, RNG, VelocityType)
end

---@return integer
function EntityPickup_Local:GetVarData()
end

---@param checkForceBlindOnly? boolean Set to `true` to ignore the Curse of the Blind and only check for forced blinded items, such as in alt path rooms
---@return boolean `true` if the pickup is a collectible pedestal and is hidden. Always returns `false` for non-collectible EntityPickups.
function EntityPickup_Local:IsBlind(checkForceBlindOnly)
end

---Turns the pickup into a shop item for sale.
---@param shopItemId integer TODO: Document me!
function EntityPickup_Local:MakeShopItem(shopItemId)
end

---Sets the graphics of the item pedestal.
---
---Does nothing for non-collectible EntityPickups.
---@param pedestalType PedestalType
function EntityPickup_Local:SetAlternatePedestal(pedestalType)
end

---@param delay integer
function EntityPickup_Local:SetDropDelay(delay)
end

---Hides pedestal items similar to Curse of the Blind.
---
---Does nothing for non-collectible EntityPickups.
---@param isBlind boolean
function EntityPickup_Local:SetForceBlind(isBlind)
end

---Returns the new pickup index.
---
---TODO: Document me!
---@return integer pickupIndex
function EntityPickup_Local:SetNewOptionsPickupIndex()
end

---@param varData integer
function EntityPickup_Local:SetVarData(varData)
end

---Will try to flip the collectible, such as when using the Flip item on a collectible pedestal with a second, holographic collectible present behind the first one.
---@return boolean wasFlipped Returns `true` if the collectible was successfully flipped. Returns `false` otherwise, or if used on non-collectible EntityPickups.
function EntityPickup_Local:TryFlip()
end

---Causes the collectible pedestal to start cycling through the specified amount of collectibles, including its own collectible type.
---@param numCycle integer The amount of collectibles to add to the cycle.
---@return boolean didCycleInit Returns `true` if the cycle was successfully initialized. Returns `false` if the collectible was already cycling, or if use on non-collectible EntityPickups.
function EntityPickup_Local:TryInitOptionCycle(numCycle)
end

---Tries to remove the collectible from the pedestal.
---
---Does nothing for non-collectible EntityPickups.
---@return boolean wasRemoved Returns `true` if the collectible was removed. Returns `false` if it was already empty, or if use on non-collectible EntityPickups.
function EntityPickup_Local:TryRemoveCollectible()
end

---**NOTE**: This is read-only. You will not be able to use `LootList:PushEntry` for this. Instead, use `MC_PRE_PICKUP_GET_LOOT_LIST` in tandem with the `LootList()` constructor.
---@param shouldAdvance? boolean @default: `false`
---@return LootList
function EntityPickup_Local:GetLootList(shouldAdvance)
end

---Returns the `EffectVariant.PICKUP_GHOST` EntityEffect visible through Guppy's Eye. If not visible, returns `nil`.
---@return EntityEffect?
function EntityPickup_Local:GetPickupGhost()
end

---Updates the `EffectVariant.PICKUP_GHOST` EntityEffect in accordance to the pickup's current `LootList`.
function EntityPickup_Local:UpdatePickupGhosts()
end

---Removes pickups with the same option group `EntityPickup.OptionsPickupIndex` as the target pickup.
function EntityPickup_Local:TriggerTheresOptionsPickup()
end

---Returns the other EntityPickup for a Mega Chest
---@return EntityPickup
function EntityPickup_Local:GetMegaChestLeftCollectible()
end

---Returns the other EntityPickup for a Mega Chest
---@return EntityPickup
function EntityPickup_Local:GetMegaChestRightCollectible()
end

---Returns `true` if pickup is collectible and has Flip save state.
---@return boolean
function EntityPickup_Local:HasFlipData()
end

---Returns CollectibleType if flip save state exists, nil otherwise.
---@return CollectibleType?
function EntityPickup_Local:GetFlipCollectible()
end

---Initiates the pedestal with a second ghostly collectible, as if the room was entered with the Flip item.
---@param itemID? CollectibleType @default: `CollectibleType.COLLECTIBLE_NULL`
---@param setupGraphics? boolean @default: `true`
function EntityPickup_Local:InitFlipState(itemID, setupGraphics)
end