---@class EntitySlot : Entity
local EntitySlot = {}

---Causes the slot to drop what it typically would if blown up.
function EntitySlot:CreateDropsFromExplosion()
end

---Beggar: How many coins have been donated.
---
---Demon Beggar: How many hearts have been donated.
---
---Battery Bum/Rotten Beggar: Increases with each payment by random amounts, up to 3, and resets back to 0 upon reward or payout.
---
---Returns `0` for all other vanilla slots.
---@return integer
function EntitySlot:GetDonationValue()
end

---Shell Game and Hell Game: Returns the `PickupVariant` of the potential prize.
--
---Slot Machine: Returns the type of prize it had output. Successful prize types are `3`-`12`.
---
---Bomb Bum: Returns the type of prize it had output. `1` - Coins. `2` - A heart. `3` - Collectible.
---
---Returns `0` for all other vanilla slots.
---@return integer
function EntitySlot:GetPrizeType()
end

---Returns the current state of the slot.
---@return integer
---|1 # Idle
---|2 # Reward / Idle Reward
---|3 # Bombed
---|4 # Payout
---|5 # Shell/Hell Game Exclusive: Reward
function EntitySlot:GetState()
end

---Returns the timeout in frames until the slot determines its prize. Not used by all slots.
---
---All Beggars except Bomb Beggar: Increases randomly with each payment, returning either `1 << 16`, `1 << 17`, or the sum of them, resetting to 0 upon giving a reward.
---
---Crane Game: For the first successful payout, minimum timeout is `1 << 16`, still increasing by 30 and counting down. Second payout is `1 << 17`. Third payout is `1 << 16` + `1 << 17`.
---
---Returns `0` for all other vanilla slots.
---@return integer
function EntitySlot:GetTimeout()
end

---Returns the slot's touch counter. The touch counter goes up by one every frame a player is touching the slot and is reset once no player is touching it.
---@return integer
function EntitySlot:GetTouch()
end

---Returns a random string from the following options: CoinJam, CoinJam2, CoinJam3, CoinJam4. Presumably only used on the donation machines.
---@return string
function EntitySlot:RandomCoinJamAnim()
end

---Sets the slot's donation value.
---@param value integer
function EntitySlot:SetDonationValue(value)
end


---Seems to only be used by Crane Game and Hell Game. This gets the collectible that the games will pay out with.
---@return CollectibleType
function EntitySlot:GetPrizeCollectible()
end

---Seems to only be used by Crane Game and Hell Game. This sets the collectible that the games will pay out with and updates the rendered collectible accordingly.
---@param collectible CollectibleType
function EntitySlot:SetPrizeCollectible(collectible)
end

---Sets the prize type of the slot. See `EntitySlot:GetPrizeType` for more information.
---@param prizeType integer
function EntitySlot:SetPrizeType(prizeType)
end

---Sets the state of the slot. See `EntitySlot:GetState` for more information.
---@param state integer
function EntitySlot:SetState(state)
end

---Sets the timeout of the slot. See `EntitySlot:GetTimeout` for more information.
---@param timeout integer
function EntitySlot:SetTimeout(timeout)
end

---Sets the slot's touch counter. The touch counter goes up by one every frame a player is touching the slot and is reset once no player is touching it.
---@param newValue integer
function EntitySlot:SetTouch(newValue)
end

---Returns the index used by Shell Game and Hell Game to determine which prize animation to play.
---@return integer
function EntitySlot:GetShellGameAnimationIndex()
end

---Sets the index used by Shell Game and Hell Game to determine which prize animation to play.
---@param index integer
function EntitySlot:SetShellGameAnimationIndex(index)
end

---Returns a number used by Bomb Bum and Reroll Machine
---
---When bombing Bomb Bum, this is set to `30`
---
---Reroll Machine increments this by `1` for every successful reroll. When bombed, has a chance to set it to 11 and reroll another item.
function EntitySlot:GetTriggerTimerNum()
end

---Sets a number used by Bomb Bum and Reroll Machine
---
---When bombing Bomb Bum, this is set to `30`
---
---Reroll Machine increments this by `1` for every successful reroll. When bombed, has a chance to set it to 11 and reroll another item.
---@param num integer
function EntitySlot:SetTriggerTimerNum(num)
end

---@return Sprite
function EntitySlot:GetPrizeSprite()
end