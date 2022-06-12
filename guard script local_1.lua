
--[[                                              
Script shared by eletronix                                              ]]

ModelName = "OMGshadeslayer"
attack = false
attacktype = 1
Hitdeb = 0
Hitdeb2 = 0
name = "OMGshadeslayer"
----------------------------
--Customize mediafire
Rage = 0 
Rage = 200
mindamage = 10
maxdamage = 40
crtmaxdamage = 60
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
crtrate = 100/5
HP = 2000
WS = 16
jump = 50
--100%/critpercentage

oblkbrkr = 3
blockbreaker = oblkbrkr


handlecolor = BrickColor.new("Black")
bcolor = BrickColor.new("White")
gemcolor = BrickColor.new("Black")



-------------------------------------------------------------------------------------------------------------------------------------





if game.Workspace:findFirstChild(ModelName,true) ~= nil then
game.Workspace:findFirstChild(ModelName,true).Parent = nil
end






local bodyholder = Instance.new("Model")
bodyholder.Name = ModelName
bodyholder.Parent = game.Workspace
Character = bodyholder

ev = Instance.new("BoolValue",bodyholder)
ev.Name = "EquippedVal"
ev.Value = false
blk = Instance.new("BoolValue",bodyholder)
blk.Name = "Block"
blk.Value = false
blkc = Instance.new("IntValue",blk)
blkc.Name = "BlockPower"
blkc.Value = blockpower
SpawnPos = Instance.new("Vector3Value",script)
SpawnPos.Name = "SpawnPos"
SpawnPos.Value = game.Workspace[name].Head.Position--Vector3.new(20,10,0)


local Head = Instance.new("Part")
Head.formFactor = 3
Head.CanCollide = true
Head.Name = "Head"
Head.Locked = true
Head.Size = Vector3.new(4,2,2)
Head.Parent = bodyholder
Head.BrickColor = BrickColor.new("White") 
local smh = Instance.new("SpecialMesh",Head)
smh.Scale = Vector3.new(1.25,1.25,1.25)
local Torso = Instance.new("Part")
Torso.formFactor = 3
Torso.CanCollide = true
Torso.Name = "Torso"
Torso.Locked = true
Torso.Size = Vector3.new(4,4,2)
Torso.Parent = bodyholder
Torso.BrickColor = BrickColor.new("Black")
Torso.Reflectance = 0.1
Torso.CFrame = CFrame.new(SpawnPos.Value)
local msht = Instance.new("BlockMesh",Torso)
local RightArm = Instance.new("Part")
RightArm.formFactor = 3
RightArm.CanCollide = true
RightArm.Name = "Right Arm" 
RightArm.Locked = true
RightArm.Size = Vector3.new(2,4,2)
RightArm.Parent = bodyholder
RightArm.BrickColor = BrickColor.new("Bright red")
local mshra = Instance.new("BlockMesh",RightArm)
local LeftArm = Instance.new("Part")
LeftArm.formFactor = 3
LeftArm.CanCollide = true
LeftArm.Name = "Left Arm"
LeftArm.Locked = true
LeftArm.Size = Vector3.new(2,4,2)
LeftArm.Parent = bodyholder
LeftArm.BrickColor = BrickColor.new("Bright red")
local mshla = Instance.new("BlockMesh",LeftArm)
local RightLeg = Instance.new("Part")
RightLeg.formFactor = 3
RightLeg.CanCollide = true
RightLeg.Name = "Right Leg"
RightLeg.Locked = true
RightLeg.Size = Vector3.new(2,4,2)
RightLeg.Parent = bodyholder
RightLeg.BrickColor = BrickColor.new("Black")
local mshrl = Instance.new("BlockMesh",RightLeg)
local LeftLeg = Instance.new("Part")
LeftLeg.formFactor = 3
LeftLeg.CanCollide = true
LeftLeg.Name = "Left Leg"
LeftLeg.Locked = true
LeftLeg.Size = Vector3.new(2,4,2)
LeftLeg.Parent = bodyholder
LeftLeg.BrickColor = BrickColor.new("Black") 
local mshll = Instance.new("BlockMesh",LeftLeg)

--player
player = nil
--welds
RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")
--what anim
anim = "none"
--save shoulders
AoETrue = {}
Neck = Instance.new("Motor")




--derp
        RW.Part0 = Character.Torso
        RW.Part1 = Character["Right Arm"]
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        RW.Parent = bodyholder
        --
        LW.Part0 = Character.Torso
        LW.Part1 = Character["Left Arm"]
        LW.C0 = CFrame.new(-3, 1, 0) 
        LW.C1 = CFrame.new(0, 1, 0)
        LW.Parent = bodyholder
        --
        RWL.Part0 = Character.Torso
        RWL.Part1 = Character["Right Leg"]
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(0, 0, 0)
        RWL.C1 = CFrame.new(1, 2, 0)
        RWL.Parent = bodyholder
        --
        LWL.Part0 = Character.Torso
        LWL.Part1 = Character["Left Leg"]
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(0, 0, 0)
        LWL.C1 = CFrame.new(-1, 2, 0)
        LWL.Parent = bodyholder
        --
        Neck.Part0 = Character.Torso
        Neck.Part1 = Character.Head
        Neck.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
        Neck.C1 = CFrame.new(0, -1, 0) 
        Neck.Parent = bodyholder

----

--

armorholder = Instance.new("Model")
armorholder.Name = "Armor"
armorholder.Parent = bodyholder

ap1 = Instance.new("Part")
ap1.formFactor = 3
ap1.CanCollide = false
ap1.Name = "HelmP1" 
ap1.Locked = true
ap1.Size = Vector3.new(2.7,1.5,0.2)
ap1.Parent = armorholder
ap1.BrickColor = BrickColor.new("Bright red")
am1 = Instance.new("BlockMesh",ap1)
aw1 = Instance.new("Weld")
aw1.Parent = ap1
aw1.Part0 = ap1
aw1.Part1 = Head
aw1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, 0) * CFrame.new(0, -1, 1.1) 
ap1a = Instance.new("Part")
ap1a.formFactor = 3
ap1a.CanCollide = false
ap1a.Name = "HelmP1a"
ap1a.Locked = true
ap1a.Size = Vector3.new(0.3,1.5,0.2)
ap1a.Parent = armorholder
ap1a.BrickColor = BrickColor.new("Bright red")
am1a = Instance.new("BlockMesh",ap1a)
aw1a = Instance.new("Weld")
aw1a.Parent = ap1a
aw1a.Part0 = ap1a
aw1a.Part1 = Head
aw1a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw1a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10), 0, 0) * CFrame.new(0, 0.4, 1.3) 
ap2 = Instance.new("Part")
ap2.formFactor = 3
ap2.CanCollide = false
ap2.Name = "HelmP2"
ap2.Locked = true
ap2.Size = Vector3.new(0.2,0.75,1)
ap2.Parent = armorholder
ap2.BrickColor = BrickColor.new("Bright red")
am2 = Instance.new("BlockMesh",ap2)
aw2 = Instance.new("Weld")
aw2.Parent = ap2
aw2.Part0 = ap2
aw2.Part1 = Head
aw2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(-1.25, -1, 0.55) 
ap3 = Instance.new("Part")
ap3.formFactor = 3
ap3.CanCollide = false
ap3.Name = "HelmP3"
ap3.Locked = true
ap3.Size = Vector3.new(0.2,0.75,1)
ap3.Parent = armorholder
ap3.BrickColor = BrickColor.new("Bright red")
am3 = Instance.new("BlockMesh",ap3)
aw3 = Instance.new("Weld")
aw3.Parent = ap3
aw3.Part0 = ap3
aw3.Part1 = Head
aw3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(1.25, -1, 0.55) 
ap4 = Instance.new("Part")
ap4.formFactor = 3
ap4.CanCollide = false
ap4.Name = "HelmP4"
ap4.Locked = true
ap4.Size = Vector3.new(4,2.2,2.2)
ap4.Parent = armorholder
ap4.BrickColor = BrickColor.new("Bright red")
am4 = Instance.new("SpecialMesh",ap4)
am4.Scale = Vector3.new(1.25,1.25,1.25)
aw4 = Instance.new("Weld")
aw4.Parent = ap4
aw4.Part0 = ap4
aw4.Part1 = Head
aw4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0, -0.1) 
ap5 = Instance.new("Part")
ap5.formFactor = 3
ap5.CanCollide = false
ap5.Name = "HelmP5"
ap5.Locked = true
ap5.Size = Vector3.new(2,0.5,0.2)
ap5.Parent = armorholder
ap5.BrickColor = BrickColor.new("Black")
am5 = Instance.new("BlockMesh",ap5)
aw5 = Instance.new("Weld")
aw5.Parent = ap5
aw5.Part0 = ap5
aw5.Part1 = Head
aw5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0, 1.15) 
ap6 = Instance.new("Part")
ap6.formFactor = 3
ap6.CanCollide = false
ap6.Name = "HelmP6"
ap6.Locked = true
ap6.Size = Vector3.new(0.2,1.5,2.5)
ap6.Parent = armorholder
ap6.BrickColor = BrickColor.new("Bright red")
am6 = Instance.new("BlockMesh",ap6)
aw6 = Instance.new("Weld")
aw6.Parent = ap6
aw6.Part0 = ap6
aw6.Part1 = Head
aw6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(1.25, 0.25, 0) 
ap7 = Instance.new("Part")
ap7.formFactor = 3
ap7.CanCollide = false
ap7.Name = "HelmP7"
ap7.Locked = true
ap7.Size = Vector3.new(0.2,1.5,2.5)
ap7.Parent = armorholder
ap7.BrickColor = BrickColor.new("Bright red")
am7 = Instance.new("BlockMesh",ap7)
aw7 = Instance.new("Weld")
aw7.Parent = ap7
aw7.Part0 = ap7
aw7.Part1 = Head
aw7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(-1.25, 0.25, 0) 
ap8 = Instance.new("Part")
ap8.formFactor = 3
ap8.CanCollide = false
ap8.Name = "HelmP8"
ap8.Locked = true
ap8.Size = Vector3.new(0.2,2,1)
ap8.Parent = armorholder
ap8.BrickColor = BrickColor.new("Bright red")
am8 = Instance.new("BlockMesh",ap8)
aw8 = Instance.new("Weld")
aw8.Parent = ap8
aw8.Part0 = ap8
aw8.Part1 = Head
aw8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(-1.25, 0.25, -1) 
ap9 = Instance.new("Part")
ap9.formFactor = 3
ap9.CanCollide = false
ap9.Name = "HelmP9"
ap9.Locked = true
ap9.Size = Vector3.new(0.2,2,1)
ap9.Parent = armorholder
ap9.BrickColor = BrickColor.new("Bright red")
am9 = Instance.new("BlockMesh",ap9)
aw9 = Instance.new("Weld")
aw9.Parent = ap9
aw9.Part0 = ap9
aw9.Part1 = Head
aw9.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw9.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(1.25, 0.25, -1) 
ap9 = Instance.new("Part")
ap9.formFactor = 3
ap9.CanCollide = false
ap9.Name = "HelmP9"
ap9.Locked = true
ap9.Size = Vector3.new(2.7,2,0.2)
ap9.Parent = armorholder
ap9.BrickColor = BrickColor.new("Bright red")
am9 = Instance.new("BlockMesh",ap9)
aw9 = Instance.new("Weld")
aw9.Parent = ap9
aw9.Part0 = ap9
aw9.Part1 = Head
aw9.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw9.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0.25, -1.5) 
ap10 = Instance.new("Part")
ap10.formFactor = 3
ap10.CanCollide = false
ap10.Name = "HelmP10"
ap10.Locked = true
ap10.Size = Vector3.new(0.2,1,0.2)
ap10.Parent = armorholder
ap10.BrickColor = BrickColor.new("Bright blue")
am10 = Instance.new("CylinderMesh",ap10)
aw10 = Instance.new("Weld")
aw10.Parent = ap10
aw10.Part0 = ap10
aw10.Part1 = Head
aw10.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw10.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0) * CFrame.new(0, -1.5, -1.5) 
ap11 = Instance.new("Part")
ap11.formFactor = 3
ap11.CanCollide = false
ap11.Name = "HelmP11"
ap11.Locked = true
ap11.Size = Vector3.new(1.5,1.5,1.5)
ap11.Parent = armorholder
ap11.BrickColor = BrickColor.new("White")
am11 = Instance.new("SpecialMesh",ap11)
am11.MeshType = "Sphere"
aw11 = Instance.new("Weld")
aw11.Parent = ap11
aw11.Part0 = ap11
aw11.Part1 = ap10
aw11.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, -1, 0) 
ap12 = Instance.new("Part")
ap12.formFactor = 3
ap12.CanCollide = false
ap12.Name = "HelmP12"
ap12.Locked = true
ap12.Size = Vector3.new(1,1,1)
ap12.Parent = armorholder
ap12.BrickColor = BrickColor.new("White")
am12 = Instance.new("SpecialMesh",ap12)
am12.MeshId = "http://www.roblox.com/asset/?id=1778999"
am12.Scale = Vector3.new(1.1,1,1.1)
aw12 = Instance.new("Weld")
aw12.Parent = ap12
aw12.Part0 = ap12
aw12.Part1 = ap10
aw12.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw12.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, -2, 0) 
ap13 = Instance.new("Part")
ap13.formFactor = 3
ap13.CanCollide = false
ap13.Name = "HelmP13"
ap13.Locked = true
ap13.Size = Vector3.new(1,1,1)
ap13.Parent = armorholder
ap13.BrickColor = BrickColor.new("Bright blue")
ap13.Reflectance = 0.1
am13 = Instance.new("SpecialMesh",ap13)
am13.MeshType = "Sphere"
am13.Scale = Vector3.new(1,1,1)
aw13 = Instance.new("Weld")
aw13.Parent = ap13
aw13.Part0 = ap13
aw13.Part1 = Head
aw13.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw13.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(1.25, 0.5, 0.25) 
ap14 = Instance.new("Part")
ap14.formFactor = 3
ap14.CanCollide = false
ap14.Name = "HelmP14"
ap14.Locked = true
ap14.Size = Vector3.new(1,1,1)
ap14.Parent = armorholder
ap14.BrickColor = BrickColor.new("Bright blue")
ap14.Reflectance = 0.1
am14 = Instance.new("SpecialMesh",ap14)
am14.MeshType = "Sphere"
am14.Scale = Vector3.new(1,1,1)
aw14 = Instance.new("Weld")
aw14.Parent = ap14
aw14.Part0 = ap14
aw14.Part1 = Head 
aw14.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw14.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(-1.25, 0.5, 0.25) 
ap15 = Instance.new("Part")
ap15.formFactor = 3
ap15.CanCollide = false
ap15.Name = "HelmP15"
ap15.Locked = true
ap15.Size = Vector3.new(2.5,1.5,0.2)
ap15.Parent = armorholder
ap15.BrickColor = BrickColor.new("Bright yellow")
ap15.Reflectance = 0.1
am15 = Instance.new("BlockMesh",ap15)
aw15 = Instance.new("Weld")
aw15.Parent = ap15
aw15.Part0 = ap15
aw15.Part1 = Head 
aw15.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0) * CFrame.new(0, 1, 1.75) 
ap16 = Instance.new("Part")
ap16.formFactor = 3
ap16.CanCollide = false
ap16.Name = "HelmP16"
ap16.Locked = true
ap16.Size = Vector3.new(0.2,1,2.5)
ap16.Parent = armorholder
ap16.BrickColor = BrickColor.new("Bright yellow")
ap16.Reflectance = 0.1
am16 = Instance.new("BlockMesh",ap16)
aw16 = Instance.new("Weld")
aw16.Parent = ap16 
aw16.Part0 = ap16
aw16.Part1 = Head 
aw16.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw16.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-20), 0) * CFrame.new(-1.6, 1.25, 0.6) 
ap17 = Instance.new("Part")
ap17.formFactor = 3
ap17.CanCollide = false
ap17.Name = "HelmP17"
ap17.Locked = true
ap17.Size = Vector3.new(0.2,1,2.5)
ap17.Parent = armorholder
ap17.BrickColor = BrickColor.new("Bright yellow")
ap17.Reflectance = 0.1
am17 = Instance.new("BlockMesh",ap17)
aw17 = Instance.new("Weld")
aw17.Parent = ap17
aw17.Part0 = ap17
aw17.Part1 = Head 
aw17.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw17.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(20), 0) * CFrame.new(1.6, 1.25, 0.6) 
ap18 = Instance.new("Part")
ap18.formFactor = 3
ap18.CanCollide = false
ap18.Name = "HelmP18"
ap18.Locked = true
ap18.Size = Vector3.new(0.2,1.5,1.5)
ap18.Parent = armorholder
ap18.BrickColor = BrickColor.new("Bright red")
ap18.Reflectance = 0.1
am18 = Instance.new("BlockMesh",ap18)
aw18 = Instance.new("Weld")
aw18.Parent = ap18
aw18.Part0 = ap18
aw18.Part1 = Head 
aw18.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw18.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(30), 0) * CFrame.new(-1.7, 1, -1.1) 
ap19 = Instance.new("Part")
ap19.formFactor = 3
ap19.CanCollide = false
ap19.Name = "HelmP19"
ap19.Locked = true
ap19.Size = Vector3.new(0.2,1.5,1.5)
ap19.Parent = armorholder
ap19.BrickColor = BrickColor.new("Bright red")
ap19.Reflectance = 0.1
am19 = Instance.new("BlockMesh",ap19)
aw19 = Instance.new("Weld")
aw19.Parent = ap19
aw19.Part0 = ap19
aw19.Part1 = Head 
aw19.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw19.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-30), 0) * CFrame.new(1.7, 1, -1.1) 
ap20 = Instance.new("Part")
ap20.formFactor = 3
ap20.CanCollide = false
ap20.Name = "HelmP20"
ap20.Locked = true 
ap20.Size = Vector3.new(2.7,1.5,0.2)
ap20.Parent = armorholder
ap20.BrickColor = BrickColor.new("Bright red")
ap20.Reflectance = 0.1
am20 = Instance.new("BlockMesh",ap20)
aw20 = Instance.new("Weld")
aw20.Parent = ap20
aw20.Part0 = ap20
aw20.Part1 = Head 
aw20.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw20.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(0, 1, -1.7) 
ap21 = Instance.new("Part")
ap21.formFactor = 3
ap21.CanCollide = false
ap21.Name = "HelmP21"
ap21.Locked = true 
ap21.Size = Vector3.new(0.2,0.2,0.2)
ap21.Parent = armorholder
ap21.Transparency = 0.9
ap21.BrickColor = BrickColor.new("Bright yellow")
am21 = Instance.new("BlockMesh",ap21)
aw21 = Instance.new("Weld")
aw21.Parent = ap21
aw21.Part0 = ap21
aw21.Part1 = Head
aw21.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw21.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(0.55, 0.15, 1.2) 
ap22 = Instance.new("Part")
ap22.formFactor = 3
ap22.CanCollide = false
ap22.Name = "HelmP22"
ap22.Locked = true 
ap22.Size = Vector3.new(0.2,0.2,0.2)
ap22.Parent = armorholder
ap22.BrickColor = BrickColor.new("Bright yellow")
ap22.Transparency = 0.9
am22 = Instance.new("BlockMesh",ap22)
aw22 = Instance.new("Weld")
aw22.Parent = ap22
aw22.Part0 = ap22
aw22.Part1 = Head
aw22.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw22.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(-0.55, 0.15, 1.2) 
ap23 = Instance.new("Part")
ap23.formFactor = 3
ap23.CanCollide = false
ap23.Name = "HelmP23" 
ap23.Locked = true 
ap23.Size = Vector3.new(1,1,1)
ap23.Parent = armorholder
ap23.BrickColor = BrickColor.new("Dark stone grey")
ap23.Reflectance = 0.1
am23 = Instance.new("BlockMesh",ap23)
am23.Scale = Vector3.new(4,2,1.5)
aw23 = Instance.new("Weld")
aw23.Parent = ap23
aw23.Part0 = ap23
aw23.Part1 = Torso 
aw23.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw23.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(0, -1, 1) 
ap24 = Instance.new("Part")
ap24.formFactor = 3
ap24.CanCollide = false
ap24.Name = "HelmP24"
ap24.Locked = true 
ap24.Size = Vector3.new(1,1,1)
ap24.Parent = armorholder
ap24.BrickColor = BrickColor.new("Dark stone grey")
ap24.Reflectance = 0.1
am24 = Instance.new("BlockMesh",ap24)
am24.Scale = Vector3.new(2,1,1.5)
aw24 = Instance.new("Weld")
aw24.Parent = ap24
aw24.Part0 = ap24
aw24.Part1 = Torso 
aw24.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw24.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(-1.2, -0.5, 1.2) 
ap25 = Instance.new("Part")
ap25.formFactor = 3
ap25.CanCollide = false
ap25.Name = "HelmP25"
ap25.Locked = true 
ap25.Size = Vector3.new(1,1,1)
ap25.Parent = armorholder
ap25.BrickColor = BrickColor.new("Dark stone grey")
ap25.Reflectance = 0.1
am25 = Instance.new("BlockMesh",ap25)
am25.Scale = Vector3.new(2,1,1.5)
aw25 = Instance.new("Weld")
aw25.Parent = ap25
aw25.Part0 = ap25 
aw25.Part1 = Torso 
aw25.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw25.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(1.2, -0.5, 1.2) 
ap26 = Instance.new("Part")
ap26.formFactor = 3
ap26.CanCollide = false
ap26.Name = "HelmP26"
ap26.Locked = true 
ap26.Size = Vector3.new(1,1,1)
ap26.Parent = armorholder
ap26.BrickColor = BrickColor.new("Dark stone grey")
ap26.Reflectance = 0.1
am26 = Instance.new("SpecialMesh",ap26)
am26.Scale = Vector3.new(1.2,2,1.5)
am26.MeshType = "Wedge"
aw26 = Instance.new("Weld")
aw26.Parent = ap26
aw26.Part0 = ap26
aw26.Part1 = Torso 
aw26.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw26.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(-90), 0) * CFrame.new(1, 0.5, 1.2) 
ap27 = Instance.new("Part")
ap27.formFactor = 3
ap27.CanCollide = false
ap27.Name = "HelmP27"
ap27.Locked = true 
ap27.Size = Vector3.new(1,1,1)
ap27.Parent = armorholder
ap27.BrickColor = BrickColor.new("Dark stone grey")
ap27.Reflectance = 0.1
am27 = Instance.new("SpecialMesh",ap27)
am27.Scale = Vector3.new(1.2,2,1.5)
am27.MeshType = "Wedge"
aw27 = Instance.new("Weld")
aw27.Parent = ap27
aw27.Part0 = ap27
aw27.Part1 = Torso 
aw27.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw27.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(90), 0) * CFrame.new(-1, 0.5, 1.2) 
ap28 = Instance.new("Part")
ap28.formFactor = 3
ap28.CanCollide = false
ap28.Name = "HelmP28"
ap28.Locked = true 
ap28.Size = Vector3.new(1,1,1)
ap28.Parent = armorholder
ap28.BrickColor = BrickColor.new("Mid grey")
ap28.Reflectance = 0.1
am28 = Instance.new("SpecialMesh",ap28)
am28.Scale = Vector3.new(3.5,3.5,1)
am28.MeshType = "Sphere" 
aw28 = Instance.new("Weld") 
aw28.Parent = ap28
aw28.Part0 = ap28
aw28.Part1 = Torso 
aw28.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw28.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(0, 0, 1) 
ap29 = Instance.new("Part")
ap29.formFactor = 3
ap29.CanCollide = false
ap29.Name = "HelmP29"
ap29.Locked = true 
ap29.Size = Vector3.new(1,1,1)
ap29.Parent = armorholder
ap29.BrickColor = BrickColor.new("Really black")
ap29.Reflectance = 0.1
am29 = Instance.new("BlockMesh",ap29)
am29.Scale = Vector3.new(4.1,1,2.1) 
aw29 = Instance.new("Weld") 
aw29.Parent = ap29
aw29.Part0 = ap29
aw29.Part1 = Torso 
aw29.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw29.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(0, 2-0.5, 0) 
ap30 = Instance.new("Part")
ap30.formFactor = 3
ap30.CanCollide = false
ap30.Name = "HelmP30"
ap30.Locked = true 
ap30.Size = Vector3.new(1,1,1)
ap30.Parent = armorholder
ap30.BrickColor = BrickColor.new("Bright yellow")
ap30.Reflectance = 0.1 
am30 = Instance.new("CylinderMesh",ap30)
am30.Scale = Vector3.new(1.5,1,1.5) 
aw30 = Instance.new("Weld") 
aw30.Parent = ap30
aw30.Part0 = ap30
aw30.Part1 = Torso 
aw30.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw30.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), 0) * CFrame.new(0, 2-0.5, 1) 
ap30a = Instance.new("Part")
ap30a.formFactor = 3
ap30a.CanCollide = false
ap30a.Name = "HelmP30a"
ap30a.Locked = true 
ap30a.Size = Vector3.new(1,1,1)
ap30a.Parent = armorholder
ap30a.BrickColor = BrickColor.new("Bright yellow")
ap30a.Reflectance = 0.1 
am30a = Instance.new("CylinderMesh",ap30a)
am30a.Scale = Vector3.new(0.75,1,0.75) 
aw30a = Instance.new("Weld") 
aw30a.Parent = ap30a
aw30a.Part0 = ap30a
aw30a.Part1 = Torso 
aw30a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw30a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(20)) * CFrame.new(0.5, 2.2, 1) 
ap31a = Instance.new("Part")
ap31a.formFactor = 3
ap31a.CanCollide = false
ap31a.Name = "HelmP31a"
ap31a.Locked = true 
ap31a.Size = Vector3.new(1,1,1)
ap31a.Parent = armorholder
ap31a.BrickColor = BrickColor.new("Bright yellow")
ap31a.Reflectance = 0.1 
am31a = Instance.new("CylinderMesh",ap31a)
am31a.Scale = Vector3.new(0.75,1,0.75) 
aw31a = Instance.new("Weld") 
aw31a.Parent = ap31a
aw31a.Part0 = ap31a
aw31a.Part1 = Torso 
aw31a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw31a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(-20)) * CFrame.new(-0.5, 2.2, 1) 
ap32a = Instance.new("Part")
ap32a.formFactor = 3
ap32a.CanCollide = false
ap32a.Name = "HelmP32a"
ap32a.Locked = true 
ap32a.Size = Vector3.new(1,3,1)
ap32a.Parent = armorholder
ap32a.BrickColor = BrickColor.new("Bright yellow")
ap32a.Reflectance = 0.1 
am32a = Instance.new("CylinderMesh",ap32a)
am32a.Scale = Vector3.new(0.75,1,0.75) 
aw32a = Instance.new("Weld") 
aw32a.Parent = ap32a
aw32a.Part0 = ap32a
aw32a.Part1 = Torso 
aw32a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw32a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-0.75, 4, 1) 
ap33a = Instance.new("Part")
ap33a.formFactor = 3
ap33a.CanCollide = false
ap33a.Name = "HelmP33a"
ap33a.Locked = true 
ap33a.Size = Vector3.new(1,3,1)
ap33a.Parent = armorholder
ap33a.BrickColor = BrickColor.new("Bright yellow")
ap33a.Reflectance = 0.1 
am33a = Instance.new("CylinderMesh",ap33a)
am33a.Scale = Vector3.new(0.75,1,0.75) 
aw33a = Instance.new("Weld") 
aw33a.Parent = ap33a
aw33a.Part0 = ap33a
aw33a.Part1 = Torso 
aw33a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw33a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0.75, 4, 1) 

ap31 = Instance.new("Part")
ap31.formFactor = 3
ap31.CanCollide = false
ap31.Name = "HelmP31"
ap31.Locked = true 
ap31.Size = Vector3.new(1,1,1)
ap31.Parent = armorholder
ap31.BrickColor = BrickColor.new("Dark stone grey")
ap31.Reflectance = 0.1 
am31 = Instance.new("BlockMesh",ap31)
am31.Scale = Vector3.new(1.7,1,1.1)
aw31 = Instance.new("Weld")
aw31.Parent = ap31
aw31.Part0 = ap31
aw31.Part1 = Torso 
aw31.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw31.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(-1.25, -0.8, -1.2) 
ap32 = Instance.new("Part")
ap32.formFactor = 3
ap32.CanCollide = false
ap32.Name = "HelmP32"
ap32.Locked = true 
ap32.Size = Vector3.new(1,1,1)
ap32.Parent = armorholder
ap32.BrickColor = BrickColor.new("Dark stone grey")
ap32.Reflectance = 0.1 
am32 = Instance.new("BlockMesh",ap32)
am32.Scale = Vector3.new(1.7,1,1.1)
aw32 = Instance.new("Weld")
aw32.Parent = ap32
aw32.Part0 = ap32
aw32.Part1 = Torso 
aw32.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw32.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(1.25, -0.8, -1.2) 
ap33 = Instance.new("Part")
ap33.formFactor = 3
ap33.CanCollide = false
ap33.Name = "HelmP33"
ap33.Locked = true 
ap33.Size = Vector3.new(1,1,1)
ap33.Parent = armorholder
ap33.BrickColor = BrickColor.new("Mid grey")
ap33.Reflectance = 0.1 
am33 = Instance.new("SpecialMesh",ap33)
am33.Scale = Vector3.new(1.1,1.5,1.5)
am33.MeshType = "Wedge"
aw33 = Instance.new("Weld")
aw33.Parent = ap33
aw33.Part0 = ap33
aw33.Part1 = Torso 
aw33.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
aw33.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(90), 0) * CFrame.new(-1.25, 0.45, -1.2) 
ap34 = Instance.new("Part")
ap34.formFactor = 3
ap34.CanCollide = false
ap34.Name = "HelmP34"
ap34.Locked = true 
ap34.Size = Vector3.new(1,1,1)
ap34.Parent = armorholder
ap34.BrickColor = BrickColor.new("Mid grey")
ap34.Reflectance = 0.1 
am34 = Instance.new("SpecialMesh",ap34)
am34.Scale = Vector3.new(1.1,1.5,1.5)
am34.MeshType = "Wedge"
aw34 = Instance.new("Weld") 
aw34.Parent = ap34
aw34.Part0 = ap34
aw34.Part1 = Torso 
aw34.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw34.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(-90), 0) * CFrame.new(1.25, 0.45, -1.2) 
ap35 = Instance.new("Part")
ap35.formFactor = 3
ap35.CanCollide = false
ap35.Name = "HelmP35"
ap35.Locked = true 
ap35.Size = Vector3.new(3,0.5,2)
ap35.Parent = armorholder
ap35.BrickColor = BrickColor.new("Black")
ap35.Reflectance = 0.1 
am35 = Instance.new("BlockMesh",ap35)
aw35 = Instance.new("Weld")
aw35.Parent = ap35
aw35.Part0 = ap35
aw35.Part1 = LeftArm
aw35.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw35.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(0.5, -2, 0) 
ap36 = Instance.new("Part")
ap36.formFactor = 3
ap36.CanCollide = false
ap36.Name = "HelmP36"
ap36.Locked = true 
ap36.Size = Vector3.new(3.1,0.5,2.1)
ap36.Parent = armorholder
ap36.BrickColor = BrickColor.new("Bright yellow")
ap36.Reflectance = 0.1 
am36 = Instance.new("BlockMesh",ap36)
am36.Scale = Vector3.new(1,0.9,1)
aw36 = Instance.new("Weld")
aw36.Parent = ap36
aw36.Part0 = ap36
aw36.Part1 = LeftArm
aw36.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw36.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), 0) * CFrame.new(0.5, -2, 0) 
ap37 = Instance.new("Part")
ap37.formFactor = 3
ap37.CanCollide = false
ap37.Name = "HelmP37"
ap37.Locked = true 
ap37.Size = Vector3.new(3,0.3,2)
ap37.Parent = armorholder
ap37.BrickColor = BrickColor.new("Black")
ap37.Reflectance = 0.1 
am37 = Instance.new("BlockMesh",ap37)
aw37 = Instance.new("Weld")
aw37.Parent = ap37
aw37.Part0 = ap37
aw37.Part1 = LeftArm
aw37.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw37.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(-20)) * CFrame.new(0.5+1, -2+0.5, 0) 
ap38 = Instance.new("Part")
ap38.formFactor = 3
ap38.CanCollide = false
ap38.Name = "HelmP38"
ap38.Locked = true 
ap38.Size = Vector3.new(3.1,0.3,2.1)
ap38.Parent = armorholder
ap38.BrickColor = BrickColor.new("Bright yellow")
ap38.Reflectance = 0.1 
am38 = Instance.new("BlockMesh",ap38)
am38.Scale = Vector3.new(1,0.9,1)
aw38 = Instance.new("Weld")
aw38.Parent = ap38
aw38.Part0 = ap38
aw38.Part1 = LeftArm
aw38.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw38.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(-20)) * CFrame.new(0.5+1, -2+0.5, 0) 
ap39 = Instance.new("Part")
ap39.formFactor = 3
ap39.CanCollide = false
ap39.Name = "HelmP39"
ap39.Locked = true 
ap39.Size = Vector3.new(4.1,0.75,2.1)
ap39.Parent = armorholder
ap39.BrickColor = BrickColor.new("Pastel yellow")
am39 = Instance.new("SpecialMesh",ap39)
am39.Scale = Vector3.new(1,1,1)
am39.MeshType = "Sphere"
aw39 = Instance.new("Weld")
aw39.Parent = ap39
aw39.Part0 = ap39
aw39.Part1 = ap38
aw39.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw39.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1, 0.25, 0) 
ap40 = Instance.new("Part")
ap40.formFactor = 3
ap40.CanCollide = false
ap40.Name = "HelmP40"
ap40.Locked = true 
ap40.Size = Vector3.new(2.15,2.5,2.15)
ap40.Parent = armorholder
ap40.BrickColor = BrickColor.new("Black")
ap40.Reflectance = 0.1 
am40 = Instance.new("BlockMesh",ap40)
am40.Scale = Vector3.new(1,1,1)
aw40 = Instance.new("Weld")
aw40.Parent = ap40
aw40.Part0 = ap40 
aw40.Part1 = LeftArm
aw40.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw40.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.5, 0) 
ap41 = Instance.new("Part")
ap41.formFactor = 3
ap41.CanCollide = false
ap41.Name = "HelmP41"
ap41.Locked = true 
ap41.Size = Vector3.new(2,0.4,2)
ap41.Parent = armorholder
ap41.BrickColor = BrickColor.new("White")
ap41.Reflectance = 0.1 
am41 = Instance.new("BlockMesh",ap41)
am41.Scale = Vector3.new(1.01,1.01,1.01)
aw41 = Instance.new("Weld")
aw41.Parent = ap41
aw41.Part0 = ap41
aw41.Part1 = LeftArm
aw41.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw41.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 2-0.2, 0) 
ap42 = Instance.new("Part")
ap42.formFactor = 3
ap42.CanCollide = false
ap42.Name = "HelmP42"
ap42.Locked = true 
ap42.Size = Vector3.new(2,1.5,2.1)
ap42.Parent = armorholder
ap42.BrickColor = BrickColor.new("Bright blue")
ap42.Reflectance = 0.1 
am42 = Instance.new("SpecialMesh",ap42)
am42.MeshType = "Sphere"
aw42 = Instance.new("Weld")
aw42.Parent = ap42
aw42.Part0 = ap42
aw42.Part1 = LeftArm
aw42.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw42.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0.5, 0.5, 0) 
ap43 = Instance.new("Part")
ap43.formFactor = 3
ap43.CanCollide = false
ap43.Name = "HelmP43"
ap43.Locked = true 
ap43.Size = Vector3.new(2,1.5,2.1)
ap43.Parent = armorholder
ap43.BrickColor = BrickColor.new("Bright yellow")
ap43.Reflectance = 0.1 
am43 = Instance.new("SpecialMesh",ap43)
am43.MeshType = "Sphere"
am43.Scale = Vector3.new(0.9,1.3,1.01)
aw43 = Instance.new("Weld")
aw43.Parent = ap43
aw43.Part0 = ap43
aw43.Part1 = LeftArm
aw43.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw43.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0.5, 0.5, 0) 

ap44 = Instance.new("Part")
ap44.formFactor = 3
ap44.CanCollide = false
ap44.Name = "HelmP44"
ap44.Locked = true 
ap44.Size = Vector3.new(2,1.5,2.1)
ap44.Parent = armorholder
ap44.BrickColor = BrickColor.new("Bright blue")
ap44.Reflectance = 0.1 
am44 = Instance.new("SpecialMesh",ap44)
am44.MeshType = "Sphere"
aw44 = Instance.new("Weld")
aw44.Parent = ap44
aw44.Part0 = ap44
aw44.Part1 = RightArm
aw44.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw44.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-0.5, 0.5, 0) 
ap45 = Instance.new("Part")
ap45.formFactor = 3
ap45.CanCollide = false
ap45.Name = "HelmP45"
ap45.Locked = true 
ap45.Size = Vector3.new(2,1.5,2.1)
ap45.Parent = armorholder
ap45.BrickColor = BrickColor.new("Bright yellow")
ap45.Reflectance = 0.1 
am45 = Instance.new("SpecialMesh",ap45)
am45.MeshType = "Sphere"
am45.Scale = Vector3.new(0.9,1.3,1.01)
aw45 = Instance.new("Weld")
aw45.Parent = ap45
aw45.Part0 = ap45
aw45.Part1 = RightArm 
aw45.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw45.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-0.5, 0.5, 0) 
ap46 = Instance.new("Part")
ap46.formFactor = 3
ap46.CanCollide = false
ap46.Name = "HelmP46"
ap46.Locked = true 
ap46.Size = Vector3.new(2.15,2.5,2.15)
ap46.Parent = armorholder
ap46.BrickColor = BrickColor.new("Black")
ap46.Reflectance = 0.1 
am46 = Instance.new("BlockMesh",ap46)
am46.Scale = Vector3.new(1,1,1)
aw46 = Instance.new("Weld")
aw46.Parent = ap46
aw46.Part0 = ap46
aw46.Part1 = RightArm 
aw46.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw46.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.5, 0) 
ap47 = Instance.new("Part")
ap47.formFactor = 3
ap47.CanCollide = false
ap47.Name = "HelmP47"
ap47.Locked = true 
ap47.Size = Vector3.new(2,0.4,2)
ap47.Parent = armorholder
ap47.BrickColor = BrickColor.new("White")
ap47.Reflectance = 0.1 
am47 = Instance.new("BlockMesh",ap47)
am47.Scale = Vector3.new(1.01,1.01,1.01)
aw47 = Instance.new("Weld")
aw47.Parent = ap47
aw47.Part0 = ap47
aw47.Part1 = RightArm
aw47.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw47.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 2-0.2, 0) 
ap48 = Instance.new("Part")
ap48.formFactor = 3
ap48.CanCollide = false
ap48.Name = "HelmP48"
ap48.Locked = true 
ap48.Size = Vector3.new(2.15,1.15,2.15)
ap48.Parent = armorholder
ap48.BrickColor = BrickColor.new("Black")
ap48.Reflectance = 0.1 
am48 = Instance.new("BlockMesh",ap48)
am48.Scale = Vector3.new(1,1,1)
aw48 = Instance.new("Weld")
aw48.Parent = ap48
aw48.Part0 = ap48
aw48.Part1 = RightArm 
aw48.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw48.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, -1.5, 0) 
ap49 = Instance.new("Part")
ap49.formFactor = 3
ap49.CanCollide = false
ap49.Name = "HelmP49"
ap49.Locked = true 
ap49.Size = Vector3.new(3,1.1,2.25)
ap49.Parent = armorholder
ap49.BrickColor = BrickColor.new("Bright yellow")
ap49.Reflectance = 0.1 
am49 = Instance.new("BlockMesh",ap49)
am49.Scale = Vector3.new(1,1,1)
aw49 = Instance.new("Weld")
aw49.Parent = ap49 
aw49.Part0 = ap49
aw49.Part1 = RightArm 
aw49.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw49.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, -1.5, 0) 
ap50 = Instance.new("Part")
ap50.formFactor = 3
ap50.CanCollide = false
ap50.Name = "HelmP50"
ap50.Locked = true 
ap50.Size = Vector3.new(1.5,1.5,2.5)
ap50.Parent = armorholder
ap50.BrickColor = BrickColor.new("Bright blue")
ap50.Reflectance = 0.1 
am50 = Instance.new("SpecialMesh",ap50)
am50.MeshType = "Sphere"
aw50 = Instance.new("Weld")
aw50.Parent = ap50
aw50.Part0 = ap50
aw50.Part1 = RightArm
aw50.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw50.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0.5, -1.25, 0) 
ap51 = Instance.new("Part")
ap51.formFactor = 3
ap51.CanCollide = false
ap51.Name = "HelmP51"
ap51.Locked = true 
ap51.Size = Vector3.new(1,1,2.2)
ap51.Parent = armorholder
ap51.BrickColor = BrickColor.new("Bright blue")
ap51.Reflectance = 0.1 
am51 = Instance.new("SpecialMesh",ap51)
am51.MeshType = "Sphere"
aw51 = Instance.new("Weld")
aw51.Parent = ap51
aw51.Part0 = ap51
aw51.Part1 = RightArm
aw51.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw51.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1, -0.75, 0) 

ap52 = Instance.new("Part")
ap52.formFactor = 3
ap52.CanCollide = false
ap52.Name = "HelmP52"
ap52.Locked = true 
ap52.Size = Vector3.new(2.1,2,2.1)
ap52.Parent = armorholder
ap52.BrickColor = BrickColor.new("Mid grey")
ap52.Reflectance = 0.1 
am52 = Instance.new("BlockMesh",ap52)
aw52 = Instance.new("Weld")
aw52.Parent = ap52
aw52.Part0 = ap52
aw52.Part1 = RightLeg
aw52.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw52.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1, 0.1)  
ap53 = Instance.new("Part")
ap53.formFactor = 3
ap53.CanCollide = false
ap53.Name = "HelmP53"
ap53.Locked = true 
ap53.Size = Vector3.new(1.5,2.5,2.1)
ap53.Parent = armorholder
ap53.BrickColor = BrickColor.new("Bright yellow")
ap53.Reflectance = 0.1 
am53 = Instance.new("BlockMesh",ap53)
aw53 = Instance.new("Weld")
aw53.Parent = ap53
aw53.Part0 = ap53
aw53.Part1 = RightLeg
aw53.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw53.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1-0.5, 0.15)  
ap54 = Instance.new("Part")
ap54.formFactor = 3
ap54.CanCollide = false
ap54.Name = "HelmP54"
ap54.Locked = true 
ap54.Size = Vector3.new(1.8,2.5,2.1)
ap54.Parent = armorholder
ap54.BrickColor = BrickColor.new("Mid grey")
ap54.Reflectance = 0.1 
am54 = Instance.new("BlockMesh",ap54)
aw54 = Instance.new("Weld")
aw54.Parent = ap54
aw54.Part0 = ap54
aw54.Part1 = RightLeg
aw54.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw54.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1-0.75, 0.1)  
ap55 = Instance.new("Part")
ap55.formFactor = 3
ap55.CanCollide = false
ap55.Name = "HelmP55"
ap55.Locked = true 
ap55.Size = Vector3.new(2.2,1.5,2.1)
ap55.Parent = armorholder
ap55.BrickColor = BrickColor.new("Bright yellow")
ap55.Reflectance = 0.1 
am55 = Instance.new("BlockMesh",ap55) 
aw55 = Instance.new("Weld")
aw55.Parent = ap55
aw55.Part0 = ap55
aw55.Part1 = RightLeg
aw55.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw55.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1, 0.101)   

ap56 = Instance.new("Part")
ap56.formFactor = 3
ap56.CanCollide = false
ap56.Name = "HelmP52"
ap56.Locked = true 
ap56.Size = Vector3.new(2.1,2,2.1)
ap56.Parent = armorholder
ap56.BrickColor = BrickColor.new("Mid grey")
ap56.Reflectance = 0.1 
am56 = Instance.new("BlockMesh",ap56)
aw56 = Instance.new("Weld")
aw56.Parent = ap56
aw56.Part0 = ap56
aw56.Part1 = LeftLeg
aw56.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw56.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1, 0.1)  
ap57 = Instance.new("Part")
ap57.formFactor = 3
ap57.CanCollide = false
ap57.Name = "HelmP53"
ap57.Locked = true 
ap57.Size = Vector3.new(1.5,2.5,2.1)
ap57.Parent = armorholder
ap57.BrickColor = BrickColor.new("Bright yellow")
ap57.Reflectance = 0.1 
am57 = Instance.new("BlockMesh",ap57)
aw57 = Instance.new("Weld")
aw57.Parent = ap57
aw57.Part0 = ap57
aw57.Part1 = LeftLeg
aw57.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw57.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1-0.5, 0.15)  
ap58 = Instance.new("Part")
ap58.formFactor = 3
ap58.CanCollide = false
ap58.Name = "HelmP54"
ap58.Locked = true 
ap58.Size = Vector3.new(1.8,2.5,2.1)
ap58.Parent = armorholder
ap58.BrickColor = BrickColor.new("Mid grey")
ap58.Reflectance = 0.1 
am58 = Instance.new("BlockMesh",ap58)
aw58 = Instance.new("Weld")
aw58.Parent = ap58
aw58.Part0 = ap58
aw58.Part1 = LeftLeg
aw58.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw58.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1-0.75, 0.1)  
ap59 = Instance.new("Part")
ap59.formFactor = 3
ap59.CanCollide = false
ap59.Name = "HelmP55"
ap59.Locked = true 
ap59.Size = Vector3.new(2.2,1.5,2.1)
ap59.Parent = armorholder
ap59.BrickColor = BrickColor.new("Bright yellow")
ap59.Reflectance = 0.1 
am59 = Instance.new("BlockMesh",ap59) 
aw59 = Instance.new("Weld")
aw59.Parent = ap59
aw59.Part0 = ap59
aw59.Part1 = LeftLeg
aw59.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw59.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 1, 0.101)   
ap60 = Instance.new("Part")
ap60.formFactor = 3
ap60.CanCollide = false
ap60.Name = "HelmP60"
ap60.Locked = true 
ap60.Size = Vector3.new(4,3,0.2)
ap60.Parent = armorholder
ap60.BrickColor = BrickColor.new("Bright red")
am60 = Instance.new("BlockMesh",ap60) 
aw60 = Instance.new("Weld")
aw60.Parent = ap60
aw60.Part0 = ap60
aw60.Part1 = Torso
aw60.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw60.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 4.5-1.5, -1.1)   
ap61 = Instance.new("Part")
ap61.formFactor = 3
ap61.CanCollide = false
ap61.Name = "HelmP61"
ap61.Locked = true 
ap61.Size = Vector3.new(0.2,3,2)
ap61.Parent = armorholder
ap61.BrickColor = BrickColor.new("Bright red")
am61 = Instance.new("BlockMesh",ap61) 
aw61 = Instance.new("Weld")
aw61.Parent = ap61
aw61.Part0 = ap61
aw61.Part1 = Torso
aw61.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
aw61.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(2.1, 4.5-1.5,0)   
ap62 = Instance.new("Part")
ap62.formFactor = 3
ap62.CanCollide = false
ap62.Name = "HelmP62"
ap62.Locked = true 
ap62.Size = Vector3.new(0.2,3,2)
ap62.Parent = armorholder
ap62.BrickColor = BrickColor.new("Bright red")
am62 = Instance.new("BlockMesh",ap62) 
aw62 = Instance.new("Weld")
aw62.Parent = ap62
aw62.Part0 = ap62
aw62.Part1 = Torso
aw62.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)  
aw62.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-2.1, 4.5-1.5,0)   





RAP = Instance.new("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = Vector3.new(1,1,1)
RAP.Parent = bodyholder
RAP.Transparency = 1
w = Instance.new("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = RightArm
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 2, 0)
LAP = Instance.new("Part")
LAP.formFactor = 0
LAP.CanCollide = false
LAP.Name = "LAPart"
LAP.Locked = true
LAP.Size = Vector3.new(1,1,1)
LAP.Parent = bodyholder 
LAP.Transparency = 1
wl = Instance.new("Weld")
wl.Parent = LAP
wl.Part0 = LAP
wl.Part1 = LeftArm
wl.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
wl.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 2, 0)

swordholder = Instance.new("Model")
swordholder.Name = "Weapon"
swordholder.Parent = bodyholder

prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "NaginataHandle"
prt1.Locked = true 
prt1.Size = Vector3.new(0.5,15,0.5)
prt1.Parent = swordholder
prt1.BrickColor = BrickColor.new("Bright red")
m1 = Instance.new("CylinderMesh",prt1) 
w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
w1.Part1 = LAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+10), math.rad(0), math.rad(0)) * CFrame.new(0,0,0)   
prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "NaginataBlade"
prt2.Locked = true
prt2.Size = Vector3.new(0.5,3,0.5)
prt2.Parent = swordholder
prt2.BrickColor = BrickColor.new("Mid grey")
prt2.Reflectance = 0.2
m2 = Instance.new("BlockMesh",prt2) 
w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,-7.5,0)    
prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "NaginataBlade"
prt3.Locked = true
prt3.Size = Vector3.new(0.5,0.5,3)
prt3.Parent = swordholder
prt3.BrickColor = BrickColor.new("Mid grey")
prt3.Reflectance = 0.2
m3 = Instance.new("BlockMesh",prt3) 
w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,-7.5,0)     
prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "NaginataBlade"
prt4.Locked = true
prt4.Size = Vector3.new(0.5,0.5,3)
prt4.Parent = swordholder
prt4.BrickColor = BrickColor.new("Mid grey")
prt4.Reflectance = 0.2
m4 = Instance.new("SpecialMesh",prt4)  
m4.MeshType = "Wedge"
w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0,-7.5+1.25,1.5)     
prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "NaginataBlade"
prt5.Locked = true
prt5.Size = Vector3.new(0.5,0.5,3)
prt5.Parent = swordholder
prt5.BrickColor = BrickColor.new("Mid grey")
prt5.Reflectance = 0.2
m5 = Instance.new("SpecialMesh",prt5)  
m5.MeshType = "Wedge"
w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(0)) * CFrame.new(0,-7.5+1.25,-1.5)    
prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "NaginataBlade"
prt6.Locked = true
prt6.Size = Vector3.new(0.5,2,3)
prt6.Parent = swordholder
prt6.BrickColor = BrickColor.new("Mid grey")
prt6.Reflectance = 0.2
m6 = Instance.new("SpecialMesh",prt6)  
m6.MeshType = "Wedge"
w6 = Instance.new("Weld")
w6.Parent = prt6 
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(180), math.rad(0)) * CFrame.new(0,-10.75,1)    
prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false 
prt7.Name = "NaginataBlade"
prt7.Locked = true 
prt7.Size = Vector3.new(0.5,0.5,4)
prt7.Parent = swordholder
prt7.BrickColor = BrickColor.new("Mid grey")
prt7.Reflectance = 0.2 
m7 = Instance.new("BlockMesh",prt7)  
w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt1 
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,-9,0)   
prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "NaginataBlade"
prt8.Locked = true
prt8.Size = Vector3.new(0.5,0.5,1)
prt8.Parent = swordholder
prt8.BrickColor = BrickColor.new("Mid grey")
prt8.Reflectance = 0.2
m8 = Instance.new("SpecialMesh",prt8)  
m8.MeshType = "Wedge"
w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt1
w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0,-8.25,1.75)    
prt9 = Instance.new("Part")
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "NaginataBlade"
prt9.Locked = true 
prt9.Size = Vector3.new(0.5,0.5,1)
prt9.Parent = swordholder
prt9.BrickColor = BrickColor.new("Mid grey")
prt9.Reflectance = 0.2
m9 = Instance.new("SpecialMesh",prt9)  
m9.MeshType = "Wedge"
w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = prt1
w9.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w9.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(0)) * CFrame.new(0,-8.25,-1.75)    
prt10 = Instance.new("Part")
prt10.formFactor = 3
prt10.CanCollide = false
prt10.Name = "NaginataBlade"
prt10.Locked = true
prt10.Size = Vector3.new(0.5,0.5,1)
prt10.Parent = swordholder
prt10.BrickColor = BrickColor.new("Mid grey")
prt10.Reflectance = 0.2
m10 = Instance.new("SpecialMesh",prt10)  
m10.MeshType = "Wedge"
w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt1
w10.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w10.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(180), math.rad(0)) * CFrame.new(0,-9-0.7,-1.75)
prt11 = Instance.new("Part")
prt11.formFactor = 3
prt11.CanCollide = false
prt11.Name = "NaginataBottom"
prt11.Locked = true
prt11.Size = Vector3.new(1,1,1)
prt11.Parent = swordholder
prt11.BrickColor = BrickColor.new("Mid grey")
prt11.Reflectance = 0.2
m11 = Instance.new("SpecialMesh",prt11)  
m11.MeshType = "Sphere" 
w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = prt1
w11.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)   
w11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(180), math.rad(0)) * CFrame.new(0,7.5,0)
    
pprt1 = Instance.new("Part")
pprt1.formFactor = 3
pprt1.CanCollide = false
pprt1.Name = "ExcaliburHandle"
pprt1.Locked = true 
pprt1.Size = Vector3.new(1,3,1)
pprt1.Parent = swordholder
pprt1.BrickColor = BrickColor.new("Black")
mm1 = Instance.new("CylinderMesh",pprt1) 
ww1 = Instance.new("Weld")
ww1.Parent = pprt1
ww1.Part0 = pprt1
ww1.Part1 = RAP
ww1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0,0,0)   
pprt2 = Instance.new("Part")
pprt2.formFactor = 3
pprt2.CanCollide = false
pprt2.Name = "ExcaliburCrest"
pprt2.Locked = true 
pprt2.Size = Vector3.new(1,2,2)
pprt2.Parent = swordholder
pprt2.BrickColor = BrickColor.new("Bright yellow")
mm2 = Instance.new("SpecialMesh",pprt2) 
mm2.MeshType = "Sphere"
ww2 = Instance.new("Weld")
ww2.Parent = pprt2
ww2.Part0 = pprt2
ww2.Part1 = pprt1
ww2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,-2,0)  
pprt3 = Instance.new("Part")
pprt3.formFactor = 3
pprt3.CanCollide = false
pprt3.Name = "ExcaliburCrest"
pprt3.Locked = true 
pprt3.Size = Vector3.new(1,2,1)
pprt3.Parent = swordholder
pprt3.BrickColor = BrickColor.new("Bright yellow")
mm3 = Instance.new("SpecialMesh",pprt3) 
mm3.MeshId = "http://www.roblox.com/asset/?id=1778999"
mm3.Scale = Vector3.new(0.5,1,1)
ww3 = Instance.new("Weld")
ww3.Parent = pprt3
ww3.Part0 = pprt3
ww3.Part1 = pprt1
ww3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0,-2,1)  
pprt4 = Instance.new("Part")
pprt4.formFactor = 3
pprt4.CanCollide = false
pprt4.Name = "ExcaliburCrest"
pprt4.Locked = true 
pprt4.Size = Vector3.new(1,2,1)
pprt4.Parent = swordholder
pprt4.BrickColor = BrickColor.new("Bright yellow")
mm4 = Instance.new("SpecialMesh",pprt4) 
mm4.MeshId = "http://www.roblox.com/asset/?id=1778999"
mm4.Scale = Vector3.new(0.5,1,1)
ww4 = Instance.new("Weld") 
ww4.Parent = pprt4
ww4.Part0 = pprt4
ww4.Part1 = pprt1
ww4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0,-2,-1)  
for i = -1 , 1 do
pprt5 = Instance.new("Part")
pprt5.formFactor = 3
pprt5.CanCollide = false
pprt5.Name = "ExcaliburCrest"
pprt5.Locked = true 
pprt5.Size = Vector3.new(1,2,1)
pprt5.Parent = swordholder
pprt5.BrickColor = BrickColor.new("Bright red")
mm5 = Instance.new("SpecialMesh",pprt5) 
mm5.MeshId = "http://www.roblox.com/asset/?id=1778999" 
mm5.Scale = Vector3.new(0.1,1.3,1.2)
ww5 = Instance.new("Weld") 
ww5.Parent = pprt5 
ww5.Part0 = pprt5
ww5.Part1 = pprt2
ww5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww5.C0 =  CFrame.new(0,-1.5,0) *  CFrame.fromEulerAnglesXYZ(math.rad(-90+30*i), math.rad(0), math.rad(0)) 
end
for i = -1 , 1 do
pprt6 = Instance.new("Part")
pprt6.formFactor = 3
pprt6.CanCollide = false
pprt6.Name = "ExcaliburCrest"
pprt6.Locked = true 
pprt6.Size = Vector3.new(1,2,1)
pprt6.Parent = swordholder
pprt6.BrickColor = BrickColor.new("Bright red")
mm6 = Instance.new("SpecialMesh",pprt6) 
mm6.MeshId = "http://www.roblox.com/asset/?id=1778999"
mm6.Scale = Vector3.new(0.1,1.3,1.2)
ww6 = Instance.new("Weld") 
ww6.Parent = pprt6
ww6.Part0 = pprt6 
ww6.Part1 = pprt2
ww6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww6.C0 =  CFrame.new(0,-1.5,0) *  CFrame.fromEulerAnglesXYZ(math.rad(90+30*i), math.rad(0), math.rad(0)) 
end
pprt7 = Instance.new("Part")
pprt7.formFactor = 3
pprt7.CanCollide = false
pprt7.Name = "ExcaliburCrest"
pprt7.Locked = true 
pprt7.Size = Vector3.new(1,0.5,1)
pprt7.Parent = swordholder
pprt7.BrickColor = BrickColor.new("Bright red")
mm7 = Instance.new("CylinderMesh",pprt7) 
mm7.Scale = Vector3.new(1.2,1,1.2)
ww7 = Instance.new("Weld") 
ww7.Parent = pprt7
ww7.Part0 = pprt7
ww7.Part1 = pprt1
ww7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,1.5,0)
pprt8 = Instance.new("Part")
pprt8.formFactor = 3
pprt8.CanCollide = false
pprt8.Name = "ExcaliburBlade"
pprt8.Locked = true 
pprt8.Size = Vector3.new(0.2,10,1)
pprt8.Parent = swordholder
pprt8.BrickColor = BrickColor.new("Bright red")
mm8 = Instance.new("BlockMesh",pprt8) 
mm8.Scale = Vector3.new(1,1,1)
ww8 = Instance.new("Weld") 
ww8.Parent = pprt8
ww8.Part0 = pprt8
ww8.Part1 = pprt1
ww8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,-2.5-5,0)
pprt9 = Instance.new("Part")
pprt9.formFactor = 3
pprt9.CanCollide = false
pprt9.Name = "ExcaliburBlade"
pprt9.Locked = true 
pprt9.Size = Vector3.new(0.2,10,1.5)
pprt9.Parent = swordholder
pprt9.BrickColor = BrickColor.new("Bright orange")
mm9 = Instance.new("BlockMesh",pprt9) 
mm9.Scale = Vector3.new(0.9,1,1)
ww9 = Instance.new("Weld") 
ww9.Parent = pprt9
ww9.Part0 = pprt9
ww9.Part1 = pprt1
ww9.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww9.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,-2.5-5,0)
pprt10 = Instance.new("Part")
pprt10.formFactor = 3
pprt10.CanCollide = false
pprt10.Name = "ExcaliburTip"
pprt10.Locked = true 
pprt10.Size = Vector3.new(0.2,0.75,2)
pprt10.Parent = swordholder
pprt10.BrickColor = BrickColor.new("Bright orange")
mm10 = Instance.new("SpecialMesh",pprt10) 
mm10.Scale = Vector3.new(0.9,1,1)
mm10.MeshType = "Wedge"
ww10 = Instance.new("Weld") 
ww10.Parent = pprt10
ww10.Part0 = pprt10
ww10.Part1 = pprt1
ww10.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww10.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0,-12.5-1,-0.375)
pprt11 = Instance.new("Part")
pprt11.formFactor = 3
pprt11.CanCollide = false
pprt11.Name = "ExcaliburTip"
pprt11.Locked = true 
pprt11.Size = Vector3.new(0.2,0.75,2)
pprt11.Parent = swordholder
pprt11.BrickColor = BrickColor.new("Bright orange")
mm11 = Instance.new("SpecialMesh",pprt11) 
mm11.Scale = Vector3.new(0.9,1,1)
mm11.MeshType = "Wedge"
ww11 = Instance.new("Weld") 
ww11.Parent = pprt11
ww11.Part0 = pprt11
ww11.Part1 = pprt1
ww11.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(180), math.rad(0)) * CFrame.new(0,-12.5-1,0.375)
pprt12 = Instance.new("Part")
pprt12.formFactor = 3
pprt12.CanCollide = false
pprt12.Name = "ExcaliburTip"
pprt12.Locked = true 
pprt12.Size = Vector3.new(0.2,0.5,2)
pprt12.Parent = swordholder
pprt12.BrickColor = BrickColor.new("Bright red")
mm12 = Instance.new("SpecialMesh",pprt12) 
mm12.Scale = Vector3.new(1,1,1)
mm12.MeshType = "Wedge"
ww12 = Instance.new("Weld") 
ww12.Parent = pprt12
ww12.Part0 = pprt12
ww12.Part1 = pprt1
ww12.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww12.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0,-12.5-1,-0.25)
pprt13 = Instance.new("Part")
pprt13.formFactor = 3
pprt13.CanCollide = false
pprt13.Name = "ExcaliburTip"
pprt13.Locked = true 
pprt13.Size = Vector3.new(0.2,0.5,2)
pprt13.Parent = swordholder
pprt13.BrickColor = BrickColor.new("Bright red")
mm13 = Instance.new("SpecialMesh",pprt13) 
mm13.Scale = Vector3.new(1,1,1)
mm13.MeshType = "Wedge"
ww13 = Instance.new("Weld") 
ww13.Parent = pprt13
ww13.Part0 = pprt13
ww13.Part1 = pprt1
ww13.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww13.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(180), math.rad(0)) * CFrame.new(0,-12.5-1,0.25)
pprt14 = Instance.new("Part")
pprt14.formFactor = 3
pprt14.CanCollide = false
pprt14.Name = "ExcaliburBladeHitbox"
pprt14.Locked = true 
pprt14.Size = Vector3.new(0.2,12,1.5)
pprt14.Parent = swordholder
pprt14.Transparency = 1
ww14 = Instance.new("Weld") 
ww14.Parent = pprt14
ww14.Part0 = pprt14
ww14.Part1 = pprt1
ww14.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
ww14.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0,-8.5,0)




function unequipweld()

end

unequipweld()



function equipweld()


end



function ss(parent,p) --Slash

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
function uss(parent,p) --unsheath

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
function ms(parent,p) --Metal Cling Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\metal.ogg"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end

--
--

function returndmg()
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end

function subdmg(sub)
mindamage = omindamage - sub
maxdamage = omaxdamage - sub
crtmaxdamage = ocrtmaxdamage - sub
end

function prcntdmg(sub)
mindamage = math.floor(omindamage - (omindamage*(sub/100)))
maxdamage = math.floor(omaxdamage - (omaxdamage*(sub/100)))
crtmaxdamage = math.floor(ocrtmaxdamage - (ocrtmaxdamage*(sub/100)))
end

function tagHumanoid(humanoid, player)
        local creator_tag = Instance.new("ObjectValue")
        creator_tag.Value = player
        creator_tag.Name = "creator"
        creator_tag.Parent = humanoid
end

function untagHumanoid(humanoid)
        if humanoid ~= nil then
                local tag = humanoid:findFirstChild("creator")
                if tag ~= nil then
                        tag.Parent = nil
                end
        end
end

local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 



function equipanim()
attack = true
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20*i), 0, math.rad(45*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-20*i), 0, math.rad(-45*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(0, 0, math.rad(20*i))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(0, 0, math.rad(-20*i))
        LWL.C1 = CFrame.new(-1, 2, 0)
end
attack = false
end


function damagesplat(dmg,hit,crit,blocked)
    local mo = Instance.new("Model")
    mo.Name = dmg
    local pa = Instance.new("Part",mo)
    pa.formFactor = 3
    pa.Size = Vector3.new(0.8,0.3,0.8)
    if crit then
    pa.BrickColor = BrickColor.new("Bright yellow")
    elseif not crit then
    pa.BrickColor = BrickColor.new("Bright red")
    end
    if blocked then pa.BrickColor = BrickColor.new("Bright blue") end
    pa.CFrame = CFrame.new(hit.Position) * CFrame.new(0, 3, 0)
    pa.Name = "Head"
    local hah = Instance.new("Humanoid")
    hah.Parent = mo
    hah.MaxHealth = 0
    hah.Health = 0
    local bp = Instance.new("BodyPosition")
    bp.P = 14000
    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    bp.position = hit.Position + Vector3.new(0, 5, 0)
    coroutine.resume(coroutine.create(function()
        wait()
        mo.Parent = Character
        bp.Parent = pa
        wait(1.4)
        mo:remove()
    end))
    return pa
end

function damage(hum,dmg,critornot)
local pa = damagesplat(dmg,hum.Torso,critornot)
hum:TakeDamage(dmg)
coroutine.resume(coroutine.create(function()
tagHumanoid(hum,Player)
wait(1)
untagHumanoid(hum)
end))
return pa
  
end

function AddRage(add)
Rage = Rage + add
if Rage > MaxRage then
Rage = MaxRage
end
end

function OT(hit) --Normal Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hum.Health <= 0 then return end
if hit.Parent:findFirstChild("Block") ~= nil then 
if hit.Parent.Block.Value then 
damagesplat(0,hum.Torso,false,true) 
Hitdeb = 1
if hit.Parent.Block:findFirstChild("BlockPower") ~= nil then
if hit.Parent.Block.BlockPower.Value <= 1 then
hit.Parent.Block.Value = false 
elseif hit.Parent.Block.BlockPower.Value > 1 then
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker 
elseif critrandomizer == 1 then
hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker + 2
end
end
end
return end end
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
end
Hitdeb = 1
end
end

function OT2(hit) --Normal Damage
if Hitdeb2 == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hum.Health <= 0 then return end
if hit.Parent:findFirstChild("Block") ~= nil then 
if hit.Parent.Block.Value then 
damagesplat(0,hum.Torso,false,true) 
Hitdeb2 = 1
if hit.Parent.Block:findFirstChild("BlockPower") ~= nil then
if hit.Parent.Block.BlockPower.Value <= 1 then
hit.Parent.Block.Value = false 
elseif hit.Parent.Block.BlockPower.Value > 1 then
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker 
elseif critrandomizer == 1 then
hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker + 2
end
end
end
return end end
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)*2
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)*2
damage(hum,rndmdamage,true)
end
Hitdeb2 = 1
end
end


function AoE(p,magnitude) 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local mag = (head.Position - p).magnitude;
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
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
end
                table.insert(AoETrue,c[i].Name)
                end
                end
                end
                end
        end
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
end

--


--

function effect(Color,Ref,LP,P1)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = bodyholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref 
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)
end
wait()
effectsg.Parent = nil
end))
end
--


con,con2,con3 = nil,nil,nil
conn,conn2,conn3 = nil,nil,nil

function dmg1cnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt1.Touched:connect(OT)
con2 = prt7.Touched:connect(OT)
con3 = prt2.Touched:connect(OT)
end

function dmg1dc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
if con2 ~= nil then
con2:disconnect()
Hitdeb = 0
end
if con3 ~= nil then
con3:disconnect()
Hitdeb = 0
end
end

function dmg2cnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
conn = pprt14.Touched:connect(OT2)
conn2 = pprt1.Touched:connect(OT2)
end

function dmg2dc()
if conn ~= nil then
conn:disconnect()
Hitdeb2 = 0
end
if conn2 ~= nil then
conn2:disconnect()
Hitdeb2 = 0
end
if conn3 ~= nil then
conn3:disconnect()
Hitdeb2 = 0
end
end

function rptddmg(value,des,inc)
coroutine.resume(coroutine.create(function()
repeat
wait(inc)
Hitdeb = 0
until value == des
end))
end

function atktype(s,e)
coroutine.resume(coroutine.create(function ()
attacktype = e
wait(0.25)
attacktype = s
end))
end

walking = false
jumping = false
Target = nil

function Walk()
if walking then return end
for i = 0.1 , 1 , 0.1 do
if jumping then return end
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20-40*i), 0, math.rad(45+20*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-20-40*i), 0, math.rad(-45-20*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(math.rad(45*i), 0, math.rad(20-10*i))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(math.rad(-45*i), 0, math.rad(-20+10*i))
        LWL.C1 = CFrame.new(-1, 2, 0)
end
repeat
for i = 0.1 , 1 , 0.1 do
if jumping then return end
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-60-5*i), 0, math.rad(65))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-60-5*i), 0, math.rad(-65))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(math.rad(45-90*i), 0, math.rad(10))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(math.rad(-45+90*i), 0, math.rad(-10))
        LWL.C1 = CFrame.new(-1, 2, 0)
end
for i = 0.1 , 1 , 0.1 do
if jumping then return end
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-65+5*i), 0, math.rad(65))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-65+5*i), 0, math.rad(-65))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(math.rad(-45+90*i), 0, math.rad(10))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(math.rad(45-90*i), 0, math.rad(-10))
        LWL.C1 = CFrame.new(-1, 2, 0)
end
until not walking or jumping
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-60+40*i), 0, math.rad(65-20*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-60+40*i), 0, math.rad(-65+20*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(math.rad(45-45*i), 0, math.rad(10+10*i))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(math.rad(-45+45*i), 0, math.rad(-10-10*i))
        LWL.C1 = CFrame.new(-1, 2, 0)
end
end

function Jump()
if jumping then return end
jumping = true
local vel = Instance.new("BodyVelocity",Torso)
vel.maxForce = Vector3.new(0,1,0) * math.huge
vel.P = vel.P * 5
vel.velocity = Vector3.new(0,jump,0)
coroutine.resume(coroutine.create(function()
wait() wait() wait() wait()
vel.Parent=nil
end))
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20+200*i), 0, math.rad(45-20*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-20+200*i), 0, math.rad(-45+20*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(math.rad(-10*i), 0, math.rad(20-10*i))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(math.rad(-10*i), 0, math.rad(-20+10*i))
        LWL.C1 = CFrame.new(-1, 2, 0)
end
wait(1)
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(180-200*i), 0, math.rad(25+20*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(180-200*i), 0, math.rad(-25-20*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(math.rad(-10+10*i), 0, math.rad(10+10*i))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(math.rad(-10+10*i), 0, math.rad(-10-10*i))
        LWL.C1 = CFrame.new(-1, 2, 0)
end
jumping = false
end

function NaginataSpin()
attack = true
dmg1cnnct() 
local LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
ss(Head,1)
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(45))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-20+110*i), 0, math.rad(-45+35*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(100+20*i), math.rad(90*i), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point 
end
Hitdeb2 = 0
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(45))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-10+20*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(120), math.rad(90+360*i), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
Hitdeb2 = 0
for i = 0.15 , 1 , 0.15 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(45))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(90), 0, math.rad(10-10*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(120), math.rad(90+270*i), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmg1dc()
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(45))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(90-110*i), 0, math.rad(-45*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(120-20*i), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
end
wait(0.2)
attack = false
end

function DualThrust()
attack = true
ss(Head,1)
dmg1cnnct() 
dmg2cnnct()  
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20+80*i), 0, math.rad(45-65*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-20+80*i), 0, math.rad(-45+65*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(100+80*i), math.rad(0), math.rad(0)) * CFrame.new(0, 5*i, 0)
        ww1.C0 = CFrame.Angles(math.rad(90+90*i), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
end
local LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
local LastPoint2 = pprt14.CFrame * CFrame.new(0,pprt14.Size.Y/2,0)
for i = 0.2 , 1 , 0.2 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(60), 0, math.rad(-20+110*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(60), 0, math.rad(20-110*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)) * CFrame.new(0, 5, 0)
        ww1.C0 = CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Bright violet",0.5,LastPoint,Point)
LastPoint = Point
local Point2 = pprt14.CFrame * CFrame.new(0,pprt14.Size.Y/2,0)
effect("Bright red",0.5,LastPoint2,Point2)
LastPoint2 = Point2
end
for i = 0.2 , 1 , 0.2 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(60), 0, math.rad(90+10*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(60), 0, math.rad(-90-10*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)) * CFrame.new(0, 5, 0)
        ww1.C0 = CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Bright violet",0.5,LastPoint,Point)
LastPoint = Point
local Point2 = pprt14.CFrame * CFrame.new(0,pprt14.Size.Y/2,0)
effect("Bright red",0.5,LastPoint2,Point2)
LastPoint2 = Point2
end
dmg1dc()
dmg2dc()
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(60-80*i), 0, math.rad(100-55*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(60-80*i), 0, math.rad(-100+55*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(180-80*i), math.rad(0), math.rad(0)) * CFrame.new(0, 5-5*i, 0)
        ww1.C0 = CFrame.Angles(math.rad(180-90*i), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Bright violet",0.5,LastPoint,Point)
LastPoint = Point
local Point2 = pprt14.CFrame * CFrame.new(0,pprt14.Size.Y/2,0)
effect("Bright red",0.5,LastPoint2,Point2)
LastPoint2 = Point2
end
wait(0.5)
attack = false
end

function Slash1()
attack = true
ss(Head,1)
dmg1cnnct() 
dmg2cnnct()  
for i = 0.2 , 1 , 0.2 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20+220*i), 0, math.rad(45-65*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-20+220*i), 0, math.rad(-45+65*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(100), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
        ww1.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
end
local LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
local LastPoint2 = pprt14.CFrame * CFrame.new(0,pprt14.Size.Y/2,0)
for i = 0.2 , 1 , 0.2 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(200+10*i), 0, math.rad(-20))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(200+10*i), 0, math.rad(20))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(100), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
        ww1.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Bright violet",0.5,LastPoint,Point)
LastPoint = Point
local Point2 = pprt14.CFrame * CFrame.new(0,pprt14.Size.Y/2,0)
effect("Bright red",0.5,LastPoint2,Point2)
LastPoint2 = Point2
end
Hitdeb = 0
Hitdeb2 = 0
for i = 0.1 , 1 , 0.1 do 
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(210-220*i), 0, math.rad(-20-20*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(210-220*i), 0, math.rad(20+20*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(100), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
        ww1.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Bright violet",0.5,LastPoint,Point)
LastPoint = Point
local Point2 = pprt14.CFrame * CFrame.new(0,pprt14.Size.Y/2,0)
effect("Bright red",0.5,LastPoint2,Point2)
LastPoint2 = Point2
end
for i = 0.1 , 1 , 0.1 do
wait()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-10-10*i), 0, math.rad(-40+85*i))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-10-10*i), 0, math.rad(40-85*i))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        w1.C0 = CFrame.Angles(math.rad(100), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
        ww1.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
end
dmg2dc() 
dmg1dc()
attack = false
end




function returnwelds()
        RW.C0 = CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(45))
        RW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        LW.C0 = CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-45))
        LW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        RWL.C0 = CFrame.new(2, -2, 0) * CFrame.Angles(0, 0, math.rad(20))
        RWL.C1 = CFrame.new(1, 2, 0)
        LWL.C0 = CFrame.new(-2, -2, 0) * CFrame.Angles(0, 0, math.rad(-20)) 
        LWL.C1 = CFrame.new(-1, 2, 0)
        w1.C0 = CFrame.Angles(math.rad(100), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
        ww1.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
        Neck.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
end


function Attackk(mag)
if attack then return end
if mag <= 8 then
local rndm = math.random(1,2) 
if rndm == 1 then
NaginataSpin()
elseif rndm == 2 then
Slash1()
end
elseif mag > 8 then 
local rndm = math.random(1,1) 
if rndm == 1 then
DualThrust()
end
end
end

        local BG = Instance.new("BodyGyro",Torso)
        BG.cframe = Torso.CFrame
        BG.maxTorque = Vector3.new(0, math.huge,0)
        BGSpin = 0

function FindTarget()
        local c = game.Workspace:GetChildren();
        local nearestmag = 1500
        local nearestprsn = nil
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local mag = (head.Position - Torso.Position).magnitude;
                if mag <= 1500 and c[i].Name ~= Character.Name then
                if mag < nearestmag then
                nearestmag = mag
                nearestprsn = c[i]
                end
                end
                end
                end
        end
        Target = nearestprsn
end




        local Humanoid = Instance.new("Humanoid",bodyholder)
        Humanoid.MaxHealth = HP

equipanim()
        wait(1)
        bodyholder:MakeJoints()
        Humanoid.Health = HP
        Humanoid.WalkSpeed = WS
        wait(1)
bodyholder.Torso.CFrame = CFrame.new(SpawnPos.Value) 
        Humanoid.Health = HP
        script.Parent = Character



repeat
wait(0.1)
FindTarget()
if Target ~= nil then 
BG.cframe = CFrame.new(Torso.Position,Target.Torso.Position) * CFrame.Angles(0,math.rad(BGSpin),0)
local mag = (Torso.Position-Target.Torso.Position).magnitude
if mag <= 20 then
Attackk(mag)
end
--
pcall(function()
Humanoid:MoveTo(Target.Torso.Position + CFrame.new(Torso.Position,Target.Torso.Position).lookVector * -6,Target.Torso)
end)
if Target.Torso.Position.y > Torso.Position.y+5 then
coroutine.resume(coroutine.create(Jump))
end
--
else
BG.cframe = Torso.cframe
Humanoid:MoveTo(Torso.Position,Torso)
end
if true then
if (Torso.Velocity * Vector3.new(1,0,1)).magnitude > 2 then
coroutine.resume(coroutine.create(Walk))
walking = true
elseif (Torso.Velocity * Vector3.new(1,0,1)).magnitude < 2 then
walking = false
end
else
walking = false
end
until Humanoid.Health <= 0
 
wait(5)
Character.Parent = nil

--mediafire