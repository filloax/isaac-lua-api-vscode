---@class ProceduralEffect
local ProceduralEffect = {}

---Returns a table that describes the action argument.
---
---If `GetActionType` returns `ProceduralEffectActionType.USE_ACTIVE_ITEM`, the returned
---table has the following fields:
---
--- - id: integer
---
---If `GetActionType` returns `ProceduralEffectActionType.ADD_TEMPRORY_EFFECT`, the returned
---table has the following fields:
---
--- - id: integer
---
---If `GetActionType` returns `ProceduralEffectActionType.SPAWN_ENTITY`, the returned
---table has the following fields:
---
--- - type: integer
--- - variant: integer
---
---If `GetActionType` returns `ProceduralEffectActionType.CONVERT_ENTITY`, the returned
---table has the following fields:
---
--- - fromType: integer
--- - fromvariant: integer
--- - toType: integer
--- - tovariant: integer
---
---If `GetActionType` returns `ProceduralEffectActionType.AREA_DAMAGE`, the returned
---table has the following fields:
---
--- - radius: number
--- - damage: number
---
---If `GetActionType` returns `ProceduralEffectActionType.FART`, the returned
---table has the following fields:
---
--- - fromType: number
--- - radius: number
---@return table
function ProceduralEffect:GetProceduralEffect()
end

---Returns the action type.
---@return ProceduralEffectActionType
function ProceduralEffect:GetActionType()
end

---Returns a table that describes the condition argument.
---
---When `ProceduralEffect:GetConditionType` returns `ProceduralEffectConditionType.ENTITY_SPAWN`, the returned
---table has the following fields:
---
--- - type: integer
--- - variant: integer
---
---@return table
function ProceduralEffect:GetConditionProperty()
end

---Returns the condition type.
---@return ProceduralEffectConditionType
function ProceduralEffect:GetConditionType()
end

---Returns the trigger chance. The returned value is between 0 and 1.
---@return number
function ProceduralEffect:GetTriggerChance()
end

---The score is used to generate the `ProceduralItem`. Each `ProceduralItem` has a score limit when generating its effects. If the limit is reached, no more effect will be added.
---@return number
function ProceduralEffect:GetScore()
end

---In most cases, this value should be `1`.
---@return number
function ProceduralEffect:GetTriggerChanceScale()
end