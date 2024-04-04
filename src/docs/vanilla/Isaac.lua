---@class Isaac
_G.Isaac = {}

---@alias CallbackID any

---@param modRef table
---@param callbackId CallbackID # Vanilla IDs are integers, custom IDs can be any type including strings
---@param callbackFn function
---@param entityId? integer
function Isaac.AddCallback(modRef, callbackId, callbackFn, entityId)
end

---@param modRef table
---@param callbackId CallbackID # Vanilla IDs are integers, custom IDs can be any type including strings
---@param priority CallbackPriority # Default priority is 0, higher goes later, using the CallbackPriority table is recommended
---@param callbackFn function
---@param entityId? integer
function Isaac.AddPriorityCallback(modRef, callbackId, priority, callbackFn, entityId)
end

---@param modRef table
---@param callbackId CallbackID # Vanilla IDs are integers, custom IDs can be any type including strings
---@param callbackFn function
function Isaac.RemoveCallback(modRef, callbackId, callbackFn)
end

---@vararg any # Callback args
---@param callbackId CallbackID # Vanilla IDs are integers, custom IDs can be any type including strings
---@return any # Type of callback return
function Isaac.RunCallback(callbackId, ...)
end

---@vararg any # Callback args
---@param param any # Param to check against
---@param callbackId CallbackID # Vanilla IDs are integers, custom IDs can be any type including strings
---@return any # Type of callback return
function Isaac.RunCallbackWithParam(callbackId, param, ...)
end

---@class CallbackEntry
---@field Mod table
---@field Function function
---@field Priority integer @default: `0`
---@field Param integer @default: `-1`; entity ID or anything else

---@param callbackId CallbackID
---@param createIfMissing? boolean
---@return CallbackEntry[] callbackList #sorted by priority and addition order, can set __matchParams metamethod (see https://wofsauge.github.io/IsaacDocs/rep/tutorials/CustomCallbacks.html)
function Isaac.GetCallbacks(callbackId, createIfMissing)
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

---@param Spawner? Entity  Optionally specify only entities spawned by this entity
---@param Type? EntityType @default: `EntityType.ENTITY_NULL`
---@param Variant? integer @default: `-1`
---@param SubType? integer @default: `-1`
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

---@param Type integer
---@param Variant? integer @default: `-1`
---@param SubType? integer @default: `-1`
---@param Cache? boolean @default: `false`
---@param IgnoreFriendly? boolean @default: `false`
---@return Entity[]
function Isaac.FindByType(Type, Variant, SubType, Cache, IgnoreFriendly)
end

---@param Position Vector
---@param Radius number
---@param Partitions? integer @default: `0xFFFFFFFF`
---@return Entity[]
function Isaac.FindInRadius(Position, Radius, Partitions)
end

---@param cardHudName string
---@return Card
function Isaac.GetCardIdByName(cardHudName)
end

---@return Challenge
function Isaac.GetChallenge()
end

---@param challengeName string
---@return Challenge
function Isaac.GetChallengeIdByName(challengeName)
end

---@param path string
---@return integer
function Isaac.GetCostumeIdByPath(path)
end

---@param curseName string
---@return LevelCurse
function Isaac.GetCurseIdByName(curseName)
end

---@param entityName string
---@return EntityType
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
---@return CollectibleType
function Isaac.GetItemIdByName(itemName)
end

---@param musicName string
---@return Music
function Isaac.GetMusicIdByName(musicName)
end

---@param pillEffect string
---@return PillEffect
function Isaac.GetPillEffectByName(pillEffect)
end

---@param playerID? integer @default: `0`
---@return EntityPlayer
function Isaac.GetPlayer(playerID)
end

---@param playerName string
---@param Tainted? boolean @default: `false`
---@return PlayerType
function Isaac.GetPlayerTypeByName(playerName, Tainted)
end

---@return Vector
function Isaac.GetRandomPosition()
end

---@return Entity[]
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
---@return SoundEffect
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
---@return TrinketType
function Isaac.GetTrinketIdByName(trinketName)
end

---@param gridEntityType GridEntityType
---@param variant integer
---@param position Vector
---@param forced? boolean **BUG**: Currently doesn't have any effect
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
---@param Spawner Entity | nil
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
