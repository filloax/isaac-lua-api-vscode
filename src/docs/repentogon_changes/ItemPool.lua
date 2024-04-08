---Returns true if the collectible can be spawned.
---@param collectible CollectibleType
---@param ignoreLocked boolean If set to `true`, this function will return true for items that could appear but are locked behind achievements.
---@return boolean canSpawn Will still return `false` if the item was removed from the item pool or if it can't appear because other effects (Tainted Lost offensive items mechanic or NO! trinket effect).
function ItemPool:CanSpawnCollectible(collectible, ignoreLocked)
end

---More sophisticated version of `ItemPool:GetCard` that allows individual chances to be defined.
---@param seed integer
---@param specialChance integer
---@param runeChance integer
---@param suitChance integer
---@param allowNonCards boolean
---@return Card
function ItemPool:GetCardEx(seed, specialChance, runeChance, suitChance, allowNonCards)
end

---Returns a collectible from a list.
---@param collectibles CollectibleType[] The collectibles to choose from.
---@param seed? integer @default: `Random`. The seed to use.
---@param defaultItem CollectibleType? @default: `CollectibleType.COLLECTIBLE_BREAKFAST`. The default item to resort to.
---@param addToBlacklist? boolean @default: `true`. If `true`, the collectible is added to the blacklist and can't normally spawn again.
---@param excludeLockedItems? boolean @default: `false`. If `true`, collectibles that haven't been unlocked yet can't be chosen.
---@return CollectibleType
function ItemPool:GetCollectibleFromList(collectibles, seed, defaultItem, addToBlacklist, excludeLockedItems)
end

---@class PoolRegistration
---@field decreaseBy number
---@field initialWeight number
---@field itemID CollectibleType
---@field removeOn number
---@field weight number

---Returns a table of registered collectibles in the pool.
---@param poolType ItemPoolType
---@return PoolRegistration[]
function ItemPool:GetCollectiblesFromPool(poolType)
end

---Returns the amount of trinkets available in the item pool.
---@return integer
function ItemPool:GetNumAvailableTrinkets()
end

---Returns a PillColor matching the specified PillEffect. Returns -1 if the effect is not in rotation.
---
---Currently not applied by pill modifications, such as PHD/False PHD.
---@param pillEffect PillEffect
---@return PillColor
function ItemPool:GetPillcolor(pillEffect)
end

---Returns a table of collectibles removed from all pools.
---@return CollectibleType[]
function ItemPool:GetRemovedCollectibles()
end

---Returns a table of room blacklisted collectibles.
---@return CollectibleType[]
function ItemPool:GetRoomBlacklistedCollectibles()
end

---Returns `true` if the collectible is available in item pools.
---@param collectible CollectibleType
---@return boolean
function ItemPool:HasCollectible(collectible)
end

---Returns `true` if the trinket is available in the trinket pool.
---@param trinket TrinketType
---@return boolean
function ItemPool:HasTrinket(trinket)
end

---Unidentifies a pill and returns it back to the unidentified (displaying as ???) state.
---@param pill PillColor
function ItemPool:UnidentifyPill(pill)
end

---@param poolType ItemPoolType
function ItemPool:GetBibleUpgrades(poolType)
end