---@class ProceduralItem
local ProceduralItem = {}

---@return number
function ProceduralItem:GetDamage()
end

---Returns the procedural item's effect by an index.
---@param index integer The effect's index.
---@return ProceduralEffect?
function ProceduralItem:GetEffect(index)
end

---Returns the amount of effects the procedural item has.
---@return integer
function ProceduralItem:GetEffectCount()
end

---@return number
function ProceduralItem:GetFireDelay()
end

---@return integer
function ProceduralItem:GetID()
end

---Retuns the item config of the current glitched item.
---@return ItemConfigItem
function ProceduralItem:GetItem()
end

---@return number
function ProceduralItem:GetLuck()
end

---@return number
function ProceduralItem:GetRange()
end

---@return number
function ProceduralItem:GetShotSpeed()
end

---@return number
function ProceduralItem:GetSpeed()
end

---Returns the item config that is randomly selected by the current glitched item.
---@return ItemConfigItem? `nil` if the selected `ItemConfigItem` does not exist
function ProceduralItem:GetTargetItem()
end
