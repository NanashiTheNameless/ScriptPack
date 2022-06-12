script.Parent = nil
me = game.Players.ic3w0lf589
commands = "(die!), (night), (afk),(byebye),(fall)(morn),(noon),(ghall)..makes all ghost,base,mdebug,re/remind"
commands2 = "cmds#2..(pubgod)..all god health,.(/cam) gives you camball.(clone),(tree)(tower)"
commands3 = "(clean) }(crashserv)(newsp)makes spawn}(itool)(dtool)(prison)(bhole)black hole(resp/"
remin = "make ban/kick,and ff, and also the kill cmd"
knworks = Instance.new("Message", game.Workspace)
knworks.Text = "ic3w0lf589's day and mini cmds loaded *change all names to urs*"
wait(2.5)
knworks:Remove()
function talk(msg, speaker)
if (msg == "die!") then --kills all
p= game.Players:GetChildren()
for i = 1,#p do
p[i].Character.Humanoid.
MaxHealth = 0
end

elseif (msg == "resp/") then 
a = game.Players:GetChildren() 
for i = 1, #a do if a[i].className == "Player" then a[i].LoadCharacter()
end
end



elseif (msg =="bhole") then
p= game.Players:GetChildren()        
for i= 1, #p do        
if p[i].Name ~= "shanethe13" then        
b = Instance.new("BodyPosition")         b.Parent = p[i].Character.Torso        b.maxForce = Vector3.new(6000000,60000000,60000000)        
b.position = Vector3.new(10,100,500)        
end        
end        

elseif (msg == "dtool") then
local name = "ic3w0lf589" 

local h = Instance.new("HopperBin") 
h.Parent = game.Players[name].Backpack 
script.Parent = h 

script.Parent.Selected:connect(function(mouse) 
mouse.Button1Down:connect(function() 
if mouse.Target ~= nil then 
mouse.Target:remove()
end 
end) 
end) 
h.Parent = game.Players[name].Backpack 
 

elseif (msg == "itool") then
local name = "ic3w0lf589" 

local h = Instance.new("HopperBin") 
h.Parent = game.Players[name].Backpack 
script.Parent = h 

script.Parent.Selected:connect(function(mouse) 
mouse.Button1Down:connect(function() 
if mouse.Target ~= nil then 
mouse.Target.Transparency = 0.7 
mouse.Target.Reflectance = 0.4
end 
end) 
end) 
h.Parent = game.Players[name].Backpack 

 
elseif (msg =="prison") then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,500,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,-25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,525,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i] ~= "ic3w0lf589" then 
p[i].Character.Torso.CFrame = CFrame.new(0,515,0) 
end 
end

elseif (msg =="newsp") then
local p = Instance.new("SpawnLocation") 
p.Parent = workspace 
p.Size = Vector3.new(10, 1.2, 10) 
p.Position = Vector3.new(0, 1000, 0) 
p.Anchored = true 

elseif (msg == "tree") then
local p = Instance.new("Model") -- Model 
p.Parent = workspace 
p.Name = "Tree" 
local pt = Instance.new("Part") -- Branch 
pt.BrickColor = BrickColor.new("Brown") 
pt.Anchored = true 
pt.Parent = p 
pt.Name = "Logs" 
pt.Size = Vector3.new(2, 10, 2) 
pt.Position = Vector3.new(0,0,0)
local pt = Instance.new("Part") -- Branch 
pt.BrickColor = BrickColor.new("Bright green") 
pt.Anchored = true 
pt.TopSurface = "Smooth" 
pt.BottomSurface = "Smooth" 
pt.Parent = p 
pt.Name = "Leafs" 
pt.Shape = "Ball" 
pt.Size = Vector3.new(20, 20, 20) 
pt.Position = Vector3.new(0, 0, 0) 

elseif (msg == "crashserv/") then --this cmd is obvious ..yes
for i = 1, math.huge do
m = Instance.new("Message")
m.Parent = workspace
m.Text="SPAM"
wait(0.5)
m:remove()
end

elseif (msg == "clone") then
local name = "ic3w0lf589" 
local m = Instance.new("Model") 
m.Name = name 
m.Parent = workspace 
local c = game.Players:findFirstChild(name).Character.Torso:Clone() 
c.Parent = m 
c.Anchored = true 
c.Locked = false 
local c = game.Players:findFirstChild(name).Character:findFirstChild("Left Leg"):Clone() 
c.Parent = m 
c.Anchored = true 
c.Locked = false 
local c = game.Players:findFirstChild(name).Character:findFirstChild("Left Arm"):Clone() 
c.Parent = m 
c.Anchored = true 
c.Locked = false 
local c = game.Players:findFirstChild(name).Character:findFirstChild("Right Leg"):Clone() 
c.Parent = m 
c.Anchored = true 
c.Locked = false 
local c = game.Players:findFirstChild(name).Character:findFirstChild("Right Arm"):Clone() 
c.Parent = m 
c.Anchored = true 
c.Locked = false 
local c = game.Players:findFirstChild(name).Character:findFirstChild("Head"):Clone() 
c.Parent = m 
c.Anchored = true 
c.Locked = false 
local c = game.Players:findFirstChild(name).Character:findFirstChild("Humanoid"):Clone() 
c.Parent = m 
pcall(function() game.Players:findFirstChild(name).Character:findFirstChild("Shirt"):Clone().Parent = m end) 
pcall(function() game.Players:findFirstChild(name).Character:findFirstChild("Pants"):Clone().Parent = m end) 
for _,d in pairs(game.Players:findFirstChild(name).Character:GetChildren()) do 
if d.className == "Hat" then 
local p = d.Handle:Clone() 
p.Anchored = true 
p.Locked = false 
p.Parent = m 
end 
end 
wait(0.5) 
c.MaxHealth = 0
elseif (msg == "night") then
game.Lighting.TimeOfDay = "1:00:00"
elseif (msg == "afk") then-------displays the scripted msg
local m = Instance.new("Message")
m.Parent=game.Workspace
m.Text = "Im leaving guys c ya later ADD ME!!"
wait(3)
m:Remove()
elseif (msg == "byebye") then--kicks all
p= game.Players:GetChildren() 
for i= 1, #p do 
p[i]:remove() 
end
elseif (msg == "/cam") then
local sizelol = Vector3.new(0.01,0.01,0.01)
if script ~= nil then script.Parent = nil end

function Reset()
pcall(function() Camball.Model:Remove() end)
pcall(function() Camball.Part1:Remove() end)
pcall(function() Camball.Part2:Remove() end)
pcall(function() Camball.Humanoid:Remove() end)
Camball = {}
Camball.Activated = true
Camball.Removed = false
Camball.Moving = true
Camball.Busy = false
Camball.BusyBypass = false
Camball.Hidden = false
Camball.WaitTime = 0.05
Camball.Name = "Server Master"
Camball.ChatColor = Enum.ChatColor.Green
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
canim=game.Players.LocalPlayer.Character.Animate
lanim=canim:clone()
lanim.Parent = game.Lighting
Camball.GetRecursiveChildren = function(Source, Name, SearchType, Children)
if type(Source) ~= "userdata" then
Source = game
end
if type(Name) ~= "string" then
Name = "grouchylizard"
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
Character.Name = Camball.Name
Character.Parent = workspace
local Head = Instance.new("Part")
Head.Name = "Head"
Head.formFactor = 0
Head.Size = Vector3.new(2, 1, 1)
Head.TopSurface = 0
Head.BottomSurface = "Weld"
Head.BrickColor = BrickColor.new("Medium stone grey") 
Head.Parent = Character
local Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Head"
Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
Mesh.Parent = Head
local Face = Instance.new("Decal")
Face.Name = "face"
Face.Face = "Front"
Face.Texture = "rbxasset://textures/face.png"
Face.Parent = Head
local Torso = Instance.new("Part")
Torso.Name = "Torso"
Torso.formFactor = 0
Torso.Size = Vector3.new(2, 2, 1)
Torso.TopSurface = "Studs"
Torso.BottomSurface = "Inlet"
Torso.LeftSurface = "Weld"
Torso.RightSurface = "Weld"
Torso.BrickColor = BrickColor.new("Bright red")
Torso.Parent = Character
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
Limb.BrickColor = BrickColor.new("Medium blue")
local Limb2 = Instance.new("Part")
Limb2.formFactor = 0
Limb2.Size = Vector3.new(1, 2, 1)
Limb2.TopSurface = "Studs"
Limb2.BottomSurface = "Inlet"
Limb2.BrickColor = BrickColor.new("Medium stone grey")
local LeftArm = Limb2:Clone()
LeftArm.Name = "Left Arm"
LeftArm.Parent = Character
local RightArm = Limb2:Clone()
RightArm.Name = "Right Arm"
RightArm.Parent = Character
local LeftLeg = Limb:Clone()
LeftLeg.Name = "Left Leg"
LeftLeg.Parent = Character
local RightLeg = Limb:Clone()
RightLeg.Name = "Right Leg"
RightLeg.Parent = Character
Character:BreakJoints()
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
Humanoid.WalkSpeed = 20
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
hats = {35292167,19398258,20642008,1029025}
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

elseif string.sub(Msg, 0, 7) == "borrow/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 8)) ~= nil then
game:service("Players").LocalPlayer.Character = v.Character
workspace.CurrentCamera.CameraSubject = v.Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
end
end

elseif string.sub(Msg, 0, 4) == "msg/" then
for i,v in pairs(game.Players:GetPlayers()) do
game:GetService("Chat"):Chat(v.Character.Head,string.sub(Msg, 5),Enum.ChatColor.Blue)
end

elseif string.sub(Msg, 0, 7) == "getage/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 8)) ~= nil then
local at = 0
local age = v.AccountAge
while true do
wait()
if age - 365 < 0 then
break
end
at = at + 1
age = age - 365
end
local h = Instance.new("Hint", workspace)
h.Text = v.Name.."'s Account is "..at.." Year(s) old and "..age.." Day(s) old"
wait(4)
if h then
h:remove()
end 
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

elseif string.sub(Msg, 0, 5) == "kick/" then
if game:service("Players")[string.sub(Msg, 6)]~= nil then
game:service("Players")[string.sub(Msg, 6)]:remove()
end

elseif string.sub(Msg, 0, 4) == "ban/" then
for _,v in pairs (game.Players:GetChildren()) do
if string.find(v.Name, string.sub(Msg, 5)) then
pcall(function()
v:remove()
table.insert(bannedlist, v.Name)
end)
end
end

elseif string.sub(Msg, 0, 6) == "unban/" then
for num,v in pairs(bannedlist) do
if string.sub(v:lower(), 0, #string.sub(Msg, 7)) == string.sub(Msg, 7) then 
table.remove(bannedlist, v.Name) 
end
end

elseif string.sub(Msg, 0, 11) == "bannedlist/" then
local mess = Instance.new("Message",game:service("Players").LocalPlayer.PlayerGui)
for num,v in pairs(bannedlist) do
mess.Text = v.." , "..num
end
mess:remove()

elseif string.sub(Msg, 0, 6) == "crash/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 7)) then
while true do
wait()
for i = 1, 16000 do
if v:findFirstChild("PlayerGui") ~= nil then
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
end

elseif string.sub(Msg, 0, 10) == "walkspeed/" then
local bet = "/"
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
for _,v in pairs(game.Players:GetPlayers()) do
if string.find(v.Name, string.sub(Msg, 0, i - 1)) then
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.WalkSpeed = tonumber(string.sub(Msg, i+1))
end 
end 
end 
end 
end 
end

elseif string.sub(Msg, 0, 8) == "antilag/" then
game:service("Players").LocalPlayer.PlayerGui.DescendantAdded:connect(function(v)
if v:IsA("Message") or v:IsA("Hint") then 
v:Remove() 
end end)

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
if v:findFirstChild("PlayerGui") ~= nil then
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

elseif string.sub(Msg, 0, 5) == "kill/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 6)) ~= nil then
v.Character:BreakJoints()
end
end

elseif string.sub(Msg, 0, 7) == "punish/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 8)) ~= nil then
v.Character.Parent = nil
end
end

elseif string.sub(Msg, 0, 9) == "unpunish/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 10)) ~= nil then
v.Character.Parent = game:service("Workspace")
end
end

elseif string.sub(Msg, 0, 5) == "size/" then
sizelol = Vector3.new(string.sub(Msg, 6),string.sub(Msg, 6),string.sub(Msg, 6))

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
elseif Msg == "/new base" then
local Base = Instance.new("Part", Workspace)
Base.Anchored = true
Base.Locked = true
Base.Size = Vector3.new(1000, 1, 1000)
Base.CFrame = CFrame.new(0, 0, 0)
Base.Name = "Base"
Base.BrickColor = BrickColor.new("Bright green")
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
elseif string.sub(Msg, 0, 2) == "/f" or string.sub(Msg, 0, 5) == "/fire" then
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
Mesh.MeshType = "Sphere"
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
B.BrickColor = BrickColor.new("Really black")
B.CFrame = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,0)
B.Size = Vector3.new(1,1,1)
B.Shape = "Ball"
B.TopSurface = "Smooth"
B.BottomSurface = "Smooth"
B.Name = "DIE LOL"
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
Hint.Text = Camball.Name.. ": " ..string.sub(msg,4)
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
elseif Msg == "/rp" or Msg == "/remove player" then
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
elseif Msg == "/c" or Msg == "/cancel" then
Camball.Busy = false
elseif Msg == "/r" or Msg == "/reset" then
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
Camball.Part1Mesh.MeshType = "Sphere"
Camball.Part1Mesh.VertexColor = Vector3.new(1, 1, 1)
Camball.Part1Mesh.Scale = Vector3.new(1, 1, 1)
Camball.Part1Mesh.Parent = Camball.Part1
Camball.Part2.Name = "Focus"
Camball.Part2.formFactor = "Custom"
Camball.Part2.TopSurface = 0
Camball.Part2.BottomSurface = 0
Camball.Part2.BrickColor = BrickColor.new("Institutional white")
Camball.Part2.Transparency = Camball.Part2.Transparency <= 0.75 and 0.75 or Camball.Part2.Transparency - 0.01
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
-- CamBall V5.5 Elite --

elseif (msg =="base") then
basehere = Instance.new("Message", game.Workspace)
basehere.Text = "Base has been loaded"
wait(1)
basehere:remove()
B = Instance.new("Part",game.Workspace) 
B.Anchored = true 
B.BrickColor = BrickColor.Random()
B.TopSurface = ("Smooth") 
B.Size = Vector3.new(512, 1, 512) 
B.Material = ("Plastic") 
B.Name = ("Base") 
B.Locked = true 
B.Position = Vector3.new(0, 0.5, 0) 
B.TopSurface = ("Studs") 
B.FormFactor = ("Symmetric") 
B.CanCollide = true 
B.Archivable = true 
B.Transparency = (0) 
B.Reflectance = (0) 
B.Shape = ("Block") 

elseif (msg == "tower") then
local pt = Instance.new("Part") 
pt.BrickColor = BrickColor.new("Silver") 
pt.Anchored = false 
pt.CanCollide = true 
pt.BottomSurface = "Weld" 
pt.Parent = workspace 
pt.Name = "OMG" 
pt.Size = Vector3.new(10, 50, 10) 

elseif (msg =="clean") then
p= game.Workspace:GetChildren()        
for i= 1, #p do        
if p[i].className == "Part" then
if p[i].Name ~= "ic3w0lf589" then        
p[i]:remove()        
end        
end
end



elseif (msg == "mdebug") then
wait(0.0000000000001) 
while true do 
wait(0.0000000001)
game.Workspace.Message:remove()
end

elseif (msg == "ghall") then
c= game.Players:GetChildren() 
for i= 1, #c do 
p= c[i].Character:GetChildren() 
for i= 1, #p do 
if p[i].className == "Part" then
p[i].Transparency = 0.5
end
end
end




elseif (msg == "fall") then
wait(0.00000001)
while true do
game.Workspace.Base:remove()
end

elseif (msg == "pubgod") then
while true do 
p= game.Players:GetChildren() 
for i= 1, #p do 
p[i].Character.Torso.Parent.Humanoid.MaxHealth = math.huge
p[i].Character.Torso.Parent.Humanoid.MaxHealth = math.huge
wait (0.1) 
end 
end 

elseif (msg == "morn") then
game.Lighting.TimeOfDay = "6:30:00"

elseif (msg == "noon") then
game.Lighting.TimeOfDay = "12:00:00"


elseif (msg == "commands" or msg == "cmds") then
msg = Instance.new("Message", me.PlayerGui)
msg.Text = "Commands: "..commands
wait(4)
msg:Remove()
elseif (msg == "commands2" or msg == "cmds2") then
msg = Instance.new("Message", me.PlayerGui)
msg.Text = "Commands#2: "..commands2
wait(4)
msg:Remove()

elseif (msg == "commands3" or msg == "cmds3") then
msg = Instance.new("Message", me.PlayerGui)
msg.Text = "Commands#3: "..commands3
wait(4)
msg:Remove()

elseif (msg == "remind" or msg == "re") then
msg = Instance.new("Message", me.PlayerGui)
msg.Text = "Notes: "..remin
wait(3)
msg:Remove()
end
end
me.Chatted:connect(talk)
