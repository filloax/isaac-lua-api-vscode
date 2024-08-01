---@class LayerState
local LayerState = {}

---@return BlendMode
function LayerState:GetBlendMode()
end

---@return Color
function LayerState:GetColor()
end

---@return Vector
function LayerState:GetCropOffset()
end

---@return string
function LayerState:GetDefaultSpritesheetPath()
end

---@return integer
function LayerState:GetLayerID()
end

---@return string
function LayerState:GetName()
end

---@return Vector
function LayerState:GetPos()
end

---Returns the bitflags of the current render flags.
---@return AnimRenderFlags
function LayerState:GetRenderFlags()
end

---@return number
function LayerState:GetRotation()
end

---@return Vector
function LayerState:GetSize()
end

---@return string
function LayerState:GetSpritesheetPath()
end

---Returns the wrap mode for the x coordinate. See [this website](https://open.gl/textures) for a general overview.
---@return integer
function LayerState:GetWrapSMode()
end

---Returns the wrap mode for the y coordinate. See [this website](https://open.gl/textures) for a general overview.
---@return integer
function LayerState:GetWrapTMode()
end

---@return boolean
function LayerState:IsVisible()
end

---@param color Color
function LayerState:SetColor(color)
end

---@param offset Vector
function LayerState:SetCropOffset(offset)
end

---@param position Vector
function LayerState:SetPos(position)
end

---Sets the current render flags. Accepts a bitmask.
---@param renderFlags AnimRenderFlags
function LayerState:SetRenderFlags(renderFlags)
end

---@param rotation number
function LayerState:SetRotation(rotation)
end

---@param size Vector
function LayerState:SetSize(size)
end

---@param isVisible boolean
function LayerState:SetVisible(isVisible)
end

---Sets the wrap mode for the x coordinate. See [this website](https://open.gl/textures) for a general overview.
---@param mode integer
---@return integer
function LayerState:SetWrapSMode(mode)
end

---Sets the wrap mode for the y coordinate. See [this website](https://open.gl/textures) for a general overview.
---@param mode integer
---@return integer
function LayerState:SetWrapTMode(mode)
end

---@param path string
function LayerState:SetCustomShader(path)
end

function LayerState:ClearCustomShader()
end

---Returns `true` if the specified shader is currently set. If no string is provided, returns true if any custom shader is applied.
---@param path? string
---@return boolean
function LayerState:HasCustomShader(path)
end

---@param path string
function LayerState:SetCustomChampionShader(path)
end

function LayerState:ClearCustomChampionShader()
end

---Returns `true` if the specified shader is currently set. If no string is provided, returns true if any custom shader is applied.
---@param path? string
---@return boolean
function LayerState:HasCustomChampionShader(path)
end

---@return boolean
function LayerState:GetFlipX()
end

---@return boolean
function LayerState:GetFlipY()
end

---@param FlipX boolean
function LayerState:SetFlipX(FlipX)
end

---@param FlipY boolean
function LayerState:SetFlipY(FlipY)
end
