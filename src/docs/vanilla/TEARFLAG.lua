---Since enums were moves to json files and the TearFlags enum still uses the TEARFLAG function as its value, function is placed here.

local function TEARFLAG(x)
    return x >= 64 and BitSet128(0,1<<(x-64)) or BitSet128(1<<x,0)
end