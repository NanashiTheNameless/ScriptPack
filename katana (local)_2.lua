--[[ 

This is a weapon request for DrFlame. 

 

This Script is created by: 

 

Fenrier: Everything 

 

If you're gonna steal this, then please I ask you. Please don't forum,free model, give 

away, or anything like that to this script. Thank you very much :) 

]] 

Player = script.Parent.Parent 

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

lightning = false 

restoring = false 

--player 

player = nil 

--save shoulders 

RSH, LSH = nil, nil 

--welds 

RW, LW = Instance.new("Weld"), Instance.new("Weld") 

--what anim 

anim = "none" 

 

if Character:findFirstChild("Katana",true) ~= nil then 

Character:findFirstChild("Katana",true).Parent = nil 

end 

if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 

Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 

end 

 

 

local modelzorz = Instance.new("Model") 

modelzorz.Name = "Katana" 

modelzorz.Parent = Character 

 

local prt1 = Instance.new("Part") 

prt1.formFactor = 1 

prt1.Parent = modelzorz 

prt1.CanCollide = false 

prt1.BrickColor = BrickColor.new("Really red") 

prt1.Name = "Handle" 

prt1.Transparency = 0 

prt1.Size = Vector3.new(1,1,1) 

prt1.CFrame = Torso.CFrame 

local prt2 = Instance.new("Part") 

prt2.formFactor = 1 

prt2.Parent = modelzorz 

prt2.CanCollide = false 

prt2.BrickColor = BrickColor.new("Really black") 

prt2.Name = "Handle2" 

prt2.Transparency = 0 

prt2.Size = Vector3.new(1,1,1) 

prt2.CFrame = Torso.CFrame 

local prt3 = Instance.new("Part") 

prt3.formFactor = 1 

prt3.Parent = modelzorz 

prt3.CanCollide = false 

prt3.BrickColor = BrickColor.new("Dark grey") 

prt3.Name = "Handle3" 

prt3.Transparency = 0 

prt3.Size = Vector3.new(1,1,1) 

prt3.CFrame = Torso.CFrame 

local prt4 = Instance.new("Part") 

prt4.formFactor = 1 

prt4.Parent = modelzorz 

prt4.CanCollide = false 

prt4.BrickColor = BrickColor.new("Really black") 

prt4.Name = "Blade1" 

prt4.Reflectance = 0.4 

prt4.Transparency = 0 

prt4.Size = Vector3.new(1,3,1) 

prt4.CFrame = Torso.CFrame 

local prt5 = Instance.new("Part") 

prt5.formFactor = 1 

prt5.Parent = modelzorz 

prt5.CanCollide = false 

prt5.BrickColor = BrickColor.new("Really black") 

prt5.Name = "Blade2" 

prt5.Transparency = 0 

prt5.Size = Vector3.new(1,1,1) 

prt5.CFrame = Torso.CFrame 

local prt6 = Instance.new("Part") 

prt6.formFactor = 1 

prt6.Parent = modelzorz 

prt6.CanCollide = false 

prt6.BrickColor = BrickColor.new("Really black") 

prt6.Name = "Blade3" 

prt6.Reflectance = 0.4 

prt6.Transparency = 0 

prt6.Size = Vector3.new(1,1,1) 

prt6.CFrame = Torso.CFrame 

local prt7 = Instance.new("Part") 

prt7.formFactor = 1 

prt7.Parent = modelzorz 

prt7.CanCollide = false 

prt7.BrickColor = BrickColor.new("Really red") 

prt7.Name = "Handle3" 

prt7.Transparency = 0 

prt7.Size = Vector3.new(1,1,1) 

prt7.CFrame = Torso.CFrame 

local prt8 = Instance.new("Part") 

prt8.formFactor = 1 

prt8.Parent = modelzorz 

prt8.CanCollide = false 

prt8.BrickColor = BrickColor.new("Really black") 

prt8.Name = "Handle4" 

prt8.Transparency = 0 

prt8.Size = Vector3.new(1,1,1) 

prt8.CFrame = Torso.CFrame 

local prt9 = Instance.new("Part") 

prt9.formFactor = 1 

prt9.Parent = modelzorz 

prt9.CanCollide = false 

prt9.BrickColor = BrickColor.new("Really black") 

prt9.Name = "Handle5" 

prt9.Transparency = 0 

prt9.Size = Vector3.new(1,1,1) 

prt9.CFrame = Torso.CFrame 

local prt10 = Instance.new("Part") 

prt10.formFactor = 1 

prt10.Parent = modelzorz 

prt10.CanCollide = false 

prt10.BrickColor = BrickColor.new("Really red") 

prt10.Name = "Handle6" 

prt10.Transparency = 0 

prt10.Size = Vector3.new(1,1,1) 

prt10.CFrame = Torso.CFrame 

local prt11 = Instance.new("Part") 

prt11.formFactor = 1 

prt11.Parent = modelzorz 

prt11.CanCollide = false 

prt11.BrickColor = BrickColor.new("Really red") 

prt11.Name = "Handle7" 

prt11.Transparency = 0 

prt11.Size = Vector3.new(1,1,1) 

prt11.CFrame = Torso.CFrame 

local prt12 = Instance.new("Part") 

prt12.formFactor = 1 

prt12.Parent = modelzorz 

prt12.CanCollide = false 

prt12.BrickColor = BrickColor.new("Dark grey") 

prt12.Name = "Handle8" 

prt12.Transparency = 0 

prt12.Size = Vector3.new(1,1,1) 

prt12.CFrame = Torso.CFrame 

local prt13 = Instance.new("Part") 

prt13.formFactor = 1 

prt13.Parent = modelzorz 

prt13.CanCollide = false 

prt13.BrickColor = BrickColor.new("Really black") 

prt13.Name = "Blade4" 

prt13.Reflectance = 0.4 

prt13.Transparency = 0 

prt13.Size = Vector3.new(1,1,1) 

prt13.CFrame = Torso.CFrame 

local prt14 = Instance.new("Part") 

prt14.formFactor = 1 

prt14.Parent = modelzorz 

prt14.CanCollide = false 

prt14.BrickColor = BrickColor.new("Really black") 

prt14.Name = "Blade5" 

prt14.Reflectance = 0.4 

prt14.Transparency = 0 

prt14.Size = Vector3.new(1,1,1) 

prt14.CFrame = Torso.CFrame 

local prt15 = Instance.new("Part") 

prt15.formFactor = 1 

prt15.Parent = modelzorz 

prt15.CanCollide = false 

prt15.BrickColor = BrickColor.new("Really black") 

prt15.Name = "Blade6" 

prt15.Reflectance = 0.4 

prt15.Transparency = 0 

prt15.Size = Vector3.new(1,1,1) 

prt15.CFrame = Torso.CFrame 

local prt16 = Instance.new("Part") 

prt16.formFactor = 1 

prt16.Parent = modelzorz 

prt16.CanCollide = false 

prt16.BrickColor = BrickColor.new("Really black") 

prt16.Name = "Blade7" 

prt16.Reflectance = 0.4 

prt16.Transparency = 0 

prt16.Size = Vector3.new(1,1,1) 

prt16.CFrame = Torso.CFrame 

modelzorz:BreakJoints() 

 

local msh1 = Instance.new("CylinderMesh") 

msh1.Parent = prt1 

msh1.Scale = Vector3.new(0.3,1,0.5) 

local msh2 = Instance.new("CylinderMesh") 

msh2.Parent = prt2 

msh2.Scale = Vector3.new(0.3,0.1,0.5) 

local msh3 = Instance.new("BlockMesh") 

msh3.Parent = prt3 

msh3.Scale = Vector3.new(0.4,0.3,0.4) 

local msh4 = Instance.new("BlockMesh") 

msh4.Parent = prt4 

msh4.Scale = Vector3.new(0.1,1,0.3) 

local msh5 = Instance.new("CylinderMesh") 

msh5.Parent = prt5 

msh5.Scale = Vector3.new(0.2,1,0.5) 

local msh6 = Instance.new("SpecialMesh") 

msh6.Parent = prt6 

msh6.MeshType = "Wedge" 

msh6.Scale = Vector3.new(0.1,0.7,0.3) 

local msh7 = Instance.new("CylinderMesh") 

msh7.Parent = prt7 

msh7.Scale = Vector3.new(0.2,0.1,0.5) 

local msh8 = Instance.new("CylinderMesh") 

msh8.Parent = prt8 

msh8.Scale = Vector3.new(0.2,0.1,0.5) 

local msh9 = Instance.new("CylinderMesh") 

msh9.Parent = prt9 

msh9.Scale = Vector3.new(0.2,0.1,0.5) 

local msh10 = Instance.new("CylinderMesh") 

msh10.Parent = prt10 

msh10.Scale = Vector3.new(0.2,0.1,0.5) 

local msh11 = Instance.new("CylinderMesh") 

msh11.Parent = prt11 

msh11.Scale = Vector3.new(0.2,0.1,0.5) 

local msh12 = Instance.new("BlockMesh") 

msh12.Parent = prt12 

msh12.Scale = Vector3.new(0.2,0.2,0.3) 

local msh13 = Instance.new("BlockMesh") 

msh13.Parent = prt13 

msh13.Scale = Vector3.new(0.1,0.5,0.3) 

local msh14 = Instance.new("BlockMesh") 

msh14.Parent = prt14 

msh14.Scale = Vector3.new(0.1,0.1,0.1) 

local msh15 = Instance.new("BlockMesh") 

msh15.Parent = prt15 

msh15.Scale = Vector3.new(0.1,0.3,0.3) 

local msh16 = Instance.new("SpecialMesh") 

msh16.Parent = prt16 

msh16.MeshType = "Wedge" 

msh16.Scale = Vector3.new(0.1,0.5,0.3) 

 

local wld1 = Instance.new("Weld") 

wld1.Parent = prt1 

wld1.Part0 = prt1 

wld1.Part1 = Torso 

wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.7,0,0) * CFrame.new(1,1,0.5) 

wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld2 = Instance.new("Weld") 

wld2.Parent = prt2

wld2.Part0 = prt2 

wld2.Part1 = prt1 

wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.66,0) 

wld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld3 = Instance.new("Weld") 

wld3.Parent = prt3

wld3.Part0 = prt3 

wld3.Part1 = prt1 

wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.78,0) 

wld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld4 = Instance.new("Weld") 

wld4.Parent = prt4

wld4.Part0 = prt4 

wld4.Part1 = prt3 

wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.35,0) 

wld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld5 = Instance.new("Weld") 

wld5.Parent = prt5

wld5.Part0 = prt5 

wld5.Part1 = prt3 

wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.77,0) 

wld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld6 = Instance.new("Weld") 

wld6.Parent = prt6

wld6.Part0 = prt6 

wld6.Part1 = prt4 

wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.61,0) 

wld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld7 = Instance.new("Weld") 

wld7.Parent = prt7

wld7.Part0 = prt7 

wld7.Part1 = Torso 

wld7.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) * CFrame.new(0.6,1,-0.6) 

wld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld8 = Instance.new("Weld") 

wld8.Parent = prt8

wld8.Part0 = prt8 

wld8.Part1 = prt7 

wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.12,0) 

wld8.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld9 = Instance.new("Weld") 

wld9.Parent = prt9

wld9.Part0 = prt9 

wld9.Part1 = prt7 

wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.12,0) 

wld9.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld10 = Instance.new("Weld") 

wld10.Parent = prt10

wld10.Part0 = prt10 

wld10.Part1 = prt7 

wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.24,0) 

wld10.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld11 = Instance.new("Weld") 

wld11.Parent = prt11

wld11.Part0 = prt11 

wld11.Part1 = prt7 

wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.24,0) 

wld11.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld12 = Instance.new("Weld") 

wld12.Parent = prt12

wld12.Part0 = prt12 

wld12.Part1 = prt7 

wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.4,0) 

wld12.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld13 = Instance.new("Weld") 

wld13.Parent = prt13

wld13.Part0 = prt13 

wld13.Part1 = prt12 

wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.42,0) 

wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld14 = Instance.new("Weld") 

wld14.Parent = prt14

wld14.Part0 = prt14 

wld14.Part1 = prt13 

wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.35,0.1) 

wld14.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld15 = Instance.new("Weld") 

wld15.Parent = prt15

wld15.Part0 = prt15 

wld15.Part1 = prt14 

wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.24,-0.1) 

wld15.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld16 = Instance.new("Weld") 

wld16.Parent = prt16

wld16.Part0 = prt16 

wld16.Part1 = prt15 

wld16.C0 = CFrame.fromEulerAnglesXYZ(3.14,0,0) * CFrame.new(0,0.48,0) 

wld16.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

 

local SlashSound = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 

--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 

SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 

SlashSound.Parent = modelzorz 

SlashSound.Volume = .7 

SlashSound.Pitch = 1 

local SlashSound = Instance.new("Sound") 

SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 

SlashSound.Parent = modelzorz 

SlashSound.Volume = .5 

SlashSound.Pitch = 1 

local SlashSound = Instance.new("Sound") 

SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 

SlashSound.Parent = modelzorz 

SlashSound.Volume = .7 

SlashSound.Pitch = 1 

local SlashSound = Instance.new("Sound") 

SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 

SlashSound.Parent = modelzorz 

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

Tool.Name = "Katana" 

script.Parent = Tool 

end 

Bin = script.Parent 

 

function hideanim() 

for i = 0,1,0.1 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5*i,0,0.4*i)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57*i,0) 

RW.C0 = CFrame.new(1.5-1.2*i,0.5-0.2*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,-1*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3.14*i,0) 

end

wld1.Part1 = Torso 

wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.7,0,0) * CFrame.new(1,1,0.5) 

wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

wld7.Part1 = Torso 

wld7.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) * CFrame.new(0.6,1,-0.6) 

wld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

for i = 0,1,0.1 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,0.4-0.4*i)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0.5-0.5*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57+1.57*i,0) 

RW.C0 = CFrame.new(1.5-1.2+1.2*i,0.5-0.2+0.2*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,-1+1*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3.14+3.14*i,0) 

end

end 

 

function equipanim() 

for i = 0,1,0.1 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5*i,0,0.4*i)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5-1.2*i,0.5-0.2*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,-1*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,3.14*i,0) 

end

wld1.Part1 = RightArm 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

for i = 0,1,0.2 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5-0.6*i,0,0.4-0.4*i)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5-1.2+1.2*i,0.5-0.2+0.2*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,-1+2.77*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,3.14+4.14*i,0) 

end

wait(0.2) 

for i = 0,1,0.1 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5-0.6+0.1*i,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57*i,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,1.77-1.77*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,7.28-7.28*i,0) 

end

wld7.Part1 = LeftArm 

wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

wld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

for i = 0,1,0.1 do 

wait() 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0.5-0.5*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57+1.57*i,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end

Torso.Neck.C0=necko

end 

 

function onehit() 

attack = true 

for i = 0,1,0.1 do 

wait() 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,1*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1*i,0) 

end 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 

ss(1) 

for i = 0,1,0.2 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3*i,0,0)

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2-1*i,0,1-2*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1,0) 

end 

con1:disconnect() 

con2:disconnect() 

attack = false 

end 

 

function twohit() 

attack = true 

for i = 0,1,0.1 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3-0.5*i,0,0)

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-1+1.5*i,0,1-2+1*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1-1*i,0) 

end 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 

ss(1.2) 

for i = 0,1,0.2 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3-0.5+0.5*i,0,0)

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-1+1.5-2*i,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

con1:disconnect() 

con2:disconnect() 

attack = false 

end 

 

function threehit() 

attack = true 

for i = 0,1,0.1 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3-0.3*i,0,0)

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5-0.5*i,0.5+0.4*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1.07*i,0,-1.57*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57*i,0) 

end 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 

ss(0.9) 

for i = 0,1,0.2 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5+0.4-0.4*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1.07,0,-1.57+3.14*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57,0) 

end 

con1:disconnect() 

con2:disconnect() 

attack = false 

end 

 

function fourhit() 

attack = true 

gairo.Parent = Head

gairo.cframe = Head.CFrame 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 

ss(0.6) 

for i = 0,1,0.2 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.4*i)

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90),0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,-0.5*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.2*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57+1.57*i,0) 

end 

wait(0.1) 

con1:disconnect() 

con2:disconnect() 

attack = false 

end 

 

function fivehit() 

attack = true 

for i = 0,1,0.1 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.4+0.8*i)

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,-0.5+1.5*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.07*i,0,0.37-0.37*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

con1=prt14.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 

con2=prt15.Touched:connect(function(hit) Damagefunc1(hit,25,10) end) 

con3=prt16.Touched:connect(function(hit) Damagefunc1(hit,25,10) end) 

ss(1.4) 

for i = 0,1,0.2 do 

wait() 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.4+0.8-0.4*i)

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90),0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,0,1-2.57*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

wait(0.2) 

con1:disconnect() 

con2:disconnect() 

con3:disconnect() 

gairo.Parent = nil 

Torso.Neck.C0=necko

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

attack = false 

end 

 

function WindCharge() 

if mana >= 20 then 

attack = true 

gairo.Parent = Head

gairo.cframe = Head.CFrame 

efect() 

for i = 0,1,0.1 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,1*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

mana = mana - 0 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 

ss(1) 

lightning = true 

coroutine.resume(coroutine.create(function()

Stun2(prt4,10,25,10) 

--Stun2(prt4,10,25,10) 

end)) 

for i = 0,1,0.2 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.5*i)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-1.43*i,0,1-0.5*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

wait() 

local vel = Instance.new("BodyVelocity")

vel.Parent = Player.Character.Torso

vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1

vel.velocity = Player.Character.Head.CFrame.lookVector * 100 

wait(0.5) 

vel.Parent = nil 

lightning = false 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko

con1:disconnect() 

con2:disconnect() 

gairo.Parent = nil 

attack = false 

end 

end 

 

function Restore() 

attack = true 

for i = 0,1,0.1 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1*i,0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.4*i,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5*i,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

local lol = Instance.new("Part") 

lol.Parent = modelzorz 

lol.Shape = "Ball" 

lol.Position = Torso.Position 

lol.Anchored = false 

lol.Transparency = 0.5 

lol.CanCollide = false 

lol.Size = Vector3.new(1,1,1) 

lol.BrickColor = BrickColor.new("Really red") 

lol.CFrame = Torso.CFrame 

local lolmesh = Instance.new("SpecialMesh") 

lolmesh.Parent = lol 

lolmesh.Scale = Vector3.new(0.5,0.5,0.5) 

lolmesh.MeshType = "Sphere"

local lolweld = Instance.new("Weld") 

lolweld.Parent = lol 

lolweld.Part0 = lol 

lolweld.Part1 = prt6 

wait(0)  

coroutine.resume(coroutine.create(function()

for i = 0, 1, 0.05 do 

wait(0)  

lolmesh.Scale = lolmesh.Scale + Vector3.new(0.15,0.15,0.15) 

end 

end)) 

while restoring == true do 

wait(0.15) 

lolweld.C0 = CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 

MMMAGIC(lol,2,2,2,0,0,0,BrickColor.new("Really red")) 

DifferentEffect() 

if mana >= 400 then 

mana = 400 

else 

Character.Humanoid.Health = Character.Humanoid.Health + 0.05 

mana = mana + 5 

end 

end 

for i = 0, 1, 0.05 do 

wait(0) 

lol.Transparency = lol.Transparency + 0.03 

lolmesh.Scale = lolmesh.Scale - Vector3.new(0.2,0.2,0.2) 

end 

for i = 0,1,0.1 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1-1*i,0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.4+0.4*i,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-2.5*i,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

lol.Parent = nil 

attack = false 

end 

 

function JetStream() 

if mana >= 1 then 

attack = true 

charging = true 

for i = 0,1,0.1 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+0.3*i,0,0) * CFrame.new(0,1,0) 

wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,-0.5*i) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.4*i,0,0.3*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5-0.8*i,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(1.2*i,0,-1.2*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1*i,0) 

end 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,35,20) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,45,20) end) 

local vel = Instance.new("BodyVelocity")

vel.Parent = Player.Character.Torso

vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1

vel.velocity = Player.Character.Head.CFrame.lookVector * 100 

while charging == true and mana >= 1 do 

wait(0) 

mana = mana - 0 

vel.velocity = Player.Character.Head.CFrame.lookVector * 100 

MMMAGIC(prt2,1,1,1,0,0,0,BrickColor.new("Really red")) 

MOREMAGIX(prt2,0,1,1,1,BrickColor.new("Really red")) 

end 

wait(0.1) 

con1:disconnect() 

con2:disconnect() 

vel.Parent = nil 

gairo.Parent = nil 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)

attack = false 

end 

end 

 

function Stab() 

attack = true 

gairo.Parent = Head

gairo.cframe = Head.CFrame 

ss(1.2) 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,20,20) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,30,20) end) 

for i = 0,1,0.2 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.3*i)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.2*i,0,-0.2*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,0.5*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

wait(0.1) 

con1:disconnect() 

con2:disconnect() 

for i = 0,1,0.2 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.3+0.3*i)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.2+0.2*i,0,-0.2+0.2*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0.5-0.5*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

gairo.Parent = nil 

Torso.Neck.C0=necko

attack = false 

end 

 

function WindKatanaWheelSpin() 

if mana >= 20 then 

attack = true 

for i = 0,1,0.1 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,math.rad(90)*i,0) * CFrame.new(0,1,0) 

wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(90)*i,math.rad(90)*i,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

mana = mana - 0 

lightning = true 

coroutine.resume(coroutine.create(function()

Stun2(prt6,1,1,1) 

end)) 

con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,30,20) end) 

con2=prt5.Touched:connect(function(hit) Damagefunc1(hit,40,20) end) 

con3=prt14.Touched:connect(function(hit) Damagefunc1(hit,25,10) end) 

con4=prt15.Touched:connect(function(hit) Damagefunc1(hit,35,10) end) 

con5=prt16.Touched:connect(function(hit) Damagefunc1(hit,35,10) end) 

cf = Head.CFrame 

gairo.Parent = Head

gairo.cframe = Head.CFrame * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) 

for i = 0,1,0.03 do 

wait() 

ss(1.1) 

gairo.cframe = gairo.cframe * CFrame.fromEulerAnglesXYZ(0,0.8,0) 

end 

gairo.cframe = cf 

con1:disconnect() 

con2:disconnect() 

con3:disconnect() 

con4:disconnect() 

con5:disconnect() 

lightning = false 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90),math.rad(90),0) * CFrame.new(0,1,0) 

wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(90),math.rad(90),0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57-0.5) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57+0.5) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

wait(3) 

gairo.Parent = nil 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

attack = false 

end 

end 

 

function SlashShockwave() 

if mana >= 20 then 

attack = true 

for i = 0,1,0.1 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.57*i,0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3*i,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

wait(0.1) 

ss(1) 

mana = mana - 20 

local slash = Instance.new("Part") 

slash.Parent = modelzorz 

slash.Position = Torso.Position 

slash.Anchored = true 

slash.Transparency = 0.2 

slash.CanCollide = false 

slash.Size = Vector3.new(1,1,1) 

slash.BrickColor = BrickColor.new("Really red") 

slash.CFrame = Torso.CFrame * CFrame.new(1.5,-3,-4) 

local testbrick = Instance.new("Part") 

testbrick.Parent = modelzorz 

testbrick.Anchored = true 

testbrick.Transparency = 1 

testbrick.CFrame = Torso.CFrame * CFrame.new(1.5,0,-4) 

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

        Damagefunc1(head,20,20)

        end 

        end 

        end 

    end 

testbrick.Parent = nil 

end)) 

local lolmesh = Instance.new("SpecialMesh") 

lolmesh.Parent = slash 

lolmesh.Scale = Vector3.new(0.6,1,0.6) 

lolmesh.MeshType = "Sphere"

coroutine.resume(coroutine.create(function(Part,Mesh)

for i = 0, 1, 0.2 do 

wait(0)  

Mesh.Scale = Mesh.Scale + Vector3.new(0,0.7,0) 

end 

wait(0.5) 

for i = 0,1,0.1 do 

wait() 

Part.Transparency = Part.Transparency + 0.1 

end 

Part.Parent = nil 

end),slash,lolmesh) 

coroutine.resume(coroutine.create(function() 

CF = -4 

scale = 0.6 

scale2 = 0.7 

for i = 0,10 do 

wait(0.1) 

CF = CF * 1.2 

scale = scale + 0.1 

scale2 = scale2 + 0.2 

ss(math.random()+math.random()) 

local slash = Instance.new("Part") 

slash.Parent = modelzorz 

slash.Position = Torso.Position 

slash.Anchored = true 

slash.Transparency = 0.2 

slash.CanCollide = false 

slash.Size = Vector3.new(1,1,1) 

slash.BrickColor = BrickColor.new("Really red") 

slash.CFrame = Torso.CFrame * CFrame.new(1+math.random(),-3,CF)  

local testbrick = Instance.new("Part") 

testbrick.Parent = modelzorz 

testbrick.Anchored = true 

testbrick.Transparency = 1 

testbrick.CFrame = Torso.CFrame * CFrame.new(1+math.random(),0,CF) 

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

        Damagefunc1(head,20,20)

        end 

        end 

        end 

    end 

testbrick.Parent = nil 

end)) 

local lolmesh = Instance.new("SpecialMesh") 

lolmesh.Parent = slash 

lolmesh.Scale = Vector3.new(scale,1,scale) 

lolmesh.MeshType = "Sphere"

coroutine.resume(coroutine.create(function(Part,Mesh)

Part.CFrame = Part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 

for i = 0, 1, 0.2 do 

wait(0)  

Mesh.Scale = Mesh.Scale + Vector3.new(0,scale2,0) 

end 

wait(0.5) 

for i = 0,1,0.1 do 

wait() 

Part.Transparency = Part.Transparency + 0.1 

end 

Part.Parent = nil 

end),slash,lolmesh) 

end 

end)) 

for i = 0,1,0.2 do 

wait() 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.57-1.57*i,0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3-0.6*i,0,0)

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+2*i,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

attack = false 

end 

end 

 

function efect() 

local lol = Instance.new("Part") 

lol.Parent = Character 

lol.Shape = "Ball" 

lol.Position = Torso.Position 

lol.Anchored = true 

lol.CanCollide = false 

lol.Size = Vector3.new(1,1,1) 

lol.BrickColor = BrickColor.new("Really red") 

lol.Reflectance = 1 

lol.CFrame = Torso.CFrame 

local lolmesh = Instance.new("SpecialMesh") 

lolmesh.Parent = lol 

lolmesh.Scale = Vector3.new(0.5,0.5,0.5) 

lolmesh.MeshType = "Sphere"

wait(0)  

coroutine.resume(coroutine.create(function()

for i = 0, 1, 0.05 do 

wait(0)  

lolmesh.Scale = lolmesh.Scale + Vector3.new(9,9,9) 

lol.Transparency = lol.Transparency + 0.20 

lol.Reflectance = lol.Reflectance - 0.25 

lol.CFrame = Torso.CFrame 

end 

lol:Remove() 

end)) 

end 

 

Stun2=function(Feh,x,y,z)

coroutine.resume(coroutine.create(function(part)

--[[        if part.Parent:FindFirstChild("Torso")==nil then

            return

        end]]

        Torsoh2=part

        End2=Torsoh2.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)

        ST2=Torsoh2.Position

--[[        p=Instance.new("BodyPosition")

        p.P=3000

        p.D=100

        p.maxForce=Vector3.new(math.huge,0,math.huge)

        p.position=Torsoh2.Position

        p.Parent=Torsoh2]]

        while part.Parent ~= nil and lightning == true do 

--            f1:Play()

--            p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)

            Start2=End2

            End2=Torsoh2.CFrame*CFrame.new(math.random(-x,x)/10,math.random(-y,y)/10,math.random(-z,z)/10)

            e=Instance.new("Part")

            e.TopSurface=0

            e.BottomSurface=0

            e.CanCollide=false

            e.Anchored=true

            e.formFactor="Symmetric"

            e.Size=Vector3.new(1,1,1)

            Look2=(End2.p-Start2.p).unit

            m=Instance.new("BlockMesh")

            m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)

            m.Parent=e

            e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)

            e.Reflectance=.3

            e.Name="Zap"

            e.BrickColor=BrickColor.new("Really red")

            e.Parent=part.Parent

            coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)

            wait()

        end

        wait(.25)

--        p.Parent=nil

end),Feh) 

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

    p.BrickColor=BrickColor.new("Really red") 

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

--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then

            return

        end]]

            c=Instance.new("ObjectValue")

            c.Name="creator"

            c.Value=game.Players.LocalPlayer

            c.Parent=h

            game:GetService("Debris"):AddItem(c,.5)

--            print(c.Value)

        if math.random(0,99)+math.random()<=10 then

            CRIT=true

            Damage=Damage*1.5

--[[            Knockback=Knockback*2

            r=Instance.new("BodyAngularVelocity")

            r.P=3000

            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000

            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))

            r.Parent=hit.Parent.Torso]]

            critsound(2) 

    

        end

        Damage=Damage+math.random(0,10)

--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))

        h:TakeDamage(Damage)

        showDamage(hit.Parent,Damage,.5)

        vp=Instance.new("BodyVelocity")

        vp.P=500

        vp.maxForce=Vector3.new(math.huge,0,math.huge)

--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback

        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05

        if Knockback>0 then

            vp.Parent=hit.Parent.Torso

        end

        game:GetService("Debris"):AddItem(vp,.25)

--[[        r=Instance.new("BodyAngularVelocity")

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

hold = true 

if combo == 0 then 

combo = 1 

onehit() 

coroutine.resume(coroutine.create(function()

wait(0.5) 

if attack == false then 

combo = 0 

gairo.Parent = nil 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko

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

gairo.Parent = nil 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko

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

gairo.Parent = nil 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

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

gairo.Parent = nil 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

end)) 

elseif combo == 4 then 

combo = 5 

fivehit() 

combo = 0 

coroutine.resume(coroutine.create(function()

wait(0.5) 

if attack == false then 

combo = 0 

gairo.Parent = nil 

wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 

Torso.Neck.C0=necko

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

end)) 

end 

--[[onehit() 

twohit() 

threehit() 

fourhit() 

fivehit() ]]

end 

 

function ob1u(mouse) 

hold = false 

end 

 

buttonhold = false 

 

function key(key) 

if attack == true then return end 

if key == "f" then 

WindCharge() 

end 

if key == "g" then 

restoring = true 

Restore() 

end 

if key == "z" then 

JetStream() 

end 

if key == "x" then 

Stab() 

end 

if key == "r" then 

WindKatanaWheelSpin() 

end 

if key == "t" then 

SlashShockwave() 

end 

end 

 

function key2(key) 

if key == "g"then 

restoring = false 

end 

if key == "z" then 

charging = false 

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

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

    else 

walking = false 

for i = 0,1,0.1 do 

wait() 

LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

end 

 

    end 

end 

Character.Humanoid.Running:connect(onRunning) 

 

while true do 

wait(0)  

fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)

fentext.Text = "Mana("..mana..")" 

fentext3.BackgroundColor3 = Color3.new(1,1,1) 

end 

 

-- lego This acts as a chat filter. Don't ask why I do it. I just do >.> 

--[[ 

Copyrighted (C) Fenrier/DrFlame 2011 

This script is copyrighted for Fenrier. Any use of this script is breaking 

this copyright. 

All Rights Reserved. 

]] 