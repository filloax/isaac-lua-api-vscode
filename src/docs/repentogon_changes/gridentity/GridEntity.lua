---@return integer
function GridEntity:GetAltRockType()
end

---@return Vector
function GridEntity:GetRenderPosition()
end

---TODO: Document me!
---@param entity Entity
---@param damage integer
---@param damageFlags DamageFlag
---@param unknown number TODO: Document me!
---@param unknown2 boolean TODO: Document me!
function GridEntity:HurtDamage(entity, damage, damageFlags, unknown, unknown2)
end

---TODO: Document me!
---@param damage integer
---@param damageFlags DamageFlag
---@param unknown number TODO: Document me!
---@param unknown2 boolean TODO: Document me!
function GridEntity:HurtSurroundings(damage, damageFlags, unknown, unknown2)
end

---Returns true if the rock can be broken.
---@return boolean
function GridEntity:IsBreakableRock()
end

---TODO: Document me!
---@param gridType GridEntityType
---@param backdropType BackdropType
function GridEntity:PlayBreakSound(gridType, backdropType)
end

---TODO: Document me!
---@param gridType GridEntityType
function GridEntity:RegisterRockDestroyed(gridType)
end

---TODO: Document me!
---@param offset Vector
function GridEntity:RenderTop(offset)
end

---Used to cast a `GridEntity` object to a `GridEntityDecoration` object.
---@return GridEntityDecoration? `nil` is conversion is not successful
function GridEntity:ToDecoration()
end

---Used to cast a `GridEntity` object to a `GridEntityFire` object.
---@return GridEntityFire? `nil` is conversion is not successful
function GridEntity:ToFire()
end

---Used to cast a `GridEntity` object to a `GridEntityGravity` object.
---@return GridEntityGravity? `nil` is conversion is not successful
function GridEntity:ToGravity()
end

---Used to cast a `GridEntity` object to a `GridEntityLock` object.
---@return GridEntityLock? `nil` is conversion is not successful
function GridEntity:ToLock()
end

---Used to cast a `GridEntity` object to a `GridEntityStairs` object.
---@return GridEntityStairs? `nil` is conversion is not successful
function GridEntity:ToStairs()
end

---Used to cast a `GridEntity` object to a `GridEntityStatue` object.
---@return GridEntityStatue? `nil` is conversion is not successful
function GridEntity:ToStatue()
end

---Used to cast a `GridEntity` object to a `GridEntityTeleporter` object.
---@return GridEntityTeleporter? `nil` is conversion is not successful
function GridEntity:ToTeleporter()
end

---Used to cast a `GridEntity` object to a `GridEntityTrapDoor` object.
---@return GridEntityTrapDoor? `nil` is conversion is not successful
function GridEntity:ToTrapDoor()
end

---Used to cast a `GridEntity` object to a `GridEntityWall` object.
---@return GridEntityWall? `nil` is conversion is not successful
function GridEntity:ToWall()
end

---Used to cast a `GridEntity` object to a `GridEntityWeb` object.
---@return GridEntityWeb? `nil` is conversion is not successful
function GridEntity:ToWeb()
end

---TODO: Document me!
function GridEntity:TrySpawnLadder()
end

---TODO: Document me!
function GridEntity:TrySpawnWorms()
end

function GridEntity:UpdateCollision()
end

---Updates the GridEntity's neighbors.
function GridEntity:UpdateNeighbors()
end

---@return WaterClipFlag
function GridEntity:GetWaterClipFlags()
end

---@param flags WaterClipFlag
function GridEntity:SetWaterClipFlags(flags)
end

function GridEntity:ResetWaterClipFlags()
end
