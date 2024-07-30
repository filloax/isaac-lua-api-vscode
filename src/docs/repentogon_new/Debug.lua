---@class Debug
Debug = {}

---@param moduleName string
function Debug.ForceUnload(moduleName)
end

---@param addr integer
---@return string
function Debug.GetSignature(addr)
end

--- Returns a list of all files loaded into the LUA environment.
---@return string[]
function Debug.ListLoadedFiles()
end