---@class Font
local Font = {}

---@return Font
function _G.Font()
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: `0`
---@param Center? boolean @default: `false`
function Font:DrawString(String, PositionX, PositionY, RenderColor, BoxWidth, Center)
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param ScaleX number
---@param ScaleY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: `0`
---@param Center? boolean @default: `false`
function Font:DrawStringScaled(String, PositionX, PositionY, ScaleX, ScaleY, RenderColor, BoxWidth, Center)
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param ScaleX number
---@param ScaleY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: `0`
---@param Center? boolean @default: `false`
function Font:DrawStringScaledUTF8(String, PositionX, PositionY, ScaleX, ScaleY, RenderColor, BoxWidth, Center)
end

---@param String string
---@param PositionX number
---@param PositionY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: `0`
---@param Center? boolean @default: `false`
function Font:DrawStringUTF8(String, PositionX, PositionY, RenderColor, BoxWidth, Center)
end

---@return integer
function Font:GetBaselineHeight()
end

---@param Character string
---@return integer
function Font:GetCharacterWidth(Character)
end

---@return integer
function Font:GetLineHeight()
end

---@param String string
---@return integer
function Font:GetStringWidth(String)
end

---@param String string
---@return integer
function Font:GetStringWidthUTF8(String)
end

---@return boolean
function Font:IsLoaded()
end

---@param FilePath string
---@return boolean
function Font:Load(FilePath)
end

---@param MissingCharacter string
function Font:SetMissingCharacter(MissingCharacter)
end

function Font:Unload()
end
