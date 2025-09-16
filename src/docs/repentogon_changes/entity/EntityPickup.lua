---Adds the specified collectible to cycle with the pedestal's collectibles.
---
---Does nothing for non-collectible EntityPickups.
---@param collectible CollectibleType
---@return boolean wasAdded Returns `true` if adding the collectible was successful.
function EntityPickup:AddCollectibleCycle(collectible)
end

---Returns the pickup's alternate pedestal.
---@return PedestalType --Returns -1 for non-collectible EntityPickups
function EntityPickup:GetAlternatePedestal()
end

---Returns a table of all collectibles types being used inside its collectible cycle (i.e. Cracked Crown).
---@return CollectibleType[] --Table will be empty if used on non-collectible EntityPickups
function EntityPickup:GetCollectibleCycle()
end

---@return integer
function EntityPickup:GetDropDelay()
end

---Returns the sprite of the pickup's price label.
---@return Sprite
function EntityPickup:GetPriceSprite()
end

---Shoots the pickup in a random direction.
---
---This is a static function and must be called via EntityPickup.GetRandomPickupVelocity(Position, RNG, VelocityType).
---@param Position Vector
---@param RNG RNG
---@param VelocityType? integer @default: `0`. VelocityType 0 will shoot pickups in a random direction around the wanted position. VelocityType 1 will shoot pickups in a cone pointing down, mostly used for Beggar payouts. VelocityType also seems to affect pickups in Challenge Rooms, causing them to have a weaker velocity.
---@return Vector
function EntityPickup.GetRandomPickupVelocity(Position, RNG, VelocityType)
end

---@return integer
function EntityPickup:GetVarData()
end

---@param checkForceBlindOnly? boolean Set to `true` to ignore the Curse of the Blind and only check for forced blinded items, such as in alt path rooms
---@return boolean `true` if the pickup is a collectible pedestal and is hidden. Always returns `false` for non-collectible EntityPickups.
function EntityPickup:IsBlind(checkForceBlindOnly)
end

---Turns the pickup into a shop item for sale.
---@param shopItemId integer TODO: Document me!
function EntityPickup:MakeShopItem(shopItemId)
end

---Sets the graphics of the item pedestal.
---
---Does nothing for non-collectible EntityPickups.
---@param pedestalType PedestalType
function EntityPickup:SetAlternatePedestal(pedestalType)
end

---@param delay integer
function EntityPickup:SetDropDelay(delay)
end

---Hides pedestal items similar to Curse of the Blind.
---
---Does nothing for non-collectible EntityPickups.
---@param isBlind boolean
function EntityPickup:SetForceBlind(isBlind)
end

---Returns the new pickup index.
---
---TODO: Document me!
---@return integer pickupIndex
function EntityPickup:SetNewOptionsPickupIndex()
end

---@param varData integer
function EntityPickup:SetVarData(varData)
end

---Will try to flip the collectible, such as when using the Flip item on a collectible pedestal with a second, holographic collectible present behind the first one.
---@return boolean wasFlipped Returns `true` if the collectible was successfully flipped. Returns `false` otherwise, or if used on non-collectible EntityPickups.
function EntityPickup:TryFlip()
end

---Causes the collectible pedestal to start cycling through the specified amount of collectibles, including its own collectible type.
---@param numCycle integer The amount of collectibles to add to the cycle.
---@return boolean didCycleInit Returns `true` if the cycle was successfully initialized. Returns `false` if the collectible was already cycling, or if use on non-collectible EntityPickups.
function EntityPickup:TryInitOptionCycle(numCycle)
end

---Tries to remove the collectible from the pedestal.
---
---Does nothing for non-collectible EntityPickups.
---@return boolean wasRemoved Returns `true` if the collectible was removed. Returns `false` if it was already empty, or if use on non-collectible EntityPickups.
function EntityPickup:TryRemoveCollectible()
end

---**NOTE**: This is read-only. You will not be able to use `LootList:PushEntry` for this. Instead, use `MC_PRE_PICKUP_GET_LOOT_LIST` in tandem with the `LootList()` constructor.
---@param shouldAdvance? boolean @default: `false`
---@return LootList
function EntityPickup:GetLootList(shouldAdvance)
end

---Returns the `EffectVariant.PICKUP_GHOST` EntityEffect visible through Guppy's Eye. If not visible, returns `nil`.
---@return EntityEffect?
function EntityPickup:GetPickupGhost()
end

---Updates the `EffectVariant.PICKUP_GHOST` EntityEffect in accordance to the pickup's current `LootList`.
function EntityPickup:UpdatePickupGhosts()
end

---Removes pickups with the same option group `EntityPickup.OptionsPickupIndex` as the target pickup.
function EntityPickup:TriggerTheresOptionsPickup()
end