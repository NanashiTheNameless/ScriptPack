local SupAdmin = {"acb227", "FlamedSkull", "TheNewScripter", "Bob371", "Visualist"} 
local Admin = {} 
local mods = {} 
local banned = {} 

function shutdown(time) 
local hint = Instance.new("Hint", workspace) 
for i = 1, time do 
wait(1) 
x = time - i 
hint.Text = "ShutDown in " ..x.. "!" 
end 
end 

function msg(text, time) 
local msg = Instance.new("Message") 
msg.Parent = workspace 
msg.Text = text 
wait(time) 
msg:remove() 
end 

function kick(player, why) 
local hint = Instance.new("Hint", workspace) 
hint.Text = "Kicking Player: " ..player.. ", Reason: " ..why.. "!" 
wait(1) 
game.Players[player].Character:BreakJoints() 
wait(1) 
hint:remove() 
end 

function respawn(player) 
pl = game.Players[player] 
g=pl.PlayerGui:GetChildren()
for i=1,#g do
g[i]:Remove()
end 
g=pl.Backpack:GetChildren()
for i=1,#g do
g[i]:Remove()
end 
g=pl.Character:GetChildren()
for i=1,#g do
if g[i].className ~="Humanoid" then
g[i]:Remove()
end
end
end 

function kill(player) 
pl = game.Players[player] 
pl.Character:BreakJoints() 
end 

function ban(player, reason) 
local hint = Instance.new("Hint", workspace) 
hint.Text = "Banning Player: " ..player.. ", Reason: " ..reason.. "!" 
wait(1) 
table.insert(banned, player) 
wait(1) 
hint:remove() 
end 

function unban(player, reason) 
local hint = Instance.new("Hint", workspace) 
hint.Text = "unBanning Player: " ..player.. ", Reason: " ..reason.. "!" 
wait(1) 
wait(1) 
hint:remove() 
end 

function onChatted(msg) 
if string.sub(msg, 1, 4) == "ban;" then 
local said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ban(look[i].Name, "Testing purposes") 
end 
end 
end 
if string.sub(msg, 1, 6) == "unban;" then 
local said = string.lower(string.sub(msg, 7)) 
look = banned
for i = 1, #look do 
if string.find(string.lower(look[i]), said) == 1 then 
unban(look[i], "Testing purposes") 
table.remove(banned, look[i]) 
end 
end 
end 
end 

while true do 
for _,v in pairs(game.Players:GetChildren()) do 
for _,b in pairs(banned) do 
if v.Name == b then 
if v.Character ~= nil then 
v.Character:BreakJoints() 
end 
end 
end 
end 
wait() 
for _,v in pairs(game.Players:GetChildren()) do 
for _,b in pairs(SupAdmin) do 
if v.Name == b then 
v.Chatted:connect(onChatted) 
end 
end 
end 
end 
