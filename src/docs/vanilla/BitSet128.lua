---@class BitSet128
---@field l integer
---@field h integer
---@operator bnot: BitSet128
---@operator bor(BitSet128): BitSet128
---@operator band(BitSet128): BitSet128
---@operator bxor(BitSet128): BitSet128
---@operator shl(BitSet128): BitSet128
---@operator shr(BitSet128): BitSet128

local BitSet128 = {}

---@param bitPosition integer
---@return boolean
function BitSet128:Get(bitPosition)
end

---@param bitPosition integer
---@param state boolean
function BitSet128:Set(bitPosition, state)
end

function BitSet128:__tostring()
end

---@param l? integer @default = `0`
---@param h? integer @default = `0`
---@return BitSet128
function _G.BitSet128(l, h)
end
