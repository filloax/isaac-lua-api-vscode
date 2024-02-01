---@class BlendMode
---@field Flag1 integer 
---@field Flag2 integer 
---@field Flag3 integer 
---@field Flag4 integer 
local BlendMode = {}

---Sets the blend mode.
---@param mode integer Must be between 0 - 2. Invalid modes are ignored. The game generally uses 1, but uses 2 for multiplicative blending.
function BlendMode:SetMode(mode)
end