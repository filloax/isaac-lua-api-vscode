---@class MusicManager
local MusicManager = {}

---@return MusicManager
function _G.MusicManager()
end

---@param ID MusicManager
---@param FadeRate? number @default: `0.08`
function MusicManager:Crossfade(ID, FadeRate)
end

function MusicManager:Disable()
end

---@param LayerId? integer @default: `0`
function MusicManager:DisableLayer(LayerId)
end

function MusicManager:Enable()
end

---@param LayerId? integer @default: `0`
---@param Instant? boolean @default: `false`
function MusicManager:EnableLayer(LayerId, Instant)
end

---@param ID MusicManager
---@param Volume? number @default: `1`
---@param FadeRate? number @default: `0.08`
function MusicManager:Fadein(ID, Volume, FadeRate)
end

---@param FadeRate? number @default: `0.08`
function MusicManager:Fadeout(FadeRate)
end

---@return Music
function MusicManager:GetCurrentMusicID()
end

---@return Music
function MusicManager:GetQueuedMusicID()
end

---@return boolean
function MusicManager:IsEnabled()
end

---@param LayerId? integer @default: `0`
---@return boolean
function MusicManager:IsLayerEnabled(LayerId)
end

function MusicManager:Pause()
end

---@param TargetPitch number
function MusicManager:PitchSlide(TargetPitch)
end

---@param ID Music
---@param Volume number
function MusicManager:Play(ID, Volume)
end

---@param ID Music
function MusicManager:Queue(ID)
end

function MusicManager:ResetPitch()
end

function MusicManager:Resume()
end

function MusicManager:UpdateVolume()
end

---@param TargetVolume number
---@param FadeRate? number @default: `0.08`
function MusicManager:VolumeSlide(TargetVolume, FadeRate)
end
