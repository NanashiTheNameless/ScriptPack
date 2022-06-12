:ls Player = game:GetService("Players").anton20
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
it=Instance[game.workspace.CurrentCamera.PootisValue.Value]
vt=Vector3[game.workspace.CurrentCamera.PootisValue.Value]
cf=CFrame[game.workspace.CurrentCamera.PootisValue.Value]
euler=CFrame[game.workspace.CurrentCamera.PootisValue2.Value]
angles=CFrame[game.workspace.CurrentCamera.PootisValue3.Value]
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
ModelName = "Weapon"
attack = false
attacktype = 1
Hitdeb = 0
Neck = Torso.Neck
local neckcf0 = Neck.C0
 
----------------------------
--Customize
Ammo = 6
MaxAmmo = 6
mindamage = 30
maxdamage = 40
crtmaxdamage = 50
reloadspeed=1
attackspeed=1
GunzerkDuration=1000
twobullets=false
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
crtrate = 100/5
--100%/critpercentage
 
oblkbrkr = 1
blockbreaker = oblkbrkr
spread = 1
spread = spread*100
Ammoregen = 5
range = 400
rangepower = 100
CurrentAmmo = "Normal"
attackdebounce = false
poisoncounter=0
Gunzerkering=false
firingdebounce1=false
firingdebounce2=false
aiming=false
local LastPoint1 = nil
local LastPoint2 = nil
critical=false
dodging=false
holdforward=true
resting=false
hifiving=false
blastcannonmode=false
handlecolor = BrickColor.new("Really blue")
bcolor = BrickColor.new("Bright green")
gemcolor = BrickColor.new("Black")
ammotrail = BrickColor.new("Bright green")
ToolName = "Romandan"
 
---------------------------------------------------------------------------------------------------------------------------------------
if Character:findFirstChild("EquippedVal",true) ~= nil then
Character:findFirstChild("EquippedVal",true).Parent = nil
end
ev = it("BoolValue",Character)
ev.Name = "EquippedVal"
ev.Value = false
if Character:findFirstChild("Block",true) ~= nil then
Character:findFirstChild("Block",true).Parent = nil
end
 
 
--player
player = nil
--welds
RW, LW , RWL, LWL = it("Weld"), it("Weld"), it("Weld"), it("Weld")
--what anim
anim = "none"
--other var
player = Player
ch = Character
--save shoulders
AoETrue = {}
RSH, LSH , RHL, LHL = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"] , ch.Torso["Right Hip"] , ch.Torso["Left Hip"]
 
 
function RWFunc()
    RW.Part1 = ch["Right Arm"]
    RSH.Part1 = nil
end
function LWFunc()
    LW.Part1 = ch["Left Arm"]
    LSH.Part1 = nil
end
function RWLFunc()
    RWL.Part1 = ch["Right Leg"]
    RHL.Part1 = nil
    ch["Right Leg"].Name = "RightLeg"
    RightLeg.CanCollide = false
end
 
function LWLFunc()
    LWL.Part1 = ch["Left Leg"]
    LHL.Part1 = nil
    ch["Left Leg"].Name = "LeftLeg"
    LeftLeg.CanCollide = true
end
 
function RWLRem()
    RightLeg.Name = "Right Leg"
    RWL.Part1 = nil
    RHL.Part1 = ch["Right Leg"]
    RightLeg.CanCollide = false
end
function LWLRem()
    LeftLeg.Name = "Left Leg"
    LWL.Part1 = nil
    LHL.Part1 = ch["Left Leg"]
    LeftLeg.CanCollide = false
end
function RWRem()
    RW.Part1 = nil
    RSH.Part1 = ch["Right Arm"]
end
function LWRem()
    LW.Part1 = nil
    LSH.Part1 = ch["Left Arm"]
end
 
 
 
 
if Character:findFirstChild(ModelName,true) ~= nil then
Character:findFirstChild(ModelName,true).Parent = nil
    RHL.Part1 = ch["Right Leg"]
    LHL.Part1 = ch["Left Leg"]
    RSH.Part1 = ch["Right Arm"]
    LSH.Part1 = ch["Left Arm"]
end
if Character:findFirstChild("BlastCannon",true) ~= nil then
Character:findFirstChild("BlastCannon",true).Parent = nil
end
 
if Character:findFirstChild("HighFive",true) ~= nil then
Character:findFirstChild("HighFive",true).Parent=nil
end
 
 
 
 
 
local hifivevalue=it("BoolValue")
hifivevalue.Parent=Character
hifivevalue.Name="HighFive"
hifivevalue.Value=false
local swordholder = it("Model")
swordholder.Name = ModelName
swordholder.Parent = Character
 
--derp
    RW.Part0 = ch.Torso
    RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
    RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
    RW.Parent = swordholder
    --
    LW.Part0 = ch.Torso
    LW.C0 = cf(-1.5, 0.5, 0) --* euler(1.7, 0, 0.8)
    LW.C1 = cf(0, 0.5, 0)
    LW.Parent = swordholder
    --
    RWL.Part0 = ch.Torso
    RWL.C0 = cf(1, -1, 0) * angles(0, 0, 0)
    RWL.C1 = cf(0.5, 1, 0)
    RWL.Parent = swordholder
    --
    LWL.Part0 = ch.Torso
    LWL.C0 = cf(-1, -1, 0) * angles(0, 0, 0)
    LWL.C1 = cf(-0.5, 1, 0)
    LWL.Parent = swordholder
 
 
 
local msh1 = it("CylinderMesh")
msh1.Scale = vt(0.2,1,0.2)
local msh2 = it("CylinderMesh")
msh2.Scale = vt(0.5,0.8,0.5)
local msh3 = it("BlockMesh")
msh3.Scale = vt(0.25,1,0.1)
local msh4 = it("CylinderMesh")
msh4.Scale = vt(0.2,1,0.2)
local msh4b = it("CylinderMesh")
msh4b.Scale = vt(0.15,1.01,0.15)
local msh5 = it("CylinderMesh")
msh5.Scale = vt(0.4,1,0.4)
local msh6 = it("BlockMesh")
msh6.Scale = vt(0.5,0.5,0.5)
local msh7 = it("BlockMesh")
msh7.Scale = vt(0.2,1.45,0.25)
local msh8 = it("BlockMesh")
msh8.Scale = vt(0.3,1,0.2)
 
local prt1 = it("Part")
prt1.formFactor = 3
prt1.CanCollide = true
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = vt(1,1,1)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = it("Part")
prt2.formFactor = 3
prt2.CanCollide = true
prt2.Name = "Barrel"
prt2.Locked = true
prt2.Size = vt(1,1,1)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = bcolor
local prt3 = it("Part")
prt3.formFactor = 3
prt3.CanCollide = true
prt3.Name = "BarrelPlate"
prt3.Locked = true
prt3.Size = vt(1,1.5,1)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = handlecolor
local prt4 = it("Part")
prt4.formFactor = 3
prt4.CanCollide = true
prt4.Name = "LongBarrel"
prt4.Locked = true
prt4.Size = vt(1,1.5,1)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.BrickColor = handlecolor
local prt4b = it("Part")
prt4b.formFactor = 3
prt4b.CanCollide = true
prt4b.Name = "LongBarrel2"
prt4b.Locked = true
prt4b.Size = vt(1,1.5,1)
prt4b.Parent = swordholder
msh4b.Parent = prt4b
prt4b.BrickColor = BrickColor.new("Really black")
local prt5 = it("Part")
prt5.formFactor = 3
prt5.CanCollide = true
prt5.Name = "RearLongBarrel"
prt5.Locked = true
prt5.Size = vt(1,1,1)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = handlecolor
local prt6 = it("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "Aimer"
prt6.Locked = true
prt6.Size = vt(0.2,0.2,0.2)
prt6.Parent = swordholder
msh6.Parent = prt6
prt6.BrickColor = handlecolor
local prt7 = it("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "BottomBarrel"
prt7.Locked = true
prt7.Size = vt(1,1,1)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = handlecolor
local prt8 = it("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "BarrelTop"
prt8.Locked = true
prt8.Size = vt(1,1,1)
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor
 
local w1 = it("Weld")
w1.Parent = prt1
w1.Part0 = prt1
w1.C1 = euler(0, 0, 0) * cf(0, 0,0)
w1.C0 = euler(math.rad(90),math.rad(0), 0) * cf(-1, 1, -0.25)
local w2 = it("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = euler(0, 0, 0) * cf(0, -0.16, 0)
w2.C0 = euler(math.rad(180), 0,0) * cf(0, -0.75, 0.25)
local w3 = it("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = euler(0, 0, 0) * cf(0, 0, 0)
w3.C0 = euler(math.rad(90), 0,0) * cf(0, -0.5, -0.25)
local w4 = it("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt2
w4.C1 = euler(0, 0, 0) * cf(0, 0, 0.16)
w4.C0 = euler(0, 0,0) * cf(0, -1, 0)
local w4b = it("Weld")
w4b.Parent = prt4b
w4b.Part0 = prt4b
w4b.Part1 = prt4
w4b.C1 = euler(0,0,0) * cf(0, 0, 0)
w4b.C0 = euler(0,0,0) * cf(0, 0, 0)
local w5 = it("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = euler(0, 0, 0) * cf(0, 0, 0)
w5.C0 = euler(math.rad(90), 0,0) * cf(0, -0.65, -0.1)
local w6 = it("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt4
w6.C1 = euler(0, 0, 0) * cf(0, 0, 0.14)
--w6.C0 = euler(0, math.rad(45),math.rad(0)) * cf(0, -1.65, -0.09)
w6.C0 = euler(0, math.rad(45),math.rad(0)) * cf(0, -.65, 0.05)
local w7 = it("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt4
w7.C1 = euler(0, 0, 0) * cf(0, 0, 0)
w7.C0 = euler(0, 0,0) * cf(0, 0, 0.08)
local w10 = it("Weld")
w10.Parent = prt8
w10.Part0 = prt8
w10.Part1 = prt5
w10.C1 = euler(0, 0, 0) * cf(0, -0.8, 0)
w10.C0 = euler(0, 0,0) * cf(0, -0.3, -0.2)
numb=0
for i=0,5 do
local msha = it("CylinderMesh")
msha.Scale = vt(0.15,0.51,0.15)
local prta = it("Part")
prta.formFactor = 3
prta.CanCollide = true
prta.Name = "Ammo"
prta.Locked = true
prta.Size = vt(1,1,1)
prta.Parent = prt2
msha.Parent = prta
prta.BrickColor = BrickColor.new("Black")
local wa = it("Weld")
wa.Parent = prta
wa.Part0 = prta
wa.Part1 = prt2
wa.C1 = euler(0, 0, 0) * cf(0, 0, 0)
wa.C0 = cf(0, -0.15, 0.19) * euler(0, numb, 0) 
numb=numb+1.046666667
coroutine.resume(coroutine.create(function(Part)
while prt2.Parent~=nil do
wait()
Part.Transparency=prt2.Transparency
end
end),prta)
end
 
newgun=swordholder:Clone()
newgun.Name="WeaponClone"
local newmsh1 = it("CylinderMesh")
newmsh1.Scale = vt(1,1,1)
local newmsh2 = it("BlockMesh")
newmsh2.Scale = vt(1,1,1)
local newmsh3 = it("CylinderMesh")
newmsh3.Scale = vt(1,1,1)
local newmsh4 = it("CylinderMesh")
newmsh4.Scale = vt(1,1,1)
local newmsh5 = it("CylinderMesh")
newmsh5.Scale = vt(1,1,1)
local newmsh6 = it("BlockMesh")
newmsh6.Scale = vt(1,1,1)
 
local newprt1 = it("Part")
newprt1.formFactor = 3
newprt1.CanCollide = true
newprt1.Name = "Handle"
newprt1.Locked = true
newprt1.Size = vt(0.3,1,0.3)
newprt1.Parent = newgun
newmsh1.Parent = newprt1
newprt1.BrickColor = handlecolor
local newprt2 = it("Part")
newprt2.formFactor = 3
newprt2.CanCollide = true
newprt2.Name = "Handle2"
newprt2.Locked = true
newprt2.Size = vt(0.5,0.2,1.5)
newprt2.Parent = newgun
newmsh2.Parent = newprt2
newprt2.BrickColor = handlecolor
local newprt3 = it("Part")
newprt3.formFactor = 3
newprt3.CanCollide = false
newprt3.Name = "Handle3"
newprt3.Locked = true
newprt3.Size = vt(0.7,1.2,0.7)
newprt3.Parent = newgun
newmsh3.Parent = newprt3
newprt3.BrickColor = BrickColor.new("Bright green")
local newprt4 = it("Part")
newprt4.formFactor = 3
newprt4.CanCollide = true
newprt4.Name = "BackBarrel"
newprt4.Locked = true
newprt4.Size = vt(0.5,1.2,0.5)
newprt4.Parent = newgun
newmsh4.Parent = newprt4
newprt4.BrickColor = handlecolor
local newprt5 = it("Part")
newprt5.formFactor = 3
newprt5.CanCollide = true
newprt5.Name = "Barrel"
newprt5.Locked = true
newprt5.Size = vt(0.4,2.5,0.4)
newprt5.Parent = newgun
newmsh5.Parent = newprt5
newprt5.BrickColor = handlecolor
local newprt6 = it("Part")
newprt6.formFactor = 3
newprt6.CanCollide = false
newprt6.Name = "BarrelHandle"
newprt6.Locked = true
newprt6.Size = vt(0.3,1,0.3)
newprt6.Parent = newgun
newmsh6.Parent = newprt6
newprt6.BrickColor = handlecolor
 
local neww1 = it("Weld")
neww1.Parent = newprt1 
neww1.Part0 = newprt1
neww1.Name = "Weld1"
local neww2 = it("Weld")
neww2.Parent = newprt2
neww2.Part0 = newprt2
neww2.Part1 = newprt1
neww2.Name = "Weld2"
neww2.C1 = cf(0, 0,0) * angles(0, 0, 0)
neww2.C0 = angles(math.rad(0), 0, 0) * cf(0, 0.6,0.5)
local neww3 = it("Weld")
neww3.Parent = newprt3
neww3.Part0 = newprt3
neww3.Part1 = newprt2
neww3.C1 = cf(0, 0,0) * angles(0, 0, 0)
neww3.C0 = angles(math.rad(90), 0, 0) * cf(0, 0.25,-0.5)
local neww4 = it("Weld")
neww4.Parent = newprt4
neww4.Part0 = newprt4
neww4.Part1 = newprt2
neww4.C1 = cf(0, 0,0) * angles(0, 0, 0)
neww4.C0 = angles(math.rad(90), 0, 0) * cf(0, 0.25,0.5)
local neww5 = it("Weld")
neww5.Parent = newprt5
neww5.Part0 = newprt5
neww5.Part1 = newprt3
neww5.C1 = cf(0, 0,0) * angles(0, 0, 0)
neww5.C0 = angles(math.rad(0), 0, 0) * cf(0, 1.5,0)
local neww6 = it("Weld")
neww6.Parent = newprt6
neww6.Part0 = newprt6
neww6.Part1 = newprt3
neww6.C1 = cf(0, 0,0) * angles(0, 0, 0)
neww6.C0 = angles(math.rad(90), 0, 0) * cf(0, 1.5,-0.5)
 
if torsc then
holstermsh1 = it("SpecialMesh")
holstermsh1.MeshId = "http://www.roblox.com/asset/?id=3270017"
holstermsh1.Scale = vt(2.01,1,1.01)
else
holstermsh1 = it("BlockMesh")
holstermsh1.Scale = vt(2.01,0.1,1.01)
end
local holstermsh2 = it("SpecialMesh")
holstermsh2.MeshId = "http://www.roblox.com/asset/?id=3270017"
holstermsh2.Scale = vt(0.5,0.5,7)
local holstermsh3 = it("BlockMesh")
holstermsh3.Scale = vt(1,1,1)
local holster1 = it("Part")
holster1.formFactor = 3
holster1.CanCollide = false
holster1.Name = "HolsterStrap"
holster1.Locked = true
holster1.Size = vt(1,1,1)
holster1.Parent = swordholder
holstermsh1.Parent = holster1
holster1.BrickColor = handlecolor
local holster2 = it("Part")
holster2.formFactor = 3
holster2.CanCollide = false
holster2.Name = "Holster"
holster2.Locked = true
holster2.Size = vt(1,1,1)
--holster2.Parent = swordholder
holstermsh2.Parent = holster2
holster2.BrickColor = handlecolor 
local holster3 = it("Part")
holster3.formFactor = 3
holster3.CanCollide = false
holster3.Name = "AmmoHolster"
holster3.Locked = true
holster3.Size = vt(0.2,1,0.7)
holster3.Parent = swordholder
holstermsh3.Parent = holster3
holster3.BrickColor = handlecolor 
local w7 = it("Weld")
w7.Parent = holster1
w7.Part0 = holster1
w7.Part1 = Torso
w7.C1 = cf(0, 0,0) * angles(0, 0, 0)
if torsc then
w7.C0 = angles(math.rad(90), 0, 0) * cf(0, 1,0) 
else
w7.C0 = angles(0, 0, 0) * cf(0, 1,0) 
end
local w8 = it("Weld")
w8.Parent = holster2
w8.Part0 = holster2
w8.Part1 = Torso
w8.C1 = cf(0, 0,0) * angles(0, 0, 0)
w8.C0 = angles(math.rad(45), 0, 0) * cf(-1.1, 1-0.25,0) 
local w9 = it("Weld")
w9.Parent = holster3
w9.Part0 = holster3
w9.Part1 = Torso
w9.C1 = cf(0, 0,0) * angles(0, 0, 0)
w9.C0 = angles(math.rad(45), 0, 0) * cf(1, 0.75,-0.5) 
 
local model2 = it("Model") 
model2.Name = "BlastCannon" 
model2.Parent = Character
local prt16 = it("Part") 
prt16.formFactor = 1 
prt16.Parent = model2 
prt16.Reflectance = 0.2 
prt16.CanCollide = false 
prt16.BrickColor = BrickColor.new("Black") 
prt16.Name = "CannonHandle1" 
prt16.Size = vt(1,2,1) 
prt16.Position = Torso.Position 
local prt17 = it("Part") 
prt17.formFactor = 1 
prt17.Parent = model2 
prt17.Reflectance = 0.2 
prt17.CanCollide = false 
prt17.BrickColor = BrickColor.new("Black") 
prt17.Name = "CannonHandle2" 
prt17.Size = vt(1,1,1) 
prt17.Position = Torso.Position 
local prt18 = it("Part") 
prt18.formFactor = 1 
prt18.Parent = model2 
prt18.Reflectance = 0.2 
prt18.CanCollide = false 
prt18.BrickColor = BrickColor.new("Black") 
prt18.Name = "CannonPart1" 
prt18.Size = vt(1,2,1) 
prt18.Position = Torso.Position 
local prt19 = it("Part") 
prt19.formFactor = 1 
prt19.Parent = model2 
prt19.Reflectance = 0.2 
prt19.CanCollide = false 
prt19.BrickColor = BrickColor.new("Black") 
prt19.Name = "CannonPart2" 
prt19.Size = vt(1,2,1) 
prt19.Position = Torso.Position 
local prt20 = it("Part") 
prt20.formFactor = 1 
prt20.Parent = model2 
prt20.Reflectance = 0.2 
prt20.CanCollide = false 
prt20.BrickColor = BrickColor.new("Bright green") 
prt20.Name = "CannonHandle3" 
prt20.Size = vt(1,2,1) 
prt20.Position = Torso.Position 
local prt21 = it("Part") 
prt21.formFactor = 1 
prt21.Parent = model2 
prt21.Reflectance = 0.2 
prt21.CanCollide = false 
prt21.BrickColor = BrickColor.new("Black") 
prt21.Name = "CannonPart3" 
prt21.Size = vt(1,2,1) 
prt21.Position = Torso.Position 
local prt22 = it("Part") 
prt22.formFactor = 1 
prt22.Parent = model2 
prt22.Reflectance = 0.2 
prt22.CanCollide = false 
prt22.BrickColor = BrickColor.new("Black") 
prt22.Name = "CannonPart4" 
prt22.Size = vt(1,2,1) 
prt22.Position = Torso.Position 
local prt23 = it("Part") 
prt23.formFactor = 1 
prt23.Parent = model2 
prt23.Reflectance = 0.2 
prt23.CanCollide = false 
prt23.BrickColor = BrickColor.new("Medium stone grey") 
prt23.Name = "CannonPart5" 
prt23.Size = vt(1,1,1) 
prt23.Position = Torso.Position 
local prt24 = it("Part") 
prt24.formFactor = 1 
prt24.Parent = model2 
prt24.Reflectance = 0 
prt24.CanCollide = false 
prt24.BrickColor = BrickColor.new("Black") 
prt24.Name = "CannonPart6" 
prt24.Size = vt(1,1,1) 
prt24.Position = Torso.Position 
local prt25 = it("Part") 
prt25.formFactor = 1 
prt25.Parent = model2 
prt25.Reflectance = 0.2 
prt25.CanCollide = false 
prt25.BrickColor = BrickColor.new("Medium stone grey") 
prt25.Name = "CannonPart7" 
prt25.Size = vt(1,2,1) 
prt25.Position = Torso.Position 
local prt26 = it("Part") 
prt26.formFactor = 1 
prt26.Parent = model2 
prt26.Reflectance = 0.2 
prt26.CanCollide = false 
prt26.BrickColor = BrickColor.new("Medium stone grey") 
prt26.Name = "CannonPart8" 
prt26.Size = vt(1,1,1) 
prt26.Position = Torso.Position 
local prt27 = it("Part") 
prt27.formFactor = 1 
prt27.Parent = model2 
prt27.Reflectance = 0 
prt27.CanCollide = false 
prt27.BrickColor = BrickColor.new("Black") 
prt27.Name = "CannonPart9" 
prt27.Size = vt(1,1,1) 
prt27.Position = Torso.Position 
local prt28 = it("Part") 
prt28.formFactor = 1 
prt28.Parent = model2 
prt28.Reflectance = 0 
prt28.CanCollide = false 
prt28.BrickColor = BrickColor.new("Black") 
prt28.Name = "CannonPart10" 
prt28.Size = vt(1,1,1) 
prt28.Position = Torso.Position 
local prt29 = it("Part") 
prt29.formFactor = 1 
prt29.Parent = model2 
prt29.Reflectance = 0.2 
prt29.CanCollide = false 
prt29.BrickColor = BrickColor.new("Black") 
prt29.Name = "CannonPart11" 
prt29.Size = vt(1,2,1) 
prt29.Position = Torso.Position 
local prt30 = it("Part") 
prt30.formFactor = 1 
prt30.Parent = model2 
prt30.Reflectance = 0 
prt30.CanCollide = false 
prt30.BrickColor = BrickColor.new("Bright blue") 
prt30.Name = "CannonPart12" 
prt30.Size = vt(1,2,1) 
prt30.Position = Torso.Position 
local prt31 = it("Part") 
prt31.formFactor = 1 
prt31.Parent = model2 
prt31.Reflectance = 0 
prt31.CanCollide = false 
prt31.BrickColor = BrickColor.new("Black") 
prt31.Name = "CannonPart13" 
prt31.Size = vt(1,2,1) 
prt31.Position = Torso.Position 
 
local msh16 = it("BlockMesh") 
msh16.Parent = prt16 
msh16.Scale = vt(0.5,0.6,0.5) 
local msh17 = it("BlockMesh") 
msh17.Parent = prt17 
msh17.Scale = vt(0.6,0.3,0.6) 
local msh18 = it("BlockMesh") 
msh18.Parent = prt18 
msh18.Scale = vt(0.7,0.5,0.7) 
local msh19 = it("BlockMesh") 
msh19.Parent = prt19 
msh19.Scale = vt(0.7,0.8,0.8) 
local msh20 = it("BlockMesh") 
msh20.Parent = prt20 
msh20.Scale = vt(0.59,0.79,0.69) 
msh20.Scale = vt(0.69,0.79,0.69) 
local msh21 = it("BlockMesh") 
msh21.Parent = prt21 
msh21.Scale = vt(0.7,0.65,0.7) 
local msh22 = it("BlockMesh") 
msh22.Parent = prt22 
msh22.Scale = vt(0.7,1.2,0.7) 
local msh23 = it("CylinderMesh") 
msh23.Parent = prt23 
msh23.Scale = vt(0.5,0.5,0.5) 
local msh24 = it("CylinderMesh") 
msh24.Parent = prt24 
msh24.Scale = vt(0.4,0.51,0.4) 
local msh25 = it("CylinderMesh") 
msh25.Parent = prt25 
msh25.Scale = vt(0.5,0.9,0.5) 
local msh26 = it("CylinderMesh") 
msh26.Parent = prt26 
msh26.Scale = vt(0.4,0.5,0.4) 
local msh27 = it("CylinderMesh") 
msh27.Parent = prt27 
msh27.Scale = vt(0.3,0.51,0.3) 
local msh28 = it("CylinderMesh") 
msh28.Parent = prt28 
msh28.Scale = vt(0.6,0.51,0.6) 
local msh29 = it("BlockMesh") 
msh29.Parent = prt29 
msh29.Scale = vt(0.7,0.65,1) 
local msh30 = it("CylinderMesh") 
msh30.Parent = prt30 
msh30.Scale = vt(1,0.65,1.2) 
local msh31 = it("BlockMesh") 
msh31.Parent = prt31 
msh31.Scale = vt(0.9,0.9,0.5) 
 
local wld16 = it("Weld") 
wld16.Parent = prt16 
wld16.Part0 = prt16 
wld16.Part1 = Torso 
wld16.C0 = euler(math.rad(90),0,0) * cf(0.6,-0.5,-2.2) 
local wld17 = it("Weld") 
wld17.Parent = prt17 
wld17.Part0 = prt17 
wld17.Part1 = prt16 
wld17.C0 = euler(0,0,0) * cf(0,0.45,0) 
local wld18 = it("Weld") 
wld18.Parent = prt18 
wld18.Part0 = prt18 
wld18.Part1 = prt16 
wld18.C0 = euler(0,0,0) * cf(0,-1,0) 
local wld19 = it("Weld") 
wld19.Parent = prt19 
wld19.Part0 = prt19 
wld19.Part1 = prt18 
wld19.C0 = euler(math.rad(90),0,0) * cf(0,-0.4,-0.45) 
local wld20 = it("Weld") 
wld20.Parent = prt20 
wld20.Part0 = prt20 
wld20.Part1 = prt19 
wld20.C0 = euler(0,0,0) * cf(0,0,0.5) 
local wld21 = it("Weld") 
wld21.Parent = prt21 
wld21.Part0 = prt21 
wld21.Part1 = prt19 
wld21.C0 = euler(math.rad(90),0,0) * cf(0,1.1,0.25) 
local wld22 = it("Weld") 
wld22.Parent = prt22 
wld22.Part0 = prt22 
wld22.Part1 = prt18 
wld22.C0 = euler(math.rad(90),0,0) * cf(0,-0.4,1.1) 
local wld23 = it("Weld") 
wld23.Parent = prt23 
wld23.Part0 = prt23 
wld23.Part1 = prt22 
wld23.C0 = euler(0,0,0) * cf(0,-1.3,0) 
local wld24 = it("Weld") 
wld24.Parent = prt24 
wld24.Part0 = prt24 
wld24.Part1 = prt23 
wld24.C0 = euler(0,0,0) * cf(0,0,0) 
local wld25 = it("Weld") 
wld25.Parent = prt25 
wld25.Part0 = prt25 
wld25.Part1 = prt18 
wld25.C0 = euler(math.rad(90),0,0) * cf(0,0.3,1.1) 
local wld26 = it("Weld") 
wld26.Parent = prt26 
wld26.Part0 = prt26 
wld26.Part1 = prt25 
wld26.C0 = euler(0,0,0) * cf(0,-1,0) 
local wld27 = it("Weld") 
wld27.Parent = prt27 
wld27.Part0 = prt27 
wld27.Part1 = prt26 
wld27.C0 = euler(0,0,0) * cf(0,0,0) 
local wld28 = it("Weld") 
wld28.Parent = prt28 
wld28.Part0 = prt28 
wld28.Part1 = prt25 
wld28.C0 = euler(0,0,0) * cf(0,0,0) 
local wld29 = it("Weld") 
wld29.Parent = prt29 
wld29.Part0 = prt29 
wld29.Part1 = prt21 
wld29.C0 = euler(0,0,0) * cf(0,0,0.8) 
local wld30 = it("Weld") 
wld30.Parent = prt30 
wld30.Part0 = prt30 
wld30.Part1 = prt29 
wld30.C0 = euler(math.rad(90),0,0) * cf(0,0,-0.2) 
local wld31 = it("Weld") 
wld31.Parent = prt31 
wld31.Part0 = prt31 
wld31.Part1 = prt18 
wld31.C0 = euler(math.rad(90),0,0) * cf(0,-0.4,0.5) 
 
local RAP = it("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = vt(1,1,1)
RAP.Parent = swordholder
RAP.Transparency = 1
local w = it("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = RightArm
w.C1 = euler(0, 0, 0) * cf(0, 0,0)
w.C0 = euler(math.rad(0), 0, 0) * cf(0, 1, 0)
 
 
saydebounce=false
function Say(type)
--[[if saydebounce==false then
saydebounce=true
if type=="Gunzerking" then
Sayings={"TIME TO OVERCOMPENSATE!","DUAL WIELD, BABY!","DOUBLE THE FUN!","THIS IS RIDICULOUS!","AHAHAHAH, YOU'RE ALL GONNA DIE!"}
elseif type=="KilledGunzerk" then
Sayings={"THIS IS RIDICULOUS!","GET OFF MY PLANE!","Smile, son of a...!","WAHAHAHAHAH!","DIE, BITCHES!"}
elseif type=="NoAmmo" then
Sayings={"Bullets schmullets.","I need more gun!","Damn! Out of ammo!"}
elseif type=="Killed" then
Sayings={"Hell yeah!","It's been revoked!","Scream for me!","Get off my plane!"}
elseif type=="Shooting" then
Sayings={"BULLETS FOR EVERYONE!","NEVER ENDING FIRE!","AHAHAHAHAH!","DIE ALREADY!","NOT ENOUGH BULLETS!"}
elseif type=="FacepalmTaunt" then
Sayings={"Ugh.","You've gotta be kidding me.","Pathetic."}
end
if math.random(1,3)==1 then
game:GetService("Chat"):Chat(Character,Sayings[math.random(1,#Sayings)],2)
end
coroutine.resume(coroutine.create(function()
wait(1)
saydebounce=false
end))
end]]
end
 
function unequipweld()
w1.Part1 = Torso 
w1.C1 = euler(0, 0, 0) * cf(0, 0,0)
w1.C0 = euler(math.rad(90),math.rad(0), 0) * cf(-1, 1, -0.25)
end
 
unequipweld()
 
 
 
function equipweld()
w1.Part0 = prt1
w1.Part1 = RAP
w1.C1 = euler(0, 0, 0) * cf(0, 0,0)
w1.C0 = angles(math.rad(90), math.rad(0), math.rad(0)) * cf(0, 0, 0)
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = it("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
function ss(parent,p) --Slash
so("rbxasset://sounds\\swordslash.wav",parent,.7,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))]]
end
function uss(parent,p) --unsheath
so("rbxasset://sounds\\unsheath.wav",parent,.7,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))]]
end
function cs(parent,p) --Magic Charge
so("http://www.roblox.com/asset/?id=2101137",parent,.7,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))]]
end
function ls(parent,p) --Lazer Sound
so("http://www.roblox.com/asset?id=1369158",parent,.7,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
end
function ts(parent,p)
so("http://www.roblox.com/asset/?id=12222030",parent,.7,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12222030"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
end
function fs(parent,p) --Fire Sound
so("http://www.roblox.com/asset/?id=2697431",parent,.7,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=31758982"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
end
function ms(parent,p) --Metal Cling Sound
so("rbxasset://sounds\\metal.ogg",parent,1,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "rbxasset://sounds\\metal.ogg"
SlashSound.Parent = parent
SlashSound.Volume = 5
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
end
function bs(parent,p) --Berserk Sound
so("http://www.roblox.com/asset/?id=2676305",parent,1,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2676305"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
end
function hs(parent,p) --Ammo Hit Sound
--ms(parent,p)
end
function as(parent,p) --Gun Shoot Sound
so("http://roblox.com/asset/?id=10209257",parent,0.5,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://roblox.com/asset/?id=10209257" 
SlashSound.Parent = parent
SlashSound.Volume = 0.5
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
end
function as2(parent,p) --Gun Shoot Sound 2
so("http://roblox.com/asset/?id=97848313",parent,0.7,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://roblox.com/asset/?id=97848313" 
SlashSound.Parent = parent
SlashSound.Volume = 0.7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
end
function ars(parent,p) --Gun Reload Sound
so("http://roblox.com/asset/?id=10209869",parent,1,p) 
--[[local SlashSound = it("Sound")
SlashSound.SoundId = "http://roblox.com/asset/?id=10209869"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))]]
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
    local creator_tag = it("ObjectValue")
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
 
 
 
function hideanim()
attack = true
ars(Head,0.85)
for i = 0.25 ,1 ,0.25 do
wait()
w10.C1 = euler(0, 0, 0) * cf(0, -0.8*i, 0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25+25*i), 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(5*i),0,math.rad(-30*i))
end 
for i = 0.1 ,1 ,0.2 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(50-70*i), 0, 0)
w2.C0 = euler(math.rad(90+90*i), 0,0) * cf(0, -0.75, 0.25)
Neck.C0 = neckcf0 * angles(math.rad(5-10*i),0,math.rad(-30))
end
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(50-70-10*i), 0, 0)
w2.C0 = euler(math.rad(90+90), 0,0) * cf(0, -0.75, 0.25)
Neck.C0 = neckcf0 * angles(math.rad(5-10-5*i),0,math.rad(-30))
end
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25+0.25*i) * angles(math.rad(90-110*i),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(-30+30*i), 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-10+40*i),0,math.rad(-30))
end
unequipweld()
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(-20+20*i),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(30-30*i),0,math.rad(-30+30*i))
end
Neck.C0 = neckcf0
RWRem()
LWRem()    
attack = false
end
 
 
function equipanim()
attack = true
RWFunc()
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(-20*i),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(30*i),0,math.rad(-30*i))
end 
equipweld()
ars(Head,1)
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25*i) * angles(math.rad(-20+130*i),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180-90*i), 0,0) * cf(0, -0.75, 0.25)
Neck.C0 = neckcf0 * angles(math.rad(30-35*i),0,math.rad(-30))
end
--LWFunc()
for i = 0.1 ,1 ,0.1 do
wait()
w10.C1 = euler(0, 0, 0) * cf(0, -0.8+0.8*i, 0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(110-20*i),math.rad(0),math.rad(-60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25*i), 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-5+5*i),0,math.rad(-30+30*i))
end
Neck.C0 = neckcf0
attack = false
end
 
 
function faketors()
local T = it("Part")
T.formFactor = 0
T.CanCollide = false
T.Name = "FakeTorso"
T.Locked = true
T.Size = Torso.Size
T.Parent = swordholder
T.Transparency = 1
T.BrickColor = Torso.BrickColor
for i,z in pairs(Character:GetChildren()) do
if z.className == "CharacterMesh" then
if z.BodyPart == Enum.BodyPart.Torso then
local SM = it("SpecialMesh",T)
SM.MeshId = "http://www.roblox.com/asset/?id=" .. z.MeshId
if z.BaseTextureId ~= 0 then
SM.TextureId = z.BaseTextureId
elseif z.OverlayTextureId ~= 0 then
SM.TextureId = z.OverlayTextureId
else
SM.TextureId = ""
end
end
end
end
local wt = it("Weld")
wt.Parent = T
wt.Part0 = T
wt.Part1 = Torso
RW.Part0 = T
LW.Part0 = T
T.Transparency = 0
Torso.Transparency = 1
RHL.Part0 = T
LHL.Part0 = T
return wt,T
end
 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = it("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = ToolName
script.Parent = Tool 
end 
Bin = script.Parent 
 
function damagesplat(dmg,hit,crit,blocked)
    local mo = it("Model")
    mo.Name = dmg
    local pa = it("Part",mo)
    pa.formFactor = 3
    if critical==false then
    pa.Size = vt(0.8,0.3,0.8)
    else
    pa.Size = vt(0.8*1.5,0.3*2,0.8*1.5)
    end
    if critical==true then
    pa.BrickColor = BrickColor.new("Really red")
    elseif critical==false then
    pa.BrickColor = BrickColor.new("Bright red")
    end
    if blocked then pa.BrickColor = BrickColor.new("Bright blue") end
    pa.CFrame = cf(hit.Position) * cf(0, 3, 0)
    pa.Name = "Head"
    local hah = it("Humanoid")
    hah.Parent = mo
    hah.MaxHealth = 0
    hah.Health = 0
    local bp = it("BodyPosition")
    bp.P = 14000
    bp.maxForce = vt(math.huge, math.huge, math.huge)
    bp.position = hit.Position + vt(0, 5, 0)
    coroutine.resume(coroutine.create(function()
        wait()
        mo.Parent = workspace
    bp.Parent = pa
        wait(1.4)
        mo:remove()
    end))
    return pa
end
 
function damage(hum,dmg,critornot)
local pa = damagesplat(dmg,hum.Torso,critornot)
--hum:TakeDamage(dmg)
hum.Health=hum.Health-dmg
coroutine.resume(coroutine.create(function()
tagHumanoid(hum,Player)
wait(1)
untagHumanoid(hum)
end))
return pa
end
 
function AddAmmo(add)
Ammo = Ammo + add
if Ammo > MaxAmmo then
Ammo = MaxAmmo
end
end
 
Enemy=nil
function ADmg(humm,hit,pos)
        if Enemy==nil then
        Enemy=hit.Parent
        end
        coroutine.resume(coroutine.create(function() 
        wait(1)
        print(Enemy.Humanoid.Health)
        if Enemy.Humanoid.Health==0 then
        if Gunzerkering==false then
        Say("Killed")
        else
        Say("KilledGunzerk")
        end
        end
        if attack==false and Enemy~=nil then
        Did=HP-Enemy.Humanoid.Health
        print("Did "..Did.." Damage")
        Enemy=nil
        HP=0
        end
        end))
if CurrentAmmo == "Normal" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
if guntype=="Revolver" then
if critical==true then
prcntdmg(-75)
else
prcntdmg(0)
end
elseif guntype=="Machine Gun" then
prcntdmg(60)
end
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
local vel = it("BodyVelocity",humm.Torso)
vel.maxForce = vt(1,1,1) * math.huge
vel.P = vel.P * 5
vel.velocity = vt(0,1,0) + cf(Torso.Position,humm.Torso.Position).lookVector * 10
coroutine.resume(coroutine.create(function()
wait() wait() wait() wait()
vel.Parent=nil
end))
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
local effectsmsh = it("BlockMesh")
effectsmsh.Scale = vt(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(0.2,1,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = vt(0.2,mg,0.2)
effectsg.CFrame = cf((LP.p+point1.p)/2,point1.p) * angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(0.5-0.5*i,1,0.5-0.5*i)
end
wait()
effectsg.Parent = nil
end))
end
--
 
 
con = nil
 
 
function dmgcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt11.Touched:connect(OT)
end
 
function dmgdc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
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
 
 
function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = it("SpecialMesh") 
    msh1.Scale = vt(0.5,0.5,0.5) 
    msh1.MeshType = "Sphere" 
    S=it("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=vt(x1,y1,z1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part
    S.Parent=workspace
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 14 do Part.Mesh.Scale = Part.Mesh.Scale + vt(1,1,1) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
guntype="Revolver"
function shoottrail(mouse)
spread = 0
range = 400
rangepower = 100
--local p1 = (prt5.CFrame * cf(0,-prt5.Size.y/4,0)).p
local p1 = (prt4.CFrame * cf(0,prt4.Size.y/2,0)).p
local spreadvector = (vt(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (p1-mouse.Hit.p).magnitude/100
local dir = cf((p1+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(p1,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = it("CylinderMesh")
effectsmsh.Scale = vt(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = ammotrail
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(1,mg*5,1)
effectsg.CFrame = cf((LP+point1)/2,point1) * angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = p1
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir * angles(math.rad(-0.1),0,0)
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
hs(Head,1)
print(hit.Name)
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
critical=false
if hit.Name=="Head" then
coroutine.resume(coroutine.create(function(HeadPart)
for i=0,0.5,0.1 do
wait()
HeadPart.Velocity=vt(0,60,0) 
end
end),hit)
print("CRITICAL")
critical=true
p=it("Part")
p.Parent=workspace
p.CanCollide=false
p.Transparency=1
p.CFrame=hit.CFrame
p.Anchored=true
local GUI = it("BillboardGui") 
GUI.Adornee = p
GUI.Parent = p
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(1, 0, 1, 0) 
GUI.StudsOffset = vt(0, 4, 0) 
local Chat = it("TextLabel") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.Position = UDim2.new(0.599999964, 0, 0, 0) 
Chat.Visible = true 
Chat.Text = "Critical!" 
coroutine.resume(coroutine.create(function(Part) 
for i=0,4,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.05,0)
end
Part.Parent=nil
end),p) 
for i=0,7 do
        Blood=it("Part")
        Blood.Name="Blood"
        Blood.TopSurface="Smooth"
        Blood.BottomSurface="Smooth"
        Blood.formFactor="Plate"
        Blood.BrickColor=BrickColor:Red()
        Blood.Size=vt(1,.4,1)
        Blood.Velocity=vt(math.random(-4,4),math.random(5,25),math.random(-4,4))
        Blood.CFrame=hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        Blood.Parent=workspace 
        Blood.Velocity=vt(math.random(-20,20),math.random(20,50),math.random(-20,20)) 
        Blood.CanCollide=false
        coroutine.resume(coroutine.create(function(blod) 
        wait(0.1)
        blod.CanCollide=true
        wait(5) 
        blod.Parent = nil 
        end),Blood) 
end
end
hum = hit.Parent.Humanoid
attackdebounce=false
guntype="Revolver"
ADmg(hum,hit,pos)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
if hit.Parent.className == "Hat" then 
hatCF=hit.CFrame
coroutine.resume(coroutine.create(function(hat)
hat.Handle:BreakJoints()
hat.Handle.CFrame=hatCF
hat.Handle.CanCollide=true
hat.Handle.Velocity=vt(math.random(-10,10),40,math.random(-10,10)) 
wait(3)
hatCF=hat.Handle.CFrame
hat.Parent=workspace
for i=0,4,0.2 do
wait()
hat.Handle.CFrame=hatCF
hat.Handle.Velocity=vt(math.random(-5,5),20,math.random(-5,5)) 
end
end),hit.Parent)
--[[hit:BreakJoints() 
hit.CFrame=CF
hit.Velocity = vt(math.random(-5,5),20,math.random(-5,5)) ]]
print("BREAKHAT")
else
hum = hit.Parent.Parent.Humanoid
attackdebounce=false
guntype="Revolver"
ADmg(hum,hit,pos)
end 
critical=false
end
print(critical)
end
end
 
function shoottrail2(mouse)
spread = 1
spread = spread*100
range = 100
rangepower = 100
local p1 = (prt26.CFrame * cf(0,prt26.Size.y/4,0)).p
local spreadvector = (vt(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (p1-mouse.Hit.p).magnitude/100
local dir = cf((p1+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(p1,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = it("CylinderMesh")
effectsmsh.Scale = vt(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = ammotrail
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(1,mg*5,1)
effectsg.CFrame = cf((LP+point1)/2,point1) * angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = p1
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir * angles(math.rad(-0.1),0,0)
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
if CurrentAmmo=="Explosion" then
b=math.random(1,3)
if b==1 then
EVENMOARMAGIX2(cf(newpos),1,1,1,0,0,0,0,0,0,BrickColor.new("Bright red")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
guntype="Machine Gun"
ADmg(hum,hit,pos)
end 
end 
end 
end
end
end
if hit ~= nil then
hs(Head,1)
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
attackdebounce=false
guntype="Machine Gun"
ADmg(hum,hit,pos)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
attackdebounce=false
guntype="Machine Gun"
ADmg(hum,hit,pos)
end
end
end
 
function shoottrail3(mouse)
spread = 1.5
spread = spread*100
range = 2000
rangepower = 10
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (prt24.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((prt24.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(prt24.Position,dir.lookVector,10,Character)
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
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Bright green")
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(5,mg*5,5)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(5-5*i,mg*5,5-5*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = prt24.Position
local inc = rangepower
repeat
wait() wait() 
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-2),0,0)
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
EVENMOARMAGIX2(cf(newpos),5,5,5,0,0,0,0,0,0,BrickColor.new("Bright green")) 
WaveEffect2(cf(newpos),15,15,15,0,0,0,1,0,0,BrickColor.new("Bright blue")) 
WaveEffect2(cf(newpos),15,15,15,0,0,0,-1,0,0,BrickColor.new("Bright blue")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 15 and c[i].Name ~= Player.Name then 
print("derp")
newpos2=newpos
Damagefunc2(head,30,0.1)
end 
end 
end 
end
if hit ~= nil then
hs(Head,1)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
effectsmsh.TextureId = "http://www.roblox.com/asset/?id=15886781"
effectsmsh.Scale = Vector3.new(1,1,2.5)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.Transparency = 1
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local weld = Instance.new("Weld")
weld.Part0 = effectsg
weld.Part1 = hit
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
local CJ = CFrame.new(HitPos)
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = effectsg
coroutine.resume(coroutine.create(function()
wait(15)
effectsg.Parent = nil
end))
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
--hum = hit.Parent.Humanoid
--tTorso=hit.Parent.Torso
--ADmg(hum,hit)
local critrandomizer = math.random(crtrate)
--damagesplat(critrandomizer,hit.Parent.Torso,false,true) 
--_G.Damage(tTorso,game.Players.NoobMaster936,math.huge,"Bow")
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
--hum = hit.Parent.Parent.Humanoid
--tTorso=hit.Parent.Parent.Torso
--ADmg(hum,hit)
--damagesplat(critrandomizer,hit.Parent.Parent.Torso,false,true) 
--_G.Damage(tTorso,game.Players.NoobMaster936,math.huge,"Bow")
end
end
end
 
function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = it("SpecialMesh") 
    msh1.Scale = vt(0.5,0.5,0.5) 
    msh1.MeshType = "Sphere" 
    S=it("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=vt(x1,y1,z1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part
    S.Parent=workspace
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 14 do Part.Mesh.Scale = Part.Mesh.Scale + vt(1,1,1) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function WaveEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = it("SpecialMesh") 
    msh1.Scale = vt(x1,y1,z1) 
    msh1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
    S=it("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=vt(1,1,1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part*cf(x2,y2,z2)*euler(x3,y3,z3)
    S.Parent=workspace
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 27 do Part.Mesh.Scale = Part.Mesh.Scale + vt(3,3,3) Part.Transparency=i*.05 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
Damagefunc2=function(hit,Damage,Knockback)
--[[    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) ]]
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    blocked=false
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~=game.workspace.CurrentCamera.PootisValue4.Value and hit.Parent:FindFirstChild("Torso")~=nil then
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=it("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        block=hit.Parent:findFirstChild("Block")
        if block~=nil then
        print("herp")
        if block.Value>0 then
        blocked=true
        block.Value=block.Value-3
        print(block.Value)
        end
        end
        if blocked==false then
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        else
        h:TakeDamage(1)
        showDamage(hit.Parent,1,.5)
        end
        print(newpos2)
--if blocked==false then
local angle = (hit.Position-(newpos2+Vector3.new(0,-3,0))).unit
hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
        rl=Instance.new("BodyAngularVelocity")
        rl.P=3000
        rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
        rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        rl.Parent=hit
coroutine.resume(coroutine.create(function(vel) 
wait(1) 
vel:Remove() 
end),rl) 
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
        game:GetService("Debris"):AddItem(vp,1)
                c=it("ObjectValue")
            c.Name="creator"
            c.Value=Player
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        CRIT=false
        hitDeb=true
        AttackPos=6
    end
--    end 
end
 
showDamage=function(Char,Dealt,du)
    m=it("Model")
    m.Name=tostring(Dealt)
    h=it("Humanoid")
    h.Health=0
    h.MaxHealth=0
    h.Parent=m
    c=it("Part")
    c.Transparency=0
    c.BrickColor=BrickColor:Red()
    if CRIT==true then
        c.BrickColor=BrickColor.new("Really red")
    end
    if blocked==true then
        c.BrickColor=BrickColor.new("Bright blue")
    end
    c.Name="Head"
    c.TopSurface=0
    c.BottomSurface=0
    c.formFactor="Plate"
    c.Size=vt(1,.4,1)
    ms=it("CylinderMesh")
    ms.Scale=vt(.8,.8,.8)
    if CRIT==true then
        ms.Scale=vt(1.25,1.5,1.25)
    end
    ms.Parent=c
    c.Reflectance=0
    it("BodyGyro").Parent=c
    c.Parent=m
    c.CFrame=cf(Char["Head"].CFrame.p+vt(0,1.5,0))
    f=it("BodyPosition")
    f.P=2000
    f.D=100
    f.maxForce=vt(math.huge,math.huge,math.huge)
    f.position=c.Position+vt(0,3,0)
    f.Parent=c
    game:GetService("Debris"):AddItem(m,.5+du)
    c.CanCollide=false
    m.Parent=workspace
    c.CanCollide=false
end
 
function Melee()
attack=true
guntype="Machine Gun"
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90+80*i),math.rad(0),math.rad(-60+80*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-20*i),0,math.rad(-10*i))
end
con1=RightArm.Touched:connect(function(hit) 
hum=hit.Parent:FindFirstChild("Humanoid")
if hum~=nil then
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
ADmg(hum,hit,pos) 
end
end
end) 
con2=prt4.Touched:connect(function(hit) 
hum=hit.Parent:FindFirstChild("Humanoid")
if hum~=nil then
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
ADmg(hum,hit,pos) 
end
end
end) 
for i = 0 ,1 ,0.2 do
wait()
RW.C0 = cf(1.5-0.5*i, 0.5, -0.25-0.25*i) * angles(math.rad(90+80-80*i),math.rad(0),math.rad(-60+80-60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), math.rad(30*i), 0)
Neck.C0 = neckcf0 * angles(math.rad(-20+40*i),0,math.rad(-10+20*i))
end
con1:disconnect()
con2:disconnect()
for i = 0 ,1 ,0.1 do
wait()
RW.C0 = cf(1.5-0.5+0.5*i, 0.5, -0.25-0.25+0.25*i) * angles(math.rad(90),math.rad(0),math.rad(-60+80-60-20*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), math.rad(30-30*i), 0)
Neck.C0 = neckcf0 * angles(math.rad(-20+40-20*i),0,math.rad(-10+20-10*i))
end
guntype="Revolver"
attack=false
end
 
function Ready(mouse)
if Ammo <= 0 then Reload2() return end
attack = true
local wt,t = faketors()
LWFunc()
w7.Part1 = t
w8.Part1 = t
w9.Part1 = t
wld16.Part1 = t
Character.Humanoid.WalkSpeed = 5
for i = 0 , 1 , 0.3 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25+0.25*i) * angles(math.rad(90),math.rad(0),math.rad(-60+150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10*i),math.rad(0),math.rad(-15*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(-90*i), 0) 
end
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(90))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10),math.rad(0),math.rad(-15))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(-90), 0) 
wait() wait()
repeat
as2(Head,0.5+math.random())
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = it("BlockMesh")
meshb1.Scale = vt(1,1,1)
local shellb1 = it("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = vt(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = cf((prt6.CFrame * cf(0,-prt6.Size.y/2,0)).p) * angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Torso.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = vt(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
coroutine.resume(coroutine.create(function()
shoottrail(mouse)
end))
end))
Ammo = Ammo - 1 
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(90))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(-20*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10),math.rad(0),math.rad(-15))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
--wt.C0 = angles(0, math.rad(-90), 0) 
end
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
w2.C0 = euler(math.rad(90), 0,1.04667*i) * cf(0, -0.75, 0.25)
w4.C1 = euler(0, -1.04667*i, 0) * cf(0, 0, 0.14)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(90))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(-20+20*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10),math.rad(0),math.rad(-15))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
--wt.C0 = angles(0, math.rad(-90), 0) 
end
w2.C0 = euler(math.rad(90), 0,0) * cf(0, -0.75, 0.25)
w4.C1 = euler(0, 0, 0) * cf(0, 0, 0.14)
wait(0.3)
until not keyhold or Ammo <= 0
if Ammo==0 then
Say("NoAmmo")
end
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25*i) * angles(math.rad(90),math.rad(0),math.rad(90-150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10-10*i),math.rad(0),math.rad(-15+15*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(-90+90*i), 0) 
end
LWRem()    
w7.Part1 = Torso
w8.Part1 = Torso
w9.Part1 = Torso
wld16.Part1 = Torso 
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
t.Parent = nil
Character.Humanoid.WalkSpeed = 14
wait(0.25)
attack = false
end
 
function GunzerkReady(mouse)
attack = true
Character.Humanoid.WalkSpeed = 5
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(50+30*i),math.rad(20),math.rad(-5+3*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(50+30*i),math.rad(-20),math.rad(5-3*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(50+30+10*i),math.rad(20),math.rad(-5+3+2*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(50+30+10*i),math.rad(-20),math.rad(5-3-2*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
wait() wait()
repeat 
wait()
if math.random(1,20)==1 then
Say("Shooting")
end
coroutine.resume(coroutine.create(function()
if firingdebounce1==false then
firingdebounce1=true
wait()
as2(Head,1)
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = it("BlockMesh")
meshb1.Scale = vt(1,1,1)
local shellb1 = it("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = vt(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = cf((prt6.CFrame * cf(0,-prt6.Size.y/2,0)).p) * angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Torso.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = vt(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
coroutine.resume(coroutine.create(function()
shoottrail(mouse)
end))
end))
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90+10*i),math.rad(20),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
end
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90+10-10*i),math.rad(20),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
end
wait(0.3)
firingdebounce1=false
end
end))
coroutine.resume(coroutine.create(function()
if firingdebounce2==false then
firingdebounce2=true
poisoncounter=math.random(1,5)
wait()
as(Head,1)
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = it("BlockMesh")
meshb1.Scale = vt(1,1,1)
local shellb1 = it("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = vt(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = cf((newprt5.CFrame * cf(0,-newprt5.Size.y/2,0)).p) * angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Torso.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = vt(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
coroutine.resume(coroutine.create(function()
shoottrail2(mouse)
end))
end))
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(90+10*i),math.rad(-20),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(90+10-10*i),math.rad(-20),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
firingdebounce2=false
end
end))
until not keyhold or Ammo <= 0 or GunzerkDuration==0
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90-30*i),math.rad(20),math.rad(-3*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(90-30*i),math.rad(-20),math.rad(3*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
Character.Humanoid.WalkSpeed = 14
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90-30-10*i),math.rad(20),math.rad(-3-2*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(90-30-10*i),math.rad(-20),math.rad(3+2*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
wait(0.25)
attack = false
end
 
 
 
 
 
function Reload2()
attack=true
LWFunc()
for i = 0.2 , 1 , 0.3 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+20*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-30*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(90+90*i), 0,0) * cf(0, -0.75, 0.25)
w10.C1 = euler(0, 0, 0) * cf(0, -0.8*i, 0)
Neck.C0 = neckcf0 * angles(math.rad(-5*i),0,math.rad(-10*i))
end
for i = 0.2 , 1 , 0.3 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+20+10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-30-10*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180), 0,0) * cf(0, -0.75, 0.25)
Neck.C0 = neckcf0 * angles(math.rad(-5-5*i),0,math.rad(-10))
end
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5-0.5*i, 0.5, -0.25-0.25*i) * angles(math.rad(90),math.rad(0),math.rad(-60+20+10-10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-30-10+40*i), 0, 0)
LW.C0 = cf(-1.5+0.5*i, 0.5, -0.5*i) * angles(math.rad(90*i),math.rad(0),math.rad(20*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180), 0,0) * cf(0, -0.75, 0.25)
Neck.C0 = neckcf0 * angles(math.rad(-5-5+20*i),0,math.rad(-10+10*i))
end
derp1=prt2:Clone()
derp1.Parent=swordholder
derp1.Transparency=0
wldderp=it("Weld")
wldderp.Parent=derp1
wldderp.Part0=derp1
wldderp.Part1=LeftArm
wldderp.C0=angles(math.rad(100),math.rad(180-20),0)*cf(-0.2,1.2,0)
prt2.Transparency=1
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5-0.5, 0.5, -0.5) * angles(math.rad(90),math.rad(0),math.rad(-60+20))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-30-10+40+5*i), 0, 0)
LW.C0 = cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * angles(math.rad(90+10*i),math.rad(0),math.rad(20-40*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180), 0,0) * cf(0, -0.75, 0.25)
wldderp.C0=angles(math.rad(100-10*i),math.rad(180-20+20*i),0)*cf(-0.2+0.2*i,1.2-0.2*i,0)
Neck.C0 = neckcf0 * angles(math.rad(-5-5+20-10*i),0,math.rad(-10+10+20*i))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5-0.5, 0.5, -0.5) * angles(math.rad(90),math.rad(0),math.rad(-60+20))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-30-10+40+5+5*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(100-120*i),math.rad(0),math.rad(-20+30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180), 0,0) * cf(0, -0.75, 0.25)
wldderp.C0=angles(math.rad(90),math.rad(180),0)*cf(0,1,0)
Neck.C0 = neckcf0 * angles(math.rad(-5-5+20-10+20*i),0,math.rad(-10+10+20))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5-0.5, 0.5, -0.5) * angles(math.rad(90),math.rad(0),math.rad(-60+20))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-30-10+40+5+5-5*i), 0, 0)
LW.C0 = cf(-1.5+0.5*i, 0.5, -0.5*i) * angles(math.rad(100-120+150*i),math.rad(0),math.rad(-20+30+10*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180), 0,0) * cf(0, -0.75, 0.25)
wldderp.C0=angles(math.rad(90+10*i),math.rad(180-20*i),0)*cf(-0.2*i,1+0.2*i,0)
Neck.C0 = neckcf0 * angles(math.rad(-5-5+20-10+20-30*i),0,math.rad(-10+10+20-20*i))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5-0.5, 0.5, -0.5) * angles(math.rad(90),math.rad(0),math.rad(-60+20))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-30-10+40+5+5-5-5*i), 0, 0)
LW.C0 = cf(-1.5+0.5, 0.5, -0.5) * angles(math.rad(100-120+150-40*i),math.rad(0),math.rad(-20+30+10))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180), 0,0) * cf(0, -0.75, 0.25)
Neck.C0 = neckcf0 * angles(math.rad(-5-5+20-10+20-30+20*i),0,math.rad(0))
end
Ammo = MaxAmmo
derp1.Parent=nil
prt2.Transparency=0
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5-0.5, 0.5, -0.5) * angles(math.rad(90),math.rad(0),math.rad(-60+20))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-50*i), 0, 0)
LW.C0 = cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * angles(math.rad(90-90*i),math.rad(0),math.rad(20-20*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w2.C0 = euler(math.rad(180-90*i), 0,0) * cf(0, -0.75, 0.25)
Neck.C0 = neckcf0 * angles(math.rad(-5-5+20-10+20-30+20-30*i),0,math.rad(0))
end
for i = 0 , 1 , 0.2 do
wait(0)
w10.C1 = euler(0, 0, 0) * cf(0, -0.8+0.8*i, 0)
RW.C0 = cf(1.5-0.5+0.5*i, 0.5, -0.5) * angles(math.rad(90),math.rad(0),math.rad(-60+20-20*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-50+50*i), 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-5-5+20-10+20-30+20-30+20*i),0,math.rad(0))
end
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(0))
w2.C0 = euler(math.rad(90), 0,0) * cf(0, -0.75, 0.25)
LWRem()    
attack=false
end
 
function BlasterMode()
attack=true
blastcannonmode=true
prt5.CanCollide=false
prt6.CanCollide=false
LWFunc()
for i=0,1,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-90*i),math.rad(0),math.rad(-60+60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(200*i),math.rad(0),math.rad(20*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-20*i),0,math.rad(30*i))
end
unequipweld()
wld16.Part1 = LeftArm
wld16.C0 = euler(-1.3,0,0) * cf(-0.5,0.2,2) 
wld16.C1 = euler(0,0,-0.3) * cf(0,0,0) 
Character.Humanoid.WalkSpeed=12
for i=0,1,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-90+25*i),math.rad(0),math.rad(-60+60+10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(200-130*i),math.rad(0),math.rad(20-30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-20+20*i),0,math.rad(30-10*i))
wld16.C0 = euler(-1.3+2.87*i,0,0) * cf(-0.5+0.5*i,0.2+0.8*i,2-2*i) 
wld16.C1 = euler(0,0,-0.3+0.3*i) * cf(0,0,0) 
end
for i=0,1,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-90+25),math.rad(0),math.rad(-60+60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(200-130-10*i),math.rad(0),math.rad(20-30))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(0,0,math.rad(30-10-20*i))
end
attack=false
end
 
function EndBlasterMode()
attack=true
blastcannonmode=false
for i=0,1,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-90+25-25*i),math.rad(0),math.rad(-60+60+10-10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(200-140+140*i),math.rad(0),math.rad(-10+40*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-20*i),0,math.rad(30*i))
wld16.C0 = euler(1.57-2.87*i,0,0) * cf(-0.5*i,1-0.8*i,2*i) 
wld16.C1 = euler(0,0,-0.3*i) * cf(0,0,0) 
end
equipweld()
wld16.Part1 = Torso 
wld16.C0 = euler(math.rad(90),0,0) * cf(0.6,-0.5,-2.2) 
wld16.C1 = euler(0,0,0) * cf(0,0,0) 
Character.Humanoid.WalkSpeed=14
for i=0,1,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-90+90*i),math.rad(0),math.rad(-60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(200-200*i),math.rad(0),math.rad(30-30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(-20+20*i),0,math.rad(30-30*i))
end
LWRem()
prt5.CanCollide=true
prt6.CanCollide=true
attack=false
end
 
function CannonShoot(mouse)
attack = true
readyblast=true
Character.Humanoid.WalkSpeed = 0.01
offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
for i = 0 , 1 , 0.1 do
wait(0)
RW.C0 = cf(1.5-1.4*i, 0.5, -0.25-0.45*i) * angles(math.rad(25+115*i),math.rad(0),math.rad(10-80*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25*i), math.rad(20*i), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(60+30*i),math.rad(0),math.rad(-10+10*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
coroutine.resume(coroutine.create(function()
while readyblast==true do
wait()
offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
Torso.Neck.C1=necko2*euler(-offset,0,0) 
RW.C0 = cf(0.1, 0.5, -0.7) * angles(math.rad(140),math.rad(0),math.rad(-70))
RW.C1 = cf(0, 0.5, 0) * angles(offset, math.rad(20), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(offset, 0, 0)
end
end))
clone=prt31:Clone()
clone.Parent=prt31
prt31.Transparency=1
clonewld=Instance.new("Weld")
clonewld.Parent=clone
clonewld.Part0=clone
clonewld.Part1=prt31
clone2=prt30:Clone()
clone2.Parent=prt30
prt30.Transparency=1
clonewld2=Instance.new("Weld")
clonewld2.Parent=clone2
clonewld2.Part0=clone2
clonewld2.Part1=prt30
for i=0,1,0.1 do
wait(0.1)
clonewld2.C0 = euler(0,0,0) * cf(0,0.5*i,0) 
end
for i=0,1,0.1 do
wait(0)
clonewld.C0 = euler(0,0,0) * cf(0,-0.7*i,0) 
end
coroutine.resume(coroutine.create(function()
for z = 1 ,4 do
coroutine.resume(coroutine.create(function()
local meshb1 = it("BlockMesh")
meshb1.Scale = vt(1,1,1)
local shellb1 = it("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = vt(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = cf((prt24.CFrame * cf(0,prt24.Size.y/2,0)).p) * angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Torso.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = vt(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
readyblast=false
fs(Head,0.2)
as(Head,0.4)
coroutine.resume(coroutine.create(function()
shoottrail3(mouse)
end))
for i=0,1,0.2 do
wait()
clonewld2.C0 = euler(0,0,0) * cf(0,0.5-0.25*i,0) 
clonewld.C0 = euler(0,0,0) * cf(0,-0.7+0.35*i,0) 
Torso.Neck.C1=necko2*euler(-offset,0,0) 
RW.C0 = cf(0.1, 0.5, -0.7) * angles(math.rad(140+20*i),math.rad(0),math.rad(-70))
RW.C1 = cf(0, 0.5, 0) * angles(offset, math.rad(20), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(90+20*i),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(offset, 0, 0)
end
for i=0,1,0.2 do
wait()
clonewld2.C0 = euler(0,0,0) * cf(0,0.5-0.25-0.25*i,0) 
clonewld.C0 = euler(0,0,0) * cf(0,-0.7+0.35+0.35*i,0) 
Torso.Neck.C1=necko2*euler(-offset,0,0) 
RW.C0 = cf(0.1, 0.5, -0.7) * angles(math.rad(140+20+10*i),math.rad(0),math.rad(-70))
RW.C1 = cf(0, 0.5, 0) * angles(offset, math.rad(20), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(90+20+10*i),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(offset, 0, 0)
end
wait(0.1)
for i=0,1,0.05 do
wait()
Torso.Neck.C1=necko2*euler(-offset+offset*i,0,0) 
RW.C0 = cf(0.1+1.4*i, 0.5, -0.7+0.45*i) * angles(math.rad(170-170*i),math.rad(0),math.rad(-70+80*i))
RW.C1 = cf(0, 0.5, 0) * angles(offset+(-offset+math.rad(25))*i, math.rad(20-20*i), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(120-60*i),math.rad(0),math.rad(-10*i))
LW.C1 = cf(0, 0.5, 0) * angles(offset-offset*i, 0, 0)
end
--[[local wt,t = faketors()
w7.Part1 = t
w8.Part1 = t
w9.Part1 = t
w1.Part1 = t
for i = 0 , 1 , 0.05 do
wait(0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(60+30*i),math.rad(0),math.rad(-10-30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(40*i), 0) 
end
--wait(1)
clone=prt20:Clone()
clone.Parent=prt20
prt20.Transparency=1
clonewld=Instance.new("Weld")
clonewld.Parent=clone
clonewld.Part0=clone
clonewld.Part1=prt20
for i=0,1,0.1 do
wait(0.1)
clonewld.C0 = euler(0,math.rad(90*i),0) * cf(0,-0.2*i,0.2*i) 
end
wait() wait()
repeat
as(Head,0.5+math.random())
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = it("BlockMesh")
meshb1.Scale = vt(1,1,1)
local shellb1 = it("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = vt(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = cf((prt26.CFrame * cf(0,prt26.Size.y/2,0)).p) * angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Torso.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = vt(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
coroutine.resume(coroutine.create(function()
shoottrail2(mouse)
end))
end))
wait(0.2)
until not keyhold 
for i = 0 , 1 , 0.05 do
wait(0)
clonewld.C0 = euler(0,math.rad(90-90*i),0) * cf(0,-0.2+0.2*i,0.2-0.2*i) 
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(60+30-30*i),math.rad(0),math.rad(-10-30+30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(40-40*i), 0) 
end
clone.Parent=nil
prt20.Transparency=0
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(0),math.rad(0),math.rad(10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(60),math.rad(0),math.rad(-10))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(0), 0) 
w7.Part1 = Torso
w8.Part1 = Torso
w9.Part1 = Torso
w1.Part1 = Torso 
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
t.Parent = nil
wait(0.25) ]]
Torso.Neck.C1=necko2
clone.Parent=nil
prt31.Transparency=0
clone2.Parent=nil
prt30.Transparency=0
Character.Humanoid.WalkSpeed = 12
attack = false
wait(0.2)
Torso.Neck.C1=necko2
end
 
function BlasterShoot(mouse)
attack = true
local wt,t = faketors()
w7.Part1 = t
w8.Part1 = t
w9.Part1 = t
w1.Part1 = t
Character.Humanoid.WalkSpeed = 0.01
for i = 0 , 1 , 0.05 do
wait(0)
RW.C0 = cf(1.5-1.5*i, 0.5, -0.25-0.45*i) * angles(math.rad(25+115*i),math.rad(0),math.rad(10-80*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25*i), math.rad(20*i), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(60+30*i),math.rad(0),math.rad(-10-30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(40*i), 0) 
end
--wait(1)
clone=prt20:Clone()
clone.Parent=prt20
prt20.Transparency=1
clonewld=Instance.new("Weld")
clonewld.Parent=clone
clonewld.Part0=clone
clonewld.Part1=prt20
for i=0,1,0.1 do
wait(0.1)
clonewld.C0 = euler(0,math.rad(90*i*i),0) * cf(0,-0.2*i,0.2*i) 
end
--[[RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(90))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10),math.rad(0),math.rad(-15))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(-90), 0) ]]
minigunspin=false
doingminigun=true
repeat
coroutine.resume(coroutine.create(function()
if minigunspin==false and doingminigun==true then
minigunspin=true
for i=0,1,0.02 do
if doingminigun==true then
wait()
clonewld.C0 = euler(0,math.rad(90+360*i),0) * cf(0,-0.2,0.2) 
end
end
minigunspin=false
end
end))
as(Head,0.5+math.random())
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = it("BlockMesh")
meshb1.Scale = vt(1,1,1)
local shellb1 = it("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = vt(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = cf((prt26.CFrame * cf(0,prt26.Size.y/2,0)).p) * angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Torso.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = vt(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
coroutine.resume(coroutine.create(function()
shoottrail2(mouse)
end))
end))
--[[for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(90))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(-20*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10),math.rad(0),math.rad(-15))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
--wt.C0 = angles(0, math.rad(-90), 0) 
end
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
w2.C0 = euler(math.rad(90), 0,1.04667*i) * cf(0, -0.75, 0.25)
w4.C1 = euler(0, -1.04667*i, 0) * cf(0, 0, 0.14)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(90))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(-20+20*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10),math.rad(0),math.rad(-15))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
--wt.C0 = angles(0, math.rad(-90), 0) 
end
w2.C0 = euler(math.rad(90), 0,0) * cf(0, -0.75, 0.25)
w4.C1 = euler(0, 0, 0) * cf(0, 0, 0.14)]]
wait(0.2)
until not keyhold 
doingminigun=false
--[[for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25*i) * angles(math.rad(90),math.rad(0),math.rad(90-150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(10-10*i),math.rad(0),math.rad(-15+15*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(-90+90*i), 0) 
end
LWRem()    ]]
for i = 0 , 1 , 0.05 do
wait(0)
clonewld.C0 = euler(0,math.rad(90+90*i),0) * cf(0,-0.2+0.2*i,0.2-0.2*i) 
RW.C0 = cf(1.5-1.5+1.5*i, 0.5, -0.25-0.45+0.45*i) * angles(math.rad(25+115-115*i),math.rad(0),math.rad(10-80+80*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25*i), math.rad(20-20*i), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(60+30-30*i),math.rad(0),math.rad(-10-30+30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(40-40*i), 0) 
end
clone.Parent=nil
prt20.Transparency=0
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(25),math.rad(0),math.rad(10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(60),math.rad(0),math.rad(-10))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
wt.C0 = angles(0, math.rad(0), 0) 
w7.Part1 = Torso
w8.Part1 = Torso
w9.Part1 = Torso
w1.Part1 = Torso 
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
t.Parent = nil
Character.Humanoid.WalkSpeed = 12
wait(0.25)
attack = false
end
 
function Gunzerker()
LWFunc()
attack=true
Gunzerkering=true
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, -0.5+0.5*i) * angles(math.rad(40-60*i),math.rad(0),math.rad(25-25*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(5*i),0,0)
end
newgun.Parent=workspace
newprt3.BrickColor=BrickColor.new("Bright green")
neww1.Parent=newprt1
neww2.Parent=newprt2
neww3.Parent=newprt3
neww4.Parent=newprt4
neww5.Parent=newprt5
neww6.Parent=newprt6
neww1.Part0 = newprt1
neww1.Part1 = LeftArm
neww1.C1 = euler(0, 0, 0) * cf(0, 0,0)
neww1.C0 = angles(math.rad(-90), math.rad(0), math.rad(0)) * cf(0, 1, 0)
Say("Gunzerking")
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90+10*i),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(40-60+120*i),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(5-10*i),0,0)
end
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90+10+10*i),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(40-60+120+10*i),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(5-10-5*i),0,0)
end
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(110-60*i),math.rad(20*i),math.rad(-5*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(0), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(110-60*i),math.rad(-20*i),math.rad(5*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(5-10-5+10*i),0,0)
end
attack=false
end
 
function ChangeAmmoAnim(ammo,trail,derpcol)
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, -0.5) * angles(math.rad(40+60*i),math.rad(0),math.rad(25))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(90), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5*i),0,0)
end
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5*i), 0, 0)
LW.C0 = cf(-1.5+0.5*i, 0.5, -0.5) * angles(math.rad(40+60-50*i),math.rad(0),math.rad(25+20*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(90+90*i), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20*i),0,0)
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5+5*i), 0, 0)
LW.C0 = cf(-1.5+0.5, 0.5, -0.5) * angles(math.rad(40+60-50+50*i),math.rad(0),math.rad(25+20))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(180), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20-10*i),0,0)
end
derpd=prt3:Clone()
derpd.Parent=swordholder
derpd.Transparency=0
derpdw=it("Weld")
derpdw.Parent=swordholder
derpdw.Part0=derpd
derpdw.Part1=LeftArm
derpdw.C0=angles(math.rad(90),math.rad(-30),0)*cf(-0.4,0.8,0)
prt3.Transparency=1
wait(0.1)
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5+5+5*i), 0, 0)
LW.C0 = cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * angles(math.rad(40+60-50+50+10*i),math.rad(0),math.rad(25+20-30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(180), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20-10-5*i),0,0)
derpdw.C0=angles(math.rad(90),math.rad(-30+30*i),0)*cf(-0.4+0.4*i,0.8+0.2*i,0)
end
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5+5+5), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(40+60-50+50+10-140*i),math.rad(0),math.rad(25+20-30))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(180), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20-10-5+30*i),0,math.rad(20*i))
derpdw.C0=angles(math.rad(90),math.rad(0),0)*cf(0,1,0)
end
CurrentAmmo = ammo
ammotrail = BrickColor.new(trail)
derpd.BrickColor=BrickColor.new(derpcol)
prt3.BrickColor=BrickColor.new(derpcol)
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5+5+5), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(40+60-50+50+10-140+140*i),math.rad(0),math.rad(25+20-30+30*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(180), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20-10-5+30-30*i),0,math.rad(20-20*i))
derpdw.C0=angles(math.rad(90),math.rad(0),0)*cf(0,1,0)
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5+5+5-5*i), 0, 0)
LW.C0 = cf(-1.5+0.5*i, 0.5, -0.5*i) * angles(math.rad(40+60-50+50+10-10*i),math.rad(0),math.rad(25+20))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(180), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20-10-5+5*i),0,0)
derpdw.C0=angles(math.rad(90),math.rad(-30*i),0)*cf(-0.4*i,1-0.2*i,0)
end
prt3.Transparency=0
derpd.Parent=nil
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5+5+5-5-5*i), 0, 0)
LW.C0 = cf(-1.5+0.5, 0.5, -0.5) * angles(math.rad(40+60-50+50-60*i),math.rad(0),math.rad(25+20))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(180), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20-10+10*i),0,0)
end
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+5+5+5-5-5-5*i), 0, 0)
LW.C0 = cf(-1.5+0.5-0.5*i, 0.5, -0.5) * angles(math.rad(40+60*i),math.rad(0),math.rad(25+20-20*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(180-90*i), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+20-20*i),0,0)
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60+10-10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-10+10*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, -0.5) * angles(math.rad(40+60-60*i),math.rad(0),math.rad(25))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(90), 0, 0) * cf(0, 0.25,-0.5)
Neck.C0 = neckcf0 * angles(math.rad(-5+5*i),0,0)
end
end
 
function DodgeBack()
attack=true
dodging=true
LWFunc()
vel = it("BodyVelocity")
vel.Parent = Head
vel.maxForce = vt(4e+005,4e+005,4e+005)*1
vel.velocity = Head.CFrame.lookVector * -60 
vel2 = it("BodyGyro") 
vel2.Parent = Head
vel2.maxTorque = vt(4e+005,4e+005,4e+005)*math.huge 
vel2.P = 50e+003 
vel2.cframe=Torso.CFrame
neckcf0=Neck.C0
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(-20*i),math.rad(-90*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(0,0,math.rad(70*i))
end
wait(0.2)
dodging=false
vel.Parent=nil
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150-150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(-20+20*i),math.rad(-90+90*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(0,0,math.rad(70-70*i))
end
LWRem()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(0,0,math.rad(0))
vel2.Parent=nil
attack=false
end
 
function DodgeForward()
attack=true
dodging=true
LWFunc()
vel=it("BodyVelocity")
vel.Parent=Head
vel.maxForce=vt(4e+005,4e+005,4e+005)*1
vel.velocity=Head.CFrame.lookVector * 60 
vel2=it("BodyGyro") 
vel2.Parent=Head
vel2.maxTorque=vt(4e+005,4e+005,4e+005)*math.huge 
vel2.P=50e+003 
vel2.cframe=Torso.CFrame
neckcf0=Neck.C0
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-120*i),math.rad(0),math.rad(-60+60*i))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(-30*i),math.rad(0),math.rad(0))
Neck.C0 = neckcf0 * angles(0,0,math.rad(0))
end
wait(0.2)
if holdforward==true then
--vel.velocity = (Head.CFrame.lookVector+vt(0,1,0)) * 50 
vel.velocity = (Head.CFrame.lookVector*90)+(vt(0,1,0)*50) 
CF=Torso.CFrame
RWLFunc()
LWLFunc()
for i=0,1,0.1 do
wait()
vel2.cframe=CF*euler(math.rad(-360*i),0,0)
RWL.C0 = cf(1, -1, -1*i)*euler(-1.57*i,0,0)
LWL.C0 = cf(-1, -1+1*i, -1*i)*euler(0,0,0)
end
vel2.cframe=CF
vel.Parent=nil
for i=0,1,0.1 do
wait()
vel2.cframe=CF*euler(0,math.rad(180*i),0)
RWL.C0 = cf(1, -1, -1+1*i)*euler(-1.57+1.57*i,0,0)
LWL.C0 = cf(-1, -1+1-1*i, -1+1*i)*euler(0,0,0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-120),math.rad(0),math.rad(90*i))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(-30),math.rad(0),math.rad(-90*i))
end
RWL.C0 = cf(1, -1, 0) * angles(0, 0, 0)
RWL.C1 = cf(0.5, 1, 0)
RWLRem()
LWLRem()
vel2.Parent=nil
for i=0,1,0.1 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-120+120*i),math.rad(0),math.rad(90-150*i))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(-30+30*i),math.rad(0),math.rad(-90+90*i))
end
dodging=false
LWRem()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(0,0,math.rad(0))
else
dodging=false
vel.Parent=nil
vel2.Parent=nil
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-120+120*i),math.rad(0),math.rad(-60+60-60*i))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(-30+30*i),math.rad(0),math.rad(0))
Neck.C0 = neckcf0 * angles(0,0,math.rad(0))
end
LWRem()
end
attack=false
end
 
function DodgeLeft()
attack=true
dodging=true
LWFunc()
CF=Head.CFrame*euler(0,1.57,0)
vel = it("BodyVelocity")
vel.Parent = Torso
vel.maxForce = vt(4e+005,4e+005,4e+005)*1
vel.velocity = CF.lookVector * 70 
vel2 = it("BodyGyro") 
vel2.Parent = Head
vel2.maxTorque = vt(4e+005,4e+005,4e+005)*math.huge 
vel2.P = 50e+003 
vel2.cframe=Torso.CFrame
CF2=Torso.CFrame
for i=0,1,0.1 do
wait()
CF=Torso.CFrame*euler(0,1.57,0)
vel.velocity = CF.lookVector * 60 
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(-90*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
vel2.cframe=CF2*euler(0,-1.57*i,0)
end
vel.Parent=nil
for i=0,1,0.2 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150-150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25+25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(-90+90*i))
end
vel2.Parent=nil
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(0,0,math.rad(0))
LWRem()
dodging=false
attack=false
end
 
function DodgeRight()
attack=true
dodging=true
LWFunc()
CF=Head.CFrame*euler(0,-1.57,0)
vel = it("BodyVelocity")
vel.Parent = Torso
vel.maxForce = vt(4e+005,4e+005,4e+005)*1
vel.velocity = CF.lookVector * 70 
vel2 = it("BodyGyro") 
vel2.Parent = Head
vel2.maxTorque = vt(4e+005,4e+005,4e+005)*math.huge 
vel2.P = 50e+003 
vel2.cframe=Torso.CFrame
CF2=Torso.CFrame
for i=0,1,0.1 do
wait()
CF=Torso.CFrame*euler(0,-1.57,0)
vel.velocity = CF.lookVector * 60 
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(-90*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
vel2.cframe=CF2*euler(0,1.57*i,0)
end
vel.Parent=nil
vel2.Parent=nil
for i=0,1,0.2 do
wait()
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150-150*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25-25+25*i), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(-90+90*i))
end
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(0,0,math.rad(0))
LWRem()
dodging=false
attack=false
end
 
function Action1()
prt5.CanCollide=false
prt6.CanCollide=false
attack=true
LWFunc()
for i = 0 , 1 , 0.1 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25+0.25*i) * angles(math.rad(90-60*i),math.rad(0),math.rad(-60+60*i))
LW.C0 = cf(-1.5+0.5*i, 0.5, 0) * angles(math.rad(130*i),math.rad(0),math.rad(40*i))
Neck.C0 = neckcf0 * angles(math.rad(20*i),0,math.rad(20*i))
end
Say("FacepalmTaunt")
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90-60-10*i),math.rad(0),math.rad(0))
LW.C0 = cf(-1.5+0.5, 0.5, 0) * angles(math.rad(130),math.rad(0),math.rad(40))
Neck.C0 = neckcf0 * angles(math.rad(20),0,math.rad(20+10*i))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90-60-10-10*i),math.rad(0),math.rad(0))
LW.C0 = cf(-1.5+0.5, 0.5, 0) * angles(math.rad(130),math.rad(0),math.rad(40))
Neck.C0 = neckcf0 * angles(math.rad(20),0,math.rad(20+10-10*i))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90-60-10-10+10*i),math.rad(0),math.rad(0))
LW.C0 = cf(-1.5+0.5, 0.5, 0) * angles(math.rad(130),math.rad(0),math.rad(40))
Neck.C0 = neckcf0 * angles(math.rad(20),0,math.rad(20+10*i))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90-60-10-10+10+10*i),math.rad(0),math.rad(0))
LW.C0 = cf(-1.5+0.5, 0.5, 0) * angles(math.rad(130),math.rad(0),math.rad(40))
Neck.C0 = neckcf0 * angles(math.rad(20),0,math.rad(20+10-10*i))
end
for i = 0 , 1 , 0.1 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25*i) * angles(math.rad(90-60+60*i),math.rad(0),math.rad(-60*i))
LW.C0 = cf(-1.5+0.5-0.5*i, 0.5, 0) * angles(math.rad(130-130*i),math.rad(0),math.rad(40-40*i))
Neck.C0 = neckcf0 * angles(math.rad(20-20*i),0,math.rad(20-20*i))
end
LWRem()    
attack=false
prt5.CanCollide=true
prt6.CanCollide=true
end
 
function Action2()
Character.Humanoid.WalkSpeed=0
attack=true
LWFunc()
TorsCF=Torso.CFrame
for i = 0 , 1 , 0.1 do
wait(0)
Torso.CFrame=TorsCF*angles(0,math.rad(-90*i),0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150*i))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(-180*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, math.rad(0))
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(90*i))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(30*i),math.rad(0),math.rad(-180+100*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, math.rad(0))
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(90))
end
for i = 0 , 1 , 0.2 do
wait(0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(30),math.rad(0),math.rad(-180+100+10*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, math.rad(0))
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(90))
end
wait(0.5)
TorsCF=Torso.CFrame
for i = 0 , 1 , 0.1 do
wait(0)
Torso.CFrame=TorsCF*angles(0,math.rad(90*i),0)
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60+150-150*i))
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(30-30*i),math.rad(0),math.rad(-70+70*i))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, math.rad(0))
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(90-90*i))
end
LWRem()    
attack=false
Character.Humanoid.WalkSpeed=14
end
 
bodpos=it("BodyPosition")
bodpos.P=2000
bodpos.D=100
bodpos.maxForce=vt(math.huge,math.huge,math.huge)
bodgy=it("BodyGyro") 
bodgy.maxTorque=vt(4e+005,4e+005,4e+005)*math.huge 
bodgy.P=50e+003 
function Sit()
bodpos.position=Torso.Position-vt(0,3,0)
bodpos.Parent=Torso
bodgy.cframe=Torso.CFrame
bodgy.Parent=Head
LWFunc()
RWLFunc()
LWLFunc()
for i=0,1,0.1 do
wait()
bodgy.cframe=Torso.CFrame*euler(0.07*i,0,0)
RWL.C0 = cf(0.5+0.1*i,-1.5+0.6*i,-0.7*i) * euler(1.2*i,0,0.5*i) 
RWL.C1 = cf(0,0.5,0) * euler(0,0,0) 
LWL.C0 = cf(-0.5-0.1*i,-1.5+0.6*i,-0.7*i) * euler(1.2*i,0,-0.5*i) 
LWL.C1 = cf(0,0.5,0) * euler(0,0,0)
RW.C0 = cf(1.5, 0.5, -0.25-0.25*i) * angles(math.rad(90-50*i),math.rad(0),math.rad(-60+10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), math.rad(-90*i), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(-20*i),math.rad(0),math.rad(0))
end
end
 
function GetUp()
for i=0,1,0.1 do
wait()
bodgy.cframe=Torso.CFrame*euler(-0.07*i,0,0)
RWL.C0 = cf(0.5+0.1-0.1*i,-1.5+0.6-0.6*i,-0.7+0.7*i) * euler(1.2-1.2*i,0,0.5-0.5*i) 
LWL.C0 = cf(-0.5-0.1+0.1*i,-1.5+0.6-0.6*i,-0.7+0.7*i) * euler(1.2-1.2*i,0,-0.5+0.5*i) 
RW.C0 = cf(1.5, 0.5, -0.25-0.25+0.25*i) * angles(math.rad(90-50+50*i),math.rad(0),math.rad(-60+10-10*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), math.rad(-90+90*i), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(-20+20*i),math.rad(0),math.rad(0))
end
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), math.rad(0), 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
bodpos.Parent=nil
bodgy.Parent=nil
LWRem()
RWLRem()
LWLRem()
end
 
function Hi5()
prt5.CanCollide=false
prt6.CanCollide=false
attack=true
didhifive=false
detecthifive=false
LWFunc()
bodpos.Parent=Torso
bodpos.position=Torso.Position
bodgy.cframe=Torso.CFrame
bodgy.Parent=Head
for i=0,1,0.2 do
wait()
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(20*i))
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-100*i),math.rad(0),math.rad(-60+60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(150*i),math.rad(-20*i),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
coroutine.resume(coroutine.create(function()
print("herp")
while hifiving==true do
wait(0)
hifivevalue.Value=true
local hitted,post = rayCast(Torso.Position,Head.CFrame.lookVector,6,Character)
if hitted~=nil then
if hitted.Parent:findFirstChild("HighFive")~=nil then
if hitted.Parent:findFirstChild("HighFive").Value==true then
wait(0.8)
print("HI FIVE")
didhifive=true
hifiving=false
for i=0,1,0.1 do
wait(0.05)
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(20-30*i))
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(-10),math.rad(0),math.rad(0))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(150-170*i),math.rad(-20),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
hifivevalue.Value=false
for i=0,1,0.1 do
wait()
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(-10-10*i))
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(-10),math.rad(0),math.rad(20*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(-20+220*i),math.rad(-20+20*i),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
for i=0,1,0.1 do
wait()
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(-20+60*i))
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(-10),math.rad(0),math.rad(20))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(200-70*i),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
for i=0,1,0.1 do
wait()
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(-20+60-30*i))
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(-10),math.rad(0),math.rad(20))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(200-70+50*i),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
for i=0,1,0.1 do
wait()
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(10-10*i))
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(-10+100*i),math.rad(0),math.rad(20-80*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(180-180*i),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
bodpos.Parent=nil
bodgy.Parent=nil
hifivevalue.Value=false
LWRem()
Neck.C0 = neckcf0
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
prt5.CanCollide=true
prt6.CanCollide=true
else
print("No hi five :c")
end
end
else
print("DERP")
end
end
end))
while hifiving==true and detecthifive==false do
wait()
end
if didhifive==false then
for i=0,1,0.2 do
wait()
Neck.C0 = neckcf0 * angles(math.rad(0),0,math.rad(20-20*i))
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90-100+100*i),math.rad(0),math.rad(-60*i))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(150-150*i),math.rad(-20+20*i),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
end
bodpos.Parent=nil
bodgy.Parent=nil
hifivevalue.Value=false
LWRem()
Neck.C0 = neckcf0
RW.C0 = cf(1.5, 0.5, -0.25) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, 0) * angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
prt5.CanCollide=true
prt6.CanCollide=true
else
--wait(2)
end
attack=false
end
 
function NormalAmmo()
attack = true
ChangeAmmoAnim("Normal","Bright green","Bright green")
attack = false
end
 
 
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = it("BlockMesh")
effectsmsh.Scale = vt(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(0.2,1,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = vt(0.2,mg,0.2)
effectsg.CFrame = cf((LP.p+point1.p)/2,point1.p) * angles(math.rad(90),0,0)
if returnn then return effectsg end
effectsmsh.Scale = vt(0.2,0.2,0.2)
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(0.2-0.2*i,1,0.2-0.2*i)
end
wait()
effectsg.Parent = nil
end
end))
end
 
 
function returnwelds()
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, -0.5) * angles(math.rad(40),math.rad(0),math.rad(25))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
w3.C0 = angles(math.rad(90), 0, 0) * cf(0, 0.25,-0.5)
w1.C0 = angles(math.rad(-90), math.rad(0), math.rad(0)) * cf(0, 0, 0)
RWL.C0 = cf(1, -1, 0) * angles(0, 0, 0)
RWL.C1 = cf(0.5, 1, 0)
LWL.C0 = cf(-1, -1, 0) * angles(0, 0, 0)
LWL.C1 = cf(-0.5, 1, 0)
Neck.C0 = neckcf0
end
 
keyhold = false
function ob1d(mouse) 
hold = true 
if attack then return end
keyhold = true
if blastcannonmode==true then
BlasterShoot(mouse)
end
if blastcannonmode==true then return end
if Gunzerkering==true then
GunzerkReady(mouse)
else
Ready(mouse)
end
end 
 
function ob1u(mouse)  
keyhold = false
end 
 
buttonhold = false
 
function key(key,mouse)
if attack then return end
if key=="h" then
if blastcannonmode==false then
BlasterMode()
else
EndBlasterMode()
end
end
if key=="q" and blastcannonmode==true then
CannonShoot(mouse)
end
if blastcannonmode==true then return end
if key=="f" and GunzerkDuration==1000 then
Gunzerker()
coroutine.resume(coroutine.create(function()
local meh = Character
local rprt1 = it("Part") 
rprt1.Parent = meh 
rprt1.BrickColor = BrickColor.new("Bright red") 
rprt1.CanCollide = false 
rprt1.Name = "RedEye"
local rmsh1 = it("CylinderMesh") 
rmsh1.Parent = rprt1 
rmsh1.Scale = vt(0.035,0.2,0.035) 
local rwld1 = it("Weld") 
rwld1.Parent = rprt1 
rwld1.Part0 = rprt1 
rwld1.Part1 = meh.Head 
rwld1.C0 = euler(1.57,0,0) * cf(0.1,-0.18,0.5) 
local rprt2 = it("Part") 
rprt2.Parent = meh 
rprt2.BrickColor = BrickColor.new("Bright red") 
rprt2.CanCollide = false 
rprt2.Name = "RedEye"
local rmsh2 = it("CylinderMesh") 
rmsh2.Parent = rprt2 
rmsh2.Scale = vt(0.035,0.2,0.035) 
local wld2 = it("Weld") 
wld2.Parent = rprt2 
wld2.Part0 = rprt2 
wld2.Part1 = meh.Head 
wld2.C0 = euler(1.57,0,0) * cf(-0.1,-0.18,0.5) 
local LastPoint1 = rprt1.CFrame * cf(0,rprt1.Size.Y/10,0)
local LastPoint2 = rprt2.CFrame * cf(0,rprt2.Size.Y/10,0)
while GunzerkDuration~=0 do
wait(0)
GunzerkDuration=GunzerkDuration-2
local Point1 = rprt1.CFrame * cf(0,rprt1.Size.Y/10,0)
effect("Bright red",0.5,LastPoint1,Point1)
LastPoint1 = Point1
local Point2 = rprt2.CFrame * cf(0,rprt2.Size.Y/10,0)
effect("Bright red",0.5,LastPoint2,Point2)
LastPoint2 = Point2
end
Gunzerkering=false
while attack==true do
wait()
end
LWRem()    
rprt1.Parent=nil
rprt2.Parent=nil
newgun.Parent=nil
RW.C0 = cf(1.5, 0.5, 0) * angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = cf(0, 0.5, 0) * angles(math.rad(25), 0, 0)
LW.C0 = cf(-1.5, 0.5, -0.5) * angles(math.rad(40),math.rad(0),math.rad(25))
LW.C1 = cf(0, 0.5, 0) * angles(0, 0, 0)
Neck.C0 = neckcf0 * angles(math.rad(0),0,0)
wait()
while GunzerkDuration~=1000 and Gunzerkering==false do
wait()
GunzerkDuration=GunzerkDuration+2
end
end))
end
if Gunzerkering~=true then
if key == "r" then
if Ammo~=MaxAmmo then
Reload2()
end
end
if key == "e" then
critical=false
Melee()
end
--[[DODGE ANIMATIONS]]--
if key=="b" then
DodgeBack()
end
if key=="g" then
DodgeForward()
holdforward=true
end
if key=="v" then
DodgeLeft()
end
if key=="n" then
DodgeRight()
end
--[[TAUNT ANIMATIONS]]--
if key=="z" then
Action1()
end
if key=="x" then
Action2()
end
if key=="c" then
if resting==false then
resting=true
Sit()
else
resting=false
GetUp()
end
end
if key=="t" then
hifiving=true
Hi5()
end
end
end
 
 
function key2(key) 
if key == "f" or key == "q" then
buttonhold = false
end
if key=="g" then
holdforward=false
end
if key=="t" then
hifiving=false
end
end 
 
function s(mouse) 
repeat wait() until not attack
repeat wait() until not ev.Value
 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(ke) key(ke,mouse) end) 
mouse.KeyUp:connect(key2) 
equipanim()
ev.Value = true
end 
 
function ds(mouse) 
keyhold = false
repeat wait() until not attack
repeat wait() until ev.Value
 
hideanim()
wait(0.1)
ev.Value = false 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
 
 
if PlayerGui:findFirstChild("AmmoMeter") ~= nil then
PlayerGui:findFirstChild("AmmoMeter").Parent = nil
end
 
 
coroutine.resume(coroutine.create(function()
local SG = it("ScreenGui",PlayerGui)
SG.Name = "AmmoMeter"
local frame = it("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.1,0)
frame.Position = UDim2.new(0.5-0.1,0,0.05,0)
frame.BackgroundColor3 = BrickColor.new("Brown").Color
local Ammotext = it("TextLabel",frame)
Ammotext.Size = UDim2.new(1,0,0.35,0)
Ammotext.BackgroundTransparency = 1
Ammotext.Text = "Ammo"
Ammotext.FontSize = "Size10"
Ammotext.TextColor3 = BrickColor.new("Bright green").Color
local backing = it("ImageLabel",frame)
backing.Size = UDim2.new(0.8,0,0.2,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.3,0)
backing.BackgroundColor3 = BrickColor.new("Black").Color
local img = it("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = BrickColor.new("Brown").Color
local percent = it("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("Bright green").Color
percent.Text = Ammo.."/".. MaxAmmo
percent.FontSize = "Size10"
local Gunzerktext = it("TextLabel",frame)
Gunzerktext.Size = UDim2.new(1,0,1.2,0)
Gunzerktext.BackgroundTransparency = 1
Gunzerktext.Text = "Gunzerk Duration"
Gunzerktext.FontSize = "Size10"
Gunzerktext.TextColor3 = BrickColor.new("Bright green").Color
local Gunzerkbacking = it("ImageLabel",frame)
Gunzerkbacking.Size = UDim2.new(0.8,0,0.2,0)
Gunzerkbacking.Image = "http://www.roblox.com/asset/?id=48965808"
Gunzerkbacking.Position = UDim2.new(0.1,0,0.75,0)
Gunzerkbacking.BackgroundColor3 = BrickColor.new("Black").Color
local Gunzerkimg = it("ImageLabel",Gunzerkbacking)
Gunzerkimg.Size = UDim2.new(1,0,1,0)
Gunzerkimg.Image = "http://www.roblox.com/asset/?id=48965808"
Gunzerkimg.Position = UDim2.new(0,0,0,0)
Gunzerkimg.BackgroundColor3 = BrickColor.new("Brown").Color
local currentam = it("TextLabel",frame)
currentam.Size = UDim2.new(0.5,0,0.25,0)
currentam.Position = UDim2.new(0,0,1,0)
currentam.BackgroundTransparency = 0
currentam.BackgroundColor3 = BrickColor.new("Brown").Color
currentam.TextColor3 = BrickColor.new("Bright green").Color
currentam.Text = CurrentAmmo
currentam.FontSize = "Size18"
repeat
wait()
pcall(function()
img.Size = UDim2.new(1*(Ammo/MaxAmmo),0,1,0)
percent.Text = Ammo.."/".. MaxAmmo
Gunzerkimg.Size = UDim2.new(1*(GunzerkDuration/1000),0,1,0)
currentam.Text = CurrentAmmo
end)
until SG.Parent == nil
end))
 
--[[coroutine.resume(coroutine.create(function()
swordholder.Parent = workspace
for i=0,9999999999 do
wait()
if swordholder.Parent==nil then
wait(1)
swordholder.Parent = workspace
prt1.Parent = swordholder 
prt2.Parent = swordholder 
prt3.Parent = swordholder 
prt4.Parent = swordholder 
prt5.Parent = swordholder 
prt6.Parent = swordholder 
holster1.Parent = swordholder 
--holster2.Parent = swordholder 
holster3.Parent = swordholder 
w1.Parent=prt1
w2.Parent=prt2
w3.Parent=prt3
w4.Parent=prt4
w5.Parent=prt5
w6.Parent=prt6
w7.Parent=holster1
w8.Parent=holster2
w9.Parent=holster3
if Gunzerkering==true then
newgun.Parent = workspace
newprt1.Parent = newgun 
newprt2.Parent = newgun 
newprt3.Parent = newgun 
newprt4.Parent = newgun 
newprt5.Parent = newgun 
newprt6.Parent = newgun 
neww1.Parent=newprt1
neww2.Parent=newprt2
neww3.Parent=newprt3
neww4.Parent=newprt4
neww5.Parent=newprt5
neww6.Parent=newprt6
end
end
end
end))]]
coroutine.resume(coroutine.create(function()
for i=0,9999999999 do
wait()
if Character.Humanoid.Health==0 then
swordholder.Parent=workspace
prt1.Parent = swordholder 
prt2.Parent = swordholder 
prt3.Parent = swordholder 
prt4.Parent = swordholder 
prt5.Parent = swordholder 
prt6.Parent = swordholder 
holster1.Parent = swordholder 
holster3.Parent = swordholder 
w1.Parent=prt1
w2.Parent=prt2
w3.Parent=prt3
w4.Parent=prt4
w5.Parent=prt5
w6.Parent=prt6
w7.Parent=holster1
w8.Parent=holster2
w9.Parent=holster3
end
end
end))
testpart=it("Part")
testpart.Parent=swordholder
testpart.Anchored=true
testpart.CanCollide=false
testpart.Transparency=1
scarfp2=it("Part")
scarfp2.Parent=swordholder
scarfp2.Anchored=true
scarfp2.CanCollide=false
scarfp2.Transparency=1
cf=cf
euler=euler
coroutine.resume(coroutine.create(function()
while true do
wait(0)
if dodging==true then
scarfp2.CFrame = cf(Torso.Position, testpart.Position) *cf(0,0,0)
scarfp2.CFrame = scarfp2.CFrame + scarfp2.CFrame.lookVector * 0.5 
scarfp2.CFrame = scarfp2.CFrame * cf(0,0,-0.5) * euler(1.57,0,0) 
testpart.CFrame=cf(Torso.Position-Torso.Velocity) *cf(0,-1,0)
coroutine.resume(coroutine.create(function()
for i=0,2 do
Part=it("Part")
Mesh=it("CylinderMesh")
Mesh.Parent=Part
Mesh.Scale=vt(0.3,2,0.3)
Part.Parent=swordholder
Part.CanCollide=false
Part.BrickColor=BrickColor.new("Really blue")
Part.Size=vt(1,1,1)
Part.Transparency=0.2
Part.Anchored=true
Part.CFrame=scarfp2.CFrame*cf(math.random(-2,1)+math.random(),math.random(-2,1)+math.random(),math.random(-2,1)+math.random())
coroutine.resume(coroutine.create(function(derpPart)
for i=0,1,0.1 do
wait()
derpPart.Transparency=derpPart.Transparency+0.05
end
derpPart.Parent=nil
end),Part)
end
end))
end
end
end))
Character.Humanoid.WalkSpeed = 14
-- mediafire