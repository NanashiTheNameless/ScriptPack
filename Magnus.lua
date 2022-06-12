--[[                                              
Script shared by eletronix                                              ]]

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
ModelName = "Weapon"
attack = false
attacktype = 1
Hitdeb = 0
Neck = Torso.Neck
local neckcf0 = Neck.C0

----------------------------
--Customize
Mana = 999999999
MaxMana = 100
mindamage = 10000
maxdamage = 100000
crtmaxdamage = 999999
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
--if (string.match(Player.Unlocks.Value,"Magnus Crit Plus") ~= nil) then
crtrate = 9999999
--else
--crtrate = 100/5
--end
--100%/critpercentage

oblkbrkr = 0
blockbreaker = oblkbrkr
--if (string.match(Player.Unlocks.Value,"Mana Charge +") ~= nil) then
manaregen = 30
--else
--manaregen = 1
--end
handlecolor = BrickColor.new("Brown")
bcolor = BrickColor.new("Bright violet")
gemcolor = BrickColor.new("Mid gray")

ToolName = "Magnus"

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




local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(1,1,1)
local msh2 = Instance.new("CylinderMesh")
msh2.Scale = Vector3.new(1,1,1)
local msh3 = Instance.new("BlockMesh")
msh3.Scale = Vector3.new(1,1,1)
local msh3a = Instance.new("SpecialMesh")
msh3a.Scale = Vector3.new(1,1,1)
msh3a.MeshType = "Wedge"
local msh4 = Instance.new("BlockMesh")
msh4.Scale = Vector3.new(1,1,1)
local msh4a = Instance.new("SpecialMesh")
msh4a.Scale = Vector3.new(1,1,1)
msh4a.MeshType = "Wedge"
local msh5 = Instance.new("BlockMesh")
msh5.Scale = Vector3.new(1,1,1)
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(1,1,1)
msh5a.MeshType = "Wedge"
local msh6 = Instance.new("BlockMesh")
msh6.Scale = Vector3.new(1,1,1)
local msh6a = Instance.new("SpecialMesh")
msh6a.Scale = Vector3.new(1,1,1)
msh6a.MeshType = "Wedge"
local msh7 = Instance.new("SpecialMesh")
msh7.Scale = Vector3.new(1,1,1)
msh7.MeshType = "Sphere"
local msh8 = Instance.new("SpecialMesh")
msh8.Scale = Vector3.new(1,1,1)
msh8.MeshType = "Sphere"
local msh9 = Instance.new("SpecialMesh")
msh9.Scale = Vector3.new(0.45,3,0.45)
msh9.MeshId = "http://www.roblox.com/asset/?id=1051557"
local msh10 = Instance.new("BlockMesh")
msh10.Scale = Vector3.new(1,1,1)
local msh10a = Instance.new("SpecialMesh")
msh10a.Scale = Vector3.new(1,1,1)
msh10a.MeshType = "Wedge"
local msh11 = Instance.new("BlockMesh")
msh11.Scale = Vector3.new(1,1,1)
local msh11a = Instance.new("SpecialMesh")
msh11a.Scale = Vector3.new(1,1,1)
msh11a.MeshType = "Wedge"

local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.3,5,0.3)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "Handle2"
prt2.Locked = true
prt2.Size = Vector3.new(1.4,0.2,1.4)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = handlecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "Handle3"
prt3.Locked = true
prt3.Size = Vector3.new(0.2,0.5,0.2)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = handlecolor
local prt3a = Instance.new("Part")
prt3a.formFactor = 3
prt3a.CanCollide = false
prt3a.Name = "Handle3a"
prt3a.Locked = true
prt3a.Size = Vector3.new(0.2,1,0.2)
prt3a.Parent = swordholder
msh3a.Parent = prt3a
prt3a.BrickColor = handlecolor
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "Handle4"
prt4.Locked = true
prt4.Size = Vector3.new(0.2,0.5,0.2)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.BrickColor = handlecolor
local prt4a = Instance.new("Part")
prt4a.formFactor = 3
prt4a.CanCollide = false
prt4a.Name = "Handle4a"
prt4a.Locked = true
prt4a.Size = Vector3.new(0.2,1,0.2)
prt4a.Parent = swordholder
msh4a.Parent = prt4a
prt4a.BrickColor = handlecolor
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "Handle5"
prt5.Locked = true
prt5.Size = Vector3.new(0.2,0.5,0.2)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = handlecolor
local prt5a = Instance.new("Part")
prt5a.formFactor = 3
prt5a.CanCollide = false
prt5a.Name = "Handle5a"
prt5a.Locked = true
prt5a.Size = Vector3.new(0.2,1,0.2)
prt5a.Parent = swordholder
msh5a.Parent = prt5a
prt5a.BrickColor = handlecolor
local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "Handle6"
prt6.Locked = true
prt6.Size = Vector3.new(0.2,0.5,0.2)
prt6.Parent = swordholder
msh6.Parent = prt6
prt6.BrickColor = handlecolor
local prt6a = Instance.new("Part")
prt6a.formFactor = 3
prt6a.CanCollide = false
prt6a.Name = "Handle6a"
prt6a.Locked = true
prt6a.Size = Vector3.new(0.2,1,0.2)
prt6a.Parent = swordholder
msh6a.Parent = prt6a
prt6a.BrickColor = handlecolor
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "Orb"
prt7.Locked = true
prt7.Size = Vector3.new(0.75,0.75,0.75)
prt7.Transparency = 0.5
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = bcolor
local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "Orb2"
prt8.Locked = true
prt8.Size = Vector3.new(0.75,0.75,0.75)
prt8.Transparency = 0
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = bcolor
coroutine.resume(coroutine.create(function()
wait(0.5)
repeat
for i = 0 , 1 , 0.05 do
wait()
msh8.Scale = Vector3.new(3*i,3*i,3*i)
prt8.Transparency = 1*i
end
wait(0.1)
until prt8.Parent == nil
end))
local prt9 = Instance.new("Part")
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "Design"
prt9.Locked = true
prt9.Size = Vector3.new(0.2,0.2,0.2)
prt9.Transparency = 0
prt9.Parent = swordholder
msh9.Parent = prt9
prt9.BrickColor = gemcolor
local prt10 = Instance.new("Part")
prt10.formFactor = 3
prt10.CanCollide = false
prt10.Name = "Handle10"
prt10.Locked = true
prt10.Size = Vector3.new(0.2,0.5,0.2)
prt10.Parent = swordholder
msh10.Parent = prt10
prt10.BrickColor = handlecolor
local prt10a = Instance.new("Part")
prt10a.formFactor = 3
prt10a.CanCollide = false
prt10a.Name = "Handle10a"
prt10a.Locked = true
prt10a.Size = Vector3.new(0.2,1,0.2)
prt10a.Parent = swordholder
msh10a.Parent = prt10a
prt10a.BrickColor = handlecolor
local prt11 = Instance.new("Part")
prt11.formFactor = 3
prt11.CanCollide = false
prt11.Name = "Handle11"
prt11.Locked = true
prt11.Size = Vector3.new(0.2,0.5,0.2)
prt11.Parent = swordholder
msh11.Parent = prt11
prt11.BrickColor = handlecolor
local prt11a = Instance.new("Part")
prt11a.formFactor = 3
prt11a.CanCollide = false
prt11a.Name = "Handle11a"
prt11a.Locked = true
prt11a.Size = Vector3.new(0.2,1,0.2)
prt11a.Parent = swordholder
msh11a.Parent = prt11a
prt11a.BrickColor = handlecolor


local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.new(0, 2.5,0) * CFrame.Angles(0, 0, 0)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.new(0, -2.65,0.6) * CFrame.Angles(math.rad(180), 0, 0)
local w3a = Instance.new("Weld")
w3a.Parent = prt3a
w3a.Part0 = prt3a
w3a.Part1 = prt3
w3a.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3a.C0 = CFrame.Angles(math.rad(-10), 0, 0) * CFrame.new(0, -0.65,-0.075)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4.C0 = CFrame.new(0, -2.65,0.6) * CFrame.Angles(math.rad(180), math.rad(180), 0)
local w4a = Instance.new("Weld")
w4a.Parent = prt4a
w4a.Part0 = prt4a
w4a.Part1 = prt4
w4a.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4a.C0 = CFrame.Angles(math.rad(-10), 0, 0) * CFrame.new(0, -0.65,-0.075)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.new(0, -2.65,0.6) * CFrame.Angles(math.rad(180), math.rad(90), 0)
local w5a = Instance.new("Weld")
w5a.Parent = prt5a
w5a.Part0 = prt5a
w5a.Part1 = prt5
w5a.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5a.C0 = CFrame.Angles(math.rad(-10), 0, 0) * CFrame.new(0, -0.65,-0.075)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w6.C0 = CFrame.new(0, -2.65,0.6) * CFrame.Angles(math.rad(180), math.rad(-90), 0)
local w6a = Instance.new("Weld")
w6a.Parent = prt6a
w6a.Part0 = prt6a
w6a.Part1 = prt6
w6a.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w6a.C0 = CFrame.Angles(math.rad(-10), 0, 0) * CFrame.new(0, -0.65,-0.075)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt1
w7.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w7.C0 = CFrame.new(0, 3.25,0) * CFrame.Angles(0, 0, 0)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt1
w8.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w8.C0 = CFrame.new(0, 3.25,0) * CFrame.Angles(0, 0, 0)
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = prt1
w9.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w9.C0 = CFrame.new(0, 0.5,0) * CFrame.Angles(0, 0, 0)
local w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt1
w10.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w10.C0 = CFrame.new(0, -2.15,0.6) * CFrame.Angles(math.rad(180), math.rad(-90-45), 0)
local w10a = Instance.new("Weld")
w10a.Parent = prt10a
w10a.Part0 = prt10a
w10a.Part1 = prt10
w10a.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w10a.C0 = CFrame.Angles(math.rad(10+180), 0, 0) * CFrame.new(0, 0.65,-0.075)
local w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = prt1
w11.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w11.C0 = CFrame.new(0, -2.15,0.6) * CFrame.Angles(math.rad(180), math.rad(-270-45), 0)
local w11a = Instance.new("Weld")
w11a.Parent = prt11a
w11a.Part0 = prt11a
w11a.Part1 = prt11
w11a.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w11a.C0 = CFrame.Angles(math.rad(10+180), 0, 0) * CFrame.new(0, 0.65,-0.075)

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
w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(180), math.rad(0)) * CFrame.new(-1.15, 0.5, -0.6)
end

unequipweld()



function equipweld()
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
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
function cs(parent,p) --Magic Charge

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
function ls(parent,p) --Lazer Sound

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
function ts(parent,p)

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12222030"
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
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function bs(parent,p) --Berserk Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2676305"
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



function hideanim()
attack = true
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90+135*i),math.rad(0),math.rad(-65+65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20+20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300), math.rad(180*i), math.rad(0)) * CFrame.new(0, -0.5, -1+2*i)  
end
LWRem()	
unequipweld()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(235-235*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
RWRem()
attack = false
end


function equipanim()
attack = true
RWFunc()
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
equipweld()
LWFunc()
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(90)) * CFrame.new(0, 0, 0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5+0.5*i, -1*i) * CFrame.Angles(math.rad(-20+110*i),math.rad(0),math.rad(-25*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5+0.5*i, -1*i) * CFrame.Angles(math.rad(90*i),math.rad(0),math.rad(25*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90+90*i), math.rad(-110+110*i), math.rad(90-45*i)) * CFrame.new(0, 0, 0)  
w1.C1 = CFrame.new(0,0,0)
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 1, -1) * CFrame.Angles(math.rad(90+45*i),math.rad(0),math.rad(-25-20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 1, -1) * CFrame.Angles(math.rad(90+45*i),math.rad(0),math.rad(25+20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(210*i), math.rad(0), math.rad(45)) * CFrame.new(0, 0, 0)  
w1.C1 = CFrame.new(0,0,0)
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 1-0.5*i, -1+0.5*i) * CFrame.Angles(math.rad(135-45*i),math.rad(0),math.rad(-45-20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 1-0.5*i, -1+1*i) * CFrame.Angles(math.rad(135-135*i),math.rad(0),math.rad(45-65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(210+90*i), math.rad(0), math.rad(45-45*i)) * CFrame.new(0, -0.5*i, -1*i)  
w1.C1 = CFrame.new(0,0,0)
end
attack = false
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
end

function damage(hum,dmg,critornot)
damagesplat(dmg,hum.Torso,critornot)
hum:TakeDamage(dmg)
coroutine.resume(coroutine.create(function()
tagHumanoid(hum,Player)
wait(1)
untagHumanoid(hum)
end))
end

function AddMana(add)
Mana = Mana + add
if Mana > MaxMana then
Mana = MaxMana
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

function OT2(hit) --Bash Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hum.Health <= 0 then return end
local vel = Instance.new("BodyVelocity",hum.Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,2,0) + CFrame.new(Torso.Position,hum.Torso.Position).lookVector * 75
coroutine.resume(coroutine.create(function()
wait(0.1)
vel.Parent=nil
end))
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
con = prt1.Touched:connect(OT)
end

function nrdmgcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt1.Touched:connect(OTNR)
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

function Slash1()
attack = true
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90),math.rad(90*i),math.rad(-65+65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45*i), 0, 0)
LW.C0 = CFrame.new(-1.5+1.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(90*i),math.rad(0),math.rad(-20+90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300-30*i), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5+0.5*i, -1)  
end
prcntdmg(75)
dmgcnnct()
LastPoint = prt1.CFrame * CFrame.new(0,prt1.Size.Y/2,0)
for i = 0 , 1 , 0.4 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45-105*i), 0, 0)
LW.C0 = CFrame.new(-1.25*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(70-80*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270+30*i), math.rad(0), math.rad(0)) * CFrame.new(0,-0.5*i, -1)  
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(0.5-0.5*i, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-60-30*i), 0, 0)
LW.C0 = CFrame.new(-1.25, 0.5, 1*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-10-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300-30*i), math.rad(0), math.rad(0)) * CFrame.new(0,-0.5, -1)  
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
returndmg()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1*i, 0.5, -1+0.5) * CFrame.Angles(math.rad(90),math.rad(90-90*i),math.rad(-65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90+90*i), 0, 0)
LW.C0 = CFrame.new(-1.25-0.25*i, 0.5, 1-1*i) * CFrame.Angles(math.rad(90-90*i),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270+30*i), math.rad(0), math.rad(0)) * CFrame.new(0,-0.5, -1)  
end
attack = false
end

function WindBlast()
if Mana < 15 then return end
Mana = Mana - 15
attack = true
for i = 0 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90-45*i),math.rad(0),math.rad(-65+85*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10*i),0,math.rad(-20*i))
end
cs(Head,1.5)
local meshb3 = Instance.new("SpecialMesh")
meshb3.Scale = Vector3.new(0,0,0)
meshb3.MeshId = "http://www.roblox.com/asset/?id=1051557"
local shellb3 = Instance.new("Part")
meshb3.Parent = shellb3
shellb3.Anchored = true
shellb3.formFactor = 3
shellb3.Size = Vector3.new(1,1,1)
shellb3.CFrame = CFrame.new(Torso.Position)
shellb3.Parent = swordholder
shellb3.Transparency = 1
shellb3.Reflectance = 0.25
shellb3.BrickColor = BrickColor.new("White")
shellb3.CanCollide = false
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45-10*i),math.rad(0),math.rad(20+15*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10),0,math.rad(-20-5*i))
shellb3.Transparency = 1-1*i
meshb3.Scale = Vector3.new(10*i,20,10*i)
shellb3.CFrame = CFrame.new(Torso.Position) * CFrame.Angles(0,90*i,0)
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(35+90*i),math.rad(0),math.rad(35-80*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10-15*i),0,math.rad(-25+25*i))
meshb3.Scale = Vector3.new(10,20,10)
shellb3.CFrame = CFrame.new(Torso.Position) * CFrame.Angles(0,90+90*i,0)
end
ls(Head,1.5)
local meshb = Instance.new("SpecialMesh")
meshb.Scale = Vector3.new(0,0,0)
meshb.MeshType = "Sphere"
local shellb = Instance.new("Part")
meshb.Parent = shellb
shellb.Anchored = true
shellb.formFactor = 3
shellb.Size = Vector3.new(1,1,1)
shellb.CFrame = CFrame.new(Torso.Position-Vector3.new(0,2,0))
shellb.Parent = swordholder
shellb.Transparency = 0
shellb.Reflectance = 0.25
shellb.BrickColor = BrickColor.new("White")
shellb.CanCollide = false

for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(125+10*i),math.rad(0),math.rad(-45-5*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20-5*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5-5*i),0,math.rad(0))
meshb3.Scale = Vector3.new(10,20,10)
shellb3.CFrame = CFrame.new(Torso.Position) * CFrame.Angles(0,180+90*i,0)
shellb3.Transparency = 1*i
meshb.Scale = Vector3.new(10*i,5*i,10*i)
shellb.Transparency = 0.5*i
end
shellb3.Parent = nil
subdmg(10)
--
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local mag = (head.Position - shellb.Position).magnitude;
		if mag <= 20 and c[i].Name ~= Character.Name then
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
local vel = Instance.new("BodyVelocity",hum.Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,2,0) + (CFrame.new(Torso.Position,hum.Torso.Position).lookVector * 100) * Vector3.new(1,0,1)
if c[i]:findFirstChild("Block") ~= nil then 
if c[i].Block.Value then 
subdmg(15)
vel.velocity = Vector3.new(0,2,0) + (CFrame.new(Torso.Position,hum.Torso.Position).lookVector * 50) * Vector3.new(1,0,1)
end 
end
coroutine.resume(coroutine.create(function()
wait(0.1)
vel.Parent=nil
end))
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
end
returndmg()
		table.insert(AoETrue,c[i].Name)
		end
		end
		end
                end
	end
		for ii = 1 , #AoETrue do
		table.remove(AoETrue,#AoETrue)
		end
--
returndmg()
local vel = Instance.new("BodyVelocity")
vel.maxForce = Vector3.new(0,math.huge,0)
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,65,0)
vel.Parent = Torso
coroutine.resume(coroutine.create(function()
wait(0.15)
vel.Parent = nil
end))
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(135),math.rad(0),math.rad(-50+75*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(135*i),math.rad(0),math.rad(-25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10+20*i),0,math.rad(0))
meshb.Scale = Vector3.new(10+20*i,5+20*i,10+20*i)
shellb.Transparency = 0.5+0.5*i
end
shellb.Parent = nil
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(135+25*i),math.rad(0),math.rad(25+10*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(135+25*i),math.rad(0),math.rad(-25-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10),0,math.rad(0))
end
floor = false
repeat
wait(0.05)
hit,pos = rayCast(Torso.Position, (CFrame.new(Torso.Position,Torso.Position - Vector3.new(0,6,0))).lookVector, 3, Character)
if hit ~= nil then
floor = true
end
until floor
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(160-70*i),math.rad(0),math.rad(35-100*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(160-160*i),math.rad(0),math.rad(-35+15*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10-10*i),0,math.rad(0))
end
Neck.C0 = neckcf0
attack = false
end

function FlameWalls()
if Mana < 15 then return end
Mana = Mana - 15
attack = true
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90-45*i),math.rad(0),math.rad(-65+55*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300), math.rad(-20*i), math.rad(0)) * CFrame.new(0, -0.5, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10*i	),0,math.rad(0))
end
cs(Head,1)
local meshb = Instance.new("SpecialMesh")
meshb.Scale = Vector3.new(0,0,0)
meshb.MeshType = "Sphere"
local shellb = Instance.new("Part")
meshb.Parent = shellb
shellb.Anchored = true
shellb.formFactor = 3
shellb.Size = Vector3.new(1,1,1)
shellb.CFrame = CFrame.new(prt7.Position)
shellb.Parent = swordholder
shellb.Transparency = 0
shellb.Reflectance = 0.1
shellb.BrickColor = BrickColor.new("Bright red")
shellb.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
shellb.CFrame = CFrame.new(prt7.Position)
shellb.Transparency = 0.5+0.5*i
meshb.Scale = Vector3.new(7.5-7.5*i,7.5-7.5*i,7.5-7.5*i)
end
shellb.Parent = nil
end))
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(45-20*i),math.rad(0),math.rad(-10+5*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300), math.rad(-20), math.rad(0)) * CFrame.new(0, -0.5, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10+15*i),0,math.rad(0))
end
wait(0.1)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(25+90*i),math.rad(0),math.rad(-5+15*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300), math.rad(-20+20*i), math.rad(0)) * CFrame.new(0, -0.5, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(35-75*i),0,math.rad(-20*i))
end
coroutine.resume(coroutine.create(function()
local trs = Torso.CFrame
local hit,pos = rayCast(Torso.Position, trs.lookVector, 50, Workspace)
for i = 1 , (trs.p-pos).magnitude/4 do
wait() wait() wait()
local meshb = Instance.new("SpecialMesh")
meshb.Scale = Vector3.new(0,0,0)
meshb.MeshType = "Sphere"
local shellb = Instance.new("Part")
meshb.Parent = shellb
shellb.Anchored = true
shellb.formFactor = 3
shellb.Size = Vector3.new(4,15,4)
local pp = trs + trs.lookVector * (i*4)
local ht,ps = rayCast(pp.p, (CFrame.new(pp.p,pp.p - Vector3.new(0,50,0))).lookVector, 50, Character)
shellb.CFrame = CFrame.new(ps) * CFrame.Angles(math.random(-10,10)/10,0,math.random(-10,10)/10)
shellb.Parent = swordholder
shellb.Transparency = 0
shellb.Reflectance = 0.1
shellb.BrickColor = BrickColor.new("Bright red")
shellb.CanCollide = false
local meshb1 = Instance.new("SpecialMesh")
meshb1.Scale = Vector3.new(3,2,3)
meshb1.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shellb1 = Instance.new("Part")
if ht ~= nil then
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(1,1,1)
shellb1.CFrame = CFrame.new(shellb.Position) --* CFrame.new(0,0,0)
shellb1.Parent = swordholder
shellb1.Transparency = 0
shellb1.BrickColor = ht.BrickColor
shellb1.CanCollide = false
end
fs(shellb,0.65+(0.65*math.random()))
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
meshb.Scale = Vector3.new(1,2*i,1)
shellb.Transparency = 1*i
end
shellb.Parent = nil
for i = 0 , 1 , 0.1 do
wait()
shellb1.Transparency = 1*i
end
shellb1.Parent = nil
end))
--
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Torso");
                if head ~= nil then
		local mag = (head.Position - shellb.Position).magnitude;
		if mag <= 7.5 and c[i].Name ~= Character.Name then
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
--
end
end))
wait(0.25)
for i = 0 , 1 , 0.1 do
wait()Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-40+40*i),0,math.rad(-20+20*i))
end
wait(0.5)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(125-35*i),math.rad(0),math.rad(10-75*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5, -1)  
Neck.C0 = neckcf0
end
		for ii = 1 , #AoETrue do
		table.remove(AoETrue,#AoETrue)
		end
Neck.C0 = neckcf0
attack = false
end

function Lightning(mouse)
if Mana < 20 then return end
Mana = Mana - 20
attack = true
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5+0.5*i, -0.5+0.5*i) * CFrame.Angles(math.rad(90+80*i),math.rad(90*i),math.rad(-65+65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300-30*i), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5+0.5*i, -1+1*i)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-50*i),0,0)
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 1, 0) * CFrame.Angles(math.rad(170+10*i),math.rad(90),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270), math.rad(180*i), math.rad(0)) * CFrame.new(0, -0, 0)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-50),0,0)
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 1, -0.5*i) * CFrame.Angles(math.rad(180-45*i),math.rad(90-90*i),math.rad(-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5+0.5*i, -0.5*i) * CFrame.Angles(math.rad(135*i),math.rad(0),math.rad(-20+65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270), math.rad(180+180*i), math.rad(0)) * CFrame.new(0, -0, 0)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-50),0,0)
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 1-0.5*i, -0.5) * CFrame.Angles(math.rad(135-45*i),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 1-0.5*i, -0.5) * CFrame.Angles(math.rad(135-45*i),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270), math.rad(0), math.rad(0)) * CFrame.new(0, -0, -1*i)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-50+60*i),0,0)
end
local meshb1 = Instance.new("SpecialMesh")
meshb1.Scale = Vector3.new(1,0.5,1)
meshb1.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shellb1 = Instance.new("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(1,1,1)
shellb1.CFrame = CFrame.new(prt1.Position) * CFrame.new(0,-2,0)
shellb1.Parent = swordholder
shellb1.Transparency = 1
shellb1.BrickColor = BrickColor.new("Bright yellow")
shellb1.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
shellb1.Transparency = 1-1*i
meshb1.Scale = Vector3.new(1+1*i,0.5-0.25*i,1+1*i)
end
for i = 0 , 1 , 0.1 do
wait()
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(2+1*i,0.25-0.25*i,2+1*i)
end
shellb1.Parent = nil
end)) 
local thunda = false
local yaxis = 20
local inc= 1
local mht = mouse.Hit.p
local pos = mht + Vector3.new(0,5,0)
repeat
if (pos-Torso.Position).magnitude > 350 then 
pos = Torso.Position + Torso.CFrame.lookVector * 20
end
if (pos-Torso.Position).magnitude >= 50 then
pos = pos + CFrame.new(pos,Torso.Position).lookVector*5
end
wait()
until (pos-Torso.Position).magnitude < 50
prcntdmg(50)
for d = 1,3 do
coroutine.resume(coroutine.create(function()
local ht,poss = rayCast(pos, (CFrame.new(pos,pos - Vector3.new(0,50,0))).lookVector, 50, Character)
local LP = CFrame.new(poss.x,poss.y+yaxis,poss.z) * CFrame.new(math.random(-inc,inc),math.random(-inc,inc),math.random(-inc,inc))
local hum = nil
if ht ~= nil then
if ht.Parent:findFirstChild("Humanoid") ~= nil then
hum = ht.Parent.Humanoid
elseif ht.Parent.Parent ~= nil and ht.Parent.Parent:findFirstChild("Humanoid") ~= nil then
hum = ht.Parent.Parent.Humanoid
end
end
if hum ~= nil then
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,ht,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,ht,true)
hum:TakeDamage(rndmdamage)
end
coroutine.resume(coroutine.create(function()
tagHumanoid(hum,Player)
wait(1)
untagHumanoid(hum)
end)) 
end
repeat
wait() wait()
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(2,1,2)
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
effectsg.BrickColor = BrickColor.new("Bright yellow")
effectsg.Reflectance = 0.5
local point1 = CFrame.new(poss.x,poss.y+yaxis,poss.z) * CFrame.new(math.random(-inc,inc),math.random(-inc,inc),math.random(-inc,inc))
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
wait()
effectsg.Parent = nil
end))
LP = point1
until thunda
end))
end
returndmg()
ts(Head,1.5)
for i = 0 , 1 , 0.2 do
wait()
yaxis=20-22*i
inc = 1+1*i
end 
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45-20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90-90*i),math.rad(0),math.rad(45-65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270+30*i), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5*i, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10-10*i),0,0)
end
thunda = true

Neck.C0 = neckcf0
attack = false
end

function returnwelds()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-65))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5, -1)  
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
Neck.C0 = neckcf0
end

function ManaCharge()
attack = true
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-65+20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90*i),math.rad(0),math.rad(-20+65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45)*i, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300-30*i), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5+0.5*i, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-20*i),0,math.rad(-20*i))
end
wait(0.1)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45+45*i), 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45+45*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(270), math.rad(0), math.rad(0)) * CFrame.new(0, 0, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-20+20*i),0,math.rad(-20+20*i))
end
ii = 0
d = false
Character.Humanoid.WalkSpeed = 16
repeat
wait(0.1) 
ii = ii + 10
AddMana(manaregen)
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("SpecialMesh")
meshb1.Scale = Vector3.new(3,2,3)
meshb1.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shellb1 = Instance.new("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(1,1,1)
shellb1.CFrame = CFrame.new(Torso.Position) * CFrame.new(0,-2,0)* CFrame.Angles(0,math.rad(ii),0)
shellb1.Parent = swordholder
shellb1.Transparency = 1
shellb1.BrickColor = BrickColor.new("Bright violet")
shellb1.CanCollide = false
for i = 0 , 1 , 0.05 do
wait()
shellb1.Transparency = 1-1*i
meshb1.Scale = Vector3.new(3+1*i,2-0.5*i,3+1*i)
end
for i = 0 , 1 , 0.05 do
wait()
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(4+1*i,1.5-1.5*i,4+1*i)
end
shellb1.Parent = nil
end))
coroutine.resume(coroutine.create(function()
if not d then
local meshb = Instance.new("SpecialMesh")
meshb.Scale = Vector3.new(0,0,0)
meshb.MeshId = "http://www.roblox.com/Asset/?id=9756362"
local shellb = Instance.new("Part")
meshb.Parent = shellb
shellb.Anchored = true
shellb.formFactor = 3
shellb.Size = Vector3.new(1,1,1)
shellb.CFrame = CFrame.new(Torso.Position) * CFrame.new(math.random(-5,5),math.random(-2,5),math.random(-5,5))
shellb.Parent = swordholder
shellb.Reflectance = 0.2
shellb.Transparency = 1
if math.random(1,2) == 1 then
shellb.BrickColor = BrickColor.new("Bright violet")
else
shellb.BrickColor = BrickColor.new("White")
end
shellb.CanCollide = false
d = true
coroutine.resume(coroutine.create(function()
wait(0.1)
d = false
end))
for i = 0 ,1 , 0.1 do
wait()
meshb.Scale = Vector3.new(0.5*i,1*i,0.5*i)
shellb.Transparency = 1-1*i
end
for i = 0 ,1 , 0.1 do
wait()
meshb.Scale = Vector3.new(0.5+0.5*i,1+1*i,0.5+0.5*i)
shellb.Transparency = 1*i
end
shellb.Parent = nil
end
end))
until not buttonhold or Mana >= MaxMana
Character.Humanoid.WalkSpeed = 30
buttonhold = false
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45-20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90-90*i),math.rad(0),math.rad(45-65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
w1.C0 = CFrame.Angles(math.rad(270+30*i), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5*i, -1)  
Neck.C0 = neckcf0 
end
Neck.C0 = neckcf0
attack = false
end
function ob1d(mouse) 
hold = true 
if attack then return end
Slash1()
end 

function ob1u(mouse)  
end 

buttonhold = false

function key(key,mouse)
if attack then return end
if key == "q" then
WindBlast()
end
if key == "e" then
FlameWalls()
end
if key == "f" then
buttonhold = true
ManaCharge()
end
if key == "r" then
Lightning(mouse)
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

mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(ke) key(ke,mouse) end) 
mouse.KeyUp:connect(key2) 
equipanim()
ev.Value = true
end 

function ds(mouse) 
repeat wait() until not attack
repeat wait() until ev.Value

hideanim()
wait(0.1)
ev.Value = false
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 



if PlayerGui:findFirstChild("ManaMeter") ~= nil then
PlayerGui:findFirstChild("ManaMeter").Parent = nil
end


coroutine.resume(coroutine.create(function()
local SG = Instance.new("ScreenGui",PlayerGui)
SG.Name = "ManaMeter"
local frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.1,0)
frame.Position = UDim2.new(0.5-0.1,0,0.05,0)
frame.BackgroundColor3 = BrickColor.new("Bright violet").Color
local Manatext = Instance.new("TextLabel",frame)
Manatext.Size = UDim2.new(1,0,0.35,0)
Manatext.BackgroundTransparency = 1
Manatext.Text = "Mana"
Manatext.FontSize = "Size18"
Manatext.TextColor3 = BrickColor.new("White").Color
local backing = Instance.new("ImageLabel",frame)
backing.Size = UDim2.new(0.8,0,0.45,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.45,0)
backing.BackgroundColor3 = BrickColor.new("Black").Color
local img = Instance.new("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = BrickColor.new("Bright violet").Color
local percent = Instance.new("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("White").Color
percent.Text = math.floor((Mana/MaxMana)*100).."%"
percent.FontSize = "Size18"
repeat
wait()
pcall(function()
img.Size = UDim2.new(1*(Mana/MaxMana),0,1,0)
percent.Text = math.floor((Mana/MaxMana)*100).."%"
if math.floor((Mana/MaxMana)*100) > 99 then

end
end)
until SG.Parent == nil
end))

--mediafire