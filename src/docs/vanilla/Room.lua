---@class Room
local Room = {}

---Damage Grid Entities. Currently this concerns `GridEntityPoop` and `GridEntityFire`, which return `true` if a damageable entity was found (and possibly damaged). Returns `false` if not used by tears, bombs, some NPCs, etc
---@param Index integer
---@param Damage integer
---@return boolean
function Room:DamageGrid(Index, Damage)
end

---Calls DamageGrid internally to damage Poop/Fire, remove rocks, and open secret doors. Returns `true` if something was destroyed.
---@param Index integer
---@param Immediate boolean
---@return boolean
function Room:DestroyGrid(Index, Immediate)
end

---@param Duration integer
---@param Count integer
function Room:EmitBloodFromWalls(Duration, Count)
end

---Starting from `Pos`, will try to find a free spawn position where a newly spawned pickup item will not collide with already spawned pickup items, or solid grid elements such as rocks, or pits.
---
---The returned position will be aligned to the grid. If no free position is found, the original position (aligned to the grid) is returned.
---@param Pos Vector
---@param InitialStep? number @default: `0`
---@param AvoidActiveEntities? boolean @default: `false`
---@param AllowPits? boolean @default: `false`
---@return Vector
function Room:FindFreePickupSpawnPosition(Pos, InitialStep, AvoidActiveEntities, AllowPits)
end

---@param Pos Vector
---@param DistanceThreshold number Finds the nearest free tile based on position Stops immediately if the tile sampled has a squared distance less than `DistanceThreshold` squared.
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

---Returns the boss ID of the first boss in the room. Returns 0 otherwise.
---
---This will return the sub-type of the current room, since this value is used to determine the boss portrait to display when entering.
---
---A boss ID is not equal to the entity type of the boss; it is a separate value in the entities2.xml file inside the "bossID" attribute.
---@return integer
function Room:GetBossID()
end

---@return Vector
function Room:GetBottomRightPos()
end

---Returns whether the room is slowed down, sped up or neither.
---@return integer
---|0 #Room is neither slowed down nor sped up
---|1 #Room is slowed down, either because of the Broken Watch or because of the I'm Drowsy pill
---|2 #Room is sped up, either because of the Broken Watch or because of the I'm Excited!!! pill
function Room:GetBrokenWatchState()
end

---@return Vector
function Room:GetCenterPos()
end

---Returns the grid index located at `Position`. Clamps to the nearest grid index if `Position` is out of bounds.
---@param Position Vector
---@return integer
function Room:GetClampedGridIndex(Position)
end

---Returns `Pos` clamped to within the room's walls with a radius of `Margin` units away from out of bounds.
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

---This gives the total devil deal percentage for the floor. It doesn't split it into devil and angel percentages as seen in the found hud. It's effectively the Duality percentage. This will return a value for illegal floors (e.g. Basement I) so be careful. The value can be greater than 100%.
---@return number
function Room:GetDevilRoomChance()
end

---@param Slot DoorSlot
---@return GridEntityDoor? @Returns `nil` if no Door at the given `DoorSlot` position.
function Room:GetDoor(Slot)
end

---@param Slot DoorSlot
---@return Vector
function Room:GetDoorSlotPosition(Slot)
end

---@return integer
function Room:GetDungeonRockIdx()
end

---Returns the total amount of HP lost by all enemies in the room within the current frame.
---
---This is used by items that charge on damage inflicted, such as Berserk.
---@return number
function Room:GetEnemyDamageInflicted()
end

---Returns a raw pointer to the array that stores all entities in the current room. Therefore, iterating over the return value will always iterate over the entities present in the room during the current logic frame, regardless of when GetEntities was initially called.
---
---This behavior is different to Isaac.GetRoomEntities(), which returns an iterable table of the entities in the room at the time the function was called. For most usecases, its advised to use Isaac.GetRoomEntities()!
---@return EntityList
function Room:GetEntities()
end

---Returns the amount of frames the room has been active for. Resets to 0 when the player leaves the room or the run is exited.
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
---@return GridEntity? @Returns `nil` when no GridEntity is found.
function Room:GetGridEntity(Index)
end

---@param Position Vector
---@return GridEntity? @Returns `nil` when no GridEntity is found.
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

---Returns the hit position for a laser beam (Technology, Robo-Baby). Usually this is the first poop, fire, rock, TNT, or wall encountered in a straight line.
---@param Pos Vector
---@param Dir Vector
---@return Vector
function Room:GetLaserTarget(Pos, Dir)
end

---Usually returns `1`, unless the lava is in the process of being cooled down by Flush! or other room flooding effects, in which case this will gradually decrease down to 0.
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

---Returns a random position in the room with a radius of Margin units away from any obstacles. This position is not alligned with the grid.
---@param Seed integer
---@return integer
function Room:GetRandomTileIndex(Seed)
end

---Returns `true` if the player took non-self inflicted damage to a red heart container while in the room. Resets to false if the player leaves the room or exits the run.
---@return boolean
function Room:GetRedHeartDamage()
end

---Returns a `RenderMode` enum which can be used to render entities differently depending on context (i.e. custom water reflections).
---@return RenderMode
function Room:GetRenderMode()
end

---The camera scroll offset and screen shake offsets are both represented here.
---@return Vector
function Room:GetRenderScrollOffset()
end

---The position the floor and wall textures will be rendered at.
---@return Vector
function Room:GetRenderSurfaceTopLeft()
end

---@return integer
function Room:GetRoomConfigStage()
end

---@return RoomShape
function Room:GetRoomShape()
end

---Returns the boss ID of the second boss in a double trouble room. Returns 0 otherwise.
---
---A boss ID is not equal to the entity type of the boss; it is a separate value in the entities2.xml file inside the "bossID" attribute.
---
---Checking for this value is not sufficient to detect a Double Trouble room because a Double Trouble room can contain two of the same boss. If this is the case, then the value of the second boss ID will be equal to 0.
---@return integer
function Room:GetSecondBossID()
end

---@param Seed integer
---@param noDecrease? boolean @default: `false`. If set to `true`, returned collectibles will not be removed from the pools they came from.
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

---Returns the top-left position inside of the walls.
---@return Vector
function Room:GetTopLeftPos()
end

---@return RoomType
function Room:GetType()
end

---Returns a vector corresponding to any water current in the room.
---@return Vector
function Room:GetWaterCurrent()
end

---Returns `true` if the player is inside a room with the curse mist effect, such as the Mines chase sequence
---@return boolean
function Room:HasCurseMist()
end

---@return boolean
function Room:HasLava()
end

---Returns whether the room is currently under the effect of the I'm Drowsy pill or not. The function will also return `true` if a call to SetSlowDown was performed earlier and the specified Duration has not yet expired.
---
---Note that this function will return false if the effect of the I'm Drowsy pill was triggered through the Broken Watch. To check for that scenario, use the GetBrokenWatchState function.
---
---This function will also return false if the player is under the effect of the Stop Watch. To check for that scenario, check whether or not the player has the Stop Watch in their posession.
---@return boolean
function Room:HasSlowDown()
end

---Returns `true` if there are one or more pressure plates in the room.
---@return boolean
function Room:HasTriggerPressurePlates()
end

---@return boolean
function Room:HasWater()
end

---Returns `true` if the room contains pits that have liquid in them (e.g. lava in Mines, tar in Dank Depths, etc.).
---@return boolean
function Room:HasWaterPits()
end

---Causes chest previews from Guppy's Eye to be updated on the next frame.
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

---Returns `true` if the current room is the second boss room when on an XL floor. Returns false otherwise.
---@return boolean
function Room:IsCurrentRoomLastBoss()
end

---Returns whether or not the supplied door slot is valid for the current room. This is contingent on the room definition in the STB/XML file. (Basement Renovator displays valid doors as brown and invalid doors as white.) The value returned by this method is independent of whether or not a door currently exists at the given slot.
---
---For example, in the starting room of a floor, this method would return true for DoorSlot.LEFT0, DoorSlot.UP0, Doorslot.RIGHT0, and DoorSlot.DOWN0, and false for all other values (regardless of what doors happen to exist or not).
---
---For example, there is a relatively common 1x1 room in the Caves with 4 Boom Flies and a narrow bridge from the top door to the bottom door. In this room, the doors on the left side and the right side are disabled. In this room, this method would return true for DoorSlot.UP0 and DoorSlot.DOWN0, and false for all other values (regardless of what doors happen to exist or not).
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

---Returns true if the player is inside the mirror dimension.
---@return boolean
function Room:IsMirrorWorld()
end

---Returns `true` if the given position is inside the room. Margin is used as a radius around the position that also needs to be inside the room boundaries. The Room boundary is the position between the walkable area and the walls. Therefore, positions inside walls and the black void do count as "outside" the room.
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

---Plays the music track used by this room. Useful for resetting music after playing a different track.
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

---Returns Pos, screen-wrapped (if it is just outside the room on the right it will be moved to the left side of the room, etc)
---
---This only wraps the point once, so if it has crossed multiple wrapping planes it will only wrap on the one it's closest to. For wrapping a position that has crossed two planes (outside a room in the top left for instance) call this function iteratively.
---@param Pos Vector
---@param Margin number
---@return Vector
function Room:ScreenWrapPosition(Pos, Margin)
end

---@param Value boolean
function Room:SetAmbushDone(Value)
end

---Speed up, slow down or remove either of these states from the current room. See the notes section in `GetBrokenWatchState` for the different values of `State`.
---@param State integer
function Room:SetBrokenWatchState(State)
end

function Room:SetCardAgainstHumanity()
end

---Needed for Angel rooms so that the clear flag can be set to false when an Angel spawns.
---@param Clear boolean
function Room:SetClear(Clear)
end

---@param Value boolean
function Room:SetFirstEnemyDead(Value)
end

---Allows you to apply a color modifier to the floor texture of the current room.
---@param FloorColor Color
function Room:SetFloorColor(FloorColor)
end

---Grid path is a property of a grid square that represents the "cost" of traveling over this grid cell. Its used for the path finding algorithms which search the cheapest path to a given location. If a grid cell has a value higher than `0`, it can prevent grid entities from being spawned on that square. Thus, you can get around it by resetting the grid path to 0, and then spawning the grid entity.
---
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

---Apply a slow down effect for `Duration` logic frames (there are 30 logic frames per second).
---
---Using a negative Duration will not do anything at all, instead of making the slow down permanent as one might expect.
---@param Duration integer
function Room:SetSlowDown(Duration)
end

---Allows you to apply a color modifier to the wall texture of the current room.
---@param WallColor Color
function Room:SetWallColor(WallColor)
end

---@param KeepCollectibleIdx boolean
---@param ReselectSaleItem boolean
function Room:ShopReshuffle(KeepCollectibleIdx, ReselectSaleItem)
end

---Effectively acts like a use of a Reroll Machine, restocking shops and rerolling items.
function Room:ShopRestockFull()
end

function Room:ShopRestockPartial()
end

function Room:SpawnClearAward()
end

---Stops any rain effects in the room.
function Room:StopRain()
end

---Triggers all room clear effects (does not actually clear the room).
---@param Silent? boolean @default: `false`. If set to `true`, door opening sounds can be muted.
function Room:TriggerClear(Silent)
end

---Tries to create a bridge over a given pit.
---@param pit GridEntity
---@param rock GridEntity
---@return boolean @Returns `true` if the creation was successful. Returns `false` otherwise.
function Room:TryMakeBridge(pit, rock)
end

---This function was removed with Repentance.
--[[
---@param PlayerPos Vector
---@param PlayerVelocity Vector
---@param Ladder Entity
function Room:TryPlaceLadder(PlayerPos, PlayerVelocity, Ladder)
end ]]

---Attempts to spawn a door to the Blue Womb.
---@param FirstTime? boolean @default: `true`
---@param IgnoreTime? boolean @default: `false`
---@param Force? boolean @default: `false`.  If set to `true`, will allow the door to spawn outside of Mom's Heart's boss room.
---@return boolean
function Room:TrySpawnBlueWombDoor(FirstTime, IgnoreTime, Force)
end

---Attempts to spawn a door to the Boss Rush.
---@param IgnoreTime? boolean @default: `false`
---@param Force? boolean @default: `false`. If set to `true`, will allow the door to spawn outside of Mom's boss room.
---@return boolean
function Room:TrySpawnBossRushDoor(IgnoreTime, Force)
end

---Attempts to spawn a door to the Devil or Angel room.
---@param Animate? boolean @default: `false`
---@param Force? boolean @default: `false`. If set to `true`, will allow the door to spawn outside of boss rooms.
---@return boolean
function Room:TrySpawnDevilRoomDoor(Animate, Force)
end

---Attempts to spawn a door to Mega Satan.
---@param Force? boolean @default: `false`. If set to `true`, will allow the door to spawn outside of the starting room of the Chest/Dark Room
---@return boolean
function Room:TrySpawnMegaSatanRoomDoor(Force)
end

---Attempts to spawn a door to the Downpour, Mines or Mausoleum depending on the current floor.
---@param Animate? boolean @default: `false`
---@param Force? boolean @default: `false`. If set to `true`, will allow the door to spawn outside of boss rooms.
---@return boolean
function Room:TrySpawnSecretExit(Animate, Force)
end

---Attempts to spawn a trapdoor to the Member Card shop within the current room.
---@param Force? boolean @default: `false`. IF set to `true`, will allow the trapdoor to spawn outside of shops without the player needing to hold Member Card.
---@return boolean
function Room:TrySpawnSecretShop(Force)
end

---Attempts to spawn a door to a room containing a Void portal.
---@param Force? boolean @default: `false`. If set to `true`, will allow the door to spawn outside of Hush's boss room.
---@return boolean
function Room:TrySpawnTheVoidDoor(Force)
end

---Applies a gold tint to all grid entities in the room. This is the same effect that the game does after defeating Ultra Greedier.
function Room:TurnGold()
end

---Updates the current room.
---
---It is recommended to call this function after calling `Room:RemoveGridEntity()` in order to correctly apply the changes.
function Room:Update()
end

---@param WorldPos Vector
---@return Vector
function Room:WorldToScreenPosition(WorldPos)
end

---@return Color
function Room:GetWallColor()
end