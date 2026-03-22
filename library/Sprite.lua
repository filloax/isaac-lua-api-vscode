---@meta

---@class Sprite
---@field Color Color
---@field FlipX boolean
---@field FlipY boolean
---@field Offset Vector
---@field PlaybackSpeed number
---@field Scale Vector
---@field Rotation number
local Sprite = {}

---@return string
function Sprite:GetAnimation()
end

---@return string
function Sprite:GetDefaultAnimation()
end

---@return string
function Sprite:GetDefaultAnimationName()
end

---@return string
function Sprite:GetFilename()
end

---@return integer
function Sprite:GetFrame()
end

---@return integer
function Sprite:GetLayerCount()
end

---@return string
function Sprite:GetOverlayAnimation()
end

---@return integer
function Sprite:GetOverlayFrame()
end

---@param SamplePos Vector
---@param RenderPos Vector
---@param AlphaThreshold number
---@param LayerID? integer @default: `0`
---@return KColor
function Sprite:GetTexel(SamplePos, RenderPos, AlphaThreshold, LayerID)
end

---@param EventName string
---@return boolean
function Sprite:IsEventTriggered(EventName)
end

---@param AnimationName? string
---@return boolean
function Sprite:IsFinished(AnimationName)
end

---@return boolean
function Sprite:IsLoaded()
end

---@param AnimationName? string
---@return boolean
function Sprite:IsOverlayFinished(AnimationName)
end

---@param AnimationName? string
---@return boolean
function Sprite:IsOverlayPlaying(AnimationName)
end

---@param AnimationName? string
---@return boolean
function Sprite:IsPlaying(AnimationName)
end

---@param Filename string
---@param LoadGraphics? boolean
function Sprite:Load(Filename, LoadGraphics)
end

function Sprite:LoadGraphics()
end

---@param AnimationName string
---@param Force? boolean
function Sprite:Play(AnimationName, Force)
end

---@param AnimationName string
---@param Force? boolean
function Sprite:PlayOverlay(AnimationName, Force)
end

---@param Seed integer
function Sprite:PlayRandom(Seed)
end

function Sprite:Reload()
end

function Sprite:RemoveOverlay()
end

---@param Position Vector
---@param TopLeftClamp? Vector @default: `Vector.Zero`
---@param BottomRightClamp? Vector @default: `Vector.Zero`
function Sprite:Render(Position, TopLeftClamp, BottomRightClamp)
end

---@param LayerId integer
---@param Position Vector
---@param TopLeftClamp? Vector @default: `Vector.Zero`
---@param BottomRightClamp? Vector @default: `Vector.Zero`
function Sprite:RenderLayer(LayerId, Position, TopLeftClamp, BottomRightClamp)
end

function Sprite:Reset()
end

--- Passing Reset as false will continue the animation from the current frame.
--- This is a really good tool for familiars that alternate between different
--- FloatDirection animations dynamically and other entities that follow
--- similar behaviors.
---@param AnimationName string
---@param Reset? boolean @default: `true`
---@return boolean
function Sprite:SetAnimation(AnimationName, Reset)
end

---@param AnimationName string
---@param FrameNum integer
---@overload fun(self: Sprite, FrameNum: integer)
function Sprite:SetFrame(AnimationName, FrameNum)
end

function Sprite:SetLastFrame()
end

---@param LayerId integer
---@param FrameNum integer
function Sprite:SetLayerFrame(LayerId, FrameNum)
end

---@param AnimationName string
---@return boolean
function Sprite:SetOverlayAnimation(AnimationName)
end

---@param RenderFirst boolean
function Sprite:SetOverlayRenderPriority(RenderFirst)
end

function Sprite:Update()
end

---@param EventName string
---@return boolean
function Sprite:WasEventTriggered(EventName)
end


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

