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
ModelName = "Chocobo"
attack = false 
attacktype = 1
Hitdeb = 0
value1=0
Neck = Torso.Neck
local neckcf0 = Neck.C0

----------------------------
--Customize
Energy = 200
MaxEnergy = 200
ChocoboHP = 500

Alive = false

mindamage = 20
maxdamage = 40
crtmaxdamage = 50
omindamage = mindamage
omaxdamage = maxdamage 
ocrtmaxdamage = crtmaxdamage
crtrate = 100/5
--100%/critpercentage

oblkbrkr = 2
blockbreaker = oblkbrkr

speed = 30
jump = 60

if Character.Name=="Fenrier" then
ColorVariation = "Fenrier" 
elseif Character.Name=="DahNoob" then
ColorVariation = "DahNoob" 
elseif Character.Name=="Robloxshathelper" then
ColorVariation = "Robloxshathelper"
else
ColorVariation = "Yellow"
end

if ColorVariation == "Yellow" then
handlecolor = BrickColor.new("Bright yellow")
bcolor = BrickColor.new("Bright orange") 
beakcolor = BrickColor.new("Bright orange")
ropecolor = BrickColor.new("Brown")
eyecolor = BrickColor.new("Bright blue")
elseif				 ColorVariation == "Red" then
handlecolor =BrickColor.new("Bright red")
bcolor = BrickColor.new("Black")
beakcolor = BrickColor.new("Really red")
ropecolor = BrickColor.new("Brown")
eyecolor = BrickColor.new("Bright blue")
elseif				 ColorVariation == "Black" then
handlecolor = BrickColor.new("Black")
bcolor = BrickColor.new("Brown")
beakcolor = BrickColor.new("Bright orange")
ropecolor = BrickColor.new("Brown")
eyecolor = BrickColor.new("Bright blue")
elseif				 ColorVariation == "Purple" then
handlecolor = BrickColor.new("Alder")
bcolor = BrickColor.new("Bright violet")
beakcolor = BrickColor.new("Bright orange")
ropecolor = BrickColor.new("Brown")
eyecolor = BrickColor.new("Bright blue")
elseif				 ColorVariation == "Fenrier" then
handlecolor =BrickColor.new("White")
bcolor = BrickColor.new("Bright orange")
beakcolor = BrickColor.new("Bright orange")
ropecolor = BrickColor.new("Brown")
eyecolor = BrickColor.new("Navy blue")
elseif				 ColorVariation == "Orange" then
handlecolor =BrickColor.new("Neon orange")
bcolor = BrickColor.new("Brown")
beakcolor = BrickColor.new("Brown")
ropecolor = BrickColor.new("Bright yellow")
eyecolor = BrickColor.new("Royal purple")
elseif				 ColorVariation == "DahNoob" then
handlecolor = BrickColor.new("Black")
bcolor = BrickColor.new("Medium stone grey") 
beakcolor = BrickColor.new("Medium stone grey")
ropecolor = BrickColor.new("Brown")
eyecolor = BrickColor.new("Really black")
elseif				 ColorVariation == "Robloxshathelper" then
handlecolor = BrickColor.new("Bright blue")
bcolor = BrickColor.new("Bright orange") 
beakcolor = BrickColor.new("Bright orange")
ropecolor = BrickColor.new("Brown")
eyecolor = BrickColor.new("Bright blue")
else
--Custom
handlecolor =BrickColor.new("Bright blue")
bcolor = BrickColor.new("Medium blue")
beakcolor = BrickColor.new("Medium blue")
ropecolor = BrickColor.new("White")
end

Ride = true
Rope = true


ToolName = "Chocobo"

---------------------------------------------------------------------------------------------------------------------------------------
if Character:findFirstChild("EquippedVal",true) ~= nil then
Character:findFirstChild("EquippedVal",true).Parent = nil
end
ev = Instance.new("BoolValue",Character)
ev.Name = "EquippedVal"
ev.Value = false
if Character:findFirstChild("Block",true) ~= nil then
Character:findFirstChild("Block",true).Parent = nil
end


--player
player = nil
--welds
RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")
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
	RightLeg.CanCollide = false
end

function LWLFunc()
	LWL.Part1 = ch["Left Leg"]
	LHL.Part1 = nil
	LeftLeg.CanCollide = true
end

function RWLRem()
	RWL.Part1 = nil
	RHL.Part1 = ch["Right Leg"]
	RightLeg.CanCollide = false
end
function LWLRem()
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






local swordholder = Instance.new("Model")
swordholder.Name = ModelName
swordholder.Parent = Character

--derp
	RW.Part0 = ch.Torso
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	RW.Parent = swordholder
	--
	LW.Part0 = ch.Torso
	LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
	LW.C1 = CFrame.new(0, 0.5, 0)
	LW.Parent = swordholder
	--
	RWL.Part0 = ch.Torso
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
	RWL.C1 = CFrame.new(0.5, 1, 0)
	RWL.Parent = swordholder
	--
	LWL.Part0 = ch.Torso
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
	LWL.C1 = CFrame.new(-0.5, 1, 0)
	LWL.Parent = swordholder




local msh1 = Instance.new("SpecialMesh")
msh1.Scale = Vector3.new(1,1.2,1.2)
msh1.MeshType = "Sphere"
local msh2 = Instance.new("CylinderMesh")
local msh3 = Instance.new("CylinderMesh")
local msh4 = Instance.new("SpecialMesh")
msh4.Scale = Vector3.new(1,1,1)
msh4.MeshType = "Sphere"
local msh5 = Instance.new("SpecialMesh")
msh5.Scale = Vector3.new(1,0.75,1.2)
msh5.MeshId = "http://www.roblox.com/asset/?id=1778999"
local msh6 = Instance.new("SpecialMesh")
msh6.Scale = Vector3.new(1,1,1)
msh6.MeshType = "Sphere"
local msh7 = Instance.new("SpecialMesh")
msh7.Scale = Vector3.new(1,1,1)
msh7.MeshType = "Sphere"
local msh6a = Instance.new("SpecialMesh")
msh6a.Scale = Vector3.new(1,1,1)
msh6a.MeshType = "Sphere"
local msh7a = Instance.new("SpecialMesh")
msh7a.Scale = Vector3.new(1,1,1)
msh7a.MeshType = "Sphere"
local msh8 = Instance.new("SpecialMesh")
msh8.Scale = Vector3.new(1,1,1)
msh8.MeshType = "Sphere"
local msh9 = Instance.new("SpecialMesh")
msh9.Scale = Vector3.new(1,1,1)
msh9.MeshType = "Sphere"
local msh10 = Instance.new("SpecialMesh")
msh10.Scale = Vector3.new(1,1,1)
msh10.MeshType = "Sphere"
local msh11 = Instance.new("SpecialMesh")
msh11.Scale = Vector3.new(1,1,1)
msh11.MeshType = "Sphere"
local msh12 = Instance.new("SpecialMesh")
msh12.Scale = Vector3.new(1,1,1)
msh12.MeshType = "Sphere"
local msh13 = Instance.new("SpecialMesh")
msh13.Scale = Vector3.new(1,1,1)
msh13.MeshType = "Sphere"
local msh14 = Instance.new("SpecialMesh")
msh14.Scale = Vector3.new(1,1,1)
msh14.MeshType = "Sphere"
local msh15 = Instance.new("SpecialMesh")
msh15.Scale = Vector3.new(1,1,1)
msh15.MeshType = "Sphere"
local msh16 = Instance.new("SpecialMesh")
msh16.Scale = Vector3.new(1,1,1)
msh16.MeshType = "Sphere"
local msh17 = Instance.new("SpecialMesh")
msh17.Scale = Vector3.new(1,1,1)
msh17.MeshType = "Sphere"
local msh18 = Instance.new("SpecialMesh")
msh18.Scale = Vector3.new(1,1,1)
msh18.MeshType = "Sphere"
local msh19 = Instance.new("SpecialMesh")
msh19.Scale = Vector3.new(1,1,1)
msh19.MeshType = "Sphere"
local msh20 = Instance.new("SpecialMesh")
msh20.Scale = Vector3.new(1,1,1)
msh20.MeshType = "Sphere"
local msh21 = Instance.new("SpecialMesh")
msh21.Scale = Vector3.new(1,1,1)
msh21.MeshType = "Sphere"
local msh22 = Instance.new("CylinderMesh")
local msh23 = Instance.new("CylinderMesh")
local msh24 = Instance.new("BlockMesh")
local msh25 = Instance.new("BlockMesh")
local msh26 = Instance.new("BlockMesh")
local msh27 = Instance.new("BlockMesh")
local msh28 = Instance.new("CylinderMesh")
local msh29 = Instance.new("CylinderMesh")
local msh30 = Instance.new("BlockMesh")
local msh31 = Instance.new("BlockMesh")
local msh32 = Instance.new("BlockMesh")
local msh33 = Instance.new("BlockMesh")

local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = true
prt1.Name = "ChocoboBody"
prt1.Locked = true
prt1.Size = Vector3.new(3.5,2.5,5) 
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = true
prt2.Name = "ChocoboNeck"
prt2.Locked = true
prt2.Size = Vector3.new(1.25,2,1.25)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = handlecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = true
prt3.Name = "ChocoboNeck2"
prt3.Locked = true
prt3.Size = Vector3.new(1.25,2,1.25)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = handlecolor
local prt3a = Instance.new("Part")
prt3a.formFactor = 3
prt3a.CanCollide = false
prt3a.Name = "ChocoboNeck2Joint"
prt3a.Locked = true
prt3a.Size = Vector3.new(0.2,0.2,0.2)
prt3a.Parent = swordholder
prt3a.Transparency = 1
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = true
prt4.Name = "Head"
prt4.Locked = true 
prt4.Size = Vector3.new(2,2,3)
prt4.Parent = swordholder
msh4.Parent = prt4 
prt4.BrickColor = handlecolor
local trs = Instance.new("Part")
trs.formFactor = 3
trs.CanCollide = true
trs.Name = "Torso"
trs.Locked = true 
trs.Size = Vector3.new(0.2,0.2,0.2)
trs.Parent = swordholder
trs.Transparency = 1
local wt = Instance.new("Weld")
wt.Parent = trs
wt.Part0 = trs
wt.Part1 = prt4
wt.C0 = CFrame.Angles(math.rad(25),0,0)
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "Beak"
prt5.Locked = true
prt5.Size = Vector3.new(1,1.5,1)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = beakcolor

local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "Eye1"
prt6.Locked = true
prt6.Size = Vector3.new(0.3,0.3,0.6)
prt6.Parent = swordholder
msh6.Parent = prt6
prt6.BrickColor = BrickColor.new("White")
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "Eye2"
prt7.Locked = true
prt7.Size = Vector3.new(0.3,0.3,0.6)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = BrickColor.new("White")
local prt6a = Instance.new("Part")
prt6a.formFactor = 3
prt6a.CanCollide = false
prt6a.Name = "Eye1a"
prt6a.Locked = true
prt6a.Size = Vector3.new(0.2,0.2,0.3)
prt6a.Parent = swordholder
msh6a.Parent = prt6a
prt6a.BrickColor = eyecolor
local prt7a = Instance.new("Part")
prt7a.formFactor = 3
prt7a.CanCollide = false
prt7a.Name = "Eye2a"
prt7a.Locked = true
prt7a.Size = Vector3.new(0.2,0.2,0.3)
prt7a.Parent = swordholder
msh7a.Parent = prt7a
prt7a.BrickColor = eyecolor

local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "HeadFeathers" 
prt8.Locked = true
prt8.Size = Vector3.new(1,0.2,3)
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor
local prt9 = Instance.new("Part")
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "HeadFeathers"
prt9.Locked = true
prt9.Size = Vector3.new(1,0.2,3)
prt9.Parent = swordholder
msh9.Parent = prt9
prt9.BrickColor = handlecolor 
local prt10 = Instance.new("Part")
prt10.formFactor = 3
prt10.CanCollide = false
prt10.Name = "HeadFeathers"
prt10.Locked = true
prt10.Size = Vector3.new(1,0.2,3)
prt10.Parent = swordholder
msh10.Parent = prt10
prt10.BrickColor = handlecolor

--Wings!!
local prt11 = Instance.new("Part")
prt11.formFactor = 3
prt11.CanCollide = false
prt11.Name = "RightWing"
prt11.Locked = true
prt11.Size = Vector3.new(1,3,5)
prt11.Parent = swordholder
msh11.Parent = prt11
prt11.BrickColor = handlecolor
local prt12 = Instance.new("Part")
prt12.formFactor = 3
prt12.CanCollide = false
prt12.Name = "RightWing1"
prt12.Locked = true
prt12.Size = Vector3.new(0.5,1,2)
prt12.Parent = swordholder
msh12.Parent = prt12
prt12.BrickColor = handlecolor
local prt13 = Instance.new("Part")
prt13.formFactor = 3
prt13.CanCollide = false
prt13.Name = "RightWing2"
prt13.Locked = true
prt13.Size = Vector3.new(0.5,1,2)
prt13.Parent = swordholder
msh13.Parent = prt13
prt13.BrickColor = handlecolor
local prt14 = Instance.new("Part")
prt14.formFactor = 3
prt14.CanCollide = false
prt14.Name = "RightWing3"
prt14.Locked = true
prt14.Size = Vector3.new(0.5,1,2)
prt14.Parent = swordholder
msh14.Parent = prt14
prt14.BrickColor = handlecolor
local prt15 = Instance.new("Part")
prt15.formFactor = 3
prt15.CanCollide = false
prt15.Name = "RightWing4"
prt15.Locked = true
prt15.Size = Vector3.new(0.5,1,2)
prt15.Parent = swordholder
msh15.Parent = prt15
prt15.BrickColor = handlecolor

local prt16 = Instance.new("Part")
prt16.formFactor = 3
prt16.CanCollide = false
prt16.Name = "LeftWing"
prt16.Locked = true
prt16.Size = Vector3.new(1,3,5)
prt16.Parent = swordholder
msh16.Parent = prt16
prt16.BrickColor = handlecolor
local prt17 = Instance.new("Part")
prt17.formFactor = 3
prt17.CanCollide = false
prt17.Name = "LeftWing1"
prt17.Locked = true
prt17.Size = Vector3.new(0.5,1,2)
prt17.Parent = swordholder
msh17.Parent = prt17
prt17.BrickColor = handlecolor
local prt18 = Instance.new("Part")
prt18.formFactor = 3
prt18.CanCollide = false
prt18.Name = "LeftWing2"
prt18.Locked = true
prt18.Size = Vector3.new(0.5,1,2)
prt18.Parent = swordholder
msh18.Parent = prt18
prt18.BrickColor = handlecolor
local prt19 = Instance.new("Part") 
prt19.formFactor = 3
prt19.CanCollide = false
prt19.Name = "LeftWing3"
prt19.Locked = true
prt19.Size = Vector3.new(0.5,1,2)
prt19.Parent = swordholder
msh19.Parent = prt19
prt19.BrickColor = handlecolor
local prt20 = Instance.new("Part")
prt20.formFactor = 3
prt20.CanCollide = false
prt20.Name = "LeftWing4"
prt20.Locked = true
prt20.Size = Vector3.new(0.5,1,2)
prt20.Parent = swordholder
msh20.Parent = prt20
prt20.BrickColor = handlecolor

--Tail
local prt21 = Instance.new("Part")
prt21.formFactor = 3
prt21.CanCollide = false
prt21.Name = "Tail"
prt21.Locked = true
prt21.Size = Vector3.new(3,6,1)
prt21.Parent = swordholder
msh21.Parent = prt21
prt21.BrickColor = handlecolor

--Legs
local prt22 = Instance.new("Part")
prt22.formFactor = 3
prt22.CanCollide = true
prt22.Name = "RightLeg"
prt22.Locked = true
prt22.Size = Vector3.new(1,2,1)
prt22.Parent = swordholder
msh22.Parent = prt22
prt22.BrickColor = handlecolor
local prt22a = Instance.new("Part")
prt22a.formFactor = 3
prt22a.CanCollide = false
prt22a.Name = "RightLega"
prt22a.Locked = true
prt22a.Size = Vector3.new(0.2,0.2,0.2)
prt22a.Parent = swordholder
prt22a.Transparency = 1
local prt23 = Instance.new("Part")
prt23.formFactor = 3
prt23.CanCollide = false
prt23.Name = "RightLeg2"
prt23.Locked = true
prt23.Size = Vector3.new(0.75,2,0.75)
prt23.Parent = swordholder
msh23.Parent = prt23
prt23.BrickColor = bcolor
local prt24 = Instance.new("Part")
prt24.formFactor = 3
prt24.CanCollide = false
prt24.Name = "RightFeet"
prt24.Locked = true
prt24.Size = Vector3.new(1,0.75,2.5)
prt24.Parent = swordholder
msh24.Parent = prt24
prt24.BrickColor = bcolor
local prt25 = Instance.new("Part")
prt25.formFactor = 3
prt25.CanCollide = false
prt25.Name = "RightFeet1"
prt25.Locked = true 
prt25.Size = Vector3.new(0.3,0.3,1.5)
prt25.Parent = swordholder
msh25.Parent = prt25
prt25.BrickColor = bcolor
local prt26 = Instance.new("Part")
prt26.formFactor = 3
prt26.CanCollide = false
prt26.Name = "RightFeet2"
prt26.Locked = true 
prt26.Size = Vector3.new(0.5,0.5,1.5)
prt26.Parent = swordholder
msh26.Parent = prt26
prt26.BrickColor = bcolor
local prt27 = Instance.new("Part")
prt27.formFactor = 3
prt27.CanCollide = false
prt27.Name = "RightFeet3"
prt27.Locked = true 
prt27.Size = Vector3.new(0.5,0.5,1.5)
prt27.Parent = swordholder
msh27.Parent = prt27
prt27.BrickColor = bcolor

local prt28 = Instance.new("Part")
prt28.formFactor = 3
prt28.CanCollide = true
prt28.Name = "LeftLeg"
prt28.Locked = true
prt28.Size = Vector3.new(1,2,1)
prt28.Parent = swordholder
msh28.Parent = prt28
prt28.BrickColor = handlecolor
local prt28a = Instance.new("Part")
prt28a.formFactor = 3
prt28a.CanCollide = false
prt28a.Name = "LeftLega"
prt28a.Locked = true
prt28a.Size = Vector3.new(0.2,0.2,0.2)
prt28a.Parent = swordholder
prt28a.Transparency = 1
local prt29 = Instance.new("Part")
prt29.formFactor = 3
prt29.CanCollide = false
prt29.Name = "LeftLeg2"
prt29.Locked = true
prt29.Size = Vector3.new(0.75,2,0.75)
prt29.Parent = swordholder
msh29.Parent = prt29
prt29.BrickColor = bcolor
local prt30 = Instance.new("Part")
prt30.formFactor = 3
prt30.CanCollide = false
prt30.Name = "LeftFeet"
prt30.Locked = true
prt30.Size = Vector3.new(1,0.75,2.5)
prt30.Parent = swordholder
msh30.Parent = prt30
prt30.BrickColor = bcolor
local prt31 = Instance.new("Part")
prt31.formFactor = 3
prt31.CanCollide = false
prt31.Name = "LeftFeet1"
prt31.Locked = true 
prt31.Size = Vector3.new(0.3,0.3,1.5)
prt31.Parent = swordholder
msh31.Parent = prt31
prt31.BrickColor = bcolor
local prt32 = Instance.new("Part")
prt32.formFactor = 3
prt32.CanCollide = false
prt32.Name = "LeftFeet2"
prt32.Locked = true 
prt32.Size = Vector3.new(0.5,0.5,1.5)
prt32.Parent = swordholder
msh32.Parent = prt32
prt32.BrickColor = bcolor
local prt33 = Instance.new("Part")
prt33.formFactor = 3
prt33.CanCollide = false
prt33.Name = "RightFeet3"
prt33.Locked = true 
prt33.Size = Vector3.new(0.5,0.5,1.5)
prt33.Parent = swordholder
msh33.Parent = prt33
prt33.BrickColor = bcolor

--Backseat :D
local prt34 = Instance.new("Seat")
prt34.formFactor = 3
prt34.CanCollide = false
prt34.Name = "Backseat"
prt34.Locked = true 
prt34.Size = Vector3.new(0.2,1,0.2)
prt34.Parent = swordholder
prt34.Transparency = 1

--
local prt35 = Instance.new("Part")
prt35.formFactor = 3
prt35.CanCollide = true
prt35.Name = "Stand"
prt35.Locked = true 
prt35.Size = Vector3.new(1,4,1)
prt35.Parent = swordholder
prt35.Transparency = 1
local w35 = Instance.new("Weld")
w35.Parent = prt35
w35.Part0 = prt35
w35.Part1 = prt1
w35.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w35.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 2,0)  

--Torso
local w1 = Instance.new("Weld")
w1.Parent = prt1 
w1.Part0 = prt1
w1.Part1 = Torso 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-0), math.rad(0)) * CFrame.new(0, 3, -1)
--Neck
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5)
local w3a = Instance.new("Weld")
w3a.Parent = prt3a
w3a.Part0 = prt3a
w3a.Part1 = prt1
w3a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w3a.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -1.5,3)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt3a
w3.C1 = CFrame.Angles(math.rad(-20), 0, 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
--Head
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt3
w4.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w4.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -2.5/2,0.25)
local w5 = Instance.new("Weld")
w5.Parent = prt5 
w5.Part0 = prt5
w5.Part1 = prt4
w5.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w5.C0 = CFrame.Angles(math.rad(100), 0, 0) * CFrame.new(0, 0.25,1.45)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt4
w6.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w6.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0.75, -0.25,0.75)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt4
w7.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w7.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(-0.75, -0.25,0.75)
local w6a = Instance.new("Weld")
w6a.Parent = prt6a
w6a.Part0 = prt6a
w6a.Part1 = prt4
w6a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w6a.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0.775, -0.25,0.91)
local w7a = Instance.new("Weld")
w7a.Parent = prt7a
w7a.Part0 = prt7a
w7a.Part1 = prt4
w7a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w7a.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(-0.775, -0.25,0.91)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt4
w8.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w8.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.9,-1)
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = prt4
w9.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 
w9.C0 = CFrame.Angles(math.rad(0), math.rad(20), math.rad(-40)) * CFrame.new(0.75, -0.5,-1)
local w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt4
w10.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w10.C0 = CFrame.Angles(math.rad(0), math.rad(-20), math.rad(40)) * CFrame.new(-0.75, -0.5,-1)
--Right Wing
local w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = prt1
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)
local w12 = Instance.new("Weld")
w12.Parent = prt12
w12.Part0 = prt12
w12.Part1 = prt11
w12.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w12.C0 = CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)) * CFrame.new(0, 0,-2.5)
local w13 = Instance.new("Weld")
w13.Parent = prt13
w13.Part0 = prt13
w13.Part1 = prt11
w13.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w13.C0 = CFrame.Angles(math.rad(55), math.rad(0), math.rad(0)) * CFrame.new(0, -0.25,-2.25)
local w14 = Instance.new("Weld")
w14.Parent = prt14
w14.Part0 = prt14
w14.Part1 = prt11
w14.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w14.C0 = CFrame.Angles(math.rad(65), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5,-2)
local w15 = Instance.new("Weld")
w15.Parent = prt15
w15.Part0 = prt15
w15.Part1 = prt11
w15.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w15.C0 = CFrame.Angles(math.rad(75), math.rad(0), math.rad(0)) * CFrame.new(0, -0.75,-1.5)
--Left Wing
local w16 = Instance.new("Weld")
w16.Parent = prt16
w16.Part0 = prt16
w16.Part1 = prt1
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)
local w17 = Instance.new("Weld")
w17.Parent = prt17
w17.Part0 = prt17
w17.Part1 = prt16
w17.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w17.C0 = CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)) * CFrame.new(0, 0,-2.5)
local w18 = Instance.new("Weld")
w18.Parent = prt18
w18.Part0 = prt18
w18.Part1 = prt16
w18.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w18.C0 = CFrame.Angles(math.rad(55), math.rad(0), math.rad(0)) * CFrame.new(0, -0.25,-2.25)
local w19 = Instance.new("Weld")
w19.Parent = prt19
w19.Part0 = prt19
w19.Part1 = prt16
w19.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w19.C0 = CFrame.Angles(math.rad(65), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5,-2)
local w20 = Instance.new("Weld")
w20.Parent = prt20
w20.Part0 = prt20
w20.Part1 = prt16
w20.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w20.C0 = CFrame.Angles(math.rad(75), math.rad(0), math.rad(0)) * CFrame.new(0, -0.75,-1.5)
--Tail
local w21 = Instance.new("Weld")
w21.Parent = prt21 
w21.Part0 = prt21
w21.Part1 = prt1
w21.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w21.C0 = CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)) * CFrame.new(0, -1.5,-3.5)
--Right Leg
local w22 = Instance.new("Weld")
w22.Parent = prt22
w22.Part0 = prt22
w22.Part1 = prt1
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
local w22a = Instance.new("Weld")
w22a.Parent = prt22a
w22a.Part0 = prt22a
w22a.Part1 = prt22
w22a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22a.C0 = CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)) * CFrame.new(0, 1,0) 
local w23 = Instance.new("Weld")
w23.Parent = prt23
w23.Part0 = prt23
w23.Part1 = prt22a
w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
local w24 = Instance.new("Weld")
w24.Parent = prt24
w24.Part0 = prt24
w24.Part1 = prt23
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
local w25 = Instance.new("Weld")
w25.Parent = prt25
w25.Part0 = prt25
w25.Part1 = prt24
w25.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w25.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.1,-1.5) 
local w26 = Instance.new("Weld")
w26.Parent = prt26
w26.Part0 = prt26
w26.Part1 = prt24
w26.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w26.C0 = CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)) * CFrame.new(-0.75, 0.1,1.5) 
local w27 = Instance.new("Weld")
w27.Parent = prt27
w27.Part0 = prt27
w27.Part1 = prt24
w27.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w27.C0 = CFrame.Angles(math.rad(0), math.rad(-45), math.rad(0)) * CFrame.new(0.75, 0.1,1.5)  
--Left Leg
local w28 = Instance.new("Weld")
w28.Parent = prt28
w28.Part0 = prt28
w28.Part1 = prt1
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
local w28a = Instance.new("Weld")
w28a.Parent = prt28a
w28a.Part0 = prt28a
w28a.Part1 = prt28
w28a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28a.C0 = CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)) * CFrame.new(0, 1,0) 
local w29 = Instance.new("Weld")
w29.Parent = prt29
w29.Part0 = prt29
w29.Part1 = prt28a
w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
local w30 = Instance.new("Weld")
w30.Parent = prt30
w30.Part0 = prt30
w30.Part1 = prt29
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
local w31 = Instance.new("Weld")
w31.Parent = prt31
w31.Part0 = prt31
w31.Part1 = prt30
w31.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w31.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.1,-1.5) 
local w32 = Instance.new("Weld")
w32.Parent = prt32
w32.Part0 = prt32
w32.Part1 = prt30
w32.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w32.C0 = CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)) * CFrame.new(-0.75, 0.1,1.5) 
local w33 = Instance.new("Weld")
w33.Parent = prt33
w33.Part0 = prt33
w33.Part1 = prt30
w33.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w33.C0 = CFrame.Angles(math.rad(0), math.rad(-45), math.rad(0)) * CFrame.new(0.75, 0.1,1.5) 
--Backseat 
local w34 = Instance.new("Weld")
w34.Parent = prt1
w34.Part0 = prt34
w34.Part1 = prt1
w34.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w34.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, -1,-1.5)  
if Alive then
local hum = Instance.new("Humanoid")
hum.Parent = swordholder
hum.MaxHealth = ChocoboHP
hum.Health = ChocoboHP
hum.PlatformStand = true
end

local w36 = Instance.new("Weld")
local w37 = Instance.new("Weld")
--[[if Rope then
local msh36 = Instance.new("BlockMesh")
local prt36 = Instance.new("Part")
prt36.formFactor = 3
prt36.CanCollide = true
prt36.Name = "MouthRope"
prt36.Locked = true 
prt36.Size = Vector3.new(1,0.2,0.2)
prt36.Parent = swordholder
msh36.Parent = prt36
prt36.BrickColor = ropecolor
w36.Parent = prt36
w36.Part0 = prt36
w36.Part1 = prt5
w36.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w36.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)  
local msh37 = Instance.new("BlockMesh")
local prt37 = Instance.new("Part")
prt37.formFactor = 3
prt37.CanCollide = true
prt37.Name = "MouthRope2"
prt37.Locked = true 
prt37.Size = Vector3.new(3,0.2,0.2)
prt37.Parent = swordholder
msh37.Parent = prt37
prt37.BrickColor = ropecolor
w37.Parent = prt37
w37.Part0 = prt37
w37.Part1 = Torso
w37.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0,-1)  
local prt38a = Instance.new("Part")
prt38a.formFactor = 3
prt38a.CanCollide = false
prt38a.Name = "MouthRope3Joint"
prt38a.Locked = true 
prt38a.Size = Vector3.new(0.2,0.2,0.2)
prt38a.Parent = swordholder
prt38a.Transparency = 1
local w38a = Instance.new("Weld")
w38a.Parent = prt38a
w38a.Part0 = prt38a
w38a.Part1 = prt3
w38a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w38a.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0.5, 1.5,0.5)  
local prt39a = Instance.new("Part")
prt39a.formFactor = 3 
prt39a.CanCollide = false
prt39a.Name = "MouthRope4Joint"
prt39a.Locked = true 
prt39a.Size = Vector3.new(0.2,0.2,0.2)
prt39a.Parent = swordholder
prt39a.Transparency = 1
local w39a = Instance.new("Weld")
w39a.Parent = prt39a
w39a.Part0 = prt39a
w39a.Part1 = prt3
w39a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w39a.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-0.5, 1.5,0.5)  
local msh38 = Instance.new("BlockMesh")
local prt38 = Instance.new("Part")
prt38.formFactor = 3
prt38.Name = "MouthRope3"
prt38.Locked = true 
prt38.Size = Vector3.new(0.2,0.2,0.2)
prt38.Parent = swordholder
msh38.Parent = prt38
prt38.BrickColor = ropecolor
prt38.CanCollide = false
prt38.Anchored = true
local msh39 = Instance.new("BlockMesh")
local prt39 = Instance.new("Part")
prt39.formFactor = 3
prt39.Name = "MouthRope4"
prt39.Locked = true 
prt39.Size = Vector3.new(0.2,0.2,0.2)
prt39.Parent = swordholder
msh39.Parent = prt39
prt39.BrickColor = ropecolor
prt39.CanCollide = false
prt39.Anchored = true
local msh40 = Instance.new("BlockMesh")
local prt40 = Instance.new("Part")
prt40.formFactor = 3
prt40.Name = "MouthRope5"
prt40.Locked = true 
prt40.Size = Vector3.new(0.2,0.2,0.2)
prt40.Parent = swordholder
msh40.Parent = prt40
prt40.BrickColor = ropecolor
prt40.CanCollide = false
prt40.Anchored = true
local msh41 = Instance.new("BlockMesh")
local prt41 = Instance.new("Part")
prt41.formFactor = 3
prt41.Name = "MouthRope6"
prt41.Locked = true 
prt41.Size = Vector3.new(0.2,0.2,0.2)
prt41.Parent = swordholder
msh41.Parent = prt41
prt41.BrickColor = ropecolor
prt41.CanCollide = false
prt41.Anchored = true
coroutine.resume(coroutine.create(function()
repeat
wait()
local ll = prt37.CFrame * CFrame.new(prt37.Size.x/-2,0,0)
local rr = prt37.CFrame * CFrame.new(prt37.Size.x/2,0,0)
local oristrpos1 = prt38a.CFrame
local oristrpos2 = prt39a.CFrame
local oristrpos3 = prt36.CFrame*CFrame.new((prt36.Size.x/-2)+0.1,0,0)
local oristrpos4 = prt36.CFrame*CFrame.new((prt36.Size.x/2)-0.1,0,0)
local mg1 = (ll.p - oristrpos1.p).magnitude
local mg2 = (rr.p - oristrpos2.p).magnitude
local mg3 = (oristrpos1.p - oristrpos3.p).magnitude
local mg4 = (oristrpos2.p - oristrpos4.p).magnitude
prt38.Size = Vector3.new(0.2,mg1,0.2) 
prt38.CFrame = CFrame.new((ll.p+oristrpos1.p)/2,oristrpos1.p) * CFrame.Angles(math.rad(90),0,0)
prt39.Size = Vector3.new(0.2,mg2,0.2)
prt39.CFrame = CFrame.new((rr.p+oristrpos2.p)/2,oristrpos2.p) * CFrame.Angles(math.rad(90),0,0)
prt40.Size = Vector3.new(0.2,mg3,0.2)
prt40.CFrame = CFrame.new((oristrpos1.p+oristrpos3.p)/2,oristrpos3.p) * CFrame.Angles(math.rad(90),0,0)
prt41.Size = Vector3.new(0.2,mg3,0.2)
prt41.CFrame = CFrame.new((oristrpos2.p+oristrpos4.p)/2,oristrpos4.p) * CFrame.Angles(math.rad(90),0,0)
until false
end))
end]]


local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local bg = Instance.new("BodyGyro")
bg.maxTorque = bg.maxTorque * math.huge
local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge,0,math.huge)
bp.P = bp.p * 10

function unequipweld()
w1.Part1 = nil
bg.Parent = prt1
bg.cframe = prt1.CFrame
local hit,pos = rayCast(Torso.Position+Vector3.new(0,10,0), Vector3.new(0,-2,0), 1000, Character)
bp.position = pos + Vector3.new(0,4,0)
bp.Parent = prt1
w37.Part1 = prt2
w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.5,-0.6)  
end

unequipweld()
bp.position = (Head.CFrame*CFrame.new(10,0,0)).p
bg.cframe = Head.CFrame

function equipweld()
w1.Part1 = Torso 
bg.Parent = nil
bp.Parent = nil
w37.Part1 = Torso 
w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,1.25)  
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
function fs(parent,p) --Fire Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=31758982"
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
SlashSound.Volume = 5
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function ws(parent,p) --Walk Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\bfsl-minifigfoots1.mp3"
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




function hideanim()
attack = true
RWRem()
LWRem()	
RWLRem()
LWLRem()
unequipweld()
attack = false
end


function equipanim()
attack = true
RWFunc()
RWLFunc()
LWLFunc()
LWFunc()
equipweld()
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45*i),math.rad(0),math.rad(-20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45*i),math.rad(0),math.rad(20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0) 
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45*i), 0, math.rad(25*i))
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(45*i), 0, math.rad(-25*i))
LWL.C1 = CFrame.new(-0.5, 1, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(0),0,math.rad(0))
end 

attack = false
end

function noarms()
RWRem()
LWRem()
w37.Part1 = prt2
w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.5,-0.6)  
end

function arms()
RWFunc()
LWFunc()
w37.Part1 = Torso 
w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,1.25)  
end

function faketors()
local T = Instance.new("Part")
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
local SM = Instance.new("SpecialMesh",T)
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
local wt = Instance.new("Weld")
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
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = ToolName
script.Parent = Tool 
end 
Bin = script.Parent 
 
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
        mo.Parent = workspace
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

function AddEnergy(add)
Energy = Energy + add
if Energy > MaxEnergy then
Energy = MaxEnergy
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
effectsg.Parent = swordholder
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


con = nil


function dmgcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt4.Touched:connect(OT)
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

jumping = false
walking = false
function Walk()
if walking or jumping then return end
walking = true
for i = 0.2 , 1, 0.2 do
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20-80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(80-40*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20+60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(80-100*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
--
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)
end
repeat 

for i = 0.1 , 1, 0.1 do
if not walking or jumping then break end
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
--
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)
end
for i = 0.1 , 1, 0.1 do
if not walking or jumping then break end
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
--
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)
end 
until not walking or jumping
for i = 0.2 , 1, 0.2 do
if not walking or jumping then break end
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(-60+80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(40+40*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(80-60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(-20+100*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
--
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)
end 
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
end


function Jump()
if jumping then return end
jumping = true 
local vel = Instance.new("BodyVelocity",prt1)
vel.maxForce = Vector3.new(0,1,0) * math.huge
vel.P = vel.P * 5
vel.velocity = Vector3.new(0,jump,0)
coroutine.resume(coroutine.create(function()
wait() wait() wait() wait()
vel.Parent=nil
end))
ss(Head,1)
for i = 0.2 , 1 , 0.2 do
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(80-80*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(80-80*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
--Neck
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5)
w3.C1 = CFrame.Angles(math.rad(-20+20*i), 0, 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
--Wings
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45*i)) * CFrame.new(-1.5-0.5*i, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45*i)) * CFrame.new(1.5+0.5*i, 0,0)
end
wait(0.5)
for i = 0.2 , 1 , 0.2 do
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(80*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(80*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
--Neck
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-20*i), 0, 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
--Wings
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45+45*i)) * CFrame.new(-2+0.5*i, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45-45*i)) * CFrame.new(2-0.5*i, 0,0)
end
jumping = false
if prt1.Velocity.magnitude > 5 then
walking = true
for i = 0.2 , 1, 0.2 do
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20-80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(80-40*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20+60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(80-100*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
end
repeat 
for i = 0.1 , 1, 0.1 do
if not walking or jumping then break end
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
end
for i = 0.1 , 1, 0.1 do
if not walking or jumping then  break end
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
end 
until not walking or jumping 
for i = 0.2 , 1, 0.2 do
if jumping then break end
wait()
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(-60+80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(40+40*i), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(80-60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(-20+100*i), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
end 
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
end
end 

 

dashing = false
function Dash()
dashing = true
for i = 0.1 ,1 , 0.1 do
wait()
--Neck
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-20-60*i), 0, 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
end
dmgcnnct()
rptddmg(dashing,false,1)
LastPoint = prt4.CFrame * CFrame.new(0,0,prt4.Size.Y/2)
repeat
local Point = prt4.CFrame * CFrame.new(0,0,prt4.Size.Y/2)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
wait(0.1)
if Energy >= 1 then
Energy = Energy - 1
end
until not buttonhold or Energy < 3
dmgdc()
dashing = false
for i = 0.1 ,1 , 0.1 do
wait()
--Neck
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-80+60*i), 0, 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
end
end 

idleez = false
function Idle()
if idleez then return end
idleez = true
local rndm = math.random(1,3)
for i = 0.05, 1 , 0.05 do
if not walking and not dashing and not jumping then
wait()
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-20+5*i), 0, 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
if rndm ~= 1 then
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10*i)) * CFrame.new(-1.5-0.2*i, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(10*i)) * CFrame.new(1.5+0.2*i, 0,0)
else
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45*i)) * CFrame.new(-1.5-0.5*i, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45*i)) * CFrame.new(1.5+0.5*i, 0,0)
end
end
end
if rndm == 1 then
for i = 0.1 , 1 , 0.1 do
if not walking and not dashing and not jumping then 
wait()
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-15+5*i) ,math.rad(0), 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45-45*i)) * CFrame.new(-2, -1*i,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45+45*i)) * CFrame.new(2, -1*i,0)
end
end
for i = 0.2 , 1 , 0.2 do
if not walking and not dashing and not jumping then 
wait()
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-10+5*i),math.rad(0), 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90+30*i)) * CFrame.new(-2, -1,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90-30*i)) * CFrame.new(2, -1,0)
end
end
for i = 0.2 , 1 , 0.2 do
if not walking and not dashing and not jumping then 
wait()
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-5+5*i),math.rad(0), 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-60-30*i)) * CFrame.new(-2, -1,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(60+30*i)) * CFrame.new(2, -1,0)
end
end
for i = 0.1 , 1 , 0.1 do
if not walking and not dashing and not jumping then 
wait()
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-15*i),math.rad(0), 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90+45*i)) * CFrame.new(-2, -1+1*i,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90-45*i)) * CFrame.new(2, -1+1*i,0)
end
end
end
for i = 0.025, 1 , 0.025 do
if not walking and not dashing and not jumping then 
wait()
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 
w3.C1 = CFrame.Angles(math.rad(-15-5*i), 0, 0) * CFrame.new(0, 0.465,0) 
w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)
if rndm ~= 1 then
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10+10*i)) * CFrame.new(-1.7+0.2*i, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(10-10*i)) * CFrame.new(1.7-0.2*i, 0,0)
else
w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45+45*i)) * CFrame.new(-2+0.5*i, 0,0)
w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45-45*i)) * CFrame.new(2-0.5*i, 0,0)
end
end
 end
idleez = false
end

function returnwelds()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-20))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0) 
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45), 0, math.rad(25))
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(45), 0, math.rad(-25))
LWL.C1 = CFrame.new(-0.5, 1, 0)
Neck.C0 = neckcf0
--
w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 
w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
-- 
w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  
w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 
w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  
w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 
w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  
w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 
--
end

function ride()
Ride = true
equipanim()
end
function unride()
Ride = false
hideanim()
end

function RemoveSeater()
if #prt34:GetChildren() > 0 then
prt34:GetChildren()[1].Parent = nil
end
end

function onFreeFall()
unride()
print("Fell")
value1=value1+1
end

keyhold = false
function ob1d(mouse) 
hold = true 
if attack then return end
keyhold = true

end 

function ob1u(mouse)   
keyhold = false
end 

buttonhold = false

function key(key,mouse)
if attack then return end
if Ride then
if key == "f" then
buttonhold = true
Dash()
end
if key == " " then
coroutine.resume(coroutine.create(Jump))
end
end
if key == "q" then
if Ride then
unride()
else
--prt4
mag=Torso.Position-prt4.Position
magni=mag.magnitude
if magni <=3 then 
swordholder:MoveTo(Head.Position+Vector3.new(0,5,0))
ride()
end
end
end
if key == "x" then
RemoveSeater()
end
end


function key2(key) 
if key == "f" then
buttonhold = false
end
end 

function s(mouse)  
repeat wait() until not attack
repeat wait() until not ev.Value
arms()
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(ke) key(ke,mouse) end) 
mouse.KeyUp:connect(key2) 
ev.Value = true
end 

function ds(mouse) 
keyhold = false
repeat wait() until not attack
repeat wait() until ev.Value
noarms()
wait(0.1)
ev.Value = false 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 



if PlayerGui:findFirstChild("EnergyMeter") ~= nil then
PlayerGui:findFirstChild("EnergyMeter").Parent = nil
end

coroutine.resume(coroutine.create(function()
repeat
wait(0.1)
if Ride then
if dashing then
Character.Humanoid.WalkSpeed = speed * 1.5
else
Character.Humanoid.WalkSpeed = speed
end
if (prt1.Velocity * Vector3.new(1,0,1)).magnitude > 5 then
coroutine.resume(coroutine.create(Walk))
walking = true
elseif (prt1.Velocity * Vector3.new(1,0,1)).magnitude < 5 then
walking = false
AddEnergy(1)
coroutine.resume(coroutine.create(function() Idle() end))
end
else
Character.Humanoid.WalkSpeed = 16 
coroutine.resume(coroutine.create(function() Idle() end))
walking = false
end
until false
end))

coroutine.resume(coroutine.create(function()
local SG = Instance.new("ScreenGui",PlayerGui)
SG.Name = "EnergyMeter"
local frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.1,0)
frame.Position = UDim2.new(0.6,0,0.05,0)
frame.BackgroundColor3 = BrickColor.new("Bright blue").Color
local Energytext = Instance.new("TextLabel",frame)
Energytext.Size = UDim2.new(1,0,0.35,0)
Energytext.BackgroundTransparency = 1
Energytext.Text = "Energy"
Energytext.FontSize = "Size18"
Energytext.TextColor3 = BrickColor.new("White").Color
local backing = Instance.new("ImageLabel",frame)
backing.Size = UDim2.new(0.8,0,0.45,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.45,0)
backing.BackgroundColor3 = BrickColor.new("Black").Color
local img = Instance.new("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = BrickColor.new("Bright blue").Color
local percent = Instance.new("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("White").Color
percent.Text = Energy.."/".. MaxEnergy
percent.FontSize = "Size18"
repeat
wait()
pcall(function()
img.Size = UDim2.new(1*(Energy/MaxEnergy),0,1,0)
percent.Text = Energy.."/".. MaxEnergy
end)
until SG.Parent == nil
end))


--Character.Humanoid.FreeFalling:connect(onFreeFall)
Character:MoveTo(Head.Position+Vector3.new(0,5,0))
Character.Torso.CFrame = Character.Torso.CFrame + Vector3.new(0,5,0)
swordholder:MoveTo(Head.Position+Vector3.new(0,5,0))
ride()
noarms()
-- mediafire