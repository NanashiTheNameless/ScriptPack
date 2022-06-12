--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 4 and put your name where it says "YOUR NAME HERE"


Player = game:GetService("Players").BRICKER24
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
mana = 800 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
comboing = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
if Character:findFirstChild("Harute",true) ~= nil then 
Character:findFirstChild("Harute",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Harute" 
modelzorz.Parent = Character 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Really black") 
prt1.Name = "Part1" 
prt1.Transparency = 0.4 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Bright red") 
prt2.Name = "Part2" 
prt2.Transparency = 0.4 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Really black") 
prt3.Name = "Part3" 
prt3.Transparency = 0.4 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Bright red") 
prt4.Name = "Part4" 
prt4.Transparency = 0.4 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Really black") 
prt5.Name = "Part5" 
prt5.Transparency = 0.4 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Bright red") 
prt6.Name = "Part6" 
prt6.Transparency = 0.4 
prt6.Size = Vector3.new(1,1,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Really black") 
prt7.Name = "Part7" 
prt7.Transparency = 0.4 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Bright red") 
prt8.Name = "Part8" 
prt8.Transparency = 0.4 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local msh1 = Instance.new("BlockMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.5,1,0.5) 
local msh2 = Instance.new("BlockMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.5,1,0.5) 
local msh3 = Instance.new("BlockMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.5,1,0.5) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.5,1,0.5) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.5,1,0.5) 
local msh6 = Instance.new("BlockMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.5,1,0.5) 
local msh7 = Instance.new("BlockMesh") 
msh7.Parent = prt7 
msh7.Scale = Vector3.new(0.5,1,0.5) 
local msh8 = Instance.new("BlockMesh") 
msh8.Parent = prt8 
msh8.Scale = Vector3.new(0.5,1,0.5) 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = Torso 
wld2.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = Torso 
wld3.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = Torso 
wld4.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = Torso 
wld5.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = Torso 
wld6.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = Torso 
wld7.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = Torso 
wld8.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
local SlashSound = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
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
fentext.Text = "Energy("..mana..")" 
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
Tool.Name = "Harute" 
script.Parent = Tool 
end 
Bin = script.Parent 
function hideanim() 
end 
function equipanim() 
end 
function onehit() 
if mana >= 0 then 
attack = true 
comboing = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
wait(0.1) 
gairo.Parent = Head 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1*i) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--[[wld1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) ]] 
wld4.C0 = CFrame.new(1.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,2.355-0.785*i) 
wld5.C0 = CFrame.new(-0.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,3.14-1.57*i) 
--[[wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) ]] 
end 
wait(0.1) 
if mana >= 0 then 
mana = mana - 10 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
Laser(prt4,math.random(20,40)) 
Laser(prt5,math.random(20,40)) 
attack = false 
end 
end 
function twohit() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld4.C0 = CFrame.new(1.3-1.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,2.355-0.785+0.785*i) 
wld5.C0 = CFrame.new(-0.3+0.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,3.14-1.57+1.57*i) 
wld6.C0 = CFrame.new(0.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,3.925+0.785*i) 
wld7.C0 = CFrame.new(-1.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,4.71) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1-2*i) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
if mana >= 0 then 
mana = mana - 5 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
Laser(prt6,math.random(20,40)) 
Laser(prt7,math.random(20,40)) 
wait(0.1) 
attack = false 
end 
end 
function threehit() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld6.C0 = CFrame.new(0.3-0.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,3.925+0.785-0.785*i) 
wld7.C0 = CFrame.new(-1.3+1.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.5*i,5.495-5.495*i) 
wld1.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.5*i,0.785-0.785*i) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1-2+1*i) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-0.5-1.27*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
if mana >= 0 then 
mana = mana - 8 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt8,math.random(20,40)) 
Laser(prt1,math.random(20,40)) 
Laser(prt2,math.random(20,40)) 
wait(0.1) 
attack = false 
end 
end 
function fourhit() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld8.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0.5*i,5.495-5.495+5.495*i) 
wld1.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,-0.5*i,0.785-0.785+0.785*i) 
wld3.C0 = CFrame.new(0,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,1.57+0.5*i) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1.57*i) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,0.2-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,1.57-0.5-1.27+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
wld3.C0 = CFrame.new(0,1.6+3,-1+1) * CFrame.fromEulerAnglesXYZ(0,0,1.57+0.5-0.8*i) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1.57) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(1.57,0,0.2-1.77) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(1.57-1.57,0,1.57-0.5-1.27+1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt3,math.random(5,15)) 
end 
wait(0.1) 
attack = false 
end 
end 
function LaserWave() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,6.28) 
wld3.C0 = CFrame.new(0,1.6+3,-1+4*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,1.57) 
wld5.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.14) 
wld7.C0 = CFrame.new(0,1.6+3,-1+4*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,4.71) 
end 
if mana >= 0 then 
mana = mana - 20 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0.5-0.5*i,1.6+3,-1+1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,6.28) 
wld3.C0 = CFrame.new(0,1.6+3,-1+4-4*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,1.57) 
wld5.C0 = CFrame.new(0.5-0.5*i,1.6+3,-1+1-1*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,3.14) 
wld7.C0 = CFrame.new(0,1.6+3,-1+4-4*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,4.71) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld2.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.97*i,0,0.785-0.785*i) 
wld4.C0 = CFrame.new(0,1.6+3,-1+1.5*i) * CFrame.fromEulerAnglesXYZ(-1.77*i,0,2.355-2.355*i) 
wld6.C0 = CFrame.new(0,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.925-3.925*i) 
wld8.C0 = CFrame.new(0,1.6+3,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(-1.37*i,0,5.495-5.495*i) 
end 
if mana >= 0 then 
mana = mana - 20 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt2,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld2.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.97+1.97*i,0,-0.785*i) 
wld4.C0 = CFrame.new(0,1.6+3,-1+1.5-1.5*i) * CFrame.fromEulerAnglesXYZ(-1.77+1.77*i,0,-2.355*i) 
wld6.C0 = CFrame.new(0,1.6+3,-1+1-1*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,-3.925*i) 
wld8.C0 = CFrame.new(0,1.6+3,-1+0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.37+1.37*i,0,-5.495*i) 
end 
wait(0.1) 
attack = false 
end 
end 
function OverBlast() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1.05,0.05 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(-1.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.5*i,6.28) 
wld2.C0 = CFrame.new(-1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.3*i,0.785+5.495*i) 
wld3.C0 = CFrame.new(1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.3*i,1.57+4.71*i) 
wld4.C0 = CFrame.new(1.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.5*i,2.355+3.925*i) 
wld5.C0 = CFrame.new(-1.1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.1*i,3.14-3.14*i) 
wld6.C0 = CFrame.new(-0.6*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.925-3.925*i) 
wld7.C0 = CFrame.new(0.6*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0,4.71-4.71*i) 
wld8.C0 = CFrame.new(1.1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.1*i,5.495-5.495*i) 
end 
if mana >= 0 then 
mana = mana - 50 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(5,15)) 
Laser(prt2,math.random(5,15)) 
Laser(prt3,math.random(5,15)) 
Laser(prt4,math.random(5,15)) 
Laser(prt5,math.random(5,15)) 
Laser(prt6,math.random(5,15)) 
Laser(prt7,math.random(5,15)) 
Laser(prt8,math.random(5,15)) 
wait(0.2) 
for i = 0,1.05,0.05 do 
wait() 
wld1.C0 = CFrame.new(-1.5,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0.5-0.5*i,6.28) 
wld2.C0 = CFrame.new(-1+0.5*i,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0.3-0.3*i,0.785+5.495) 
wld3.C0 = CFrame.new(1-0.5*i,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,-0.3+0.3*i,1.57+4.71) 
wld4.C0 = CFrame.new(1.5,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,-0.5+0.5*i,2.355+3.925) 
wld5.C0 = CFrame.new(-1.1-0.4*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0.1-0.1*i,3.14-3.14) 
wld6.C0 = CFrame.new(-0.6+0.1*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0,3.925-3.925) 
wld7.C0 = CFrame.new(0.6-0.1*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0,4.71-4.71) 
wld8.C0 = CFrame.new(1.1+0.4*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,-0.1+0.1*i,5.495-5.495) 
end 
if mana >= 0 then 
mana = mana - 50 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(5,15)) 
Laser(prt2,math.random(5,15)) 
Laser(prt3,math.random(5,15)) 
Laser(prt4,math.random(5,15)) 
Laser(prt5,math.random(5,15)) 
Laser(prt6,math.random(5,15)) 
Laser(prt7,math.random(5,15)) 
Laser(prt8,math.random(5,15)) 
wait(0.5) 
attack = false 
end 
end 
function SpinBeam() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(-0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
gairo.Parent = Head 
gairo.cframe = Head.CFrame 
CF = Torso.CFrame 
for i = 0,1,0.1 do 
wait(0.1) 
gairo.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
if mana >= 0 then 
mana = mana - 5 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
Laser(prt3,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
end 
wait(0.2) 
gairo.Parent = nil 
attack = false 
end 
end 
function DodgeTheLaser() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(-0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
gairo.Parent = Head 
gairo.cframe = Head.CFrame 
CF = Torso.CFrame 
for i = 0,1,0.01 do 
wait(0.1) 
gairo.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
if mana >= 0 then 
mana = mana - 5 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
Laser(prt3,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
end 
wait() 
gairo.Parent = nil 
attack = false 
end 
end 
function LaserBarrage() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,6.28) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt1,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,0,1.57-1.77-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,6.28) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,0.785) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt2,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,0.785) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.3*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld3.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,1.57) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt3,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.3+0.3*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld3.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,1.57) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,2.355) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt4,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,2.355) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.14) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt5,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,3.14) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.925) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt6,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,3.925) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld7.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,4.71) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt7,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld7.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,4.71) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,5.495) 
end 
if mana >= 0 then 
mana = mana - 1 
else 
mana = 0 
end 
lasersound(4) 
Laser(prt8,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,5.495) 
end 
wait(0.5) 
attack = false 
end 
end 
function CloseRangedFire() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,5.495) 
end 
if mana >= 0 then 
mana = mana - 50 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
wait(1) 
attack = false 
end 
end 
function Implosion() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0,6.28-6.28*i) 
wld2.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0.785*i,0.785-0.785*i) 
wld3.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,1.57-1.57*i) 
wld4.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,2.355*i,2.355-2.355*i) 
wld5.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.14*i,3.14-3.14*i) 
wld6.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.925*i,3.925-3.925*i) 
wld7.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,4.71*i,4.71-4.71*i) 
wld8.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,5.495*i,5.495-5.495*i) 
end 
if mana >= 0 then 
mana = mana - 50 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,0+0.5*i,6.28-6.28) 
wld2.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,0.785+0.5*i,0.785-0.785) 
wld3.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,1.57+0.5*i,1.57-1.57) 
wld4.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,2.355+0.5*i,2.355-2.355) 
wld5.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5*i,3.14-3.14) 
wld6.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.925+0.5*i,3.925-3.925) 
wld7.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,4.71+0.5*i,4.71-4.71) 
wld8.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,5.495+0.5*i,5.495-5.495) 
end 
if mana >= 0 then 
mana = mana - 50 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,0+0.5,6.28-6.28) 
wld2.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,0.785+0.5,0.785-0.785) 
wld3.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,1.57+0.5,1.57-1.57) 
wld4.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,2.355+0.5,2.355-2.355) 
wld5.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,3.14+0.5,3.14-3.14) 
wld6.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,3.925+0.5,3.925-3.925) 
wld7.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,4.71+0.5,4.71-4.71) 
wld8.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,5.495+0.5,5.495-5.495) 
end 
if mana >= 0 then 
mana = mana - 50 
else 
mana = 0 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
wait(1) 
attack = false 
end 
end 
function SpinLaser() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0,6.28-6.28*i) 
wld2.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0.785*i,0.785-0.785*i) 
wld3.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,1.57-1.57*i) 
wld4.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,2.355*i,2.355-2.355*i) 
wld5.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.14*i,3.14-3.14*i) 
wld6.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.925*i,3.925-3.925*i) 
wld7.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,4.71*i,4.71-4.71*i) 
wld8.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,5.495*i,5.495-5.495*i) 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(10,20)) 
Laser(prt2,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0+0.5*i,6.28-6.28) 
wld2.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0.785+0.5*i,0.785-0.785) 
wld3.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,1.57+0.5*i,1.57-1.57) 
wld4.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,2.355+0.5*i,2.355-2.355) 
wld5.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5*i,3.14-3.14) 
wld6.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.925+0.5*i,3.925-3.925) 
wld7.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,4.71+0.5*i,4.71-4.71) 
wld8.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,5.495+0.5*i,5.495-5.495) 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(10,20)) 
Laser(prt2,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0+0.5+0.5*i,6.28-6.28) 
wld2.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0.785+0.5+0.5*i,0.785-0.785) 
wld3.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,1.57+0.5+0.5*i,1.57-1.57) 
wld4.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,2.355+0.5+0.5*i,2.355-2.355) 
wld5.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5+0.5*i,3.14-3.14) 
wld6.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.925+0.5+0.5*i,3.925-3.925) 
wld7.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,4.71+0.5+0.5*i,4.71-4.71) 
wld8.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,5.495+0.5+0.5*i,5.495-5.495) 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(10,20)) 
Laser(prt2,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
wait(1) 
attack = false 
end 
end 
function LaserPillars() 
if mana >= 0 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
wld2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
wld3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
wld4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
wld5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
wld6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
wld7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
wld8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,0,6.28-6.28*i) 
wld2.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,0.785*i,0.785-0.785*i) 
wld3.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,1.57*i,1.57-1.57*i) 
wld4.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,2.355*i,2.355-2.355*i) 
wld5.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,3.14*i,3.14-3.14*i) 
wld6.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,3.925*i,3.925-3.925*i) 
wld7.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,4.71*i,4.71-4.71*i) 
wld8.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,5.495*i,5.495-5.495*i) 
end 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(20,40)) 
Laser(prt2,math.random(20,40)) 
Laser(prt3,math.random(20,40)) 
Laser(prt4,math.random(20,40)) 
Laser(prt5,math.random(20,40)) 
Laser(prt6,math.random(20,40)) 
Laser(prt7,math.random(20,40)) 
Laser(prt8,math.random(20,40)) 
hur = 0 
for i = 0,1,0.1 do 
wait(0.1) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,0+2.5*i,6.28-6.28) 
wld2.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,0.785+2.5*i,0.785-0.785) 
wld3.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,1.57+2.5*i,1.57-1.57) 
wld4.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,2.355+2.5*i,2.355-2.355) 
wld5.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,3.14+2.5*i,3.14-3.14) 
wld6.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,3.925+2.5*i,3.925-3.925) 
wld7.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,4.71+2.5*i,4.71-4.71) 
wld8.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,5.495+2.5*i,5.495-5.495) 
if hur == 1 then 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
lasersound(4) 
Laser(prt1,math.random(20,40)) 
Laser(prt2,math.random(20,40)) 
Laser(prt3,math.random(20,40)) 
Laser(prt4,math.random(20,40)) 
Laser(prt5,math.random(20,40)) 
Laser(prt6,math.random(20,40)) 
Laser(prt7,math.random(20,40)) 
Laser(prt8,math.random(20,40)) 
hur = 0 
end 
hur = hur + 1 
end 
wait(1) 
attack = false 
end 
end 
function rayCast(Pos, Dir, Max, Ignore) -- Origin Position , Direction, MaxDistance , IgnoreDescendants 
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(-1.57,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,500,Character) 
local las=Instance.new("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Bright red") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.15,0.7,0.15) 
end 
Part.Parent = nil 
end),las,msh) 
local las=Instance.new("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Really black") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(-0.05,0.7,-0.05) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
local las2=Instance.new("Part",Character) 
las2.Anchored=true 
las2.Locked=true 
las2.CanCollide=false 
las2.TopSurface=0 
las2.BottomSurface=0 
las2.FormFactor = "Custom" 
las2.BrickColor=BrickColor.new("Bright red") 
las2.Size=Vector3.new(1,1,1) 
--las2.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
las2.CFrame=CFrame.new(pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("BlockMesh",las2) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,0.1,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
--wait(10) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.5,0,0.5) 
end 
Part.Parent = nil 
end),las2,msh) 
end 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = Vector3.new(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(Dmg) 
showDamage(hit.Parent,Dmg,.5) 
end 
end 
--[[if hit.className == "Part" and hit.Parent:findFirstChild("Humanoid") == nil then 
end ]] 
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
function lasersound(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds/Launching rocket.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
--rbxasset://sounds/Launching rocket.wav 
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
if mana < 800 then 
mana = mana + math.random(10,20) 
end 
if mana > 800 then 
mana = 800 
end 
Damage=Damage 
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then 
return 
end]] 
c=Instance.new("ObjectValue") 
c.Name="creator" 
c.Value=game.Players.LocalPlayer 
c.Parent=h 
game:GetService("Debris"):AddItem(c,.5) 
-- print(c.Value) 
if math.random(0,99)+math.random()<=5 then 
CRIT=true 
Damage=Damage*1.5 
--[[ Knockback=Knockback*2 
r=Instance.new("BodyAngularVelocity") 
r.P=3000 
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000 
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20)) 
r.Parent=hit.Parent.Torso]] 
critsound(2) 
end 
Damage=Damage+math.random(0,10) 
-- Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2)) 
h:TakeDamage(Damage) 
showDamage(hit.Parent,Damage,.5) 
vp=Instance.new("BodyVelocity") 
vp.P=500 
vp.maxForce=Vector3.new(math.huge,0,math.huge) 
-- vp.velocity=Character.Torso.CFrame.lookVector*Knockback 
vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05 
if Knockback>0 then 
vp.Parent=hit.Parent.Torso 
end 
game:GetService("Debris"):AddItem(vp,.25) 
--[[ r=Instance.new("BodyAngularVelocity") 
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
ms.Bevel=.1 
ms.Scale=Vector3.new(.8,.8,.8) 
if CRIT==true then 
ms.Scale=Vector3.new(1.25,1.5,1.25) 
ms.Bevel=.2 
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
comboing = false 
gairo.Parent = nil 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
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
comboing = false 
gairo.Parent = nil 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
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
comboing = false 
gairo.Parent = nil 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 3 then 
combo = 4 
fourhit() 
wait(0.5) 
combo = 0 
comboing = false 
gairo.Parent = nil 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
function key(key) 
if attack == true then return end 
if key == "q" then 
LaserWave() 
end 
if key == "e" then 
OverBlast() 
end 
if key == "r" then 
SpinBeam() 
end 
if key == "t" then 
LaserBarrage() 
end 
if key == "y" then 
CloseRangedFire() 
end 
if key == "u" then 
SpinLaser() 
end 
if key == "x" then 
Implosion() 
end 
if key == "c" then 
LaserPillars() 
end 
if key == "z" then 
DodgeTheLaser() 
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
if attack == false and comboing == false then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
else 
walking = false 
for i = 0,1,0.1 do 
wait() 
if attack == false and comboing == false then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
end 
Character.Humanoid.Running:connect(onRunning) 
coroutine.resume(coroutine.create(function() 
while true do 
wait(0) 
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0) 
fentext.Text = "Energy("..mana..")" 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while true do 
wait(0.1) 
if mana <= 0 and attack == false then 
attack = true 
while mana <= 800 do 
wait(0.1) 
mana = mana + 5 
end 
attack = false 
end 
if mana < 800 and attack == false then 
mana = mana + 2 
end 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while true do 
wait() 
for i = 0,1,0.01 do 
wait(0) 
if attack == false and comboing == false then 
wld1.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
wld2.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
wld3.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
wld4.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
wld5.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
wld6.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
wld7.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
wld8.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)*i) 
end 
end 
end 
end))
