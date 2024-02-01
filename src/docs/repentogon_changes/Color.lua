---@param R? number @default: `1`
---@param G? number @default: `1`
---@param B? number @default: `1`
---@param A? number @default: `1`
---@param RO? number @default: `0`
---@param GO? number @default: `0`
---@param BO? number @default: `0`
---@return Color
function _G.Color(R, G, B, A, RO, GO, BO)
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
