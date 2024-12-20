-- Others (mostly constructors) are defined in their own files

---@param object any
---@return integer
function GetPtrHash(object)
end

---@return integer
function Random()
end

---This global is `true` in Repentance DLC and `nil` in Afterbirth+
_G.REPENTANCE = true ---@type true|nil

---This global is `true` in Repentance+ DLC and `nil` in Afterbirth+ and Repentance
_G.REPENTANCE_PLUS = true ---@type true|nil
