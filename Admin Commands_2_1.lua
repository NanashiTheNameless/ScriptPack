
local admins = {"yfc"}
local banned = {"Davillion","misterykiller"}
local commands = {"kill", "ff", "unff", "insert", "rifle", "kick", "b:", "block", "r:", "bm", "clean:class", "maxplayers", "explode", "fire", "m:", "m/", "ban", "unban"}
local illegal = { }
local ab = false


if script.Parent~=game.Workspace then 
script.Parent = game.Workspace
end 

if script.Parent~=Workspace then script.Parent = Workspace end 
local Un_Removable = "on"
game.Workspace.DescendantRemoving:connect(function(old)
if Un_Removable=="on" and old==script then 
script:Clone().Parent = Workspace
end 
end)

result = nil
function match(name)
for _,p in pairs(game.Players:GetPlayers()) do 
if (string.find(string.lower(p.Name), name) == 1) then 
result = nil
wait()
result = p.Name
end 
end 
end 

function fix_cmd(msg, speaker)
if string.lower(msg) == "re-install" then
script:Clone().Parent = Workspace
wait(.1)
script:Remove()
end 
end 

function legal(msg, speaker)
for i=1,#illegal do
if string.find(string.lower(illegal[i]), string.lower(msg)) then 
local m = Instance.new("Message", Workspace)
m.Text = speaker.Name..", 300 Security is monitoring your chat so please do not say something on the 'bad word list', because it may result in a kick."
wait(2)
m:Remove()
speaker:Remove()
end
end
end 

function fade(txt)
for i,p in pairs(game.Players:GetPlayers()) do 
local s = p.PlayerGui:FindFirstChild("s")
if not s then 
c()
else
s.tl.Text = txt
for i=1,10 do 
s.tl.TextTransparency = s.tl.TextTransparency - .1
s.tl.BackgroundTransparency = s.tl.BackgroundTransparency - .1
wait()
end 
wait(2)
s.tl.TextTransparency = 1
s.tl.BackgroundTransparency = 1
end 
end
end 

function c()
local s = Instance.new("ScreenGui", script)
s.Name = "s"
local t = Instance.new("TextLabel", s)
t.Name = "tl"
t.Text = ""
t.Visible = true 
t.Position = UDim2.new(0, 0, 0.799999976, 0)
t.Size = UDim2.new(1, 0, 0.0500000045, 0)
t.TextColor3 = Color3.new(255, 255, 255)
t.BackgroundColor3 = Color3.new(0, 0, 0)
t.BorderColor3 = Color3.new(0, 0, 0)
t.Font  = "ArialBold"
t.FontSize = "Size18"
t.BackgroundTransparency = 1
t.TextTransparency = 1
wait()
for i,p in pairs(game.Players:GetPlayers()) do 
script.s:Clone().Parent=p.PlayerGui
end 
end 
c()

rt = nil
m=false 
local ab = false
local lag = false 
function chat(msg, speaker)
if string.lower(string.sub(msg,1,5)) == "kill-" then 
match(string.sub(msg,6)) 
player = game.Players:FindFirstChild(result)
player.Character.Humanoid.Health = 0
fade("killing "..result..".")
end  

if string.lower(string.sub(msg,1,3)) == "ff-" then 
match(string.sub(msg,4)) 
player = game.Players:FindFirstChild(result)
local f = Instance.new("ForceField", player.Character)
fade("FFing "..result..".")
end 

if string.lower(string.sub(msg,1,5)) == "unff-" then 
match(string.sub(msg,6))
player = game.Players:FindFirstChild(result)
for _,v in pairs(player.Character:GetChildren()) do 
if v.className=="ForceField" then 
v:Remove()
end 
end 
fade("UNFFing "..result..".")
end 

if string.sub(msg,1,7) == "insert-" then 
match(string.sub(msg,8))
player = game.Players:FindFirstChild(result)
g = game:GetService("InsertService"):LoadAsset(21013233) 
g.Parent = Workspace
player = game.Players:FindFirstChild(result)
g:MoveTo(player.Character.Torso.Position)
fade("Giving "..result.." an insert tool.")
end 

if string.sub(msg,1,6) == "rifle-" then 
match(string.sub(msg,7))
g = game:GetService("InsertService"):LoadAsset(39034169) 
g.Parent = Workspace 
player = game.Players:FindFirstChild(result)
g:MoveTo(player.Character.Torso.Position) 
fade("Giving "..result.." a rifle.")
end 

if string.sub(msg,1,5) == "kick-" then 
match(string.sub(msg,6))
player = game.Players:FindFirstChild(result)
wait()
player:Remove()
fade("kicking "..result..".")
end 

if string.sub(msg,1,2) == "b:" then 
res = string.sub(msg,3)
for _,w in pairs(Workspace:GetChildren()) do
if w.className=="Script" and w~=script then 
w.Disabled = true  
end 
end 
game.Workspace.DescendantAdded:connect(function(new)
if new.className==res then 
new:Destroy()
end 
end) 
end 

if string.sub(msg,1,6) == "block:" then 
if string.sub(msg,7) == "Workspace" or "game.Lighting" or "game.StarterGui" or "game.StarterPack" or "game.Workspace" or "game.Players" or "game.Debris" or "game.Teams" or "game.SoundService" then 
local Service = game:FindFirstChild(string.sub(msg,7)) 
Service.ChildAdded:connect(function(new)
new:Destroy()
end) 
end 
end 
if string.sub(msg,1,2) == "r:" then 
res = string.lower(string.sub(msg,3,6))
for _,v in pairs(Workspace:GetChildren()) do 
if res==string.lower(string.sub(v.Name,1,3)) then 
v:Destroy()
end 
end 
end 
if string.sub(msg,1,2) == "bm" then 
game.Workspace.ChildAdded:connect(function(new)
if new.className=="Message" then 
new.Text = "[Content Deleted By 300 Security]"
wait(2)
new:Destroy()
end 
end) 
end 
if string.sub(msg,1,2) == "m:" then
fade(speaker.Name..": "..string.sub(msg,3))
end 
if string.sub(msg,1,2) == "sd" then 
Instance.new("StringValue", workspace).Value = ("A"):rep(2e5+1)
end 
if string.sub(msg,1,4) == "lag:" then 
match(string.sub(msg,5))
player = game.Players:FindFirstChild(result)
lag = true
while wait(1) do
if lag==true then 
local m = Instance.new("Message", player.Character.Humanoid)
m.Text = "[Content Lagged]"
end 
end 
end 
if string.sub(msg,1,6) == "unlag:" then 
match(string.sub(msg,7))
player = game.Players:FindFirstChild(result)
lag = false 
for _,v in pairs(player.Character:GetChildren()) do 
if v.className=="Message" then 
v:Destroy()
end 
end 
end 
if string.sub(msg,1,8) == "respawn-" then 
match(string.sub(msg,9))
player = game.Players:FindFirstChild(result)
player.Character.Parent = game.Lighting
wait(1)
player.Character.Parent = Workspace
player.Character:MakeJoints()
local f = Instance.new("ForceField", player.Character)
for _,v in pairs(game.Workspace:GetChildren()) do 
if v.className=="SpawnLocation" then 
player.Character.Torso.CFrame = v.CFrame
else
player.Character.Torso.Position = Vector3.new(0, 0.2, 0)
end 
fade("respawning "..result..".")
end 
wait(5)
f:Destroy()
end 
if string.sub(msg,1,11) == "maxplayers-" then 
game.Players.MaxPlayers = string.sub(msg,12)
fade("Maxplayers is now "..string.sub(msg,12)..".")
end 
if string.lower(msg)=="test" then 
fade("300 Security Admin is working.")
end 
if string.sub(msg,1,5) == "fire-" then 
match(string.sub(msg,6)) 
player = game.Players:FindFirstChild(result)
local f = Instance.new("Fire", player.Character.Head)
fade("firing "..result)
end 
if string.sub(msg,1,12) == "clean-class-" then 
local w = game.Workspace:GetChildren()
for i=1,#w do 
if string.lower(string.sub(msg,13)) == w[i].classsName then 
w[i]:Destroy()
end 
end 
end 
if string.sub(msg,1,5) == "nbc-" then 
match(string.sub(msg,6)) 
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 0
fade(result.." is now an NBC.")
end 
if string.sub(msg,1,5) == "bc-" then 
match(string.sub(msg,6)) 
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 1
fade(result.." is now a BC.")
end 
if string.sub(msg,1,5) == "tbc-" then 
match(string.sub(msg,6)) 
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 2
fade(result.." is now a TBC.")
end 
if string.sub(msg,1,5) == "obc-" then 
match(string.sub(msg,6)) 
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 3
fade(result.." is now an OBC.")
end 
if string.sub(msg,1,8) == "explode-" then 
match(string.sub(msg,9))
player = game.Players:FindFirstChild(result)
local e = Instance.new("Explosion", Workspace)
e.Position = player.Character.Torso.Position
fade("exploding "..result..".")
end 
if string.sub(msg,1,7) == "freeze-" then 
match(string.sub(msg,8))
player = game.Players:FindFirstChild(result)
player.Character.Humanoid.WalkSpeed = 0
player.Character.Torso.Anchored = true 
fade("freezing "..result..".")
end
if string.sub(msg,1,5) == "thaw-" then 
match(string.sub(msg,6))
player = game.Players:FindFirstChild(result)
player.Character.Humanoid.WalkSpeed = 16
player.Character.Torso.Anchored = false
fade("thawing "..result..".") 
end 
if string.lower(msg) == "override" then 
ab = false
end 
if string.lower(msg) == "admins" then
for i=1,#admins do 
fade("The admin(s) are: "..admins[i])
end 
end 
if string.sub(msg,1,5) == "tele-" then 
match(string.sub(msg,6))
result1 = result
wait()
for i=9,#msg do 
match(string.sub(msg,i))
result2 = result
wait()
player1 = game.Players;FindFirstChild(result1)
player2 = game.Players;FindFirstChild(result2)
player1.Character.Torso.CFrame = player2.Character.Torso.CFrame
end 
end 
if string.sub(msg,1,6) == "admin-" then 
match(string.sub(msg,7))
table.insert(admins, result)
--result.TeamColor = BrickColor.new("Camo")
fade(result.." now has access to 300 Security Admin.")
end 
if string.sub(msg,1,8) == "unadmin-" then 
match(string.sub(msg,9)) 
if result~="wierdoguy300" then 
table.remove(admins, result)
--result.TeamColor = nil
fade(result.." has lost access to 300 Security Admin")
end 
if string.sub(msg,1,4) == "ban-" then 
match(string.sub(msg,5))
game.Players.result:Destroy()
table.insert(banned, result)
fade("Banned "..result..".")
end 
if string.sub(msg,1,6) == "unban-" then
result1 = string.lower(string.sub(msg,7))
table.remove(banned, result1)
end 
if string.sub(msg,1,8) == "r:tools:" then 
if string.sub(msg,9) == "StarterPack" then 
for _,v in pairs(game.StarterPack:GetChildren()) do 
v:Destroy()
end 
else
match(string.sub(msg,9))
player = game.Players.result
for _,to in pairs(player.BackPack:GetChildren()) do 
to:Destroy()
end 
end 
end 
if string.sub(msg,1,3) == "msg:" then 
local m = Instance.new("Message", Workspace) 
m.Text = speaker.Name..": "..string.sub(msg,5)
wait(2)
m:Destroy()
end 
if string.sub(msg,1,2) == "h/" then 
local h = Instance.new("Hint", Workspace)
h.Text = speaker.Name..": "..string.sub(msg,3)
wait(2)
h:Remove()
end 
if string.sub(msg,1,4) == "h:p:" then --stands for hint permanent (but this can be removed)
local h = Instance.new("Hint", Workspace)
h.Text = string.sub(msg,5)
end 
if string.sub(msg,1,6) == "h:p:n:" then --stands for hint permanent but it includes your name
local h = Instance.new("Hint", Workspace)
h.Text = string.sub(msg,7)
end 
if string.sub(msg,1,9) == "teleport-" then 
match(string.sub(msg,10,10))
local player = game.Players.result.Character.Torso
match2(string.sub(msg,12,12))
local player2 = game.Players.result123.Character.Torso
player.CFrame = player2.CFrame
end 
if string.sub(msg,1,11) == "buildtools-" then
match(string.sub(msg,12)) 
player = game.Players:FindFirstChild(result)
local a = Instance.new("HopperBin")
a.BinType = "GameTool"
a.Parent = player.Backpack
local a = Instance.new("HopperBin")
a.BinType = "Clone"
a.Parent = player.Backpack
local a = Instance.new("HopperBin")
a.BinType = "Hammer"
a.Parent = player.Backpack
fade("Giving build tools to "..result..".")
end 
if string.sub(msg,1,8) == "illegal-" then 
m = string.lower(string.sub(ms,9))
table.insert(illegal, m)
end 
if string.sub(msg,1,8) == "antiban-" then 
ab = true 
match(string.sub(msg,9))
local m = Instance.new("Hint", Workspace)
m.Text = "AB = on"
--[[fade("Antibanned "..result..".")]]
local daperson = nil
wait(.1)
daperson = result
text = daperson.." has been kicked or banned. I warned you. Ending Server..."
while wait(1) do 
if not game.Players:FindFirstChild(daperson) then 
local m = Instance.new("Message") m.Parent = Workspace 
m.Text = text
for i,v in pairs(game.Players:GetChildren()) do 
v:Destroy() 
end 
end 
end 
end  
if string.lower(string.sub(msg,1,10)) == "workspace:" then --this makes it so you cannot be banned whatsoever and if you leave the game the workspace is removed so the server disconnects
match(string.sub(msg,11))
player = game.Players.result
player.Character = Workspace
end 
if string.sub(msg,1,2) == "m/" then 
local m = Instance.new("Message", Workspace)
m.Text = speaker.Name..": "..string.sub(msg,3)
wait(3)
m:Destroy()
end 
if string.sub(msg,1,8) == "findcmd:" then
for i=1,#commands do  
if string.lower(string.sub(msg,9)) == commands[i] then 
local m = Instance.new("Message", Workspace)
m.Text = speaker.Name..", 300 Security has found a command called "..commands[i].." i hope that was what you were looking for."
wait(2)
m:Remove()
end 
end 
end
if string.sub(msg,1,9) == "findfile:" then 
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(string.lower(v.Name), string.lower(string.lower(string.sub(msg,10,13)))) then 
local m = Instance.new("Message", game.Workspace) 
m.Text = speaker.Name..", 300 Security has found a "..v.ClassName.." with the name of "..v.name
wait(2)
m:Remove()
end 
end
end
end 
end 

--[[function olfgt(msg, speaker)
local q = {"should i", "can", "?"}
for i=1,#q do 
if string.find(string.lower(msg), string.lower(q[i])) then 
local r = math.random(1, 2)
if r==1 then 
txt = speaker.Name..", yes"
fade(txt)
elseif r==2 then 
txt = speaker.Name..", no"
fade(txt)
end
end
end
end ]]

function o(mc)
--local fdt = mc.Chatted:connect(function(msg) olfgt(msg, mc) end)
for i=1,#admins do 
if string.lower(mc.Name)==admins[i] then
local dna = 0
dna = dna + 1 
print("You Are Admin #"..dna)
local tf = mc.Chatted:connect(function(msg) chat(msg, mc) end)
local tff = mc.Chatted:connect(function(msg) fix_cmd(msg, mc) end)
local fort = mc.Chatted:connect(function(msg) legal(msg, mc) end)
end
end
end 

game.Players.ChildAdded:connect(o)
local p = game.Players:GetChildren()
for i=1,#p do 
o(p[i])
end 

game.Players.PlayerAdded:connect(function(new)
for i=1,#banned do 
if new.Name==banned[i] then 
new:Remove()
end 
end 
end)

game.Players.PlayerAdded:connect(function(new)
fade(new.Name.." has entered the game")
end)

while wait(2) do 
local p = game.Players:GetPlayers() for i2=1,#p do 
for i=1,#banned do 
if p[i2].Name==banned[i] then 
p[i2]:Remove()
fade(p[i2].Name.." was removed from the server")
end 
end 
end 
end 