--300SecurityAdminTech Gifted by TheRedAngel, Regular Script!

--[[
Welcome to 300 Security Admin Techonlogy, To join the team, please send a private message to Wierdoguy300
300SecurityAdminTech. - All Rights Reserved 
300SecurityAdminTech. - CopyRight 2012
300SecurityAdminTech. - Has Encrypted This File For An Anti-Pirating Act 
300SecurityAdminTech. - Auto-Updating Feature Is Still In Progress   
------------------------------------SETTINGS------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ]]
local version = 0 + .1 / .1 - .9 + .9 - .9 + -.1 + 1.5 --Dont mess with this as it may cause the commands to break down
print(script.Name.." Version "..version.." Loaded!")
local admins = {"BRICKER24alt"} --Not CAsE SeNSitiVe
local banned = {}
local symbol = "/"
local txthelp = ""
local txtnum = 0
local Admin_Updater = version
local sym = #symbol
local ablist = {}
local blocked = {}
local abplayer = nil
local abtime = 30
local here = true 
local override=false 
local cmd = {{"Kill", "Kills A Player", "kill/player"}, {"Kick", "Kicks A Player", "kick/player"}, {"Ban", "Bans A Player", "ban/player"}, {"ff", "Gives Player A ForceField", "ff/player"}, {"unff", "Removes Players ForceField", "unff/player"}, {"epic", "Gives Player Unlimited Health", "epic/player"}} 
------------------------------------END OF SETTINGS--------------------------
script.Name="300SecurityAdminTech"
create = function(txt)
local s = Instance.new("ScreenGui", script)
s.Name = "A_New_Alert"
local t = Instance.new("TextLabel", s)
t.Name = "A_New_Alert"
t.Text = ""
t.Visible = true 
t.Position = UDim2.new(0, 0, 0.199999976, 0)
t.Size = UDim2.new(1, 0, 0.0500000045, 0)
t.TextColor3 = Color3.new(255, 255, 255)
t.BackgroundColor3 = Color3.new(0, 0, 0)
t.BorderColor3 = Color3.new(255, 255, 255)
t.Font  = "ArialBold"
t.FontSize = "Size18"
t.BackgroundTransparency = 1
t.TextTransparency = 1
t.Text = "[300SecurityAdminTech] "..txt
for i,p in pairs(game.Players:GetPlayers()) do 
s:Clone().Parent = p.PlayerGui
for i=1,20 do 
p.PlayerGui.A_New_Alert.A_New_Alert.TextTransparency = p.PlayerGui.A_New_Alert.A_New_Alert.TextTransparency - .05
p.PlayerGui.A_New_Alert.A_New_Alert.BackgroundTransparency = p.PlayerGui.A_New_Alert.A_New_Alert.BackgroundTransparency - .05
wait(0.01) 
end 
end 
end 
Un_Removeable = function(old)
if old==script then 
script:Clone().Parent = Workspace
end
end 
alert = function(txxt)
create(txxt)
end 
cleanup = function(time)
wait(time)
for i,p in pairs(game.Players:GetPlayers()) do 
if p.PlayerGui:FindFirstChild("A_New_Alert") then 
p.PlayerGui.A_New_Alert:Destroy()
end
end
end 
alert("300 Security Admin Made By Wierdoguy300, Was Successfully Loaded!")
cleanup(3)

local result = nil
search = function(name)
for _,p in pairs(game.Players:GetPlayers()) do 
if (string.find(string.lower(p.Name), name) == 1) then 
result = nil
wait()
result = p.Name
end 
end 
end 
debug = function(msg,speaker)
if string.lower(msg)=="debug" then 
script:Destroy()
end
end 
commands = function(msg,speaker)
if string.sub(msg,1,4 + sym) == "kill"..symbol then 
search(string.sub(msg,5 + sym))
player = game.Players:FindFirstChild(result)
player.Character.Humanoid.Health = 0
alert(player.Name.." Has Been Killed")
cleanup(2)
end
if string.lower(string.sub(msg,1,4 + sym)) == "kick"..symbol then 
search(string.sub(msg,5 + sym))
player = game.Players:FindFirstChild(result)
player:Destroy()
alert(result.." Has Been Kicked.")
cleanup(2)
end 
if string.lower(string.sub(msg,1,3 + sym)) == "ban"..symbol then 
search(string.sub(msg,4 + sym))
player = game.Players:FindFirstChild(result)
table.insert(banned, player.name)
player:Destroy()
alert(result.." Has Been Banned.")
cleanup(2)
end 
if string.lower(string.sub(msg,1,2 + sym)) == "86"..symbol then 
search(string.sub(msg,3 + sym))
player = game.Players:FindFirstChild(result)
player:Destroy()
end 
if string.lower(string.sub(msg,1,2 + sym)) == "ff"..symbol then 
search(string.sub(msg,3 + sym))
player = game.Players:FindFirstChild(result)
local f = Instance.new("ForceField", player.Character)
alert(player.Name.." Now Has A ForceField.")
cleanup(2)
end 
if string.lower(string.sub(msg,1,4 + sym)) == "unff"..symbol then 
search(string.sub(msg,5 + sym))
player = game.Players:FindFirstChild(result)
for i,f in pairs(player.Character:GetChildren()) do 
if f:FindFirstChild("ForceField") then 
f.ForceField:Destroy()
end
end 
alert(player.Name.." Lost Their ForceField")
cleanup(2)
end 
if string.sub(msg,1,4 + sym) == "epic"..symbol then 
search(string.sub(msg,5 + sym))
player = game.Players:FindFirstChild(result)
player.Character.Humanoid.MaxHealth = math.huge
alert(player.Name.." Now Has Unlimited Health")
cleanup(2)
end
if string.sub(msg,1,1 + sym) == "m"..symbol then 
alert(speaker.Name..": "..string.sub(msg,2 + sym))
cleanup(2)
end
if string.sub(msg,1,1 + sym) == "c"..symbol then 
pcall(function()
loadstring(string.sub(msg,2 + sym))()
end)
end 
if string.sub(msg,1,3 + sym) == "msg"..symbol then 
local m = Instance.new("Message", Workspace)
m.Name="3SA_New_Message"
m.Text = speaker.Name..": "..string.sub(msg,4 + sym)
wait(3)
m:Destroy()
end
if string.lower(msg) == "enable" then 
disabled = false 
alert("The Game has Been Re-Enabled")
cleanup(2)
end
if string.lower(msg) == "disable" then 
disabled = true 
alert("The Game has Been Disabled")
cleanup(2)
end
if string.lower(string.sub(msg,1,4 + sym)) == "warn"..symbol then 
local an = search(string.sub(msg,5 + sym))
player = game.Players:FindFirstChild(result)
table.insert(warn, 1, player.name)
alert(player.Name.." has Been Warned, Do Not Do It Again!")
end
if string.lower(msg) == "fog" then 
game:service("Lighting").FogStart  = 0 
game:service("Lighting").FogEnd  = 100 
alert("The Server Has Been Fogged")
cleanup(2)
end 
if string.lower(string.sub(msg,1,6 + sym)) == "freeze"..symbol then 
local an = search(string.sub(msg,7 + sym))
player = game.Players:FindFirstChild(result)
for i,v in pairs(player.Character:GetChildren()) do 
if v.ClassName=="Part" then
v.Anchored = true 
end
end 
alert(player.Name.." Has Been Frozen")
cleanup(2)
end 
if string.lower(string.sub(msg,1,4 + sym)) == "thaw"..symbol then 
local an = search(string.sub(msg,5 + sym))
player = game.Players:FindFirstChild(result)
for i,v in pairs(player.Character:GetChildren()) do 
if v.ClassName=="Part" then
v.Anchored = false  
end
end 
alert(player.Name.." Has Been Thawed")
cleanup(2)
end 
if string.lower(msg) == "spawncage" then
wall1 = Instance.new("Part", workspace)
wall1.Size = Vector3.new(1, 20, 51)
wall1.Anchored = true
wall1.BrickColor = BrickColor.new("Really red")
wall1.Transparency = 0.7
wall1.TopSurface = "Smooth"
wall1.BottomSurface = "Smooth"
wall1.CFrame = CFrame.new(-25, 10, 0)
wall2 = Instance.new("Part", workspace)
wall2.Size = Vector3.new(51, 20, 1)
wall2.Anchored = true
wall2.BrickColor = BrickColor.new("Really red")
wall2.Transparency = 0.7
wall2.TopSurface = "Smooth"
wall2.BottomSurface = "Smooth"
wall2.CFrame = CFrame.new(0, 10, 25)
wall3 = Instance.new("Part", workspace)
wall3.Size = Vector3.new(1, 20, 51)
wall3.Anchored = true
wall3.BrickColor = BrickColor.new("Really red")
wall3.Transparency = 0.7
wall3.TopSurface = "Smooth"
wall3.BottomSurface = "Smooth"
wall3.CFrame = CFrame.new(25, 10, 0)
wall4 = Instance.new("Part", workspace)
wall4.Size = Vector3.new(51, 20, 1)
wall4.Anchored = true
wall4.BrickColor = BrickColor.new("Really red")
wall4.Transparency = 0.7
wall4.TopSurface = "Smooth"
wall4.BottomSurface = "Smooth"
wall4.CFrame = CFrame.new(0, 10, -25)
roof = Instance.new("Part", workspace)
roof.Anchored = true
roof.Size = Vector3.new(51, 1, 51)
roof.TopSurface = "Smooth"
roof.BottomSurface = "Smooth"
roof.BrickColor = BrickColor.new("Really black")
roof.Locked = true
roof.CFrame = CFrame.new(0, 20.5, 0)
alert("Added A New SpawnCage")
cleanup(2)
end
if string.lower(msg) == "clean" then 
for i,v in pairs(workspace:GetChildren()) do  
if game:GetService("Players"):GetPlayerFromCharacter(v) == nil then  
if v.className ~= "Terrain" then 
if v.className ~= "Camera" then 
if v~=script then  
if v.Name~="TinySB" then 
pcall(function() v:Destroy() end)
end 
end 
end 
end 
end 
end 
local b = Instance.new("Part", Game:GetService("Workspace")) 
b.Size = Vector3.new(3000, 1, 3000) 
b.CFrame = CFrame.new(0, 0, 0) 
b.Name = "Base" 
b.BrickColor = BrickColor.new("Earth green") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.LeftSurface = "Smooth" 
b.RightSurface = "Smooth" 
b.FrontSurface = "Smooth" 
b.BackSurface = "Smooth" 
b.Anchored = true 
b.Locked = true 
local sl = Instance.new("SpawnLocation", workspace) 
sl.Anchored = true 
sl.Locked = true 
sl.formFactor = "Plate" 
sl.Size = Vector3.new(6, 0.4, 6) 
sl.CFrame = CFrame.new(0, 0.6, 0) 
sl.BrickColor = BrickColor.new("Really black") 
sl.TopSurface = "Smooth" 
sl.BottomSurface = "Smooth" 
sl.LeftSurface = "Smooth" 
sl.RightSurface = "Smooth" 
sl.FrontSurface = "Smooth" 
sl.BackSurface = "Smooth" 
alert("The Workspace Has Been Cleaned")
cleanup(2)
end
if string.lower(string.sub(msg,1,6+sym)) == "health"..symbol then 
local a = search(string.sub(msg,7+sym))
local b = a+sym+1
player = game.Players;FindFirstChild(result)
player.Character.Humanoid.Health = b
end 
if string.lower(string.sub(msg,1,3+sym)) == "nbc"..symbol then 
search(string.sub(msg,4+sym))
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 0
alert(result.." Now Has NBC")
cleanup(2)
end 
if string.lower(string.sub(msg,1,2+sym)) == "bc"..symbol then 
search(string.sub(msg,3+sym))
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 1
alert(result.." Now Has BC")
cleanup(2)
end 
if string.lower(string.sub(msg,1,3+sym)) == "tbc"..symbol then 
search(string.sub(msg,4+sym))
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 2
alert(result.." Now Has TBC")
cleanup(2)
end 
if string.lower(string.sub(msg,1,3+sym)) == "obc"..symbol then 
search(string.sub(msg,4+sym))
player = game.Players:FindFirstChild(result)
player.MembershipTypeReplicate = 3
alert(result.." Now Has OBC")
cleanup(2)
end 
end 
start = function(new)
for i=1,#admins do
if string.lower(new.Name)==string.lower(admins[i]) then 
new.Chatted:connect(function(msg) commands(msg,new) debug(msg,new) end)
end 
end
end
game.Players.PlayerAdded:connect(start)

game.Players.PlayerAdded:connect(function(new)
for i=1,#banned do
if string.lower(new.Name)==string.lower(banned[i]) then 
alert(new.Name.." Tried To Enter, But Was Banned By 300 Security Admin")
new:Destroy()
cleanup(2)
end
end
end)
for i,p in pairs(game.Players:GetPlayers()) do 
start(p)
end   

Workspace.DescendantRemoving:connect(Un_Removeable)

game.Players.PlayerAdded:connect(function(player)
for i=1,#banned do
if player.name~=banned[i] then
alert(player.name.." Has Entered The Server!")
end
end
end)

game.Players.PlayerRemoving:connect(function(player)
alert(player.name.." Has Left The Server!")
end)

game.Workspace.DescendantAdded:connect(function(obj)
if disabled==true then 
dbh = new.name
new:Destroy()
alert(dbh.." Was Blocked")
cleanup(2)
end
end)
left = function(player)
for i=1,#ablist do 
if string.lower(player.Name) == string.lower(ablist[i]) then 
here = false 
abplayer=player.Name 
end 
end 
end 
game.Players.PlayerRemoving:connect(left)
while true do
wait()
for i=1,#ablist do 
for i,p in pairs(game:GetService("Players"):GetChildren()) do 
if here==false and override==false then
local m = Instance.new("Message", game:GetService("Workspace"))
for i=1,#abplayer do 
for i=1,#abtime do 
m.Text = "If "..abplayer[i].." Does Not Return In "..abtime.." Then The Server Will Go On Lockdown Until Return"
wait(1)
if abtime==0 then 
m:Destroy()
local am = Instance.new("Message", game:GetService("Workspace"))
am.Text = abplayer[i].." Did Not Return"
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
v:Destroy()
if p.Name==abplayer[i] then 
here = true
else 
p:Destroy()
end
end
end
end
end
end
end
end
end 
