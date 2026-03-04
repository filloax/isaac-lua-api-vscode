---@class Image
local Image = {}

---The logical width of the image.
---
---UV coordinates for a `SourceQuad` are based on this dimension.
---@return number
function Image:GetWidth()
end

---The logical height of the image.
---
---UV coordinates for a `SourceQuad` are based on this dimension.
---@return number
function Image:GetHeight()
end

---The number of pixels stored per row in memory, including any extra padding added for alignment. This value may be greater than Width.
---
---UV coordinates used in the shader are based on this dimension.
---@return number
function Image:GetPaddedWidth()
end

---The number of pixels rows in memory, including any extra padding added for alignment. This value may be greater than Height.
---
---UV coordinates used in the shader are based on this dimension.
---@return number
function Image:GetPaddedHeight()
end

---@return string
function Image:GetName()
end

---Returns the image content for the specified quad.
---
---The returned string contains raw binary data representing 32-bit floating-point values.
---
---Every group of 4 consecutive floats represents one pixel in RGBA order.
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@return string
function Image:GetTexelRegion(x, y, width, height)
end

function Image:Render()
end

---The shaderParams are represented as a `table<string, (number | number[])>`.
---
---* Use a number for float attributes.
---* Use a numeric array (`number[]`) for vecN attributes, with N being the length.
---
---The function throws an error if any attribute is missing or has an invalid type.
---@param sourceQuad SourceQuad
---@param destinationQuad DestinationQuad
---@param kColor KColor
---@param shader Shader
---@param shaderParams table
function Image:RenderWithShader(sourceQuad, destinationQuad, kColor, shader, shaderParams)
end
