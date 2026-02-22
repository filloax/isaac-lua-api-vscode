---@class Font
local Font = {}

---Converts UTF8 to UTF16, then draws the string on screen.
---
---The `BoxWidth` and `Center` parameters can be used for aligning the text. Some things to note about this:
---
---If `BoxWidth` is zero, the text will be left-aligned and the `Center` parameter will be ignored.
---
---If `BoxWidth` is NOT zero, and the `Center` parameter is false, then the text will be right-aligned inside the `BoxWidth` size.
---
---If `BoxWidth` is NOT zero, and the `Center` parameter is true, then the text will be centered inside the `BoxWidth` size.
---@param String string
---@param PositionX number
---@param PositionY number
---@param RenderColor KColor
---@param BoxWidth? integer @default: `0`
---@param Center? boolean @default: `false`
function Font:DrawString(String, PositionX, PositionY, RenderColor, BoxWidth, Center)
end

---**[Repentance+ Only]** A unique override that accepts a new FontRenderSettings for advanced control over how the string renders.
---@param String string
---@param PositionX number
---@param PositionY number
---@param sizeX number
---@param sizeY number
---@param RenderColor KColor
---@param settings FontRenderSettings
function Font:DrawString(String, PositionX, PositionY, sizeX, sizeY, RenderColor, settings)
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
