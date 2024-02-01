---@class EntityConfig
_G.EntityConfig = {}

---Returns the config of the provided entity.
---@param type EntityType
---@param variant? integer @default: `-1`
---@param subType? integer @default: `-1`
---@return EntityConfigEntity?
function EntityConfig.GetEntity(type, variant, subType)
end

---Returns the highest PlayerType currently assigned to a valid character.
---@return PlayerType
function EntityConfig.GetMaxPlayerType()
end

---Returns the config associated with the character of the specified PlayerType.
---@param playerType PlayerType
---@return EntityConfigPlayer?
function EntityConfig.GetPlayer(playerType)
end
