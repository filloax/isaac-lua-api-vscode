---@class CostumeSpriteDesc
local CostumeSpriteDesc = {}

---@return boolean
function CostumeSpriteDesc:CanOverwriteColor() end

---@return SkinColor
function CostumeSpriteDesc:GetBodyColor() end

---@return SkinColor
function CostumeSpriteDesc:GetHeadColor() end

---@return ItemConfigItem
function CostumeSpriteDesc:GetItemConfig() end

---@return boolean
function CostumeSpriteDesc:GetPlayerType() end

---@return boolean
function CostumeSpriteDesc:GetPriority() end

---Returns sprite of associated to the costume.
---@return Sprite
function CostumeSpriteDesc:GetSprite() end

---@return boolean
function CostumeSpriteDesc:HasOverlay() end

---@return boolean
function CostumeSpriteDesc:HasSkinAlt() end

---@return boolean
function CostumeSpriteDesc:IsFlying() end

---@return boolean
function CostumeSpriteDesc:IsItemAnimPlaying() end

---@return boolean
function CostumeSpriteDesc:IsItemStateOnly() end
