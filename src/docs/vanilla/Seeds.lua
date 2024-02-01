---@class Seeds
_G.Seeds = {}

---@param Value SeedEffect
function Seeds:AddSeedEffect(Value)
end

---@param Value SeedEffect
---@return boolean
function Seeds:CanAddSeedEffect(Value)
end

function Seeds:ClearSeedEffects()
end

function Seeds:ClearStartSeed()
end

---@return integer
function Seeds:CountSeedEffects()
end

---@return integer
function Seeds.CountUnlockedSeedEffects()
end

---@param Stage LevelStage
function Seeds:ForgetStageSeed(Stage)
end

---@return integer
function Seeds:GetNextSeed()
end

---@return integer
function Seeds:GetPlayerInitSeed()
end

---@param str string
---@return SeedEffect
function Seeds.GetSeedEffect(str)
end

---@param Stage LevelStage
---@return integer
function Seeds:GetStageSeed(Stage)
end

---@return integer
function Seeds:GetStartSeed()
end

---@return string
function Seeds:GetStartSeedString()
end

---@param Value SeedEffect
---@return boolean
function Seeds:HasSeedEffect(Value)
end

function Seeds.InitSeedInfo()
end

---@return boolean
function Seeds:IsCustomRun()
end

---@return boolean
function Seeds:IsInitialized()
end

---@param Seed1 SeedEffect
---@param Seed2 SeedEffect
---@return boolean
function Seeds:IsSeedComboBanned(Seed1, Seed2)
end

---@param str string
---@return boolean
function Seeds.IsSpecialSeed(str)
end

---@param str string
---@return boolean
function Seeds.IsStringValidSeed(str)
end

---@param Value SeedEffect
function Seeds:RemoveBlockingSeedEffects(Value)
end

---@param Value SeedEffect
function Seeds:RemoveSeedEffect(Value)
end

function Seeds:Reset()
end

---@param CurrentChallenge Challenge
function Seeds:Restart(CurrentChallenge)
end

---@param seed integer
---@return string
function Seeds.Seed2String(seed)
end

---@param StartSeed string
function Seeds:SetStartSeed(StartSeed)
end

---@param str string
---@return integer
function Seeds.String2Seed(str)
end

