--[[LEAKED!!]]--

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
mana = 999999999
HeroBar = 999999999
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
mouse = nil
mode = "Normal"
idle = true
idleanim = false
Imbued = false
Resting = false
Sleeping = false
Riding = false
spikecon = nil
heromode = false
local Color = Torso.BrickColor
HealBuff = false
WalkBuff = false
RageBuff = false
Healing = true
RAEG = false
spearwave = false
Bouncing = false
cloning = 0
--player
player = nil
--save shoulders
RSH, LSH = nil, nil
--save hips
RH, LH = nil, nil
--welds
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW2, LW2 = Instance.new("Weld"), Instance.new("Weld")
--what anim
anim = "none"
 
if Character:findFirstChild("Charibassa",true) ~= nil then
Character:findFirstChild("Charibassa",true).Parent = nil
end
if Character:findFirstChild("Chariot",true) ~= nil then
Character:findFirstChild("Chariot",true).Parent = nil
end
if Character:findFirstChild("Weapon",true) ~= nil then
Character:findFirstChild("Weapon",true).Parent = nil
end
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil
end
 
 
local modelzorz = Instance.new("Model")
modelzorz.Name = "Charibassa"
modelzorz.Parent = Character
 
local prt1 = Instance.new("Part")
prt1.formFactor = 1
prt1.Parent = modelzorz
prt1.CanCollide = true
prt1.BrickColor = BrickColor.new("Black")
prt1.Name = "Handle1"
prt1.Size = Vector3.new(1,3,1)
prt1.Position = Torso.Position
local prt2 = Instance.new("Part")
prt2.formFactor = 1
prt2.Parent = modelzorz
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Black")
prt2.Name = "Handle2"
prt2.Size = Vector3.new(1,2,1)
prt2.Position = Torso.Position
local prt3 = Instance.new("Part")
prt3.formFactor = 1
prt3.Parent = modelzorz
prt3.CanCollide = false
prt3.BrickColor = Color
prt3.Name = "Handle3"
prt3.Size = Vector3.new(1,1,1)
prt3.Position = Torso.Position
local prt4 = Instance.new("Part")
prt4.formFactor = 1
prt4.Parent = modelzorz
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("Black")
prt4.Name = "Handle4"
prt4.Size = Vector3.new(1,3,1)
prt4.Position = Torso.Position
local prt5 = Instance.new("Part")
prt5.formFactor = 1
prt5.Parent = modelzorz
prt5.CanCollide = false
prt5.BrickColor = Color
prt5.Name = "Handle5"
prt5.Size = Vector3.new(1,1,1)
prt5.Position = Torso.Position
local prt6 = Instance.new("Part")
prt6.formFactor = 1
prt6.Parent = modelzorz
prt6.CanCollide = false
prt6.BrickColor = Color
prt6.Name = "Handle6"
prt6.Size = Vector3.new(1,1,1)
prt6.Position = Torso.Position
local prt7 = Instance.new("Part")
prt7.formFactor = 1
prt7.Parent = modelzorz
prt7.CanCollide = false
prt7.BrickColor = Color
prt7.Name = "Handle7"
prt7.Size = Vector3.new(1,1,1)
prt7.Position = Torso.Position
local prt8 = Instance.new("Part")
prt8.formFactor = 1
prt8.Parent = modelzorz
prt8.CanCollide = false
prt8.BrickColor = Color
prt8.Name = "Handle8"
prt8.Size = Vector3.new(1,1,1)
prt8.Position = Torso.Position
local prt9 = Instance.new("Part")
prt9.formFactor = 1
prt9.Parent = modelzorz
prt9.CanCollide = false
prt9.BrickColor = Color
prt9.Name = "Handle9"
prt9.Size = Vector3.new(1,1,1)
prt9.Position = Torso.Position
local prt10 = Instance.new("Part")
prt10.formFactor = 1
prt10.Parent = modelzorz
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Black")
prt10.Name = "Blade1"
prt10.Size = Vector3.new(1,1,1)
prt10.Position = Torso.Position
local prt11 = Instance.new("Part")
prt11.formFactor = 1
prt11.Parent = modelzorz
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Black")
prt11.Name = "Blade2"
prt11.Size = Vector3.new(1,1,1)
prt11.Position = Torso.Position
local prt12 = Instance.new("Part")
prt12.formFactor = 1
prt12.Parent = modelzorz
prt12.CanCollide = false
prt12.BrickColor = BrickColor.new("Black")
prt12.Name = "Blade3"
prt12.Size = Vector3.new(1,1,1)
prt12.Position = Torso.Position
local prt13 = Instance.new("Part")
prt13.formFactor = 1
prt13.Parent = modelzorz
prt13.CanCollide = false
prt13.BrickColor = BrickColor.new("Black")
prt13.Name = "Blade4"
prt13.Size = Vector3.new(1,1,1)
prt13.Position = Torso.Position
local prt14 = Instance.new("Part")
prt14.formFactor = 1
prt14.Parent = modelzorz
prt14.CanCollide = false
prt14.BrickColor = BrickColor.new("Black")
prt14.Name = "Blade5"
prt14.Size = Vector3.new(1,1,1)
prt14.Position = Torso.Position
local prt15 = Instance.new("Part")
prt15.formFactor = 1
prt15.Parent = modelzorz
prt15.CanCollide = false
prt15.BrickColor = BrickColor.new("Black")
prt15.Name = "Blade6"
prt15.Size = Vector3.new(1,1,1)
prt15.Position = Torso.Position
local prt16 = Instance.new("Part")
prt16.formFactor = 1
prt16.Parent = modelzorz
prt16.CanCollide = false
prt16.BrickColor = BrickColor.new("Black")
prt16.Name = "Blade7"
prt16.Size = Vector3.new(1,1,1)
prt16.Position = Torso.Position
local prt17 = Instance.new("Part")
prt17.formFactor = 1
prt17.Parent = modelzorz
prt17.CanCollide = false
prt17.BrickColor = BrickColor.new("Black")
prt17.Name = "Blade8"
prt17.Size = Vector3.new(1,1,1)
prt17.Position = Torso.Position
local prt18 = Instance.new("Part")
prt18.formFactor = 1
prt18.Parent = modelzorz
prt18.CanCollide = false
prt18.BrickColor = BrickColor.new("Black")
prt18.Name = "Blade9"
prt18.Size = Vector3.new(1,1,1)
prt18.Position = Torso.Position
local prt19 = Instance.new("Part")
prt19.formFactor = 1
prt19.Parent = modelzorz
prt19.CanCollide = false
prt19.BrickColor = BrickColor.new("Black")
prt19.Name = "Blade10"
prt19.Size = Vector3.new(1,1,1)
prt19.Position = Torso.Position
local prt20 = Instance.new("Part")
prt20.formFactor = 1
prt20.Parent = modelzorz
prt20.CanCollide = false
prt20.BrickColor = BrickColor.new("Black")
prt20.Name = "Blade11"
prt20.Size = Vector3.new(1,1,1)
prt20.Position = Torso.Position
local prt21 = Instance.new("Part")
prt21.formFactor = 1
prt21.Parent = modelzorz
prt21.CanCollide = false
prt21.BrickColor = BrickColor.new("Black")
prt21.Name = "Blade12"
prt21.Size = Vector3.new(1,1,1)
prt21.Position = Torso.Position
local prt22 = Instance.new("Part")
prt22.formFactor = 1
prt22.Parent = modelzorz
prt22.CanCollide = false
prt22.BrickColor = BrickColor.new("Black")
prt22.Name = "Blade13"
prt22.Size = Vector3.new(1,1,1)
prt22.Position = Torso.Position
local prt23 = Instance.new("Part")
prt23.formFactor = 1
prt23.Parent = modelzorz
prt23.CanCollide = false
prt23.BrickColor = BrickColor.new("Black")
prt23.Name = "Blade14"
prt23.Size = Vector3.new(1,1,1)
prt23.Position = Torso.Position
local prt24 = Instance.new("Part")
prt24.formFactor = 1
prt24.Parent = modelzorz
prt24.CanCollide = false
prt24.BrickColor = BrickColor.new("Black")
prt24.Name = "Blade15"
prt24.Size = Vector3.new(1,1,1)
prt24.Position = Torso.Position
local prt25 = Instance.new("Part")
prt25.formFactor = 1
prt25.Parent = modelzorz
prt25.CanCollide = false
prt25.BrickColor = Color
prt25.Name = "Blade16"
prt25.Size = Vector3.new(1,1,1)
prt25.Position = Torso.Position
local prt26 = Instance.new("Part")
prt26.formFactor = 1
prt26.Parent = modelzorz
prt26.CanCollide = false
prt26.BrickColor = BrickColor.new("Black")
prt26.Name = "Blade17"
prt26.Size = Vector3.new(1,1,1)
prt26.Position = Torso.Position
local prt27 = Instance.new("Part")
prt27.formFactor = 1
prt27.Parent = modelzorz
prt27.CanCollide = false
prt27.BrickColor = BrickColor.new("Black")
prt27.Name = "Blade18"
prt27.Reflectance = 0.2
prt27.Size = Vector3.new(1,1,2)
prt27.Position = Torso.Position
local prt28 = Instance.new("Part")
prt28.formFactor = 1
prt28.Parent = modelzorz
prt28.CanCollide = false
prt28.BrickColor = BrickColor.new("Black")
prt28.Name = "Blade19"
prt28.Reflectance = 0.2
prt28.Size = Vector3.new(1,1,2)
prt28.Position = Torso.Position
modelzorz:BreakJoints()
--local f = Instance.new("ForceField")
--f.Parent = prt27
 
local msh1 = Instance.new("CylinderMesh")
msh1.Parent = prt1
msh1.Scale = Vector3.new(0.3,1,0.3)
local msh2 = Instance.new("CylinderMesh")
msh2.Parent = prt2
msh2.Scale = Vector3.new(0.2,1,0.2)
local msh3 = Instance.new("SpecialMesh")
msh3.Parent = prt3
msh3.Scale = Vector3.new(0.3,0.3,0.3)
local msh4 = Instance.new("CylinderMesh")
msh4.Parent = prt4
msh4.Scale = Vector3.new(0.4,0.8,0.4)
local msh5 = Instance.new("CylinderMesh")
msh5.Parent = prt5
msh5.Scale = Vector3.new(0.45,0.1,0.45)
local msh6 = Instance.new("CylinderMesh")
msh6.Parent = prt6
msh6.Scale = Vector3.new(0.45,0.1,0.45)
local msh7 = Instance.new("CylinderMesh")
msh7.Parent = prt7
msh7.Scale = Vector3.new(0.45,0.1,0.45)
local msh8 = Instance.new("CylinderMesh")
msh8.Parent = prt8
msh8.Scale = Vector3.new(0.3,0.4,0.3)
local msh9 = Instance.new("SpecialMesh")
msh9.Parent = prt9
msh9.MeshType = "Sphere"
msh9.Scale = Vector3.new(0.5,0.5,0.5)
local msh10 = Instance.new("BlockMesh")
msh10.Parent = prt10
msh10.Scale = Vector3.new(0.2,0.7,0.2)
local msh11 = Instance.new("BlockMesh")
msh11.Parent = prt11
msh11.Scale = Vector3.new(0.2,0.8,0.2)
local msh12 = Instance.new("BlockMesh")
msh12.Parent = prt12
msh12.Scale = Vector3.new(0.2,0.9,0.2)
local msh13 = Instance.new("BlockMesh")
msh13.Parent = prt13
msh13.Scale = Vector3.new(0.2,1,0.2)
local msh14 = Instance.new("BlockMesh")
msh14.Parent = prt14
msh14.Scale = Vector3.new(0.2,1.1,0.2)
local msh15 = Instance.new("BlockMesh")
msh15.Parent = prt15
msh15.Scale = Vector3.new(0.2,1.2,0.2)
local msh16 = Instance.new("BlockMesh")
msh16.Parent = prt16
msh16.Scale = Vector3.new(0.2,1.3,0.2)
local msh17 = Instance.new("BlockMesh")
msh17.Parent = prt17
msh17.Scale = Vector3.new(0.2,0.7,0.2)
local msh18 = Instance.new("BlockMesh")
msh18.Parent = prt18
msh18.Scale = Vector3.new(0.2,0.8,0.2)
local msh19 = Instance.new("BlockMesh")
msh19.Parent = prt19
msh19.Scale = Vector3.new(0.2,0.9,0.2)
local msh20 = Instance.new("BlockMesh")
msh20.Parent = prt20
msh20.Scale = Vector3.new(0.2,1,0.2)
local msh21 = Instance.new("BlockMesh")
msh21.Parent = prt21
msh21.Scale = Vector3.new(0.2,1.1,0.2)
local msh22 = Instance.new("BlockMesh")
msh22.Parent = prt22
msh22.Scale = Vector3.new(0.2,1.2,0.2)
local msh23 = Instance.new("BlockMesh")
msh23.Parent = prt23
msh23.Scale = Vector3.new(0.2,1.3,0.2)
local msh24 = Instance.new("SpecialMesh")
msh24.Parent = prt24
msh24.MeshType = "FileMesh"
msh24.MeshId = "http://www.roblox.com/asset/?id=1778999"
msh24.Scale = Vector3.new(0.4,0.3,0.3)
local msh25 = Instance.new("CylinderMesh")
msh25.Parent = prt25
msh25.Scale = Vector3.new(0.8,0.4,0.8)
local msh26 = Instance.new("CylinderMesh")
msh26.Parent = prt26
msh26.Scale = Vector3.new(0.5,0.5,0.5)
local msh27 = Instance.new("SpecialMesh")
msh27.Parent = prt27
msh27.MeshType = "Wedge"
msh27.Scale = Vector3.new(0.3,0.5,1)
local msh28 = Instance.new("SpecialMesh")
msh28.Parent = prt28
msh28.MeshType = "Wedge"
msh28.Scale = Vector3.new(0.3,0.5,1)
 
local wld1 = Instance.new("Weld")
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = Torso
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,2.3) * CFrame.new(1,-1,-0.7)
local wld2 = Instance.new("Weld")
wld2.Parent = prt2
wld2.Part0 = prt2
wld2.Part1 = prt1
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0)
local wld3 = Instance.new("Weld")
wld3.Parent = prt3
wld3.Part0 = prt3
wld3.Part1 = prt2
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.9,0)
local wld4 = Instance.new("Weld")
wld4.Parent = prt4
wld4.Part0 = prt4
wld4.Part1 = prt1
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-2,0)
local wld5 = Instance.new("Weld")
wld5.Parent = prt5
wld5.Part0 = prt5
wld5.Part1 = prt4
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0)
local wld6 = Instance.new("Weld")
wld6.Parent = prt6
wld6.Part0 = prt6
wld6.Part1 = prt4
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0)
local wld7 = Instance.new("Weld")
wld7.Parent = prt7
wld7.Part0 = prt7
wld7.Part1 = prt4
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld8 = Instance.new("Weld")
wld8.Parent = prt8
wld8.Part0 = prt8
wld8.Part1 = prt4
wld8.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,-0.6,0)
local wld9 = Instance.new("Weld")
wld9.Parent = prt9
wld9.Part0 = prt9
wld9.Part1 = prt4
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.1,0)
local wld10 = Instance.new("Weld")
wld10.Parent = prt10
wld10.Part0 = prt10
wld10.Part1 = prt9
wld10.C0 = CFrame.new(0.2,0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0.3)
local wld11 = Instance.new("Weld")
wld11.Parent = prt11
wld11.Part0 = prt11
wld11.Part1 = prt9
wld11.C0 = CFrame.new(0.3,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5)
local wld12 = Instance.new("Weld")
wld12.Parent = prt12
wld12.Part0 = prt12
wld12.Part1 = prt9
wld12.C0 = CFrame.new(0.4,0.6,0) * CFrame.fromEulerAnglesXYZ(0,0,0.7)
local wld13 = Instance.new("Weld")
wld13.Parent = prt13
wld13.Part0 = prt13
wld13.Part1 = prt9
wld13.C0 = CFrame.new(0.5,0.7,0) * CFrame.fromEulerAnglesXYZ(0,0,0.9)
local wld14 = Instance.new("Weld")
wld14.Parent = prt14
wld14.Part0 = prt14
wld14.Part1 = prt9
wld14.C0 = CFrame.new(0.6,0.85,0) * CFrame.fromEulerAnglesXYZ(0,0,1.1)
local wld15 = Instance.new("Weld")
wld15.Parent = prt15
wld15.Part0 = prt15
wld15.Part1 = prt9
wld15.C0 = CFrame.new(0.7,1.05,0) * CFrame.fromEulerAnglesXYZ(0,0,1.3)
local wld16 = Instance.new("Weld")
wld16.Parent = prt16
wld16.Part0 = prt16
wld16.Part1 = prt9
wld16.C0 = CFrame.new(0.8,1.25,0) * CFrame.fromEulerAnglesXYZ(0,0,1.5)
local wld17 = Instance.new("Weld")
wld17.Parent = prt17
wld17.Part0 = prt17
wld17.Part1 = prt9
wld17.C0 = CFrame.new(-0.2,0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)
local wld18 = Instance.new("Weld")
wld18.Parent = prt18
wld18.Part0 = prt18
wld18.Part1 = prt9
wld18.C0 = CFrame.new(-0.3,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5)
local wld19 = Instance.new("Weld")
wld19.Parent = prt19
wld19.Part0 = prt19
wld19.Part1 = prt9
wld19.C0 = CFrame.new(-0.4,0.6,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.7)
local wld20 = Instance.new("Weld")
wld20.Parent = prt20
wld20.Part0 = prt20
wld20.Part1 = prt9
wld20.C0 = CFrame.new(-0.5,0.7,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.9)
local wld21 = Instance.new("Weld")
wld21.Parent = prt21
wld21.Part0 = prt21
wld21.Part1 = prt9
wld21.C0 = CFrame.new(-0.6,0.85,0) * CFrame.fromEulerAnglesXYZ(0,0,-1.1)
local wld22 = Instance.new("Weld")
wld22.Parent = prt22
wld22.Part0 = prt22
wld22.Part1 = prt9
wld22.C0 = CFrame.new(-0.7,1.05,0) * CFrame.fromEulerAnglesXYZ(0,0,-1.3)
local wld23 = Instance.new("Weld")
wld23.Parent = prt23
wld23.Part0 = prt23
wld23.Part1 = prt9
wld23.C0 = CFrame.new(-0.8,1.25,0) * CFrame.fromEulerAnglesXYZ(0,0,-1.5)
local wld24 = Instance.new("Weld")
wld24.Parent = prt24
wld24.Part0 = prt24
wld24.Part1 = prt9
wld24.C0 = CFrame.fromEulerAnglesXYZ(3.14,0,0) * CFrame.new(0,-0.3,0)
local wld25 = Instance.new("Weld")
wld25.Parent = prt25
wld25.Part0 = prt25
wld25.Part1 = prt24
wld25.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.55,0)
local wld26 = Instance.new("Weld")
wld26.Parent = prt26
wld26.Part0 = prt26
wld26.Part1 = prt25
wld26.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld27 = Instance.new("Weld")
wld27.Parent = prt27
wld27.Part0 = prt27
wld27.Part1 = prt24
wld27.C0 = CFrame.fromEulerAnglesXYZ(1.57,1.57,0) * CFrame.new(-0.3,1.6,0)
local wld28 = Instance.new("Weld")
wld28.Parent = prt28
wld28.Part0 = prt28
wld28.Part1 = prt24
wld28.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) * CFrame.new(0.3,1.6,0)
 
local mien = Instance.new("Model")
mien.Parent = Character
mien.Name = "Chariot "
local chariot = Instance.new("Model")
chariot.Name = "Chariot"
chariot.Parent = nil
 
local char1 = Instance.new("Part")
char1.formFactor = 1
char1.Parent = chariot
char1.CanCollide = true
char1.BrickColor = BrickColor.new("Black")
char1.Name = "ChariotPart1"
char1.Size = Vector3.new(3,1,5)
char1.Position = Torso.Position
local char2 = Instance.new("Part")
char2.formFactor = 1
char2.Parent = chariot
char2.CanCollide = true
char2.BrickColor = BrickColor.new("Black")
char2.Name = "ChariotPart2"
char2.Size = Vector3.new(1,1,1)
char2.Position = Torso.Position
local char3 = Instance.new("Part")
char3.formFactor = 1
char3.Parent = chariot
char3.CanCollide = true
char3.BrickColor = BrickColor.new("Black")
char3.Name = "ChariotPart3"
char3.Size = Vector3.new(2,2,2)
char3.Position = Torso.Position
local char4 = Instance.new("Part")
char4.formFactor = 1
char4.Parent = chariot
char4.CanCollide = true
char4.BrickColor = BrickColor.new("Black")
char4.Name = "ChariotPart4"
char4.Size = Vector3.new(3,3,3)
char4.Position = Torso.Position
local char5 = Instance.new("Part")
char5.formFactor = 1
char5.Parent = chariot
char5.CanCollide = true
char5.BrickColor = BrickColor.new("Black")
char5.Name = "ChariotPart5"
char5.Size = Vector3.new(3,3,3)
char5.Position = Torso.Position
local char6 = Instance.new("Part")
char6.formFactor = 1
char6.Parent = chariot
char6.CanCollide = true
char6.BrickColor = Color
char6.Name = "ChariotPart6"
char6.Size = Vector3.new(3,3,3)
char6.Position = Torso.Position
local char7 = Instance.new("Part")
char7.formFactor = 1
char7.Parent = chariot
char7.CanCollide = true
char7.BrickColor = BrickColor.new("Black")
char7.Name = "ChariotPart7"
char7.Size = Vector3.new(2,1,5)
char7.Position = Torso.Position
local char8 = Instance.new("Part")
char8.formFactor = 1
char8.Parent = chariot
char8.CanCollide = true
char8.BrickColor = Color
char8.Name = "ChariotPart8"
char8.Size = Vector3.new(2,1,5)
char8.Position = Torso.Position
local char9 = Instance.new("Part")
char9.formFactor = 1
char9.Parent = chariot
char9.CanCollide = true
char9.BrickColor = BrickColor.new("Black")
char9.Name = "ChariotPart9"
char9.Size = Vector3.new(1,1,1)
char9.Position = Torso.Position
local char10 = Instance.new("Part")
char10.formFactor = 1
char10.Parent = chariot
char10.CanCollide = true
char10.BrickColor = BrickColor.new("Black")
char10.Name = "ChariotPart10"
char10.Size = Vector3.new(4,4,2)
char10.Position = Torso.Position
local char11 = Instance.new("Part")
char11.formFactor = 1
char11.Parent = chariot
char11.CanCollide = true
char11.BrickColor = Color
char11.Name = "ChariotPart11"
char11.Size = Vector3.new(4,4,2)
char11.Position = Torso.Position
local char12 = Instance.new("Part")
char12.formFactor = 1
char12.Parent = chariot
char12.CanCollide = true
char12.BrickColor = BrickColor.new("Black")
char12.Name = "ChariotPart12"
char12.Size = Vector3.new(2,4,2)
char12.Position = Torso.Position
local char13 = Instance.new("Part")
char13.formFactor = 1
char13.Parent = chariot
char13.CanCollide = true
char13.BrickColor = Color
char13.Name = "ChariotPart13"
char13.Size = Vector3.new(2,4,2)
char13.Position = Torso.Position
local char14 = Instance.new("Part")
char14.formFactor = 1
char14.Parent = chariot
char14.CanCollide = true
char14.BrickColor = BrickColor.new("Black")
char14.Name = "ChariotPart14"
char14.Size = Vector3.new(2,4,2)
char14.Position = Torso.Position
local char15 = Instance.new("Part")
char15.formFactor = 1
char15.Parent = chariot
char15.CanCollide = true
char15.BrickColor = Color
char15.Name = "ChariotPart15"
char15.Size = Vector3.new(2,4,2)
char15.Position = Torso.Position
local char16 = Instance.new("Part")
char16.formFactor = 1
char16.Parent = chariot
char16.CanCollide = true
char16.BrickColor = BrickColor.new("Black")
char16.Name = "ChariotPart16"
char16.Size = Vector3.new(2,2,2)
char16.Position = Torso.Position
local char17 = Instance.new("Part")
char17.formFactor = 1
char17.Parent = chariot
char17.CanCollide = true
char17.BrickColor = BrickColor.new("Black")
char17.Name = "ChariotPart17"
char17.Size = Vector3.new(4,4,4)
char17.Position = Torso.Position
local char17a = Instance.new("Part")
char17a.formFactor = 1
char17a.Parent = chariot
char17a.CanCollide = true
char17a.BrickColor = Color
char17a.Name = "ChariotPart17a"
char17a.Size = Vector3.new(4,4,4)
char17a.Position = Torso.Position
local char18 = Instance.new("Part")
char18.formFactor = 1
char18.Parent = chariot
char18.CanCollide = false
char18.BrickColor = BrickColor.new("Black")
char18.Name = "ChariotSpike"
char18.Size = Vector3.new(3,3,3)
char18.Position = Torso.Position
local char19 = Instance.new("Part")
char19.formFactor = 1
char19.Parent = chariot
char19.CanCollide = false
char19.BrickColor = BrickColor.new("Black")
char19.Name = "ChariotSpike"
char19.Size = Vector3.new(3,3,3)
char19.Position = Torso.Position
local char20 = Instance.new("Part")
char20.formFactor = 1
char20.Parent = chariot
char20.CanCollide = false
char20.BrickColor = BrickColor.new("Black")
char20.Name = "ChariotSpike"
char20.Size = Vector3.new(3,3,3)
char20.Position = Torso.Position
local char21 = Instance.new("Part")
char21.formFactor = 1
char21.Parent = chariot
char21.CanCollide = false
char21.BrickColor = BrickColor.new("Black")
char21.Name = "ChariotSpike"
char21.Size = Vector3.new(3,3,3)
char21.Position = Torso.Position
local char22 = Instance.new("Part")
char22.formFactor = 1
char22.Parent = chariot
char22.CanCollide = false
char22.BrickColor = BrickColor.new("Black")
char22.Name = "ChariotSpike"
char22.Size = Vector3.new(3,3,3)
char22.Position = Torso.Position
local char23 = Instance.new("Part")
char23.formFactor = 1
char23.Parent = chariot
char23.CanCollide = false
char23.BrickColor = BrickColor.new("Black")
char23.Name = "ChariotSpike"
char23.Size = Vector3.new(3,3,3)
char23.Position = Torso.Position
local char24 = Instance.new("Part")
char24.formFactor = 1
char24.Parent = chariot
char24.CanCollide = false
char24.BrickColor = BrickColor.new("Black")
char24.Name = "ChariotSpike"
char24.Size = Vector3.new(3,3,3)
char24.Position = Torso.Position
local char25 = Instance.new("Seat")
char25.formFactor = 1
--char25.Parent = chariot
char25.Parent = nil
char25.CanCollide = false
char25.BrickColor = BrickColor.new("Black")
char25.Name = "ChariotSeat"
char25.Transparency = 1
char25.Size = Vector3.new(1,1,1)
char25.Position = Torso.Position
 
local charm1 = Instance.new("BlockMesh")
charm1.Parent = char1
charm1.Scale = Vector3.new(1,1,1)
local charm2 = Instance.new("BlockMesh")
charm2.Parent = char2
charm2.Scale = Vector3.new(1,1,1)
local charm3 = Instance.new("BlockMesh")
charm3.Parent = char3
charm3.Scale = Vector3.new(1,1,1)
local charm4 = Instance.new("CylinderMesh")
charm4.Parent = char4
charm4.Scale = Vector3.new(1,1,1)
local charm5 = Instance.new("CylinderMesh")
charm5.Parent = char5
charm5.Scale = Vector3.new(1,1,1)
local charm6 = Instance.new("CylinderMesh")
charm6.Parent = char6
charm6.Scale = Vector3.new(0.7,1.1,0.7)
local charm7 = Instance.new("BlockMesh")
charm7.Parent = char7
charm7.Scale = Vector3.new(0.9,0.9,0.9)
local charm8 = Instance.new("BlockMesh")
charm8.Parent = char8
charm8.Scale = Vector3.new(1,0.7,0.8)
local charm9 = Instance.new("CylinderMesh")
charm9.Parent = char9
charm9.Scale = Vector3.new(0.7,1.7,0.7)
local charm10 = Instance.new("BlockMesh")
charm10.Parent = char10
charm10.Scale = Vector3.new(1,1,1)
local charm11 = Instance.new("BlockMesh")
charm11.Parent = char11
charm11.Scale = Vector3.new(0.99,0.9,1)
local charm12 = Instance.new("BlockMesh")
charm12.Parent = char12
charm12.Scale = Vector3.new(1,1,1)
local charm13 = Instance.new("BlockMesh")
charm13.Parent = char13
charm13.Scale = Vector3.new(0.99,0.9,1)
local charm14 = Instance.new("BlockMesh")
charm14.Parent = char14
charm14.Scale = Vector3.new(1,1,1)
local charm15 = Instance.new("BlockMesh")
charm15.Parent = char15
charm15.Scale = Vector3.new(0.99,0.9,1)
local charm16 = Instance.new("BlockMesh")
charm16.Parent = char16
charm16.Scale = Vector3.new(1,1,1)
local charm17 = Instance.new("CylinderMesh")
charm17.Parent = char17
charm17.Scale = Vector3.new(1,1,1)
local charm17a = Instance.new("CylinderMesh")
charm17a.Parent = char17a
charm17a.Scale = Vector3.new(0.8,1.1,0.8)
local charm18 = Instance.new("SpecialMesh")
charm18.Parent = char18
charm18.MeshId = "http://www.roblox.com/asset/?id=1778999"
charm18.Scale = Vector3.new(1.5,1.5,1.5)
local charm19 = Instance.new("SpecialMesh")
charm19.Parent = char19
charm19.MeshId = "http://www.roblox.com/asset/?id=1778999"
charm19.Scale = Vector3.new(1.5,1.5,1.5)
local charm20 = Instance.new("SpecialMesh")
charm20.Parent = char20
charm20.MeshId = "http://www.roblox.com/asset/?id=1778999"
charm20.Scale = Vector3.new(1.5,1.5,1.5)
local charm21 = Instance.new("SpecialMesh")
charm21.Parent = char21
charm21.MeshId = "http://www.roblox.com/asset/?id=1778999"
charm21.Scale = Vector3.new(1.5,1.5,1.5)
local charm22 = Instance.new("SpecialMesh")
charm22.Parent = char22
charm22.MeshId = "http://www.roblox.com/asset/?id=1778999"
charm22.Scale = Vector3.new(1.5,1.5,1.5)
local charm23 = Instance.new("SpecialMesh")
charm23.Parent = char23
charm23.MeshId = "http://www.roblox.com/asset/?id=1778999"
charm23.Scale = Vector3.new(1.5,1.5,1.5)
local charm24 = Instance.new("SpecialMesh")
charm24.Parent = char24
charm24.MeshId = "http://www.roblox.com/asset/?id=1778999"
charm24.Scale = Vector3.new(1.5,1.5,1.5)
local charm25 = Instance.new("BlockMesh")
charm25.Parent = char25
charm25.Scale = Vector3.new(1,1,1)
 
local charw1 = Instance.new("Weld")
charw1.Parent = char1
charw1.Part0 = char1
charw1.Part1 = Torso
charw1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-2,8)
local charw2 = Instance.new("Weld")
charw2.Parent = char2
charw2.Part0 = char2
charw2.Part1 = char1
charw2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-3)
local charw3 = Instance.new("Weld")
charw3.Parent = char3
charw3.Part0 = char3
charw3.Part1 = char2
charw3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-1)
local charw4 = Instance.new("Weld")
charw4.Parent = char4
charw4.Part0 = char4
charw4.Part1 = char1
charw4.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,1.5)
local charw5 = Instance.new("Weld")
charw5.Parent = char5
charw5.Part0 = char5
charw5.Part1 = char1
charw5.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0.5,1.3)
local charw6 = Instance.new("Weld")
charw6.Parent = char6
charw6.Part0 = char6
charw6.Part1 = char5
charw6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local charw7 = Instance.new("Weld")
charw7.Parent = char7
charw7.Part0 = char7
charw7.Part1 = char1
charw7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0)
local charw8 = Instance.new("Weld")
charw8.Parent = char8
charw8.Part0 = char8
charw8.Part1 = char7
charw8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local charw9 = Instance.new("Weld")
charw9.Parent = char9
charw9.Part0 = char9
charw9.Part1 = char7
charw9.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,-0.2,-1.5)
local charw10 = Instance.new("Weld")
charw10.Parent = char10
charw10.Part0 = char10
charw10.Part1 = char1
charw10.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,3)
local charw11 = Instance.new("Weld")
charw11.Parent = char11
charw11.Part0 = char11
charw11.Part1 = char10
charw11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5)
local charw12 = Instance.new("Weld")
charw12.Parent = char12
charw12.Part0 = char12
charw12.Part1 = char10
charw12.C0 = CFrame.fromEulerAnglesXYZ(0,0.5,0) * CFrame.new(-2.4,0,-0.4)
local charw13 = Instance.new("Weld")
charw13.Parent = char13
charw13.Part0 = char13
charw13.Part1 = char12
charw13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5)
local charw14 = Instance.new("Weld")
charw14.Parent = char14
charw14.Part0 = char14
charw14.Part1 = char10
charw14.C0 = CFrame.fromEulerAnglesXYZ(0,0.5,0) * CFrame.new(2.1,0,0.3)
local charw15 = Instance.new("Weld")
charw15.Parent = char15
charw15.Part0 = char15
charw15.Part1 = char14
charw15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5)
local charw16 = Instance.new("Weld")
charw16.Parent = char16
charw16.Part0 = char16
charw16.Part1 = char10
charw16.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.5,0,2)
local charw17 = Instance.new("Weld")
charw17.Parent = char17
charw17.Part0 = char17
charw17.Part1 = char16
charw17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,2)
local charw18 = Instance.new("Weld")
charw18.Parent = char18
charw18.Part0 = char18
charw18.Part1 = char17
charw18.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local charw19 = Instance.new("Weld")
charw19.Parent = char19
charw19.Part0 = char19
charw19.Part1 = char17
charw19.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(1.57,0.9,0)
local charw20 = Instance.new("Weld")
charw20.Parent = char20
charw20.Part0 = char20
charw20.Part1 = char17
charw20.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(1.57,1.8,0)
local charw21 = Instance.new("Weld")
charw21.Parent = char21
charw21.Part0 = char21
charw21.Part1 = char17
charw21.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(1.57,2.7,0)
local charw22 = Instance.new("Weld")
charw22.Parent = char22
charw22.Part0 = char22
charw22.Part1 = char17
charw22.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(1.57,3.6,0)
local charw23 = Instance.new("Weld")
charw23.Parent = char23
charw23.Part0 = char23
charw23.Part1 = char17
charw23.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(1.57,4.5,0)
local charw24 = Instance.new("Weld")
charw24.Parent = char24
charw24.Part0 = char24
charw24.Part1 = char17
charw24.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(1.57,5.4,0)
local charw17a = Instance.new("Weld")
charw17a.Parent = char17a
charw17a.Part0 = char17a
charw17a.Part1 = char17
charw17a.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local charw25 = Instance.new("Weld")
charw25.Parent = char25
charw25.Part0 = char25
charw25.Part1 = char3
charw25.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1,0)
 
--[[local hum = Instance.new("Humanoid")
hum.Parent = chariot
hum.MaxHealth = 500 ]]
 
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
fengui.Name = "WeaponGUI"
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
local fentext5 = Instance.new("TextLabel")
fentext5.Parent = fenframe
fentext5.Text = " "
fentext5.BackgroundTransparency = 1
fentext5.BackgroundColor3 = Color3.new(0,0,0)
fentext5.SizeConstraint = "RelativeXY"
fentext5.TextXAlignment = "Center"
fentext5.TextYAlignment = "Center"
fentext5.Position = UDim2.new(0,10,0.8,170)
fentext5.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext6 = Instance.new("TextLabel")
fentext6.Parent = fenframe
fentext6.Text = " "
fentext6.BackgroundTransparency = 1
fentext6.BackgroundColor3 = Color3.new(1,1,0)
fentext6.SizeConstraint = "RelativeXY"
fentext6.TextXAlignment = "Center"
fentext6.TextYAlignment = "Center"
fentext6.Position = UDim2.new(0,10,0.8,170)
fentext6.Size = UDim2.new(HeroBar*0.007,0,0.200000006,0)
local gairo = Instance.new("BodyGyro")
gairo.Parent = nil
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
gairo.P = 20e+003
local gairo2 = Instance.new("BodyGyro")
 
if (script.Parent.className ~= "HopperBin") then
Tool = Instance.new("HopperBin")
Tool.Parent = Backpack
Tool.Name = "Charibassa"
script.Parent = Tool
end
Bin = script.Parent
 
function hideanim()
for i = 0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0.3*i,1.57-0.7*i) * CFrame.new(-1*i,1-0.5*i,0.8*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+2.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
wld1.Part1 = Torso
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,2.3) * CFrame.new(1,-1,-0.7)
end
 
function equipanim()
for i = 0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0.3,1.57-0.7) * CFrame.new(-1,1-0.5,0.8)
for i = 0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.57*i,0.3-0.3*i,1.57-0.7+0.7*i) * CFrame.new(-1+1*i,1-0.5+0.5*i,0.8-0.8*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-2.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end
 
function onehit()
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1=prt25.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con2=prt26.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con3=prt27.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con4=prt28.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
ss(1)
for i = 0,1,0.2 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2.5*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1:disconnect()
con2:disconnect()
con3:disconnect()
con4:disconnect()
wait(0.2)
attack = false
end
 
function twohit()
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2.5-1.5*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,-1.57*i,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,0,1.4*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1=prt25.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con2=prt26.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con3=prt27.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con4=prt28.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
ss(0.9)
for i = 0,1,0.2 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57,-1.57,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+3*i,0,0)
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.4-2*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1:disconnect()
con2:disconnect()
con3:disconnect()
con4:disconnect()
attack = false
end
 
function threehit()
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-0.5*i,1.57) * CFrame.new(0,1,-0.5*i)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2*i,-1.57+1.57*i,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+3-2.5*i,0,0)
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57,0,1.4-2)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1=prt25.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con2=prt26.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con3=prt27.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con4=prt28.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
ss(1.1)
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-0.5,1.57) * CFrame.new(0,1,-0.5+0.5*i)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.4-2+2*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1:disconnect()
con2:disconnect()
con3:disconnect()
con4:disconnect()
attack = false
end
 
function fourhit(mouse)
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.5+2.64*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77*i,0,1.4-1.4*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
ss(1)
prt1.CanCollide = true
wld1.Part1 = nil
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.5+2.64,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
shoottrail(mouse)
wait(1)
prt1.Anchored = false
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
if heromode == false then
else
wait(4)
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
attack = false
end
 
function SpinSlash()
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.5*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,-1.57*i,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,-1.57*i,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0)
end
local vel = Instance.new("BodyGyro")
vel.Parent = Torso
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
vel.P = 20e+003
CF = Torso.CFrame
ss(1)
con1=prt25.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con2=prt26.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con3=prt27.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
con4=prt28.Touched:connect(function(hit) Damagefunc1(hit,20,15) end)
for i = 0 , 1 , 0.1 do
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.5+0.5*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57,-1.57,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2*i,0,0)
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0)
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,3.14*i,0)
end
wait(0.2)
con1:disconnect()
con2:disconnect()
con3:disconnect()
con4:disconnect()
vel.Parent = nil
for i = 0,1,0.1 do
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.5+0.5-1*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,-1.57+1.57*i,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2-1.2*i,0,0)
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,-1.5+1.57*i,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+2-1*i,0,0)
end
attack = false
end
 
--[[function Derp()
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,0.5*i)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-0.5*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.5)
attack = false
end ]]
 
function Change()
if mode == "Normal" then
mode = "Throw"
elseif mode == "Throw" then
mode = "Normal"
end
end
 
function SpearThrow(mouse)
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
if RageBuff == true then
lolololdur = 0
while hold == true do
wait()
if lolololdur == 10 then
magicsound(3)
MMMAGIC(prt25,1,1,1,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
rangepower = 30
end
if lolololdur == 30 then
magicsound(2)
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
rangepower = 50
end
if lolololdur == 60 then
magicsound(1)
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,7,7,7,0,0,0,BrickColor.new("Bright red"))
rangepower = 100
RAEG = true
end
lolololdur = lolololdur + 1
end
end
ss(1)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
prt1.CanCollide = true
shoottrail(mouse)
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1)
prt1.Anchored = false
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
if heromode == false then
else
wait(4)
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
attack = false
rangepower = 10
RAEG = false
end
 
function ChariotSummon()
attack = true
if Riding == false then
Riding = true
gairo2.Parent = nil
if chariot.Parent == nil then
local c = chariot:children()
for i = 1,#c do
c[i].Transparency = 1
end
bod = Instance.new("BodyPosition")
bod.position = Torso.Position + Vector3.new(0,10,0)
bod.Parent = Torso
bod.maxForce = Vector3.new(4e+080, 4e+080, 4e+080)
local c = chariot:children()
for i = 1,#c do
coroutine.resume(coroutine.create(function(Part)
for i = 0,1,0.1 do
wait(0.1)
Part.Transparency = Part.Transparency - 0.1  
end
end),c[i])
end
 
player = Player
ch = Character
RH = ch.Torso["Right Hip"]
LH = ch.Torso["Left Hip"]
--
RW2.Part0 = ch.Torso
RW2.C0 = CFrame.new(0, -1.5, 0)
RW2.C1 = CFrame.new(-0.5, 0.5, 0)
RW2.Part1 = ch["Right Leg"]
RW2.Parent = ch.Torso
--_G.R = RW
--
LW2.Part0 = ch.Torso
LW2.C0 = CFrame.new(0, -1.5, 0)
LW2.C1 = CFrame.new(0.5, 0.5, 0)
LW2.Part1 = ch["Left Leg"]
LW2.Parent = ch.Torso
--_G.L = LW
--
 
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.07*i,0,-1*i)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.07*i,0,1*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW2.C0 = CFrame.new(0, -1.5, -0.3*i) * CFrame.fromEulerAnglesXYZ(0.8*i,0,0)
RW2.C1 = CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW2.C0 = CFrame.new(0, -1.5, 0.1*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
LW2.C1 = CFrame.new(0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
char1.Anchored = false
chariot.Parent = mien
charw1.Parent = char1
charw1.Part1 = Torso
charw1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3.5,1)
Character.Humanoid.WalkSpeed = 20
wait(0.5)
bod.Parent = nil
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.07-0.07*i,0,-1+1*i)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.07-1.07*i,0,1-1*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
else
 
player = Player
ch = Character
RH = ch.Torso["Right Hip"]
LH = ch.Torso["Left Hip"]
--
RW2.Part0 = ch.Torso
RW2.C0 = CFrame.new(0, -1.5, -0.3) * CFrame.fromEulerAnglesXYZ(0.8,0,0)
RW2.C1 = CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW2.Part1 = ch["Right Leg"]
RW2.Parent = ch.Torso
--_G.R = RW
--
LW2.Part0 = ch.Torso
LW2.C0 = CFrame.new(0, -1.5, 0.1) * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
LW2.C1 = CFrame.new(0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW2.Part1 = ch["Left Leg"]
LW2.Parent = ch.Torso
--_G.L = LW
--
 
char1.Anchored = false
chariot.Parent = mien
charw1.Parent = char1
charw1.Part1 = Torso
charw1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3.5,1)
Character.Humanoid.WalkSpeed = 20
end
elseif Riding == true then
Riding = false
 
RW2.Parent = nil
LW2.Parent = nil
RH.Parent = player.Character.Torso
LH.Parent = player.Character.Torso
 
Character.Humanoid.WalkSpeed = 16
gairo2.Parent = char1
gairo2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
gairo2.P = 20e+003
gairo2.cframe = char1.CFrame
charw1.Parent = nil
end
attack = false
end
 
function HeroMode()
if mana >= 200 and Character.Humanoid.Health == Character.Humanoid.MaxHealth then
HeroBar = 400
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
coroutine.resume(coroutine.create(function()
for i = 0,1,0.05 do
wait()
fentext5.BackgroundTransparency = fentext5.BackgroundTransparency - 0.05  
fentext6.BackgroundTransparency = fentext6.BackgroundTransparency - 0.05
end
end))
mana = 0
magicsound(1)
EVENMOARMAGIX(prt25,5,3,5,0,0,0,0,0,0,BrickColor.new("New Yeller"))
heromode = true
local heropart1 = prt10:Clone()
heropart1.Parent = modelzorz
heropart1.Transparency = 0.5
heropart1.Reflectance = 0.2
heropart1.BrickColor = BrickColor.new("New Yeller")
heropart1.Mesh.Scale = Vector3.new(0.25,0.9,0.25)
local heropart2 = prt11:Clone()
heropart2.Parent = modelzorz
heropart2.Transparency = 0.5
heropart2.Reflectance = 0.2
heropart2.BrickColor = BrickColor.new("New Yeller")
heropart2.Mesh.Scale = Vector3.new(0.25,1,0.25)
local heropart3 = prt12:Clone()
heropart3.Parent = modelzorz
heropart3.Transparency = 0.5
heropart3.Reflectance = 0.2
heropart3.BrickColor = BrickColor.new("New Yeller")
heropart3.Mesh.Scale = Vector3.new(0.25,1.1,0.25)
local heropart4 = prt13:Clone()
heropart4.Parent = modelzorz
heropart4.Transparency = 0.5
heropart4.Reflectance = 0.2
heropart4.BrickColor = BrickColor.new("New Yeller")
heropart4.Mesh.Scale = Vector3.new(0.25,1.2,0.25)
local heropart5 = prt14:Clone()
heropart5.Parent = modelzorz
heropart5.Transparency = 0.5
heropart5.Reflectance = 0.2
heropart5.BrickColor = BrickColor.new("New Yeller")
heropart5.Mesh.Scale = Vector3.new(0.25,1.3,0.25)
local heropart6 = prt15:Clone()
heropart6.Parent = modelzorz
heropart6.Transparency = 0.5
heropart6.Reflectance = 0.2
heropart6.BrickColor = BrickColor.new("New Yeller")
heropart6.Mesh.Scale = Vector3.new(0.25,1.4,0.25)
local heropart7 = prt16:Clone()
heropart7.Parent = modelzorz
heropart7.Transparency = 0.5
heropart7.Reflectance = 0.2
heropart7.BrickColor = BrickColor.new("New Yeller")
heropart7.Mesh.Scale = Vector3.new(0.25,1.5,0.25)
local heropart8 = prt17:Clone()
heropart8.Parent = modelzorz
heropart8.Transparency = 0.5
heropart8.Reflectance = 0.2
heropart8.BrickColor = BrickColor.new("New Yeller")
heropart8.Mesh.Scale = Vector3.new(0.25,0.9,0.25)
local heropart9 = prt18:Clone()
heropart9.Parent = modelzorz
heropart9.Transparency = 0.5
heropart9.Reflectance = 0.2
heropart9.BrickColor = BrickColor.new("New Yeller")
heropart9.Mesh.Scale = Vector3.new(0.25,1,0.25)
local heropart10 = prt19:Clone()
heropart10.Parent = modelzorz
heropart10.Transparency = 0.5
heropart10.Reflectance = 0.2
heropart10.BrickColor = BrickColor.new("New Yeller")
heropart10.Mesh.Scale = Vector3.new(0.25,1.1,0.25)
local heropart11 = prt20:Clone()
heropart11.Parent = modelzorz
heropart11.Transparency = 0.5
heropart11.Reflectance = 0.2
heropart11.BrickColor = BrickColor.new("New Yeller")
heropart11.Mesh.Scale = Vector3.new(0.25,1.2,0.25)
local heropart12 = prt21:Clone()
heropart12.Parent = modelzorz
heropart12.Transparency = 0.5
heropart12.Reflectance = 0.2
heropart12.BrickColor = BrickColor.new("New Yeller")
heropart12.Mesh.Scale = Vector3.new(0.25,1.3,0.25)
local heropart13 = prt22:Clone()
heropart13.Parent = modelzorz
heropart13.Transparency = 0.5
heropart13.Reflectance = 0.2
heropart13.BrickColor = BrickColor.new("New Yeller")
heropart13.Mesh.Scale = Vector3.new(0.25,1.4,0.25)
local heropart14 = prt23:Clone()
heropart14.Parent = modelzorz
heropart14.Transparency = 0.5
heropart14.Reflectance = 0.2
heropart14.BrickColor = BrickColor.new("New Yeller")
heropart14.Mesh.Scale = Vector3.new(0.25,1.5,0.25)
local heropart15 = prt27:Clone()
heropart15.Parent = modelzorz
heropart15.Transparency = 0.5
heropart15.Reflectance = 0.2
heropart15.BrickColor = BrickColor.new("New Yeller")
heropart15.Mesh.Scale = Vector3.new(0.4,0.7,1.1)
local heropart16 = prt28:Clone()
heropart16.Parent = modelzorz
heropart16.Transparency = 0.5
heropart16.Reflectance = 0.2
heropart16.BrickColor = BrickColor.new("New Yeller")
heropart16.Mesh.Scale = Vector3.new(0.4,0.7,1.1)
 
local heroweld1 = Instance.new("Weld")
heroweld1.Parent = heropart1
heroweld1.Part0 = heropart1
heroweld1.Part1 = prt10
heroweld1.C0 = CFrame.new(0,0.3,0)
local heroweld2 = Instance.new("Weld")
heroweld2.Parent = heropart2
heroweld2.Part0 = heropart2
heroweld2.Part1 = prt11
heroweld2.C0 = CFrame.new(0,0.3,0)
local heroweld3 = Instance.new("Weld")
heroweld3.Parent = heropart3
heroweld3.Part0 = heropart3
heroweld3.Part1 = prt12
heroweld3.C0 = CFrame.new(0,0.3,0)
local heroweld4 = Instance.new("Weld")
heroweld4.Parent = heropart4
heroweld4.Part0 = heropart4
heroweld4.Part1 = prt13
heroweld4.C0 = CFrame.new(0,0.3,0)
local heroweld5 = Instance.new("Weld")
heroweld5.Parent = heropart5
heroweld5.Part0 = heropart5
heroweld5.Part1 = prt14
heroweld5.C0 = CFrame.new(0,0.3,0)
local heroweld6 = Instance.new("Weld")
heroweld6.Parent = heropart6
heroweld6.Part0 = heropart6
heroweld6.Part1 = prt15
heroweld6.C0 = CFrame.new(0,0.3,0)
local heroweld7 = Instance.new("Weld")
heroweld7.Parent = heropart7
heroweld7.Part0 = heropart7
heroweld7.Part1 = prt16
heroweld7.C0 = CFrame.new(0,0.3,0)
local heroweld8 = Instance.new("Weld")
heroweld8.Parent = heropart8
heroweld8.Part0 = heropart8
heroweld8.Part1 = prt17
heroweld8.C0 = CFrame.new(0,0.3,0)
local heroweld9 = Instance.new("Weld")
heroweld9.Parent = heropart9
heroweld9.Part0 = heropart9
heroweld9.Part1 = prt18
heroweld9.C0 = CFrame.new(0,0.3,0)
local heroweld10 = Instance.new("Weld")
heroweld10.Parent = heropart10
heroweld10.Part0 = heropart10
heroweld10.Part1 = prt19
heroweld10.C0 = CFrame.new(0,0.3,0)
local heroweld11 = Instance.new("Weld")
heroweld11.Parent = heropart11
heroweld11.Part0 = heropart11
heroweld11.Part1 = prt20
heroweld11.C0 = CFrame.new(0,0.3,0)
local heroweld12 = Instance.new("Weld")
heroweld12.Parent = heropart12
heroweld12.Part0 = heropart12
heroweld12.Part1 = prt21
heroweld12.C0 = CFrame.new(0,0.3,0)
local heroweld13 = Instance.new("Weld")
heroweld13.Parent = heropart13
heroweld13.Part0 = heropart13
heroweld13.Part1 = prt22
heroweld13.C0 = CFrame.new(0,0.3,0)
local heroweld14 = Instance.new("Weld")
heroweld14.Parent = heropart14
heroweld14.Part0 = heropart14
heroweld14.Part1 = prt23
heroweld14.C0 = CFrame.new(0,0.3,0)
local heroweld15 = Instance.new("Weld")
heroweld15.Parent = heropart15
heroweld15.Part0 = heropart15
heroweld15.Part1 = prt27
heroweld15.C0 = CFrame.new(0,-0.1,0.1)
local heroweld16 = Instance.new("Weld")
heroweld16.Parent = heropart16
heroweld16.Part0 = heropart16
heroweld16.Part1 = prt28
heroweld16.C0 = CFrame.new(0,-0.1,0.1)
 
coroutine.resume(coroutine.create(function()
while HeroBar > 0 do
wait(0.1)
mana = 0
HeroBar = HeroBar - 1
--Character.Humanoid.Health = Character.Humanoid.Health + 0.1
local bawleffect = Instance.new("Part")
bawleffect.formFactor = 1
bawleffect.CanCollide = false
bawleffect.Name = "Effect"
bawleffect.Locked = true
bawleffect.Size = Vector3.new(1,1,1)
bawleffect.Parent = Character
bawleffect.Anchored = true
bawleffect.BrickColor = BrickColor.new("New Yeller")
bawleffect.CFrame = prt25.CFrame * CFrame.new(math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-2,5)+math.random())
local bawlmesh = Instance.new("SpecialMesh")
bawlmesh.Parent = bawleffect
bawlmesh.Scale = Vector3.new(0.1,0.1,0.1)
bawlmesh.MeshType = "Sphere"
coroutine.resume(coroutine.create(function(Part)
wait(0.1)
for i = 0,1,0.1 do
wait()
Part.Reflectance = i
Part.Transparency = i
end
Part.Parent = nil
end),bawleffect)
end
heromode = false
for i = 0,1,0.05 do
wait()
fentext5.BackgroundTransparency = fentext5.BackgroundTransparency + 0.05  
fentext6.BackgroundTransparency = fentext6.BackgroundTransparency + 0.05
heropart1.Transparency = heropart1.Transparency + 0.05
heropart2.Transparency = heropart2.Transparency + 0.05
heropart3.Transparency = heropart3.Transparency + 0.05
heropart4.Transparency = heropart4.Transparency + 0.05
heropart5.Transparency = heropart5.Transparency + 0.05
heropart6.Transparency = heropart6.Transparency + 0.05
heropart7.Transparency = heropart7.Transparency + 0.05
heropart8.Transparency = heropart8.Transparency + 0.05
heropart9.Transparency = heropart9.Transparency + 0.05
heropart10.Transparency = heropart10.Transparency + 0.05
heropart11.Transparency = heropart11.Transparency + 0.05
heropart12.Transparency = heropart12.Transparency + 0.05
heropart13.Transparency = heropart13.Transparency + 0.05
heropart14.Transparency = heropart14.Transparency + 0.05
heropart15.Transparency = heropart15.Transparency + 0.05
heropart16.Transparency = heropart16.Transparency + 0.05
end
heropart1.Parent = nil
heropart2.Parent = nil
heropart3.Parent = nil
heropart4.Parent = nil
heropart5.Parent = nil
heropart6.Parent = nil
heropart7.Parent = nil
heropart8.Parent = nil
heropart9.Parent = nil
heropart10.Parent = nil
heropart11.Parent = nil
heropart12.Parent = nil
heropart13.Parent = nil
heropart14.Parent = nil
heropart15.Parent = nil
heropart16.Parent = nil
end))
wait(0.1)
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
attack = false
end
end
 
function Imbue()
if mana >= 50 then
attack = true
for i = 0,1,0.1 do
wait()
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new("White"))
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.5*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,-1.57*i,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
for i = 0,1,0.05 do
wait()
MMMAGIC(RightArm,3,3,3,0,-1-2*i,0,BrickColor.new("White"))
end
mana = mana - 50
Imbued = true
coroutine.resume(coroutine.create(function()
lasersound(1)
local Bawl1 = Instance.new("Part")
Bawl1.Parent = modelzorz
Bawl1.CanCollide = false
Bawl1.BrickColor = BrickColor.new("White")
Bawl1.Position = Torso.Position
Bawl1.Transparency = 1
Bawl1.Size = Vector3.new(1,1,1)
local BawlMesh1 = Instance.new("SpecialMesh")
BawlMesh1.Parent = Bawl1
BawlMesh1.MeshType = "Sphere"
BawlMesh1.Scale = Vector3.new(0,0,0)
local BawlWeld1 = Instance.new("Weld")
BawlWeld1.Parent = Bawl1
BawlWeld1.Part0 = Bawl1
BawlWeld1.Part1 = prt25
BawlWeld1.C0 = CFrame.new(1.5,0,0)
EVENMOARMAGIX(Bawl1,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
local Bawl2 = Instance.new("Part")
Bawl2.Parent = modelzorz
Bawl2.CanCollide = false
Bawl2.BrickColor = BrickColor.new("White")
Bawl2.Position = Torso.Position
Bawl2.Transparency = 1
Bawl2.Size = Vector3.new(1,1,1)
local BawlMesh2 = Instance.new("SpecialMesh")
BawlMesh2.Parent = Bawl2
BawlMesh2.MeshType = "Sphere"
BawlMesh2.Scale = Vector3.new(0,0,0)
local BawlWeld2 = Instance.new("Weld")
BawlWeld2.Parent = Bawl2
BawlWeld2.Part0 = Bawl2
BawlWeld2.Part1 = prt25
BawlWeld2.C0 = CFrame.new(-1.5,0,0)
EVENMOARMAGIX(Bawl2,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
coroutine.resume(coroutine.create(function()
while Imbued == true do
wait(0.1)
BawlWeld1.C0 = BawlWeld1.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.3)
BawlWeld2.C0 = BawlWeld2.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.3)
MMMAGIC(Bawl1,2,2,2,0,0,0,BrickColor.new("White"))
MMMAGIC(Bawl2,2,2,2,0,0,0,BrickColor.new("White"))
end
Bawl1.Parent = nil
Bawl2.Parent = nil
end))
end))
MMMAGIC(RightArm,5,5,5,0,-1-2,0,BrickColor.new("White"))
wait(0.5)
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.5-0.5*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,-1.57+1.57*i,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
attack = false
end
end
 
function Rest()
attack = true
Resting = true
Character.Humanoid.WalkSpeed = 0
gairo2.Parent = char1
gairo2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
gairo2.P = 20e+003
gairo2.cframe = char1.CFrame
bod = Instance.new("BodyPosition")
bod.position = char1.Position
bod.Parent = char1
bod.maxForce = Vector3.new(4e+080, 4e+080, 4e+080)
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.8*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW2.C0 = CFrame.new(0.1*i, -1.5, -0.3-0.2*i) * CFrame.fromEulerAnglesXYZ(0.8+0.77*i,0,0.5*i)
RW2.C1 = CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW2.C0 = CFrame.new(-0.1*i, -1.5, 0.1-0.6*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,-0.5*i)
LW2.C1 = CFrame.new(0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
charw1.C0 = CFrame.fromEulerAnglesXYZ(0.3*i,0,0) * CFrame.new(0,3.5-1*i,1+1*i)
end
bod.Parent = nil
coroutine.resume(coroutine.create(function()
while Resting == true do
wait(math.random(5,15))
for i = 1,2 do
wait()
for i = 0,1,0.2 do
wait()
if Resting == true then
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.8-0.3*i,1.57) * CFrame.new(0,1,0)
end
end
for i = 0,1,0.2 do
wait()
if Resting == true then
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.8-0.3+0.3*i,1.57) * CFrame.new(0,1,0)
end
end
end
end
end))
coroutine.resume(coroutine.create(function()
while Resting == true do
wait()
for i = 0,1,0.01 do
wait()
if Resting == true then
--wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.8*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+0.2*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW2.C0 = CFrame.new(0.1, -1.5, -0.3-0.2) * CFrame.fromEulerAnglesXYZ(0.8+0.77,0,0.5)
RW2.C1 = CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW2.C0 = CFrame.new(-0.1, -1.5, 0.1-0.6) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,0,-0.5)
LW2.C1 = CFrame.new(0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
--charw1.C0 = CFrame.fromEulerAnglesXYZ(0.3*i,0,0) * CFrame.new(0,3.5-1*i,1+1*i)
end
end
for i = 0,1,0.01 do
wait()
if Resting == true then
--wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.8*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+0.2-0.2*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2-0.2*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW2.C0 = CFrame.new(0.1, -1.5, -0.3-0.2) * CFrame.fromEulerAnglesXYZ(0.8+0.77,0,0.5)
RW2.C1 = CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW2.C0 = CFrame.new(-0.1, -1.5, 0.1-0.6) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,0,-0.5)
LW2.C1 = CFrame.new(0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
--charw1.C0 = CFrame.fromEulerAnglesXYZ(0.3*i,0,0) * CFrame.new(0,3.5-1*i,1+1*i)
end
end
end
end))
humanoid = Character.Humanoid
lhh = humanoid.Health
while Resting == true do
wait()
if mana < 400 then
mana = mana + 1
end
Character.Humanoid.Health = Character.Humanoid.Health + 0.1
if humanoid.Health < lhh then
Resting = false
print(lhh - humanoid.Health)
test = lhh - humanoid.Health
lhh = humanoid.Health
else
end
end
if Sleeping == true then
bod = Instance.new("BodyPosition")
bod.position = char1.Position
bod.Parent = char1
bod.maxForce = Vector3.new(4e+080, 4e+080, 4e+080)
for i = 0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.2*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.8,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5-1.07*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-1.07*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW2.C0 = CFrame.new(0.1-0.1*i, -1.5, -0.3-0.2+0.2*i) * CFrame.fromEulerAnglesXYZ(0.8+0.77-1.2*i,0,0.5-0.5*i)
RW2.C1 = CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW2.C0 = CFrame.new(-0.1+0.1*i, -1.5, 0.1-0.6+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07-1.2*i,0,-0.5+0.5*i)
LW2.C1 = CFrame.new(0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
charw1.C0 = CFrame.fromEulerAnglesXYZ(0.3+1.27*i,0,0) * CFrame.new(0,3.5-1-1*i,1+1-3*i)
end
bod.Parent = nil
humanoid = Character.Humanoid
lhh = humanoid.Health
while Sleeping == true do
wait()
if mana < 400 then
mana = mana + 5
end
Character.Humanoid.Health = Character.Humanoid.Health + 0.5
if humanoid.Health < lhh then
Sleeping = false
print(lhh - humanoid.Health)
test = lhh - humanoid.Health
lhh = humanoid.Health
else
end
end
end
bod = Instance.new("BodyPosition")
bod.position = char1.Position
bod.Parent = char1
bod.maxForce = Vector3.new(4e+080, 4e+080, 4e+080)
for i = 0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0.8-0.8*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW2.C0 = CFrame.new(0.1-0.1*i, -1.5, -0.3-0.2+0.2*i) * CFrame.fromEulerAnglesXYZ(0.8+0.77-0.77*i,0,0.5-0.5*i)
RW2.C1 = CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW2.C0 = CFrame.new(-0.1+0.1*i, -1.5, 0.1-0.6+0.6*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07-2.07*i,0,-0.5+0.5*i)
LW2.C1 = CFrame.new(0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
charw1.C0 = CFrame.fromEulerAnglesXYZ(0.3-0.3*i,0,0) * CFrame.new(0,3.5-1+1*i,1+1-1*i)
end
bod.Parent = nil
gairo2.Parent = nil
Character.Humanoid.WalkSpeed = 16
Resting = false
Sleeping = false
attack = false
end
 
function SpearThrow2(mouse)
if mana >= 50 or heromode == true then
attack = true
for i = 0,1,0.1 do
wait()
if heromode == true then
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("New Yeller"))
else
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White"))
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
if RageBuff == true then
lolololdur = 0
while hold == true do
wait()
if heromode == true then
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("New Yeller"))
else
if lolololdur >= 60 then
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Bright red"))
else
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White"))
end
end
if lolololdur == 10 then
magicsound(3)
MMMAGIC(prt25,1,1,1,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
rangepower = 30
end
if lolololdur == 30 then
magicsound(2)
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
rangepower = 50
end
if lolololdur == 60 then
magicsound(1)
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,7,7,7,0,0,0,BrickColor.new("Bright red"))
rangepower = 100
RAEG = true
end
lolololdur = lolololdur + 1
end
end
ss(1)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
if heromode == false then
mana = mana - 50
end
if Riding == true then
for i = 1,6 do
coroutine.resume(coroutine.create(function()
shoottrail2(mouse)
end))
end
else
for i = 1,2 do
coroutine.resume(coroutine.create(function()
shoottrail2(mouse)
end))
end
end
prt1.CanCollide = true
shoottrail(mouse)
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1)
prt1.Anchored = false
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
if heromode == false then
else
wait(8)
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
attack = false
rangepower = 10
RAEG = false
end
end
 
function BouncingSpear(mouse)
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
if RageBuff == true then
lolololdur = 0
while hold == true do
wait()
if lolololdur == 10 then
magicsound(3)
MMMAGIC(prt25,1,1,1,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
rangepower = 30
end
if lolololdur == 30 then
magicsound(2)
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
rangepower = 50
end
if lolololdur == 60 then
magicsound(1)
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,7,7,7,0,0,0,BrickColor.new("Bright red"))
rangepower = 100
RAEG = true
end
lolololdur = lolololdur + 1
end
end
ss(1)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
Bouncing = true
prt1.CanCollide = true
spread2 = 100000
cloning = 0
wait()
attack = true
while wld1.Parent ~= nil and Bouncing == true and attack == true do
if wld1.Parent == nil then
Bouncing = false
end
cloning = cloning + 1
if cloning == 5 and heromode == false then
cloning = 0
for i = 1,2 do
coroutine.resume(coroutine.create(function()
shoottrail2(mouse)
end))
end
end
shoottrail(mouse)
--ShootArrow(mouse.hit.p, 200, mouse.Target)
if heromode == true then
rangepower = 40
spread = 2000
spread2 = 2500
--spread2 = 100000
--spread = 100000
range = 30
range2 = 200
elseif heromode == false then  
rangepower = 10
spread = 2000
spread2 = 2500
--spread2 = 100000
--spread = 100000
range = 50
range2 = 200
end
wait(0)
end
wait(1)
rangepower = 10
spread = 0
range = 1000
range2 = 1000
spread2 = 500
cloning = 0
Bouncing = false
prt1.Anchored = false
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
if heromode == false then
else
wait(4)
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
attack = false
rangepower = 10
RAEG = false
end
 
function ThrowSpam(mouse)
attack = true
for i = 0,1,0.1 do
wait()
if heromode == true then
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("New Yeller"))
else
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White"))
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
if RageBuff == true then
lolololdur = 0
while hold == true do
wait()
if heromode == true then
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("New Yeller"))
else
if lolololdur >= 60 then
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Bright red"))
else
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White"))
end
end
if lolololdur == 10 then
magicsound(3)
MMMAGIC(prt25,1,1,1,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
rangepower = 30
end
if lolololdur == 30 then
magicsound(2)
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
rangepower = 50
end
if lolololdur == 60 then
magicsound(1)
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,7,7,7,0,0,0,BrickColor.new("Bright red"))
rangepower = 100
RAEG = true
end
lolololdur = lolololdur + 1
end
end
ss(1)
coroutine.resume(coroutine.create(function()
for i = 1,10 do
coroutine.resume(coroutine.create(function()
wait(1)
shoottrail2(mouse)
end))
end
end))
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
prt1.CanCollide = true
shoottrail(mouse)
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1)
prt1.Anchored = false
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
if heromode == false then
else
wait(4)
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
attack = false
rangepower = 10
RAEG = false
end
 
function ThrowSpam2(mouse)
attack = true
for i = 0,1,0.1 do
wait()
if heromode == true then
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("New Yeller"))
else
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White"))
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.1)
if RageBuff == true then
lolololdur = 0
while hold == true do
wait()
if heromode == true then
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("New Yeller"))
else
if lolololdur >= 60 then
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Bright red"))
else
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White"))
end
end
if lolololdur == 10 then
magicsound(3)
MMMAGIC(prt25,1,1,1,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
rangepower = 30
end
if lolololdur == 30 then
magicsound(2)
MMMAGIC(prt25,3,3,3,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
rangepower = 50
end
if lolololdur == 60 then
magicsound(1)
MMMAGIC(prt25,5,5,5,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,7,7,7,0,0,0,BrickColor.new("Bright red"))
rangepower = 100
RAEG = true
end
lolololdur = lolololdur + 1
end
end
ss(1)
coroutine.resume(coroutine.create(function()
for i = 1,30 do
wait(0.1)
coroutine.resume(coroutine.create(function()
shoottrail2(mouse)
end))
end
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
prt1.CanCollide = true
shoottrail(mouse)
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1)
prt1.Anchored = false
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
if heromode == false then
else
wait(4)
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
attack = false
rangepower = 10
RAEG = false
end))
end
 
function WRYYY()
attack = true
if Riding == false then
Riding = true
bod = Instance.new("BodyPosition")
bod.position = Torso.Position + Vector3.new(0,50,0)
bod.Parent = Torso
bod.maxForce = Vector3.new(4e+080, 4e+080, 4e+080)
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
if chariot.Parent == nil then
local c = chariot:children()
for i = 1,#c do
c[i].Transparency = 1
end
local c = chariot:children()
for i = 1,#c do
coroutine.resume(coroutine.create(function(Part)
for i = 0,1,0.1 do
wait(0.1)
Part.Transparency = Part.Transparency - 0.1  
end
end),c[i])
end
wait(0.1)
gairo2.Parent = nil
char1.Anchored = false
chariot.Parent = mien
charw1.Parent = char1
charw1.Part1 = Torso
charw1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3,0)
Character.Humanoid.WalkSpeed = 20
wait(1)
else
gairo2.Parent = nil
char1.Anchored = false
chariot.Parent = mien
charw1.Parent = char1
charw1.Part1 = Torso
charw1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3,0)
Character.Humanoid.WalkSpeed = 20
wait(1)
end
bod.position = Torso.Position - Vector3.new(0,50,0)
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-1.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - char1.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then
                wait()
                WRYHit(head,char1,50)
                end
                end
                end
        end
wait(0.5)
bod.Parent = nil
end
attack = false
end
 
function GroundSlasher()
attack = true
gairo.Parent = Head
gairo.cframe = Head.CFrame
spikecona1=char18.Touched:connect(function(hit) SpikeDamage(hit,10,20) end)
spikecona2=char19.Touched:connect(function(hit) SpikeDamage(hit,10,20) end)
spikecona3=char20.Touched:connect(function(hit) SpikeDamage(hit,10,20) end)
spikecona4=char21.Touched:connect(function(hit) SpikeDamage(hit,10,20) end)
spikecona5=char22.Touched:connect(function(hit) SpikeDamage(hit,10,20) end)
spikecona6=char23.Touched:connect(function(hit) SpikeDamage(hit,10,20) end)
spikecona7=char24.Touched:connect(function(hit) SpikeDamage(hit,10,20) end)
for i = 0,1,0.1 do
wait()
gairo.cframe = Head.CFrame * CFrame.fromEulerAnglesXYZ(-0.1*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
blah = 0
for i = 0,1,0.01 do
wait()
blah = blah + 0.5
charw17.C0 = CFrame.fromEulerAnglesXYZ(0,blah,0) * CFrame.new(0,0,2)
end
gairo.Parent = nil
for i = 0,1,0.1 do
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-3+3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2+2*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
spikecona1:disconnect()
spikecona2:disconnect()
spikecona3:disconnect()
spikecona4:disconnect()
spikecona5:disconnect()
spikecona6:disconnect()
spikecona7:disconnect()
wait(1)
attack = false
end
 
function SpearWave(mouse)
attack = true
spearwave = true
prt1.CanCollide = true
shoottrail(Torso.Position)
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1)
prt1.Anchored = false
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
spearwave = false
attack = false
end
 
function Halo()
if HealBuff == false and mana >= 50 then
attack = true
HealBuff = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
mana = mana - 50
purify(1)
EVENMOARMAGIX(prt25,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
Character.Humanoid.MaxHealth = 200
wait()
Character.Humanoid.Health = Character.Humanoid.Health * 2
local las=Instance.new("Part",workspace)
las.Anchored=true
las.Locked=true
las.CanCollide=false
las.TopSurface=0
las.BottomSurface=0
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("White")
las.Size=Vector3.new(1,1,1)
las.CFrame=CFrame.new((prt25.Position+Torso.Position)/2,Torso.Position) *CFrame.Angles(math.rad(90),0,0)
local msh=Instance.new("SpecialMesh",las)
mag = (prt25.Position-Torso.Position).magnitude
msh.Scale=Vector3.new(1,mag,1)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i = 0,1,0.1 do
wait()
Part.Transparency = Part.Transparency + 0.1
Mesh.Scale = Mesh.Scale + Vector3.new(-0.05,0.7,-0.05)
end
Part.Parent = nil
end),las,msh)
local halo = Instance.new("Part")
halo.Parent = modelzorz
halo.CanCollide = false
halo.BrickColor = BrickColor.new("White")
halo.Position = Torso.Position
halo.Transparency = 1
halo.Size = Vector3.new(1,1,1)
local haloMesh = Instance.new("SpecialMesh")
haloMesh.Parent = halo
haloMesh.MeshType = "Sphere"
haloMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
haloMesh.Scale = Vector3.new(0,1,0)
local haloWeld = Instance.new("Weld")
haloWeld.Parent = halo
haloWeld.Part0 = halo
haloWeld.Part1 = Head
haloWeld.C0 = CFrame.new(0,0,-1.7) * CFrame.fromEulerAnglesXYZ(1.57,0,0)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
attack = false
for i = 0,1,0.1 do
wait()
halo.Transparency = halo.Transparency - 0.1
haloMesh.Scale = haloMesh.Scale + Vector3.new(0.1,0,0.1)
end
while Character.Humanoid.Health >= 100 do
wait()
end
Character.Humanoid.MaxHealth = 100
wait()
for i = 0,1,0.1 do
wait()
halo.Transparency = halo.Transparency + 0.1
end
halo.Parent = nil
HealBuff = false
end
end
 
function HaloOther(mouse)
if mana >= 50 and mouse.Target.Parent:findFirstChild("Humanoid")~=nil then
attack = true
durp = mouse.Target  
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
mana = mana - 50
purify(1)
EVENMOARMAGIX(prt25,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
durp.Parent.Humanoid.MaxHealth = 200
wait()
durp.Parent.Humanoid.Health = durp.Parent.Humanoid.Health * 2
local las=Instance.new("Part",workspace)
las.Anchored=true
las.Locked=true
las.CanCollide=false
las.TopSurface=0
las.BottomSurface=0
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("White")
las.Size=Vector3.new(1,1,1)
las.CFrame=CFrame.new((prt25.Position+durp.Parent.Torso.Position)/2,durp.Parent.Torso.Position) *CFrame.Angles(math.rad(90),0,0)
local msh=Instance.new("SpecialMesh",las)
mag = (prt25.Position-durp.Parent.Torso.Position).magnitude
msh.Scale=Vector3.new(1,mag,1)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i = 0,1,0.1 do
wait()
Part.Transparency = Part.Transparency + 0.1
Mesh.Scale = Mesh.Scale + Vector3.new(-0.05,0.7,-0.05)
end
Part.Parent = nil
end),las,msh)
local halo = Instance.new("Part")
halo.Parent = durp.Parent
halo.CanCollide = false
halo.BrickColor = BrickColor.new("White")
halo.Position = Torso.Position
halo.Transparency = 1
halo.Size = Vector3.new(1,1,1)
local haloMesh = Instance.new("SpecialMesh")
haloMesh.Parent = halo
haloMesh.MeshType = "Sphere"
haloMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
haloMesh.Scale = Vector3.new(0,1,0)
local haloWeld = Instance.new("Weld")
haloWeld.Parent = halo
haloWeld.Part0 = halo
haloWeld.Part1 = durp.Parent:findFirstChild("Head")
haloWeld.C0 = CFrame.new(0,0,-1.7) * CFrame.fromEulerAnglesXYZ(1.57,0,0)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
attack = false
for i = 0,1,0.1 do
wait()
halo.Transparency = halo.Transparency - 0.1
haloMesh.Scale = haloMesh.Scale + Vector3.new(0.1,0,0.1)
end
while durp.Parent.Humanoid.Health >= 100 do
wait()
end
durp.Parent.Humanoid.MaxHealth = 100
wait()
if halo.Parent ~= nil then
for i = 0,1,0.1 do
wait()
halo.Transparency = halo.Transparency + 0.1
end
halo.Parent = nil
end
end
end
 
function HealOther(mouse)
if mana >= 20 and mouse.Target.Parent:findFirstChild("Humanoid")~=nil then
attack = true
durp = mouse.Target  
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
mana = mana - 20
purify(1)
EVENMOARMAGIX(prt25,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
EVENMOARMAGIX(durp.Parent.Torso,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
durp.Parent.Humanoid.Health = durp.Parent.Humanoid.Health + 20
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
attack = false
end
end
 
function BuffWalk()
if WalkBuff == false and mana >= 50 then
attack = true
WalkBuff = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
mana = mana - 50
lasersound(1)
EVENMOARMAGIX(prt25,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 5
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
attack = false
for i = 0,120 do
wait(0.1)
if LeftLeg~=nil then
MMMAGIC(LeftLeg,2,2,2,0,-0.8,0,BrickColor.new("White"))
end
if RightLeg~=nil then
MMMAGIC(RightLeg,2,2,2,0,-0.8,0,BrickColor.new("White"))
end
end
Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed - 5
WalkBuff = false
end
end
 
function BuffWalkOther(mouse)
if mana >= 50 and mouse.Target.Parent:findFirstChild("Humanoid")~=nil then
attack = true
durp = mouse.Target  
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
mana = mana - 50
lasersound(1)
EVENMOARMAGIX(prt25,5,3,5,0,0,0,0,0,0,BrickColor.new("White"))
durp.Parent.Humanoid.WalkSpeed = durp.Parent.Humanoid.WalkSpeed + 5
local las=Instance.new("Part",workspace)
las.Anchored=true
las.Locked=true
las.CanCollide=false
las.TopSurface=0
las.BottomSurface=0
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("White")
las.Size=Vector3.new(1,1,1)
las.CFrame=CFrame.new((prt25.Position+durp.Parent.Torso.Position)/2,durp.Parent.Torso.Position) *CFrame.Angles(math.rad(90),0,0)
local msh=Instance.new("SpecialMesh",las)
mag = (prt25.Position-durp.Parent.Torso.Position).magnitude
msh.Scale=Vector3.new(1,mag,1)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i = 0,1,0.1 do
wait()
Part.Transparency = Part.Transparency + 0.1
Mesh.Scale = Mesh.Scale + Vector3.new(-0.05,0.7,-0.05)
end
Part.Parent = nil
end),las,msh)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
attack = false
coroutine.resume(coroutine.create(function(Him)
for i = 0,120 do
wait(0.1)
if Him.Parent:findFirstChild("Left Leg")~=nil then
MMMAGIC(Him.Parent["Left Leg"],2,2,2,0,-0.8,0,BrickColor.new("White"))
end
if Him.Parent:findFirstChild("Right Leg")~=nil then
MMMAGIC(Him.Parent["Right Leg"],2,2,2,0,-0.8,0,BrickColor.new("White"))
end
end
Him.Parent.Humanoid.WalkSpeed = Him.Parent.Humanoid.WalkSpeed - 5
end),durp)
end
end
 
function BuffRage(mouse)
if RageBuff == false and mana >= 100 then
attack = true
RageBuff = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
mana = mana - 100
lasersound(1)
EVENMOARMAGIX(prt25,5,3,5,0,0,0,0,0,0,BrickColor.new("Bright red"))
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
attack = false
for i = 1,10 do
wait(1)
        local msh1 = Instance.new("SpecialMesh")
        msh1.Scale = Vector3.new(0.5,0.5,0.5)
        msh1.MeshType = "Sphere"
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=BrickColor.new("Bright red")
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=prt25.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
        S.Parent=Character
        msh1.Parent = S
        W=Instance.new("Weld")
        W.Parent=S
        W.Part0=S
        W.Part1=prt25
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
 
end
RageBuff = false
end
end
 
function HealOther(mouse)
if mana >= 0 then
attack = true
Healing = true
durp = mouse.Target
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
if mouse.Hit.p ~= nil then
purify(1)
local las=Instance.new("Part")
las.Parent = modelzorz
las.Anchored=true
las.Locked=true
las.CanCollide=false
las.TopSurface=0
las.BottomSurface=0
las.FormFactor = "Custom"
las.Transparency = 1
las.BrickColor=BrickColor.new("White")
las.Size=Vector3.new(1,1,1)
las.CFrame=CFrame.new(mouse.Hit.p)
local msh=Instance.new("SpecialMesh",las)
msh.Scale=Vector3.new(10,5000,10)
local las2=Instance.new("Part",modelzorz)
las2.Anchored=true
las2.Locked=true
las2.CanCollide=false
las2.TopSurface=0
las2.BottomSurface=0
las2.FormFactor = "Custom"
las2.BrickColor=BrickColor.new("White")
las2.Size=Vector3.new(1,1,1)
las2.CFrame=CFrame.new((prt25.Position+las.Position)/2,las.Position) *CFrame.Angles(math.rad(90),0,0)
las2.Transparency = 1
local msh2=Instance.new("SpecialMesh",las2)
mag = (prt25.Position-las.Position).magnitude
msh2.Scale=Vector3.new(1,mag,1)
for i = 0,1,0.1 do
wait()
las.Transparency = las.Transparency - 0.05
las2.Transparency = las2.Transparency - 0.05
end
while mouse.Target ~= nil and mouse.Hit.p ~= nil and las.Parent ~= nil and las2.Parent ~= nil and Healing == true and mana >= 0 do
wait()
if heromode == false then
mana = mana - 1
end
durp = mouse.Target
if durp.Parent:findFirstChild("Humanoid")~=nil then
durp.Parent.Humanoid.Health = durp.Parent.Humanoid.Health + 1
end
las.CFrame=CFrame.new(mouse.Hit.p)
las2.CFrame=CFrame.new((prt25.Position+las.Position)/2,las.Position) *CFrame.Angles(math.rad(90),0,0)
mag = (prt25.Position-las.Position).magnitude
msh2.Scale=Vector3.new(1,mag,1)
end
for i = 0,1,0.1 do
wait()
las.Transparency = las.Transparency + 0.05
las2.Transparency = las2.Transparency + 0.05
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5-1.5*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
las.Parent = nil
las2.Parent = nil
attack = false
end
end
end
 
--[[function ChariotThrow()
attack = true
for i = 0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-3*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
for i = 0,1,0.1 do
wait()
charw1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3,50*i*i)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-3+4*i*i,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2+4*i*i,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait(0.5)
charw1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3,0)
wait(0.5)
attack = false
end ]]
 
spread = 0
range = 1000
rangepower = 10
function shoottrail(mouse)
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (prt1.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((prt1.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(prt1.Position,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(2,0.5,2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
if heromode == true then
effectsg.BrickColor = BrickColor.new("New Yeller")
else
effectsg.BrickColor = BrickColor.new("Black")
end
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
--prt25.CFrame = effectsg.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),1.57,0)
prt25.CFrame = effectsg.CFrame * CFrame.fromEulerAnglesXYZ(-1.57,0,1.57)
wld1.Part0 = prt25
wld1.Part1 = effectsg
--wld1.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57)
wld1.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57)
wld1.C1 = CFrame.new(0,0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
prt1.CFrame = effectsg.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),1.57,0)
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end
effectsg.Parent = nil
end))
end
local newpos = prt1.Position
local inc = rangepower
repeat
wait()
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
effectsmsh.TextureId = "http://www.roblox.com/asset/?id=15886781"
effectsmsh.Scale = Vector3.new(1,1,2.5)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = nil
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
prt1.CFrame = effectsg.CFrame
wld1.Part0 = prt1
wld1.Part1 = hit
--local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5)
prt1.CFrame = CFrame.new(HitPos) * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local CJ = CFrame.new(HitPos)
local C0 = prt1.CFrame:inverse() * CJ
local C1 = hit.CFrame:inverse() * CJ
wld1.C0 = C0
wld1.C1 = C1
wld1.Parent = prt1
Damg = 40
hs(0.8)
if RAEG == true then
magicsound(1)
Damg=Damg+10
MMMAGIC(prt25,10,10,10,0,0,0,BrickColor.new("Bright red"))
MMMAGIC(prt25,8,8,8,0,0,0,BrickColor.new("Bright yellow"))
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - prt25.Position;
                local mag = targ.magnitude;
                if mag <= 15 and c[i].Name ~= Player.Name then
                wait()
                DBHit(head,prt25,10)
                end
                end
                end
        end
end
if Imbued == true or heromode == true then
magicsound(0.7)
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - prt25.Position;
                local mag = targ.magnitude;
                if mag <= 15 and c[i].Name ~= Player.Name then
                wait()
                if heromode == true and Bouncing == true then
                DBHit(head,prt25,5)
                else
                DBHit(head,prt25,30)
                end
                end
                end
                end
        end
        local msh1 = Instance.new("SpecialMesh") --Messy Script incoming >_>
        msh1.Scale = Vector3.new(0.01,0.01,0.01)
        msh1.MeshType = "Sphere"
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(3,3,3)
        if heromode == true then
        S.BrickColor=BrickColor.new("New Yeller")
        else
        S.BrickColor=BrickColor.new("White")
        end
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=prt25.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        if heromode == true and Bouncing == true then
        S.Parent=Character
        else
        S.Parent=workspace
        end
        msh1.Parent = S
        r=Instance.new("Part")
        r.Anchored=true
        r.Name="Ring"
        r.CanCollide=false
        r.TopSurface=0
        r.BottomSurface=0
        r.CFrame=prt25.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(1,0,0)
        r.Parent=workspace
        local ring = Instance.new("SpecialMesh")
        ring.Parent = r
        ring.MeshId = "http://www.roblox.com/asset/?id=3270017"
        ring.Name = "RingMesh"
        r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
        if heromode == true then
        r.BrickColor=BrickColor.new("New Yeller")
        else
        r.BrickColor=BrickColor.new("White")
        end
        if heromode == true and Bouncing == true then
        coroutine.resume(coroutine.create(function(par) for i=1, 9 do par.Transparency=i/9 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
        else
        coroutine.resume(coroutine.create(function(par) for i=1, 14 do par.Transparency=i/14 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
        end
        r=Instance.new("Part")
        r.Anchored=true
        r.Name="Ring"
        r.CanCollide=false
        r.TopSurface=0
        r.BottomSurface=0
        r.CFrame=prt25.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(-1,0,0)
        if heromode == true and Bouncing == true then
        r.Parent=Character
        else
        r.Parent=workspace
        end
        local ring = Instance.new("SpecialMesh")
        ring.Parent = r
        ring.MeshId = "http://www.roblox.com/asset/?id=3270017"
        ring.Name = "RingMesh"
        r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
        if heromode == true then
        r.BrickColor=BrickColor.new("New Yeller")
        else
        r.BrickColor=BrickColor.new("White")
        end
        if heromode == true and Bouncing == true then
        coroutine.resume(coroutine.create(function(par) for i=1, 9 do par.Transparency=i/9 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
        else
        coroutine.resume(coroutine.create(function(par) for i=1, 14 do par.Transparency=i/14 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
        end
        if heromode == true and Bouncing == true then
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
        else
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)
        end
 
        local msh1 = Instance.new("SpecialMesh")
        msh1.Scale = Vector3.new(0.01,0.01,0.01)
        msh1.MeshType = "Sphere"
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(3,3,3)
        if heromode == true then
        S.BrickColor=BrickColor.new("New Yeller")
        else
        S.BrickColor=BrickColor.new("White")
        end
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=prt25.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        if heromode == true and Bouncing == true then
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
        else
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)
        end
 
        local msh1 = Instance.new("SpecialMesh")
        msh1.Scale = Vector3.new(1,0.5,1)
        msh1.MeshType = "Sphere"
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(8,8,8)
        if heromode == true then
        S.BrickColor=BrickColor.new("New Yeller")
        else
        S.BrickColor=BrickColor.new("White")
        end
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=prt25.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
        if heromode == true and Bouncing == true then
        S.Parent=Character
        else
        S.Parent=workspace
        end
        msh1.Parent = S
        if heromode == true and Bouncing == true then
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
        else
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 18 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.05 wait() end Part.Parent=nil end),S,S.CFrame)
        end
Imbued = false
end
coroutine.resume(coroutine.create(function()
wait(15)
effectsg.Parent = nil
end))
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
Damagefunc1(hit,Damg,15)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
Damagefunc1(hit,Damg,15)
end
end
end
 
spread2 = 500
range2 = 1000
rangepower = 10
function shoottrail2(mouse)
local spreadvector = (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (prt1.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((prt1.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit2,pos = rayCast(prt1.Position,dir.lookVector,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(2,0.2,2)
effectsg.Parent = Character
effectsmsh.Parent = effectsg
if heromode == true then
effectsg.BrickColor = BrickColor.new("New Yeller")
else
if RAEG == true then
effectsg.BrickColor = BrickColor.new("Bright red")
else
effectsg.BrickColor = BrickColor.new("white")
end
end
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end
effectsg.Parent = nil
end))
end
local newpos = prt1.Position
local inc = rangepower
repeat
wait()
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit2,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit2 ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
if heromode == true then
effectsg.BrickColor = BrickColor.new("New Yeller")
else
if RAEG == true then
effectsg.BrickColor = BrickColor.new("Bright red")
else
effectsg.BrickColor = BrickColor.new("white")
end
end
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local efwel = Instance.new("Weld")
efwel.Parent = effectsg
efwel.Part0 = effectsg
efwel.Part1 = hit2
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5)
local CJ = CFrame.new(HitPos)
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ
efwel.C0 = C0
efwel.C1 = C1
efwel.Parent = effectsg
Damg = 20
if RAEG == true then
Damg=Damg+5
end
hs(0.8)
if heromode == true then
magicsound(0.7)
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - effectsg.Position;
                local mag = targ.magnitude;
                if mag <= 15 and c[i].Name ~= Player.Name then
                wait()
                DBHit(head,effectsg,5)
                end
                end
                end
        end
        local msh1 = Instance.new("SpecialMesh") --Messy Script incoming >_>
        msh1.Scale = Vector3.new(0.01,0.01,0.01)
        msh1.MeshType = "Sphere"
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(3,3,3)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        r=Instance.new("Part")
        r.Anchored=true
        r.Name="Ring"
        r.CanCollide=false
        r.TopSurface=0
        r.BottomSurface=0
        r.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(1,0,0)
        r.Parent=workspace
        local ring = Instance.new("SpecialMesh")
        ring.Parent = r
        ring.MeshId = "http://www.roblox.com/asset/?id=3270017"
        ring.Name = "RingMesh"
        r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
        r.BrickColor=BrickColor.new("New Yeller")
        coroutine.resume(coroutine.create(function(par) for i=1, 9 do par.Transparency=i/9 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
        r=Instance.new("Part")
        r.Anchored=true
        r.Name="Ring"
        r.CanCollide=false
        r.TopSurface=0
        r.BottomSurface=0
        r.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(-1,0,0)
        r.Parent=workspace
        local ring = Instance.new("SpecialMesh")
        ring.Parent = r
        ring.MeshId = "http://www.roblox.com/asset/?id=3270017"
        ring.Name = "RingMesh"
        r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
        r.BrickColor=BrickColor.new("New Yeller")
        coroutine.resume(coroutine.create(function(par) for i=1, 9 do par.Transparency=i/9 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
 
        local msh1 = Instance.new("SpecialMesh")
        msh1.Scale = Vector3.new(0.01,0.01,0.01)
        msh1.MeshType = "Sphere"
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(3,3,3)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
 
        local msh1 = Instance.new("SpecialMesh")
        msh1.Scale = Vector3.new(1,0.5,1)
        msh1.MeshType = "Sphere"
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(8,8,8)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end
coroutine.resume(coroutine.create(function()
wait(3)
effectsg.Parent = nil
end))
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce = false
Damagefunc1(hit2,Damg,15)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce = false
Damagefunc1(hit2,Damg,15)
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
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
function hs(pitch)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://roblox.com/asset/?id=10209590"
SlashSound.Parent = workspace
SlashSound.Volume = .5
SlashSound.Pitch = pitch
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait(0)
SlashSound.Parent = nil
end))
end
function purify(pitch)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://roblox.com/asset/?id=2101144"
SlashSound.Parent = workspace
SlashSound.Volume = .5
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
        if h==nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                if mana < 400 then
                mana = mana + math.random(20,30)  
                end
                if mana > 400 then
                mana = 400
                end
                if Bouncing == false then
                if HeroBar < 400 then
                HeroBar = HeroBar + math.random(5,15)  
                end
                if HeroBar > 400 then
                HeroBar = 400
                end
                end
                if heromode == false then
                Damage=Damage
                else
                Damage=Damage*1.5
                end
--[[            if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil or game.Players:GetPlayerFromCharacter(hit.Parent.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                      print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*1.5
--[[                    Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2)
       
                end
                Damage=Damage+math.random(0,10)
--              Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--              vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[            r=Instance.new("BodyAngularVelocity")
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
 
DBHit=function(hit,DB,Dmg) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        if h==nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                if Bouncing == false then
                if HeroBar < 400 then
                HeroBar = HeroBar + math.random(5,15)  
                end
                if HeroBar > 400 then
                HeroBar = 400
                end
                end
                if heromode == false then
                Damage=Dmg+math.random(0,9)
                else
                Damage=Dmg+math.random(2,10)
                end
                h:TakeDamage(Damage)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                showDamage(hit.Parent,Damage,.5)
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--              DBExplode(DB)
        end
end
 
WRYHit=function(hit,DB,Dmg) --credits to turdulator for making this function :D
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
                mana = mana + math.random(10,30)  
                end
                if mana > 400 then
                mana = 400
                end
                if Bouncing == false then
                if HeroBar < 400 then
                HeroBar = HeroBar + math.random(5,15)  
                end
                if HeroBar > 400 then
                HeroBar = 400
                end
                end
                if heromode == false then
                Damage=Dmg+math.random(0,9)
                else
                Damage=Dmg+math.random(2,10)
                end
                h:TakeDamage(Damage)
                critsound(2)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                showDamage(hit.Parent,Damage,.5)
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--              DBExplode(DB)
        end
end
 
SpikeDamage=function(hit,Damage,Knockback)
        if attackdebounce == false then
        attackdebounce = true
        coroutine.resume(coroutine.create(function()
        wait(0.5)
        attackdebounce = false
        end))
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                if mana < 400 then
                mana = mana + math.random(5,10)  
                end
                if mana > 400 then
                mana = 400
                end
                if Bouncing == false then
                if HeroBar < 400 then
                HeroBar = HeroBar + math.random(5,15)  
                end
                if HeroBar > 400 then
                HeroBar = 400
                end
                end
                if heromode == false then
                Damage=Damage
                else
                Damage=Damage*1.5
                end
--[[            if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                      print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*1.5
--[[                    Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2)
       
                end
                Damage=Damage+math.random(0,10)
--              Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--              vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[            r=Instance.new("BodyAngularVelocity")
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
if mode == "Normal" then
if combo == 0 then
combo = 1
onehit()
coroutine.resume(coroutine.create(function()
wait(0.5)
if attack == false then
combo = 0
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
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
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
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
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end))
elseif combo == 3 then
combo = 4
fourhit(mouse)
wait(0.5)
combo = 0
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
elseif mode == "Throw" then
SpearThrow(mouse)
end
end
 
function ob1u(mouse)
hold = false
end
 
buttonhold = false
 
function Key(key,mouse)
if key == "q" then
if Resting == true then
Resting = false
Sleeping = true
end
end
if key == "k" then
if Riding == true then
if Resting == false and Sleeping == false then
Sleeping = false
Rest()
elseif Resting == true then
Sleeping = false
Resting = false
end
end
end
if key == "t" then
coroutine.resume(coroutine.create(function()
wait(0.1)
rangepower = 10
spread = 0
range = 1000
range2 = 1000
spread2 = 500
cloning = 0
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0)
wld1.C1 = CFrame.new(0,0,0)
Bouncing = false
attack = false
end))
end
if attack == true then return end
if key == "q" then
Change()
end
--[[NORMAL ATTACKS]]--
if key == "e" then
if Riding == false then
SpinSlash()
else
GroundSlasher()
end
end
if key == "r" then
hold = true
--SpearWave(mouse)
SpearThrow2(mouse)
end
if key == "t" then
BouncingSpear(mouse)
end
if key == "y" then
if Riding == true then
ThrowSpam(mouse)
else
ThrowSpam2(mouse)
end
end
--[[MISC MOVES]]--
if key == "f" then
ChariotSummon()
end
if key == "g" then
WRYYY()
end
if key == "h" then
HeroMode()
end
if key == "j" then
if Imbued == false then
Imbue()
end
end
--[[BUFF ATTACKS]]--
if key == "z" then
if Riding == false then
else
Halo()
end
end
if key == "x" then
if Riding == false then
else
HaloOther(mouse)
end
end
if key == "c" then
if Riding == false then
else
HealOther(mouse)
end
end
--[[if key == "v" then
if Riding == false then
else
BuffWalk()
end
end ]]
if key == "v" then
if Riding == false then
else
BuffWalkOther(mouse)
end
end
if key == "b" then
if Riding == false then
else
BuffRage(mouse)
end
end
end
 
function key2(key,mouse)
if key == "c" then
Healing = false
end
if key == "r" then
hold = false
end
end
 
function s(mouse)
mouse.Button1Down:connect(function() ob1d(mouse) end)
mouse.Button1Up:connect(function() ob1u(mouse) end)
mouse.KeyDown:connect(function(key) Key(key,mouse) end)
--mouse.KeyDown:connect(key,mouse)
mouse.KeyUp:connect(key2,mouse)
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
--[[for i = 0,1,0.1 do
wait()
if attack == false then
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end ]]
        else
walking = false
--[[for i = 0,1,0.1 do
wait()
if attack == false then
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end ]]
        end
end
Character.Humanoid.Running:connect(onRunning)
 
dur = 0
coroutine.resume(coroutine.create(function()
while true do
wait(0)
if Riding == true then
if Torso.Velocity.magnitude > 1 then
spikecon=char17.Touched:connect(function(hit) SpikeDamage(hit,10,30) end)
--if Resting == false then
coroutine.resume(coroutine.create(function()
if Resting == false or Sleeping == false then
if idle == true then
idle = false
for i = 0,1,0.2 do
wait(0)
RW2.C0 = CFrame.new(0, -1.5, -0.3) * CFrame.fromEulerAnglesXYZ(0.8-0.1*i,0,0)
end
end
end
end))
dur = dur + 0.3
charw17.C0 = CFrame.fromEulerAnglesXYZ(0,dur,0) * CFrame.new(0,0,2)
--end
elseif Torso.Velocity.magnitude < 2 then
wait(0)
coroutine.resume(coroutine.create(function()
if Resting == false or Sleeping == false then
if idle == false then
idle = true
for i = 0,1,0.2 do
wait(0)
RW2.C0 = CFrame.new(0, -1.5, -0.3) * CFrame.fromEulerAnglesXYZ(0.8-0.1+0.1*i,0,0)
end
end
end
end))
--end
if spikecon ~= nil then
spikecon:disconnect()
end
end
end
end
end))
blehbeh = 0
while true do
wait(0)  
blehbeh = blehbeh + 1
if blehbeh == 5 then
if mana < 400 then
mana = mana + 1
end
blehbeh = 0
end
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Mana("..mana..")"
fentext3.BackgroundColor3 = Color3.new(1,1,1)
fentext6.Size = UDim2.new(HeroBar*0.007,0,0.200000006,0)
end
 
 
-- mediafire