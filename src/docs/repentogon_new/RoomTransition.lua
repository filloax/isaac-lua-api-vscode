---@class RoomTransition
_G.RoomTransition = {}

---TODO: Might become an enum. Documenting directly under function for now.
---@return integer TransitionMode
---|0 # NONE` When no transition is happening.
---|1 # EXIT_ROOM --When exiting the room.
---|2 # PAUSE_EXIT_ROOM --Still within the room you're exiting from, but playing a special non-direction room transition such as when teleporting.
---|3 # ENTER_ROOM --Entering and loading the room you moved into.
---|4 # PAUSE_ENTER_ROOM --Still within the room you're entering, but playing a special non-direction room transition such as when teleporting.
function RoomTransition.GetTransitionMode()
end

---Returns the versus screen sprite.
---@return Sprite
function RoomTransition.GetVersusScreenSprite()
end

---Returns true if the boss intro is currently rendering.
---@return boolean
function RoomTransition.IsRenderingBossIntro()
end

---Starts a boss intro.
---@param boss1 BossType
---@param boss2? BossType @default: `0`. If it is a non-zero value, a second boss will be rendered if the room is a Double Trouble encounter.
function RoomTransition.StartBossIntro(boss1, boss2)
end

---@return Sprite
function RoomTransition.GetPlayerExtraPortraitSprite()
end
