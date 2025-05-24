---@class BossPoolManager
_G.BossPoolManager = {}

---@param stageID StbType
---@return BossPool
function BossPoolManager.GetPool(stageID)
end

---Returns the removed status of all bosses
---
---BossPoolManager.GetRemovedBosses()[BossType.MONSTRO] to check if Monstro is removed.
---@return {[BossType | integer]: boolean}
function BossPoolManager.GetRemovedBosses()
end

---Returns the current's level boss blacklist
---
---BossPoolManager.GetRemovedSpecialBosses()[BossType.MONSTRO] to check if Monstro has been blacklisted.
---@return {[BossType | integer]: boolean}
function BossPoolManager.GetRemovedSpecialBosses()
end