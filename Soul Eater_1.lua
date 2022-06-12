Player = game:GetService("Players").ace28545
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
attacktype = 1
mindamage = 5
maxdamage = 30
crtmaxdamage = 60
omindamage = 5
omaxdamage = 30
ocrtmaxdamage = 60
crtrate = 12
ssh = false
atktypez = 1
Hitdeb = 0
--player
player = nil
--save shoulders
RSH, LSH , RHL, LHL = nil, nil , nil , nil
--welds
RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")
--what anim
anim = "none"
--other var
player = Player
ch = Character
aa = false
AoETrue = {}
function RWFunc()
        RSH = ch.Torso["Right Shoulder"]
        RW.Part0 = ch.Torso
        RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        RW.Part1 = ch["Right Arm"]
        RW.Parent = ch.Torso
end
function LWFunc()
        LSH = ch.Torso["Left Shoulder"]
        LW.Part0 = ch.Torso
        LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
        LW.C1 = CFrame.new(0, 0.5, 0)
        LW.Part1 = ch["Left Arm"]
        LW.Parent = ch.Torso
end
function RWLFunc()
        RHL = ch.Torso["Right Hip"]
        RWL.Part0 = ch.Torso
        RWL.C0 = CFrame.new(1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
        RWL.C1 = CFrame.new(0.5, 1, 0)
        RWL.Part1 = ch["Right Leg"]
        RWL.Parent = ch.Torso
end
function LWLFunc()
        LHL = ch.Torso["Left Hip"]
        LWL.Part0 = ch.Torso
        LWL.C0 = CFrame.new(-1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
        LWL.C1 = CFrame.new(-0.5, 1, 0)
        LWL.Part1 = ch["Left Leg"]
        LWL.Parent = ch.Torso
end
function RWLRem()
        RWL.Parent = nil
        RHL.Parent = player.Character.Torso
end
function LWLRem()
        LWL.Parent = nil
        LHL.Parent = player.Character.Torso
end
function LegsFix()
coroutine.resume(coroutine.create(function()
wait(0.2)
        RWL.Parent = nil
        LWL.Parent = nil
        wait()
        LHL.Parent = player.Character.Torso
        RHL.Parent = player.Character.Torso
end))
end
function RWRem()
        RW.Parent = nil
        RSH.Parent = player.Character.Torso
end
function LWRem()
        LW.Parent = nil
        LSH.Parent = player.Character.Torso
end
if Character:findFirstChild("SoulEater",true) ~= nil then
Character:findFirstChild("SoulEater",true).Parent = nil
end
if Character:findFirstChild("Weapon",true) ~= nil then
Character:findFirstChild("Weapon",true).Parent = nil
end
local swordholder = Instance.new("Model")
swordholder.Name = "SoulEater"
swordholder.Parent = Character
bladecolor = BrickColor.new("Gold")
handlecolor = BrickColor.new("Really black")
local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(0.2,3,0.2)
msh1.Offset = Vector3.new(0,0.5,0)
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(0.1,0.9125,0.5)
msh2.Offset = Vector3.new(0,-0.2,0)
local msh3 = Instance.new("SpecialMesh")
msh3.Scale = Vector3.new(0.1,0.25,0.25)
msh3.MeshType = "Wedge"
local msh4 = Instance.new("SpecialMesh")
msh4.Scale = Vector3.new(0.1,0.25,0.25)
msh4.MeshType = "Wedge"
local msh5 = Instance.new("SpecialMesh")
msh5.Scale = Vector3.new(0.251,0.75,0.5)
msh5.MeshType = "Sphere"
local msh6 = Instance.new("SpecialMesh")
msh6.Scale = Vector3.new(0.275,0.65,0.45)
msh6.MeshType = "Sphere"
local msh7 = Instance.new("SpecialMesh")
msh7.Scale = Vector3.new(0.1,0.25,0.1)
msh7.MeshType = "Wedge"
local msh8 = Instance.new("SpecialMesh")
msh8.Scale = Vector3.new(0.1,0.25,0.1)
msh8.MeshType = "Wedge"
local msh9 = Instance.new("SpecialMesh")
msh9.Scale = Vector3.new(0.1,0.125,0.1)
msh9.MeshType = "Wedge"
local msh10 = Instance.new("SpecialMesh")
msh10.Scale = Vector3.new(0.1,0.125,0.1)
msh10.MeshType = "Wedge"
local msh11 = Instance.new("SpecialMesh")
msh11.Scale = Vector3.new(0.1,0.125,0.1)
msh11.MeshType = "Wedge"
local msh12 = Instance.new("SpecialMesh")
msh12.Scale = Vector3.new(0.1,0.125,0.1)
msh12.MeshType = "Wedge"
local msh13 = Instance.new("SpecialMesh")
msh13.Scale = Vector3.new(0.1,0.125,0.1)
msh13.MeshType = "Wedge"
local msh14 = Instance.new("SpecialMesh")
msh14.Scale = Vector3.new(0.1,0.125,0.1)
msh14.MeshType = "Wedge"
local msh15 = Instance.new("SpecialMesh")
msh15.Scale = Vector3.new(0.1,0.125,0.1)
msh15.MeshType = "Wedge"
local msh16 = Instance.new("SpecialMesh")
msh16.Scale = Vector3.new(0.1,0.125,0.1)
msh16.MeshType = "Wedge"
local msh17 = Instance.new("SpecialMesh")
msh17.Scale = Vector3.new(0.1,0.5,0.1)
msh17.MeshType = "Wedge"
local msh18 = Instance.new("SpecialMesh")
msh18.Scale = Vector3.new(0.1,0.5,0.1)
msh18.MeshType = "Wedge"
local msh19 = Instance.new("SpecialMesh")
msh19.Scale = Vector3.new(0.1,0.25,0.1)
msh19.MeshType = "Wedge"
local msh20 = Instance.new("SpecialMesh")
msh20.Scale = Vector3.new(0.1,0.25,0.1)
msh20.MeshType = "Wedge"
local msh21 = Instance.new("SpecialMesh")
msh21.Scale = Vector3.new(0.1,0.125,0.1)
msh21.MeshType = "Wedge"
local msh22 = Instance.new("SpecialMesh")
msh22.Scale = Vector3.new(0.1,0.125,0.1)
msh22.MeshType = "Wedge"
local msh23 = Instance.new("SpecialMesh")
msh23.Scale = Vector3.new(0.1,0.375,0.2)
msh23.MeshType = "Wedge"
local msh24 = Instance.new("SpecialMesh")
msh24.Scale = Vector3.new(0.1,0.375,0.2)
msh24.MeshType = "Wedge"
local msh25 = Instance.new("SpecialMesh")
msh25.Scale = Vector3.new(0.1,0.0625,0.2)
msh25.MeshType = "Wedge"
local msh26 = Instance.new("SpecialMesh")
msh26.Scale = Vector3.new(0.1,0.0625,0.2)
msh26.MeshType = "Wedge"
local msh27 = Instance.new("SpecialMesh")
msh27.Scale = Vector3.new(0.1,0.5,0.3)
msh27.MeshType = "Wedge"
local msh28 = Instance.new("SpecialMesh")
msh28.Scale = Vector3.new(0.1,0.5,0.3)
msh28.MeshType = "Wedge"
local msh29 = Instance.new("CylinderMesh")
msh29.Scale = Vector3.new(0.2,0.5,0.2)
local msh30 = Instance.new("CylinderMesh")
msh30.Scale = Vector3.new(0.2,0.5,0.2)
local msh31 = Instance.new("SpecialMesh")
msh31.Scale = Vector3.new(0.2,0.25,0.2)
msh31.MeshType = "Wedge"
local msh32 = Instance.new("SpecialMesh")
msh32.Scale = Vector3.new(0.2,0.25,0.2)
msh32.MeshType = "Wedge"
local prt1 = Instance.new("Part")
prt1.formFactor = 1
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(1,1,1)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 1
prt2.CanCollide = false
prt2.Name = "Blade"
prt2.Locked = true
prt2.Size = Vector3.new(1,4,1)
prt2.Parent = swordholder
prt2.Reflectance = 0.25
msh2.Parent = prt2
prt2.BrickColor = bladecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 1
prt3.CanCollide = false
prt3.Name = "BladeTip1"
prt3.Locked = true
prt3.Size = Vector3.new(1,1,1)
prt3.Parent = swordholder
prt3.Reflectance = 0.25
msh3.Parent = prt3
prt3.BrickColor = bladecolor
local prt4 = Instance.new("Part")
prt4.formFactor = 1
prt4.CanCollide = false
prt4.Name = "BladeTip2"
prt4.Locked = true
prt4.Size = Vector3.new(1,1,1)
prt4.Parent = swordholder
prt4.Reflectance = 0.25
msh4.Parent = prt4
prt4.BrickColor = bladecolor
local prt5 = Instance.new("Part")
prt5.formFactor = 1
prt5.CanCollide = false
prt5.Name = "BladeP1"
prt5.Locked = true
prt5.Size = Vector3.new(1,1,1)
prt5.Parent = swordholder
prt5.Reflectance = 0
msh5.Parent = prt5
prt5.BrickColor = handlecolor
local prt6 = Instance.new("Part")
prt6.formFactor = 1
prt6.CanCollide = false
prt6.Name = "BladeP2"
prt6.Locked = true
prt6.Size = Vector3.new(1,1,1)
prt6.Parent = swordholder
prt6.Reflectance = 0.2
msh6.Parent = prt6
prt6.BrickColor = bladecolor
local prt7 = Instance.new("Part")
prt7.formFactor = 1
prt7.CanCollide = false
prt7.Name = "BladeP3"
prt7.Locked = true
prt7.Size = Vector3.new(1,1,1)
prt7.Parent = swordholder
prt7.Reflectance = 0.25
msh7.Parent = prt7
prt7.BrickColor = bladecolor
local prt8 = Instance.new("Part")
prt8.formFactor = 1
prt8.CanCollide = false
prt8.Name = "BladeP4"
prt8.Locked = true
prt8.Size = Vector3.new(1,1,1)
prt8.Parent = swordholder
prt8.Reflectance = 0.25
msh8.Parent = prt8
prt8.BrickColor = bladecolor
local prt9 = Instance.new("Part")
prt9.formFactor = 1
prt9.CanCollide = false
prt9.Name = "BladeP5"
prt9.Locked = true
prt9.Size = Vector3.new(1,1,1)
prt9.Parent = swordholder
prt9.Reflectance = 0.25
msh9.Parent = prt9
prt9.BrickColor = bladecolor
local prt10 = Instance.new("Part")
prt10.formFactor = 1
prt10.CanCollide = false
prt10.Name = "BladeP6"
prt10.Locked = true
prt10.Size = Vector3.new(1,1,1)
prt10.Parent = swordholder
prt10.Reflectance = 0.25
msh10.Parent = prt10
prt10.BrickColor = bladecolor
local prt11 = Instance.new("Part")
prt11.formFactor = 1
prt11.CanCollide = false
prt11.Name = "BladeP7"
prt11.Locked = true
prt11.Size = Vector3.new(1,1,1)
prt11.Parent = swordholder
prt11.Reflectance = 0.25
msh11.Parent = prt11
prt11.BrickColor = bladecolor
local prt12 = Instance.new("Part")
prt12.formFactor = 1
prt12.CanCollide = false
prt12.Name = "BladeP8"
prt12.Locked = true
prt12.Size = Vector3.new(1,1,1)
prt12.Parent = swordholder
prt12.Reflectance = 0.25
msh12.Parent = prt12
prt12.BrickColor = bladecolor
local prt13 = Instance.new("Part")
prt13.formFactor = 1
prt13.CanCollide = false
prt13.Name = "BladeP9"
prt13.Locked = true
prt13.Size = Vector3.new(1,1,1)
prt13.Parent = swordholder
prt13.Reflectance = 0.25
msh13.Parent = prt13
prt13.BrickColor = bladecolor
local prt14 = Instance.new("Part")
prt14.formFactor = 1
prt14.CanCollide = false
prt14.Name = "BladeP10"
prt14.Locked = true
prt14.Size = Vector3.new(1,1,1)
prt14.Parent = swordholder
prt14.Reflectance = 0.25
msh14.Parent = prt14
prt14.BrickColor = bladecolor
local prt15 = Instance.new("Part")
prt15.formFactor = 1
prt15.CanCollide = false
prt15.Name = "BladeP11"
prt15.Locked = true
prt15.Size = Vector3.new(1,1,1)
prt15.Parent = swordholder
prt15.Reflectance = 0.25
msh15.Parent = prt15
prt15.BrickColor = bladecolor
local prt16 = Instance.new("Part")
prt16.formFactor = 1
prt16.CanCollide = false
prt16.Name = "BladeP12"
prt16.Locked = true
prt16.Size = Vector3.new(1,1,1)
prt16.Parent = swordholder
prt16.Reflectance = 0.25
msh16.Parent = prt16
prt16.BrickColor = bladecolor
local prt17 = Instance.new("Part")
prt17.formFactor = 1
prt17.CanCollide = false
prt17.Name = "BladeP13"
prt17.Locked = true
prt17.Size = Vector3.new(1,1,1)
prt17.Parent = swordholder
prt17.Reflectance = 0.25
msh17.Parent = prt17
prt17.BrickColor = bladecolor
local prt18 = Instance.new("Part")
prt18.formFactor = 1
prt18.CanCollide = false
prt18.Name = "BladeP14"
prt18.Locked = true
prt18.Size = Vector3.new(1,1,1)
prt18.Parent = swordholder
prt18.Reflectance = 0.25
msh18.Parent = prt18
prt18.BrickColor = bladecolor
local prt19 = Instance.new("Part")
prt19.formFactor = 1
prt19.CanCollide = false
prt19.Name = "BladeP15"
prt19.Locked = true
prt19.Size = Vector3.new(1,1,1)
prt19.Parent = swordholder
prt19.Reflectance = 0.25
msh19.Parent = prt19
prt19.BrickColor = bladecolor
local prt20 = Instance.new("Part")
prt20.formFactor = 1
prt20.CanCollide = false
prt20.Name = "BladeP16"
prt20.Locked = true
prt20.Size = Vector3.new(1,1,1)
prt20.Parent = swordholder
prt20.Reflectance = 0.25
msh20.Parent = prt20
prt20.BrickColor = bladecolor
local prt21 = Instance.new("Part")
prt21.formFactor = 1
prt21.CanCollide = false
prt21.Name = "BladeP17"
prt21.Locked = true
prt21.Size = Vector3.new(1,1,1)
prt21.Parent = swordholder
prt21.Reflectance = 0.25
msh21.Parent = prt21
prt21.BrickColor = bladecolor
local prt22 = Instance.new("Part")
prt22.formFactor = 1
prt22.CanCollide = false
prt22.Name = "BladeP18"
prt22.Locked = true
prt22.Size = Vector3.new(1,1,1)
prt22.Parent = swordholder
prt22.Reflectance = 0.25
msh22.Parent = prt22
prt22.BrickColor = bladecolor
local prt23 = Instance.new("Part")
prt23.formFactor = 1
prt23.CanCollide = false
prt23.Name = "BladeP19"
prt23.Locked = true
prt23.Size = Vector3.new(1,1,1)
prt23.Parent = swordholder
prt23.Reflectance = 0.25
msh23.Parent = prt23
prt23.BrickColor = bladecolor
local prt24 = Instance.new("Part")
prt24.formFactor = 1
prt24.CanCollide = false
prt24.Name = "BladeP20"
prt24.Locked = true
prt24.Size = Vector3.new(1,1,1)
prt24.Parent = swordholder
prt24.Reflectance = 0.25
msh24.Parent = prt24
prt24.BrickColor = bladecolor
local prt25 = Instance.new("Part")
prt25.formFactor = 1
prt25.CanCollide = false
prt25.Name = "BladeP21"
prt25.Locked = true
prt25.Size = Vector3.new(1,1,1)
prt25.Parent = swordholder
prt25.Reflectance = 0.25
msh25.Parent = prt25
prt25.BrickColor = bladecolor
local prt26 = Instance.new("Part")
prt26.formFactor = 1
prt26.CanCollide = false
prt26.Name = "BladeP22"
prt26.Locked = true
prt26.Size = Vector3.new(1,1,1)
prt26.Parent = swordholder
prt26.Reflectance = 0.25
msh26.Parent = prt26
prt26.BrickColor = bladecolor
local prt27 = Instance.new("Part")
prt27.formFactor = 1
prt27.CanCollide = false
prt27.Name = "BladeP23"
prt27.Locked = true
prt27.Size = Vector3.new(1,1,1)
prt27.Parent = swordholder
prt27.Reflectance = 0.25
msh27.Parent = prt27
prt27.BrickColor = bladecolor
local prt28 = Instance.new("Part")
prt28.formFactor = 1
prt28.CanCollide = false
prt28.Name = "BladeP24"
prt28.Locked = true
prt28.Size = Vector3.new(1,1,1)
prt28.Parent = swordholder
prt28.Reflectance = 0.25
msh28.Parent = prt28
prt28.BrickColor = bladecolor
local prt29 = Instance.new("Part")
prt29.formFactor = 1
prt29.CanCollide = false
prt29.Name = "BladeP25"
prt29.Locked = true
prt29.Size = Vector3.new(1,1,1)
prt29.Parent = swordholder
prt29.Reflectance = 0
msh29.Parent = prt29
prt29.BrickColor = handlecolor
local prt30 = Instance.new("Part")
prt30.formFactor = 1
prt30.CanCollide = false
prt30.Name = "BladeP24"
prt30.Locked = true
prt30.Size = Vector3.new(1,1,1)
prt30.Parent = swordholder
prt30.Reflectance = 0
msh30.Parent = prt30
prt30.BrickColor = handlecolor
local prt31 = Instance.new("Part")
prt31.formFactor = 1
prt31.CanCollide = false
prt31.Name = "BladeP25"
prt31.Locked = true
prt31.Size = Vector3.new(1,1,1)
prt31.Parent = swordholder
prt31.Reflectance = 0
msh31.Parent = prt31
prt31.BrickColor = handlecolor
local prt32 = Instance.new("Part")
prt32.formFactor = 1
prt32.CanCollide = false
prt32.Name = "BladeP26"
prt32.Locked = true
prt32.Size = Vector3.new(1,1,1)
prt32.Parent = swordholder
prt32.Reflectance = 0
msh32.Parent = prt32
prt32.BrickColor = handlecolor
local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -2, 0)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt2
w3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w3.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, (-1.950+0.36), 0.125)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt2
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w4.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(180),0) * CFrame.new(0, (-1.95+0.36), -0.125)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt2
w5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w5.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(0),0) * CFrame.new(0, 1.75, 0)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt2
w6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w6.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(0),0) * CFrame.new(0, 1.75, 0)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt2
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w7.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, (-1.950+0.66), 0.3)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt2
w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w8.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(180),0) * CFrame.new(0, (-1.95+0.66), -0.3)
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = prt2
w9.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w9.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(180)) * CFrame.new(0, (-1.950+0.885), 0.3)
local w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt2
w10.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w10.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(180),math.rad(180)) * CFrame.new(0, (-1.95+0.885), -0.3)
local w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = prt2
w11.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(0, (-1.950+1.01), 0.3)
local w12 = Instance.new("Weld")
w12.Parent = prt12
w12.Part0 = prt12
w12.Part1 = prt2
w12.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w12.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(0)) * CFrame.new(0, (-1.95+1.01), -0.3)
local w13 = Instance.new("Weld")
w13.Parent = prt13
w13.Part0 = prt13
w13.Part1 = prt2
w13.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w13.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(180)) * CFrame.new(0, (-1.950+1.16--[[1.685]]), 0.3)
local w14 = Instance.new("Weld")
w14.Parent = prt14
w14.Part0 = prt14
w14.Part1 = prt2
w14.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w14.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(180)) * CFrame.new(0, (-1.95+1.16), -0.3)
local w15 = Instance.new("Weld")
w15.Parent = prt15
w15.Part0 = prt15
w15.Part1 = prt2
w15.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(0, (-1.950+1.285), 0.3)
local w16 = Instance.new("Weld")
w16.Parent = prt16
w16.Part0 = prt16
w16.Part1 = prt2
w16.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w16.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(0)) * CFrame.new(0, (-1.95+1.285), -0.3)
local w17 = Instance.new("Weld")
w17.Parent = prt17
w17.Part0 = prt17
w17.Part1 = prt2
w17.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w17.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(180)) * CFrame.new(0, (-1.950+(1.285+0.375)), 0.3)
local w18 = Instance.new("Weld")
w18.Parent = prt18
w18.Part0 = prt18
w18.Part1 = prt2
w18.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w18.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(180)) * CFrame.new(0, (-1.95+(1.285+0.375)), -0.3)
local w19 = Instance.new("Weld")
w19.Parent = prt19
w19.Part0 = prt19
w19.Part1 = prt2
w19.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w19.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(0, (-1.950+(1.285+1.08)), 0.3)
local w20 = Instance.new("Weld")
w20.Parent = prt20
w20.Part0 = prt20
w20.Part1 = prt2
w20.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w20.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(0)) * CFrame.new(0, (-1.95+(1.285+1.08)), -0.3)
local w21 = Instance.new("Weld")
w21.Parent = prt21
w21.Part0 = prt21
w21.Part1 = prt2
w21.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w21.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(180)) * CFrame.new(0, (-1.950+(1.285+1.305)), 0.3)
local w22 = Instance.new("Weld")
w22.Parent = prt22
w22.Part0 = prt22
w22.Part1 = prt2
w22.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w22.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(180)) * CFrame.new(0, (-1.95+(1.285+1.305)), -0.3)
local w23 = Instance.new("Weld")
w23.Parent = prt23
w23.Part0 = prt23
w23.Part1 = prt2
w23.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w23.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(0, (-1.950+(1.285+1.6)), 0.35)
local w24 = Instance.new("Weld")
w24.Parent = prt24
w24.Part0 = prt24
w24.Part1 = prt2
w24.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w24.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(0)) * CFrame.new(0, (-1.95+(1.285+1.6)), -0.35)
local w25 = Instance.new("Weld")
w25.Parent = prt25
w25.Part0 = prt25
w25.Part1 = prt2
w25.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w25.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(180)) * CFrame.new(0, (-1.95+(1.285+1.8625)), 0.35)
local w26 = Instance.new("Weld")
w26.Parent = prt26
w26.Part0 = prt26
w26.Part1 = prt2
w26.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w26.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(180)) * CFrame.new(0, (-1.95+(1.285+1.8625)), -0.35)
local w27 = Instance.new("Weld")
w27.Parent = prt27
w27.Part0 = prt27
w27.Part1 = prt2
w27.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w27.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(0, (-1.95+(1.285+2.175)), 0.4)
local w28 = Instance.new("Weld")
w28.Parent = prt28
w28.Part0 = prt28
w28.Part1 = prt2
w28.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w28.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180),math.rad(0)) * CFrame.new(0, (-1.95+(1.285+2.175)), -0.4)
local w29 = Instance.new("Weld")
w29.Parent = prt29
w29.Part0 = prt29
w29.Part1 = prt2
w29.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w29.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0,math.rad(0)) * CFrame.new(0, (1.95+(0)), 0.4)
local w30 = Instance.new("Weld")
w30.Parent = prt30
w30.Part0 = prt30
w30.Part1 = prt2
w30.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w30.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180),math.rad(0)) * CFrame.new(0, (1.95+(0)), -0.4)
local w31 = Instance.new("Weld")
w31.Parent = prt31
w31.Part0 = prt31
w31.Part1 = prt2
w31.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w31.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-135), 0,math.rad(0)) * CFrame.new(0, (2.05+(0)), -0.74)
local w32 = Instance.new("Weld")
w32.Parent = prt32
w32.Part0 = prt32
w32.Part1 = prt2
w32.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w32.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-135), math.rad(180),math.rad(0)) * CFrame.new(0, (2.05+(0)), 0.74)
local RAP = Instance.new("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = Vector3.new(1,1,1)
RAP.Parent = swordholder
RAP.Transparency = 1
local w = Instance.new("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = RightArm
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)
function unequipweld()
w1.Part1 = Torso
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-225),math.rad(-90), 0) * CFrame.new(-0.7, -1, -0.6)
end
unequipweld()
function equipweld()
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0)
end
function ss(parent,p)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function uss(parent,p)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function cs(parent,p)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function ls(parent,p)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function rs(parent,p)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12222084"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function b2s(parent,p)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12222065"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function() 
wait(0.1) 
SlashSound.Parent = nil 
end)) 
end
function hideanim()
coroutine.resume(coroutine.create(function()
        for i = 1, 0 , -0.1 do
        wait()
                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)*i) * CFrame.new(0, 0, 0.75*i)
        end
                end))
                for i = 1 , 0 , -0.1 do
                wait()
                RW.C0 = CFrame.new(1.5-0.5*i,0.5-0.25*i,-0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(67.5-22.5*i), 0, math.rad(22.5-67.5*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5+0.5*i, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45*i),0,math.rad(45*i))
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
                LWRem()
                for i = 1 , 0 , -0.15 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(135)-math.rad(67.5)*i, 0, math.rad(45-22.5*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,1-1*i)
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
coroutine.resume(coroutine.create(function()
        for i = 1 , 0 , -0.1 do
        wait()
                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, 0) * CFrame.new(0, 0,0.75)
        end
end))
        for i = 1 , 0 , -0.1 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(270)-math.rad(135)*i, 1-1*i,-1+(1+math.rad(45))*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,1*i)
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
                unequipweld()
        for i = 1 , 0 , -0.2 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(270)*i, 1*i,-1*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
                                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C1 = CFrame.new(0, 0.5, 0)
end
function equipanim()
attack = true
        for i = 0 , 1 , 0.2 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(270)*i, 1*i,-1*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
                equipweld()
coroutine.resume(coroutine.create(function()
        for i = 0 , 1 , 0.1 do
        wait()
                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, 0) * CFrame.new(0, 0, 0)
        end
end))
                uss(game.Workspace,1)
        for i = 0 , 1 , 0.1 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(270)-math.rad(135)*i, 1-1*i,-1+(1+math.rad(45))*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
        for i = 0 , 1 , 0.15 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(135)-math.rad(67.5)*i, 0, math.rad(45-22.5*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
                LWFunc()
coroutine.resume(coroutine.create(function()
        for i = 0 , 1 , 0.1 do
        wait()
                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)*i) * CFrame.new(0, 0, 0.75*i)
        end
end))
                for i = 0 , 1 , 0.1 do
                wait()
                RW.C0 = CFrame.new(1.5-0.5*i,0.5-0.25*i,-0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(67.5-42.5*i), 0, math.rad(22.5-67.5*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5+0.5*i, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25*i),0,math.rad(45*i))
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
attack = false
end
function blast(n,s,c,prt)
local colors = {BrickColor.new(c)}
local randomv = Vector3.new(n,n,n)
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = randomv * Vector3.new(0.15,0.15,0.15)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = prt.CFrame
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = colors[math.random(1,#colors)]
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.15*s do
wait()
mesh.Scale = randomv * Vector3.new(i,i,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
function bubblyblast(n,s,c,prt,withwaitornot)
local colors = {BrickColor.new(c)}
local randomv = Vector3.new(n,n,n)
for i = 1 , 5 do
local C = prt.CFrame
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0,0,0)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 0
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new(C.p,C.p + Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360)))
shell.CFrame = shell.CFrame 
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = colors[math.random(1,#colors)]
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1*s do
wait()
shell.Transparency = 1*i
shell.CFrame = shell.CFrame + (shell.CFrame.lookVector * 0.25)
mesh.Scale = randomv * Vector3.new(i,i,i)
end
shell.Transparency = 1
shell.Parent = nil
end))
if withwaitornot == true then
wait()
end
end
end
function ringblast(n,s,c,prt)
local colors = {BrickColor.new(c)}
local randomv = Vector3.new(n,n,n)
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = randomv * Vector3.new(2,2,2)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = prt.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-5,5),math.random(-5,5)) 
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = colors[math.random(1,#colors)]
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.15*s do
wait()
mesh.Scale = (randomv * Vector3.new(2,2,2)) * Vector3.new(i,i,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Soul Eater" 
script.Parent = Tool 
end 
Bin = script.Parent 
function damagesplat(dmg,hit,critornot,healornot)
local OffsetX = -2.5
local OffsetY = 5
local OffsetZ = 0
local bill = Instance.new("BillboardGui")
bill.Size = UDim2.new(1,0,1,0)
bill.Adornee = hit
bill.StudsOffset = Vector3.new(OffsetX,OffsetY,OffsetZ)
bill.Parent = hit.Parent
bill.Name = "DamageSplat"
local tex = Instance.new("TextLabel")
tex.Size = UDim2.new(5,0,2.5,0)
tex.Parent = bill
tex.Text = dmg
tex.BackgroundTransparency = 1
tex.ZIndex = 4
tex.FontSize = "Size24"
local tex2 = Instance.new("ImageLabel")
tex2.Size = UDim2.new(1,0,1,0)
tex2.Parent = tex
tex2.BackgroundTransparency = 1
tex2.Image = "http://www.roblox.com/asset/?id=42611276"
if critornot == true then
tex.TextColor3 = Color3.new(1,0.2,0.2)
elseif critornot == false then
tex.TextColor3 = Color3.new(0,0,0)
end
if healornot == true then
tex.TextColor3 = Color3.new(0.2,0.5,0.5)
end
coroutine.resume(coroutine.create(function()
wait(0.25)
for i = 0 , 1 , 0.075 do
wait()
bill.StudsOffset = Vector3.new(OffsetX,OffsetY+5*i,OffsetZ)
tex.TextTransparency = 1*i
end
bill.Parent = nil
end))
end
function OT(hit)
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil and hum ~= Character.Humanoid then
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,hit,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,hit,true)
hum:TakeDamage(rndmdamage)
end
Hitdeb = 1
end
end
function OT(hit)
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil and hum ~= Character.Humanoid then
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,hit,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,hit,true)
hum:TakeDamage(rndmdamage)
end
Hitdeb = 1
end
end
function OT2(hit)
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil and hum ~= Character.Humanoid then
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,hit,false,false)
damagesplat(rndmdamage,Head,false,true)
hum:TakeDamage(rndmdamage)
Character.Humanoid:TakeDamage(-rndmdamage)
bubblyblast(2.5,0.5,"Bright green",hit)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,hit,true)
damagesplat(rndmdamage,Head,false,true)
hum:TakeDamage(rndmdamage)
Character.Humanoid:TakeDamage(-rndmdamage)
bubblyblast(2.5,0.5,"Bright green",hit)
end
Hitdeb = 1
end
end
function OT3(hit)
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil and hum ~= Character.Humanoid then
local hitornotrandomizer = math.random(1,3)
if hitornotrandomizer ~= 1 then
damagesplat(0,hit,false)
end
if hitornotrandomizer == 1 then
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,hit,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,hit,true)
hum:TakeDamage(rndmdamage)
end
end
Hitdeb = 1
end
end
function AoE(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[i].Name ~= Character.Name then
                local foundd = false
                for ii = 1 , #AoETrue do
                if AoETrue[ii] == c[i].Name then
                foundd = true
                end
                end
                if foundd then
                end
                --
                if not foundd then
                hum:TakeDamage(damage)
                damagesplat(damage,head,critornot)
                table.insert(AoETrue,c[i].Name)
                end
                end
                end
                end
        end
end
function AoETremor(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        local founded = {}
                for o = 1, #c do
        local hum = c[o]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
                local head = c[o]:findFirstChild("Head");
        if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[o].Name ~= Character.Name then
                table.insert(founded,c[o])
                end
                end
                end
                end
        if #founded ~= 0 then
        local foundd = false
                local randommm = math.floor(math.random(1,#founded))        
        for i = 1, #founded do
                if randommm == i then
local hum = founded[i].Humanoid
local c = founded[i]
local CF = c.Torso.CFrame * CFrame.new(0,-4,0) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0)
local F = CFrame.new(c.Torso.Position,Torso.Position)
local CF2 = F * CFrame.new(0,-5,0) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0) + F.lookVector * 2
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(2.5,2.5,2.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CF
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
local earthm2 = Instance.new("BlockMesh")
earthm2.Scale = Vector3.new(1.5,5,1.5)
local earth2 = Instance.new("Part")
earth2.formFactor = 0
earth2.CanCollide = false
earth2.Name = "Earth2"
earth2.Locked = true
earth2.Anchored = true
earth2.Size = Vector3.new(1,1,1)
earth2.Parent = swordholder
earth2.CFrame = CF2
earthm2.Parent = earth2
earth2.BrickColor = BrickColor.new("Brown")
earth2.Transparency = 0
local earthm3 = Instance.new("SpecialMesh")
earthm3.Scale = Vector3.new(1.5,2.5,1.5)
earthm3.MeshType = "Wedge"
local earth3 = Instance.new("Part")
earth3.formFactor = 0
earth3.CanCollide = false
earth3.Name = "Earth3"
earth3.Locked = true
earth3.Anchored = true
earth3.Size = Vector3.new(1,1,1)
earth3.Parent = swordholder
earth3.CFrame = earth2.CFrame * CFrame.new(0,5,0)
earthm3.Parent = earth3
earth3.BrickColor = BrickColor.new("Brown")
earth3.Transparency = 0
                hum:TakeDamage(damage)
                damagesplat(damage,c.Head,critornot)
                table.insert(AoETrue,founded[i].Name)
coroutine.resume(coroutine.create(function()
for i = 1 , 1 do
rs(game.Workspace,5)
end
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,1*z,0)
earth2.CFrame = CF2 + Vector3.new(0,1.5*z,0) + (F.lookVector * -2*z)
earth3.CFrame = earth2.CFrame * CFrame.new(0,3.75,0)
end
wait(2)
earth.Parent = nil
earth2.Parent = nil
earth3.Parent = nil
end))
                
                end
                end
        end
end
function AoEQuake(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        local founded = {}
                for o = 1, #c do
        local hum = c[o]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
                local head = c[o]:findFirstChild("Head");
        if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[o].Name ~= Character.Name then
                table.insert(founded,c[o])
                end
                end
                end
                end
        if #founded ~= 0 then
        local foundd = false
                local randommm = math.floor(math.random(1,#founded))        
        for i = 1, #founded do
                if randommm == i then
local hum = founded[i].Humanoid
local c = founded[i]
local F = CFrame.new(c.Torso.Position,Torso.Position)
local CF = c.Torso.CFrame * CFrame.new(0,-4.5,1) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0) + (F.lookVector * 1)
local CF2 = (c.Torso.CFrame) * CFrame.new(0,-4.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad(45+90),math.rad(0),0) + (F.lookVector * -1)
local CF3 = (c.Torso.CFrame) * CFrame.new(1.5,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(-45)) + (F.lookVector * 1)
local CF4 = (c.Torso.CFrame) * CFrame.new(-1.5,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(45)) + (F.lookVector * -1)
local CF5 = (c.Torso.CFrame) * CFrame.new(0,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0)) + (F.lookVector * 0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(1.5,4,1.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CF
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
local earthm2 = Instance.new("BlockMesh")
earthm2.Scale = Vector3.new(1.5,4,1.5)
local earth2 = Instance.new("Part")
earth2.formFactor = 0
earth2.CanCollide = false
earth2.Name = "Earth2"
earth2.Locked = true
earth2.Anchored = true
earth2.Size = Vector3.new(1,1,1)
earth2.Parent = swordholder
earth2.CFrame = CF2
earthm2.Parent = earth2
earth2.BrickColor = BrickColor.new("Brown")
earth2.Transparency = 0
local earthm3 = Instance.new("BlockMesh")
earthm3.Scale = Vector3.new(1.5,4,1.5)
local earth3 = Instance.new("Part")
earth3.formFactor = 0
earth3.CanCollide = false
earth3.Name = "Earth3"
earth3.Locked = true
earth3.Anchored = true
earth3.Size = Vector3.new(1,1,1)
earth3.Parent = swordholder
earth3.CFrame = CF3
earthm3.Parent = earth3
earth3.BrickColor = BrickColor.new("Brown")
earth3.Transparency = 0
local earthm4 = Instance.new("BlockMesh")
earthm4.Scale = Vector3.new(1.5,4,1.5)
local earth4 = Instance.new("Part")
earth4.formFactor = 0
earth4.CanCollide = false
earth4.Name = "Earth4"
earth4.Locked = true
earth4.Anchored = true
earth4.Size = Vector3.new(1,1,1)
earth4.Parent = swordholder
earth4.CFrame = CF4
earthm4.Parent = earth4
earth4.BrickColor = BrickColor.new("Brown")
earth4.Transparency = 0
local earthm5 = Instance.new("SpecialMesh")
earthm5.Scale = Vector3.new(3,5,3)
earthm5.MeshType = "FileMesh"
earthm5.MeshId = "http://www.roblox.com/asset/?id=1778999"
local earth5 = Instance.new("Part")
earth5.formFactor = 0
earth5.CanCollide = false
earth5.Name = "Earth5"
earth5.Locked = true
earth5.Anchored = true
earth5.Size = Vector3.new(1,1,1)
earth5.Parent = swordholder
earth5.CFrame = CF5
earthm5.Parent = earth5
earth5.BrickColor = BrickColor.new("Brown")
earth5.Transparency = 0
                hum:TakeDamage(damage)
                damagesplat(damage,c.Head,critornot)
                table.insert(AoETrue,founded[i].Name)
coroutine.resume(coroutine.create(function()
for i = 1 , 3 do
rs(game.Workspace,3)
end
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,4*z,0)
end
wait(2)
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2-2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2-2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2-2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2-2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,4-7*z,0)
end
earth.Parent = nil
earth2.Parent = nil
earth3.Parent = nil
earth4.Parent = nil
earth5.Parent = nil
end))
                
                end
                end
        end
end
function AoECataclysm(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        local founded = {}
                for o = 1, #c do
        local hum = c[o]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
                local head = c[o]:findFirstChild("Head");
        if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[o].Name ~= Character.Name then
                table.insert(founded,c[o])
                --blast(2.5,0.5,"Gold",prt2,false)
                end
                end
                end
                end
        if #founded ~= 0 then
        local foundd = false
                local randommm = math.floor(math.random(1,#founded))        
        for i = 1, #founded do
                if randommm == i then
local hum = founded[i].Humanoid
local c = founded[i]
local F = CFrame.new(c.Torso.Position,Torso.Position)
local CF = c.Torso.CFrame * CFrame.new(0,-4.5,2.5) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0) + (F.lookVector * 1)
local CF2 = (c.Torso.CFrame) * CFrame.new(0,-4.5,-2.5) * CFrame.fromEulerAnglesXYZ(math.rad(45+90),math.rad(0),0) + (F.lookVector * -1)
local CF3 = (c.Torso.CFrame) * CFrame.new(3,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(-45)) + (F.lookVector * 1)
local CF4 = (c.Torso.CFrame) * CFrame.new(-3,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(45)) + (F.lookVector * -1)
local CF5 = (c.Torso.CFrame) * CFrame.new(0,-20,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(math.random(-360,350)),math.rad(0)) + (F.lookVector * 0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(1.5,4,1.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CF
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
local earthm2 = Instance.new("BlockMesh")
earthm2.Scale = Vector3.new(1.5,4,1.5)
local earth2 = Instance.new("Part")
earth2.formFactor = 0
earth2.CanCollide = false
earth2.Name = "Earth2"
earth2.Locked = true
earth2.Anchored = true
earth2.Size = Vector3.new(1,1,1)
earth2.Parent = swordholder
earth2.CFrame = CF2
earthm2.Parent = earth2
earth2.BrickColor = BrickColor.new("Brown")
earth2.Transparency = 0
local earthm3 = Instance.new("BlockMesh")
earthm3.Scale = Vector3.new(1.5,4,1.5)
local earth3 = Instance.new("Part")
earth3.formFactor = 0
earth3.CanCollide = false
earth3.Name = "Earth3"
earth3.Locked = true
earth3.Anchored = true
earth3.Size = Vector3.new(1,1,1)
earth3.Parent = swordholder
earth3.CFrame = CF3
earthm3.Parent = earth3
earth3.BrickColor = BrickColor.new("Brown")
earth3.Transparency = 0
local earthm4 = Instance.new("BlockMesh")
earthm4.Scale = Vector3.new(1.5,4,1.5)
local earth4 = Instance.new("Part")
earth4.formFactor = 0
earth4.CanCollide = false
earth4.Name = "Earth4"
earth4.Locked = true
earth4.Anchored = true
earth4.Size = Vector3.new(1,1,1)
earth4.Parent = swordholder
earth4.CFrame = CF4
earthm4.Parent = earth4
earth4.BrickColor = BrickColor.new("Brown")
earth4.Transparency = 0
local earthm5 = Instance.new("BlockMesh")
earthm5.Scale = Vector3.new(5,15,1)
local earth5 = Instance.new("Part")
earth5.formFactor = 0
earth5.CanCollide = false
earth5.Name = "Earth5"
earth5.Locked = true
earth5.Anchored = true
earth5.Size = Vector3.new(1,1,1)
earth5.Parent = swordholder
earth5.CFrame = CF5
earthm5.Parent = earth5
earth5.BrickColor = BrickColor.new("Brown")
earth5.Transparency = 0
local earthm6 = Instance.new("SpecialMesh")
earthm6.Scale = Vector3.new(1,2,2.5)
earthm6.MeshType = "Wedge"
local earth6 = Instance.new("Part")
earth6.formFactor = 0
earth6.CanCollide = false
earth6.Name = "EarthTip1"
earth6.Locked = true
earth6.Anchored = true
earth6.Size = Vector3.new(1,1,1)
earth6.Parent = swordholder
earth6.CFrame = CF5 * CFrame.new(-1.25,8.5+22,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
earthm6.Parent = earth6
earth6.BrickColor = BrickColor.new("Brown")
earth6.Transparency = 0
local earthm7 = Instance.new("SpecialMesh")
earthm7.Scale = Vector3.new(1,2,2.5)
earthm7.MeshType = "Wedge"
local earth7 = Instance.new("Part")
earth7.formFactor = 0
earth7.CanCollide = false
earth7.Name = "EarthTip2"
earth7.Locked = true
earth7.Anchored = true
earth7.Size = Vector3.new(1,1,1)
earth7.Parent = swordholder
earth7.CFrame = CF5 * CFrame.new(1.25,8.5+22,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90+180),0)
earthm7.Parent = earth7
earth7.BrickColor = BrickColor.new("Brown")
earth7.Transparency = 0
                hum:TakeDamage(damage)
                damagesplat(damage,c.Head,critornot)
                table.insert(AoETrue,founded[i].Name)
coroutine.resume(coroutine.create(function()
for i = 1 , 5 do
rs(game.Workspace,2)
end
for z = 0 , 1 , 0.1 do
wait()
earth.CFrame = CF + Vector3.new(0,2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,22*z,0)
earth6.CFrame = CF5 * CFrame.new(-1.25,8.5+22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
earth7.CFrame = CF5 * CFrame.new(1.25,8.5+22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90+180),0)
end
wait(2)
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2-2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2-2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2-2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2-2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,22-30*z,0)
earth6.CFrame = CF5 * CFrame.new(-1.25,30.5-22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
earth7.CFrame = CF5 * CFrame.new(1.25,30.5-22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90+180),0)
end
earth.Parent = nil
earth2.Parent = nil
earth3.Parent = nil
earth4.Parent = nil
earth5.Parent = nil
earth6.Parent = nil
earth7.Parent = nil
end))
                
                end
                end
        end
end
function AoETundra(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        local founded = {}
                for o = 1, #c do
        local hum = c[o]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
                local head = c[o]:findFirstChild("Head");
        if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[o].Name ~= Character.Name then
                table.insert(founded,c[o])
                end
                end
                end
                end
        if #founded ~= 0 then
        local foundd = false
                local randommm = math.floor(math.random(1,#founded))        
        for i = 1, #founded do
                if randommm == i then
local hum = founded[i].Humanoid
local c = founded[i]
local F = CFrame.new(c.Torso.Position,Torso.Position)
local CF = c.Torso.CFrame * CFrame.new(0,-4.5,1) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0) + (F.lookVector * 1)
local CF2 = (c.Torso.CFrame) * CFrame.new(0,-4.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad(45+90),math.rad(0),0) + (F.lookVector * -1)
local CF3 = (c.Torso.CFrame) * CFrame.new(1.5,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(-45)) + (F.lookVector * 1)
local CF4 = (c.Torso.CFrame) * CFrame.new(-1.5,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(45)) + (F.lookVector * -1)
local CF5 = (c.Torso.CFrame) * CFrame.new(0,-5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(math.random(-360,350)),math.rad(0)) + (F.lookVector * 0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(1.5,4,1.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CF
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
local earthm2 = Instance.new("BlockMesh")
earthm2.Scale = Vector3.new(1.5,4,1.5)
local earth2 = Instance.new("Part")
earth2.formFactor = 0
earth2.CanCollide = false
earth2.Name = "Earth2"
earth2.Locked = true
earth2.Anchored = true
earth2.Size = Vector3.new(1,1,1)
earth2.Parent = swordholder
earth2.CFrame = CF2
earthm2.Parent = earth2
earth2.BrickColor = BrickColor.new("Brown")
earth2.Transparency = 0
local earthm3 = Instance.new("BlockMesh")
earthm3.Scale = Vector3.new(1.5,4,1.5)
local earth3 = Instance.new("Part")
earth3.formFactor = 0
earth3.CanCollide = false
earth3.Name = "Earth3"
earth3.Locked = true
earth3.Anchored = true
earth3.Size = Vector3.new(1,1,1)
earth3.Parent = swordholder
earth3.CFrame = CF3
earthm3.Parent = earth3
earth3.BrickColor = BrickColor.new("Brown")
earth3.Transparency = 0
local earthm4 = Instance.new("BlockMesh")
earthm4.Scale = Vector3.new(1.5,4,1.5)
local earth4 = Instance.new("Part")
earth4.formFactor = 0
earth4.CanCollide = false
earth4.Name = "Earth4"
earth4.Locked = true
earth4.Anchored = true
earth4.Size = Vector3.new(1,1,1)
earth4.Parent = swordholder
earth4.CFrame = CF4
earthm4.Parent = earth4
earth4.BrickColor = BrickColor.new("Brown")
earth4.Transparency = 0
local earthm5 = Instance.new("SpecialMesh")
earthm5.Scale = Vector3.new(3,5,3)
earthm5.MeshType = "Wedge"
local earth5 = Instance.new("Part")
earth5.formFactor = 0
earth5.CanCollide = false
earth5.Name = "Earth5"
earth5.Locked = true
earth5.Anchored = true
earth5.Size = Vector3.new(1,1,1)
earth5.Parent = swordholder
earth5.CFrame = CF5
earthm5.Parent = earth5
earth5.BrickColor = BrickColor.new("Bright blue")
earth5.Reflectance = 0.5
earth5.Transparency = 0.25
                hum:TakeDamage(damage)
                damagesplat(damage,c.Head,critornot)
                table.insert(AoETrue,founded[i].Name)
coroutine.resume(coroutine.create(function()
for i = 1 , 3 do
rs(game.Workspace,3)
end
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,3*z,0)
end
wait(2)
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2-2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2-2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2-2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2-2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,3-7*z,0)
end
earth.Parent = nil
earth2.Parent = nil
earth3.Parent = nil
earth4.Parent = nil
earth5.Parent = nil
end))
                
                end
                end
        end
end
function AoEIceberg(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        local founded = {}
                for o = 1, #c do
        local hum = c[o]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
                local head = c[o]:findFirstChild("Head");
        if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[o].Name ~= Character.Name then
                table.insert(founded,c[o])
                end
                end
                end
                end
        if #founded ~= 0 then
        local foundd = false
                local randommm = math.floor(math.random(1,#founded))        
        for i = 1, #founded do
                if randommm == i then
local hum = founded[i].Humanoid
local c = founded[i]
local F = CFrame.new(c.Torso.Position,Torso.Position)
local CF = c.Torso.CFrame * CFrame.new(0,-4.5,2.5) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0) + (F.lookVector * 1)
local CF2 = (c.Torso.CFrame) * CFrame.new(0,-4.5,-2.5) * CFrame.fromEulerAnglesXYZ(math.rad(45+90),math.rad(0),0) + (F.lookVector * -1)
local CF3 = (c.Torso.CFrame) * CFrame.new(3,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(-45)) + (F.lookVector * 1)
local CF4 = (c.Torso.CFrame) * CFrame.new(-3,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(45)) + (F.lookVector * -1)
local CF5 = (c.Torso.CFrame) * CFrame.new(0,-20,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(math.random(-360,350)),math.rad(0)) + (F.lookVector * 0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(1.5,4,1.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CF
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
local earthm2 = Instance.new("BlockMesh")
earthm2.Scale = Vector3.new(1.5,4,1.5)
local earth2 = Instance.new("Part")
earth2.formFactor = 0
earth2.CanCollide = false
earth2.Name = "Earth2"
earth2.Locked = true
earth2.Anchored = true
earth2.Size = Vector3.new(1,1,1)
earth2.Parent = swordholder
earth2.CFrame = CF2
earthm2.Parent = earth2
earth2.BrickColor = BrickColor.new("Brown")
earth2.Transparency = 0
local earthm3 = Instance.new("BlockMesh")
earthm3.Scale = Vector3.new(1.5,4,1.5)
local earth3 = Instance.new("Part")
earth3.formFactor = 0
earth3.CanCollide = false
earth3.Name = "Earth3"
earth3.Locked = true
earth3.Anchored = true
earth3.Size = Vector3.new(1,1,1)
earth3.Parent = swordholder
earth3.CFrame = CF3
earthm3.Parent = earth3
earth3.BrickColor = BrickColor.new("Brown")
earth3.Transparency = 0
local earthm4 = Instance.new("BlockMesh")
earthm4.Scale = Vector3.new(1.5,4,1.5)
local earth4 = Instance.new("Part")
earth4.formFactor = 0
earth4.CanCollide = false
earth4.Name = "Earth4"
earth4.Locked = true
earth4.Anchored = true
earth4.Size = Vector3.new(1,1,1)
earth4.Parent = swordholder
earth4.CFrame = CF4
earthm4.Parent = earth4
earth4.BrickColor = BrickColor.new("Brown")
earth4.Transparency = 0
local earthm5 = Instance.new("BlockMesh")
earthm5.Scale = Vector3.new(5,15,1)
local earth5 = Instance.new("Part")
earth5.formFactor = 0
earth5.CanCollide = false
earth5.Name = "Earth5"
earth5.Locked = true
earth5.Anchored = true
earth5.Size = Vector3.new(1,1,1)
earth5.Parent = swordholder
earth5.CFrame = CF5
earthm5.Parent = earth5
earth5.BrickColor = BrickColor.new("Bright blue")
earth5.Reflectance = 0.5
earth5.Transparency = 0.25
local earthm6 = Instance.new("SpecialMesh")
earthm6.Scale = Vector3.new(1,2,2.5)
earthm6.MeshType = "Wedge"
local earth6 = Instance.new("Part")
earth6.formFactor = 0
earth6.CanCollide = false
earth6.Name = "EarthTip1"
earth6.Locked = true
earth6.Anchored = true
earth6.Size = Vector3.new(1,1,1)
earth6.Parent = swordholder
earth6.CFrame = CF5 * CFrame.new(-1.25,8.5+22,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
earthm6.Parent = earth6
earth6.BrickColor = BrickColor.new("Bright blue")
earth6.Reflectance = 0.5
earth6.Transparency = 0.25
local earthm7 = Instance.new("SpecialMesh")
earthm7.Scale = Vector3.new(1,2,2.5)
earthm7.MeshType = "Wedge"
local earth7 = Instance.new("Part")
earth7.formFactor = 0
earth7.CanCollide = false
earth7.Name = "EarthTip2"
earth7.Locked = true
earth7.Anchored = true
earth7.Size = Vector3.new(1,1,1)
earth7.Parent = swordholder
earth7.CFrame = CF5 * CFrame.new(1.25,8.5+22,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90+180),0)
earthm7.Parent = earth7
earth7.BrickColor = BrickColor.new("Bright blue")
earth7.Reflectance = 0.5
earth7.Transparency = 0.25
                hum:TakeDamage(damage)
                damagesplat(damage,c.Head,critornot)
                table.insert(AoETrue,founded[i].Name)
coroutine.resume(coroutine.create(function()
for i = 1 , 5 do
rs(game.Workspace,2)
end
for z = 0 , 1 , 0.1 do
wait()
earth.CFrame = CF + Vector3.new(0,2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,22*z,0)
earth6.CFrame = CF5 * CFrame.new(-1.25,8.5+22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
earth7.CFrame = CF5 * CFrame.new(1.25,8.5+22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90+180),0)
end
wait(2)
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2-2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2-2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2-2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2-2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,22-30*z,0)
earth6.CFrame = CF5 * CFrame.new(-1.25,30.5-22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
earth7.CFrame = CF5 * CFrame.new(1.25,30.5-22*z,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90+180),0)
end
earth.Parent = nil
earth2.Parent = nil
earth3.Parent = nil
earth4.Parent = nil
earth5.Parent = nil
earth6.Parent = nil
earth7.Parent = nil
end))
                
                end
                end
        end
end
function AoEFume(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        local founded = {}
                for o = 1, #c do
        local hum = c[o]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
                local head = c[o]:findFirstChild("Head");
        if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[o].Name ~= Character.Name then
                table.insert(founded,c[o])
                --blast(2.5,0.5,"Gold",prt2,false)
                end
                end
                end
                end
        if #founded ~= 0 then
        local foundd = false
                local randommm = math.floor(math.random(1,#founded))        
        for i = 1, #founded do
                if randommm == i then
local hum = founded[i].Humanoid
local c = founded[i]
local F = CFrame.new(c.Torso.Position,Torso.Position)
local CF = c.Torso.CFrame * CFrame.new(0,-4.5,1) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0) + (F.lookVector * 1)
local CF2 = (c.Torso.CFrame) * CFrame.new(0,-4.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad(45+90),math.rad(0),0) + (F.lookVector * -1)
local CF3 = (c.Torso.CFrame) * CFrame.new(1.5,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(-45)) + (F.lookVector * 1)
local CF4 = (c.Torso.CFrame) * CFrame.new(-1.5,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(45)) + (F.lookVector * -1)
local CF5 = (c.Torso.CFrame) * CFrame.new(0,1,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(1.5,4,1.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CF
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
local earthm2 = Instance.new("BlockMesh")
earthm2.Scale = Vector3.new(1.5,4,1.5)
local earth2 = Instance.new("Part")
earth2.formFactor = 0
earth2.CanCollide = false
earth2.Name = "Earth2"
earth2.Locked = true
earth2.Anchored = true
earth2.Size = Vector3.new(1,1,1)
earth2.Parent = swordholder
earth2.CFrame = CF2
earthm2.Parent = earth2
earth2.BrickColor = BrickColor.new("Brown")
earth2.Transparency = 0
local earthm3 = Instance.new("BlockMesh")
earthm3.Scale = Vector3.new(1.5,4,1.5)
local earth3 = Instance.new("Part")
earth3.formFactor = 0
earth3.CanCollide = false
earth3.Name = "Earth3"
earth3.Locked = true
earth3.Anchored = true
earth3.Size = Vector3.new(1,1,1)
earth3.Parent = swordholder
earth3.CFrame = CF3
earthm3.Parent = earth3
earth3.BrickColor = BrickColor.new("Brown")
earth3.Transparency = 0
local earthm4 = Instance.new("BlockMesh")
earthm4.Scale = Vector3.new(1.5,4,1.5)
local earth4 = Instance.new("Part")
earth4.formFactor = 0
earth4.CanCollide = false
earth4.Name = "Earth4"
earth4.Locked = true
earth4.Anchored = true
earth4.Size = Vector3.new(1,1,1)
earth4.Parent = swordholder
earth4.CFrame = CF4
earthm4.Parent = earth4
earth4.BrickColor = BrickColor.new("Brown")
earth4.Transparency = 0
                hum:TakeDamage(damage)
                damagesplat(damage,c.Head,critornot)
                table.insert(AoETrue,founded[i].Name)
coroutine.resume(coroutine.create(function()
for i = 1 , 3 do
b2s(game.Workspace,1)
end
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2*z,0)
end
for i = 1 , 15 do
local colors = {BrickColor.new("Gold"),BrickColor.new("Bright orange")}
local rndm = math.random(1,5)
local randomv = Vector3.new(rndm,rndm,rndm)
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0,0,0)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 0
shell.Size = Vector3.new(1,1,1)
local dir = CFrame.new(c.Torso.Position + Vector3.new(0,1,0),(c.Torso.Position + Vector3.new(0,1,0)) + Vector3.new(math.random(-2,2),3,math.random(-2,2))) 
shell.CFrame = (c.Torso.CFrame * CFrame.new(0,0,0))
shell.CFrame = shell.CFrame
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = colors[math.random(1,#colors)]
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
shell.Transparency = 1*i
shell.CFrame = shell.CFrame + (dir.lookVector * 1*i)
mesh.Scale = randomv * Vector3.new(i,i,i)
end
shell.Transparency = 1
shell.Parent = nil
end))
wait()
end
wait(2)
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2-2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2-2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2-2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2-2*z,0)
end
earth.Parent = nil
earth2.Parent = nil
earth3.Parent = nil
earth4.Parent = nil
end))
                
end
                
                end
        end
end
function AoEEruption(p,magnitude,damage,critornot) 
        local c = game.Workspace:GetChildren();
        local founded = {}
                for o = 1, #c do
        local hum = c[o]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
                local head = c[o]:findFirstChild("Head");
        if head ~= nil then
                local targ = head.Position - p.Position;
                local mag = targ.magnitude;
                if mag <= magnitude and c[o].Name ~= Character.Name then
                table.insert(founded,c[o])
                end
                end
                end
                end
        if #founded ~= 0 then
        local foundd = false
                local randommm = math.floor(math.random(1,#founded))        
        for i = 1, #founded do
                if randommm == i then
local hum = founded[i].Humanoid
local c = founded[i]
local F = CFrame.new(c.Torso.Position,Torso.Position)
local CF = c.Torso.CFrame * CFrame.new(0,-4.5,2.5) * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0) + (F.lookVector * 1)
local CF2 = (c.Torso.CFrame) * CFrame.new(0,-4.5,-2.5) * CFrame.fromEulerAnglesXYZ(math.rad(45+90),math.rad(0),0) + (F.lookVector * -1)
local CF3 = (c.Torso.CFrame) * CFrame.new(3,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(-45)) + (F.lookVector * 1)
local CF4 = (c.Torso.CFrame) * CFrame.new(-3,-4.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(45)) + (F.lookVector * -1)
local CF5 = (c.Torso.CFrame) * CFrame.new(0,-20,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(math.random(-360,350)),math.rad(0)) + (F.lookVector * 0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(1.5,4,1.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CF
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
local earthm2 = Instance.new("BlockMesh")
earthm2.Scale = Vector3.new(1.5,4,1.5)
local earth2 = Instance.new("Part")
earth2.formFactor = 0
earth2.CanCollide = false
earth2.Name = "Earth2"
earth2.Locked = true
earth2.Anchored = true
earth2.Size = Vector3.new(1,1,1)
earth2.Parent = swordholder
earth2.CFrame = CF2
earthm2.Parent = earth2
earth2.BrickColor = BrickColor.new("Brown")
earth2.Transparency = 0
local earthm3 = Instance.new("BlockMesh")
earthm3.Scale = Vector3.new(1.5,4,1.5)
local earth3 = Instance.new("Part")
earth3.formFactor = 0
earth3.CanCollide = false
earth3.Name = "Earth3"
earth3.Locked = true
earth3.Anchored = true
earth3.Size = Vector3.new(1,1,1)
earth3.Parent = swordholder
earth3.CFrame = CF3
earthm3.Parent = earth3
earth3.BrickColor = BrickColor.new("Brown")
earth3.Transparency = 0
local earthm4 = Instance.new("BlockMesh")
earthm4.Scale = Vector3.new(1.5,4,1.5)
local earth4 = Instance.new("Part")
earth4.formFactor = 0
earth4.CanCollide = false
earth4.Name = "Earth4"
earth4.Locked = true
earth4.Anchored = true
earth4.Size = Vector3.new(1,1,1)
earth4.Parent = swordholder
earth4.CFrame = CF4
earthm4.Parent = earth4
earth4.BrickColor = BrickColor.new("Brown")
earth4.Transparency = 0
local earthm5 = Instance.new("CylinderMesh")
earthm5.Scale = Vector3.new(5,15,5)
local earth5 = Instance.new("Part")
earth5.formFactor = 0
earth5.CanCollide = false
earth5.Name = "Earth5"
earth5.Locked = true
earth5.Anchored = true
earth5.Size = Vector3.new(1,1,1)
earth5.Parent = swordholder
earth5.CFrame = CF5
earthm5.Parent = earth5
earth5.BrickColor = BrickColor.new("Gold")
earth5.Transparency = 0.25
                hum:TakeDamage(damage)
                damagesplat(damage,c.Head,critornot)
                table.insert(AoETrue,founded[i].Name)
coroutine.resume(coroutine.create(function()
for i = 1 , 5 do
rs(game.Workspace,2)
end
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,22*z,0)
end
for z = 0 , 1 , 0.1 do
wait()
earthm5.Scale = Vector3.new(5,15+500*z,5)
end
for i = 1 , 30 do
local colors = {BrickColor.new("Gold"),BrickColor.new("Bright orange")}
local rndm = math.random(1,5)
local randomv = Vector3.new(rndm,rndm,rndm)
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0,0,0)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 0
shell.Size = Vector3.new(1,1,1)
local dir = CFrame.new(c.Torso.Position + Vector3.new(0,1,0),(c.Torso.Position + Vector3.new(0,1,0)) + Vector3.new(math.random(-2,2),3,math.random(-2,2))) 
shell.CFrame = (c.Torso.CFrame * CFrame.new(0,0,0))
shell.CFrame = shell.CFrame
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = colors[math.random(1,#colors)]
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
shell.Transparency = 1*i
shell.CFrame = shell.CFrame + (dir.lookVector * 1*i)
mesh.Scale = randomv * Vector3.new(i,i,i)
end
shell.Transparency = 1
shell.Parent = nil
end))
wait()
end
wait(1)
for z = 0 , 1 , 0.2 do
wait()
earth.CFrame = CF + Vector3.new(0,2-2*z,0)
earth2.CFrame = CF2 + Vector3.new(0,2-2*z,0)
earth3.CFrame = CF3 + Vector3.new(0,2-2*z,0)
earth4.CFrame = CF4 + Vector3.new(0,2-2*z,0)
earth5.CFrame = CF5 + Vector3.new(0,22-30*z,0)
earthm5.Scale = Vector3.new(5-5*z,515-500*z,5-5*z)
end
earth.Parent = nil
earth2.Parent = nil
earth3.Parent = nil
earth4.Parent = nil
earth5.Parent = nil
end))
                
                end
                end
        end
                end
function effect()
local clone = prt2:clone()
clone.Parent = Character
clone.Anchored = true
clone.Transparency = 0
clone.BrickColor = BrickColor.new("Gold")
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
clone.Transparency = 1*i
wait()
end
clone.Parent = nil
end))
local clone = prt3:clone()
clone.Parent = Character
clone.Anchored = true
clone.Transparency = 0
clone.BrickColor = BrickColor.new("Gold")
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
clone.Transparency = 1*i
wait()
end
clone.Parent = nil
end))
local clone = prt4:clone()
clone.Parent = Character
clone.Anchored = true
clone.Transparency = 0
clone.BrickColor = BrickColor.new("Gold")
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
clone.Transparency = 1*i
wait()
end
clone.Parent = nil
end))
end
function walkspeed(value)
Character.Humanoid.WalkSpeed = value
end
function atktype(s,e)
coroutine.resume(coroutine.create(function ()
attacktype = e
wait(0.25)
if attack == false then
attacktype = s
end
end))
end
function slash()
attack = true
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(45+135*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(45+135*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
end
ss(game.Workspace,1)
local con = prt2.Touched:connect(OT)
local CF = Torso.CFrame
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = bg.P + 10000
bg.cframe = CF
bg.Parent = Torso
local bv = Instance.new("BodyPosition") 
bv.Parent = Torso
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bv.position = CF.p + (Vector3.new(0,3,0) + (CF.lookVector * 5))
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1-0.75*i,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(180-225*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.75*i, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(180-225*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                effect()
if i == 0.8 then
bv.position = CF.p + (Vector3.new(0,-1,0) + (CF.lookVector * 12.5))
end
end
--RWLFunc()
--LWLFunc()
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(-45+150*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(-45+150*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                RWL.C0 = CFrame.new(1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(45*i),0,0)
                                RWL.C1 = CFrame.new(0.5, 1, 0)
                                LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i),0,0)
                                LWL.C1 = CFrame.new(-0.5, 1-1*i, 0.5*i)
if i == 0.2 then
bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 0))
ss(game.Workspace,1.25)
end
end
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(105-60*i), 0, math.rad(45-90))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(105-60*i),0,math.rad(-45+90))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                delay(0.1,function()
                                RWL.C0 = CFrame.new(1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(45-45*i),0,0)
                                RWL.C1 = CFrame.new(0.5, 1, 0)
                                LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+45*i),0,0)
                                LWL.C1 = CFrame.new(-0.5, 1*i, 0.5-0.5*i)
                                end)
end
bg.Parent = nil
bv.Parent = nil
wait(0.125)
delay(0.2,function()
--RWLRem()
--LWLRem()
end)
con:disconnect()
Hitdeb = 0
wait(0.3)
--LegsFix()
attack = false
end
function revenge()
attack = true
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+1*i,-0.75+0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+135*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+1*i, -0.75+0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+135*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
end
cs(game.Workspace,1.25)
bubblyblast(2.5,0.5,"Gold",prt2,false)
wait(0.1)
bubblyblast(2.5,0.5,"Gold",prt2,false)
wait(0.1)
bubblyblast(2.5,0.5,"Gold",prt2,false)
wait(0.1)
if Character.Humanoid.MaxHealth - Character.Humanoid.Health >= 10 then
mindamage = Character.Humanoid.MaxHealth - Character.Humanoid.Health - 10
elseif Character.Humanoid.MaxHealth - Character.Humanoid.Health < 10 then
mindamage = 0
end
maxdamage = Character.Humanoid.MaxHealth - Character.Humanoid.Health
crtmaxdamage = Character.Humanoid.MaxHealth - Character.Humanoid.Health + 25
ss(game.Workspace,1)
local con = prt2.Touched:connect(OT)
local bv = Instance.new("BodyPosition") 
bv.Parent = Torso
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
local CF = Torso.CFrame
bv.position = CF.p + (Vector3.new(0,8,0) + (Torso.CFrame.lookVector * 5))
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1.25-1*i,-0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(180-225*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1.25-1*i, -0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(180-225*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                effect()
if i == 0.4 then
bv.position = CF.p + (Vector3.new(0,-1,0) + (Torso.CFrame.lookVector * 12.5))
end
end
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(-45+90*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(-45+90*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
end
bv.Parent = nil
wait(0.25)
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
con:disconnect()
Hitdeb = 0
attack = false
end
function quickslash()
attack = true
local windeffect = true
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(45+135*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(45+135*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
end
coroutine.resume(coroutine.create(function()
repeat
wait()
local manaringm = Instance.new("SpecialMesh")
manaringm.Scale = Vector3.new(3,1,3)
manaringm.MeshType = "FileMesh"
manaringm.MeshId = "http://www.roblox.com/asset/?id=20329976"
local manaring = Instance.new("Part")
manaring.formFactor = 1
manaring.CanCollide = false
manaring.Name = "Handle"
manaring.Locked = true
manaring.Anchored = true
manaring.Size = Vector3.new(1,1,1)
manaring.Parent = swordholder
manaring.CFrame = Torso.CFrame * CFrame.new(0,-2.5,0)
manaringm.Parent = manaring
manaring.BrickColor = BrickColor.new("Institutional white")
manaring.Transparency = 0.5
delay(0.25,function()
for i = 0 , 1 , 0.1 do
wait()
manaring.Transparency = 0.5+0.5*i
end
manaring.Parent = nil
end)
until windeffect == false
end))
--RWLFunc()
--LWLFunc()
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do 
wait()
                                RWL.C0 = CFrame.new(1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i),0,0)
                                RWL.C1 = CFrame.new(0.5, 1, 0)
                                LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i),0,0)
                                LWL.C1 = CFrame.new(-0.5, 1,0)
end end))
ss(game.Workspace,1.25)
local con = prt2.Touched:connect(OT)
local CF = Torso.CFrame
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = bg.P + 10000
bg.cframe = CF
bg.Parent = Torso
local bv = Instance.new("BodyPosition") 
bv.Parent = Torso
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bv.P = bv.P + 10000
bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 12.5))
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1-0.75*i,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(180-225*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.75*i, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(180-225*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                effect()
end
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,0.25,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(-45+150*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(-45+150*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                RWL.C0 = CFrame.new(1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+90*i),0,0)
                                RWL.C1 = CFrame.new(0.5, 1, 0)
                                LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0)
                                LWL.C1 = CFrame.new(-0.5, 1-1*i,0.5*i)
if i == 0.2 then
bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 0))
ss(game.Workspace,1.75)
windeffect = false
end
end
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25,-0.75) * CFrame.fromEulerAnglesXYZ(math.rad(105-60*i), 0, math.rad(45-90))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(105-60*i),0,math.rad(-45+90))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                delay(0.1,function()
                                RWL.C0 = CFrame.new(1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(45-45*i),0,0)
                                RWL.C1 = CFrame.new(0.5, 1, 0)
                                LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+45*i),0,0)
                                LWL.C1 = CFrame.new(-0.5, 1*i, 0.5-0.5*i)
                                end)
end
bv.Parent = nil
bg.Parent = nil
wait(0.125)
delay(0.15,function()
--RWLRem()
--LWLRem()
end)
con:disconnect()
Hitdeb = 0
wait(0.3)
attack = false
--LegsFix()
end
function windslash()
attack = true
local windeffect = true
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1+0.5*i,0.25+0.25*i,-0.75+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+45*i), 0, math.rad(-45+45*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1-0.5*i, 0.25+0.25*i, -0.75+0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(45-90*i),0,math.rad(45-90*i))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45+45*i)) * CFrame.new(0, 0, 0.75-0.75*i)
end
coroutine.resume(coroutine.create(function()
repeat
wait(0.05)
local manaringm = Instance.new("SpecialMesh")
manaringm.Scale = Vector3.new(6,3,4)
manaringm.MeshType = "FileMesh"
manaringm.MeshId = "http://www.roblox.com/asset/?id=20329976"
local manaring = Instance.new("Part")
manaring.formFactor = 1
manaring.CanCollide = false
manaring.Name = "Handle"
manaring.Locked = true
manaring.Anchored = true
manaring.Size = Vector3.new(1,1,1)
manaring.Parent = swordholder
manaring.CFrame = Torso.CFrame * CFrame.new(0,0,-2.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
manaringm.Parent = manaring
manaring.BrickColor = BrickColor.new("Institutional white")
manaring.Transparency = 0.5
local manaringm2 = Instance.new("SpecialMesh")
manaringm2.Scale = Vector3.new(6,5,4)
manaringm2.MeshType = "FileMesh"
manaringm2.MeshId = "http://www.roblox.com/asset/?id=1038653"
local manaring2 = Instance.new("Part")
manaring2.formFactor = 1
manaring2.CanCollide = false
manaring2.Name = "Handle2"
manaring2.Locked = true
manaring2.Anchored = true
manaring2.Size = Vector3.new(1,1,1)
manaring2.Parent = swordholder
manaring2.CFrame = Torso.CFrame * CFrame.new(0,-0.25,-4.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
manaringm2.Parent = manaring2
manaring2.BrickColor = BrickColor.new("Institutional white")
manaring2.Transparency = 0.5
delay(0.25,function()
for i = 0 , 1 , 0.1 do
wait()
manaring.Transparency = 0.5+0.5*i
manaring2.Transparency = 0.5+0.5*i
end
manaring.Parent = nil
manaring2.Parent = nil
end)
until windeffect == false
end))
ss(game.Workspace,0.5)
local bv = Instance.new("BodyPosition") 
bv.Parent = Torso
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bv.P = bv.P + 100
local CF = Torso.CFrame
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(math.huge,0,math.huge) 
bg.P = bg.P + 10000
bg.cframe = CF
bg.Parent = Torso
bv.position = Torso.CFrame.p + (Vector3.new(0,0,0) + (Torso.CFrame.lookVector * 7.5))
for i = 0 , 25 do
wait()
bv.position = Torso.CFrame.p + (Vector3.new(0,0,0) + (Torso.CFrame.lookVector * 7.5))
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoE(prt2,12.5,math.floor(rndmdamage*0.75),false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoE(prt2,12.5,math.floor(rndmdamage*0.75),true)
end
end
windeffect = false
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1.5-0.5*i,0.5-0.25*i,0.25-1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-45*i), 0, math.rad(-45*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5+0.5*i, 0.25-0.25*i, -0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-45*i),0,math.rad(-45+90*i))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45*i)) * CFrame.new(0, 0, 0.75*i)
end
bv.Parent = nil
bg.Parent = nil
wait(0.125)
Hitdeb = 0
wait(0.3)
attack = false
end
function drain()
attack = true
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.25*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.25*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
end
ss(game.Workspace,1)
local con = prt2.Touched:connect(OT2)
local CF = Torso.CFrame
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = bg.P + 10000
bg.cframe = CF
bg.Parent = Torso
local bv = Instance.new("BodyPosition") 
bv.Parent = Torso
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 0))
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(70+20*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(70+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 15*i))
                                effect()
end
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-45*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-45*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
if i == 0.2 then
bv.position = CF.p + (Vector3.new(0,5,0) + (CF.lookVector * 0.5))
ss(game.Workspace,1.25)
end
if i == 0.5 then
bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 0))
end
end
bg.Parent = nil
bv.Parent = nil
wait(0.125)
con:disconnect()
Hitdeb = 0
wait(0.3)
attack = false
end
function unleash()
attack = true
local gg = swordholder:GetChildren()
local thing = 1
cs(game.Workspace,1.25)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1+0.5*i,0.25+0.25*i,-0.75+0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+135*i), 0, math.rad(-45+90*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.25*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                for l = 1 , #gg do
                                if gg[l].className == "Part" and gg[l].Name ~= "RAPart" then
                                gg[l].Transparency = 1*i
                                end
                                end
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
bubblyblast(0.75,2,"Institutional white",prt2,false)
ringblast(2,0.5,"Institutional white",prt2)
end
end
ss(game.Workspace,1)
mindamage = 50
maxdamage = 95
crtmaxdamage = 150
local con = prt2.Touched:connect(OT3)
local CF = Torso.CFrame
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = bg.P + 10000
bg.cframe = CF
bg.Parent = Torso
local bv = Instance.new("BodyPosition") 
bv.Parent = Torso
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 0))
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.75*i) * CFrame.fromEulerAnglesXYZ(math.rad(180-135*i), 0, math.rad(45-45*i))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(70+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 15*i))
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
bubblyblast(0.5,2,"Institutional white",prt2,false)
ringblast(1.5,0.5,"Institutional white",prt2)
end
end
bv.P = bv.P + 10000
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-45*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-45*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
                                for l = 1 , #gg do
                                if gg[l].className == "Part" and gg[l].Name ~= "RAPart" then
                                gg[l].Transparency = 1-1*i
                                end
                                end
if i == 0.2 then
bv.position = CF.p + (Vector3.new(0,5,0) + (CF.lookVector * 0.5))
ss(game.Workspace,1.25)
ls(game.Workspace,1.25)
end
if i == 0.5 then
bv.position = CF.p + (Vector3.new(0,0,0) + (CF.lookVector * 0))
end
end
bg.Parent = nil
bv.Parent = nil
wait(0.125)
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
con:disconnect()
Hitdeb = 0
wait(0.3)
attack = false
end
function tremor()
attack = true
local thing = 1
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
ringblast(1,0.5,"Brown",prt2)
end
end
cs(game.Workspace,1.5)
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1,1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                effect()
end
wait(0.1)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
                                effect()
end
mindamage = 15
maxdamage = 35
crtmaxdamage = 50
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoETremor(prt2,15,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoETremor(prt2,15,rndmdamage,true)
end
local CFf = prt2.CFrame * CFrame.new(0,1.5,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(1.5,1.5,1.5)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CFf
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
for i = 1 , 1 do
rs(game.Workspace,2.75)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25*i,0.15*i)
end
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
end
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25+1*i,0.15-0.15*i)
end
earth.Parent = nil
attack = false
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end
function quake()
attack = true
local thing = 1
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
ringblast(2,0.5,"Brown",prt2)
end
end
cs(game.Workspace,1.5)
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1,1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                effect()
end
wait(0.1)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
                                effect()
end
mindamage = 25
maxdamage = 45
crtmaxdamage = 55
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoEQuake(prt2,15,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoEQuake(prt2,15,rndmdamage,true)
end
local CFf = prt2.CFrame * CFrame.new(0,1.5,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(2,2,2)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CFf
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
for i = 1 , 1 do
rs(game.Workspace,2)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.3*i,0.15*i)
end
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
end
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25+1*i,0.15-0.15*i)
end
earth.Parent = nil
attack = false
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end
function cataclysm()
attack = true
local thing = 1
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
ringblast(3.5,1,"Brown",prt2)
end
end
cs(game.Workspace,1.5)
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1,1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                effect()
end
wait(0.1)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
                                effect()
end
mindamage = 35
maxdamage = 65
crtmaxdamage = 75
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoECataclysm(prt2,15,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoECataclysm(prt2,15,rndmdamage,true)
end
local CFf = prt2.CFrame * CFrame.new(0,1.5,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(2,2,2)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CFf
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
for i = 1 , 1 do
rs(game.Workspace,2)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.3*i,0.15*i)
end
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
end
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25+1*i,0.15-0.15*i)
end
earth.Parent = nil
attack = false
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end
function fume()
attack = true
local thing = 1
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
ringblast(2,0.5,"Gold",prt2)
end
end
cs(game.Workspace,1.5)
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1,1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                effect()
end
wait(0.1)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
                                effect()
end
mindamage = 25
maxdamage = 45
crtmaxdamage = 55
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoEFume(prt2,15,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoEFume(prt2,15,rndmdamage,true)
end
local CFf = prt2.CFrame * CFrame.new(0,1.5,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(2,2,2)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CFf
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
for i = 1 , 1 do
rs(game.Workspace,2)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.3*i,0.15*i)
end
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
end
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25+1*i,0.15-0.15*i)
end
earth.Parent = nil
attack = false
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end
--Eruption
function eruption()
attack = true
local thing = 1
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
ringblast(3.5,1,"Gold",prt2)
end
end
cs(game.Workspace,1.5)
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1,1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                effect()
end
wait(0.1)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
                                effect()
end
mindamage = 35
maxdamage = 65
crtmaxdamage = 75
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoEEruption(prt2,15,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoEEruption(prt2,15,rndmdamage,true)
end
local CFf = prt2.CFrame * CFrame.new(0,1.5,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(2,2,2)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CFf
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
for i = 1 , 1 do
rs(game.Workspace,2)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.3*i,0.15*i)
end
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
end
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25+1*i,0.15-0.15*i)
end
earth.Parent = nil
attack = false
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end
function tundra()
attack = true
local thing = 1
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
ringblast(2,0.5,"Bright blue",prt2)
end
end
cs(game.Workspace,1.5)
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1,1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                effect()
end
wait(0.1)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
                                effect()
end
mindamage = 25
maxdamage = 45
crtmaxdamage = 55
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoETundra(prt2,15,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoETundra(prt2,15,rndmdamage,true)
end
local CFf = prt2.CFrame * CFrame.new(0,1.5,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(2,2,2)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CFf
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
for i = 1 , 1 do
rs(game.Workspace,2)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.3*i,0.15*i)
end
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
end
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25+1*i,0.15-0.15*i)
end
earth.Parent = nil
attack = false
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end
function iceberg()
attack = true
local thing = 1
for i = 0 , 1 , 0.1 do
wait()
                                RW.C0 = CFrame.new(1,0.25+0.75*i,-0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 0.25+0.75*i, -0.75+0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(45+100*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
if thing == 2 then
thing = 1
end
if thing == 1 then
thing = thing + 1
ringblast(3.5,1,"Bright blue",prt2)
end
end
cs(game.Workspace,1.5)
for i = 0 , 1 , 0.2 do
wait()
                                RW.C0 = CFrame.new(1,1,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1,1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(145+25*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                effect()
end
wait(0.1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i), 0, math.rad(-45))
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(170-145*i),0,math.rad(45))
                LW.C1 = CFrame.new(0, 0.5, 0)        
                                w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75-0.75*i)
                                effect()
end
mindamage = 35
maxdamage = 65
crtmaxdamage = 75
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
AoEIceberg(prt2,15,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
AoEIceberg(prt2,15,rndmdamage,true)
end
local CFf = prt2.CFrame * CFrame.new(0,1.5,0)
local earthm = Instance.new("BlockMesh")
earthm.Scale = Vector3.new(2,2,2)
local earth = Instance.new("Part")
earth.formFactor = 0
earth.CanCollide = false
earth.Name = "Earth1"
earth.Locked = true
earth.Anchored = true
earth.Size = Vector3.new(1,1,1)
earth.Parent = swordholder
earth.CFrame = CFf
earthm.Parent = earth
earth.BrickColor = BrickColor.new("Brown")
earth.Transparency = 0
for i = 1 , 1 do
rs(game.Workspace,2)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.3*i,0.15*i)
end
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1,0.5-0.25*i,-0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i), 0, math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1, 0.5-0.25*i, -0.5-0.25*i) * CFrame.fromEulerAnglesXYZ(math.rad(25+20*i),0,math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0)        
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180-90*i), 0, math.rad(-45)) * CFrame.new(0, 0, 0.75*i)
end
for ii = 1 , #AoETrue do
table.remove(AoETrue,#AoETrue)
end
for i = 0 , 1 , 0.1 do
wait()
earth.CFrame = CFf * CFrame.new(0,-0.25+1*i,0.15-0.15*i)
end
earth.Parent = nil
attack = false
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end
hold = false 
function ob1d(mouse) 
hold = true 
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false
function key(key)
if attack == true then return end
if key == "q" then
slash()
end
if key == "e" then
revenge()
end
if key == "r" then
quickslash()
end
if key == "t" then
windslash()
end
if key == "y" then
drain()
end
if key == "f" then
unleash()
end
if key == "z" then
tremor()
end
if key == "x" then
quake()
end
if key == "c" then
cataclysm()
end
if key == "v" then
fume()
end
if key == "b" then
eruption()
end
if key == "n" then
tundra()
end
if key == "m" then
iceberg()
end
end 
function key2(key) 
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
RWFunc()
        equipanim()
end 
function ds(mouse) 
hideanim()
 wait(0.1)
RWRem()
LWRem()
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
-- lego mediafire
