---@class ColorParams
local ColorParams = {}

---@param color Color
---@param priority integer
---@param duration1 integer
---@param duration2 integer
---@param fadeout boolean
---@param shared boolean
---@return ColorParams
function _G.ColorParams(color, priority, duration1, duration2, fadeout, shared)
end

---@return Color
function ColorParams:GetColor()
end

---Defines the time in update frames that these parameters should last. Has no effect on how many frames are left, but does affect fadeout speed (calculated as `lifespan / duration`) if `fadeout` is enabled.
---@return integer
function ColorParams:GetDuration()
end

---@return boolean
function ColorParams:GetFadeout()
end

---Defines how many update frames are left before this expires. This is decremented by `1` each non-interpolation update at a rate of `30` per second. Altering this will directly effect how many frames are left before these parameters expire.

---@return integer
function ColorParams:GetLifespan()
end

---@return integer
function ColorParams:GetPriority()
end

---@return boolean
function ColorParams:GetShared()
end

---@param color Color
function ColorParams:SetColor(color)
end

---@param duration integer
function ColorParams:SetDuration(duration)
end

---@param value boolean
function ColorParams:SetFadeout(value)
end

---@param duration integer
function ColorParams:SetLifespan(duration)
end

---@param priority integer
function ColorParams:SetPriority(priority)
end

---@param value boolean
function ColorParams:SetShared(value)
end
