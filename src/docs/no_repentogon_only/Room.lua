
---@class LinecheckMode : integer

---GridPath values pseudo-enumeration:
---
---`900` : Set by some enemies when they pass through a tile. De-prioritises the tile for pathfinders. Degrades over time in steps of 100.
---
---`950` : Set by fire places. De-prioritises the tile for pathfinders. Does not degrade.
---
---`1000` : Set by grid entities. Invalidates the tile for pathfinders. Impedes grounded player movement. Does not degrade.
---
---`3000` : Set by pits. Invalidates the tile for pathfinders. Impedes grounded player movement. Does not degrade.
---
---`3999` : Set by grimaces. Invalidates the tile for pathfinders. Impedes grounded player movement. Drops to 900 and then degrades over time in steps of 100 (Grimaces reset value every frame).
---@param Pos1 Vector
---@param Pos2 Vector
---@param Mode LinecheckMode
---@param GridPathThreshold? integer @default: `0`. See `GetGridPath` for GridPath values pseudo-enumeration.
---@param IgnoreWalls? boolean @default: `false`
---@param IgnoreCrushable? boolean @default: `false`
---@return boolean, Vector
function Room:CheckLine(Pos1, Pos2, Mode, GridPathThreshold, IgnoreWalls, IgnoreCrushable)
end

---@param GridIndex integer
---@param Type GridEntityType
---@param Variant integer
---@param Seed integer
---@param VarData integer
---@return boolean
function Room:SpawnGridEntity(GridIndex, Type, Variant, Seed, VarData)
end

---@return boolean
function Room:TrySpawnSpecialQuestDoor()
end

---@return userdata @LRoomAreaDesc
function Room:GetLRoomAreaDesc()
end

---@return userdata @LRoomTileDesc
function Room:GetLRoomTileDesc()
end