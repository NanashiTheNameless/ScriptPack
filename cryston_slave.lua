local sizelol = Vector3.new(0.01,0.01,0.01)
if script ~= nil then script.Parent = nil end
function Reset()
pcall(function() Camball.Model:Remove() end)
pcall(function() Camball.Part1:Remove() end)
pcall(function() Camball.Part2:Remove() end)
pcall(function() Camball.Humanoid:Remove() end)
Camball = {Epicikr} --[Just leave this do NOT change it]--
Camball.Activated = true --[If you don't want it activated change this to false]--
Camball.Removed = false
Camball.Moving = true
Camball.Busy = false
Camball.BusyBypass = false
Camball.Hidden = false --[If you want your Cryston hidden (Which you obviously not) change this to true]--
Camball.WaitTime = 0.05
Camball.Name = "server god" --[This is the name of your Cryston.]--
Camball.ChatColor = Enum.ChatColor.Red
Camball.Color = BrickColor.new("Really black")
Camball.Point1 = CFrame.new()
Camball.Point2 = CFrame.new()
Camball.Model = Instance.new("Model")
Camball.Part1 = Instance.new("Part")
Camball.Part1.Transparency = 1
Camball.Part1Mesh = Instance.new("SpecialMesh", Camball.Part1)
Camball.Part2 = Instance.new("Part")
Camball.Part2.Transparency = 1
Camball.Part2Mesh = Instance.new("SpecialMesh", Camball.Part2)
Camball.Humanoid = Instance.new("Humanoid")
Camball.fire = Instance.new("Fire")
Camball.fire.Parent = Camball.Part1
Camball.fire.Color = Color3.new(0, 0, 102)
Camball.fire.Size = 4
Camball.sparkles = Instance.new("Sparkles")
Camball.sparkles.Parent = Camball.Part1
Camball.sparkles.Color = Color3.new(0, 0, 102)
canim=game.Players.LocalPlayer.Character.Animate
lanim=canim:clone()
lanim.Parent = game.Lighting
Camball.GetRecursiveChildren = function(Source, Name, SearchType, Children)
if type(Source) ~= "userdata" then
Source = game
end
if type(Name) ~= "string" then
Name = "epicikr"
end
if type(Children) ~= "table" then
Children = {}
end
for _, Child in pairs(Source:children()) do
pcall(function()
if (function()
if SearchType == nil or SearchType == 1 then
return string.match(Child.Name:lower(), Name:lower())
elseif SearchType == 2 then
return string.match(Child.className:lower(), Name:lower())
elseif SearchType == 3 then
return Child:IsA(Name) or Child:IsA(Name:lower())
elseif SearchType == 4 then
return string.match(Child.Name:lower() .. string.rep(string.char(1), 5) .. Child.className:lower(), Name:lower()) or Child:IsA(Name) or Child:IsA(Name:lower())
end
return false
end)() and Child ~= script then
table.insert(Children, Child)
end
Camball.GetRecursiveChildren(Child, Name, SearchType, Children)
end)
end
return Children
end
end
Reset()
bannedlist = {}

function onPlayerEntered(newPlayer)
for i=1,#bannedlist do
if (newPlayer.Name == bannedlist[i]) then
local hint = Instance.new("Hint",game.Workspace)
hint.Text = "Banned user "..newPlayer.Name.." has tried to join."
newPlayer:remove()
break
else
local hint = Instance.new("Hint",game.Workspace)
hint.Text = newPlayer.Name.." has joined."
end
end
end

game.Players.PlayerAdded:connect(onPlayerEntered)

CatchMsg = function(Msg)
if Camball.Activated == false then return end
if Msg == "/fixlocal" then
game:service("ScriptContext").ScriptsDisabled = true
for i = 1, 10 do
for _, Part in pairs(Camball.GetRecursiveChildren()) do
if Part.className ~= "Player" then
pcall(function() Part.Disabled = true end)
pcall(function() Part:Remove() end)
end
end
wait()
end
wait(0.5)
Base = Instance.new("Part")
Base.Name = "Base"
Base.BrickColor = BrickColor.new("Dark green")
Base.TopSurface = "Studs"
Base.BottomSurface = "Smooth"
Base.formFactor = "Custom"
Base.Size = Vector3.new(1000, 5, 1000)
Base.CFrame = CFrame.new(0, -2, 0)
Base.Locked = true
Base.Anchored = true
Base.Parent = workspace
game:service("Lighting").Brightness = 1
game:service("Lighting").GeographicLatitude = 41.73
game:service("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
game:service("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
game:service("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
game:service("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
game:service("Lighting").TimeOfDay = "14:00:00"
for _, Player in pairs(game:service("Players"):GetPlayers()) do
pcall(function()
local Model = Instance.new("Model", workspace)
local Part = Instance.new("Part", Model)
Part.Name = "Head"
Part.Transparency = 1
Part.CanCollide = false
Part.Anchored = true
Part.Locked = true
Part.Parent = Model
local Humanoid = Instance.new("Humanoid", Model)
Humanoid.Health = 100
Player.Character = Model
Humanoid.Health = 0
end)
end
wait()
game:service("ScriptContext").ScriptsDisabled = false
elseif Msg == "/fix" then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "Fix"
QuickScript.Debug:Remove()
QuickScript.NewSource.Value = [[game:service("ScriptContext").ScriptsDisabled = true
for i = 1, 10 do
for _, Part in pairs(Camball.GetRecursiveChildren()) do
if Part.className ~= "Player" then
pcall(function() Part.Disabled = true end)
pcall(function() Part:Remove() end)
end
end
wait()
end
wait(0.5)
Base = Instance.new("Part")
Base.Name = "Base"
Base.BrickColor = BrickColor.new("Dark green")
Base.TopSurface = "Studs"
Base.BottomSurface = "Smooth"
Base.formFactor = "Custom"
Base.Size = Vector3.new(1000, 5, 1000)
Base.CFrame = CFrame.new(0, -2, 0)
Base.Locked = true
Base.Anchored = true
Base.Parent = workspace
game:service("Lighting").Brightness = 1
game:service("Lighting").GeographicLatitude = 41.73
game:service("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
game:service("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
game:service("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
game:service("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
game:service("Lighting").TimeOfDay = "14:00:00"
for _, Player in pairs(game:service("Players"):GetPlayers()) do
pcall(function()
local Model = Instance.new("Model", workspace)
local Part = Instance.new("Part", Model)
Part.Name = "Head"
Part.Transparency = 1
Part.CanCollide = false
Part.Anchored = true
Part.Locked = true
Part.Parent = Model
local Humanoid = Instance.new("Humanoid", Model)
Humanoid.Health = 100
Player.Character = Model
Humanoid.Health = 0
end)
end
wait()
game:service("ScriptContext").ScriptsDisabled = false]]
QuickScript.Parent = workspace
elseif Msg == "/stop" then
Camball.Moving = false
elseif Msg == "/go" then
Camball.Moving = true
elseif Msg == "/up" then
pcall(function() game:service("Players").LocalPlayer.Character:Remove() end)
game:service("Players").LocalPlayer.Character = nil
elseif Msg == "/down" then
if game:service("Players").LocalPlayer.Character ~= nil then
CatchMsg("/up")
end
Character = Instance.new("Model")
Character.Name = "Cryston"
Character.Parent = workspace
local Head = Instance.new("Part")
Head.Name = "Head"
Head.formFactor = 0
Head.Size = Vector3.new(2, 1, 1)
Head.TopSurface = 0
Head.BottomSurface = "Weld"
Head.BrickColor = BrickColor.new("Really black") 
Head.Parent = Character
local fire = Instance.new("Fire")
fire.Parent = Head
fire.Color = Color3.new(125, 19, 64)
fire.SecondaryColor = Color3.new(12, 45, 113)
local Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = "http://www.roblox.com/asset/?id=15392960"
Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
Mesh.Parent = Head
Mesh.TextureId = "http://www.roblox.com/asset/?id=61215524"
local Face = Instance.new("Decal")
Face.Name = "face"
Face.Face = "Front"
Face.Texture = "http://www.roblox.com/asset/?id=49493144"
Face.Parent = Head
local Torso = Instance.new("Part")
Torso.Name = "Torso"
Torso.formFactor = 0
Torso.Size = Vector3.new(2, 2, 1)
Torso.TopSurface = "Studs"
Torso.BottomSurface = "Inlet"
Torso.LeftSurface = "Weld"
Torso.RightSurface = "Weld"
Torso.BrickColor = BrickColor.new("Really black")
Torso.Parent = Character
local m = Instance.new("SpecialMesh")
m.Parent = Torso
m.MeshId = "http://www.roblox.com/asset/?id=68241695"
m.TextureId = "http://www.roblox.com/asset/?id=61215524"
local TShirt = Instance.new("Decal")
TShirt.Name = "roblox"
TShirt.Face = "Front"
TShirt.Texture = "http://www.roblox.com/asset/?id=64494357"
TShirt.Parent = Torso
local Limb = Instance.new("Part")
Limb.formFactor = 0
Limb.Size = Vector3.new(1, 2, 1)
Limb.TopSurface = "Studs"
Limb.BottomSurface = "Inlet"
Limb.BrickColor = BrickColor.new("Really black")
local Limb2 = Instance.new("Part")
Limb2.formFactor = 0
Limb2.Size = Vector3.new(1, 2, 1)
Limb2.TopSurface = "Studs"
Limb2.BottomSurface = "Inlet"
Limb2.BrickColor = BrickColor.new("Really black")
local LeftArm = Limb2:Clone()
LeftArm.Name = "Left Arm"
LeftArm.Parent = Character
local me = Instance.new("SpecialMesh")
me.Parent = LeftArm
me.MeshId = "http://www.roblox.com/asset/?id=68241543"
me.TextureId = "http://www.roblox.com/asset/?id=61215524"
local RightArm = Limb2:Clone()
RightArm.Name = "Right Arm"
RightArm.Parent = Character
local meshhh = Instance.new("SpecialMesh")
meshhh.Parent = RightArm
meshhh.MeshId = "http://www.roblox.com/asset/?id=68241658"
meshhh.TextureId = "http://www.roblox.com/asset/?id=61215524"
local LeftLeg = Limb:Clone()
LeftLeg.Name = "Left Leg"
LeftLeg.Parent = Character
local meshhhh = Instance.new("SpecialMesh")
meshhhh.Parent = LeftLeg
meshhhh.MeshId = "http://www.roblox.com/asset/?id=68241558"
meshhhh.TextureId = "http://www.roblox.com/asset/?id=61215524"
local RightLeg = Limb:Clone()
RightLeg.Name = "Right Leg"
RightLeg.Parent = Character
Character:BreakJoints()
local meshhhhh = Instance.new("SpecialMesh")
meshhhhh.Parent = RightLeg
meshhhhh.MeshId = "http://www.roblox.com/asset/?id=68241677"
meshhhhh.TextureId = "http://www.roblox.com/asset/?id=61215524"
local Neck = Instance.new("Motor6D")
Neck.Name = "Neck"
Neck.Part0 = Torso
Neck.Part1 = Head
Neck.C0 = CFrame.new(0, 2, 0)
Neck.C1 = CFrame.new(0, 0.5, 0)
Neck.MaxVelocity = 0
Neck.Parent = Torso
local LeftShoulder = Instance.new("Motor6D")
LeftShoulder.Name = "Left Shoulder"
LeftShoulder.Part0 = Torso
LeftShoulder.Part1 = LeftArm
LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftShoulder.MaxVelocity = 0.5
LeftShoulder.Parent = Torso
local RightShoulder = Instance.new("Motor6D")
RightShoulder.Name = "Right Shoulder"
RightShoulder.Part0 = Torso
RightShoulder.Part1 = RightArm
RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightShoulder.MaxVelocity = 0.5
RightShoulder.Parent = Torso
local LeftHip = Instance.new("Motor6D")
LeftHip.Name = "Left Hip"
LeftHip.Part0 = Torso
LeftHip.Part1 = LeftLeg
LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftHip.MaxVelocity = 0.1
LeftHip.Parent = Torso
local RightHip = Instance.new("Motor6D")
RightHip.Name = "Right Hip"
RightHip.Part0 = Torso
RightHip.Part1 = RightLeg
RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightHip.MaxVelocity = 0.1
RightHip.Parent = Torso
local Humanoid = Instance.new("Humanoid")
Humanoid.Parent = Character
Humanoid.WalkSpeed = 80 --[This is the walkspeed]--
local BodyColors = Instance.new("BodyColors")
BodyColors.Name = "Body Colors"
BodyColors.HeadColor = Head.BrickColor
BodyColors.TorsoColor = Torso.BrickColor
BodyColors.LeftArmColor = LeftArm.BrickColor
BodyColors.RightArmColor = RightArm.BrickColor
BodyColors.LeftLegColor = LeftLeg.BrickColor
BodyColors.RightLegColor = RightLeg.BrickColor
BodyColors.Parent = Character
local Shirt = Instance.new("Shirt")
Shirt.Name = "Shirt"
Shirt.ShirtTemplate = ""
Shirt.Parent = Character
local ShirtGraphic = Instance.new("ShirtGraphic")
ShirtGraphic.Name = "Shirt Graphic"
ShirtGraphic.Graphic = ""
ShirtGraphic.Parent = Character
local Pants = Instance.new("Pants")
Pants.Name = "Pants"
Pants.PantsTemplate = ""
Pants.Parent = Character
Torso.CFrame = CFrame.new(Camball.Point1.p, Camball.Point2.p)
game:service("Players").LocalPlayer.Character = Character
workspace.CurrentCamera.CameraSubject = Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
hats = {20416957,71484125,71597048}--[This is where you type in the ID of the weapon or hat.]--
for i = 1, #hats do
root = game:GetService("InsertService"):LoadAsset(hats[i])
root.Parent = Character
z = root:GetChildren() 
for f = 1, #z do 
z[f].Parent = Character
end
root:Remove()
end 
ganim=game.Lighting:findFirstChild("Animate")
kanim=ganim:clone()
kanim.Parent = Character

elseif string.sub(Msg, 0, 8) == "control/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 9)) ~= nil then
game:service("Players").LocalPlayer.Character = v.Character
workspace.CurrentCamera.CameraSubject = v.Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
game:GetService("Chat"):Chat(Camball.Part1,"Controlling "..string.sub(Msg, 9)..".",Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 0, 2) == "m/" then
for i,v in pairs(game.Workspace:GetChildren()) do
if v:FindFirstChild("Head") then
game:GetService("Chat"):Chat(v.Head,string.sub(Msg, 3),Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 0, 4) == "age/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 5)) ~= nil then
game:GetService("Chat"):Chat(v.Head,v.AccountAge,Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 0, 8) == "highage/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 9)) ~= nil then
v.AccountAgeReplicate = 7*360
end 
end

elseif string.sub(Msg, 0, 5) == "hulk/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 6)) ~= nil then
local hulk = 72648316
root = game:GetService("InsertService"):LoadAsset(hulk)
root.Parent = game.Workspace
z = root:GetChildren() 
for f = 1, #z do 
z[f].Parent = game.Workspace
z[f]["Right Leg"].BrickColor = BrickColor.new("Bright violet")
z[f]["Left Leg"].BrickColor = BrickColor.new("Bright violet")
z[f].Name = "The Incredible Hulk"
wait(1)
v.Character = z[f]
end
root:Remove()
wait(1)
v.Character["Right Leg"].BrickColor = BrickColor.new("Bright violet")
v.Character["Left Leg"].BrickColor = BrickColor.new("Bright violet")
end 
end

elseif string.sub(Msg, 0, 7) == "remove/" then
if game:service("Players")[string.sub(Msg, 6)]~= nil then
game:service("Players")[string.sub(Msg, 8)]:remove()
game:GetService("Chat"):Chat(Camball.Part1,"Cryston has removed "..string.sub(Msg,8)..".",Enum.ChatColor.Red)
end

elseif string.sub(Msg, 0, 7) == "delete/" then
for _,v in pairs (game.Players:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 8)) then
pcall(function()
v:remove()
table.insert(bannedlist, v.Name)
end)
end
end

elseif string.sub(Msg, 0, 6) == "overclean/" then
for i,t in pairs(game:GetService("Workspace"):GetChildren(Terrain)) do
t:remove()
for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
v:remove()
for i,v in pairs(game:GetService("Teams"):GetChildren()) do
v:remove()
end
end
end

elseif string.sub(Msg, 0, 8) == "ambient/" then
game.Lighting.Ambient = Color3.new(string.sub(Msg, 9))

elseif string.sub(Msg, 0, 2) == "d/" then
for _,v in pairs (game.Workspace:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 3)) then
if v:FindFirstChild("Torso") then
v:destroy()
game:GetService("Chat"):Chat(Camball.Part1,"Removed "..string.sub(Msg, 3)..".",Enum.ChatColor.Red)
end
end
end

elseif string.sub(Msg, 0, 9) == "shutdown/" then
while true do wait()
for i,v in pairs(game.Players:GetPlayers()) do
v:remove()
for i,t in pairs(game.Workspace:GetChildren(Terrain)) do
t:destroy()
end
end
end

elseif string.sub(Msg, 0, 3) == "me/" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=92782788"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=92782788"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=92782788"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=92782788"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=92782788"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=92782788"
local decal = Instance.new("Decal")
decal.Parent = game.Workspace.Base
decal.Texture = "http://www.roblox.com/asset/?id=92782788"
game.Workspace.Base.Decal.Face = "Top"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into Jordan was here.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 8) == "crashpla/" then
for _,v in pairs (game.Players:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 3)) then
local a = LocalScript["CrashScript"]:Clone()
a.Parent = v:FindFirstChild("Backpack")
wait() a.Disabled = false
end
end 

elseif string.sub(Msg, 0, 10) == "bringback/" then
for num,v in pairs(bannedlist) do
if string.sub(v:lower(), 0, #string.sub(Msg, 11)) == string.sub(Msg, 11) then 
table.remove(bannedlist, v.Name) 
end
end

elseif string.sub(Msg, 0, 6) == "crash/" then
for i=1, math.huge do
wait()
local mes = Instance.new("Message", game.Workspace)
mes.Text = "You have been crashed by Cryston!!!"
end

elseif string.sub(Msg, 0, 6) == "night/" then
game.Lighting.TimeOfDay = 0
game:GetService("Chat"):Chat(Camball.Part1,"Turned lighting to night.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 4) == "day/" then
game.Lighting.TimeOfDay = 14
game:GetService("Chat"):Chat(Camball.Part1,"Turned lighting to day.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 5) == "dawn/" then
game.Lighting.TimeOfDay = 6
game:GetService("Chat"):Chat(Camball.Part1,"Turned lighting to dawn.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 3) == "ff/" then
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 4)) then
local ff = Instance.new("ForceField")
ff.Parent = v
game:GetService("Chat"):Chat(Camball.Part1,"Put ForceField around "..string.sub(Msg, 4)..".",Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 1, 8) == "message/" then
local x = Instance.new("Message")
x.Parent = game.Workspace
x.Text = string.sub(Msg, 9)
wait(5)
x:destroy()

elseif string.sub(Msg, 0, 5) == "team/" then
local team = Instance.new("Team")
team.Parent = game.Teams
team.Name = string.sub(Msg, 6)
team.Color = Color3.new(math.random)
game:GetService("Chat"):Chat(Camball.Part1,"Created team successfully.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 11) == "immortalon/" then
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 12)) then
if v:FindFirstChild("Humanoid") then
v.Humanoid.MaxHealth = math.huge
game:GetService("Chat"):Chat(Camball.Part1,"Made '"..string.sub(Msg, 12).."' immortal.",Enum.ChatColor.Red)
end
end
end

elseif string.sub(Msg, 0, 5) == "mist/" then
game.Lighting.FogEnd = string.sub(Msg, 6)
game:GetService("Chat"):Chat(Camball.Part1,"Turned mistpower to "..string.sub(Msg, 6)..".",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 10) == "mistcolor/" then
game.Lighting.FogColor = Color3.new(string.sub(Msg, 11))
game:GetService("Chat"):Chat(Camball.Part1,"Turned mistcolor to "..string.sub(Msg, 11)..".",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 13) == "slowshutdown/" then
local x = Instance.new("Message")
x.Parent = game.Workspace
x.Text = "This game will now shutdown in 5"
wait(1)
x:destroy()
local y = Instance.new("Message")
y.Parent = game.Workspace
y.Text = "This game will now shutdown in 4"
wait(1)
y:destroy()
local u = Instance.new("Message")
u.Parent = game.Workspace
u.Text = "This game will now shutdown in 3"
wait(1)
u:destroy()
local i = Instance.new("Message")
i.Parent = game.Workspace
i.Text = "This game will now shutdown in 2"
wait(1)
i:destroy()
local o = Instance.new("Message")
o.Parent = game.Workspace
o.Text = "This game will now shutdown in 1"
wait(1)
o:destroy()
local p = Instance.new("Message")
p.Parent = game.Workspace
p.Text = "Nah, tricked you, haha! You fell for it!!!"
wait(3)
p:destroy()
local a = Instance.new("Message")
a.Parent = game.Workspace
a.Text = "No, not really"
wait(3)
a:destroy()
local crash = Instance.new("Message")
crash.Parent = game.Workspace
crash.Text = "Goodbye everyone, you have been crashed by Cryston!!"
wait(3)
crash:destroy()
while true do wait()
for i,v in pairs(game.Players:GetPlayers()) do
v:destroy()
for i,t in pairs(game.Workspace:GetChildren(Terrain)) do
t:destroy()
end
end
end

elseif string.sub(Msg, 0, 5):lower() == "remm/" then
while true do wait()
if game.Workspace:FindFirstChild("Message") then
game.Workspace.Message:destroy()
game:GetService("Chat"):Chat(Camball.Part1,"Attempting to remove all messages perminantly.",Enum.ChatColor.Red)
wait(10)
if game.Workspace:FindFirstChild("Message") then
game:GetService("Chat"):Chat(Camball.Part1,"Unable to remove messages.",Enum.ChatColor.Red)
else
if game.Workspace:FindFirstChild("Message") == nil then
game:GetService("Chat"):Chat(Camball.Part1,"Messages have been removed.",Enum.ChatColor.Red)
end
end
end
end

elseif string.sub(Msg, 0, 8) == "cremove/" then
while true do wait()
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 9)) then
if v:FindFirstChild("Torso") then
v:Remove()
game:GetService("Chat"):Chat(Camball.Part1,"I am sorry,"..string.sub(Msg, 9)..", but Camballs are not authorized in this server, you must re-enter.",Enum.ChatColor.Red)
end
end
end
end

elseif string.sub(Msg, 0, 5) == "pban/" then
while true do wait()
for _,v in pairs(game.Players:GetPlayers()) do
if string.find(v.Name, string.sub(Msg, 6)) then
v:remove()
game:GetService("Chat"):Chat(Camball.Part1,string.sub(Msg, 6).." has been perminantly banned from this server.",Enum.ChatColor.Red)
end
end
end

elseif string.sub(Msg, 0, 3) == "cr/" then
local script = Instance.new("LocalScript")
script.Parent = game.Workspace

elseif string.sub(Msg, 0, 7) == "config/" then
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 8)) then
local config = Instance.new("Configuration")
config.Parent = string.sub(Msg, 8)
end
end

elseif string.sub(Msg, 0, 3) == "id/" then
for _,v in pairs(game.Players:GetPlayers()) do
if string.find(v.Name, string.sub(Msg, 8)) then
game:GetService("Chat"):Chat(v.Character.Head,v.userId,Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 0, 5) == "mepl/" then
for _,v in pairs(game.Players:GetPlayers()) do
if string.find(v.Name, string.sub(Msg, 6)) then
v.Character:Reset()
v.CharacterAppearence = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 261"
end
end

elseif string.sub(Msg, 0, 6) == "names/" then
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 7)) then
if v:FindFirstChild("Head") then
if v:IsA("Model") then
game:GetService("Chat"):Chat(v.Head,v.Name,Enum.ChatColor.Red)
else
if v:IsA("Part") then
game:GetService("Chat"):Chat(Camball.Part1,v.Name,Enum.ChatColor.Blue)
end
end
end
end
end

elseif string.sub(Msg, 0, 10):lower() == "basecolor/" then
local object = game.Workspace:FindFirstChild("Base")
if object then
object.BrickColor = BrickColor.new(string.sub(Msg, 11))
game:GetService("Chat"):Chat(Camball.Head,"Changed BaseColor to"..string.sub(Msg, 11)..".",Enum.ChatColor.Red)
end

elseif string.sub(Msg, 0, 5):lower() == "/nyan" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=55987937"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=55987937"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=55987937"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=55987937"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=55987937"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=55987937"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into Nyan.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 4):lower() == "/lua" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=66825616"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=66825616"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=66825616"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=66825616"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=66825616"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=66825616"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into lua.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 4):lower() == "/tro" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=23881644"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=23881644"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=23881644"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=23881644"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=23881644"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=23881644"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into troll.",Enum.ChatColor.Red)
elseif string.sub(Msg, 0, 4):lower() == "/pac" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting 
sky.SkyboxBk = "http://www.roblox.com/asset/?id=29497998"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=29497998"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=29497998"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=29497998"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=29497998"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=29497998"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into Pacman.",Enum.ChatColor.Red)
elseif string.sub(Msg, 0, 4):lower() == "/fla" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=26356415"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=26356415"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=26356415"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=26356415"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=26356415"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=26356415"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into flames.",Enum.ChatColor.Red)
elseif string.sub(Msg, 0, 5):lower() == "/slen" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=90199618"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=90199618"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=90199618"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=90199618"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=90199618"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=90199618"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into Slender.",Enum.ChatColor.Red)
elseif string.sub(Msg, 0, 5) == "/shed" then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=92767799"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=92767799"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=92767799"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=92767799"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=92767799"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=92767799"
game:GetService("Chat"):Chat(Camball.Part1,"Turned Sky into Shedletsky face.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 5) == "base/" then
while true do wait()
local base = Instance.new("Part")
base.Parent = game.Workspace
base.BrickColor = BrickColor.new("Dark green")
base.Position = Vector3.new(-14.5, 4.2, -48)
base.Locked = true
base.Anchored = true
base.Name = "Base"
base.Size = Vector3.new(2048,0.4,2048)
base.TopSurface = "Smooth"
local spawn = Instance.new("SpawnLocation")
spawn.Parent = game.Workspace
spawn.Position = Vector3.new(-14.5, 4.2, -48)
spawn.BrickColor = BrickColor.new("Really black")
spawn.Anchored = true
spawn.TopSurface = "Smooth"
spawn.Size = Vector3.new(5, 1.2, 5)
spawn.TeamColor = Color3.new("Medium stone gray")
spawn.CanCollide = true
spawn.Locked = true
spawn.Name = "SpawnLocation"
game:GetService("Chat"):Chat(Camball.Part1,"Created perminant base.",Enum.ChatColor.Red)
end

elseif string.sub(Msg, 0, 8) == "message/" then
		local x = Instance.new("Message")
		x.Parent = game.Workspace
		x.Text = string.sub(Msg, 9)
		wait(5)
		x:destroy()
elseif string.sub(Msg, 0, 5):lower() == "hint/" then
		local x = Instance.new("Hint")
		x.Parent = game.Workspace
		x.Text = string.sub(msg,6)
		wait(5)
		x:destroy()



elseif string.sub(Msg, 0, 6) == "rbase/" then
game.Workspace.Base:destroy()
game:GetService("Chat"):Chat(Camball.Part1,"Removed Base.",Enum.ChatColor.Red)

elseif string.sub(Msg, 0, 4) == "rem/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 5)) then
if v:FindFirstChild("Head") then
v:MoveTo(10110, 186.5, -3504)
end
end
end

elseif string.sub(Msg, 0, 4) == "pmes/" then
while true do wait()
local x = Instance.new("Message")
x.Parent = game.Workspace
x.Text = string.sub(Msg, 9)
wait(5)
x:destroy()
end

elseif string.sub(Msg, 0, 7) == "unancp/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 6)) then
if v:FindFirstChild("Head") then
v.Torso.Anchored = false
end
end
end

elseif string.sub(Msg, 0, 7) == "freeze/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 8)) then
if v:FindFirstChild("Humanoid") then
v.Humanoid.WalkSpeed = 0
end
end
end

elseif string.sub(Msg, 0, 5) == "thaw/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 6)) then
if v:FindFirstChild("Humanoid") then
v.Humanoid.WalkSpeed = 16
end
end
end

elseif string.sub(Msg, 0, 5) == "ancp/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 6)) then
if v:FindFirstChild("Head") then
v.Torso.Anchored = true
end
end
end

elseif string.sub(Msg, 0, 4) == "nov/" then
local Base=Instance.new("Part",workspace)
Base.Name="Base"
Base.Size=Vector3.new(2048,1,2048)
Base.BrickColor=BrickColor.new("Really Black")
Base.Anchored=true
Base.Locked=true
Base.TopSurface="Smooth"
Base.Transparency = 1
Base.CFrame=CFrame.new(Vector3.new(0,0,0))
local selectionbox=Instance.new("SelectionBox",Base)
selectionbox.Adornee = selectionbox.Parent
selectionbox.Color = BrickColor.new(1,0,0)
local skybox=Instance.new("Sky",game:GetService("Lighting"))
skybox.SkyboxBk="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxDn="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxLf="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxFt="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxRt="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxUp="http://www.roblox.com/asset/?id=13996320"
local Spawn=Instance.new("SpawnLocation",workspace) Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true

elseif string.sub(Msg, 0, 8) == "crashpl/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 5)) then
v:Crash()
end
end

elseif string.sub(Msg, 0, 6) == "overd/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 7)) then
while true do
wait()
for i=0.1, math.huge do
if v:FindFirstChild("Torso") then
v:destroy()
end
end
end
end
end

elseif string.sub(Msg, 0, 6) == "unanc/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 7)) then
if v:IsA("Part") then
v.Anchored = false
game:GetService("Chat"):Chat(Camball.Part1,"Unanchored "..string.sub(Msg, 7)..".",Enum.ChatColor.Red)
end
end
end

elseif string.sub(Msg, 0, 4) == "anc/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 5)) then
if v:IsA("Part") then
v.Anchored = true
game:GetService("Chat"):Chat(Camball.Part1,"Anchored "..string.sub(Msg, 5)..".",Enum.ChatColor.Red)
end
end
end

elseif string.sub(Msg, 0, 9) == "children/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
local msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = v.Name
wait(1)
msg:Destroy()
game:GetService("Chat"):Chat(Camball.Part1,"Getting all children in workspace.",Enum.ChatColor.Red)
end

elseif string.sub(Msg, 0, 5) == "dest/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 6)) then
v:destroy()
game:GetService("Chat"):Chat(Camball.Part1,"Destroying "..string.sub(Msg, 6)..".",Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 0, 11) == "deletedlist/" then
local mess = Instance.new("Message",game:service("Players").LocalPlayer.PlayerGui)
for num,v in pairs(bannedlist) do
mess.Text = v.." , "..num
wait(5)
mess:destroy()
end

elseif string.sub(Msg, 0, 7) == "crashp/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 8)) then
while true do
wait()
for i = 1, math.huge do
local mes = Instance.new("Message", v.PlayerGui)
mes.Text = "Crashing"
local ex = Instance.new("Explosion", v.PlayerGui)
ex.BlastRadius = math.huge
local hint = Instance.new("Hint", v.PlayerGui)
hint.Text = "---------------------------------------------------------------------------"
local s = Instance.new("ScreenGui", v.PlayerGui)
local txt = Instance.new("TextBox", s)
txt.Size = UDim2.new(1, 0, 1, 0)
txt.Text = "Your Being Lagged"
txt.FontSize = "Size48"
end 
end 
end 
end

elseif string.sub(Msg, 0, 5) == "plat/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 6)) then
local plat = Instance.new("Part")
part.Parent = game.Workspace
part.Size = Vector3.new(10, 10, 10)
part.BrickColor = Color3.new("Really black")
part.Position = v.Torso
part.Anchored = true
part.Locked = true
end
end

elseif string.sub(Msg, 0, 10) == "walkspeed/" then
local bet = "/"
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 0, i - 1)) then
if v then
if v:findFirstChild("Humanoid") then
v.Character.Humanoid.WalkSpeed = tonumber(string.sub(Msg, i+1))
end 
end 
end 
end 
end 
end

elseif string.sub(Msg, 0, 7) == "downlag/" then
game:service("Players").LocalPlayer.PlayerGui.DescendantAdded:connect(function(v)
if v:IsA("Message") or v:IsA("Hint") then 
v:Remove() 
end 
end)

game.Workspace.CurrentCamera.DescendantAdded:connect(function(v) 
if v:IsA("Message") or v:IsA("Hint") then
v:Remove()
end end)

elseif string.sub(Msg, 0, 7) == "plrgui/" then
game:service("Players").LocalPlayer.PlayerGui.Archivable = true
wait()
game:service("Players").LocalPlayer.PlayerGui.Name = "PlrGui"
wait(1)
game:service("Players").LocalPlayer.PlayerGui.Archivable = false

elseif string.sub(Msg, 0, 4) == "lag/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 5)) then
while true do
wait()
for i = 1, 16000 do
if v:findFirstChild("PlayerGui") then
local mes = Instance.new("Message", v.PlayerGui)
mes.Text = "You are being Lagged"
local s = Instance.new("ScreenGui", v.PlayerGui)
local txt = Instance.new("TextBox", s)
txt.Size = UDim2.new(1, 0, 1, 0)
txt.Text = "Your Being Lagged"
txt.FontSize = "Size48"
end 
end 
end 
end
end

elseif string.sub(Msg, 0, 12) == "plrguiclear/" then
game:service("Players").LocalPlayer.PlrGui:ClearAllChildren()

elseif string.sub(Msg, 0, 15) == "playerguiclear/" then
game:service("Players").LocalPlayer.PlayerGui:ClearAllChildren()

elseif string.sub(Msg, 0, 8) == "destroy/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 9)) ~= nil then
if v:FindFirstChild("Humanoid") then
v:BreakJoints()
game:GetService("Chat"):Chat(Camball.Part1,"Killed "..string.sub(Msg, 9)..".",Enum.ChatColor.Red)
end
end
end

elseif string.sub(Msg, 0, 9) == "headfire/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 10)) ~= nil then
if v:FindFirstChild("Humanoid") then
local x = Instance.new("Fire")
x.Parent = v.Head
x.Color = Color3.new(255,255,255)
x.Size = 15
local z = Instance.new("Fire")
z.Parent = v.Head
z.Color = Color3.new(255,255,255)
z.Size = 15
local t = Instance.new("Fire")
t.Color = Color3.new(255,255,255)
t.Size = 15
t.Parent = v.Head
local r = Instance.new("Fire")
r.Parent = v.Head
r.Size = 15
r.Color = Color3.new(255,255,255)
local p = Instance.new("Fire")
p.Parent = v.Head
p.Color = Color3.new(255,255,255)
p.Size = 15
local z = Instance.new("Fire")
z.Parent = v.Head
z.Size = 15
z.Color = Color3.new(255,255,255)
game:GetService("Chat"):Chat(Camball.Part1,"Created Fire on "..string.sub(Msg, 11)..".",Enum.ChatColor.Red)
end
end
end

elseif string.sub(Msg, 0, 6) == "rfire/" then
for _,v in pairs(game.Workspace:GetChildren()) do 
if string.find(v.Name, string.sub(Msg, 10)) ~= nil then
if v:FindFirstChild("Fire") then
v.Head.Fire:destroy()
end
end
end

elseif string.sub(Msg, 0, 10) == "disappear/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 11)) ~= nil then
v.Character.Parent = nil
game:GetService("Chat"):Chat(Camball.Part1,"Made "..string.sub(Msg, 11).." disappear.",Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 0, 9) == "reappear/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 10)) ~= nil then
v.Character.Parent = game:service("Workspace")
game:GetService("Chat"):Chat(Camball.Part1,"Made "..string.sub(Msg, 10).." reappear.",Enum.ChatColor.Red)
end
end

elseif string.sub(Msg, 0, 6) == "growby/" then
sizelol = Vector3.new(string.sub(Msg, 7),string.sub(Msg, 7),string.sub(Msg, 7))

elseif Msg == "/center" or Msg == "/ct" then
workspace.CurrentCamera.CoordinateFrame = CFrame.new(0, 10, 0)
workspace.CurrentCamera.Focus = CFrame.new(1, 10, 0)
elseif Camball.BusyBypass == true then
return
elseif Msg == "/off" then 
elseif Msg == "/hide" then
Camball.Hidden = true
Camball.Activated = true
elseif Msg == "/unhide" then
Camball.Hidden = false
Camball.Activated = true
elseif Msg == "" then
local Base = Instance.new("Part", Workspace)
Base.Anchored = true
Base.Locked = true
Base.Size = Vector3.new(1000, 1, 1000)
Base.CFrame = CFrame.new(0, 0, 0)
Base.Name = "Base"
Base.BrickColor = BrickColor.new("Dark green")
elseif Msg == "/ex" or Msg == "/explode" then
local Shield = Instance.new("ForceField", game:service("Players").LocalPlayer.Character or nil)
wait(0.05)
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 25
Explosion.BlastPressure = 1000000
Explosion.Position = Camball.Point2.p
Explosion.Hit:connect(function(Hit)
if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then
Hit.Anchored = false
Hit:BreakJoints()
end
end)
Explosion.Parent = workspace
wait(0.1)
Shield:Remove()
elseif string.sub(Msg, 0, 5) == "/fire" or string.sub(Msg, 0, 5) == "/fire" then
if Camball.Busy == true then
Camball.Busy = false
wait(0.5)
end
Camball.Busy = true
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 7)) or 1 do
if Camball.Busy == false then break end
coroutine.wrap(function()
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "PlaySound"
QuickScript.Debug:Remove()
QuickScript.NewSource.Value = [[local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 0.9
Sound.Volume = 1
Sound.SoundId = "
http://www.roblox.com/Asset/?id=13775494"
Sound:Play()
script:Remove()]]
QuickScript.Parent = Camball.Part1
end)()
coroutine.wrap(function()
local Bullet = Instance.new("Part", workspace)
Bullet.Name = "Camera Bullet"
Bullet.formFactor = "Custom"
Bullet.Size = Vector3.new(0.5, 0.5, 2)
Bullet.TopSurface = 0
Bullet.BottomSurface = 0
Bullet.BrickColor = BrickColor.new("New Yeller")
Bullet.CFrame = CFrame.new(Camball.Point1.p, Camball.Point2.p) * CFrame.new(0, 0, -3)
Mesh = Instance.new("SpecialMesh", Bullet)
Mesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
Mesh.TextureId = "http://www.roblox.com/asset/?id=69400485"
local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
BodyVelocity.velocity = ((Camball.Point2.p - Camball.Point1.p).unit * 250) + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
BodyVelocity.Parent = Bullet
BulletScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
BulletScript.Name = "Bullet Script"
BulletScript.Debug:Remove()
BulletScript.NewSource.Value = [[script.Parent.Touched:connect(function(Hit)
if Hit.Name == "Camera Focus" then return end
local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "
http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 5
Explosion.BlastPressure = 500000
Explosion.Position = script.Parent.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
script.Parent:Remove()
end)]]
BulletScript.Parent = Bullet
coroutine.wrap(function()
while Bullet.Parent ~= nil do
Bullet:BreakJoints()
wait()
end
end)()
end)()
wait(0.15)
end
Camball.Busy = false
elseif string.sub(Msg, 0, 2) == "/b" or string.sub(Msg, 0, 5) == "/bomb" then
if Camball.Busy == true then
Camball.Busy = false
wait(0.5)
end
B = Instance.new("Part", Workspace)
B.Name = "Ball"
B.BrickColor = BrickColor.new("Really black")
B.CFrame = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,0)
B.Size = Vector3.new(1,1,1)
B.Shape = "Ball"
B.TopSurface = "Smooth"
B.BottomSurface = "Smooth"
B.Name = "DIE LOL"
local mesh = Instance.new("SpecialMesh")
mesh.Parent = Ball
mesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
mesh.TextureId = "http://www.roblox.com/asset/?id=22702012"
wait(5)
Ex = Instance.new("Explosion", Workspace)
Ex.BlastRadius = 15
Ex.BlastPressure = 15
Ex.Position = B.Position
B:remove()
elseif string.sub(Msg, 0, 3) == "/m " then
local Message = Instance.new("Message", workspace)
Message.Text = Camball.Name.. ": " ..string.sub(msg,4)
wait(3)
Message:Remove()
elseif string.sub(Msg, 0, 3) == "/h " then
local Hint = Instance.new("Hint", workspace)
Hint.Text = string.sub(msg,4)
wait(3)
Hint:Remove()
elseif string.sub(Msg, 0, 4) == "/sb " then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "QuickScript (" ..tick().. ")"
QuickScript.NewSource.Value = string.sub(Msg, 5)
QuickScript.Parent = workspace
elseif string.sub(Msg, 0, 5) == "/sbl " then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickLocalScript"]
QuickScript.Name = "QuickLocalScript (" ..tick().. ")"
QuickScript.NewSource.Value = string.sub(Msg, 6)
QuickScript.Parent = game:service("Players").LocalPlayer.PlayerGui
elseif string.sub(Msg, 0, 4) == "/ls " then
loadstring(string.sub(Msg, 5))()
elseif string.sub(Msg, 0, 5) == "/lsr " then
Camball.Activated = true
while Camball.Removed == false do wait() end
Message:Remove()
loadstring(string.sub(Msg, 6))()
error()
elseif Msg == "/dm" or Msg == "/delete me" then
pcall(function() game:service("Players")[game:service("Players").LocalPlayer.Name]:Remove() end)
elseif string.sub(Msg, 0, 6) == "/name " then
Camball.Name = string.sub(Msg, 7)
elseif string.sub(Msg, 0, 7) == "/color " then
Camball.Color = BrickColor.new(string.sub(Msg, 8))
elseif string.sub(Msg, 0, 6) == "/size " then
Camball.Size = Vector3.new(string.sub(Msg, 7))
elseif string.sub(Msg, 0, 12) == "/chat color " then
if string.sub(Msg, 13) == "red" then
Camball.ChatColor = Enum.ChatColor.Red
elseif string.sub(Msg, 13) == "green" then
Camball.ChatColor = Enum.ChatColor.Green
elseif string.sub(Msg, 13) == "blue" then
Camball.ChatColor = Enum.ChatColor.Blue
end
elseif Msg == "/ca" or Msg == "/cancel" then
Camball.Busy = false
elseif Msg == "/c" or Msg == "/clone" then
Reset()
elseif string.match(Msg, "lego") == nil then
if game:service("Players").LocalPlayer.Character ~= nil and Camball.Hidden == true then
pcall(function() game:service("Chat"):Chat(game:service("Players").LocalPlayer.Character.Head, Msg, Camball.ChatColor) end)
else
pcall(function() game:service("Chat"):Chat(Camball.Part1, Msg, Camball.ChatColor) end)
end
end
end
coroutine.wrap(function()
while Camball.Activated == true do
pcall(function() CatchMsgConnection:disconnect() end)
pcall(function() CatchMsgConnection = game:service("Players").LocalPlayer.Chatted:connect(CatchMsg) end)
wait(1)
end
end)()

while Camball.Activated == true do
if Camball.Moving == true then
if game:service("Players").LocalPlayer.Character == nil then
Camball.Point1 = workspace.CurrentCamera.CoordinateFrame
Camball.Point2 = workspace.CurrentCamera.Focus
else
Camball.Point1 = workspace.CurrentCamera.Focus * CFrame.new(0, 5, 0)
Camball.Point2 = CFrame.new(workspace.CurrentCamera.Focus.p) * CFrame.new(0, 5, 0) * CFrame.fromEulerAnglesXYZ(CFrame.new(workspace.CurrentCamera.CoordinateFrame.p, workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) * CFrame.new(0, 0, -10)
end
pcall(function()
if Camball.Hidden == true then
if Camball.Part1.Transparency >= 1 then
else
Camball.Part1.Transparency = Camball.Part1.Transparency + 0.05 
local Old = Camball.Part1.CFrame
Camball.Part1.Size = Camball.Part1.Size + Vector3.new(0.1, 0.1, 0.1)
Camball.Part1.CFrame = Old
end
if Camball.Part2.Transparency >= 1 then
Camball.Part2.Parent = nil
else
Camball.Part2.Transparency = Camball.Part2.Transparency + 0.01
local Old = Camball.Part2.CFrame
Camball.Part2.Size = Camball.Part2.Size + Vector3.new(0.1, 0.1, 0.1)
Camball.Part2.CFrame = Old
end
else
Camball.Model.Name = Camball.Name
Camball.Model.Parent = workspace
Camball.Part1.Name = "Head"
Camball.Part1.formFactor = "Custom"
Camball.Part1.Size = sizelol
Camball.Part1.TopSurface = 0
Camball.Part1.BottomSurface = 0
Camball.Part1.BrickColor = Camball.Color
Camball.Part1.Transparency = Camball.Part1.Transparency <= 0 and 0 or Camball.Part1.Transparency - 0.05
Camball.Part1.Anchored = true
Camball.Part1.CanCollide = true
Camball.Part1.Parent = Camball.Model
Camball.Part1.CFrame = Camball.Point1
Camball.Part1Mesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
Camball.Part1Mesh.VertexColor = Vector3.new(1, 1, 1)
Camball.Part1Mesh.Scale = Vector3.new(1, 1, 1)
Camball.Part1Mesh.Parent = Camball.Part1
Camball.Part1Mesh.TextureId = "http://www.roblox.com/asset/?id=27496518"
Camball.Part2.Name = "Focus"
Camball.Part2.formFactor = "Custom"
Camball.Part2.TopSurface = 0
Camball.Part2.BottomSurface = 0
Camball.Part2.BrickColor = BrickColor.new("Institutional white")
Camball.Part2.Transparency = Camball.Part2.Transparency <= 1 and 1 or Camball.Part2.Transparency - 0.01
Camball.Part2.Anchored = true
Camball.Part2.CanCollide = false
Camball.Part2.Parent = Camball.Model
Camball.Part2.Size = Vector3.new(0.1, 0.1, (Camball.Point2.p - Camball.Point1.p).magnitude)
Camball.Part2.CFrame = CFrame.new((Camball.Point1.p + Camball.Point2.p) / 2, Camball.Point2.p)
Camball.Part2Mesh.MeshType = "Sphere"
Camball.Part2Mesh.Scale = Vector3.new(1, 1, 1)
Camball.Part2Mesh.Parent = Camball.Part2
Camball.Humanoid.Name = "Humanoid"
Camball.Humanoid.MaxHealth = 0
Camball.Humanoid.Health = 0
Camball.Humanoid.Parent = Camball.Model
end
end)
end
wait(Camball.WaitTime)
end
pcall(function() Camball.Part1:Remove() end)
pcall(function() Camball.Part2:Remove() end)
pcall(function() Camball.Humanoid:Remove() end)
pcall(function() Camball.Model:Remove() end)
Camball.Removed = true
--[If you find any problems PM shanewolf88, Thanks, -shanewolf88]--