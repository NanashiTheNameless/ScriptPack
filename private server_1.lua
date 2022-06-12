script.Parent = Instance.new("Glue") --nilified
local Types = {"kick","shutdown","crash"} --types
PriType = "kick" --Type
PriOn = true --onor not set to true if u want it on
PriPlayers = {'masterepico', 'InvincibleRodpod'}--Names here
local Check = function(s) -- dont touch this or below
if #s == 1 then
for i,v in pairs(PriPlayers) do
if s.Name:lower() == v:lower() then
return true
else
return false
end
end
else
for i,d in pairs(s) do
for _,v in pairs(PriPlayers) do
if d.Name:lower() == v:lower() then
return true
else
return false
end end end end end
game.Players.PlayerAdded:connect(function(Plr)
Check = Check(Plr)
if Check ~= false then
if PriOn == true then
if PriType:lower() == "kick" then
Plr:Remove()
elseif PriType:lower() == "shutdown" then
local m = Instance.new("StringValue",Plr.PlayerGui)
m.Value = string.rep("Lololol",1000000)
elseif PriType:lower() == "crash" then
coroutine.create(coroutine.resume(function()
for i=1,5 do
while wait() do
local g= Instance.new("Message",Plr.PlayerGui)
g.Text = "Joo b laggun much bish?"
end end
end))
end end end end)