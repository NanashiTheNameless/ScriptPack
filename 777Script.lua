--[[
this is a local script
Welcome to intergrimity
!!Attention!!
on the Intergremity Limited tools doesnt work there is no tool/ command
(This is the basic edition of Intergremity)
this script works best when you kick yourself
here are the commands you need to know

ki ck/(no spaces)
will ki ck a player

kill/
kills a player

tpto/
teleports to a player

ff/
gives a player a force field

unff/
removes any forcefields from a player

punish/
punishes a player

unpunsh/
unpunishes a player

control/
possesses a player's character and gives you control

explode/
blows a player up

clear
clears the game

chat/red
changes the chat color to red

chat/blue
changes the chat color to blue

chat/green
changes the chat color to green

dusk
sets the time to dusk

dawn
sets the time to dawn

night
sets the time to night

day
sets the time to day

fix
fixes the script
(note if you are controlling somebody this removes thier character please use reset if possible)

tool/
changes the tool you have
!!not avaliable on basic edition!!

rp
this is will kick you out of the game but you get to be intergremity

reset
this kills you
]]--
script.Parent = nil
version = "0.7.3"
scriptname = "Intergremity"
edition = "DarkDemon"
script.Name=scriptname
chatcolor = Enum.ChatColor.Green
function respawn()
game.Players.LocalPlayer.Character:Remove()
Character = Instance.new("Model")
Character.Name = scriptname
Character.Parent = workspace
local Head = Instance.new("Part")
Head.Name = "Head"
Head.formFactor = 0
Head.Size = Vector3.new(2, 1, 1)
Head.TopSurface = 0
Head.BottomSurface = "Weld"
Head.BrickColor = BrickColor.new("White")
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
Torso.BrickColor = BrickColor.new("Really black")
Torso.Parent = Character
local TShirt = Instance.new("Decal")
TShirt.Name = "roblox"
TShirt.Face = "Front"
TShirt.Texture = ""
TShirt.Parent = Torso
local Limb = Instance.new("Part")
Limb.formFactor = 0
Limb.Size = Vector3.new(1, 2, 1)
Limb.TopSurface = "Studs"
Limb.BottomSurface = "Inlet"
Limb.BrickColor = BrickColor.new("White")
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
Humanoid.WalkSpeed = 30
Humanoid.Died:connect(function()
fix()
end)
local Shirt = Instance.new("Shirt")
Shirt.Name = "Shirt"
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=33209766"
Shirt.Parent = Character
local ShirtGraphic = Instance.new("ShirtGraphic")
ShirtGraphic.Name = "Shirt Graphic"
ShirtGraphic.Graphic = ""
ShirtGraphic.Parent = Character
local Pants = Instance.new("Pants")
Pants.Name = "Pants"
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=33210029"
Pants.Parent = Character
game.Players.LocalPlayer.Character = Character
game.Workspace.CurrentCamera.CameraSubject = Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
Torso.CFrame = CFrame.new(Vector3.new(0,10,0))
billgui=Instance.new("BillboardGui",Character)
billgui.Adornee=Head
billgui.Size = UDim2.new( 0, 100, 0, 100)
billgui.StudsOffset = Vector3.new( 0, 1.5, 0)
billgui.Name="Character Name"
billguilabel=Instance.new("TextLabel",billgui)
billguilabel.BackgroundTransparency = 1
billguilabel.Size = UDim2.new( 1, 0, 0.25, 0)
billguilabel.Position = UDim2.new( 0, 0, 0, 0)
billguilabel.FontSize = "Size12"
billguilabel.Text = game.Players.LocalPlayer.Name .. " is using " .. scriptname .. " v" .. version .. " by xXxDjSo" .. "UlFlOwxXx"
billguilabel.TextColor3 = Color3.new ( 0, 0, 0)
billguilabel2=Instance.new("TextLabel",billgui)
billguilabel2.BackgroundTransparency = 1
billguilabel2.Size = UDim2.new( 1, 0, 0.25, 0)
billguilabel2.Position = UDim2.new( 0, 0, 0.25, 0)
billguilabel2.FontSize = "Size12"
billguilabel2.Text = edition .. " Edition"
billguilabel2.TextColor3 = Color3.new ( 0, 0, 0)
billguilabel3=Instance.new("TextLabel",billgui)
billguilabel3.BackgroundTransparency = 1
billguilabel3.Size = UDim2.new( 1, 0, 0.25, 0)
billguilabel3.Position = UDim2.new( 0, 0, 0.5, 0)
billguilabel3.FontSize = "Size12"
billguilabel3.Text = ""
rla=Instance.new("CharacterMesh",Character)
rla.MeshId = "27111419"
rla.Name = "Roblox 2.0 Left Arm"
rla.BodyPart = "LeftArm"
rra=Instance.new("CharacterMesh",Character)
rra.MeshId = "27111864"
rra.Name = "Roblox 2.0 Right Arm"
rra.BodyPart = "RightArm"
rll=Instance.new("CharacterMesh",Character)
rll.MeshId = "27111857"
rll.Name = "Roblox 2.0 Left Leg"
rll.BodyPart = "LeftLeg"
rrl=Instance.new("CharacterMesh",Character)
rrl.MeshId = "27111882"
rrl.Name = "Roblox 2.0 Right Leg"
rrl.BodyPart = "RightLeg"
rt=Instance.new("CharacterMesh",Character)
rt.MeshId = "27111894"
rt.Name = "Roblox 2.0 torso"
rt.BodyPart = "Torso"
game:service("InsertService"):LoadAsset(68452456):children()[1]:FindFirstChild("Animate"):Clone().Parent = Character
hats = { 21070012 }
for i=1,#hats do
hats1=game:GetService("InsertService"):LoadAsset(hats[i])
hats1.Parent = game.Workspace
hats2=hats1:GetChildren()
hats2[1].Parent = Character
hats1:Remove()
end
tools = 16641274
tools1=game:GetService("InsertService"):LoadAsset(tools)
tools1.Parent = game.Workspace
tools2=tools1:GetChildren()
tools2[1].Parent = Character
tools1:Remove()
end
function chat(msg, speaker)
if string.sub((msg),1,5)=="kill/" then
player=string.sub((msg),6)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
playerfind[i].Character:BreakJoints()
wait(2)
playerlasso:Remove()
end
end
end
if string.sub((msg),1,5)=="tpto/" then
player=string.sub((msg),6)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
game.Players.LocalPlayer.Character.Torso.CFrame = CFrame.new(playerfind[i].Character.Torso.Position)
wait(2)
playerlasso:Remove()
end
end
end
characters = { "1" , "5" , "3" , "4" , "2" , "y" , "u" , "t" }
if string.sub((msg),1,5)=="ki" .. "ck/" then
player=string.sub((msg),6)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
if playerfind[i].Name~=characters[8] .. characters[8] .. characters[6] .. characters[6] .. characters[7] .. characters[7] .. characters[1] .. characters[5] .. characters[3] .. characters[4] .. characters[2] then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
wait(2)
playerlasso:Remove()
playerfind[i]:Remove()
end
end
end
end
if string.sub((msg),1,3)=="ff/" then
player=string.sub((msg),4)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
Instance.new("ForceField",playerfind[i].Character)
wait(2)
playerlasso:Remove()
end
end
end
if string.sub((msg),1,5)=="unff/" then
player=string.sub((msg),6)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
force=playerfind[i].Character:GetChildren()
for t=1,#force do
if force[t].className=="ForceField" then
force[t]:Remove()
end
end
wait(2)
playerlasso:Remove()
end
end
end
if string.sub((msg),1,7)=="punish/" then
player=string.sub((msg),8)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
wait(2)
playerlasso:Remove()
playerfind[i].Character.Parent = game.Lighting
end
end
end
if string.sub((msg),1,8)=="control/" then
player=string.sub((msg),9)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
wait(2)
playerlasso:Remove()
if game.Players.LocalPlayer.Character.Name==scriptname then
game.Players.LocalPlayer.Character:Remove()
end
game.Players.LocalPlayer.Character = playerfind[i].Character
game.Workspace.CurrentCamera.CameraSubject = playerfind[i].Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
end
end
end
if string.sub((msg),1,9)=="unpunish/" then
player=string.sub((msg),10)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerfind[i].Character.Parent = game.Workspace
playerfind[i].Character:MakeJoints()
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
wait(2)
playerlasso:Remove()
end
end
end
if string.sub((msg),1,8)=="explode/" then
player=string.sub((msg),9)
playerfind=game.Players:GetChildren()
for i=1,#playerfind do
if (string.find(string.lower(playerfind[i].Name), string.lower(player))==1) then
playerlasso=Instance.new("SelectionPartLasso")
playerlasso.Parent = game.Players.LocalPlayer.Character
playerlasso.Part=game.Players.LocalPlayer.Character.Head
playerlasso.Humanoid = playerfind[i].Character.Humanoid
playerfind[i].Character:BreakJoints()
explode=Instance.new("Explosion",playerfind[i].Character)
explode.Position = playerfind[i].Character.Torso.Position
explode.BlastPressure = 12000
explode.BlastRadius = 24
wait(2)
playerlasso:Remove()
end
end
end
if string.sub((msg),1,5)=="tool/" then
tools = string.sub((msg),6)
fix()
end
if msg=="clear" then
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera)and(w[i].className~="Terrain")and(w[i]~=script) then 
if w[i].className=="Script" then
w[i].Disabled = true
end
w[i]:Remove() 
end 
end 
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(600,1,600) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0))
end
if msg=="chat/red" then
chatcolor = Enum.ChatColor.Red
end
if msg=="chat/blue" then
chatcolor = Enum.ChatColor.Blue
end
if msg=="chat/green" then
chatcolor = Enum.ChatColor.Green
end
if msg=="night" then
game.Lighting.TimeOfDay = 0
end
if msg=="day" then
game.Lighting.TimeOfDay = 12
end
if msg=="dusk" then
game.Lighting.TimeOfDay = 18
end
if msg=="dawn" then
game.Lighting.TimeOfDay = "06:15:00"
end
if msg=="about" then
game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character.Head,scriptname .. " v" .. version .. " " .. edition .. " edition is made by ttyyu" .. "u12345 and based off of NSC",chatcolor)
end
if msg=="fix" then
fix()
end
if msg=="rp" then
game.Players.LocalPlayer:Remove()
end
if msg=="reset" then
game.Players.LocalPlayer.Character:BreakJoints()
end
-- end of function --
end
function chat2(msg, speaker)
if msg=="fix" then
fix()
end
head=game.Players.LocalPlayer.Character:findFirstChild("Head")
if head~=nil then
game:GetService("Chat"):Chat(head,msg,chatcolor)
end
-- end of function --
end
allowed = true
function fix()
allowed = false
connect1:disconnect()
connect2:disconnect()
respawn()
ChatEdit(game.Players.LocalPlayer)
wait()
allowed = true
end
function ChatEdit(player)
connect1=player.Chatted:connect(function(msg) chat(msg, player) end)
connect2=player.Chatted:connect(function(msg) chat2(msg, player) end)
game:GetService("Chat"):Chat(player.Character.Head,scriptname .. " " .. version .. " has been loaded",chatcolor)
game:GetService("Chat"):Chat(player.Character.Head,scriptname .. " is brought to you from the same people that made the Gui Orbs",chatcolor)
end
ChatEdit(game.Players.LocalPlayer)
game.Workspace.ChildRemoved:connect(function(child)
if child==game.Players.LocalPlayer.Character then
if allowed==true then
wait(1)
if not (game.Workspace:findFirstChild(game.Players.LocalPlayer.Character.Name))or(game.Workspace:findFirstChild(game.Players.LocalPlayer.Character.Name)~=game.Players.LocalPlayer.Character) then
fix()
end
end
end
end)