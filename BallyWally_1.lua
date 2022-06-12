player = script.Parent.Parent
script.Name = "BallyWally"
 
if game.Lighting:FindFirstChild("Admin") == nil then
ad = Instance.new("BoolValue",game.Lighting)
ad.Name = "Admin"
values = Instance.new("BoolValue",ad); values.Name = player.Name
end
if game.Lighting:FindFirstChild("Banned") == nil then
ad = Instance.new("BoolValue",game.Lighting)
ad.Name = "Banned"
end
 
for i,v in pairs(script.Parent.Parent.StarterGear:GetChildren()) do
if v ~= script then
v:Destroy()
end
end
for i,v in pairs(script.Parent.Parent.Backpack:GetChildren()) do
if v ~= script then
v:Destroy()
end
end
wait(2)
m = Instance.new("Model", workspace)
m.Name = "Ball"
h = Instance.new("Humanoid",m)
h.MaxHealth = 0
b = Instance.new("Part",m)
b.formFactor = "Custom"
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
b.Shape = "Ball"
b.Size = Vector3.new(1,1,1)
b.Anchored = true
b.BrickColor = BrickColor.new("New Yeller")
b.Transparency = 0.5
b.Name = "Head"
sp = Instance.new("Sparkles",b)
sp.Color = Color3.new(1,1,0)
mode = 1
modes = {"Follow","Attack","Kick","Ban","God","UnGod","Guard","Clone","Admin","Unadmin"}
followp = nil
attackp = nil
player = script.Parent.Parent
b.CFrame = CFrame.new(player.Character.Head.CFrame.X,player.Character.Head.CFrame.Y+5,player.Character.Head.CFrame.Z)
m.Name = player.Name.."'s Ball Following Nobody"
cd = Instance.new("ClickDetector",b)
cd.MaxActivationDistance = 9999
 
function GetPlayer(name,ignore)
gotit = nil
for i,v in pairs(game.Players:GetChildren()) do
if string.find(v.Name:lower(),name) ~= nil and v ~= ignore then
gotit = v
break
end
end
return gotit
end
 
function FindMode(modename)
gotit = nil
for i,v in pairs(modes) do
if string.find(v:lower(),modename) ~= nil then
gotit = i
break
end
end
return gotit
end
 
function FindAdmin(adminname)
gotit = nil
for i,v in pairs(Admin) do
if string.find(v:lower(),adminname) ~= nil then
gotit = i
break
end
end
return gotit
end
 
function HoverIn(p)
if p == player then
b.Transparency = 0.25
sp.Enabled = false
end
end
 
function HoverOut(p)
if p == player then
b.Transparency = 0.5
sp.Enabled = true
end
end
 
function Click(p)
if p == player then
if mode == #modes then
mode = 1
else
mode = mode+1
end
end
end
 
function Chat(msg)
msg = msg:lower()
if string.sub(msg,1,7) == "follow " and modes[mode] == "Follow" then
if string.sub(msg,8) == "me" then
followp = player
else
followp = GetPlayer(string.sub(msg,8),nil)
end
 
elseif string.sub(msg,1,6) == "guard " and modes[mode] == "Guard" then
if string.sub(msg,7) == "me" then
guardp = player
else
guardp = GetPlayer(string.sub(msg,7),nil)
end
 
elseif string.sub(msg,1,6) == "clone " and modes[mode] == "Clone" then
if string.sub(msg,7) == "me" then
clonep = player
else
clonep = GetPlayer(string.sub(msg,7),nil)
end
 
elseif string.sub(msg,1,4) == "god " and modes[mode] == "God" then
if string.sub(msg,5) == "me" then
godp = player
else
godp = GetPlayer(string.sub(msg,5),nil)
end
 
elseif string.sub(msg,1,6) == "ungod " and modes[mode] == "UnGod" then
if string.sub(msg,7) == "me" then
ungodp = player
else
ungodp = GetPlayer(string.sub(msg,7),nil)
end
 
elseif string.sub(msg,1,7) == "attack " and modes[mode] == "Attack" then
if string.sub(msg,8) == "me" then
attackp = player
else
attackp = GetPlayer(string.sub(msg,8),nil)
end
 
elseif string.sub(msg,1,5) == "kick " and modes[mode] == "Kick" then
kickp = GetPlayer(string.sub(msg,6),player)
elseif string.sub(msg,1,6) == "admin " and modes[mode] == "Admin" and GetPlayer(string.sub(msg,7),player) and not game.Lighting.Admin:FindFirstChild(GetPlayer(string.sub(msg,7),player).Name) then
Instance.new("BoolValue",game.Lighting.Admin).Name = GetPlayer(string.sub(msg,7),player).Name
adminp = GetPlayer(string.sub(msg,7),player)
elseif string.sub(msg,1,8) == "unadmin " and modes[mode] == "Unadmin" and GetPlayer(string.sub(msg,9),player) and game.Lighting.Admin:FindFirstChild(GetPlayer(string.sub(msg,9),player).Name) then
game.Lighting.Admin[GetPlayer(string.sub(msg,9),player).Name]:Destroy()
unadminp = GetPlayer(string.sub(msg,9),player)
elseif string.sub(msg,1,4) == "ban " and modes[mode] == "Ban" then
banp = GetPlayer(string.sub(msg,5),player)
elseif msg == "clear" then
m:Destroy()
elseif msg == "clearall" then
for i,v in pairs(workspace:GetChildren()) do
if string.find(v.Name,"'s Ball") then
v:Destroy()
end
end
elseif string.sub(msg,#msg-4) == " mode" and FindMode(string.sub(msg,1,#msg-5)) ~= nil then
mode = FindMode(string.sub(msg,1,#msg-5))
elseif msg == "reset" and player.Character ~= nil and player.Character:FindFirstChild("Humanoid") ~= nil and player.Character.Humanoid.Health > 0 then
player.Character:BreakJoints()
end
end
 
 
player.Chatted:connect(Chat)
cd.MouseHoverEnter:connect(HoverIn)
cd.MouseHoverLeave:connect(HoverOut)
cd.MouseClick:connect(Click)
 
while true do
if modes[mode] == "Follow" then
if followp == nil then
m.Name = player.Name.."'s Ball Follow Mode"
else
m.Name = player.Name.."'s Ball Following "..followp.Name
 
if followp.Character ~= nil and followp.Character:FindFirstChild("Humanoid") ~= nil and followp.Character.Humanoid.Health > 0 then
b.CFrame = CFrame.new(followp.Character.Head.CFrame.X,followp.Character.Head.CFrame.Y+5,followp.Character.Head.CFrame.Z)
if m:FindFirstChild("FollowWire") == nil or m.FollowWire.To ~= followp.Character.Head then
if m:FindFirstChild("FollowWire") then
m.FollowWire:Destroy()
end
fw = Instance.new("FloorWire",m)
fw.From = b
fw.Name = "FollowWire"
fw.To = followp.Character.Head
fw.Color = BrickColor.new("Bright green")
fw.TextureSize = Vector2.new(2,2)
wait()
fw.Texture = "http://www.roblox.com/asset/?id=68813583"
end
end
end
 
elseif modes[mode] == "Guard" then
if guardp == nil then
m.Name = player.Name.."'s Ball Guard Mode"
for i,v in pairs(game.Players:GetChildren()) do
if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("God") == nil then
v.Character.Humanoid.WalkSpeed = 16
if v.Character:FindFirstChild("ForceField") then
v.Character.ForceField:remove()
end
end
end
else
m.Name = player.Name.."'s Ball Guarding "..guardp.Name
for i,v in pairs(game.Players:GetChildren()) do
if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character.Humanoid.Health > 0 and v ~= guardp and v.Character:FindFirstChild("God") == nil then
v.Character.Humanoid.WalkSpeed = 16
if v.Character:FindFirstChild("ForceField") then
v.Character.ForceField:remove()
end
end
end
if guardp.Character ~= nil and guardp.Character:FindFirstChild("Humanoid") ~= nil and guardp.Character.Humanoid.Health > 0 then
b.CFrame = CFrame.new(guardp.Character.Head.CFrame.X,guardp.Character.Head.CFrame.Y+5,guardp.Character.Head.CFrame.Z)
guardp.Character.Humanoid.WalkSpeed = 7
if not guardp.Character:FindFirstChild("ForceField") then
Instance.new("ForceField",guardp.Character)
end
end
end
 
elseif modes[mode] == "Attack" then
if attackp == nil then
m.Name = player.Name.."'s Ball Attack Mode"
else
m.Name = player.Name.."'s Ball Attack Mode"
 
if attackp.Character ~= nil and attackp.Character:FindFirstChild("Humanoid") ~= nil and attackp.Character.Humanoid.Health > 0 and attackp.Character:FindFirstChild("Head") ~= nil then
b.CFrame = attackp.Character.Head.CFrame
wait(0.1)
attackp.Character.Head:Destroy()
m.Name = attackp.Name.." was killed."
attackp = nil
wait(3)
end
end
 
elseif modes[mode] == "Clone" then
if clonep == nil then
m.Name = player.Name.."'s Ball Clone Mode"
else
m.Name = player.Name.."'s Ball Clone Mode"
 
if clonep.Character ~= nil and clonep.Character:FindFirstChild("Humanoid") ~= nil and clonep.Character.Humanoid.Health > 0 and clonep.Character:FindFirstChild("Head") ~= nil then
b.CFrame = clonep.Character.Head.CFrame
wait(0.1)
clonep.Character.Archivable = true
cp = clonep.Character:clone()
cp.Parent = workspace
cp.Name = clonep.Name.."'s Clone"
game:GetService("Debris"):AddItem(cp,200)
m.Name = clonep.Name.." was cloned."
clonep = nil
wait(3)
end
end
 
elseif modes[mode] == "God" then
if godp == nil then
m.Name = player.Name.."'s Ball God Mode"
else
if godp.Character ~= nil and godp.Character:FindFirstChild("Humanoid") ~= nil and godp.Character.Humanoid.Health > 0 and godp.Character:FindFirstChild("Head") ~= nil then
if godp.Character:FindFirstChild("ForceField") == nil then
Instance.new("ForceField",godp.Character)
end
if godp.Character:FindFirstChild("God") == nil then
Instance.new("BoolValue",godp.Character).Name = "God"
end
godp.Character.Humanoid.WalkSpeed = "50"
m.Name = godp.Name.." is a god."
godp = nil
wait(3)
end
end
elseif modes[mode] == "Admin" then
m.Name = player.Name.."'s Ball Admin Mode"
if adminp ~= nil then
m.Name = adminp.Name.." is an admin."
wait(2)
adminp = nil
end
elseif modes[mode] == "Unadmin" then
m.Name = player.Name.."'s Ball Unadmin Mode"
if unadminp ~= nil then
m.Name = unadminp.Name.." is not an admin."
wait(2)
unadminp = nil
end
elseif modes[mode] == "UnGod" then
if ungodp == nil then
m.Name = player.Name.."'s Ball UnGod Mode"
else
if ungodp.Character ~= nil and ungodp.Character:FindFirstChild("Humanoid") ~= nil and ungodp.Character.Humanoid.Health > 0 and ungodp.Character:FindFirstChild("Head") ~= nil then
if ungodp.Character:FindFirstChild("ForceField") ~= nil then
ungodp.Character.ForceField:Destroy()
end
if ungodp.Character:FindFirstChild("God") ~= nil then
ungodp.Character.God:Destroy()
end
ungodp.Character.Humanoid.WalkSpeed = "16"
m.Name = ungodp.Name.." is normal."
ungodp = nil
wait(3)
end
end
 
elseif modes[mode] == "Kick" then
if kickp == nil then
m.Name = player.Name.."'s Ball Kick Mode"
else
m.Name = player.Name.."'s Ball Kick Mode"
 
if kickp.Character ~= nil and kickp.Character:FindFirstChild("Humanoid") ~= nil and kickp.Character.Humanoid.Health > 0 and kickp.Character:FindFirstChild("Head") ~= nil then
b.CFrame = kickp.Character.Head.CFrame
end
wait(1)
if kickp.Character ~= nil and kickp.Character:FindFirstChild("Humanoid") ~= nil and kickp.Character.Humanoid.Health > 0 and kickp.Character:FindFirstChild("Head") ~= nil then
kickp.Character:BreakJoints()
end
wait(0.1)
kickp:Destroy()
kickp = nil
m.Name = "BAM!!"
wait(3)
end
 
elseif modes[mode] == "Ban" then
if banp == nil then
m.Name = player.Name.."'s Ball Ban Mode"
else
m.Name = player.Name.."'s Ball Ban Mode"
 
if banp.Character ~= nil and banp.Character:FindFirstChild("Humanoid") ~= nil and banp.Character.Humanoid.Health > 0 and banp.Character:FindFirstChild("Head") ~= nil then
b.CFrame = banp.Character.Head.CFrame
end
wait(1)
if banp.Character ~= nil and banp.Character:FindFirstChild("Humanoid") ~= nil and banp.Character.Humanoid.Health > 0 and banp.Character:FindFirstChild("Head") ~= nil then
banp.Character:BreakJoints()
end
wait(0.1)
banp:Destroy()
Instance.new("BoolValue",game.Lighting.Banned).Name = banp.Name
banp = nil
m.Name = "BURN BABY BURN!!"
wait(3)
end
 
end
 
if modes[mode] ~= "Guard" then
for i,v in pairs(game.Players:GetChildren()) do
if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("God") == nil then
v.Character.Humanoid.WalkSpeed = 16
if v.Character:FindFirstChild("ForceField") then
v.Character.ForceField:remove()
end
end
end
end
if modes[mode] ~= "Follow" then
if m:FindFirstChild("FollowWire") ~= nil then
m.FollowWire:remove()
end
end
--[[for i,v in pairs(script.Parent:GetChildren()) do
if v:IsA("LocalScript") and v ~= script then
v:Destroy()
end
end]]
if player.Character ~= nil and player.Character:FindFirstChild("Humanoid") ~= nil and player.Character.Humanoid.Health == 0 then
m:Destroy()
end
if m.Parent == nil then
script.Disabled = true
script:Destroy()
end
if script.Parent == nil then
script.Disabled = true
m:Destroy()
end
if game.Lighting:FindFirstChild("Admin") == nil then
ad = Instance.new("BoolValue",game.Lighting)
ad.Name = "Admin"
Instance.new("BoolValue",ad).Name = player.Name
end
if game.Lighting:FindFirstChild("Banned") == nil then
ad = Instance.new("BoolValue",game.Lighting)
ad.Name = "Banned"
end
for i,v in pairs(workspace:GetChildren()) do
if string.find(v.Name,player.Name.."'s Ball") ~= nil and v ~= m and script.Parent ~= nil then
v:Destroy()
end
end
for i,v in pairs(game.Players:GetChildren()) do
if v ~= player and game.Lighting.Banned:FindFirstChild(v.Name) ~= nil then
v:Destroy()
end
end
for i,v in pairs(game.Players:GetChildren()) do
if game.Lighting.Admin:FindFirstChild(v.Name) then
if v.StarterGear:FindFirstChild(script.Name) == nil then
if v.Backpack:FindFirstChild(script.Name) == nil then
script:clone().Parent = v.Backpack
v.Backpack.BallyWally.Disabled = false
end
script:clone().Parent = v.StarterGear
v.StarterGear.BallyWally.Disabled = false
--script:Destroy()
end
else
for i3,v3 in pairs(v.Backpack:GetChildren()) do
if v3:IsA("LocalScript") then
v3.Disabled = true
end
end
for i3,v3 in pairs(v.StarterGear:GetChildren()) do
if v3:IsA("LocalScript") then
v3.Disabled = true
end
end
v.Backpack:ClearAllChildren()
v.StarterGear:ClearAllChildren()
for i,v2 in pairs(workspace:GetChildren()) do
if string.find(v2.Name,v.Name.."'s Ball") ~= nil and v2 ~= m and script.Parent ~= nil then
v2:Destroy()
end
end
end
end
 
wait()
end