---@meta

---For the purposes of storing per-mod arbitrary data for all entities that support being persistent across exit & continue (players, familiars, pickups, bombs, slots, etc.).
---
---All data tracked by this class is saved and restored automatically.
---@class EntitySaveStateManager
_G.EntitySaveStateManager = {}

---Returns a Lua table containing mod-related data associated with the entity.
---
---Additionally returns whether or not the table is newly created or pre-existing.
---@param modRef ModReference
---@param ent Entity
---@return table, boolean
function EntitySaveStateManager.GetEntityData(modRef, ent)

end

---Returns a Lua table containing mod-related data associated with the entity.
---
---Additionally returns whether or not the table is newly created or pre-existing.
---@param modRef ModReference
---@param saveState EntitiesSaveState
---@return table, boolean
function EntitySaveStateManager.GetEntitySaveStateData(modRef, saveState)

end

---Like `GetEntityData` but only returns a table if it already exists.
---@param modRef ModReference
---@param ent Entity
---@return table?
function EntitySaveStateManager.TryGetEntityData(modRef, ent)

end

---Like `GetEntitySaveStateData` but only returns a table if it already exists.
---@param modRef ModReference
---@param saveState EntitiesSaveState
---@return table?
function EntitySaveStateManager.TryGetEntitySaveStateData(modRef, saveState)

end

