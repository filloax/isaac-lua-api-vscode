---@class SurfaceRenderController
local SurfaceRenderController = {}

---Clears the current render target's contents and resets BlendMode to BlendType.NORMAL.
function SurfaceRenderController:Clear()
end

---Sets the blend mode for future renders.
---@param blendMode BlendMode
function SurfaceRenderController:SetBlendMode(blendMode)
end