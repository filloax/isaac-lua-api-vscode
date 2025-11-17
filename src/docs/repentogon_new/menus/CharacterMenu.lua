---@class CharacterMenu
_G.CharacterMenu = {}

---Returns the big "Who Am I?" page sprite
---@return Sprite
function CharacterMenu.GetBigCharPageSprite()
end

---Returns the background sprite (BG drawings, tainted menu swap in/out animations)
---@return Sprite
function CharacterMenu.GetBGSprite()
end

---@return Sprite
function CharacterMenu.GetCharacterPortraitSprite()
end

---@return number
function CharacterMenu.GetCharacterWheelDepth()
end

---@return number
function CharacterMenu.GetCharacterWheelWidth()
end

---@return Difficulty
function CharacterMenu.GetDifficulty()
end

---@return Sprite
function CharacterMenu.GetDifficultyPageSprite()
end

---Returns the sprite of the blood stain when selecting Hard mode / Greedier.
---@return Sprite
function CharacterMenu.GetDifficultyOverlaySprite()
end

---@return Sprite
function CharacterMenu.GetEastereggPageSprite()
end

---Returns `true` if the currently selected character is unlocked.
---@return boolean
function CharacterMenu.GetIsCharacterUnlocked()
end

---Returns the greed decoration sprite (When selecting Greed or Greedier Mode).
---@return Sprite
function CharacterMenu.GetGreedDecoSprite()
end

---Returns the number of characters in the wheel.
---@return integer
function CharacterMenu.GetNumCharacters()
end

---@return Sprite
function CharacterMenu.GetPageSwapWidgetSprite()
end

---Returns the speed of the animation playing when rotating the selection wheel.
---@return number
function CharacterMenu.GetScrollSpeed()
end

---@return Sprite
function CharacterMenu.GetSeedEntrySprite()
end

---@return Sprite
function CharacterMenu.GetSeedPageSprite()
end

---@return Sprite
function CharacterMenu.GetSeedUnlockPageSprite()
end

---Returns the currently selected character menu.
---@return integer
---|0 # Normal
---|1 # Tainted
function CharacterMenu.GetSelectedCharacterMenu()
end

---Returns the element ID of the currently selected character.
---@return integer
function CharacterMenu.GetSelectedCharacterID()
end

---Returns the tainted background decoration sprite.
---@return Sprite
function CharacterMenu.GetTaintedBGDecoSprite()
end

---Returns the win streak page sprite.
---@return Sprite
function CharacterMenu.GetWinStreakPageSprite()
end

---Sets the character wheel's depth.
---@param depth number
function CharacterMenu.SetCharacterWheelDepth(depth)
end

---Sets the character wheel's width.
---@param width number
function CharacterMenu.SetCharacterWheelWidth(width)
end

---@param difficulty Difficulty
function CharacterMenu.SetDifficulty(difficulty)
end

---Locks or unlocks the currently selected character.
---@param unlocked boolean
function CharacterMenu.SetIsCharacterUnlocked(unlocked)
end

---Sets the character wheel's scroll speed.
---@param speed number
function CharacterMenu.SetScrollSpeed(speed)
end

---Sets the current character menu.
---@param menu integer
---|0 # Normal
---|1 # Tainted
function CharacterMenu.SetSelectedCharacterMenu(menu)
end

---Sets the current character ID.
---@param ID integer
function CharacterMenu.SetSelectedCharacterID(ID)
end

---@return PlayerType
---@param characterMenuID integer
---@param tainted? boolean @Default: Current menu
function CharacterMenu.GetPlayerTypeFromCharacterMenuID(characterMenuID, tainted)
end

---Note that the normal/tainted versions of a character have the same CharacterMenuID.
---@return integer
---@param playerType PlayerType
function CharacterMenu.GetCharacterMenuIDFromPlayerType(playerType)
end

---Returns the PlayerType for the character currently selected in the menu.
---@return PlayerType
function CharacterMenu.GetSelectedCharacterPlayerType()
end

---@return CharacterMenuStatus
function CharacterMenu.GetActiveStatus()
end

---@param status CharacterMenuStatus
function CharacterMenu.SetActiveStatus(status)
end