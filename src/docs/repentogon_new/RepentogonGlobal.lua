_G.REPENTOGON = {}

---Checks if REPENTOGON meets specified version. Always returns `true` on dev builds.
---@param targetVersion string
---@return boolean
function REPENTOGON.MeetsVersion(targetVersion) end

REPENTOGON.Real = true

REPENTOGON.Name = "REPENTOGON"

REPENTOGON.Version = nil ---@type string

REPENTOGON.Extras = {Misc = {}}

REPENTOGON.Extras.ChangeLog = {}

REPENTOGON.Extras.ChangeLog.AssetsLoaded = nil ---@type boolean
REPENTOGON.Extras.ChangeLog.CurrentSheet = nil ---@type integer
REPENTOGON.Extras.ChangeLog.CurrentState = nil ---@type boolean
REPENTOGON.Extras.ChangeLog.ChangelogSprite = nil ---@type Sprite
REPENTOGON.Extras.ChangeLog.Font = nil ---@type Font
REPENTOGON.Extras.ChangeLog.FontColor = nil ---@type KColor
REPENTOGON.Extras.ChangeLog.LineHeight = nil ---@type number
REPENTOGON.Extras.ChangeLog.LineHeight = nil ---@type number
REPENTOGON.Extras.ChangeLog.NoteOffset = nil ---@type Vector
REPENTOGON.Extras.ChangeLog.NoteSprite = nil ---@type Sprite
REPENTOGON.Extras.ChangeLog.PaperOffset = nil ---@type Vector
REPENTOGON.Extras.ChangeLog.Sheets = nil ---@type {Text: string, TextArray: string[]}[]
REPENTOGON.Extras.ChangeLog.ScrollSpeed = nil ---@type number
REPENTOGON.Extras.ChangeLog.ScrollItertia = nil ---@type number
REPENTOGON.Extras.ChangeLog.VersionFont = nil ---@type Font
REPENTOGON.Extras.ChangeLog.VersionOffset = nil ---@type Vector

function REPENTOGON.Extras.ChangeLog.EvaluateText() end
function REPENTOGON.Extras.ChangeLog.LoadAssets() end
function REPENTOGON.Extras.ChangeLog.MenuRender() end

REPENTOGON.Extras.StatsMenu = {}

REPENTOGON.Extras.StatsMenu.ArrowSprite = nil ---@type Sprite
REPENTOGON.Extras.StatsMenu.CurrentlyDisplayedCategoryID = nil ---@type integer
REPENTOGON.Extras.StatsMenu.LeftArrowSpritePos = nil ---@type Vector
REPENTOGON.Extras.StatsMenu.RightArrowSpritePos = nil ---@type Vector
REPENTOGON.Extras.StatsMenu.ScheduleRefresh = nil ---@type boolean
REPENTOGON.Extras.StatsMenu.StatPageAngleOffsetX = nil ---@type number
REPENTOGON.Extras.StatsMenu.StatPageNumberOffsetX = nil ---@type number
REPENTOGON.Extras.StatsMenu.StatSheetSprite = nil ---@type Sprite
REPENTOGON.Extras.StatsMenu.StatSheetSpritePos = nil ---@type Vector
REPENTOGON.Extras.StatsMenu.Stats = nil ---@type [string,[string, number|string|fun():number|string][]][]

REPENTOGON.Extras.BestiaryMenu = {}

REPENTOGON.Extras.BestiaryMenu.ArrowSprite = nil ---@type Sprite
REPENTOGON.Extras.BestiaryMenu.BestiarySheetSprite = nil ---@type Sprite
REPENTOGON.Extras.BestiaryMenu.BestiarySheetSpritePos = nil ---@type Vector
REPENTOGON.Extras.BestiaryMenu.PageTextPos = nil ---@type Vector
REPENTOGON.Extras.BestiaryMenu.PageWidgetPos = nil ---@type Vector

function REPENTOGON.Extras.Misc.NoRPTGNFldrErr() end