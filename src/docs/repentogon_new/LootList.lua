---@class LootList
local LootList = {}

---@return LootList
function _G.LootList()
end

---@return LootListEntry[]
function LootList:GetEntries()
end

---@param type EntityType
---@param variant integer
---@param subtype integer
---@param seed? integer @default: `Random()`
---@param rng? RNG @default: `nil`
function LootList:PushEntry(type, variant, subtype, seed, rng)
end