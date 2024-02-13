---Checks if a given character has completed all marks and returns the 
---highest difficulty it was accomplished in.
---@param playerType PlayerType
---@return integer
---|0 # None
---|1 # Normal
---|2 # Hard
function Isaac.AllMarksFilled(playerType)
end

---Checks if a given character has completed all tainted-related marks 
---and returns the highest difficulty it was accomplished in.
---@param playerType PlayerType
---@param taintedMarksGroup TaintedMarksGroup
---@return integer
---|0 # None
---|1 # Normal
---|2 # Hard
function Isaac.AllTaintedCompletion(playerType, taintedMarksGroup)
end

---@return boolean
function Isaac.CanStartTrueCoop()
end

--- Moves the windows mouse cursor to the center of the game's window. It 
---won't move the cursor if the game's window is out of focus.
function Isaac.CenterCursor()
end

---Kills all projectiles and non-friendly NPCs capable of keeping doors closed..
---@param includeNpcs? boolean @default: `false`. If `true`, will not kill aforementioned NPCs.
function Isaac.ClearBossHazards(includeNpcs)
end

---Sets the challenge of the corresponding `challengeId` to completed.
---@param challengeId Challenge
function Isaac.ClearChallenge(challengeId)
end

---Deletes all completion marks for the provided character.
---@param playerType PlayerType
function Isaac.ClearCompletionMarks(playerType)
end

---Spawns a timer effect.
---
---The timer is called every game update. This means the timer only runs 
---while the game is unpaused and uses update frames for its delay parameter 
---(30 frames per second).
---
---If your use case requires a timer that takes paused time into acount, stick with a custom timer running on a RENDER callback.
---@param intervalFunction fun()
---@param interval number How many frames until intervalFunction is ran.
---@param times number The amount of times intervalFunction can be called after enough interval frames passed.
---@param persistent boolean If true, the timer will persist across rooms.
---@return EntityEffect
function Isaac.CreateTimer(intervalFunction, interval, times, persistent)
end

---Creates and returns a Weapon object. It is not automatically useable by 
---`owner` and `Isaac.SetWeaponType` must be used in tandem.
---@param weaponType WeaponType
---@param owner Entity Advised that this only be used for `EntityPlayer` and `EntityFamiliar` objects.
---@return Weapon
function Isaac.CreateWeapon(weaponType, owner)
end

---Destroys the provided Weapon object.
---@param weapon Weapon
function Isaac.DestroyWeapon(weapon)
end

---Draws a line between two positions on the current render frame.
---@param startPos Vector
---@param endPos Vector
---@param startColor KColor
---@param endColor KColor
---@param thickness integer
function Isaac.DrawLine(startPos, endPos, startColor, endColor, thickness)
end

---Draws a quad for the current render frame.
---@param topLeftPosition Vector
---@param topRightPosition Vector
---@param bottomLeftPosition Vector
---@param bottomRightPosition Vector
---@param color KColor
---@param thickness integer
function Isaac.DrawQuad(topLeftPosition, topRightPosition, bottomLeftPosition, bottomRightPosition, color, thickness)
end

---Fills all of the completion marks for the character.
---@param playerType PlayerType
function Isaac.FillCompletionMarks(playerType)
end

---Returns entities inside of the given capsule, filtered by partitions mask.
---@param Capsule Capsule
---@param EntityPartitions? EntityPartition @default: `-1`
---@return Entity[]
function Isaac.FindInCapsule(Capsule, EntityPartitions)
end

---Returns the achievement ID by name.
---@param name string
---@return Achievement --Returns `-1` if it fails to find an achievement with the provided name
function Isaac.GetAchievementIdByName(name)
end

---Returns the bosscoloridx
---@param name string
---@return integer --Returns `-1` if it fails to find a boss color with the provided name
function Isaac.GetBossColorIdxByName(name)
end

---Returns the contents of the player's clipboard. If nothing is in the 
---clipboard, `nil` is returned instead.
---@return string? 
function Isaac.GetClipboard()
end

---Returns what position a collectible would actually spawn at from the 
---provided position.
---@param position Vector
---@return Vector
function Isaac.GetCollectibleSpawnPosition(position)
end

---Returns a completion mark value for the provided character.
---@param playerType PlayerType
---@param markType CompletionType
---@return Difficulty
function Isaac.GetCompletionMark(playerType, markType)
end

---@class CompletionMarks
---@field PlayerType PlayerType
---@field MomsHeart Difficulty
---@field Isaac Difficulty
---@field Satan Difficulty
---@field BossRush Difficulty
---@field BlueBaby Difficulty
---@field Lamb Difficulty
---@field MegaSatan Difficulty
---@field UltraGreed Difficulty
---@field Hush Difficulty
---@field UltraGreedier Difficulty
---@field Delirium Difficulty
---@field Mother Difficulty
---@field Beast Difficulty

---Returns a dictionary of the character's current completion marks.
---@param playerType PlayerType
---@return CompletionMarks
function Isaac.GetCompletionMarks(playerType)
end

---Sets the completion marks of a character to match an input table. 
---Requires a dictionary containing all the marks for the character, 
---getting it from GetCompletionMarks is advised for convenience.
---@param marks CompletionMarks
function Isaac.SetCompletionMarks(marks)
end

---Returns the cursor sprite that is rendered when `Options.MouseControl`
---is true.
---@return Sprite
function Isaac.GetCursorSprite()
end

---@param name string
---@return Ending
function Isaac.GetCutsceneIdByName(name)
end

---@param name string
---@return integer
function Isaac.GetEntitySubTypeByName(name)
end

---Returns the giantbook id by name. For vanilla giantbooks, the png filename, from the gfx xml attribute, is used as the giantbook name.
---@param name string
---@return integer
function Isaac.GetGiantBookIdByName(name)
end

---Returns a key-value table of all loaded script values, where the key is the path of the script and the value is what it returns.
---@return table<string, any>
function Isaac.GetLoadedModules()
end

---Returns the translation string associated with the given key in the given catagory.
---@param category string
---@param key string
---@param language Language
---@overload fun(category: string, key: string, languageCode: string)
function Isaac.GetLocalizedString(category, key, language)
end

---@param challengeId Challenge
function Isaac.GetModChallengeClearCount(challengeId)
end

---@param name string
---@return integer
function Isaac.GetNullItemIdByName(name)
end

---@return PersistentGameData
function Isaac.GetPersistentGameData()
end

---@param position Vector
---@param scale? boolean @default: `true`
---@return Vector
function Isaac.GetRenderPosition(position, scale)
end

---Returns the translation string associated with the given key in the given category. The translation is given in the currently selected language.
---@param category string
---@param key string
---@return string
function Isaac.GetString(category, key)
end

---Returns true if the challenge of the corresponding challengeid is completed.
---@param challengeId Challenge
function Isaac.IsChallengeDone(challengeId)
end

---Returns `true` if `Game` is non-nil and the current state is correct.
---@return boolean
function Isaac.IsInGame()
end

---Creates a new blank `LevelGeneratorEntry` object.
---@return LevelGeneratorEntry
function Isaac.LevelGeneratorEntry()
end

---@param challengeId Challenge
function Isaac.MarkChallengeAsNotDone(challengeId)
end

---Plays a cutscene.
---@param cutsceneId integer | Ending
function Isaac.PlayCutscene(cutsceneId)
end

---Sets the contents of the player's clipboard.
---@param clipboardData string
---@return boolean wasSet True if the player's clipboard contents were set successfully.
function Isaac.SetClipboard(clipboardData)
end

---Sets a completion mark value of a character.
---@param playerType PlayerType
---@param markType CompletionType
---@param value integer
function Isaac.SetCompletionMark(playerType, markType, value)
end

---Displays a Win32 message box.
---@param title string The title of the message box.
---@param text string The text of the message box.
---@param icon? DialogIcons @default: `DialogIcons.ERROR`. The icon of the message box.
---@param buttons? DialogButtons @default: `DialogButtons.OK`. The buttons on the message box.
---@return DialogReturn buttonPRessed The value that indicates the button pressed.
function Isaac.ShowErrorDialog(title, text, icon, buttons)
end

---Simulates a window resize, useful to refresh some option changes like `MaxRenderScale`.
function Isaac.TriggerWindowResize()
end

---Converts the World position from input to a pinned main menu position that varies depending on the enum selected. It's important to reconvert this every frame, in a similar fashion to `Isaac.WorldToRender`, in order to properly render when menus are changed or the window is resized.
---@param menuId MainMenuType
---@param position Vector
---@return Vector
function Isaac.WorldToMenuPosition(menuId, position)
end
