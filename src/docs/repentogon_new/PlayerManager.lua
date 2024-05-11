---@class PlayerManager
_G.PlayerManager = {}

---Returns true if any player has the provided collectible.
---@param collectible CollectibleType
---@return boolean
function PlayerManager.AnyoneHasCollectible(collectible)
end

---Returns true if any player has the provided trinket.
---@param trinket TrinketType
---@return boolean
function PlayerManager.AnyoneHasTrinket(trinket)
end

---Returns true if any player matches the provided PlayerType.
---@param PlayerType PlayerType
---@return boolean
function PlayerManager.AnyoneIsPlayerType(PlayerType)
end

---Returns true if any player matching the provided PlayerType has Birthright.
---@param PlayerType PlayerType
---@return boolean
function PlayerManager.AnyPlayerTypeHasBirthright(PlayerType)
end

---Returns the player of the provided PlayerType which picked up the Birthright first. If no player has picked up Birthright first, returns `nil`
---@param PlayerType PlayerType
---@return EntityPlayer?
function PlayerManager.FirstBirthrightOwner(PlayerType)
end

---Returns the first player to pick up the provided collectible. If no player has picked up the collectible yet, returns `nil`.
---@param collectible CollectibleType
---@param lazarusSharedGlobalTag? boolean @default: `true`
---@return EntityPlayer?
function PlayerManager.FirstCollectibleOwner(collectible, lazarusSharedGlobalTag)
end

---Returns the player of the provided PlayerType which was initialized first. If said player does not exist, returns `nil`.
---@param PlayerType PlayerType
---@return EntityPlayer?
function PlayerManager.FirstPlayerByType(PlayerType)
end

---Returns the first player to pick up the provided trinket. If no player has picked up the trinket yet, returns `nil`.
---@param trinket TrinketType
---@param rng? RNG @default: `nil`
---@param lazarusSharedGlobalTag boolean @default: `true`
---@return EntityPlayer?
function PlayerManager.FirstTrinketOwner(trinket, rng, lazarusSharedGlobalTag)
end

---Returns the Esau Jr `EntityPlayer` from the player at the provided `index`.
---@param index? integer @default: `0`.
---@return EntityPlayer? `nil` if the Esau Jr. collectible had not been used by that player
function PlayerManager.GetEsauJrState(index)
end

---Returns the total number of the specified collectible held by all players.
---@param collectible CollectibleType
---@return integer
function PlayerManager.GetNumCollectibles(collectible)
end

---Returns a table containing all players.
---@return EntityPlayer[]
function PlayerManager.GetPlayers()
end

---Returns the total trinket multiplier of the provided trinket. This is calculated from all players holding the trinket.
---@param trinket TrinketType
---@return integer
function PlayerManager.GetTotalTrinketMultiplier(trinket)
end

---Returns true if the game is in co-op mode.
---@return boolean
function PlayerManager.IsCoopPlay()
end

---Spawns a co-player.
---@param playerType PlayerType
---@return EntityPlayer
function PlayerManager.SpawnCoPlayer2(playerType)
end

---Triggers the effects of a room clear for players and familiars.
function PlayerManager.TriggerRoomClear()
end

---@param playerType PlayerType
---@param trinketType TrinketType
---@param ignoreModifiers? boolean @default: `false`
function PlayerManager.AnyPlayerTypeHasTrinket(playerType, trinketType, ignoreModifiers)
end

---@param playerType PlayerType
---@param itemID TrinketType
---@param ignoreModifiers? boolean @default: `false`
function PlayerManager.AnyPlayerTypeHasCollectible(playerType, itemID, ignoreModifiers)
end