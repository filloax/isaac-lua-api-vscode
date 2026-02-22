---@class FontRenderSettings
local FontRenderSettings = {}

---**[Repentance+ Only]**
---@return FontRenderSettings
function _G.FontRenderSettings()
end

---Enable auto wrap with the provided `boxWidth`. If a string's width reaches past the box width, the string will be cut before the width limit with the remainder of the string being put on a new line.
---
---The placement of the new line and previous lines is determined by the current alignment.
---
---Auto wrap is disabled by default.
---@param boxWidth integer
function FontRenderSettings:EnableAutoWrap(boxWidth)
end

---Enable truncation is enabled with the provided `boxWidth`. If a string's width reeaches past the box width, the string will be cut before the width limit and append a "..." at the end.
---
---Truncation is disabled by default. Has no effect if auto wrap is enabled.
function FontRenderSettings:EnableTruncation(boxWidth)
end

---@return DrawStringAlignment @default: `DrawStringAlignment.TOP_LEFT`
function FontRenderSettings:GetAlignment()
end

---@return number @default: `1.0`.
function FontRenderSettings:GetLineHeightModifier()
end

---@return integer @default: `65535`.
function FontRenderSettings:GetMaxCharacters()
end

---@return integer
function FontRenderSettings:GetMissingCharacterOverride()
end

---@return boolean @default: `false`.
function FontRenderSettings:IsAutoWrapEnabled()
end

---@return boolean @default: `false`.
function FontRenderSettings:IsTruncationEnabled()
end

---@param alignment DrawStringAlignment @default: `DrawStringAlignment.TOP_LEFT`
function FontRenderSettings:SetAlignment(alignment)
end

---Set the height between several lines of text. Requires auto wrap to be enabled.
---@param lineHeight number @default: `1.0`.
function FontRenderSettings:SetLineHeightModifier(lineHeight)
end

---Sets a maximum amount of characters that can be rendered on the string. If a string's width reaches past the box width, the remaining characters will not be rendered.
---@param maxChars integer
function FontRenderSettings:SetMaxCharacters(maxChars)
end

---Sets the default character used when a character that needs to be rendered is missing. This overrides previous `Font:SetMissingCharacter()` settings.
---@param character integer
function FontRenderSettings:SetMissingCharacterOverride(character)
end