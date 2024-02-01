---@class Renderer
local Renderer = {}

---TODO: Document me!
---@param filePath string The path to the image.
---@return Image
function Renderer:LoadImage(filePath)
end

---TODO: Document me!
---@return Pipeline
function Renderer:Pipeline()
end

---TODO: Document me!
---@return GLSLValue
function Renderer:ProjectionMatrix()
end

---TODO: Document me!
function Renderer:RenderSet()
end

---TODO: Document me!
---@param vertexShader string
---@param fragmentShader string
---@param vertexDescriptor VertexDescriptor
---@return Shader
function Renderer:Shader(vertexShader, fragmentShader, vertexDescriptor)
end

---TODO: Document me!
---@return Transformer
function Renderer:StartTransformation()
end

---TODO: Document me!
---@param x? number @default: `0`
---@param y? number @default: `0`
---@return GLSLValue
function Renderer:Vec2(x, y)
end

---TODO: Document me!
---@param x? number @default: `0`
---@param y? number @default: `0`
---@param z? number @default: `0`
---@return GLSLValue
function Renderer:Vec3(x, y, z)
end

---TODO: Document me!
---@param x? number @default: `0`
---@param y? number @default: `0`
---@param z? number @default: `0`
---@param w? number @default: `0`
---@return GLSLValue
function Renderer:Vec4(x, y, z, w)
end

---TODO: Document me!
---@return VertexDescriptor
function Renderer:VertexDescriptor()
end
