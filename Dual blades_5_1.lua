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
attack = false 
attackdebounce = false 
combo = 0 
mana = 400 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
stancing = false 
raging = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 

if Character:findFirstChild("DualSwords",true) ~= nil then 
Character:findFirstChild("DualSwords",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 

--[[if Player.userId ~= 209911 then 
script.Parent = Character 
local h = Instance.new("Hint") 
h.Parent = workspace 
h.Text = "UR NOT FEN!" 
wait(1) 
h.Text = "U MUST DAI!!" 
wait(0.5) 
if Character:findFirstChild("ForceField") ~= nil then 
Character:findFirstChild("ForceField").Parent = nil 
end 
Character:BreakJoints() 
local m = Instance.new("Explosion") 
m.Parent = workspace 
m.Position = Torso.Position 
wait(3) 
h.Parent = nil 
script.Parent = nil 
wait(9001) 
while true do 
wait() 
end 
end ]]
 

local modelzorz = Instance.new("Model") 
modelzorz.Name = "DualSwords" 
modelzorz.Parent = Character 

local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = Character.Torso.BrickColor
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really black") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Really black") 
prt3.Name = "Handle3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Gold") 
prt4.Name = "Blade1" 
prt4.Reflectance = 0.2 
prt4.Size = Vector3.new(1,2,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Gold") 
prt5.Name = "Blade2" 
prt5.Reflectance = 0.2 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = Character.Torso.BrickColor
prt11.Name = "Handle11" 
prt11.Size = Vector3.new(1,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Really black") 
prt12.Name = "Handle12" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Really black") 
prt13.Name = "Handle13" 
prt13.Size = Vector3.new(1,1,1) 
prt13.Position = Torso.Position 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Parent = modelzorz 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Gold") 
prt14.Name = "Blade11" 
prt14.Reflectance = 0.2 
prt14.Size = Vector3.new(1,2,1) 
prt14.Position = Torso.Position 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Parent = modelzorz 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Gold") 
prt15.Name = "Blade12" 
prt15.Reflectance = 0.2 
prt15.Size = Vector3.new(1,1,1) 
prt15.Position = Torso.Position 
modelzorz:BreakJoints()

local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.4,0.9,0.4) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.5,0.3,0.5) 
local msh3 = Instance.new("BlockMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(1,0.5,0.5) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.7,0.8,0.25) 
local msh5 = Instance.new("SpecialMesh") 
msh5.Parent = prt5 
msh5.MeshType = "Wedge" 
msh5.Scale = Vector3.new(0.25,0.6,0.5) 
local msh11 = Instance.new("CylinderMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(0.4,0.9,0.4) 
local msh12 = Instance.new("CylinderMesh") 
msh12.Parent = prt12 
msh12.Scale = Vector3.new(0.5,0.3,0.5) 
local msh13 = Instance.new("BlockMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(1,0.5,0.5) 
local msh14 = Instance.new("BlockMesh") 
msh14.Parent = prt14 
msh14.Scale = Vector3.new(0.7,0.8,0.25) 
local msh15 = Instance.new("SpecialMesh") 
msh15.Parent = prt15 
msh15.MeshType = "Wedge" 
msh15.Scale = Vector3.new(0.25,0.6,0.5) 

local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.8) * CFrame.new(1.2,-1.3,-0.7) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt3 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt4 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,1.57) * CFrame.new(0,1.21,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = Torso 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.8) * CFrame.new(-1.2,-1.3,-0.7) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt11 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt11 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt13 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt14 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,1.57) * CFrame.new(0,1.21,0) 

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
Tool.Name = "DualSwords" 
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
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1-0.6*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1+1*i,1.57-1.57*i) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1+1-1*i,1.57-1.57*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
equipsound(1) 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.8) * CFrame.new(1.2,-1.3,-0.7) 
wld11.Part1 = Torso 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.8) * CFrame.new(-1.2,-1.3,-0.7) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 

function equipanim() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
equipsound(1) 
wld1.Part1 = LeftArm 
--wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1,0) * CFrame.new(0,1,0) 
wld11.Part1 = RightArm 
--wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1,0) * CFrame.new(0,1,0) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.5+0.7*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1*i,1.57*i) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1+1*i,1.57*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 

function onehit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1-0.1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3.64*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1.1) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.14-4.14*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5*i,-0.5*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
attack = false 
end 

function twohit() 
attack = true 
ss(1.2) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,-0.5+2.07*i,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2:disconnect() 
attack = false 
end 

function threehit() 
attack = true 
equipsound(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.5*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0.5*i,0) 
end
wait(0.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1*i,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.5,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1*i,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0.5,0) 
end
ss(1) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,25,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,25,10) end) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2*i,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,-0.5,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2*i,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0.5,0) 
end
con1:disconnect() 
con2:disconnect() 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.57-1.07*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1*i,-0.5+0.5*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.57-1.07*i,1.57-1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1*i,0.5-0.5*i,0) 
end
attack = false 
end 

function Stance() 
attack = true 
stancing = true 
Character.Humanoid.WalkSpeed = 17 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1+0.1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-1.3*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,1.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
end 

function UnStance() 
gairo.Parent = nil 
stancing = false 
Character.Humanoid.WalkSpeed = 16 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1+0.1-0.1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07-2.07*i,-1.3+1.3*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07-2.07*i,1.3-1.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1*i,0,0) 
end 
attack = false 
end 

function StanceAttack1() 
if mana >= 10 then 
stanceattack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2,0,0)
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.3,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
end 
while hold == true do 
wait() 
end 
ss(1) 
con1=prt4.Touched:connect(function(hit) FireDamage(hit,25,10) end) 
con2=prt14.Touched:connect(function(hit) FireDamage(hit,25,10) end) 
mana = mana - 10 
for i = 0,1,0.2 do 
wait() 
if math.random(1,2) == 1 then 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
else 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
end 
if math.random(1,2) == 1 then 
MMMAGIC(prt15,2,2,2,0,0,0,BrickColor.new("Gold")) 
else 
MMMAGIC(prt15,2,2,2,0,0,0,BrickColor.new("Gold")) 
end 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2,0,0)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.3,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+3*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+3*i,0,0) 
end 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.3,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+3-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+3-1*i,0,0) 
end 
stanceattack = false 
end 
end 

function StanceAttack2() 
if mana >= 10 then 
stanceattack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2,0,0)
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,3.14*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.3,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1+1*i,1*i,0) 
end 
while hold == true do 
wait() 
end 
ss(1) 
con1=prt4.Touched:connect(function(hit) FireDamage(hit,15,10) end) 
con2=prt14.Touched:connect(function(hit) FireDamage(hit,35,10) end) 
mana = mana - 10 
for i = 0,1,0.2 do 
wait() 
if math.random(1,2) == 1 then 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
else 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
end 
if math.random(1,2) == 1 then 
MMMAGIC(prt15,2,2,2,0,0,0,BrickColor.new("Gold")) 
else 
MMMAGIC(prt15,2,2,2,0,0,0,BrickColor.new("Gold")) 
end 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.2*i,0,0)
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,3.14-3.14*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.3,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+3*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07+1*i,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1+1-1*i,1-1*i,0) 
end 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.3,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+3-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07+1-1*i,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
end 
stanceattack = false 
end 
end 

function StanceAttack3() 
if mana >= 40 then 
stanceattack = true 
mana = mana - 40 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,-1.3+1.3*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
end 
dur = 0 
while hold == true do 
ss(1) 
if dur > 50 then 
for i = 0,1,0.1 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-math.rad(360)*i,1.57) * CFrame.new(0,1,0) 
end 
else 
for i = 0,1,0.1 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,math.rad(360)*i,1.57) * CFrame.new(0,1,0) 
end 
end 
dur = dur + 1 
end 
if dur < 50 then 
ss(1) 
con1=prt4.Touched:connect(function(hit) FireDamage(hit,2*dur,10) end) 
for i = 0,1,0.2 do 
wait() 
if math.random(1,2) == 1 then 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
else 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
end 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.2*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1*i,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,-1.3+1.3,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+2*i,0,0) 
end 
con1:disconnect() 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.2+0.2*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1*i,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57,-1.3+1.3-1.3*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1+1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+2,0,0) 
end 
else 
for i = 0,1,0.1 do 
wait() 
--[[if math.random(1,2) == 1 then 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
else 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
end ]]
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.5*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1-2.14*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.3,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2,0,0) 
end 
wait(0.2) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
if math.random(1,2) == 1 then 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
else 
MMMAGIC(prt5,2,2,2,0,0,0,BrickColor.new("Gold")) 
end 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.5+0.5*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1*i,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.14-2.64*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,1.3-1.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
end 
local b = Instance.new("Part") 
b.Parent = workspace 
b.Anchored = true 
b.CFrame = Torso.CFrame * CFrame.new(-2,0,-4) 
b.Transparency = 1 
b.CanCollide = false 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - b.Position;
		local mag = targ.magnitude;
		if mag <= 6 and c[i].Name ~= Player.Name then 
		DBHit(head,dur*2) 
		end 
		end 
		end 
	end 
magicsound(1) 
WaveEffect(Torso,3,3,3,-2,0,-4,0,0,0,BrickColor.new("Gold")) 
BlastEffect(Torso,3,3,3,-2,0,-4,0,0,0,BrickColor.new("Gold")) 
wait(1) 
b.Parent = nil 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1*i,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+1.07*i,-1.3*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.57+2.57*i,1.3-1.3+1.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1+1*i,0,0) 
end 
end 
dur = nil 
stanceattack = false 
end 
end 

function SpinSlash() 
if mana >= 20 then 
attack = true 
gairo.Parent = Head 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.2*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 
end 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
for i = 0,1,0.05 do 
wait() 
ss(1.5) 
mana = mana - 5 
gairo.cframe = Head.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
gairo.Parent = nil 
attack = false 
end 
end 

function DodgeSlash() 
if mana >= 20 then 
attack = true 
equipsound(1.3) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2-0.2*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0.5*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.5*i,0) 
end 
wait(0.2) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
mana = mana - 30 
			coroutine.resume(coroutine.create(function() 
			for i = 0,20 do 
			wait(0.1) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(2,2,2)
	if math.random(1,2)==1 then 
	S.BrickColor=BrickColor.new("Gold") 
	else 
	S.BrickColor=BrickColor.new("Gold") 
	end 
	S.Reflectance=0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=prt4.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(2,2,2)
	if math.random(1,2)==1 then 
	S.BrickColor=BrickColor.new("Gold") 
	else 
	S.BrickColor=BrickColor.new("Gold") 
	end 
	S.Reflectance=0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=prt14.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
			end 
			end)) 
local b = Instance.new("Part") 
b.Parent = workspace 
b.Anchored = true 
b.CFrame = Torso.CFrame * CFrame.new(0,0,-4) 
b.Transparency = 1 
b.CanCollide = false 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - b.Position;
		local mag = targ.magnitude;
		if mag <= 5 and c[i].Name ~= Player.Name then 
		DBHit(head,math.random(5,15)) 
		end 
		end 
		end 
	end 
magicsound(1) 
WaveEffect(Torso,3,3,3,0,0,-4,0,0,0,BrickColor.new("Gold")) 
BlastEffect(Torso,3,3,3,0,0,-4,0,0,0,BrickColor.new("Gold")) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * -50
ss(1.3) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07-2.07*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0.5-1*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07-2.07*i,0,-0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.5+1*i,0) 
end 
wait(0.2) 
b.Parent = nil 
vel.Parent = nil 
con1:disconnect() 
con2:disconnect() 
attack = false 
end 
end 

function RAEG() 
attack = true 
raging = true 
dur = 100 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1+0.1*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local b = Instance.new("Part") 
b.Parent = workspace 
b.Anchored = true 
b.CFrame = Torso.CFrame * CFrame.new(0,0,0) 
b.Transparency = 1 
b.CanCollide = false 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - b.Position;
		local mag = targ.magnitude;
		if mag <= 7 and c[i].Name ~= Player.Name then 
		DBHit(head,math.random(20,40)) 
		end 
		end 
		end 
	end 
magicsound(1) 
WaveEffect(Torso,5,5,5,0,0,0,0,0,0,BrickColor.new("Gold")) 
BlastEffect(Torso,5,5,5,0,0,0,0,0,0,BrickColor.new("Gold")) 
			coroutine.resume(coroutine.create(function() 
			while raging == true and mana > 0 do 
			wait(0.1) 
	mana = mana - 1 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(2,2,2)
	if math.random(1,2)==1 then 
	S.BrickColor=BrickColor.new("Gold") 
	else 
	S.BrickColor=BrickColor.new("Gold") 
	end 
	S.Reflectance=0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=Torso.CFrame*CFrame.new(math.random(-10,9)*math.random(),-3,math.random(-10,9)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - S.Position;
		local mag = targ.magnitude;
		if mag <= 5 and c[i].Name ~= Player.Name then 
		BurningDamage(head,math.random(0,5),0) 
		end 
		end 
		end 
	end 
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
			end 
			end)) 
wait() 
dur = nil 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1+0.1-0.3*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2-2.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2-2.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1+0.1-0.3+0.2*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2-2.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2-2.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function FireEffect(a,b) 
if a == true then 
dur = prt4:Clone() 
dur.Parent = modelzorz 
dur.Anchored = true 
dur.Transparency = 0.5 
dur.Reflectance = 0 
coroutine.resume(coroutine.create(function(P) 
for i = 0,1,0.1 do 
wait() 
P.Transparency = P.Transparency + 0.05 
end 
P.Parent = nil 
end),dur) 
dur = prt5:Clone() 
dur.Parent = modelzorz 
dur.Anchored = true 
dur.Transparency = 0.5 
dur.Reflectance = 0 
coroutine.resume(coroutine.create(function(P) 
for i = 0,1,0.1 do 
wait() 
P.Transparency = P.Transparency + 0.05 
end 
P.Parent = nil 
end),dur) 
end 
if b == true then 
dur = prt14:Clone() 
dur.Parent = modelzorz 
dur.Anchored = true 
dur.Transparency = 0.5 
dur.Reflectance = 0 
coroutine.resume(coroutine.create(function(P) 
for i = 0,1,0.1 do 
wait() 
P.Transparency = P.Transparency + 0.05 
end 
P.Parent = nil 
end),dur) 
dur = prt15:Clone() 
dur.Parent = modelzorz 
dur.Anchored = true 
dur.Transparency = 0.5 
dur.Reflectance = 0 
coroutine.resume(coroutine.create(function(P) 
for i = 0,1,0.1 do 
wait() 
P.Transparency = P.Transparency + 0.05 
end 
P.Parent = nil 
end),dur) 
end 
end 

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
	S.BrickColor=BrickColor.new("Really black") 
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
	p.BrickColor=BrickColor.new("Really black") 
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
function equipsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = workspace 

SlashSound.Volume = .5 
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
		mana = mana + math.random(10,20)  
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
		if math.random(0,99)+math.random()<=5 then
			CRIT=true
			Damage=Damage*1.5
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

FireDamage=function(hit,Damage,Knockback)
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
		mana = mana + math.random(10,20)  
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
		if 1==1 then 
			coroutine.resume(coroutine.create(function() 
			if dur == nil then 
			temp = 20 
			else 
			temp = dur*2 
			end 
			for i = 0,temp do 
			wait(0.1) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(2,2,2)
	if math.random(1,2)==1 then 
	S.BrickColor=BrickColor.new("Gold") 
	else 
	S.BrickColor=BrickColor.new("Gold") 
	end 
	S.Reflectance=0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
			hit.Parent.Humanoid:TakeDamage(0.5) 
			end 
			end)) 
		end 
		if math.random(0,99)+math.random()<=5 then
			CRIT=true
			Damage=Damage*1.5
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
BurningDamage=function(hit,Damage,Knockback)
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
		mana = mana + math.random(10,20)  
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
		if 1==1 then 
			coroutine.resume(coroutine.create(function() 
			for i = 0,10 do 
			wait(0.1) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(2,2,2)
	if math.random(1,2)==1 then 
	S.BrickColor=BrickColor.new("Gold") 
	else 
	S.BrickColor=BrickColor.new("Gold") 
	end 
	S.Reflectance=0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
			hit.Parent.Humanoid:TakeDamage(0.5) 
			end 
			end)) 
		end 
		Damage=Damage
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
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

DBHit=function(hit,Damage) --credits to turdulator for making this function :D
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
		mana = mana + math.random(5,15)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if 1==1 then 
			coroutine.resume(coroutine.create(function() 
			if dur == nil then 
			temp = 20 
			else 
			temp = dur*2 
			end 
			for i = 0,temp do 
			wait(0.1) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(2,2,2)
	if math.random(1,2)==1 then 
	S.BrickColor=BrickColor.new("Gold") 
	else 
	S.BrickColor=BrickColor.new("Gold") 
	end 
	S.Reflectance=0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
			hit.Parent.Humanoid:TakeDamage(0.5) 
			end 
			end)) 
		end 
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*1
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			s=Instance.new("Sound")
			s.SoundId="http://www.roblox.com/asset/?id=2801263"
			s.Volume=1
			s.Pitch=2
			s.Parent=hit
			s.PlayOnRemove=true
			s.Parent=nil
	
		end
		h:TakeDamage(Damage) 
		showDamage(hit.Parent,Damage,.5) 
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
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

hold = false 

function ob1d(mouse) 
if attack == true then return end 
if stancing == true then return end 
hold = true 
if combo == 0 then 
combo = 1 
onehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1+1,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
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
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1+1,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 2 then 
combo = 3 
threehit() 
wait(0.5) 
combo = 0 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1,1.57) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1+1,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if key == "z" then 
hold = true 
StanceAttack1() 
end 
if key == "x" then 
hold = true 
StanceAttack2() 
end 
if key == "c" then 
hold = true 
StanceAttack3() 
end 
end 
if attack == true then return end 
if key == "z" then 
SpinSlash() 
end 
if key == "x" then 
DodgeSlash() 
end 
if key == "f" then 
if raging == false and mana > 0 then 
RAEG() 
else 
raging = false 
end 
end 


function key2(key) 
if key == "z" or key == "x" or key == "c" then 
hold = false 
end 
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
if attack == false then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1-0.1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5*i,0.5*i,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5*i,-0.5*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
	else 
walking = false 
for i = 0,1,0.1 do 
wait() 
if attack == false then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5+0.5*i,0.5-0.5*i,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5+0.5*i,-0.5+0.5*i,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
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