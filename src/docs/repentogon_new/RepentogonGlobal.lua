---@class REPENTOGON
---@field Version string
---@field Real true
---@field Name "REPENTOGON"
---@field Extras REPENTOGON_Extras
_G.REPENTOGON = {}

---Checks if REPENTOGON meets specified version. Always returns `true` on dev builds.
---@param targetVersion string
---@return boolean
function REPENTOGON.MeetsVersion(targetVersion) end

---@class REPENTOGON_Extras
---@field Changelog REPENTOGON_Changelog
---@field StatsMenu REPENTOGON_StatsMenu
---@field BestiaryMenu REPENTOGON_BestiaryMenu
---@field Misc {NoRPTGNFldrErr: function}

---@class REPENTOGON_Changelog
---@field AssetsLoaded boolean
---@field CurrentSheet integer
---@field CurrentState boolean
---@field ChangelogSprite Sprite
---@field Font Font
---@field FontColor KColor
---@field LineHeight number
---@field NoteOffset Vector
---@field NoteSprite Sprite
---@field PaperOffset Vector
---@field Sheets {Text: string, TextArray: string[]}[]
---@field ScrollSpeed number
---@field ScrollItertia number
---@field VersionFont Font
---@field VersionOffset Vector
---@field EvaluateText function
---@field LoadAssets function
---@field MenuRender function

---@class REPENTOGON_StatsMenu
---@field ArrowSprite Sprite
---@field CurrentlyDisplayedCategoryID integer
---@field LeftArrowSpritePos Vector
---@field RightArrowSpritePos Vector
---@field ScheduleRefresh boolean
---@field StatPageAngleOffsetX number
---@field StatPageNumberOffsetX number
---@field StatSheetSprite Sprite
---@field StatSheetSpritePos Vector
---@field Stats [string,[string, number|string|fun():number|string][]][]

---@class REPENTOGON_BestiaryMenu
---@field ArrowSprite Sprite
---@field BestiarySheetSprite Sprite
---@field BestiarySheetSpritePos Vector
---@field PageTextPos Vector
---@field PageWidgetPos Vector
