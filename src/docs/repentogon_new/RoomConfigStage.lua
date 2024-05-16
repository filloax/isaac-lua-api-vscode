---@class RoomConfigStage
local RoomConfigStage = {}

---Returns the `BackdropType` used in default rooms on the stage.
---@return BackdropType
function RoomConfigStage:GetBackdrop()
end

---Returns the png used for the boss portrait on the boss intro.
---@return string
function RoomConfigStage:GetBossSpot()
end

---Returns the name of the stage.
---@return string
function RoomConfigStage:GetDisplayName()
end

---Returns the `Music` used in default rooms on the stage.
---@return Music
function RoomConfigStage:GetMusic()
end

---Returns the png used for the player portrait on the boss intro and nightmare transition.
---@return string
function RoomConfigStage:GetPlayerSpot()
end

---@param mode? integer @default: `0`
---|0 # Normal Mode rooms
---|1 # Greed Mode rooms
---@return RoomConfigSet
function RoomConfigStage:GetRoomSet(mode)
end

---Returns the suffix used by the stage for stage-unique sprites, such as the boss/player spot and unique variants for enemies.
---@return string
function RoomConfigStage:GetSuffix()
end

---Returns the `BackdropType` used in default rooms on the stage.
---@param backdropType BackdropType
function RoomConfigStage:SetBackdrop(backdropType)
end

---Sets the png used for the boss portrait on the boss intro.
---@param spritePath string
function RoomConfigStage:SetBossSpot(spritePath)
end

---Sets the name of the stage.
---@param name string 
function RoomConfigStage:SetDisplayName(name)
end

---Sets the `Music` used in default rooms on the stage.
---@param music Music
function RoomConfigStage:SetMusic(music)
end

---Sets the png used for the player portrait on the boss intro and nightmare transition.
---@param spritePath string
function RoomConfigStage:SetPlayerSpot(spritePath)
end

---Sets the suffix used by the stage for stage-unique sprites, such as the boss/player spot and unique variants for enemies.
---@param suffix string
function RoomConfigStage:SetSuffix(suffix)
end