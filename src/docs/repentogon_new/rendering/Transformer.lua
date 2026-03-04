---@class Transformer
local Transformer = {}

function Transformer:Apply()
end

---@return boolean
function Transformer:IsValid()
end

---@param image Image
---@param source SourceQuad
---@param dest DestinationQuad
---@param modifier Color
function Transformer:Render(image, source, dest, modifier)
end

---@param image Image
---@param source SourceQuad
---@param dest DestinationQuad
---@param modifier1 Color
---@param modifier2 Color
---@param modifier3 Color
---@param modifier4 Color
function Transformer:RenderEx(image, source, dest, modifier1, modifier2, modifier3, modifier4)
end
