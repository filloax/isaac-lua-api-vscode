function MusicManager:GetCurrentPitch()
end

---Plays a jingle.
---@param musicId Music
---@param duration integer
function MusicManager:PlayJingle(musicId, duration)
end

---@param pitch number
function MusicManager:SetCurrentPitch(pitch)
end

---Stops the currently playing jingle.
function MusicManager:StopJingle()
end

---Returns the id of the currently playing jingle, or `0` if no jingle is playing/current jingle is fading out.
---@return Music
function MusicManager:GetCurrentJingleID()
end