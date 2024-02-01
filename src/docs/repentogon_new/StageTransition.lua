---@diagnostic disable: duplicate-set-field
---@class StageTransition
_G.StageTransition = {}

---Returns true if the stage transition screen will display Isaac's head moving from one stage to another stage.
---@return boolean
function StageTransition.GetSameStage()
end

---Configure whether the stage transition will display Isaac's head moving from one stage to the other (false) or not (true).
---
---This function is useful if you want to move the player to the first stage, or want to repeat the last stage on the progress
---bar of the transition screen, and have it be less jarring.
---
---If transitioning back to the first floor, and `sameStage` is not set to true, Isaac's head will appear outside of the progress
---bar. Otherwise, Isaac's head will appear on the first floor.
---
---If repeating the last floor, and `sameStage` is not set to true, Isaac's head will move from the previous stage to the last one.
---Otherwise, Isaac's head will appear on the last floor.
---
---Calling this function before the current stage transition has called `SetNextStage` will override the transition itself. This
---means that instead of merely displaying Isaac's head not moving, it will actually change whether the next stage will be a repeat
---of the current one, or the actual next stage. Ideally, you should use this function in the context of the
---`ModCallbacks.MC_PRE_LEVEL_SELECT` callback.
---@param sameStage boolean
function StageTransition.SetSameStage(sameStage)
end
