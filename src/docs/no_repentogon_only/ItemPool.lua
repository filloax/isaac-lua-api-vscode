---@param PoolType ItemPoolType
---@param Decrease? boolean @default: `false`
---@param Seed? integer @default: `Random()`
---@param DefaultItem? CollectibleType @default: `CollectibleType.COLLECTIBLE_NULL`
---@param BackupPoolType? ItemPoolType @**[Repentance+ Only]** default: ` ItemPoolType.POOL_TREASURE`. If `PoolType`'s pool is empty and `DefaultItem` is set to `CollectibleType.COLLECTIBLE_NULL`, returns an item from `BackupPoolType`.
---@return CollectibleType
function ItemPool:GetCollectible(PoolType, Decrease, Seed, DefaultItem)
end