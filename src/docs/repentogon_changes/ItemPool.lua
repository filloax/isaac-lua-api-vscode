---@param PoolType ItemPoolType
---@param Decrease? boolean @default: `false`
---@param Seed? integer @default: `Random()`
---@param DefaultItem? CollectibleType @default: `CollectibleType.COLLECTIBLE_NULL`
---@param Flags? GetCollectibleFlag @default: `0`
---@return CollectibleType
function ItemPool:GetCollectible(PoolType, Decrease, Seed, DefaultItem, Flags)
end

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
---@param excludeActiveItems? boolean @default: `false`. If `true`, active items will be excluded.
---@return CollectibleType
function ItemPool:GetCollectibleFromList(collectibles, seed, defaultItem, addToBlacklist, excludeActiveItems)
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
function ItemPool:GetPillColor(pillEffect)
end

---@param rng RNG
---@param advancedSearch? boolean @default: false. Setting to `true` allows you to make use of the `filter` parameter.
---@param filter? ItemPoolType[] @default: {}. Normally acts as a blacklist of unwanted item pools, however setting `isWhitelist` to `true` turns it into a list from which to choose from.
---@param isWhitelist? boolean @default: false
function ItemPool:GetRandomPool(rng, advancedSearch, filter, isWhitelist)
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

---Retrieves the total number of itempools in the game, including custom itempools.
---@return integer
function ItemPool:GetNumItemPools()
end

---Returns the raw result of GetCollectible(), without any of the filtering applied by the original function. If the pool has completely ran out of repicks then this function will return nil.
---
---If RNG is not set, its initialized with `RNG(Random(), 4)`
---@param poolType ItemPoolType
---@param decrease? boolean @default: `false`
---@param rng? RNG
---@param collectibleFlags? GetCollectibleFlag @default: `0`
---@return { itemID: CollectibleType, initialWeight: number, weight: number, decreaseBy: number, removeOn: number, isUnlocked: boolean } | nil
function ItemPool:PickCollectible(poolType, decrease, rng, collectibleFlags)
end

---Makes the available once again, allowing it to naturally spawned even if previously remove. Also restores all instances of the collectible to it's initialWeight in every item pool.
---@param collectibleType CollectibleType
function ItemPool:ResetCollectible(collectibleType)
end

---@class PoolItems
---@field itemID CollectibleType? @default: `CollectibleType.COLLECTIBLE_NULL`
---@field name string? @Alternative to `itemID`
---@field weight number? @default: `1.0`
---@field decreaseBy number? @default: `0.5`
---@field removeOn number? @default: `0.1`

---Adds the provided Lua `PoolItem` objects to the specified Pool permanently, as if they were defined in a `itempools.xml` file.
---@param poolType ItemPoolType
---@param poolItems PoolItems | PoolItems[] @Can be either a single Lua `PoolItem` object or an array of them. All field names are case insensitive
function ItemPool:AddCollectible(poolType, poolItems)
end

---Adds the provided Lua `PoolItem` objects to the specified Pool, but only for the current run.
---@param poolType ItemPoolType
---@param poolItems PoolItems | PoolItems[] @Can be either a single Lua `PoolItem` object or an array of them. All field names are case insensitive
function ItemPool:AddTemporaryCollectible(poolType, poolItems)
end

---Removes the provided Temporary Collectibles from the specified Pool, assuming they exist.
---
---The Lua `PoolItem` object **MUST** be equal (in terms of field values) to the one that was added in `ItemPool:AddTemporaryCollectible`)
---@param poolType ItemPoolType
---@param poolItems PoolItems | PoolItems[] @Can be either a single Lua `PoolItem` object or an array of them. All field names are case insensitive
function ItemPool:RemoveTemporaryCollectible(poolType, poolItems)
end