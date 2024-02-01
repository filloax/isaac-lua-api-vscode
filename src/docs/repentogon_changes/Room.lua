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

---@return Backdrop
function Room:GetBackdrop()
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
function Room:GetGridIndexByTile(gridRow, gridColumn)
end

---Returns the rail variant at the grid index.
---@param gridIndex integer
---@return StbRailVariant
function Room:GetRail(gridIndex) end

---Returns the room's RailManager class.
---@return RailManager
function Room:GetRailManager()
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
---@param variant integer @default: `0`.
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

---Changes the room's backdrop.
---
---The backdrop variant chosen is seeded based on the room and does not persist when leaving and re-entering. Calling this function again on re-entry will result in the same backdrop variant as before.
---@param backdrop BackdropType
---@param unknown integer TODO: Document me! This function does not work if it's set to 0.
function Room:SetBackdropType(backdrop, unknown) end

---Sets the current time of the greed wave timer.
---@param time integer
function Room:SetGreedWaveTimer(time) end

---Sets the amount of drames the pause effect is activated for in the room.
---@param time integer
function Room:SetPauseTimer(time) end

---TODO: Document me!
---@param gridIndex integer
---@param railVariant StbRailVariant
function Room:SetRail(gridIndex, railVariant) end

---TODO: Document me!
---@param delay integer
function Room:SetRoomClearDelay(delay) end

---Sets the amount of water in the room.
---@param amount number
function Room:SetWaterAmount(amount) end

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

---TODO: Document me!
---@param shopItemIndex integer
---@param price integer
---@return integer
function Room:TryGetShopDiscount(shopItemIndex, price) end

---An `IgnoreStageType` parameter has been added to allow spawning the Mirror & Mineshaft door outside of `STAGETYPE_REPENTANCE` and `STAGETYPE_REPENTANCE_B` stages. Note that the `KNIFE_PUZZLE` dimension must be set up properly for these doors not to crash on entry!
---@param IgnoreStageType? boolean @default: `false`
function Room:TrySpawnSpecialQuestDoor(IgnoreStageType)
end

---TODO: Document me!
---@param process boolean
---@param lerp boolean
---@param rate? number @default: `0.015`.
function Room:UpdateColorModifier(process, lerp, rate) end
