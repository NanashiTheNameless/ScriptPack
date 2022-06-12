--[[ 
This Script is created by: 

Fenrier: Everything 

If you're gonna steal this, then please I ask you. Please don't forum,free model, give 
away, or anything like that to this script. Thank you very much :) 
]] 
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
bladecolor = BrickColor.new("New Yeller") 
attack = false 
attackdebounce = false 
colah = BrickColor.new("Dark green") 
combo = 0 
mana = 400 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 

if Character:findFirstChild("Gauntlets",true) ~= nil then 
Character:findFirstChild("Gauntlets",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
 

local modelzorz = Instance.new("Model") 
modelzorz.Name = "Gauntlets" 
modelzorz.Parent = Character 

local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Black") 
prt1.Name = "Gauntlet1" 
prt1.Transparency = 1 
prt1.Size = Vector3.new(1,1,1) 
prt1.CFrame = Torso.CFrame 
local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.Parent = modelzorz 
part1.CanCollide = false 
part1.BrickColor = BrickColor.new("Black") 
part1.Name = "Gauntlet1 " 
part1.Transparency = 1 
part1.Size = Vector3.new(1,1,1) 
part1.CFrame = RightArm.CFrame 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Dark green") 
prt2.Name = "Gauntlet2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.CFrame = Torso.CFrame 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Dark green") 
prt3.Name = "Gauntlet3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.CFrame = Torso.CFrame 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Dark green") 
prt4.Name = "Gauntlet4" 
prt4.Size = Vector3.new(1,1,1) 
prt4.CFrame = Torso.CFrame 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Dark green") 
prt5.Name = "Gauntlet5" 
prt5.Size = Vector3.new(1,1,1) 
prt5.CFrame = Torso.CFrame 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Dark green") 
prt6.Name = "Gauntlet6" 
prt6.Size = Vector3.new(1,1,1) 
prt6.CFrame = Torso.CFrame 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Dark green") 
prt7.Name = "Gauntlet7" 
prt7.Size = Vector3.new(1,1,1) 
prt7.CFrame = Torso.CFrame 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Dark green") 
prt8.Name = "Gauntlet8" 
prt8.Size = Vector3.new(1,1,1) 
prt8.CFrame = RightArm.CFrame 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = modelzorz 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("Dark green") 
prt9.Name = "Gauntlet9" 
prt9.Size = Vector3.new(1,1,1) 
prt9.CFrame = RightArm.CFrame 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = modelzorz 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("Dark green") 
prt10.Name = "Gauntlet10" 
prt10.Size = Vector3.new(1,1,1) 
prt10.CFrame = RightArm.CFrame 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Dark green") 
prt11.Name = "Gauntlet11" 
prt11.Size = Vector3.new(1,1,1) 
prt11.CFrame = RightArm.CFrame 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Dark green") 
prt12.Name = "Gauntlet12" 
prt12.Size = Vector3.new(1,1,1) 
prt12.CFrame = RightArm.CFrame 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Dark green") 
prt13.Name = "Gauntlet13" 
prt13.Size = Vector3.new(1,1,1) 
prt13.CFrame = RightArm.CFrame 
modelzorz:BreakJoints() 

local msh1 = Instance.new("BlockMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(1,1,1) 
local mesh1 = Instance.new("BlockMesh") 
mesh1.Parent = part1 
mesh1.Scale = Vector3.new(1,1,1) 
local msh2 = Instance.new("SpecialMesh") 
msh2.Parent = prt2 
msh2.MeshType = "Wedge" 
msh2.Scale = Vector3.new(1,0.3,1.2) 
local msh3 = Instance.new("SpecialMesh") 
msh3.Parent = prt3 
msh3.MeshType = "Wedge" 
msh3.Scale = Vector3.new(1,0.3,1.2) 
local msh4 = Instance.new("SpecialMesh") 
msh4.Parent = prt4 
msh4.MeshType = "Wedge" 
msh4.Scale = Vector3.new(1,0.3,1.2) 
local msh5 = Instance.new("SpecialMesh") 
msh5.Parent = prt5 
msh5.MeshType = "Wedge" 
msh5.Scale = Vector3.new(1,0.3,1.2) 
local msh6 = Instance.new("SpecialMesh") 
msh6.Parent = prt6 
msh6.MeshType = "Wedge" 
msh6.Scale = Vector3.new(0.2,0.2,0.8) 
local msh7 = Instance.new("SpecialMesh") 
msh7.Parent = prt7 
msh7.MeshType = "Wedge" 
msh7.Scale = Vector3.new(0.2,0.2,0.8) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8 
msh8.MeshType = "Wedge" 
msh8.Scale = Vector3.new(1,0.3,1.2) 
local msh9 = Instance.new("SpecialMesh") 
msh9.Parent = prt9 
msh9.MeshType = "Wedge" 
msh9.Scale = Vector3.new(1,0.3,1.2) 
local msh10 = Instance.new("SpecialMesh") 
msh10.Parent = prt10 
msh10.MeshType = "Wedge" 
msh10.Scale = Vector3.new(1,0.3,1.2) 
local msh11 = Instance.new("SpecialMesh") 
msh11.Parent = prt11 
msh11.MeshType = "Wedge" 
msh11.Scale = Vector3.new(1,0.3,1.2) 
local msh12 = Instance.new("SpecialMesh") 
msh12.Parent = prt12 
msh12.MeshType = "Wedge" 
msh12.Scale = Vector3.new(0.2,0.2,0.8) 
local msh13 = Instance.new("SpecialMesh") 
msh13.Parent = prt13 
msh13.MeshType = "Wedge" 
msh13.Scale = Vector3.new(0.2,0.2,0.8) 

local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = RightArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = LeftArm 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,0.3,0.65) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = LeftArm 
wld3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) * CFrame.new(-0.65,0.3,0) 
wld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = LeftArm 
wld4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) * CFrame.new(0,0.3,-0.65) 
wld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = LeftArm 
wld5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(270),0) * CFrame.new(0.65,0.3,0) 
wld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = LeftArm 
wld6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) * CFrame.new(0.3,1,-0.5) 
wld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = LeftArm 
wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) * CFrame.new(-0.3,1,-0.5) 
wld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = RightArm 
wld8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,0.3,0.65) 
wld8.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = RightArm 
wld9.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) * CFrame.new(-0.65,0.3,0) 
wld9.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = RightArm 
wld10.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) * CFrame.new(0,0.3,-0.65) 
wld10.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = RightArm 
wld11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(270),0) * CFrame.new(0.65,0.3,0) 
wld11.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = RightArm 
wld12.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) * CFrame.new(0.3,1,-0.5) 
wld12.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = RightArm 
wld13.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) * CFrame.new(-0.3,1,-0.5) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local boulder = Instance.new("Part") 
boulder.formFactor = 1 
boulder.Parent = nil 
boulder.CanCollide = false 
boulder.BrickColor = BrickColor.new("Dark green") 
boulder.Name = "Boulder" 
boulder.Transparency = 0 
boulder.Size = Vector3.new(5,5,5) 
boulder.CFrame = Torso.CFrame 
local bouldermsh = Instance.new("BlockMesh") 
bouldermsh.Parent = boulder 
bouldermsh.Scale = Vector3.new(1,1,1) 
local boulderwld = Instance.new("Weld") 
boulderwld.Parent = boulder 
--[[boulderwld.Part0 = boulder 
boulderwld.Part1 = Torso 
boulderwld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) * CFrame.new(-0.3,1,-0.5) 
boulderwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) ]]

local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,0) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Gauntlets" 
script.Parent = Tool 
end 
Bin = script.Parent 
if Bin:findFirstChild("ManaBar",true) ~= nil then 
mana=Bin.ManaBar.Value
Bin:findFirstChild("ManaBar",true).Parent = nil 
end 
local bar=Instance.new("IntValue")
bar.Parent=Bin
bar.Name="ManaBar"
bar.Value=mana

function hideanim() 

end 

function equipanim() 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
WaveEffect(Torso,3,3,3,0,-1,0,0,0,0,BrickColor.new("Dark green")) 
magicsound(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,1.57-1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.5*i,-1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function onehit() 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
ss(0.7) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5+0.07*i,-1-0.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
gairo.Parent = nil 
attack = false 
end 

function twohit() 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
ss(0.7) 
con2=part1.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1+2*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,1+0.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
wait(0.1) 
con2:disconnect() 
gairo.Parent = nil 
attack = false 
end 

function threehit() 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
ss(0.8) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,25,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+3*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
end 
wait(0.1) 
con1:disconnect() 
gairo.Parent = nil 
attack = false 
end 

function fourhit() 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-2*i,0,-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,1.57-1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1*i,3.14*i,-1.57*i) 
end 
wait(0.2) 
local testbrick = Instance.new("Part") 
testbrick.Parent = modelzorz 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(3,0,0) 
coroutine.resume(coroutine.create(function() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 3 and c[i].Name ~= Player.Name then 
		UpBlast(head,math.random(20,30))
		critsound(0.7) 
		c=Instance.new("ObjectValue")
		c.Name="creator"
		c.Value=game.Players.LocalPlayer
		c.Parent=hum.Parent
		game:GetService("Debris"):AddItem(c,.5)
		end 
		end 
		end 
	end 
end)) 
--[[if workspace:findFirstChild("Base") ~= nil then
colah = workspace.Base.BrickColor 
else 
colah = BrickColor.new("Dark green") 
end ]]
GroundEffect(Torso,1,6,1,3,-3,0,0,0,0,BrickColor.new("Bright green")) 
for i = 1,4 do 
GroundEffect2(Torso,0.5,3,0.5,3,-3,0,math.random(-50,50),math.random(-50,50),math.random(-50,50),BrickColor.new("Bright green")) 
end 
spikesound(7)  
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.2-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.57-1.27*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,3.14+1.57*i,-1.57+1.57*i) 
end 
wait(0.3) 
testbrick.Parent = nil 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
gairo.Parent = nil 
attack = false 
end 

function BoulderSmash() 
if mana >= 100 then 
attack = true 
torspos = Torso.Position 
bod = Instance.new("BodyPosition")
bod.position = Torso.Position 
bod.Parent = Torso
bod.maxForce = Vector3.new(10e+080, 10e+080, 10e+080) 
local b = Instance.new("BodyGyro") 
b.P=18000
b.D=600
b.maxTorque=Vector3.new(100000,100000000,100000)*50000000000000000000000000 
b.Parent = Torso 
b.cframe = Torso.CFrame 
--[[if workspace:findFirstChild("Base") ~= nil then
colah = workspace.Base.BrickColor 
else 
colah = BrickColor.new("Dark green") 
end  ]] 
boulder.BrickColor = BrickColor.new("Bright green") 
boulder.Parent = modelzorz 
boulder.Anchored = true 
boulder.CFrame = Torso.CFrame * CFrame.new(0,-10,-3.5) 
mana = mana - 100 
for i = 0,1,0.05 do 
wait() 
boulder.CFrame = Torso.CFrame * CFrame.new(0,-10+8*i,-3.5) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-1*i,-1+1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.5*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
boulder.Anchored = false 
wait(0.1) 
boulderwld.Parent = boulder 
boulderwld.Part0 = boulder 
boulderwld.Part1 = RightArm 
boulderwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(1.4,3.5,0) 
boulderwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.05 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5-1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-1+3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.5+3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
for i = 0,0.5,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
boulderwld.Parent = nil 
boulder.Velocity = Torso.CFrame.lookVector * 100 
boulder.CanCollide = true 
wait(0.1) 
bolcon=boulder.Touched:connect(function(hit) BoulderHit(hit,40,10) end) 
wait(0.4) 
for i = 0.5,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Character:MoveTo(torspos) 
wait(1.5) 
bolcon:disconnect() 
boulderwld.Parent = nil 
boulder.Anchored = true 
boulder.CanCollide = false 
boulder.Parent = nil 
b.Parent = nil 
bod.Parent = nil 
Torso.Neck.C0=necko
attack = false 
end 
end 

--[[function RageSmash() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,-1+1*i,0.8*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.5*i,1-1*i,-0.8*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5-1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.8-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,-0.8+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local hitpos, target = RayCast(Torso.Position,Torso.Position - Vector3.new(0, 10, 0), 30, 0.5)
colah = target.BrickColor 
GroundEffect(Torso,1,7,1,3,-3,0,0,0,-0.5,colah) 
GroundEffect(Torso,1,7,1,-3,-3,0,0,0,0.5,colah) 
GroundEffect(Torso,1,7,1,0,-3,3,0.5,0,0,colah) 
GroundEffect(Torso,1,7,1,0,-3,-3,-0.5,0,0,colah) 
wait(0.3) 
GroundEffect(Torso,3,9,3,6,-3,0,0,0,-0.7,colah) 
GroundEffect(Torso,3,9,3,-6,-3,0,0,0,0.7,colah) 
GroundEffect(Torso,3,9,3,0,-3,6,0.7,0,0,colah) 
GroundEffect(Torso,3,9,3,0,-3,-6,-0.7,0,0,colah) 
wait(0.3) 
GroundEffect(Torso,5,11,5,8,-3,0,0,0,-0.9,colah) 
GroundEffect(Torso,5,11,5,-8,-3,0,0,0,0.9,colah) 
GroundEffect(Torso,5,11,5,0,-3,8,0.9,0,0,colah) 
GroundEffect(Torso,5,11,5,0,-3,-8,-0.9,0,0,colah) 
wait(0.5) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
attack = false 
end ]]

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MOREMAGIX(part,cframe,x,y,z,color) 
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=color
		p2.Size=Vector3.new(x,y,z)
		p2.formFactor="Symmetric"
		p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	if Style == "WingBlade" and element == "Dark" then 
	S.BrickColor=BrickColor.new("Black") 
	end 
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function GroundEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=1778999"
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) 
		for i=1, 9 do 
			Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.2,0.4,0.2) 
			wait() 
		end 
		wait(3) 
		for i=1, 9 do 
			Part.Mesh.Scale = Part.Mesh.Scale - Vector3.new(0,0.45,0) 
			wait() 
		end 
		Part.Parent=nil 
	end),S,S.CFrame)
end 

function GroundEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) 
		for i=1, 9 do 
			Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.01,0.1,0.01) 
			wait() 
		end 
		wait(3) 
		for i=1, 9 do 
			Part.Mesh.Scale = Part.Mesh.Scale - Vector3.new(0,0.15,0) 
			wait() 
		end 
		Part.Parent=nil 
	end),S,S.CFrame)
end 


function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function DifferentEffect() 
	p=Instance.new("Part")
	p.Name="FlameEm"
	p.Shape=0
	p.TopSurface=0
	p.BottomSurface=0
	derp = math.random(1,2) 
	if derp == 1 then 
	p.BrickColor=BrickColor.new("White") 
	else 
	p.BrickColor=BrickColor.new("Black") 
	end 
	p.Anchored=true
	p.CanCollide=false
	p.Size=Vector3.new(1,1,1)
	p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-10,10)/3,0,math.random(-10,10)/3)
	p.Parent=workspace
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Parent=p
	m.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(p) for i=1, 9 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0,1.5,0) p.Transparency=p.Transparency+1/9  wait(0)  end p.Parent=nil end),p)
end 

function ss(pitch) 

local SlashSound = Instance.new("Sound") 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function magicsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 

SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function spikesound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		if mana < 400 then 
		mana = mana + math.random(5,15)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*3
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

UpBlast=function(hit,Damage) --credits to turdulator for making this function :D
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==Character then
			return
		end
		if mana < 400 then 
		mana = mana + math.random(10,20)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*3
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		h:TakeDamage(Damage) 
		showDamage(hit.Parent,Damage,.5) 
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--		rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
		local tes = math.random(1,2) 
		if tes == 1 then 
		rl.angularvelocity=Vector3.new(0,0,math.random(-40,40)) 
		elseif tes == 2 then 
		rl.angularvelocity=Vector3.new(math.random(-40,40),0,0) 
		end 
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)
	else
		if hit.CanCollide==false then
			return
		end
		MagicCom:disconnect()
--		DBExplode(DB)
	end
end

BoulderHit=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	if hit==workspace.Battlefield.Base then return end 
	if hit.Name=="Handle" then hit:BreakJoints() end 
	critsound(1)
	boulder.Parent = nil 
	local pe = Instance.new("Part") 
	pe.Parent = game.workspace 
	pe.CFrame = boulder.CFrame 
	pe.Size = Vector3.new(1,1,1) 
	pe.BrickColor = boulder.BrickColor 
	pe:BreakJoints() 
	coroutine.resume(coroutine.create(function(Part) 
	wait(5) 
	Part.Parent = nil 
	end),pe) 
	for i = 1,15 do 
	local p = pe:Clone() 
	p.Parent = game.workspace 
	p:BreakJoints() 
	coroutine.resume(coroutine.create(function(Part) 
	wait(5) 
	Part.Parent = nil 
	end),p) 
	end 
	he=hit.Parent.Parent:FindFirstChild("Humanoid")
	if he~=nil then
	h=he
	else
	h=hit.Parent:FindFirstChild("Humanoid")
	end
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*3
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("Really red")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

function getAllParts(from)
    local t = {}
    function getParts(where)
        for i, v in pairs(where:children()) do
            if v:IsA("BasePart") then
                if v.Parent ~= char and v.Parent.Parent ~= char then
                    table.insert(t, v)
                end
            end
            getParts(v)
        end
    end
    getParts(workspace)
    return t
end

function RayCast(pos1, pos2, maxDist, forward)
    local list = getAllParts(workspace)
    local pos0 = pos1
    for dist = 1, maxDist, forward do
        pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
        for _, v in pairs(list) do
            local pos3 = v.CFrame:pointToObjectSpace(pos0)
            local s = v.Size
            if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide == true then
                return pos0, v
            end
        end
    end
    return pos0, nil
end


local hitpos, target = RayCast(Vector3.new(0, 20, 0), Vector3.new(0, -10, 0), 30, 0.5)
--[[if target then
target.BrickColor = BrickColor:Random()
end ]]

hold = false 

function ob1d(mouse) 
if attack == true then return end 
hold = true 
if combo == 0 then 
combo = 1 
onehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 1 then 
combo = 2 
twohit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 2 then 
combo = 3 
threehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 3 then 
combo = 4 
fourhit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if attack == true then return end 
if key == "z" then 
if BoulderUpgraded.Value == true then 
BoulderSmash() 
end 
end 
end 

function key2(key) 

end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
equipanim() 
end 

function ds(mouse) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

function onRunning(speed)
if attack == true then return end 
	if speed>0 then 
walking = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-2.5*i,-1+1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-2*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
	else 
walking = false 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-2.5+2.5*i,-1+1-1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-2+2*i,1-1+1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 

	end 
end 
Character.Humanoid.Running:connect(onRunning) 

while true do 
wait(0)  
bar.Value=mana
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Mana("..mana..")" 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
end 

-- lego This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 