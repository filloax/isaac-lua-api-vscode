---@class KColor
---@field Alpha number
---@field Blue number
---@field Green number
---@field Red number
local KColor = {}

---@param red number
---@param green number
---@param blue number
---@param alpha number
---@return KColor
function _G.KColor(red, green, blue, alpha)
end

_G.KColor = {
	---@type KColor
	Black = 		KColor(0,0,0,1),
	---@type KColor
	Red = 			KColor(1,0,0,1),
	---@type KColor
	Green = 		KColor(0,1,0,1),
	---@type KColor
	Blue = 			KColor(0,0,1,1),
	---@type KColor
	Yellow = 		KColor(1,1,0,1),
	---@type KColor
	Cyan = 			KColor(0,1,1,1),
	---@type KColor
	Magenta = 		KColor(1,0,1,1),
	---@type KColor
	White = 		KColor(1,1,1,1),
	---@type KColor
	Transparent = 	KColor(0,0,0,0),
}