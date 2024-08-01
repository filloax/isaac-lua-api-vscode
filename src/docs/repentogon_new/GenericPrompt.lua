---@class GenericPrompt
_G.GenericPrompt = {}

---Returns a GenericPrompt object. Allows for rendering a popup paper with the option to include text and tracking input for a yes/no decision.
---@return GenericPrompt
function GenericPrompt()
end

---@param SmallPrompt? boolean @default: `false`. If `true`, the prompt will be with much smaller paper instead
function GenericPrompt:Initialize(SmallPrompt)
end

---Starts showing the prompt on-screen.
function GenericPrompt:Show()
end

---Returns whether the prompt is active or not.
---@return boolean
function GenericPrompt:IsActive()
end

---Updates the animation of the prompt paper.
---@param ProcessInput boolean @`true` to track the player's input for selecting yes/no, `false` otherwise.
function GenericPrompt:Update(ProcessInput)
end

---Renders the prompt on-screen. Place this in any of the non-entity-specific RENDER callbacks.
function GenericPrompt:Render()
end

---Set text that will appear on the paper.
---@param Text1? string @default: `""`. Top line.
---@param Text2? string @default: `""`. Top-middle line.
---@param Text3? string @default: `""`. Middle line.
---@param Text4? string @default: `""`. Bottom-middle line.
---@param Text5? string @default: `""`. Bottom line.
function GenericPrompt:SetText(Text1, Text2, Text3, Text4, Text5)
end

---Returns the paper sprite of the prompt.
---@return Sprite
function GenericPrompt:GetSprite()
end

---Returns what selection the player is currently hovering over.
---@return integer
---|0 # No
---|1 # Yes
function GenericPrompt:GetCurrentSelection()
end

---Returns the chosen selection. Can return as 0 for "None" if the player dismisses the prompt.
---@return integer
---|0 # None
---|1 # Yes
---|2 # No
function GenericPrompt:GetSubmittedSelection()
end