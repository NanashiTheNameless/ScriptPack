--[[                                              
Deci MiniBoss                                             ]]

ModelName = "The Red Reaper"
attack = false
attacktype = 1
Hitdeb = 0
Hitdeb2 = 0
name = "luxulux"
----------------------------
--Customize mediafire
attacktype = 1 
damage = 15
oridamage = 10 
HP = 3000
WS = 16
jump = 50
combo = 0
anim = "none" 
demondance = false 
demonmode = false 
skill = false 
mode = 0 
guardy = false 
unsheathed = false 
cutscene = false 
cutscene2 = 0 
--100%/critpercentage
bladecolor = BrickColor.new("Really red") 
oblkbrkr = 3
blockbreaker = oblkbrkr

lightning = true

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
Head.BrickColor = BrickColor.new("Pastel brown") 
local smh = Instance.new("SpecialMesh",Head)
smh.Scale = Vector3.new(1.25,1.25,1.25)
local Torso = Instance.new("Part")
Torso.formFactor = 3
Torso.CanCollide = true
Torso.Name = "Torso"
Torso.Locked = true
Torso.Size = Vector3.new(2,2,1)
Torso.Parent = bodyholder
Torso.BrickColor = BrickColor.new("Pastel brown")
Torso.Reflectance = 0.1
Torso.CFrame = CFrame.new(SpawnPos.Value)
local RightArm = Instance.new("Part")
RightArm.formFactor = 3
RightArm.CanCollide = true
RightArm.Name = "Right Arm" 
RightArm.Locked = true
RightArm.Size = Vector3.new(1,2,1)
RightArm.Parent = bodyholder
RightArm.BrickColor = BrickColor.new("Pastel brown")
local LeftArm = Instance.new("Part")
LeftArm.formFactor = 3
LeftArm.CanCollide = true
LeftArm.Name = "Left Arm"
LeftArm.Locked = true
LeftArm.Size = Vector3.new(1,2,1)
LeftArm.Parent = bodyholder
LeftArm.BrickColor = BrickColor.new("Pastel brown")
local RightLeg = Instance.new("Part")
RightLeg.formFactor = 3
RightLeg.CanCollide = true
RightLeg.Name = "Right Leg"
RightLeg.Locked = true
RightLeg.Size = Vector3.new(1,2,1)
RightLeg.Parent = bodyholder
RightLeg.BrickColor = BrickColor.new("Really black")
local LeftLeg = Instance.new("Part")
LeftLeg.formFactor = 3
LeftLeg.CanCollide = true
LeftLeg.Name = "Left Leg"
LeftLeg.Locked = true
LeftLeg.Size = Vector3.new(1,2,1)
LeftLeg.Parent = bodyholder
LeftLeg.BrickColor = BrickColor.new("Really black") 

local hair = Instance.new("Part")
hair.BrickColor = BrickColor.new("Really black")
hair.formFactor = "Symmetric"
hair.CanCollide = false
hair.Locked = true
hair.Size = Vector3.new(1, 1, 1)
hair.Parent = bodyholder
local hm = Instance.new("SpecialMesh")
hm.Parent = hair
hm.MeshType = "FileMesh"
hm.MeshId = "http://www.roblox.com/asset/?id=62246019"
--hm.TextureId = "http://www.roblox.com/asset/?id=77354289"
hm.Scale = Vector3.new(1, 1, 1)
local wh = Instance.new("Weld") 
wh.Parent = hair 
wh.Part0 = hair
wh.Part1 = Head
wh.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0.1, -.18,-0.2)
wh.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

Faic = Instance.new("Decal")
Faic.Texture = "http://www.roblox.com/asset/?id=110287983"
Faic.Face = "Front"
Faic.Parent = Head

Shirt = Instance.new("Shirt")
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=133071856"
Shirt.Parent = bodyholder

Pants = Instance.new("Pants")
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=133071899"
Pants.Parent = bodyholder

 
--[[local LAmsh = Instance.new("CharacterMesh")
LAmsh.MeshId = "74655890"
LAmsh.OverlayTextureId = "74655866"
LAmsh.BodyPart = "LeftArm"
LAmsh.Parent = bodyholder

local LLmsh = Instance.new("CharacterMesh")
LLmsh.MeshId = "74655900"
LLmsh.OverlayTextureId = "74655866"
LLmsh.BodyPart = "LeftLeg"
LLmsh.Parent = bodyholder

local RAmsh = Instance.new("CharacterMesh")
RAmsh.MeshId = "74655908"
RAmsh.OverlayTextureId = "74655866"
RAmsh.BodyPart = "RightArm"
RAmsh.Parent = bodyholder

local RLmsh = Instance.new("CharacterMesh")
RLmsh.MeshId = "74655914"
RLmsh.OverlayTextureId = "74655866"
RLmsh.BodyPart = "RightLeg"
RLmsh.Parent = bodyholder

local Tmsh = Instance.new("CharacterMesh")
Tmsh.MeshId = "74655930"
Tmsh.OverlayTextureId = "74655866"
Tmsh.BodyPart = "Torso"
Tmsh.Parent = bodyholder]]--
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
prt1.BrickColor = BrickColor.new("Really red") 
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt1a = Instance.new("Part") 
prt1a.formFactor = 1 
prt1a.Parent = swordholder 
prt1a.CanCollide = false 
prt1a.BrickColor = BrickColor.new("Really red") 
prt1a.Name = "Handle1a" 
prt1a.Size = Vector3.new(1,1,1) 
prt1a.Position = Torso.Position 
local prt1b = Instance.new("Part") 
prt1b.formFactor = 1 
prt1b.Parent = swordholder 
prt1b.CanCollide = false 
prt1b.BrickColor = BrickColor.new("Really red") 
prt1b.Name = "Handle1b" 
prt1b.Size = Vector3.new(1,1,1) 
prt1b.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = swordholder 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really black") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,3,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = swordholder 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Really black") 
prt3.Name = "Handle3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = swordholder 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Really red") 
prt4.Name = "Handle4" 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = swordholder 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Really red") 
prt5.Name = "Handle5" 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = swordholder 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Really black") 
prt6.Name = "Handle6" 
prt6.Size = Vector3.new(1,1,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = swordholder 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Really red") 
prt7.Name = "Handle7" 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = swordholder 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Really red") 
prt8.Name = "Handle8" 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = swordholder 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("Really red") 
prt9.Name = "Handle9" 
prt9.Size = Vector3.new(1,1,1) 
prt9.Position = Torso.Position 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = swordholder 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("Really red") 
prt10.Name = "Handle10" 
prt10.Size = Vector3.new(1,1,1) 
prt10.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = swordholder 
prt11.CanCollide = false 
prt11.Reflectance = 0.5
prt11.BrickColor = bladecolor
prt11.Name = "Blade1" 
prt11.Size = Vector3.new(2,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = swordholder 
prt12.CanCollide = false 
prt12.Reflectance = 0.5
prt12.BrickColor = bladecolor
prt12.Name = "Blade2" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = swordholder 
prt13.CanCollide = false 
prt13.Reflectance = 0
prt13.BrickColor = BrickColor.new("Really black")
prt13.Name = "Blade3" 
prt13.Size = Vector3.new(1,2,1) 
prt13.Position = Torso.Position 

local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.31,0.1,0.31) 
local msh1a = Instance.new("CylinderMesh") 
msh1a.Parent = prt1a 
msh1a.Scale = Vector3.new(0.31,0.1,0.31) 
local msh1b = Instance.new("CylinderMesh") 
msh1b.Parent = prt1b 
msh1b.Scale = Vector3.new(0.31,0.1,0.31) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.3,0.4,0.3) 
local msh3 = Instance.new("SpecialMesh") 
msh3.Parent = prt3 
msh3.MeshId = "http://www.roblox.com/asset/?id=3270017" 
msh3.Scale = Vector3.new(0.6,0.6,0.6) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.2, 0.4, 0.2) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.2, 0.4, 0.2) 
local msh6 = Instance.new("BlockMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.3,0.9,0.3) 
local msh7 = Instance.new("BlockMesh") 
msh7.Parent = prt7 
msh7.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh8 = Instance.new("BlockMesh") 
msh8.Parent = prt8 
msh8.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh9 = Instance.new("BlockMesh") 
msh9.Parent = prt9 
msh9.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh10 = Instance.new("BlockMesh") 
msh10.Parent = prt10 
msh10.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh11 = Instance.new("BlockMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(1, 0.6, 0.2) 
local msh12 = Instance.new("SpecialMesh") 
msh12.Parent = prt12 
msh12.MeshType = "Wedge" 
msh12.Scale = Vector3.new(0.2,0.4,0.5) 
local msh13 = Instance.new("CylinderMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(2,0.8,0.3) 

local w1 = Instance.new("Weld") 
w1.Parent = prt1 
w1.Part0 = prt1 
w1.Part1 = Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.55, -0.75) 
local w2 = Instance.new("Weld") 
w2.Parent = prt2 
w2.Part0 = prt2 
w2.Part1 = prt1
w2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w1a = Instance.new("Weld") 
w1a.Parent = prt1a 
w1a.Part0 = prt1a 
w1a.Part1 = prt2 
w1a.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3, 0) 
local w1b = Instance.new("Weld") 
w1b.Parent = prt1b 
w1b.Part0 = prt1b 
w1b.Part1 = prt2 
w1b.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3, 0) 
local w3 = Instance.new("Weld") 
w3.Parent = prt3 
w3.Part0 = prt3 
w3.Part1 = prt2 
w3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.9,0) 
local w4 = Instance.new("Weld") 
w4.Parent = prt4 
w4.Part0 = prt4 
w4.Part1 = prt3 
w4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local w5 = Instance.new("Weld") 
w5.Parent = prt5 
w5.Part0 = prt5 
w5.Part1 = prt3 
w5.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local w6 = Instance.new("Weld") 
w6.Parent = prt6 
w6.Part0 = prt6 
w6.Part1 = prt2 
w6.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0.7,0) 
local w7 = Instance.new("Weld") 
w7.Parent = prt7 
w7.Part0 = prt7 
w7.Part1 = prt6 
w7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local w8 = Instance.new("Weld") 
w8.Parent = prt8 
w8.Part0 = prt8 
w8.Part1 = prt7 
w8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local w9 = Instance.new("Weld") 
w9.Parent = prt9 
w9.Part0 = prt9 
w9.Part1 = prt6 
w9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local w10 = Instance.new("Weld") 
w10.Parent = prt10 
w10.Part0 = prt10 
w10.Part1 = prt9 
w10.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local w11 = Instance.new("Weld") 
w11.Parent = prt11 
w11.Part0 = prt11 
w11.Part1 = prt6 
w11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1.1,0,0) 
local w12 = Instance.new("Weld") 
w12.Parent = prt12 
w12.Part0 = prt12 
w12.Part1 = prt11 
w12.C0 = CFrame.fromEulerAnglesXYZ(3.95,math.rad(90),0) * CFrame.new(-1,0,0) 
local w13 = Instance.new("Weld") 
w13.Parent = prt13 
w13.Part0 = prt13 
w13.Part1 = prt11 
w13.C0 = CFrame.fromEulerAnglesXYZ(4.7,math.rad(90),0) * CFrame.new(0,0,0) 
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
w1.Part1 = LeftArm 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-3.5+3.5,0,-1+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)  
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
    if blocked then pa.BrickColor = BrickColor.new("Really black") end
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

function AddRage(add)
Rage = Rage + add
if Rage > MaxRage then
Rage = MaxRage
end
end

function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 
end 
function skillOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 2) 
end 

end 

function weakOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(2) 
end 

end 

function guardOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
Character.Humanoid.WalkSpeed = 16 
guardy = false 

end 

end 

function spinOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 5) 
if mana < 400 then 
mana = mana + math.random(1,5)  
end 
if mana > 400 then 
mana = 400 
end 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prt1.Position).magnitude<=25 then
local angle = (torso.Position-(prt1.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end
end 

end 

function overOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=4000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(60000,60000,60000)*600000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*70+Vector3.new(0,210,0)
bodyVelocity.P=700
bodyVelocity.maxForce=Vector3.new(7e+003, 7e+003, 7e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end
end 
end 

function OT2(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end
end 
end 
function megatouch(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 2) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end
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
con,con2,con3 = nil,nil,nil
conn,conn2,conn3 = nil,nil,nil

function dmg1cnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt11.Touched:connect(OT)
con2 = prt12.Touched:connect(OT)
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
con = prt11.Touched:connect(OT2)
con2 = prt12.Touched:connect(OT2)
end

function dmg2dc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
if con2 ~= nil then
con2:disconnect()
Hitdeb = 0
end
end
function dmgovercnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt11.Touched:connect(overOT)
con2 = prt12.Touched:connect(overOT)
end

function dmgoverdc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
if con2 ~= nil then
con2:disconnect()
Hitdeb = 0
end
end
function dmgskillcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt11.Touched:connect(skillOT)
con2 = prt12.Touched:connect(skillOT)
end

function dmgskilldc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
if con2 ~= nil then
con2:disconnect()
Hitdeb = 0
end
end
function dmgweakcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt11.Touched:connect(weakOT)
con2 = prt12.Touched:connect(weakOT)
end

function dmgweakdc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
if con2 ~= nil then
con2:disconnect()
Hitdeb = 0
end
end
function dmgmegacnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt11.Touched:connect(megatouch)
con2 = prt12.Touched:connect(megatouch)
end

function dmgmegadc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
if con2 ~= nil then
con2:disconnect()
Hitdeb = 0
end
end
--
function effect() 
local clone = prt11:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.5 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
clone.BrickColor = BrickColor.new("Bright red") 
else 
clone.BrickColor = BrickColor.new("Really red") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
local cloneb = prt12:clone() 
cloneb.Parent = workspace 
cloneb.Anchored = true 
cloneb.Transparency = 0.5 
cloneb.Reflectance = 0 
cloneb.Mesh.Scale = cloneb.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
cloneb.BrickColor = BrickColor.new("Bright red") 
else 
cloneb.BrickColor = BrickColor.new("Really red") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
cloneb.Parent = nil 
end)) 
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

function returnwelds()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end

function oneslash() 
attack = true 
wait(0)
dmg1cnnct()
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmg1dc()
combo = 1
attack = false 
end 

function twoslash() 
attack = true 
wait(0.1)
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0.5*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
end 
dmg1cnnct()
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-4*i+3,1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1*i,0) 
end 
dmg1dc()
combo = 2
attack = false 
end 

function threeslash() 
attack = true 
wait(0.2)
dmg1cnnct()
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+1,0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), math.rad(180)*i, -1.57) * CFrame.new(0, 1, 0) 
end 
dmg1dc()
combo = 3
attack = false 
end 

function fourslash() 
attack = true 
wait(0.2) 
dmg1cnnct()
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4.5*i+2,0,0) 
end 
dmg1dc()
combo = 4
attack = false 
end 

function fiveslash() 
attack = true 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wait(0.2) 
dmg2cnnct()
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4*i+3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmg2dc()
combo = 0
attack = false 
end

function ubersmash() 
attack = true 
skill = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.12 do 
wait(0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, 0) * CFrame.new(0, 1, 0) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(360)*i, 0) 
end 
wait(0.5) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) 
dmgovercnnct()
--[[coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,6,0.1 do 
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - p.Position;
		local mag = targ.magnitude;
		if mag <= 6 and hum.Parent.Name ~= "Fenrier" then
		coroutine.resume(coroutine.create(function() 
		for i = 0,3 do 
		wait() 
	        hum.Health = hum.Health - 0.2 
		local msh1 = Instance.new("BlockMesh") 
		msh1.Scale = Vector3.new(0.2,0.8,0.2) 
		S=Instance.new("Part")
		S.Name="Effect"
		S.formFactor="Symmetric"
		S.Size=Vector3.new(1,2,1)
		S.BrickColor=BrickColor.new("Really red")
		S.Reflectance = 0.5
		S.TopSurface=0
		S.BottomSurface=0
		S.Transparency=0
		S.Anchored=true
		S.CanCollide=false
		S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		S.Parent=workspace 
		msh1.Parent = S 
		coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
		end 
		end)) 
		end
                end
	end
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.2,0.8,0.2) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor="Symmetric"
	S.Size=Vector3.new(1,2,1)
	S.BrickColor=BrickColor.new("Really red")
	S.Reflectance = 0.5
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=modelzorz
	msh1.Parent = S 
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end))]] 
lightningattack() 
for i = 0,1,0.25 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4.5*i+math.rad(180),0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmgoverdc()
skill = false 
attack = false  
end 

function spin() 
attack = true 
skill = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,-math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmgskillcnnct() 
local vel = Instance.new("BodyGyro") 
vel.Parent = Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
weaklightningattack() 
for i = 0 , 1 , 0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,-math.rad(-360)*i,0) 
effect() 
end 
weaklightningattack() 
for i = 1 , 0 , -0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,-math.rad(-360)+math.rad(-360)*i*i,0) 
effect() 
end 
dmgskilldc() 
for i = 0 , 1 , 0.20 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
vel:Remove() 
attack = false 
skill = false 
end 

function attacklol() 
attack = true 
skill = true 
wait(0)
dmgweakcnnct() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-4.5*i+3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.12 do 
wait(0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, 0) * CFrame.new(0, 1, 0) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(360)*i, 0) 
end 
wait(0.4) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.2 do 
wait(0.4) 
uberweaklightningattack() 
end 
end))
for i = 0 , 5 , 0.07 do 
wait(0)  
effect() 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), math.rad(720)*i, -1.57) * CFrame.new(0, 1, 0) 
end 
dmgweakdc() 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wait(0.5) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
skill = false 
end

function slashy() 
attack = true 
skill = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i,math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i,0,0) 
end 
uberlightningattack() 
dmgmegacnnct()
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-3,0,0) 
end 
dmgmegadc() 
wait(0.5) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i-math.rad(90),-math.rad(90)*i+math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.01*i+3-3,0,0) 
end 
attack = false 
skill = false 
end 

function ubercharge() 
attack = true 
skill = true 
dmgmegacnnct()
local vel = Instance.new("BodyVelocity")
vel.Parent = Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Character.Torso.CFrame.lookVector * 250
lightningattack() 
for i = 0,1,0.1 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i,0,0) 
end 
vel:Remove() 
lightningattack() 
wait(0.5) 
Character.Torso.CFrame = Character.Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(180),0) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Character.Torso.CFrame.lookVector * 250
lightningattack() 
for i = 0,1,0.1 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-3,0,0) 
end 
vel:Remove() 
lightningattack() 
wait(0.3) 
dmgmegadc() 
skill = false 
attack = false 
end 

function throw() 
attack = true 
skill = true 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end  
for i = 0,1,0.3 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.9*i+math.rad(180),0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
dmg2cnnct()
Character.Humanoid.WalkSpeed = 0 
for i = 0,1,0.2 do 
wait() 
effect() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 1*i-math.rad(90), 1.57) * CFrame.new(0, 9*i+1, 0) 
end 
wait(0.4) 
w1.Parent = nil 
prt13.Anchored = true 
local vel = Instance.new("BodyVelocity")
vel.Parent = Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Character.Torso.CFrame.lookVector * 16
dmg2dc() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), -math.rad(90)+1, 1.57) * CFrame.new(0, 9+1, 0) 
coroutine.resume(coroutine.create(function() 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.7*i+1.9,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
wait(0.7) 
vel:Remove() 
w1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
prt13.Anchored = false 
w1.Parent = prt1 
Character.Humanoid.WalkSpeed = WS
attack = false 
skill = false 
end 
function Attackk(mag)
if attack then return end
if Character.Humanoid.Health <= Character.Humanoid.MaxHealth/2 and lightning == false then
	lightningmode() 
	end
if mag <= 6 then
local rndm = math.random(1,5) 
if rndm == 1 then
coroutine.resume(coroutine.create(function()
if combo == 0 then
oneslash()
elseif combo == 1 then
twoslash() 
elseif combo == 2 then
threeslash() 
elseif combo == 3 then
fourslash() 
elseif combo == 4 then
fiveslash()
end
end))
elseif rndm == 2 and combo == 0 then
coroutine.resume(coroutine.create(function()
ubersmash()
end))
elseif rndm == 3 and combo == 0 then
coroutine.resume(coroutine.create(function()
spin()
end))
elseif rndm == 4 and combo == 0 then
coroutine.resume(coroutine.create(function()
attacklol()  
end))
elseif rndm == 5 and combo == 0 then
coroutine.resume(coroutine.create(function()
slashy()  
end))
end
elseif mag > 10 then 
local rndm = math.random(1,20) 
if rndm >= 10 then
coroutine.resume(coroutine.create(function()
--throw()
end))
elseif mag > 30 then 
local rndm = math.random(1,20) 
if rndm == 1 then
coroutine.resume(coroutine.create(function()
ubercharge()
end))
end
end
end
end
function lightningmode() 
if lightning == true then 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,0) 
end 
lightning = false 
wait(0.7) 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,0) 
end 
else
attack = true 
skill = true 
damage = 6 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
coroutine.resume(coroutine.create(function() 
lightning = true 
while lightning == true do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.2,0.8,0.2) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor="Symmetric"
	S.Size=Vector3.new(1,2,1)
	S.BrickColor=BrickColor.new("Really red")
	S.Reflectance = 0.5
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=prt13.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1),math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=swordholder
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
lightning = false 
end)) 
wait(1) 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,-1*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
skill = false 
end 
end 
function uberweaklightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,1,0.1 do 
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - p.Position;
		local mag = targ.magnitude;
		if mag <= 6 and hum.Parent.Name ~= Character.Name then
		coroutine.resume(coroutine.create(function() 
		for i = 0,2 do 
		wait() 
	        hum.Health = hum.Health - 0.05 
		local msh1 = Instance.new("BlockMesh") 
		msh1.Scale = Vector3.new(0.2,0.8,0.2) 
		S=Instance.new("Part")
		S.Name="Effect"
		S.formFactor="Symmetric"
		S.Size=Vector3.new(1,2,1)
		S.BrickColor=BrickColor.new("Really red")
		S.Reflectance = 0.5
		S.TopSurface=0
		S.BottomSurface=0
		S.Transparency=0
		S.Anchored=true
		S.CanCollide=false
		S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		S.Parent=workspace 
		msh1.Parent = S 
		coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
		end 
		end)) 
		end
                end
	end
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.2,0.8,0.2) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor="Symmetric"
	S.Size=Vector3.new(1,2,1)
	S.BrickColor=BrickColor.new("Really red")
	S.Reflectance = 0.5
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=modelzorz
	msh1.Parent = S 
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
end 
function weaklightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,3,0.1 do 
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - p.Position;
		local mag = targ.magnitude;
		if mag <= 6 and hum.Parent.Name ~= Character.Name then
		coroutine.resume(coroutine.create(function() 
		for i = 0,3 do 
		wait() 
	        hum.Health = hum.Health - 0.05 
		local msh1 = Instance.new("BlockMesh") 
		msh1.Scale = Vector3.new(0.2,0.8,0.2) 
		S=Instance.new("Part")
		S.Name="Effect"
		S.formFactor="Symmetric"
		S.Size=Vector3.new(1,2,1)
		S.BrickColor=BrickColor.new("Really red")
		S.Reflectance = 0.5
		S.TopSurface=0
		S.BottomSurface=0
		S.Transparency=0
		S.Anchored=true
		S.CanCollide=false
		S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		S.Parent=workspace 
		msh1.Parent = S 
		coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
		end 
		end)) 
		end
                end
	end
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.2,0.8,0.2) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor="Symmetric"
	S.Size=Vector3.new(1,2,1)
	S.BrickColor=BrickColor.new("Really red")
	S.Reflectance = 0.5
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=modelzorz
	msh1.Parent = S 
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
end 
function lightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,6,0.1 do 
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - p.Position;
		local mag = targ.magnitude;
		if mag <= 6 and hum.Parent.Name ~= Character.Name then
		coroutine.resume(coroutine.create(function() 
		for i = 0,3 do 
		wait() 
	        hum.Health = hum.Health - 0.1 
		local msh1 = Instance.new("BlockMesh") 
		msh1.Scale = Vector3.new(0.2,0.8,0.2) 
		S=Instance.new("Part")
		S.Name="Effect"
		S.formFactor="Symmetric"
		S.Size=Vector3.new(1,2,1)
		S.BrickColor=BrickColor.new("Really red")
		S.Reflectance = 0.5
		S.TopSurface=0
		S.BottomSurface=0
		S.Transparency=0
		S.Anchored=true
		S.CanCollide=false
		S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		S.Parent=workspace 
		msh1.Parent = S 
		coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
		end 
		end)) 
		end
                end
	end
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.2,0.8,0.2) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor="Symmetric"
	S.Size=Vector3.new(1,2,1)
	S.BrickColor=BrickColor.new("Really red")
	S.Reflectance = 0.5
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=modelzorz
	msh1.Parent = S 
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
end
function uberlightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,12,0.1 do 
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - p.Position;
		local mag = targ.magnitude;
		if mag <= 7 and hum.Parent.Name ~= Character.Name then
		coroutine.resume(coroutine.create(function() 
		for i = 0,3 do 
		wait() 
	        hum.Health = hum.Health - 0.1 
		local msh1 = Instance.new("BlockMesh") 
		msh1.Scale = Vector3.new(0.2,0.8,0.2) 
		S=Instance.new("Part")
		S.Name="Effect"
		S.formFactor="Symmetric"
		S.Size=Vector3.new(1,2,1)
		S.BrickColor=BrickColor.new("Really red")
		S.Reflectance = 0.5
		S.TopSurface=0
		S.BottomSurface=0
		S.Transparency=0
		S.Anchored=true
		S.CanCollide=false
		S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		S.Parent=workspace 
		msh1.Parent = S 
		coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
		end 
		end)) 
		end
                end
	end
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.2,0.8,0.2) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor="Symmetric"
	S.Size=Vector3.new(1,2,1)
	S.BrickColor=BrickColor.new("Really red")
	S.Reflectance = 0.5
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=modelzorz
	msh1.Parent = S 
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
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
