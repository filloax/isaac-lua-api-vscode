---@class Renderer
_G.Renderer = {}

---@param filePath string @The path to the image.
---@return Image
function Renderer.LoadImage(filePath)
end

---@param width integer
---@param height integer
---@param name string
---@return Image
function Renderer.CreateImage(width, height, name)
end

--[[ Sets the specified `Image` as the current render target and executes `renderFunction`.

All rendering operations must be performed inside `renderFunction`, as the previous render target is restored immediately after the function returns.

Only images created using Renderer.CreateImage() or surfaces created by the game may be used as render targets.

`renderFunction` may take a `SurfaceRenderController` as it's first parameter, allowing access to additional render operations for the active render target.

**Example Code:**

```lua
local exampleSurface = Renderer.CreateImage(128, 128, "Example Surface")

local function UpdateSurfaceContents(renders)
	Renderer.RenderToImage(exampleSurface, function(controller)
		controller:Clear()
		for _, render in ipairs(renders) do
			local sprite = render[1]
			local position = render[2]
			sprite:Render(position)
		end
	end)
end
``` ]]
---@param image Image
---@param renderFunction fun(controller: SurfaceRenderController)
function Renderer.RenderToImage(image, renderFunction)
end

---@param shaderType ShaderType
---@return Shader
function Renderer.GetShaderByType(shaderType)
end


--[[ `filePath` should be specified without a file extension, and it must be relative to the `resources/` directory.

Both a `.vs` and a `.fs` must exist in the specified location.

**VertexDescriptor info:**

VertexDescriptor is an array of tables, with each entry being a pair of `[string, VertexAttributeFormat]`,
with string being the attribute name.

The attribute name must be the exact same as the one used in the shader.

**Example Code:**

This code shows how color offset gold would need to be loaded if it were a custom shader.

```lua
local fmt = Renderer.VertexAttributeFormat

local vertexDesc = {
	{"Position", fmt.POSITION},
	{"Color", fmt.COLOR},
	{"TexCoord", fmt.TEX_COORD},
	{"ColorizeIn", fmt.VEC4},
	{"ColorOffsetIn", fmt.VEC3},
	{"TextureSize", fmt.VEC2},
	{"PixelationAmount", fmt.FLOAT},
	{"ClipPlane", fmt.VEC3},
}

local goldShader = Renderer.LoadShader("shaders/coloroffset_gold", vertexDesc)
``` ]]
---@param filePath string
---@param vertextDescriptor {[1]: string, [2]: VertexAttributeFormat}[]
---@return Shader
function Renderer.LoadShader(filePath, vertextDescriptor)
end

---@return number
function Renderer.GetPixelationAmount()
end

---@return Vector
function Renderer.GetClipPaneNormal()
end

---@return number
function Renderer.GetClipPaneThreshold()
end

---@return Transformer
function Renderer.StartTransformation()
end
