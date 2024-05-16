---@class LootListEntry
local LootListEntry = {}

---@return EntityType
function LootListEntry:GetType()
end

---@return integer
function LootListEntry:GetVariant()
end

---@return integer
function LootListEntry:GetSubType()
end

---@return integer
function LootListEntry:GetSeed()
end

---May return `nil`.
---@return RNG?
function LootListEntry:GetRNG()
end