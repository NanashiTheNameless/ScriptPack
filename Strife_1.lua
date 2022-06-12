local script, game, spawn, shared, wait, tostring, getfenv, setfenv, setmetatable, select, require, type = script, game, spawn, shared, wait, tostring, getfenv, setfenv, setmetatable, select, require, type
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local SourceModule = script:WaitForChild("SourceModule")
local DataObject = script:WaitForChild("Data")
local OldEnv = getfenv(0)
local Reference = setmetatable({}, {__index = OldEnv})
local OwnsScript = true
local EnvDebounce = false
script:ClearAllChildren()
while not getmetatable(shared) do
  wait()
end
local CoreFunctions = shared("05718041653237031353491381139779549032903822803424088646901199908863516", "GetCoreFunctions")
if #CoreFunctions ~= 9 then
  return
end
local Output, RegisterLocal, CheckDisabled, OutputServer, NLS, NS, GetSettings, json_decode, json_encode = unpack(CoreFunctions)
local Data = json_decode(DataObject.Value)
local ScriptName, RealOwner, Message, SecondaryMessage, Identifier = Data.ScriptName, Data.RealOwner, Data.Message, Data.SecondaryMessage, Data.Identifier
local function _CheckDisabled()
  if CheckDisabled(Identifier) then
    return error("Script Disabled", 0)
  end
end
local NewEnv = setmetatable({}, {
  __index = function(self, index)
    local ResetDebounce = false
    if not EnvDebounce then
      ResetDebounce = true
      EnvDebounce = true
      _CheckDisabled()
    end
    local ToReturn = Reference[index]
    if ResetDebounce then
      EnvDebounce = false
    end
    if ToReturn == require then
      return nil
    end
    return ToReturn
  end,
  __metatable = "This metatable is locked"
})
spawn(function()
  if RealOwner ~= LocalPlayer.UserId then
    OwnsScript = false
    local Settings = GetSettings()
    local LocalsBlocked = Settings[2]
    if LocalsBlocked == true then
      local Username = Players:GetNameFromUserIdAsync(RealOwner)
      Output("alert", "Successfully blocked a LocalScript from " .. Username)
      OutputServer("alert", RealOwner, LocalPlayer.Name .. " has blocked your LocalScript")
      return
    end
  end
  RegisterLocal(Identifier, LocalPlayer.UserId, ScriptName, script)
  Reference.print = setfenv(function()
    _CheckDisabled()
    local Arguments = {
      ...
    }
    for i = 1, select("#", ...) do
      Arguments[i] = tostring(Arguments[i])
    end
    Output("print", table.concat(Arguments, "\t"))
  end, NewEnv)
  Reference.warn = setfenv(function()
    _CheckDisabled()
    local Arguments = {
      ...
    }
    for i = 1, select("#", ...) do
      Arguments[i] = tostring(Arguments[i])
    end
    Output("warn", table.concat(Arguments, "\t"))
  end, NewEnv)
  Reference.NLS = setfenv(function()
    return NLS(...)
  end, NewEnv)
  Reference.NS = setfenv(function()
    return NS(...)
  end, NewEnv)
  Reference.NewLocalScript = Reference.NLS
  Reference.NewScript = Reference.NS
  Reference.owner = LocalPlayer
  setfenv(1, NewEnv)
  setfenv(0, NewEnv)
  Output("running", Message)
  if not OwnsScript and SecondaryMessage ~= "" then
    OutputServer("running", RealOwner, SecondaryMessage)
  end
  local Function = require(SourceModule)
  if not Function or type(Function) ~= "function" then
    return
  end
  Function = setfenv(Function, NewEnv)
  Function()
end)
