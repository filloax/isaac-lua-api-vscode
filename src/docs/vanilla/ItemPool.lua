---@class ItemPool
local ItemPool = {}

---@param Add integer
---@param PoolType ItemPoolType
function ItemPool:AddBibleUpgrade(Add, PoolType)
end

---@param Item CollectibleType
function ItemPool:AddRoomBlacklist(Item)
end

---@param ID PillEffect
---@return PillColor
function ItemPool:ForceAddPillEffect(ID)
end

---@param Seed integer
---@param Playing boolean
---@param Rune boolean
---@param OnlyRunes boolean
---@return Card
function ItemPool:GetCard(Seed, Playing, Rune, OnlyRunes)
end

---@return ItemPoolType
function ItemPool:GetLastPool()
end

---@param Seed integer
---@return PillColor
function ItemPool:GetPill(Seed)
end

---@param PillColor PillColor
---@param Player? EntityPlayer @default: `nil`
---@return PillEffect
function ItemPool:GetPillEffect(PillColor, Player)
end

---@param RoomType RoomType
---@param Seed integer
---@return ItemPoolType
function ItemPool:GetPoolForRoom(RoomType, Seed)
end

---@param DontAdvanceRNG? boolean @default: `false`
---@return TrinketType
function ItemPool:GetTrinket(DontAdvanceRNG)
end

---@param PillColor PillColor
function ItemPool:IdentifyPill(PillColor)
end

---@param PillColor PillColor
---@return boolean
function ItemPool:IsPillIdentified(PillColor)
end

---@param Collectible CollectibleType
---@return boolean
function ItemPool:RemoveCollectible(Collectible)
end

---@param Trinket TrinketType
---@return boolean
function ItemPool:RemoveTrinket(Trinket)
end

function ItemPool:ResetRoomBlacklist()
end

function ItemPool:ResetTrinkets()
end
