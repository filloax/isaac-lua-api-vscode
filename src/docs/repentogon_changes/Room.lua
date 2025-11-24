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
---@param Mode LineCheckMode
---@param GridPathThreshold? integer @default: `0`. See `GetGridPath` for GridPath values pseudo-enumeration.
---@param IgnoreWalls? boolean @default: `false`
---@param IgnoreCrushable? boolean @default: `false`
---@return boolean, Vector
function Room:CheckLine(Pos1, Pos2, Mode, GridPathThreshold, IgnoreWalls, IgnoreCrushable)
end

---Returns true if the grid entity at the given position can be picked up.
---@param gridIndex integer
---@return boolean
function Room:CanPickupGridEntity(gridIndex)
end

---TODO: Document me!
---@param gridIndex integer
---@param force boolean
---@return boolean
function Room:CanSpawnObstacleAtPosition(gridIndex, force)
end

---Creates a lightning effect as seen in Downpour.
---@param seed? integer @default: `RandomSeed`. Determines intensity (1.3 + RandomFloat()*.6) and sound pitch (0.9 + RandomFloat()*0.2)
function Room:DoLightningStrike(seed)
end

---@return Backdrop
function Room:GetBackdrop()
end

---@return Music
function Room:GetBossVictoryJingle()
end

---@return Camera
function Room:GetCamera()
end

---Returns the probability that boss spawns in this room will be champions.
---@return number
function Room:GetChampionBossChance()
end

---TODO: Document me!
---@return TemporaryEffects
function Room:GetEffects()
end

---@return Color
function Room:GetFloorColor()
end

---Returns the room's FXParams.
---@return FXParams
function Room:GetFXParams() end

---Returns the frames until the next greed wave spawns.
---@return integer --Returns `-1` if the timer is not active or you're not in Greed Mode
function Room:GetGreedWaveTimer() end

---Returns the grid index from the provided row and column.
---@param gridRow integer
---@param gridColumn integer
---@return integer --Returns `-1` if the function fails to find a valid grid index.
---@overload fun(self: Room, gridTable: {[1]: integer, [2]: integer})
function Room:GetGridIndexByTile(gridRow, gridColumn)
end

---Retrieves the pool the game would use to generate random collectibles in the current room. Unlike `ItemPool:GetPoolForRoom()`, this takes into account the pool set using SetItemPool(), and runs the game's pool selection code, which handles unique cases (ex. Boss Room + Used Satanic Bible = Devil Pool).
---@param Seed integer
---@param Raw? boolean @default: `false`. If set to true and the pool is set to `POOL_NULL` then `POOL_NULL` will be returned, instead of running the game's pool selection code.
---@return ItemPoolType
function Room:GetItemPool(Seed, Raw)
end

---Returns the intensity of the lightning effect used in Downpour. This variable will affect the visibility of Wraiths.
---
---This is set by the game in a random range between `1.3` and `2.1`, and decays by `value * .75` per render.
function Room:GetLightningIntensity()
end

---@return LRoomAreaDesc
function Room:GetLRoomAreaDesc()
end

---@return LRoomTileDesc
function Room:GetLRoomTileDesc()
end

---The number of areas in a room that spawn rain effects in a tight radius.
function Room:GetNumRainSpawners()
end

---Returns the rail variant at the grid index.
---@param gridIndex integer
---@return StbRailVariant
function Room:GetRail(gridIndex) end

---Returns the room's RailManager class.
---@return RailManager
function Room:GetRailManager()
end

---Used by the positional rain effect spawners in Downpour. No noticable effect beyond `1.0`.
function Room:GetRainIntensity()
end

---TODO: Document me!
---@return integer
function Room:GetRoomClearDelay() end

---Returns the price of the item.
---@param entityVariant integer
---@param entitySubType integer
---@param shopItemID integer
---@return integer
function Room:GetShopItemPrice(entityVariant, entitySubType, shopItemID)
end

---Returns the amount of water in the room.
---
---If the room has no water, 0 is returned. If the room is flooded, 1 is returned.
---
---It is possible for the value to be in between 0 and 1 and over 1.
---@return number
function Room:GetWaterAmount() end

---Returns the color of the water in the room.
---@return KColor
function Room:GetWaterColor() end

---Returns the room's water color multiplier.
---@return KColor
function Room:GetWaterColorMultiplier() end

---Returns true if boss spawns in the room will be champions.
---@return boolean
function Room:IsChampionBossSeed() end

---Returns true if the entity is persistent.
---@param type EntityType
---@param variant? integer @default: `0`.
---@return boolean
function Room:IsPersistentRoomEntity(type, variant)
end

---Tries to pick up the grid entity at the provided index and returns an effect of the picked up grid entity.
---@param gridIndex integer
---@return EntityEffect?
function Room:PickupGridEntity(gridIndex) end

--- Immediately removes the GridEntity at the given index. This means grids can be properly removed and immediately replaced, without the need to call `Room:Update()`.
---@param gridIndex integer
---@param pathTrail integer TODO: Document me!
---@param keepDecoration boolean TODO: Document me!
function Room:RemoveGridEntityImmediate(gridIndex, pathTrail, keepDecoration) end

--Saves the current state of the room
function Room:SaveState()
end

---Changes the room's backdrop.
---
---The backdrop variant chosen is seeded based on the room and does not persist when leaving and re-entering. Calling this function again on re-entry will result in the same backdrop variant as before.
---@param backdrop BackdropType
---@param unknown integer TODO: Document me! This function does not work if it's set to 0.
function Room:SetBackdropType(backdrop, unknown) end

---Sets the current time of the greed wave timer.
---@param time integer
function Room:SetGreedWaveTimer(time) end

---Sets the pool to use when the game needs to generate random collectibles in the current room. This takes priority over the game's regular pool selection code. Can be set to `POOL_NULL` to let the game handle pool selection. This is reset every room transition.
---@param PoolType ItemPoolType
function Room:SetItemPool(PoolType)
end

---This primarily affects `UpdateColorModifier` (if `Process` is true, an orange glow is added based on the number of pits and lava intensity).
---@param intensity number
function Room:SetLavalIntensity(intensity)
end

---Sets the intensity of the lightning effect used in Downpour. This variable will affect the visibility of Wraiths.
---
---This is set by the game in a random range between `1.3` and `2.1`, and decays by `value * .75` per render.
---@param intensity number
function Room:SetLightningIntensity(intensity)
end

---Sets the amount of drames the pause effect is activated for in the room.
---@param time integer
function Room:SetPauseTimer(time) end

---TODO: Document me!
---@param gridIndex integer
---@param railVariant StbRailVariant
function Room:SetRail(gridIndex, railVariant) end

---Used by the positional rain effect spawners in Downpour. No noticable effect beyond `1.0`.
---@param intensity number
function Room:SetRainIntensity(intensity)
end

---TODO: Document me!
---@param delay integer
function Room:SetRoomClearDelay(delay) end

---Sets the amount of water in the room.
---@param amount number
function Room:SetWaterAmount(amount) end

---@param waterColor KColor
function Room:SetWaterColor(waterColor) end

---Sets the room's water current velocity. The game will automatically add the sounds and particles.
---@param velocity Vector The velocity of the water current. Setting it to `Vector(0, 0)` will remove the water current.
function Room:SetWaterCurrent(velocity) end

---@param GridIndex integer
---@param Type GridEntityType
---@param Variant? integer
---@param Seed? integer
---@param VarData? integer
---@return boolean
---@overload fun(self: Room, GridIndex: integer, Descriptor: GridEntityDesc)
function Room:SpawnGridEntity(GridIndex, Type, Variant, Seed, VarData)
end

---@param shopItemIndex integer
---@param price integer
---@return integer
function Room:TryGetShopDiscount(shopItemIndex, price) end

---Attempts to spawn either a door to the Mirror Dimension in Downpour, or the abandoned mineshaft in the Mines.
---@param Force? boolean @default: `false`. If set to `true`, will allow the door to spawn outside of `STAGETYPE_REPENTANCE` and `STAGETYPE_REPENTANCE_B` stages. Note that the `KNIFE_PUZZLE` dimension must be set up properly for these doors not to crash on entry!
function Room:TrySpawnSpecialQuestDoor(Force)
end

---@param process boolean
---@param lerp boolean
---@param rate? number @default: `0.015`.
function Room:UpdateColorModifier(process, lerp, rate) end

---@return FXLayers
function Room:GetFXLayers() end