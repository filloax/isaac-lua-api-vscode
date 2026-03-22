---@meta

---@class Color
---@field A number
---@field B number
---@field BO number
---@field G number
---@field GO number
---@field R number
---@field RO number
---@operator mul(Color): Color
local Color = {}

---@param m1 Color
---@param m2 Color
---@param t number
---@return Color
function _G.Color.Lerp(m1, m2, t)
end

function Color:Reset()
end

---@param Red number
---@param Green number
---@param Blue number
---@param Amount number
function Color:SetColorize(Red, Green, Blue, Amount)
end

---@param RedOffset number
---@param GreenOffset number
---@param BlueOffset number
function Color:SetOffset(RedOffset, GreenOffset, BlueOffset)
end

---@param RedTint number
---@param GreenTint number
---@param BlueTint number
---@param AlphaTint number
function Color:SetTint(RedTint, GreenTint, BlueTint, AlphaTint)
end

_G.Color = {
	---@type Color
	Default = Color(1,1,1,1)
}

---@param R? number @default: `1`
---@param G? number @default: `1`
---@param B? number @default: `1`
---@param A? number @default: `1`
---@param RO? number @default: `0`
---@param GO? number @default: `0`
---@param BO? number @default: `0`
---@param RC? number @default: `0`
---@param GC? number @default: `0`
---@param BC? number @default: `0`
---@param AC? number @default: `0`
---@return Color
function _G.Color(R, G, B, A, RO, GO, BO, RC, GC, BC, AC)
end

--- Returns a dictionary corresponding to the color's current Colorize values: `{R, G, B, A}`
---@return {R: number, G: number, B: number, A: number}
function Color:GetColorize() end

--- Returns a dictionary corresponding to the color's current Offset values: `{R, G, B}`
---@return {R: number, G: number, B: number}
function Color:GetOffset() end

--- Returns a dictionary corresponding to the color's current Tint values: `{R, G, B}`
---@return {R: number, G: number, B: number, A: number}
function Color:GetTint() end

--- Prints a string representation of the color object.
function Color:Print() end

--- Returns a string representation of the color object.
---@return string
function Color:__tostring() end

_G.Color = {
    ---@type Color
    TearIpecac = Color(0, 0, 0),
    ---@type Color
    TearHoming = Color(),
    ---@type Color
    TearTar = Color(),
    ---@type Color
    TearSoy = Color(),
    ---@type Color
    TearChocolate = Color(),
    ---@type Color
    TearAlmond = Color(),
    ---@type Color
    TearScorpio = Color(),
    ---@type Color
    TearSerpentsKiss = Color(),
    ---@type Color
    TearCommonCold = Color(),
    ---@type Color
    TearCoal = Color(),
    ---@type Color
    TearNumberOne = Color(),
    ---@type Color

    ---@type Color
    ProjectileIpecac = Color(),
    ---@type Color
    ProjectileHoming = Color(),
    ---@type Color
    ProjectileTar = Color(),
    ---@type Color
    ProjectileSoy = Color(),
    ---@type Color
    ProjectileFireWave = Color(),
    ---@type Color

    ---@type Color
    ProjectileCageBlue = Color(),
    ---@type Color
    ProjectileMegaSatanBlack = Color(),
    ---@type Color
    ProjectileMegaSatanWhite = Color(),
    ---@type Color
    ProjectileHushBlue = Color(),
    ---@type Color
    ProjectileHushYellow = Color(),
    ---@type Color
    ProjectileHushGreen = Color(),

    ---@type Color
    LaserIpecac = Color(),
    ---@type Color
    LaserHoming = Color(),
    ---@type Color
    LaserSoy = Color(),
    ---@type Color
    LaserChocolate = Color(),
    ---@type Color
    LaserAlmond = Color(),
    ---@type Color
    LaserPoison = Color(),
    ---@type Color
    LaserCoal = Color(),
    ---@type Color
    LaserFireMind = Color(),
    ---@type Color
    LaserNumberOne = Color(),
    ---@type Color
    LaserMother = Color(),
    ---@type Color

    ---@type Color
    ProjectileCorpsePink = Color(),
    ---@type Color
    ProjectileCorpseWhite = Color(),
    ---@type Color
    ProjectileCorpseGreen = Color(),
    ---@type Color
    ProjectileCorpseYellow = Color(),
    ---@type Color
    ProjectileCorpseClusterLight = Color(),
    ---@type Color
    ProjectileCorpseClusterDark = Color(),

    ---@type Color
    EmberFade = Color(),
}


