---@class SFXManager
local SFXManager = {}

---@return SFXManager
function _G.SFXManager()
end

---@param ID SoundEffect
---@param Pitch number
function SFXManager:AdjustPitch(ID, Pitch)
end

---@param ID SoundEffect
---@param Volume number
function SFXManager:AdjustVolume(ID, Volume)
end

---@param ID SoundEffect
---@return number
function SFXManager:GetAmbientSoundVolume(ID)
end

---@param ID SoundEffect
---@return boolean
function SFXManager:IsPlaying(ID)
end

---@param ID SoundEffect
---@param Volume? number @default: `1`
---@param FrameDelay? integer @default: `2`
---@param Loop? boolean @default: `false`
---@param Pitch? number @default: `1`
---@param Pan? number @default: `0`
function SFXManager:Play(ID, Volume, FrameDelay, Loop, Pitch, Pan)
end

---@param ID SoundEffect
function SFXManager:Preload(ID)
end

---@param ID SoundEffect
---@param Volume number
---@param Pitch number
function SFXManager:SetAmbientSound(ID, Volume, Pitch)
end

---@param ID SoundEffect
function SFXManager:Stop(ID)
end

function SFXManager:StopLoopingSounds()
end
