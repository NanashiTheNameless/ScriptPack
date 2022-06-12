-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if script~= nil then tempscr = script:Clone() end
if script ~= nil and script:findFirstChild("DynamicSource",true) == nil then script.Parent = nil end
--To do: Add a command that makes a sphere from the cam that grows killing anyone it touches but not breaking props, also make a version that breaks everything it touches
--Add a command that allows for flying?
--Add a command that allows for no local players (difficult without insertservice)
--Add a command that is epic
--Fix the player getting function to use all, guests, others, me etc etc and add table looping to commands)
--Fix Backup/Restore Game Commands
-- add jump height command?
-- make the cube spin (wierd bug)
-- make a disco
-- when plugins are patched use the admin localscript as a loadstring clonable script to allow for pseudoscripts to be run on players!
-- add a grab/fling command
if script ~= nil then
newLS = script:FindFirstChild("DynamicSource",true) 
end
createdorbs = {} 
NewTerrain = Workspace:FindFirstChild("Terrain",true)
NewInstance = Instance.new
NewColor3 = Color3.new
NewVector3 = Vector3.new
NewCFrame = CFrame.new
NewAnim = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate",true):Clone()
game:GetService("Players").LocalPlayer.Character.Archivable = true
NewClone = game:GetService("Players").LocalPlayer.Character:Clone()
NewBrickColor = BrickColor.new
NewUDim2 = UDim2.new
NewWorkspace = game:GetService("Workspace")
NewPlayers = game:service("Players")
NewDebris = game:GetService("Debris")
NewStarterPack = game:GetService("StarterPack")
NewStarterGui = game:GetService("StarterGui")
NewScriptContext = game:GetService("ScriptContext")
NewLighting = game:GetService("Lighting")
NewRunService = game:GetService("RunService")
NewInsertService = game:GetService("InsertService")
Player = NewPlayers.LocalPlayer
Settings = {}
Settings.Activated = true
Settings.AB = false
Settings.QSID = 66369651
Settings.Name = " "
Settings.Hidden = true
Settings.Point1 = NewCFrame()
Settings.Point2 = NewCFrame()
Settings.Part0 = NewInstance("Model")
Settings.Part1 = NewInstance("Part")
Settings.Part1.Transparency = 1
Settings.Part1Mesh = NewInstance("SpecialMesh", Settings.Part1)
Settings.Part2 = NewInstance("Part")
Settings.Part2.Transparency = 1
Settings.Part2Mesh = NewInstance("SpecialMesh", Settings.Part2)
Settings.Part3 = NewInstance("Humanoid")
if newLS ~= nil then 
print("DyamicSource Found")
loadstring(newLS.Value)()
Settings.Activated = false
end
function GetExtraJoints()
JointNumber=0 
local function GetJoints(Parent) 
if (Parent~=nil) then 
for _,Item in pairs(Parent:GetChildren()) do 
pcall(function() 
if (Item:IsA("JointInstance")) then 
if (Item.Part0==nil) and (Item.Part1==nil) then 
JointNumber=JointNumber+1 Item.Parent=nil end end 
GetJoints(Item) end) 
end 
end 
end 
GetJoints(game:GetService("Players")) GetJoints(Workspace) GetJoints(game:GetService("InsertService")) GetJoints(game:GetService("JointsService")) GetJoints(game:GetService("Lighting")) GetJoints(game:GetService("StarterGui")) GetJoints(game:GetService("StarterPack"))
mes = NewInstance("Message",Workspace) mes.Text = "Joints Cleared: " .. JointNumber
wait(3)
mes.Text = ""
mes.Parent = nil
end
function Insert(asset)
g = game:GetObjects("rbxassetid://"..asset..[["]])[1]
g.Parent = Workspace 
--g:MakeJoints()
return g
end
function BackupGame(BackupIndex) -- todo fix
local BackupServices={"Lighting","StarterPack","StarterGui","SoundService","Workspace"}
local BackupData={};
for Index,BackupService in pairs(BackupServices) do
local Container=NewInstance("Model");
Container.Name=BackupService;
BackupData[BackupService]=Container;
for ChildIndex,Child in pairs(game:GetService(BackupService):GetChildren()) do
if (Child.archivable) and (Child~=script) and (Child.className ~= "Terrain") then
Child:Clone().Parent=Container;
end
end
end
GameBackups[BackupIndex]=BackupData;

mes2 = NewInstance("Message",Workspace)
mes2.Text = "Game Backup Complete"
wait(3)
mes2:Remove()
end
function RestoreGame(BackupIndex) -- todo fix
local BackupServices={"Lighting","StarterPack","Starter","SoundService","Workspace"}
local BackupData=GameBackups[BackupIndex];
for Index,BackupService in pairs(BackupServices) do
for ChildIndex,Child in pairs(game:GetService(BackupService):GetChildren()) do
if (Child~=script) then
pcall(Child.Remove,Child);
end
end
end
for Index,Container in pairs(BackupData) do
for ChildIndex,Child in pairs(Container:GetChildren()) do
local NewChild=Child:Clone();
NewChild.Parent=game:GetService(Container.Name);
pcall(function() NewChild:MakeJoints(); end);
end
end
mes3 = NewInstance("Message",Workspace)
mes3.Text = "Game Restoration Complete"
wait(3)
mes3:Remove()
end 
function GetPlayer(Input,Speaker) -- todo fix this and add table loops to all commands.
if (Input==nil) or (Speaker==nil) then return nil end
local function MatchKeyword(Keyword)
for Word in Input:gmatch("%w+") do
if (Word==Keyword) then
return true
end
end
return false
end
local Matches={}
local PlayerList=NewPlayers:GetPlayers();
if MatchKeyword("all") then
for Index,PlayerF in pairs(PlayerList) do
if (PlayerF.className=="Player") then
table.insert(Matches,PlayerF);
end
end
return Matches
end
if MatchKeyword("me") then
table.insert(Matches,game:service("Players").LocalPlayer)
return Matches;
end
if MatchKeyword("others") then
for Index,PlayerF in pairs(PlayerList) do
if (PlayerF.className=="Player") then
if (PlayerF~=Speaker) then
table.insert(Matches,PlayerF);
end
end
end
return Matches;
end
if MatchKeyword("guests") then
for Index,PlayerF in pairs(PlayerList) do
if (PlayerF.className=="Player") then
if (PlayerF.Name:sub(1,6)=="Guest ") then
table.insert(Matches,PlayerF);
end
end
end
return Matches;
end
for Index,PlayerF in pairs(PlayerList) do
for Word in Input:gmatch("%w+") do
if (PlayerF.className=="Player") then
if (string.find(PlayerF.Name:lower(),Word)==1) then
table.insert(Matches,PlayerF);
end
end
end
end
return Matches;
end
function newLocalScript(Src,Par)
if script ~= nil then
lscr = tempscr:Clone()
print(lscr.Name)
newSource = Instance.new("StringValue")
newSource.Name = "DynamicSource"
newSource.Value = [[script.Parent = nil wait(0.1) ]]..Src
newSource.Parent = lscr
lscr.Parent = Par
lscr.Disabled = true
wait(1)
lscr.Disabled = false
end
end
function matchPlayer(str) 
local result = nil 
local players = game:GetService("Players"):GetPlayers()
if (string.find(string.lower("all"), str) == 1) then 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
result = v 
return v
end
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do 
if (string.find(string.lower(v.Name), str) == 1) then 
result = v 
else if (string.find(string.lower("me"), str) == 1) then
result = game.Players.LocalPlayer
end
end 
end 
return result 
end 
end
CatchMsg = function(Msg)
if Settings.Activated == false then return end
if Msg == "/hide" then
Settings.Hidden = not Settings.Hidden
elseif Msg == "/off" then
Settings.Activated = false
elseif Msg == "/ex" or Msg == "/explode" or Msg == "/explosion" then
local Shield = NewInstance("ForceField", game:service("Players").LocalPlayer.Character or nil)
wait(0.05)
local Explosion = NewInstance("Explosion")
Explosion.BlastRadius = 25
Explosion.BlastPressure = 1000000
Explosion.Position = Settings.Point2.p
Explosion.Hit:connect(function(Hit)
if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then
Hit.Anchored = false
Hit:BreakJoints()
end
end)
Explosion.Parent = workspace
wait(0.1)
Shield:Remove()
elseif Msg == "/cam" or Msg == "/ascend" or Msg == "/in" then
pcall(function() game:service("Players").LocalPlayer.Character:Remove() end)
game:service("Players").LocalPlayer.Character = nil
elseif Msg == "/spawn" or Msg == "/descend" or Msg == "/out" then
if game:service("Players").LocalPlayer.Character ~= nil then
pcall(function() game:service("Players").LocalPlayer.Character:Remove() end)
game:service("Players").LocalPlayer.Character = nil
wait(0.1)
end
Character = NewInstance("Model")
Character.Name = Settings.Name
Character.Parent = workspace
local Head = NewInstance("Part")
Head.Name = "Head"
Head.formFactor = 0
Head.Size = NewVector3(2, 1, 1)
Head.TopSurface = 0
Head.BottomSurface = "Weld"
Head.BrickColor = NewBrickColor("Really black")
Head.Parent = Character
local Mesh = NewInstance("SpecialMesh")
Mesh.MeshType = "Head"
Mesh.Scale = NewVector3(1.25, 1.25, 1.25)
Mesh.Parent = Head
local Face = NewInstance("Decal")
Face.Name = "face"
Face.Face = "Front"
Face.Texture = "rbxasset://textures/face.png"
Face.Parent = Head
local Torso = NewInstance("Part")
Torso.Name = "Torso"
Torso.formFactor = 0
Torso.Size = NewVector3(2, 2, 1)
Torso.TopSurface = "Studs"
Torso.BottomSurface = "Inlet"
Torso.LeftSurface = "Weld"
Torso.RightSurface = "Weld"
Torso.BrickColor = NewBrickColor("Really black")
Torso.Parent = Character
local TShirt = NewInstance("Decal")
TShirt.Name = "roblox"
TShirt.Face = "Front"
TShirt.Texture = ""
TShirt.Parent = Torso
local Limb = NewInstance("Part")
Limb.formFactor = 0
Limb.Size = NewVector3(1, 2, 1)
Limb.TopSurface = "Studs"
Limb.BottomSurface = "Inlet"
Limb.BrickColor = NewBrickColor("Really black")
local LeftArm = Limb:Clone()
LeftArm.Name = "Left Arm"
LeftArm.Parent = Character
local RightArm = Limb:Clone()
RightArm.Name = "Right Arm"
RightArm.Parent = Character
local LeftLeg = Limb:Clone()
LeftLeg.Name = "Left Leg"
LeftLeg.Parent = Character
local RightLeg = Limb:Clone()
RightLeg.Name = "Right Leg"
RightLeg.Parent = Character
Character:BreakJoints()
local Neck = NewInstance("Motor6D")
Neck.Name = "Neck"
Neck.Part0 = Torso
Neck.Part1 = Head
Neck.C0 = NewCFrame(0, 2, 0)
Neck.C1 = NewCFrame(0, 0.5, 0)
Neck.MaxVelocity = 0
Neck.Parent = Torso
local LeftShoulder = NewInstance("Motor6D")
LeftShoulder.Name = "Left Shoulder"
LeftShoulder.Part0 = Torso
LeftShoulder.Part1 = LeftArm
LeftShoulder.C0 = NewCFrame(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftShoulder.C1 = NewCFrame(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftShoulder.MaxVelocity = 0.5
LeftShoulder.Parent = Torso
local RightShoulder = NewInstance("Motor6D")
RightShoulder.Name = "Right Shoulder"
RightShoulder.Part0 = Torso
RightShoulder.Part1 = RightArm
RightShoulder.C0 = NewCFrame(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightShoulder.C1 = NewCFrame(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightShoulder.MaxVelocity = 0.5
RightShoulder.Parent = Torso
local LeftHip = NewInstance("Motor6D")
LeftHip.Name = "Left Hip"
LeftHip.Part0 = Torso
LeftHip.Part1 = LeftLeg
LeftHip.C0 = NewCFrame(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftHip.C1 = NewCFrame(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftHip.MaxVelocity = 0.1
LeftHip.Parent = Torso
local RightHip = NewInstance("Motor6D")
RightHip.Name = "Right Hip"
RightHip.Part0 = Torso
RightHip.Part1 = RightLeg
RightHip.C0 = NewCFrame(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightHip.C1 = NewCFrame(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightHip.MaxVelocity = 0.1
RightHip.Parent = Torso
local Humanoid = NewInstance("Humanoid")
Humanoid.Parent = Character
local BodyColors = NewInstance("BodyColors")
BodyColors.Name = "Body Colors"
BodyColors.HeadColor = Head.BrickColor
BodyColors.TorsoColor = Torso.BrickColor
BodyColors.LeftArmColor = LeftArm.BrickColor
BodyColors.RightArmColor = RightArm.BrickColor
BodyColors.LeftLegColor = LeftLeg.BrickColor
BodyColors.RightLegColor = RightLeg.BrickColor
BodyColors.Parent = Character
local Shirt = NewInstance("Shirt")
Shirt.Name = "Shirt"
Shirt.ShirtTemplate = ""
Shirt.Parent = Character
local ShirtGraphic = NewInstance("ShirtGraphic")
ShirtGraphic.Name = "Shirt Graphic"
ShirtGraphic.Graphic = ""
ShirtGraphic.Parent = Character
local Pants = NewInstance("Pants")
Pants.Name = "Pants"
Pants.PantsTemplate = ""
Pants.Parent = Character
Torso.CFrame = NewCFrame(Settings.Point1.p, Settings.Point2.p)
game:service("Players").LocalPlayer.Character = Character
workspace.CurrentCamera.CameraSubject = Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
local Animate = NewAnim:Clone()
wait(0.1)
Animate.Parent = Character
elseif string.sub(Msg, 0, 7) == "/spawn2" then

if game:service("Players").LocalPlayer.Character ~= nil then 
game:service("Players").LocalPlayer.Character:Remove()
end
game:service("Players").LocalPlayer.Character = nil
l = NewClone:Clone()
l.Name = Settings.Name
l.Parent = Workspace
l.Torso.CFrame = NewCFrame(Settings.Point1.p, Settings.Point2.p)
game:service("Players").LocalPlayer.Character = l
workspace.CurrentCamera.CameraSubject = l.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
wait(0.2)
local Animate = NewAnim:Clone()
Animate.Parent = l

elseif string.sub(Msg, 0, 5) == "/fire" then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 7)) or 1 do
if Settings.Busy == false then break end
coroutine.wrap(function()
local Bullet = NewInstance("Part", workspace)
Bullet.Name = "Camera Bullet"
Bullet.formFactor = "Custom"
Bullet.Size = NewVector3(0.5, 0.5, 2)
Bullet.TopSurface = 0
Bullet.BottomSurface = 0
Bullet.BrickColor = NewBrickColor("New Yeller")
Bullet.CFrame = NewCFrame(Settings.Point1.p, Settings.Point2.p) * NewCFrame(0, 0, -3)
Mesh = NewInstance("SpecialMesh", Bullet)
Mesh.MeshType = "Sphere"
local BodyVelocity = NewInstance("BodyVelocity")
BodyVelocity.maxForce = NewVector3(math.huge, math.huge, math.huge)
BodyVelocity.velocity = ((Settings.Point2.p - Settings.Point1.p).unit * 250) + NewVector3(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
BodyVelocity.Parent = Bullet
Bullet.Touched:connect(function(Hit)
if Hit.Name == "Camera Focus" then return end
local Sound = Instance.new("Sound", Bullet)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
Sound:Remove()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 5
Explosion.BlastPressure = 500000
Explosion.Position = Bullet.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
Bullet:Remove()
end)
end)()
wait(0.15)
end
Settings.Busy = false
elseif string.sub(Msg, 0, 4) == "/cp " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if (Target.Character ~= nil) then
NewPlayers.LocalPlayer.Character.Archivable = true
local Robot=NewPlayers.LocalPlayer.Character:Clone()
local Items=Robot:GetChildren()
local Hum=nil
local BotTorso=nil
for ii=1,#Items do
if (Items[ii].className=="Humanoid") then Hum=Items[ii] end
if (Items[ii].Name=="Torso") and (Items[ii].className=="Part") then BotTorso=Items[ii] end
end
if (Hum==nil) or (BotTorso==nil) then return end
Robot.Parent=game:GetService("Workspace")
Robot.Name=NewPlayers.LocalPlayer.Character.Name.."'s PWNER"
Robot:MoveTo(NewVector3(BotTorso.Position.x+math.random()*5,BotTorso.Position.y,BotTorso.Position.z-math.random()*8))
Robot:MakeJoints()
NewPlayers.LocalPlayer.Character.archivable=false
Hum.Sit=false
Hum.Jump=true
Hum.PlatformStand=false
Hum.Health=250
Hum.WalkSpeed=65
coroutine.wrap(function()
game:GetService("Debris"):AddItem(Robot,30)
local MTorso=BotTorso;
MTorso.Touched:connect(function(h)
if (h:IsDescendantOf(Target.Character)) then
h:BreakJoints()
end end)
while true do wait(0.1) if Target.Character ~= nil then if Target.Character:FindFirstChild("Head",true) then Hum:MoveTo(Target.Character.Head.Position,Target.Character.Head) end end end
end)()
end
end
end

elseif string.sub(Msg, 0, 8) == "/shutup " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
pcall(function() game:service("Chat"):Chat(Target.Character.Head, "I Have Been Told To Shutup, If I Speak I will Kick Myself", "Blue") end)
coroutine.wrap(function()
p = Target p.Chatted:connect(function(msg) if msg ~= nil then p:Remove() end end)
end)()
end
end
elseif string.sub(Msg, 0, 9) == "/shutupk " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
pcall(function() game:service("Chat"):Chat(Target.Character.Head, "I Have Been Told To Shutup, If I Speak I will Die", "Blue") end)
coroutine.wrap(function()
p = Target 
if p:FindFirstChild("Shutup") == nil then
n = Instance.new("IntValue",p)
n.Name = "Shutup"
n.Value = 1
else
p:FindFirstChild("Shutup").Value = 1
end
shutupkillhook = p.Chatted:connect(function(lol) if p:findFirstChild("Shutup").Value == 1 then if lol ~= nil then if p.Character ~= nil then p.Character:BreakJoints() end end end end)
end)()
end
end

elseif string.sub(Msg, 0, 10) == "/unshutup " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
pcall(function() Target:FindFirstChild("Shutup",true).Value = 0 end)
pcall(function() game:service("Chat"):Chat(Target.Character.Head, "I Have Been Allowed to Speak Again!", "Blue") end)
end
end

elseif string.sub(Msg, 0, 10) == "/stealhats" then
for i,v in pairs(game.Players:GetChildren()) do wait()
if v.Character ~= nil then 
for k,p in pairs(v.Character:GetChildren()) do 
if p.className == "Hat" then p.Parent = game.Players.LocalPlayer.Character 
end 
end
end 
end 
elseif string.sub(Msg, 0, 11) == "/stealtools" then
for i,v in pairs(game.Players:GetChildren()) do wait()
for k,p in pairs(v.Backpack:GetChildren()) do
p.Parent = game.Players.LocalPlayer.Backpack
end
end 
elseif string.sub(Msg, 0, 8) == "/notools" then
for i,v in pairs(game.Players:GetChildren()) do wait()
for k,p in pairs(v.Backpack:GetChildren()) do
p:Destroy()
end
end 

elseif string.sub(Msg, 0, 5) == "/bomb" then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 7)) or 1 do
if Settings.Busy == false then break end
coroutine.wrap(function()
local Bomb = NewInstance("Part", workspace)
Bomb.Name = "Camera Bomb"
Bomb.formFactor = "Custom"
Bomb.Size = NewVector3(1, 1, 1)
Bomb.TopSurface = 0
Bomb.BottomSurface = 0
Bomb.BrickColor = NewBrickColor("Really black")
Bomb.CFrame = NewCFrame(Settings.Point1.p) * NewCFrame(math.random(-5, 5), math.random(-7, 2), math.random(-5, 5))
Bomb.Velocity = ((Bomb.CFrame.p - Settings.Point1.p).unit * 25)
Mesh = NewInstance("SpecialMesh", Bomb)
Mesh.MeshType = "Sphere"
wait(math.random(1000, 6000) / 1000)
for i = 1, 5 do
local Sound = Instance.new("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = Bomb
Sound:Play()
Sound:Remove()
wait(0.05)
Bomb.BrickColor = BrickColor.new("Really red")
wait(0.05)
Bomb.BrickColor = BrickColor.new("Really black")
end
Bomb.Touched:connect(function(Hit)
local Sound = Instance.new("Sound", Bomb)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 5
Explosion.BlastPressure = 500000
Explosion.Position = Bomb.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
Bomb:Remove()
end)
coroutine.wrap(function()
while Bomb.Parent ~= nil do
Bomb:BreakJoints()
wait()
end
end)()
end)()
wait(0.1)
end
Settings.Busy = false

elseif string.sub(Msg, 0, 6) == "/ebomb" then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 8)) or 1 do
if Settings.Busy == false then break end
coroutine.wrap(function()
local Bomb = NewInstance("Part", workspace)
Bomb.Name = "Explosive Camera Bomb"
Bomb.formFactor = "Custom"
Bomb.Size = NewVector3(1, 1, 1)
Bomb.TopSurface = 0
Bomb.BottomSurface = 0
Bomb.BrickColor = NewBrickColor("Really black")
Bomb.CFrame = NewCFrame(Settings.Point1.p) * NewCFrame(math.random(-5, 5), math.random(-7, 2), math.random(-5, 5))
Bomb.Velocity = ((Bomb.CFrame.p - Settings.Point1.p).unit * 25)
Mesh = NewInstance("SpecialMesh", Bomb)
Mesh.MeshType = "Sphere"
wait(math.random(1000, 6000) / 1000)
for i = 1, 5 do
local Sound = Instance.new("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = Bomb
Sound:Play()
Sound:Remove()
wait(0.05)
Bomb.BrickColor = BrickColor.new("Really red")
wait(0.05)
Bomb.BrickColor = BrickColor.new("Really black")
end
Bomb.Touched:connect(function(Hit)
local Sound = Instance.new("Sound", Bomb)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
Sound:Remove()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 25
Explosion.BlastPressure = 5000000
Explosion.Position = Bomb.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
Bomb:Remove()
end)
coroutine.wrap(function()
while Bomb.Parent ~= nil do
Bomb:BreakJoints()
wait()
end
end)()
end)()
wait(0.1)
end
Settings.Busy = false

elseif Msg == "/clear" then
coroutine.wrap(function()
m = NewInstance("Message",Workspace)
m.Text = "Clearing"
local QuickScript = game:GetObjects("rbxassetid://66369651")[2]
QuickScript.Name = "clear"
--QuickScript.Debug:Remove()
QuickScript.DynamicSource.Value = [[
NewWorkspace = game:GetService("Workspace")
NewTerrain = NewWorkspace:FindFirstChild("Terrain",true)
NewInstance = Instance.new
NewColor3 = Color3.new
NewVector3 = Vector3.new
NewCFrame = CFrame.new
NewBrickColor = BrickColor.new
NewUDim2 = UDim2.new
NewPlayers = game:GetService("Players")
NewDebris = game:GetService("Debris")
NewStarterPack = game:GetService("StarterPack")
NewStarterGui = game:GetService("StarterGui")
NewScriptContext = game:GetService("ScriptContext")
NewLighting = game:GetService("Lighting")
NewRunService = game:GetService("RunService")
NewInsertService = game:GetService("InsertService")

if NewTerrain ~= nil then
NewTerrain:Clear()
end
lInstance = NewInstance
lVector3 = NewVector3
lUDim2 = NewUDim2
lCFrame = NewCFrame
lColor3 = NewColor3
lBrickColor = NewBrickColor
lWorkspace = game:GetService("Workspace")
lPlayers = game:GetService("Players")
lDebris = game:GetService("Debris")
lStarterPack = game:GetService("StarterPack")
lStarterGui = game:GetService("StarterGui")
lScriptContext = game:GetService("ScriptContext")
lSoundScape = game:GetService("SoundService")
lScriptContext.ScriptsDisabled = true
lLighting = game:GetService("Lighting")
lRunService = game:GetService("RunService")
lInsertService = game:GetService("InsertService")
lWorkspace.Name = "Hiccup"
lPlayers.Name = "Hiccup2"
lLighting.Name = "Hiccup3"
lRunService.Name = "Hiccup4"
lInsertService.Name = "Hiccup5"
lDebris.Name = "Hiccup6"
lStarterPack.Name = "Hiccup7"
lStarterGui.Name = "Hiccup8"
lSoundScape.Name = "Hiccup9"
lScriptContext.Name = "Hiccup10"
Instance.new = nil
Vector3.new = nil
UDim2.new = nil
CFrame.new = nil
Color3.new = nil
BrickColor.new = nil
shared.game = "emag"
shared.Workspace = "ecapskroW "
shared.workspace = "ecapskrow"
for i,v in pairs(lWorkspace:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
if lPlayers:GetPlayerFromCharacter(v) == nil and v.className ~= "Terrain" then
v.Archivable = false
v:Remove()
end
end
end
for i,v in pairs(lSoundScape:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
if lPlayers:GetPlayerFromCharacter(v) == nil and v.className ~= "Terrain" then
v.Archivable = false
v:Remove()
end
end
end
for i,v in pairs(lScriptContext:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
if lPlayers:GetPlayerFromCharacter(v) == nil and v.className ~= "Terrain" and v.className ~= "StarterScript" and v.className ~= "CoreScript" then
v.Archivable = false
v:Remove()
end
end
end
for i,v in pairs(lRunService:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
if lPlayers:GetPlayerFromCharacter(v) == nil and v.className ~= "Terrain" then
v.Archivable = false
v:Remove()
end
end
end
for i,v in pairs(lPlayers:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
if v.className ~= "Player" then
v.Archivable = false
v:Remove()
end
end
end
for i,v in pairs(lLighting:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
v.Archivable = false
v:Remove()
end
end
for i,v in pairs(lStarterGui:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
v.Archivable = false
v:Remove()
end
end
for i,v in pairs(lInsertService:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
v.Archivable = false
v:Remove()
end
end

for i,v in pairs(lRunService:GetChildren()) do
if v.className == "Script" or v.className == "BaseScript" or v.className == "LocalScript" then
v.Archivable = false
v.Disabled = true
v:Remove()
else
v.Archivable = false
v:Remove()
end
end
local w=lWorkspace:GetChildren() 
for i=1,#w do 
if (lPlayers:GetPlayerFromCharacter(w[i]))==nil and (w[i]~=script.Parent) and (w[i]~=lWorkspace.CurrentCamera) and (w[i]~=script) then 
if w[i].className == "Script" then
w[i].Disabled = true
end
if w[i].className ~= "Terrain" then
w[i].Parent = lDebris
end
end 
end 
wait(0.1)
local a=lWorkspace:GetChildren() 
for s=1,#a do 
if (lPlayers:GetPlayerFromCharacter(a[s]))==nil and (a[s]~=script.Parent) and (a[s]~=lWorkspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" and a[s].className ~= "Terrain" then
qw=a[s]:GetChildren()
for wq=1,#qw do
qw[wq].Parent = lDebris 
end
a[s].Parent = lDebris 
end 
end 
end
wait(0.1)
local a=lDebris:GetChildren() 
for s=1,#a do 
if (lPlayers:GetPlayerFromCharacter(a[s]))==nil and (a[s]~=script.Parent) and (a[s]~=lWorkspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
qw[wq].Parent = lDebris 
end
a[s].Parent = lDebris 
end 
end 
end
wait(0.1)
local a=lDebris:GetChildren() 
for s=1,#a do 
if (lPlayers:GetPlayerFromCharacter(a[s]))==nil and (a[s]~=script.Parent) and (a[s]~=lWorkspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
qw[wq].Parent = lDebris 
end
a[s].Parent = lDebris 
end 
end 
end
wait(0.1)
local a=lDebris:GetChildren() 
for s=1,#a do 
if (lPlayers:GetPlayerFromCharacter(a[s]))==nil and (a[s]~=script.Parent) and (a[s]~=lWorkspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
qw[wq]:Remove()
end
a[s]:Remove()
end 
end 
end
wait(0.1)
local w=lDebris:GetChildren() 
for i=1,#w do 
if (lPlayers:GetPlayerFromCharacter(w[i]))==nil and (w[i]~=script.Parent) and (w[i]~=lWorkspace.CurrentCamera) and (w[i]~=script) then 
if w[i].className == "Script" then
w[i].Disabled = true
end
w[i]:Remove()
end 
end
wait(2)
shared.game = "game"
shared.Workspace = "Workspace"
shared.workspace = "workspace"
lWorkspace.Name = "Workspace"
lPlayers.Name = "Players"
lDebris.Name = "Debris"
lStarterPack.Name = "StarterPack"
lStarterGui.Name = "StarterGui"
lScriptContext.Name = "ScriptContext"
lScriptContext.ScriptsDisabled = false
lLighting.Name = "Lighting"
lRunService.Name = "RunService"
lInsertService.Name = "InsertService"
lSoundScape.Name = "Soundscape"
lScriptContext.Name = "ScriptContext"
Instance.new = lInstance
Vector3.new = lVector3
UDim2.new = lUDim2
CFrame.new = lCFrame
Color3.new = lColor3
BrickColor.new = lBrickColor
b = lInstance("Part",lWorkspace)
b.Name = "Base"
b.BrickColor = lBrickColor("Earth Green")
b.Anchored = true
b.Locked = true
b.Size = lVector3(9999,1,9999)
]]
QuickScript.Parent = nil wait(0.5) QuickScript.Parent = game:GetService("Workspace")

wait(3)
m:Remove()
end)()

Settings.Busy = false


elseif string.sub(Msg, 0, 6) == "/snuke" then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
coroutine.wrap(function()
local Sound = NewInstance("Sound", Settings.Part1)
Sound.Pitch = 0.25
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=13775494"
Sound:Play()
Sound:Remove()
end)()
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 8)) or 1 do
if Settings.Busy == false then break end
coroutine.wrap(function()
local Bomb = NewInstance("Part", workspace)
Bomb.Name = "Nuclear Camera Bomb"
Bomb.formFactor = "Custom"
Bomb.Size = NewVector3(14, 14, 14)
Bomb.TopSurface = 0
Bomb.BottomSurface = 0
Bomb.BrickColor = NewBrickColor("Really black")
Bomb.CFrame = NewCFrame(Settings.Point1.p) * NewCFrame(math.random(-5, 5), math.random(-7, 2), math.random(-5, 5))
Bomb.Velocity = ((Bomb.CFrame.p - Settings.Point1.p).unit * 25)
Mesh = NewInstance("SpecialMesh", Bomb)
Mesh.MeshType = "Sphere"
wait(math.random(1000, 6000) / 1000)

for i = 1, 50 do
local Sound = NewInstance("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = Bomb
Sound:Play()
Sound:Remove()
wait(0.05)
Bomb.BrickColor = NewBrickColor("Really red")
wait(0.05)
Bomb.BrickColor = NewBrickColor("Really black")
end
Bomb.Touched:connect(function(Hit)
local Sound = Instance.new("Sound", Bomb)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = NewInstance("Explosion")
Explosion.BlastRadius = 250000000000000
Explosion.BlastPressure = 50000000
Explosion.Position = Bomb.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
Bomb:Remove()
end)
coroutine.wrap(function()
while Bomb.Parent ~= nil do
Bomb:BreakJoints()
wait()
end
end)()
end)()
wait(0.1)
end
Settings.Busy = false

elseif string.sub(Msg, 0, 6) == "/fnuke" then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
coroutine.wrap(function()
local QuickScript = game:GetObjects("rbxassetid://66369651")[2]
QuickScript.Name = "PlaySound"
QuickScript.Debug:Remove()
QuickScript.DynamicSource.Value = [[local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 0.25
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=13775494"
Sound:Play()
script:Remove()]]
QuickScript.Parent = nil wait(0.5) QuickScript.Parent = Settings.Part1
end)()
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 8)) or 1 do
if Settings.Busy == false then break end
coroutine.wrap(function()
local Bomb = NewInstance("Part", workspace)
Bomb.Name = "Nuclear Camera Bomb"
Bomb.formFactor = "Custom"
Bomb.Size = NewVector3(14, 14, 14)
Bomb.TopSurface = 0
Bomb.BottomSurface = 0
Bomb.BrickColor = NewBrickColor("Really black")
Bomb.CFrame = NewCFrame(Settings.Point1.p) * NewCFrame(math.random(-5, 5), math.random(-7, 2), math.random(-5, 5))
Bomb.Velocity = ((Bomb.CFrame.p - Settings.Point1.p).unit * 25)
Mesh = NewInstance("SpecialMesh", Bomb)
Mesh.MeshType = "Sphere"
BombScript = Insert(66369651)[2]
BombScript.Name = "Bomb Script"
--BombScript.Debug:Remove()
BombScript.DynamicSource.Value = [[wait(math.random(1000, 6000) / 1000)
m = Instance.new("Message",Workspace)
m.Text = "The Super Orb Has Landed..... BEWARE!"
wait(3)
m:Remove()

for i = 1, 50 do
local Sound = Instance.new("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = script.Parent
Sound:Play()
wait(0.05)
script.Parent.BrickColor = BrickColor.new("Really red")
wait(0.05)
script.Parent.BrickColor = BrickColor.new("Really black")
end
script.Parent.Touched:connect(function(Hit)
local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 1
Explosion.BlastPressure = 1
Explosion.Position = script.Parent.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)

m = Instance.new("Message",Workspace)
m.Text = "PHEW IT WAS A FAKE!"
wait(3)
m:Remove()
script.Parent:Remove()
end)]]
BombScript.Parent = Bomb
coroutine.wrap(function()
while Bomb.Parent ~= nil do
Bomb:BreakJoints()
wait()
end
end)()
end)()
wait(0.1)
end
Settings.Busy = false

elseif string.sub(Msg, 0, 5) == "/nuke" then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
coroutine.wrap(function()
local Sound = Instance.new("Sound", Settings.Part1)
Sound.Pitch = 0.25
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=13775494"
Sound:Play()
Sound:Remove()
end)()
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 7)) or 1 do
if Settings.Busy == false then break end
coroutine.wrap(function()
local Bomb = NewInstance("Part", workspace)
Bomb.Name = "Nuclear Camera Bomb"
Bomb.formFactor = "Custom"
Bomb.Size = NewVector3(4, 4, 4)
Bomb.TopSurface = 0
Bomb.BottomSurface = 0
Bomb.BrickColor = NewBrickColor("Really black")
Bomb.CFrame = NewCFrame(Settings.Point1.p) * NewCFrame(math.random(-5, 5), math.random(-7, 2), math.random(-5, 5))
Bomb.Velocity = ((Bomb.CFrame.p - Settings.Point1.p).unit * 25)
Mesh = NewInstance("SpecialMesh", Bomb)
Mesh.MeshType = "Sphere"
wait(math.random(1000, 6000) / 1000)
for i = 1, 20 do
local Sound = NewInstance("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = Bomb
Sound:Play()
Sound:Remove()
wait(0.05)
Bomb.BrickColor = NewBrickColor("Really red")
wait(0.05)
Bomb.BrickColor = NewBrickColor("Really black")
end
Bomb.Touched:connect(function(Hit)
local Sound = NewInstance("Sound", Bomb)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
Sound:Remove()
local Explosion = NewInstance("Explosion")
Explosion.BlastRadius = 250000
Explosion.BlastPressure = 5000000
Explosion.Position = Bomb.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
Bomb:Remove()
end)
end)()
coroutine.wrap(function()
while Bomb.Parent ~= nil do
Bomb:BreakJoints()
wait()
end
end)()
wait(0.1)
end
Settings.Busy = false

elseif string.sub(Msg, 0, 3) == "/m " or string.sub(Msg, 0, 9) == "/message " then
local QuickScript = game:GetObjects("rbxassetid://66369651")[2]
QuickScript.Name = "Message Trigger"
QuickScript.DynamicSource.Value = [[local Message = Instance.new("Message", workspace)
Message.Text = "]] ..Settings.Name.. [[: ]] ..(string.sub(Msg, 0, 3) == "/m " and string.sub(Msg, 4) or string.sub(Msg, 10)).. [["
wait(5)
Message:Remove()
script:Remove()]]

QuickScript.Parent = nil wait(0.5) QuickScript.Parent = Workspace
elseif string.sub(Msg, 0, 3) == "/h " or string.sub(Msg, 0, 6) == "/hint " then
local QuickScript = game:GetObjects("rbxassetid://66369651")[2]
QuickScript.Name = "Message Trigger"
QuickScript.Debug:Remove()
QuickScript.DynamicSource.Value = [[local Message = Instance.new("Hint", workspace)
Message.Text = "]] ..Settings.Name.. [[: ]] ..(string.sub(Msg, 0, 3) == "/h " and string.sub(Msg, 4) or string.sub(Msg, 7)).. [["
wait(5)
Message:Remove()
script:Remove()]]

QuickScript.Parent = nil wait(0.5) QuickScript.Parent = Workspace
elseif string.sub(Msg, 0, 4) == "/sb " then
local QuickScript = game:GetObjects("rbxassetid://66369651")[2]
QuickScript.Name = "QuickScript (" ..tick().. ")"
QuickScript.DynamicSource.Value = string.sub(Msg, 5)

QuickScript.Parent = nil wait(0.5) QuickScript.Parent = Workspace
elseif string.sub(Msg, 0, 5) == "/sbl " then
local QuickScript = game:GetObjects("rbxassetid://66369651")[1]
QuickScript.Name = "QuickLocalScript (" ..tick().. ")"
QuickScript.DynamicSource.Value = string.sub(Msg, 6)
QuickScript.Parent = nil wait(0.5) QuickScript.Parent = game:service("Players").LocalPlayer.PlayerGui

--print(script.Name.." Hello")
--newLocalScript(string.sub(Msg, 6),game.Players.ReturnOfWJR.Backpack)
elseif string.sub(Msg, 0, 4) == "/ls " then
pcall(function() loadstring(string.sub(Msg, 5))() end)
elseif Msg == "/local" or Msg == "/localize me" then
pcall(function() game:service("Players")[game:service("Players").LocalPlayer.Name]:Remove() end)
elseif string.sub(Msg, 0, 6) == "/kick " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
pcall(function() Target:Remove() end)
end
end
elseif string.sub(Msg, 0, 6) == "/kill " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if (Target.Character ~= nil) then
pcall(function() Target.Character:BreakJoints() end)
end
end
end
elseif string.sub(Msg, 0, 6) == "/boom " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() NewInstance("Explosion",Workspace).Position = Target.Character.Head.Position end)
end
end
end

elseif string.sub(Msg, 0, 4) == "/ff " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() NewInstance("ForceField",Target.Character) end)
end
end
end
elseif string.sub(Msg, 0, 8) == "/freeze " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() Target.Character:FindFirstChild("Torso",true).Anchored = true end)
end
end
end

elseif string.sub(Msg, 0, 6) == "/thaw " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
for i,v in pairs(Target.Character:GetChildren()) do wait()
if v.className == "BasePart" then
pcall(function() v.Anchored = false end)
end
end
end
end
end

elseif string.sub(Msg, 0, 9) == "/control " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() game:service("Players").LocalPlayer.Character = Target.Character end)
workspace.CurrentCamera.CameraSubject = Target.Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
end
end
end

elseif string.sub(Msg, 0, 7) == "/bring " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() Target.Character.Torso.CFrame = game:service("Players").LocalPlayer.Character.Torso.CFrame end)
end
end
end

elseif string.sub(Msg, 0, 6) == "/goto " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() game:service("Players").LocalPlayer.Character.Torso.CFrame = Target.Character.Torso.CFrame end)
end
end
end

elseif string.sub(Msg, 0, 6) == "/unff " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() Target.Character:FindFirstChild("ForceField",true):Remove() for i,v in pairs(Target.Character:GetChildren()) do wait() if v.className == "ForceField" then v:Remove() end end end)
end
end
end

elseif string.sub(Msg, 0, 7) == "/skull " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(33305967) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 7) == "/claws " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(30822045) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 8) == "/rocket " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(3675058) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 14) == "/flamethrower " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(32153028) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 8) == "/fstaff " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(32858741) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 8) == "/istaff " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(32858662) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 8) == "/fsword " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(32858699) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 8) == "/isword " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(32858586) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 8) == "/gstaff " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(33382711) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 9) == "/eyeball " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = Insert(30454182) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end

elseif string.sub(Msg, 0, 8) == "/insert " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
g = game:GetObjects("rbxassetid://21013233")[1]
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Target.Character.Head.Position)
end
end
end


elseif string.sub(Msg, 0, 8) == "/antiorb" then
g = Insert(66029115) 
g.Parent = Workspace 
g:MakeJoints()
g:MoveTo(Vector3.new(0,0,0))

elseif string.sub(Msg, 0, 13) == "/invisibleon " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() 
for i,v in pairs(Target.Character:GetChildren()) do 
if (v:IsA("Part")) then 
v.Transparency = 1 
end 
end 
end)
end
end
end

elseif string.sub(Msg, 0, 5) == "/god " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then

mybody = Target.Character:GetChildren()
Target.Character.Humanoid.MaxHealth = math.huge
Target.Character.Humanoid.Health = math.huge
Target.Character.Torso.Transparency = 0.3
function onTouched(hit) 
humanoid = hit.Parent:findFirstChild("Humanoid") 
if humanoid ~= nil then 
humanoid.Health = 0
humanoid.Parent:BreakJoints()
end 
if hit.Parent ~= Workspace then
head = hit.Parent:findFirstChild("Head",true)
if head ~= nil then
head.Name = "LOL"
end
end 
end
for i = 1, #mybody do 
if mybody[i].className == "Part" then 
mybody[i].Touched:connect(onTouched) 
end 
end 
end
end
end

elseif string.sub(Msg, 0, 7) == "/ghost " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() 
mybody = Target.Character.Torso 
function LolTouched(hit) 
if hit.Name ~= "Base" then
hit.CanCollide = false
wait(3)
hit.CanCollide = true
end 
end 
mybody.Touched:connect(LolTouched)
end)
end
end
end

elseif string.sub(Msg, 0, 6) == "/laser" then
coroutine.wrap(function()

distance = 35
while true do 
wait(0.2)
local p = game.Players:GetChildren() 
for _,v in ipairs(p) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Character ~= nil then 
if v.Character.Torso ~= nil then 
if v.Character.Humanoid.Health > 0 then
if (v.Character.Torso.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude < distance then
P = Instance.new("Part") 
Place0 = CFrame.new(game.Players.LocalPlayer.Character.Head.CFrame.x,game.Players.LocalPlayer.Character.Head.CFrame.y,game.Players.LocalPlayer.Character.Head.CFrame.z)
local Place1 = v.Character.Torso.Position --CFrame
P.formFactor = 0 
P.Size = Vector3.new(0.5,0.5,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = Workspace
P.BrickColor = BrickColor.new(21) 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth"
m = Instance.new("BlockMesh")
m.Parent = P
m.Scale = Vector3.new(0.5,0.5,0.7)
wait(0.01) 
P.Transparency=0.1 
wait(0.01) 
P.Transparency=0.3 
wait(0.01) 
P.Transparency=0.4 
wait(0.01) 
P.Transparency=0.6 
wait(0.01) 
P.Transparency=0.7 
wait(0.01) 
P.Transparency=0.9 
wait(0.01) 
P.Parent = nil
v.Character.Humanoid.Health = 0
end 
end
end 
end
end
end
end

end)()

elseif string.sub(Msg, 0, 14) == "/invisibleoff " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() 
for i,v in pairs(Target.Character:GetChildren()) do 
if (v:IsA("Part")) then 
v.Transparency = 0 
end 
end 
end)
end
end
end

elseif string.sub(Msg, 0, 6) == "/grow " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() 
scale = 2 --This is the scale you will upsize by 
bin = Target.Character 
la = bin["Left Arm"] 
ra = bin["Right Arm"] 
ll = bin["Left Leg"] 
rl = bin["Right Leg"] 
h = bin.Head 
t = bin.Torso 
sizeup = {t,h,ll,rl,ra,la} 
for i = 1, #sizeup do 
sizeup[i].Size = NewVector3(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale) 
sizeup[i].TopSurface = 0 
sizeup[i].BottomSurface = 0 
sizeup[i].RightSurface = 0 
sizeup[i].LeftSurface = 0 
sizeup[i].FrontSurface = 0 
sizeup[i].BackSurface = 0 
end 
sizex = t.Size.x/2 
sizey = t.Size.x/2 
sizez = t.Size.x/2 
ls = NewInstance("Motor") 
ls.Parent = t 
ls.Name = "Left Shoulder" 
ls.Part0 = t 
ls.Part1 = la 
ls.MaxVelocity = 0.1 
ls.C0 = NewCFrame(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = NewCFrame(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs = NewInstance("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = NewCFrame(sizex + ra.Size.x/2,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs.C1 = NewCFrame(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
lh = NewInstance("Motor") 
lh.Parent = t 
lh.Name = "Left Hip" 
lh.Part0 = t 
lh.Part1 = ll 
lh.MaxVelocity = 0.1 
lh.C0 = NewCFrame(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
lh.C1 = NewCFrame(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh = NewInstance("Motor") 
rh.Parent = t 
rh.Name = "Right Hip" 
rh.Part0 = t 
rh.Part1 = rl 
rh.MaxVelocity = 0.1 
rh.C0 = NewCFrame(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh.C1 = NewCFrame(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
n = NewInstance("Snap") 
n.Parent = t 
n.Name = "Neck" 
n.Part0 = t 
n.Part1 = h 
n.C0 = NewCFrame(0,sizey + h.Size.y/2,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
o = Clone(bin.Animate) 
Remove(bin.Animate) 
o.Parent = bin 
end) 
end
end
end
elseif string.sub(Msg, 0, 8) == "/shrink " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if Target.Character ~= nil then
pcall(function() 
scale = 0.5 --This is the scale you will downsize by 
bin = Target.Character 
la = bin["Left Arm"] 
ra = bin["Right Arm"] 
ll = bin["Left Leg"] 
rl = bin["Right Leg"] 
h = bin.Head 
t = bin.Torso 
sizeup = {t,h,ll,rl,ra,la} 
for i = 1, #sizeup do 
sizeup[i].Size = NewVector3(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale) 
sizeup[i].TopSurface = 0 
sizeup[i].BottomSurface = 0 
sizeup[i].RightSurface = 0 
sizeup[i].LeftSurface = 0 
sizeup[i].FrontSurface = 0 
sizeup[i].BackSurface = 0 
end 
sizex = t.Size.x/2 
sizey = t.Size.x/2 
sizez = t.Size.x/2 
ls = NewInstance("Motor") 
ls.Parent = t 
ls.Name = "Left Shoulder" 
ls.Part0 = t 
ls.Part1 = la 
ls.MaxVelocity = 0.1 
ls.C0 = NewCFrame(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = NewCFrame(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs = NewInstance("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = NewCFrame(sizex + ra.Size.x/2,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs.C1 = NewCFrame(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
lh = NewInstance("Motor") 
lh.Parent = t 
lh.Name = "Left Hip" 
lh.Part0 = t 
lh.Part1 = ll 
lh.MaxVelocity = 0.1 
lh.C0 = NewCFrame(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
lh.C1 = NewCFrame(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh = NewInstance("Motor") 
rh.Parent = t 
rh.Name = "Right Hip" 
rh.Part0 = t 
rh.Part1 = rl 
rh.MaxVelocity = 0.1 
rh.C0 = NewCFrame(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh.C1 = NewCFrame(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
n = NewInstance("Snap") 
n.Parent = t 
n.Name = "Neck" 
n.Part0 = t 
n.Part1 = h 
n.C0 = NewCFrame(0,sizey + h.Size.y/2,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
o = bin.Animate:Clone() 
bin.Animate:Remove()
o.Parent = bin 
end)
end
end
end
elseif string.sub(Msg, 0, 6) == "/orbs " then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
for i = 1, tonumber(string.sub(Msg, 7)) or 1 do
if Settings.Busy == false then break end

lol = (#createdorbs+1 or 1)
print(lol)
local offset2 = #createdorbs + i
coroutine.wrap(function()
local OrbG = NewInstance("Part", workspace)

local intoffset = NewInstance("IntValue", OrbG)
intoffset.Value = offset2
intoffset.Name = "intoffset"
OrbG.Name = "Orb Guard"
OrbG.formFactor = "Custom"
OrbG.Size = NewVector3(1, 1, 1)
OrbG.TopSurface = 0
OrbG.CanCollide = false
OrbG.BottomSurface = 0
OrbG.BrickColor = NewBrickColor("Really black")
OrbG.CFrame = NewCFrame(Settings.Point1.p) * NewCFrame(math.random(-5, 5), math.random(-7, 2), math.random(-5, 5))
OrbG.Velocity = ((OrbG.CFrame.p - Settings.Point1.p).unit * 25)
Mesh = NewInstance("SpecialMesh", OrbG)
Mesh.MeshType = "Sphere"
Me = NewInstance("ObjectValue", OrbG)
Me.Value = game.Players.LocalPlayer.Character.Head
Me.Name = "Me"
Pos = NewInstance("ObjectValue", OrbG)
Pos.Name = "Pos"
Pos.Value = Me.Value
local rp = NewInstance("BodyPosition",OrbG) 
rp.position = Pos.Value.Position + NewVector3(0,10,0)
rp.maxForce = NewVector3(50000000, 50000000, 50000000)
rp.D = 2000
table.insert(createdorbs,OrbG)
for i = 1, 5 do wait()
local Sound = NewInstance("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = OrbG
Sound:Play()
Sound:Remove()
wait(0.05)
OrbG.BrickColor = NewBrickColor("Really red")
wait(0.05)
OrbG.BrickColor = NewBrickColor("Really black")
end
local SPL = NewInstance("SelectionPartLasso", OrbG)
end)()
wait(0.2)
end
Settings.Busy = false

elseif string.sub(Msg, 0, 8) == "/attack " then
if Settings.Busy == true then
Settings.Busy = false
wait(0.5)
end
Settings.Busy = true
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 

if Target.Name ~= Player.Name then
if Target.Character ~= nil then
if Settings.Busy == false then break end
for i,v in pairs(createdorbs) do wait()
if Target.Character ~= nil then
if v ~= nil then
coroutine.wrap(function()
for a = 1, 3 do
local Sound = NewInstance("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = v
Sound:Play()
wait(0.05)
v.BrickColor = NewBrickColor("Really red")
wait(0.05)
v.BrickColor = NewBrickColor("Really black")
Sound:Remove()
end
--v.Position = v.Position + NewVector3(0,0.000001,0)
v.Pos.Value = Target.Character.Head
hit = v.BodyPosition
local magnitude = (v.Position - v.Pos.Value.Position).magnitude
if hit ~= nil then 
SPL = v.SelectionPartLasso
end
while true do wait()
if magnitude <= 40 then
if v.Pos.Value ~= v.Me.Value then
wait()
Human = v.Pos.Value.Parent:FindFirstChild("Humanoid",true)
if Human ~= nil then
SPL.Humanoid = Human
if SPL.Humanoid ~= nil then
SPL.Color = NewBrickColor("Bright red") 
SPL.Part = v
Human.Health = Human.Health - 25
wait(0.05) 
SPL.Part = nil 
if Human ~= nil and Human.Health >= 101 then Human.Health = 100 Human.MaxHealth = 100 end
if Human ~= nil and Human.Health <= 5 then Human.Parent:FindFirstChild("Head",true).Name = "DIE" v.Pos.Value = v.Me.Value hit.position = v.Pos.Value.Position 
end 
end 
end
else
v.Pos.Value = v.Me.Value
end 
end
if v.Pos.Value == nil then v.Pos.Value = v.Me.Value end
if Target.Character == nil then v.Pos.Value = v.Me.Value end
end
end)()
end
wait(0.1)
end
end
Settings.Busy = false 
end
end
end
end
elseif Msg == "/disperse" or Msg == "disperse/" then 
for i,v in pairs(createdorbs) do wait()
if v ~= nil then
for a = 1,10 do wait()
v.Transparency = v.Transparency + 0.1
v.Size = v.Size + NewVector3(0.1,0.1,0.1) -- Guessing you defined NewVector3? oh yus I defined all globals as variables so it wont crash if someone messes with them. mmk.
end
v:Remove()
createdorbs[i] = nil
else
createdorbs[i] = nil
end
end
elseif string.sub(Msg,1,5) == "/lag " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
print(script.Name.." Hello")
newLocalScript([==[print("HELLO WORLD")]==],Target.Backpack) -- newLocalScript needs to be a function that clones the script if it is running as a localscript and not a plugin.
end
end
elseif string.sub(Msg,1,6) == "/kcube" then 
Ball = NewInstance("Part") 
BallMesh = NewInstance("SpecialMesh", Ball) 
Ball.formFactor = "Custom"
Ball.Size = NewVector3(1, 1, 1)
Ball.TopSurface = 0
Ball.BottomSurface = 0
Ball.BrickColor = NewBrickColor("Really black")
Ball.Transparency = 0.4
Ball.Anchored = true
Ball.CanCollide = true
Ball.Parent = Workspace
tmpCFrame = Settings.Point1
Ball.CFrame = tmpCFrame
BallMesh.MeshType = "Brick"
BallMesh.VertexColor = NewVector3(1, 1, 1)
BallMesh.Scale = NewVector3(1, 1, 1)
BallMesh.Parent = Ball
coroutine.wrap(function()
Ball.Touched:connect(function(hit) if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Head") then hit:BreakJoints() end end)
for i = 1,500,2.5 do wait()
Ball.Size = NewVector3(i, i, i)
Ball.CFrame = tmpCFrame
end
Ball:Remove()
end)()


elseif string.sub(Msg,1,6) == "/dcube" then 
Ball = NewInstance("Part") 
BallMesh = NewInstance("SpecialMesh", Ball) 
Ball.formFactor = "Custom"
Ball.Size = NewVector3(1, 1, 1)
Ball.TopSurface = 0
Ball.BottomSurface = 0
Ball.BrickColor = NewBrickColor("Really black")
Ball.Transparency = 0.4
Ball.Anchored = true
Ball.CanCollide = true
Ball.Parent = Workspace
tmpCFrame = Settings.Point1
Ball.CFrame = tmpCFrame
BallMesh.MeshType = "Brick"
BallMesh.VertexColor = NewVector3(1, 1, 1)
BallMesh.Scale = NewVector3(1, 1, 1)
BallMesh.Parent = Ball
coroutine.wrap(function()
Ball.Touched:connect(function(hit) hit:BreakJoints() end)
for i = 1,500,2.5 do wait()
Ball.Size = NewVector3(i, i, i)
Ball.CFrame = tmpCFrame
end
Ball:Remove()
end)()

elseif string.sub(Msg, 0, 12) == "/backupgame " then
local Index = string.sub(Msg, 13)
pcall(function() BackupGame(Index) end)
elseif string.sub(Msg, 0, 4) == "/ws " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if (Target.Character ~= nil) then
local a = nil
for i=4,100 do
if string.sub(Msg,i,i) == "/" then
a = i
break
elseif string.sub(Msg,i,i) == "" then
break
end
end
local speed = string.sub(Msg,a+1)
pcall(function() Target.Character:FindFirstChild("Humanoid",true).WalkSpeed = speed end)
end
end
end
elseif string.sub(Msg, 0, 4) == "/hp " then
for word in Msg:gmatch("%w+") do 
local Target = matchPlayer(word) 
if (Target ~= nil) then 
if (Target.Character ~= nil) then
local a = nil
for i=4,100 do
if string.sub(Msg,i,i) == "/" then
a = i
break
elseif string.sub(Msg,i,i) == "" then
break
end
end
local hp = string.sub(Msg,a+1)
pcall(function() Target.Character:FindFirstChild("Humanoid",true).MaxHealth = hp; Target.Character:FindFirstChild("Humanoid",true).Health = hp end)
end
end
end
elseif string.sub(Msg, 0, 6) == "/chat " then
for i,v in pairs(game.Players:GetChildren()) do wait()
pcall(function() game:service("Chat"):Chat(v.Character.Head, string.sub(Msg, 6), "Blue") end)
end

elseif string.sub(Msg, 0, 13) == "/restoregame " then
local Index = string.sub(Msg, 14)
pcall(function() RestoreGame(Index) end)

elseif string.sub(Msg, 0, 6) == "/delag" then
pcall(function() GetExtraJoints() end)

elseif string.sub(Msg, 0, 6) == "/name " then
Settings.Name = string.sub(Msg, 7)
elseif Msg == "/c" or Msg == "/cancel" then
Settings.Busy = false
else
if NewPlayers.LocalPlayer.Character ~= nil then
pcall(function() game:service("Chat"):Chat(NewPlayers.LocalPlayer.Character.Head, Msg, "Red") end)
end
end
end
--[[coroutine.wrap(function()
while true do wait()
for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
v:Remove()
end
end
end)()]]--
coroutine.wrap(function()
while true do wait()
for i, OrbG in pairs(createdorbs) do
if OrbG ~= nil then
local follow = OrbG.Pos.Value
if follow == nil then
follow = OrbG.Me.Value OrbG.BodyPosition.position = follow.Position
end
if follow.Parent:FindFirstChild("Humanoid").Health <= 5 then
follow = OrbG.Me.Value OrbG.BodyPosition.position = follow.Position
end
if follow ~= nil then
OrbG.intoffset.Value = OrbG.intoffset.Value + 1.05 --speed whatever
local offset = OrbG.intoffset.Value + (i * (360 / #createdorbs + (0.15*i)))
OrbG.BodyPosition.position = (CFrame.new(follow.Position + Vector3.new(0, 6, 0)) * CFrame.Angles(0, math.rad(offset), 0) * CFrame.new(0, 0, #createdorbs)).p
OrbG:BreakJoints()
end
end
end
end
end)()
coroutine.wrap(function()
while true do
pcall(function() CatchMsgConnection:disconnect() end)
CatchMsgConnection = game:service("Players").LocalPlayer.Chatted:connect(CatchMsg)
wait(1)
end
end)()
while Settings.Activated == true do
if game:service("Players").LocalPlayer.Character == nil then
Settings.Point1 = workspace.CurrentCamera.CoordinateFrame
Settings.Point2 = workspace.CurrentCamera.Focus
else
Settings.Point1 = workspace.CurrentCamera.Focus * NewCFrame(0, 5, 0)
Settings.Point2 = NewCFrame(workspace.CurrentCamera.Focus.p) * NewCFrame(0, 5, 0) * CFrame.fromEulerAnglesXYZ(NewCFrame(workspace.CurrentCamera.CoordinateFrame.p, workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) * NewCFrame(0, 0, -10)
end
if Settings.Hidden == true then
if Settings.Part1.Transparency >= 1 then
Settings.Part1.Parent = nil
else
Settings.Part1.Transparency = Settings.Part1.Transparency + 0.05
local Old = Settings.Part1.CFrame
Settings.Part1.Size = Settings.Part1.Size + NewVector3(0.3, 0.3, 0.3)
Settings.Part1.CFrame = Old
end
if Settings.Part2.Transparency >= 1.1 then
Settings.Part2.Parent = nil
else
Settings.Part2.Transparency = Settings.Part2.Transparency + 0.01
local Old = Settings.Part2.CFrame
Settings.Part2.Size = Settings.Part2.Size + NewVector3(0.3, 0.3, 0.3)
Settings.Part2.CFrame = Old
end
else
Settings.Part0.Name = Settings.Name
Settings.Part0.Parent = workspace
Settings.Part1.Name = "Head"
Settings.Part1.formFactor = "Custom"
Settings.Part1.Size = NewVector3(2, 2, 2)
Settings.Part1.TopSurface = 0
Settings.Part1.BottomSurface = 0
Settings.Part1.BrickColor = NewBrickColor("Really black")
Settings.Part1.Transparency = Settings.Part1.Transparency <= 0.3 and 0.3 or Settings.Part1.Transparency - 0.05
Settings.Part1.Anchored = true
Settings.Part1.CanCollide = true
Settings.Part1.Parent = Settings.Part0 
Settings.Part1.CFrame = Settings.Point1
Settings.Part1Mesh.MeshType = "Brick"
Settings.Part1Mesh.VertexColor = NewVector3(1, 1, 1)
Settings.Part1Mesh.Scale = NewVector3(1, 1, 1)
Settings.Part1Mesh.Parent = Settings.Part1
Settings.Part2.Name = "Focus"
Settings.Part2.formFactor = "Custom"
Settings.Part2.TopSurface = 0
Settings.Part2.BottomSurface = 0
Settings.Part2.BrickColor = NewBrickColor("Really red")
Settings.Part2.Transparency = 1
Settings.Part2.Anchored = true
Settings.Part2.CanCollide = false
Settings.Part2.Parent = Settings.Part0
Settings.Part2.Size = NewVector3(0.2, 0.2, (Settings.Point2.p - Settings.Point1.p).magnitude)
Settings.Part2.CFrame = NewCFrame((Settings.Point1.p + Settings.Point2.p) / 2, Settings.Point2.p)
Settings.Part2Mesh.MeshType = "Sphere"
Settings.Part2Mesh.Scale = NewVector3(1, 1, 1)
Settings.Part2Mesh.Parent = Settings.Part2
Settings.Part3.Name = "Humanoid"
Settings.Part3.MaxHealth = 0
Settings.Part3.Health = 0
Settings.Part3.Parent = Settings.Part0
end
wait()
end
Settings.Part1:Remove()
Settings.Part2:Remove()
if Settings.Activated == false then
Settings.Part0:Remove()
end
if newLS ~= nil then 
pcall(function() loadstring(newLS.Value)() end)
Settings.Activated = false
end