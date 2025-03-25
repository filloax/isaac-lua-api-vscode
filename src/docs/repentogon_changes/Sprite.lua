---@param ANM2Path string
---@param LoadGraphics? boolean
---@return Sprite, boolean wasLoadSuccessful
---@overload fun(): Sprite
function _G.Sprite(ANM2Path, LoadGraphics)
end

---Continues the current animation. If the animation is currently stopped, it will play again from the current frame.
---
---If the animation does not loop and is finished, it will not restart.
---@param continueOverlay? boolean @default: `true`. If true, the overlay animation is also continued.
function Sprite:Continue(continueOverlay) end

---Continues the current overlay animation. If the animation is currently stopped, it will play again from the current frame.
---
---If the overlay animation does not loop and is finished, it will not restart.
function Sprite:ContinueOverlay() end

---Returns a table of AnimationData representing all animations in the sprite's .anm2 file.
---@return AnimationData[]
function Sprite:GetAllAnimationData() end

---Returns a table of all of the LayerStates in the sprite.
---@return LayerState[]
function Sprite:GetAllLayers() end

---Returns the AnimationData of the provided animation.
---@param animationName string
---@return AnimationData?
function Sprite:GetAnimationData(animationName) end

---Returns the AnimationData of the current animation.
---@return AnimationData
function Sprite:GetCurrentAnimationData() end

---Returns the layer data from the provided layer id.
---@param layerId integer
---@return LayerState?
---@overload fun(self: Sprite, layerName: string):LayerState?
function Sprite:GetLayer(layerId) end

---Returns the NullFrame from the provided layer name.
---@param layerName string
---@return NullFrame?
function Sprite:GetNullFrame(layerName) end

---Returns the AnimationData of the currently playing overlay.
---@return AnimationData?
function Sprite:GetOverlayAnimationData()
end

---Returns a NullFrame from the provided layer name.
---@param layerName string
---@return NullFrame?
function Sprite:GetOverlayNullFrame(layerName) end

---Returns the bitflags of the sprite's render flags.
---@return AnimRenderFlags
function Sprite:GetRenderFlags() end

---Returns `true` if the currently playing overlay animation just reached the event with the provided name.
---@param eventName string
---@return boolean
function Sprite:IsOverlayEventTriggered(eventName) end

---@param LayerId integer
---@param PngFilename string
---@param LoadGraphics? boolean
function Sprite:ReplaceSpritesheet(LayerId, PngFilename, LoadGraphics)
end

---@overload fun(self: Sprite, FrameNum: integer)
---@param AnimationName string
---@param FrameNum integer
function Sprite:SetOverlayFrame(AnimationName, FrameNum) end

---Sets the sprite's render flags.
---@param renderFlags AnimRenderFlags
function Sprite:SetRenderFlags(renderFlags) end

---@param StopOverlay? boolean @default is `true`.
function Sprite:Stop(StopOverlay) end

---Stops the current overlay animation.
function Sprite:StopOverlay() end

---Returns true if the currently playing overlay animation already reached the event with the provided name.
---@param eventName string
---@return boolean
function Sprite:WasOverlayEventTriggered(eventName)
end

---@param path string
function Sprite:SetCustomShader(path)
end

function Sprite:ClearCustomShader()
end

---Returns `true` if the specified shader is currently set. If no string is provided, returns true if any custom shader is applied.
---@param path? string
---@return boolean
function Sprite:HasCustomShader(path)
end

---@param path string
function Sprite:SetCustomChampionShader(path)
end

function Sprite:ClearCustomChampionShader()
end

---Returns `true` if the specified shader is currently set. If no string is provided, returns true if any custom shader is applied.
---@param path? string
---@return boolean
function Sprite:HasCustomChampionShader(path)
end

---`SetLayerFrame` for overlays.
---@param layer integer
---@param frame integer
function Sprite:SetOverlayLayerFrame(layer, frame)
end

---Returns the current AnimationFrame for the given layer.
---@param layer integer
---@return AnimationFrame
function Sprite:GetLayerFrameData(layer)
end

---`GetLayerFrameData` for overlays.
---@param layer integer
---@return AnimationFrame
function Sprite:GetOverlayLayerFrameData(layer)
end