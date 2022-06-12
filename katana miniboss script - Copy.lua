--[[                                              
Ninja MiniBoss                                             ]]

ModelName = "Ninja"
attack = false
attacktype = 1
Hitdeb = 0
Hitdeb2 = 0
name = "luxulux"
----------------------------
--Customize mediafire
Rage = 0 
Rage = 200
mindamage = 10
maxdamage = 20
crtmaxdamage = 40
combo = 0
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
crtrate = 100/5
HP = 500
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
Head.Size = Vector3.new(2,1,1)
Head.Parent = bodyholder
Head.BrickColor = BrickColor.new("Bright yellow") 
local smh = Instance.new("SpecialMesh",Head)
smh.Scale = Vector3.new(1.25,1.25,1.25)
local Torso = Instance.new("Part")
Torso.formFactor = 3
Torso.CanCollide = true
Torso.Name = "Torso"
Torso.Locked = true
Torso.Size = Vector3.new(2,2,1)
Torso.Parent = bodyholder
Torso.BrickColor = BrickColor.new("Black")
Torso.Reflectance = 0.1
Torso.CFrame = CFrame.new(SpawnPos.Value)
local RightArm = Instance.new("Part")
RightArm.formFactor = 3
RightArm.CanCollide = true
RightArm.Name = "Right Arm" 
RightArm.Locked = true
RightArm.Size = Vector3.new(1,2,1)
RightArm.Parent = bodyholder
RightArm.BrickColor = BrickColor.new("Black")
local LeftArm = Instance.new("Part")
LeftArm.formFactor = 3
LeftArm.CanCollide = true
LeftArm.Name = "Left Arm"
LeftArm.Locked = true
LeftArm.Size = Vector3.new(1,2,1)
LeftArm.Parent = bodyholder
LeftArm.BrickColor = BrickColor.new("Black")
local RightLeg = Instance.new("Part")
RightLeg.formFactor = 3
RightLeg.CanCollide = true
RightLeg.Name = "Right Leg"
RightLeg.Locked = true
RightLeg.Size = Vector3.new(1,2,1)
RightLeg.Parent = bodyholder
RightLeg.BrickColor = BrickColor.new("Black")
local LeftLeg = Instance.new("Part")
LeftLeg.formFactor = 3
LeftLeg.CanCollide = true
LeftLeg.Name = "Left Leg"
LeftLeg.Locked = true
LeftLeg.Size = Vector3.new(1,2,1)
LeftLeg.Parent = bodyholder
LeftLeg.BrickColor = BrickColor.new("Black") 

local hair = Instance.new("Part")
hair.formFactor = "Plate"
hair.CanCollide = false
hair.Locked = true
hair.Size = Vector3.new(1,0.8,1)
hair.Parent = bodyholder
local hm = Instance.new("SpecialMesh")
hm.Parent = hair
hm.MeshType = "FileMesh"
hm.MeshId = "http://www.roblox.com/asset/?id=1286427"
hm.TextureId = "http://www.roblox.com/asset/?id=1309894"
hm.Scale = Vector3.new(1.1, 1.1, 1.1)
local wh = Instance.new("Weld") 
wh.Parent = hair 
wh.Part0 = hair
wh.Part1 = Head
wh.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0, 0)
wh.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  

local shirt = Instance.new("Shirt")
shirt.Parent = bodyholder
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=14707726"
local pants = Instance.new("Pants")
pants.Parent = bodyholder
pants.PantsTemplate = "http://www.roblox.com/asset/?id=14707085"
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
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	RW.Parent = bodyholder
	--
	LW.Part0 = Character.Torso
	LW.Part1 = Character["Left Arm"]
	LW.C0 = CFrame.new(-1.5, 0.5, 0) 
	LW.C1 = CFrame.new(0, 0.5, 0)
	LW.Parent = bodyholder
	--
	RWL.Part0 = Character.Torso
	RWL.Part1 = Character["Right Leg"]
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
	RWL.C1 = CFrame.new(0.5, 1, 0)
	RWL.Parent = bodyholder
	--
	LWL.Part0 = Character.Torso
	LWL.Part1 = Character["Left Leg"]
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
	LWL.C1 = CFrame.new(-0.5, 1, 0)
	LWL.Parent = bodyholder
	--
	Neck.Part0 = Character.Torso
	Neck.Part1 = Character.Head
	Neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
	Neck.C1 = CFrame.new(0, -0.5, 0) 
	Neck.Parent = bodyholder

----

--

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

local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = swordholder 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Pastel Blue") 
prt1.Name = "Handle" 
prt1.Transparency = 0 
prt1.Size = Vector3.new(1,1,1) 
prt1.CFrame = Torso.CFrame 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = swordholder 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really black") 
prt2.Name = "Handle2" 
prt2.Transparency = 0 
prt2.Size = Vector3.new(1,1,1) 
prt2.CFrame = Torso.CFrame 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = swordholder 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Dark grey") 
prt3.Name = "Handle3" 
prt3.Transparency = 0 
prt3.Size = Vector3.new(1,1,1) 
prt3.CFrame = Torso.CFrame 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = swordholder 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Grey") 
prt4.Name = "Blade1" 
prt4.Reflectance = 0.4 
prt4.Transparency = 0 
prt4.Size = Vector3.new(1,3,1) 
prt4.CFrame = Torso.CFrame 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = swordholder 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Really black") 
prt5.Name = "Blade2" 
prt5.Transparency = 0 
prt5.Size = Vector3.new(1,1,1) 
prt5.CFrame = Torso.CFrame 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = swordholder 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Grey") 
prt6.Name = "Blade3" 
prt6.Reflectance = 0.5 
prt6.Transparency = 0 
prt6.Size = Vector3.new(1,1,1) 
prt6.CFrame = Torso.CFrame 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = swordholder 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Pastel Blue") 
prt7.Name = "Handle3" 
prt7.Transparency = 0 
prt7.Size = Vector3.new(1,1,1) 
prt7.CFrame = Torso.CFrame 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = swordholder 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Really black") 
prt8.Name = "Handle4" 
prt8.Transparency = 0 
prt8.Size = Vector3.new(1,1,1) 
prt8.CFrame = Torso.CFrame 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = swordholder 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("Really black") 
prt9.Name = "Handle5" 
prt9.Transparency = 0 
prt9.Size = Vector3.new(1,1,1) 
prt9.CFrame = Torso.CFrame 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = swordholder 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("Pastel Blue") 
prt10.Name = "Handle6" 
prt10.Transparency = 0 
prt10.Size = Vector3.new(1,1,1) 
prt10.CFrame = Torso.CFrame 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = swordholder 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Pastel Blue") 
prt11.Name = "Handle7" 
prt11.Transparency = 0 
prt11.Size = Vector3.new(1,1,1) 
prt11.CFrame = Torso.CFrame 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = swordholder 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Dark grey") 
prt12.Name = "Handle8" 
prt12.Transparency = 0 
prt12.Size = Vector3.new(1,1,1) 
prt12.CFrame = Torso.CFrame 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = swordholder 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Grey") 
prt13.Name = "Blade4" 
prt13.Reflectance = 0.4 
prt13.Transparency = 0 
prt13.Size = Vector3.new(1,1,1) 
prt13.CFrame = Torso.CFrame 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Parent = swordholder 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Grey") 
prt14.Name = "Blade5" 
prt14.Reflectance = 0.4 
prt14.Transparency = 0 
prt14.Size = Vector3.new(1,1,1) 
prt14.CFrame = Torso.CFrame 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Parent = swordholder 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Grey") 
prt15.Name = "Blade6" 
prt15.Reflectance = 0.4 
prt15.Transparency = 0 
prt15.Size = Vector3.new(1,1,1) 
prt15.CFrame = Torso.CFrame 
local prt16 = Instance.new("Part") 
prt16.formFactor = 1 
prt16.Parent = swordholder 
prt16.CanCollide = false 
prt16.BrickColor = BrickColor.new("Grey") 
prt16.Name = "Blade7" 
prt16.Reflectance = 0.4 
prt16.Transparency = 0 
prt16.Size = Vector3.new(1,1,1) 
prt16.CFrame = Torso.CFrame 
swordholder:BreakJoints() 

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

local w1 = Instance.new("Weld") 
w1.Parent = prt1 
w1.Part0 = prt1 
w1.Part1 = RightArm 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w2 = Instance.new("Weld") 
w2.Parent = prt2
w2.Part0 = prt2 
w2.Part1 = prt1 
w2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.66,0) 
w2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w3 = Instance.new("Weld") 
w3.Parent = prt3
w3.Part0 = prt3 
w3.Part1 = prt1 
w3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.78,0) 
w3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w4 = Instance.new("Weld") 
w4.Parent = prt4
w4.Part0 = prt4 
w4.Part1 = prt3 
w4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.35,0) 
w4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w5 = Instance.new("Weld") 
w5.Parent = prt5
w5.Part0 = prt5 
w5.Part1 = prt3 
w5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.77,0) 
w5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w6 = Instance.new("Weld") 
w6.Parent = prt6
w6.Part0 = prt6 
w6.Part1 = prt4 
w6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.61,0) 
w6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w7 = Instance.new("Weld") 
w7.Parent = prt7
w7.Part0 = prt7 
w7.Part1 = LeftArm 
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
w7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w8 = Instance.new("Weld") 
w8.Parent = prt8
w8.Part0 = prt8 
w8.Part1 = prt7 
w8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.12,0) 
w8.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w9 = Instance.new("Weld") 
w9.Parent = prt9
w9.Part0 = prt9 
w9.Part1 = prt7 
w9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.12,0) 
w9.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w10 = Instance.new("Weld") 
w10.Parent = prt10
w10.Part0 = prt10 
w10.Part1 = prt7 
w10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.24,0) 
w10.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w11 = Instance.new("Weld") 
w11.Parent = prt11
w11.Part0 = prt11 
w11.Part1 = prt7 
w11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.24,0) 
w11.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w12 = Instance.new("Weld") 
w12.Parent = prt12
w12.Part0 = prt12 
w12.Part1 = prt7 
w12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.4,0) 
w12.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w13 = Instance.new("Weld") 
w13.Parent = prt13
w13.Part0 = prt13 
w13.Part1 = prt12 
w13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.42,0) 
w13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w14 = Instance.new("Weld") 
w14.Parent = prt14
w14.Part0 = prt14 
w14.Part1 = prt13 
w14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.35,0.1) 
w14.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w15 = Instance.new("Weld") 
w15.Parent = prt15
w15.Part0 = prt15 
w15.Part1 = prt14 
w15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.24,-0.1) 
w15.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w16 = Instance.new("Weld") 
w16.Parent = prt16
w16.Part0 = prt16 
w16.Part1 = prt15 
w16.C0 = CFrame.fromEulerAnglesXYZ(3.14,0,0) * CFrame.new(0,0.48,0) 
w16.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 




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
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, math.rad(0))
	RWL.C1 = CFrame.new(0.5, 1, 0)
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, math.rad(0))
	LWL.C1 = CFrame.new(-0.5, 1, 0)
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
con = prt4.Touched:connect(OT)
con2 = prt5.Touched:connect(OT)
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
end

function dmg2cnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
conn = prt14.Touched:connect(OT2)
conn2 = prt15.Touched:connect(OT2)
conn3 = prt16.Touched:connect(OT2)
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
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45*i), 0, math.rad(0))
	RWL.C1 = CFrame.new(0.5, 1, 0)
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-45*i), 0, math.rad(0))
	LWL.C1 = CFrame.new(-0.5, 1, 0)
end
repeat
for i = 0.1 , 1 , 0.1 do
if jumping then return end
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45-90*i), 0, math.rad(0))
	RWL.C1 = CFrame.new(0.5, 1, 0)
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-45+90*i), 0, math.rad(0))
	LWL.C1 = CFrame.new(-0.5, 1, 0)
end
for i = 0.1 , 1 , 0.1 do
if jumping then return end
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-45+90*i), 0, math.rad(0))
	RWL.C1 = CFrame.new(0.5, 1, 0)
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(45-90*i), 0, math.rad(0))
	LWL.C1 = CFrame.new(-0.5, 1, 0)
end
until not walking or jumping
for i = 0.1 , 1 , 0.1 do
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45-45*i), 0, math.rad(0))
	RWL.C1 = CFrame.new(0.5, 1, 0)
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-45+45*i), 0, math.rad(0))
	LWL.C1 = CFrame.new(-0.5, 1, 0)
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
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20+200*i), 0, math.rad(0))
	RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
	LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20+200*i), 0, math.rad(0))
	LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10*i), 0, math.rad(0))
	RWL.C1 = CFrame.new(0.5, 1, 0)
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-10*i), 0, math.rad(0))
	LWL.C1 = CFrame.new(-0.5, 1, 0)
end
wait(1)
for i = 0.1 , 1 , 0.1 do
wait()
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(180-200*i), 0, math.rad(0))
	RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
	LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(180-200*i), 0, math.rad(0))
	LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10+10*i), 0, math.rad(0))
	RWL.C1 = CFrame.new(0.5, 1, 0)
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-10+10*i), 0, math.rad(0))
	LWL.C1 = CFrame.new(-0.5, 1, 0)
end
jumping = false
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
dmg1cnnct() 
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2-1*i,0,1-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
end 
dmg1dc()
attack = false 
combo = 1
end 

function twohit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-1+1.5*i,0,1-2+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1-1*i,0) 
end 
dmg1cnnct() 
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-1+1.5-2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmg1dc()
attack = false 
combo = 2
end 

function threehit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5+0.4*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1.07*i,0,-1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57*i,0) 
end 
dmg1cnnct()  
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5+0.4-0.4*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1.07,0,-1.57+3.14*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57,0) 
end 
dmg1dc() 
attack = false 
combo = 3
end 

function fourhit() 
attack = true 
dmg1cnnct()
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90),0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-1.57+1.57*i,0) 
end 
wait(0.1) 
dmg1dc()
attack = false 
combo = 4
end 

function fivehit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,-0.5+1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.07*i,0,0.37-0.37*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmg2cnnct()
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90)+math.rad(90)-math.rad(90),0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,0,1-2.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
dmg2dc()
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
attack = false 
combo = 0
end 

function WindCharge() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmg1cnnct() 
lightning = true 
coroutine.resume(coroutine.create(function()
Stun2(prt4,10,25,10) 
--Stun2(prt4,10,25,10) 
end)) 
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-1.43*i,0,1-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait() 
local vel = Instance.new("BodyVelocity")
vel.Parent = Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Character.Head.CFrame.lookVector * 100 
wait(0.5) 
vel.Parent = nil 
lightning = false 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
dmg1dc()  
attack = false 
end 

function Stab() 
attack = true  
dmg1cnnct()
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.2*i,0,-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
dmg1dc() 
for i = 0,1,0.2 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)-math.rad(90)*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.2+0.2*i,0,-0.2+0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 

function WindKatanaWheelSpin()  
attack = true 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90)*i,math.rad(90)*i,0) * CFrame.new(0,1,0) 
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(90)*i,math.rad(90)*i,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
lightning = true 
coroutine.resume(coroutine.create(function()
Stun2(prt6,1,1,1) 
end)) 
dmg1cnnct()
dmg2cnnct()
cf = Head.CFrame 
gairo.Parent = Head
gairo.cframe = Head.CFrame * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) 
for i = 0,1,0.03 do 
wait()  
gairo.cframe = gairo.cframe * CFrame.fromEulerAnglesXYZ(0,0.8,0)
end 
gairo.cframe = cf 
dmg1dc() 
dmg2dc() 
lightning = false 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+math.rad(90),math.rad(90),0) * CFrame.new(0,1,0) 
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(90),math.rad(90),0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57+0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wait(3) 
gairo.Parent = nil 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
end 

function SlashShockwave() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.57*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
local slash = Instance.new("Part") 
slash.Parent = swordholder 
slash.Position = Torso.Position 
slash.Anchored = true 
slash.Transparency = 0.2 
slash.CanCollide = false 
slash.Size = Vector3.new(1,1,1) 
slash.BrickColor = BrickColor.new("White") 
slash.CFrame = Torso.CFrame * CFrame.new(1.5,-3,-4) 
local testbrick = Instance.new("Part") 
testbrick.Parent = swordholder
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(1.5,0,-4) 
coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - testbrick.Position
local mag = targ.magnitude
if mag <= 3 and c[i].Name ~= Character.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-20
coroutine.resume(coroutine.create(function() 
wait(0.5) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:Remove() 
end)) 
end),head,fb)
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
local slash = Instance.new("Part") 
slash.Parent = swordholder 
slash.Position = Torso.Position 
slash.Anchored = true 
slash.Transparency = 0.2 
slash.CanCollide = false 
slash.Size = Vector3.new(1,1,1) 
slash.BrickColor = BrickColor.new("White") 
slash.CFrame = Torso.CFrame * CFrame.new(1+math.random(),-3,CF)  
local testbrick = Instance.new("Part") 
testbrick.Parent = swordholder 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(1+math.random(),0,CF) 
coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - testbrick.Position
local mag = targ.magnitude
if mag <= 3 and c[i].Name ~= Character.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-20
coroutine.resume(coroutine.create(function() 
wait(0.5) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:Remove() 
end)) 
end),head,fb)
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
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function returnwelds()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end

Stun2=function(Feh,x,y,z)
coroutine.resume(coroutine.create(function(part)
--[[		if part.Parent:FindFirstChild("Torso")==nil then
			return
		end]]
		Torsoh2=part
		End2=Torsoh2.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
		ST2=Torsoh2.Position
--[[		p=Instance.new("BodyPosition")
		p.P=3000
		p.D=100
		p.maxForce=Vector3.new(math.huge,0,math.huge)
		p.position=Torsoh2.Position
		p.Parent=Torsoh2]]
		while part.Parent ~= nil and lightning == true do 
--			f1:Play()
--			p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
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
			e.BrickColor=BrickColor.new("White")
			e.Parent=part.Parent
			coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
			wait()
		end
		wait(.25)
--		p.Parent=nil
end),Feh) 
end

function Attackk(mag)
if attack then return end
if mag <= 6 then
local rndm = math.random(1,2) 
if rndm == 1 then
coroutine.resume(coroutine.create(function()
if combo == 0 then
onehit()
elseif combo == 1 then
twohit() 
elseif combo == 2 then
threehit() 
elseif combo == 3 then
fourhit() 
elseif combo == 4 then
fivehit()
end
end))
elseif rndm == 2 and combo == 0 then
coroutine.resume(coroutine.create(function()
Stab()
end))
end
elseif mag > 10 then 
local rndm = math.random(1,3) 
if rndm == 1 then
coroutine.resume(coroutine.create(function()
WindKatanaWheelSpin()
end))
elseif rndm == 2 then
coroutine.resume(coroutine.create(function()
WindCharge() 
end))
elseif rndm == 3 then
coroutine.resume(coroutine.create(function()
SlashShockwave() 
end))
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
if mag <= 40 then
Attackk(mag)
end
--
pcall(function()
Humanoid:MoveTo(Target.Torso.Position + CFrame.new(Torso.Position,Target.Torso.Position).lookVector * -1,Target.Torso)
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
