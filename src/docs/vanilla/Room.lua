---@class Room
local Room = {}

---@param Index integer
---@param Damage integer
---@return boolean
function Room:DamageGrid(Index, Damage)
end

---@param Index integer
---@param Immediate boolean
---@return boolean
function Room:DestroyGrid(Index, Immediate)
end

---@param Duration integer
---@param Count integer
function Room:EmitBloodFromWalls(Duration, Count)
end

---@param Pos Vector
---@param InitialStep? number @default: `0`
---@param AvoidActiveEntities? boolean @default: `false`
---@param AllowPits? boolean @default: `false`
---@return Vector
function Room:FindFreePickupSpawnPosition(Pos, InitialStep, AvoidActiveEntities, AllowPits)
end

---@param Pos Vector
---@param DistanceThreshold number
---@return Vector
function Room:FindFreeTilePosition(Pos, DistanceThreshold)
end

---@return integer
function Room:GetAliveBossesCount()
end

---@return integer
function Room:GetAliveEnemiesCount()
end

---@return integer
function Room:GetAwardSeed()
end

---@return BackdropType
function Room:GetBackdropType()
end

---@return integer
function Room:GetBossID()
end

---@return Vector
function Room:GetBottomRightPos()
end

---@return integer
function Room:GetBrokenWatchState()
end

---@return Vector
function Room:GetCenterPos()
end

---@param Position Vector
---@return integer
function Room:GetClampedGridIndex(Position)
end

---@param Pos Vector
---@param Margin number
---@return Vector
function Room:GetClampedPosition(Pos, Margin)
end

---@return integer
function Room:GetDecorationSeed()
end

---@return integer
function Room:GetDeliriumDistance()
end

---@return number
function Room:GetDevilRoomChance()
end

---@param Slot DoorSlot
---@return GridEntityDoor
function Room:GetDoor(Slot)
end

---@param Slot DoorSlot
---@return Vector
function Room:GetDoorSlotPosition(Slot)
end

---@return integer
function Room:GetDungeonRockIdx()
end

---@return number
function Room:GetEnemyDamageInflicted()
end

---@return EntityList
function Room:GetEntities()
end

---@return integer
function Room:GetFrameCount()
end

---@param GridIndex integer
---@return GridCollisionClass
function Room:GetGridCollision(GridIndex)
end

---@param Pos Vector
---@return GridCollisionClass
function Room:GetGridCollisionAtPos(Pos)
end

---@param Index integer
---@return GridEntity
function Room:GetGridEntity(Index)
end

---@param Position Vector
---@return GridEntity
function Room:GetGridEntityFromPos(Position)
end

---@return integer
function Room:GetGridHeight()
end

---@param Position Vector
---@return integer
function Room:GetGridIndex(Position)
end

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
---@param Index integer
---@return integer
function Room:GetGridPath(Index)
end

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
---@param Position Vector
---@return integer
function Room:GetGridPathFromPos(Position)
end

---@param GridIndex integer
---@return Vector
function Room:GetGridPosition(GridIndex)
end

---@return integer
function Room:GetGridSize()
end

---@return integer
function Room:GetGridWidth()
end

---@param Pos Vector
---@param Dir Vector
---@return Vector
function Room:GetLaserTarget(Pos, Dir)
end

---@return number
function Room:GetLavaIntensity()
end

---@return number
function Room:GetLightingAlpha()
end

---@deprecated # Removed from the game! Keeping for old information
---@return integer
function Room:GetNextShockwaveId()
end

---@param Margin number
---@return Vector
function Room:GetRandomPosition(Margin)
end

---@param Seed integer
---@return integer
function Room:GetRandomTileIndex(Seed)
end

---@return boolean
function Room:GetRedHeartDamage()
end

---@return RenderMode
function Room:GetRenderMode()
end

---@return Vector
function Room:GetRenderScrollOffset()
end

---@return Vector
function Room:GetRenderSurfaceTopLeft()
end

---@return integer
function Room:GetRoomConfigStage()
end

---@return RoomShape
function Room:GetRoomShape()
end

---@return integer
function Room:GetSecondBossID()
end

---@param Seed integer
---@param noDecrease? boolean @default: `false`
---@return CollectibleType
function Room:GetSeededCollectible(Seed, noDecrease)
end

---@return integer
function Room:GetShopLevel()
end

---@return integer
function Room:GetSpawnSeed()
end

---@return integer
function Room:GetTintedRockIdx()
end

---@return Vector
function Room:GetTopLeftPos()
end

---@return RoomType
function Room:GetType()
end

---@return Vector
function Room:GetWaterCurrent()
end

---@return boolean
function Room:HasCurseMist()
end

---@return boolean
function Room:HasLava()
end

---@return boolean
function Room:HasSlowDown()
end

---@return boolean
function Room:HasTriggerPressurePlates()
end

---@return boolean
function Room:HasWater()
end

---@return boolean
function Room:HasWaterPits()
end

function Room:InvalidatePickupVision()
end

---@return boolean
function Room:IsAmbushActive()
end

---@return boolean
function Room:IsAmbushDone()
end

---@return boolean
function Room:IsClear()
end

---@return boolean
function Room:IsCurrentRoomLastBoss()
end

---@param Slot DoorSlot
---@return boolean
function Room:IsDoorSlotAllowed(Slot)
end

---@return boolean
function Room:IsFirstEnemyDead()
end

---@return boolean
function Room:IsFirstVisit()
end

---@return boolean
function Room:IsInitialized()
end

---@return boolean
function Room:IsLShapedRoom()
end

---@return boolean
function Room:IsMirrorWorld()
end

---@param Pos Vector
---@param Margin number
---@return boolean
function Room:IsPositionInRoom(Pos, Margin)
end

---@return boolean
function Room:IsSacrificeDone()
end

function Room:KeepDoorsClosed()
end

---@param Position Vector
function Room:MamaMegaExplosion(Position)
end

function Room:PlayMusic()
end

---@param Slot DoorSlot
function Room:RemoveDoor(Slot)
end


---`GridIndex` is the location of the grid as shown with the `debug 11` console command.
---`PathTrail` is the "cost" to leave behind on the square. In most cases, you would want to pass 0 for this argument.
---
---Note that after removing a grid entity, you cannot spawn another grid entity on the same tile until a frame has passed. If doing this is absolutely required, you can get around the restriction in two different ways:
---
---By calling the `Room:Update()` method between removing the old grid entity and spawning the new one, you can simulate a frame passing. However, this can have other unwanted side effects, so it is only recommended to do this as a last resort. Specifically, `Room:Update` will update every entity in the room, including the player, causing them to continue to move in the direction that they are already moving. Furthermore, if Room:Update is called in the PostNewRoom callback, it will still cause the player to drift, even though they are standing still. (This is because their velocity has not been zeroed out at time that the callback fires.)
---
---By calling `GridEntity:Update()` on the removed grid entity after it is removed, you will be able to immediately spawn another grid entity on the same tile. However, the new grid entity will be automatically removed at the end of the frame, so you must spawn it again on the next frame. This method can also lead to unwanted side effects, such as an explosion not destroying a rock properly (because it would be erronenously respawned on the subsequent frame).
---@param GridIndex integer
---@param PathTrail integer
---@param KeepDecoration boolean
function Room:RemoveGridEntity(GridIndex, PathTrail, KeepDecoration)
end

function Room:Render()
end

function Room:RespawnEnemies()
end

---@param Pos Vector
---@param Margin number
---@return Vector
function Room:ScreenWrapPosition(Pos, Margin)
end

---@param Value boolean
function Room:SetAmbushDone(Value)
end

---@param State integer
function Room:SetBrokenWatchState(State)
end

function Room:SetCardAgainstHumanity()
end

---@param Clear boolean
function Room:SetClear(Clear)
end

---@param Value boolean
function Room:SetFirstEnemyDead(Value)
end

---@param FloorColor Color
function Room:SetFloorColor(FloorColor)
end

---@param Index integer
---@param Value integer
---@return boolean
function Room:SetGridPath(Index, Value)
end

function Room:SetRedHeartDamage()
end

---@param Done boolean
function Room:SetSacrificeDone(Done)
end

---@deprecated # Removed from the game! Keeping for old information
---@param ShockwaveId integer
---@param Params unknown
function Room:SetShockwaveParam(ShockwaveId, Params)
end

---@param Duration integer
function Room:SetSlowDown(Duration)
end

---@param WallColor Color
function Room:SetWallColor(WallColor)
end

---@param KeepCollectibleIdx boolean
---@param ReselectSaleItem boolean
function Room:ShopReshuffle(KeepCollectibleIdx, ReselectSaleItem)
end

function Room:ShopRestockFull()
end

function Room:ShopRestockPartial()
end

function Room:SpawnClearAward()
end

function Room:StopRain()
end

---@param Silent? boolean @default: `false`
function Room:TriggerClear(Silent)
end

---@param pit GridEntity
---@param rock GridEntity
---@return boolean
function Room:TryMakeBridge(pit, rock)
end

---@param PlayerPos Vector
---@param PlayerVelocity Vector
---@param Ladder Entity
function Room:TryPlaceLadder(PlayerPos, PlayerVelocity, Ladder)
end

---@param FirstTime? boolean @default: `true`
---@param IgnoreTime? boolean @default: `false`
---@param Force? boolean @default: `false`
---@return boolean
function Room:TrySpawnBlueWombDoor(FirstTime, IgnoreTime, Force)
end

---@param IgnoreTime? boolean @default: `false`
---@param Force? boolean @default: `false`
---@return boolean
function Room:TrySpawnBossRushDoor(IgnoreTime, Force)
end

---@param Animate? boolean @default: `false`
---@param Force? boolean @default: `false`
---@return boolean
function Room:TrySpawnDevilRoomDoor(Animate, Force)
end

---@param Force? boolean @default: `false`
---@return boolean
function Room:TrySpawnMegaSatanRoomDoor(Force)
end

---@param Animate? boolean @default: `false`
---@param Force? boolean @default: `false`
---@return boolean
function Room:TrySpawnSecretExit(Animate, Force)
end

---@param Force? boolean @default: `false`
---@return boolean
function Room:TrySpawnSecretShop(Force)
end

---@param Force? boolean @default: `false`
---@return boolean
function Room:TrySpawnTheVoidDoor(Force)
end

function Room:TurnGold()
end

function Room:Update()
end

---@param WorldPos Vector
---@return Vector
function Room:WorldToScreenPosition(WorldPos)
end
