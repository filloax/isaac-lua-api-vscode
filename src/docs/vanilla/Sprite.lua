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
---@return any @KColor
function Sprite:GetTexel(SamplePos, RenderPos, AlphaThreshold, LayerID)
end

---@param EventName string
---@return boolean
function Sprite:IsEventTriggered(EventName)
end

---@param AnimationName string
---@return boolean
function Sprite:IsFinished(AnimationName)
end

---@return boolean
function Sprite:IsLoaded()
end

---@param AnimationName string
---@return boolean
function Sprite:IsOverlayFinished(AnimationName)
end

---@param AnimationName string
---@return boolean
function Sprite:IsOverlayPlaying(AnimationName)
end

---@param AnimationName string
---@return boolean
function Sprite:IsPlaying(AnimationName)
end

---@param Filename string
---@param LoadGraphics boolean
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
