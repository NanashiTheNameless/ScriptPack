--[[                                              
Guardian MiniBoss                                             ]]

ModelName = "Guardian"
attack = false
attacktype = 1
Hitdeb = 0
Hitdeb2 = 0
name = "demier3"
----------------------------
--Customize mediafire
Rage = 0 
Rage = 200
mindamage = 5
maxdamage = 15
crtmaxdamage = 20
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
combo = 0
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
bonusdmg = 20
crtrate = 100/5
HP = 1000
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
hair.formFactor = "Custom"
hair.CanCollide = false
hair.Locked = true
hair.Size = Vector3.new(1.42,1.55,1.59)
hair.Parent = bodyholder
local hm = Instance.new("SpecialMesh")
hm.Parent = hair
hm.MeshType = "FileMesh"
hm.MeshId = "http://www.roblox.com/asset/?id=101742035"
hm.TextureId = "http://www.roblox.com/asset/?id=101740615"
hm.Scale = Vector3.new(2, 2, 2)
local wh = Instance.new("Weld") 
wh.Parent = hair 
wh.Part0 = hair
wh.Part1 = Head
wh.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, -0.25, -0.115)
wh.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  

local LAmsh = Instance.new("CharacterMesh")
LAmsh.MeshId = "101731090"
LAmsh.OverlayTextureId = "101727937"
LAmsh.BodyPart = "LeftArm"
LAmsh.Parent = bodyholder

local LLmsh = Instance.new("CharacterMesh")
LLmsh.MeshId = "101730942"
LLmsh.OverlayTextureId = "101727937"
LLmsh.BodyPart = "LeftLeg"
LLmsh.Parent = bodyholder

local RAmsh = Instance.new("CharacterMesh")
RAmsh.MeshId = "101730738"
RAmsh.OverlayTextureId = "101727937"
RAmsh.BodyPart = "RightArm"
RAmsh.Parent = bodyholder

local RLmsh = Instance.new("CharacterMesh")
RLmsh.MeshId = "101730623"
RLmsh.OverlayTextureId = "101727937"
RLmsh.BodyPart = "RightLeg"
RLmsh.Parent = bodyholder

local Tmsh = Instance.new("CharacterMesh")
Tmsh.MeshId = "101737660"
Tmsh.OverlayTextureId = "101727937"
Tmsh.BodyPart = "Torso"
Tmsh.Parent = bodyholder

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

handlecolor = BrickColor.new("Pastel light blue")
bcolor = BrickColor.new("Pastel Blue")
gemcolor = BrickColor.new("Bright blue")

swordholder = Instance.new("Model")
swordholder.Name = "Weapon"
swordholder.Parent = bodyholder

local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(1,1,1)
local msh2 = Instance.new("CylinderMesh")
msh2.Scale = Vector3.new(1.1,1,1.1)
local msh3 = Instance.new("CylinderMesh")
msh3.Scale = Vector3.new(0.5,1.075,0.5)
local msh4 = Instance.new("SpecialMesh")
msh4.Scale = Vector3.new(0.35,0.85,0.35)
msh4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
local msh5 = Instance.new("SpecialMesh")
msh5.Scale = Vector3.new(0.35,0.85,0.35)
msh5.MeshId = "http://www.roblox.com/Asset/?id=9756362"
local msh6 = Instance.new("SpecialMesh")
msh6.Scale = Vector3.new(0.35,1.5,0.35)
msh6.MeshId = "http://www.roblox.com/asset/?id=1051557"
local msh7 = Instance.new("SpecialMesh")
msh7.Scale = Vector3.new(0.35,1.5,0.35)
msh7.MeshId = "http://www.roblox.com/asset/?id=1051557"
local msh8 = Instance.new("SpecialMesh")
msh8.Scale = Vector3.new(0.2,0.3,0.2)
msh8.MeshId = "http://www.roblox.com/asset/?id=20329976"
local msh9 = Instance.new("SpecialMesh")
msh9.Scale = Vector3.new(0.2,0.3,0.2)
msh9.MeshId = "http://www.roblox.com/asset/?id=20329976"
local msh10 = Instance.new("CylinderMesh")
msh10.Scale = Vector3.new(1,0.1,1)
local msh11 = Instance.new("CylinderMesh")
msh11.Scale = Vector3.new(1,0.1,1)

local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.2,6.5,0.2)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "Handle2"
prt2.Locked = true
prt2.Size = Vector3.new(0.2,1,0.2)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = bcolor
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "HandleDesign1"
prt3.Locked = true
prt3.Size = Vector3.new(0.2,0.2,0.2)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = handlecolor
local prt3a = prt3:clone()
prt3a.Parent = swordholder
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "Tip1"
prt4.Locked = true
prt4.Size = Vector3.new(0.2,msh4.Scale.Y,0.2)
prt4.Parent = swordholder
prt4.Reflectance = 0.25
msh4.Parent = prt4
prt4.BrickColor = handlecolor
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "Tip2"
prt5.Locked = true
prt5.Size = Vector3.new(0.2,msh5.Scale.Y,0.2)
prt5.Parent = swordholder
prt5.Reflectance = 0.25
msh5.Parent = prt5
prt5.BrickColor = handlecolor
local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "TipDesign1"
prt6.Locked = true
prt6.Size = Vector3.new(0.2,0.2,0.2)
prt6.Parent = swordholder
prt6.Transparency = 0.2
msh6.Parent = prt6
prt6.BrickColor = bcolor
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "TipDesign2"
prt7.Locked = true
prt7.Size = Vector3.new(0.2,0.2,0.2)
prt7.Parent = swordholder
prt7.Transparency = 0.2
msh7.Parent = prt7
prt7.BrickColor = bcolor
local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "TipDesign3"
prt8.Locked = true
prt8.Size = Vector3.new(0.2,0.2,0.2)
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = gemcolor
local prt9 = Instance.new("Part")
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "TipDesign4"
prt9.Locked = true
prt9.Size = Vector3.new(0.2,0.2,0.2)
prt9.Parent = swordholder
msh9.Parent = prt9
prt9.BrickColor = gemcolor
local prt10 = Instance.new("Part")
prt10.formFactor = 3
prt10.CanCollide = false
prt10.Name = "TipDesign5"
prt10.Locked = true
prt10.Size = Vector3.new(0.3,0.2,0.3)
prt10.Parent = swordholder
msh10.Parent = prt10
prt10.BrickColor = gemcolor
local prt11 = Instance.new("Part")
prt11.formFactor = 3
prt11.CanCollide = false
prt11.Name = "TipDesign6"
prt11.Locked = true
prt11.Size = Vector3.new(0.3,0.2,0.3)
prt11.Parent = swordholder
msh11.Parent = prt11
prt11.BrickColor = gemcolor


local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.new(0, 0,0) * CFrame.Angles(math.rad(90), 0, 0)
local w3a = Instance.new("Weld")
w3a.Parent = prt3a
w3a.Part0 = prt3a
w3a.Part1 = prt1
w3a.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3a.C0 = CFrame.new(0, 0,0) * CFrame.Angles(math.rad(90), math.rad(90), 0)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4.C0 = CFrame.new(0, 3.25,0) * CFrame.Angles(0, 0, 0)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.new(0, -3.25,0) * CFrame.Angles(0, 0, 0)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w6.C0 = CFrame.new(0, 2.3 ,0) * CFrame.Angles(0, 0, 0)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt1
w7.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w7.C0 = CFrame.new(0, 2.3 ,0) * CFrame.Angles(math.rad(180), 0, 0)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt1
w8.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w8.C0 = CFrame.new(0, 2.8 ,0) * CFrame.Angles(0, 0, 0)
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = prt1
w9.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w9.C0 = CFrame.new(0, 2.8 ,0) * CFrame.Angles(math.rad(180), 0, 0)
local w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt1
w10.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w10.C0 = CFrame.new(0, 2.95 ,0) * CFrame.Angles(0, 0, 0)
local w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = prt1
w11.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w11.C0 = CFrame.new(0, -2.95 ,0) * CFrame.Angles(0, 0, 0)

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

local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 



function equipanim()
attack = true
for i = 0.1 , 1 , 0.1 do
wait()
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.Angles(math.rad(-90+45), math.rad(0), math.rad(90-90))
RW.C0 = CFrame.new(1.5-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(180-90), 0, math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5, 0.5, -0.5) * CFrame.Angles(math.rad(45), 0, math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
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
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage) + bonusdmg
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage) + bonusdmg
damage(hum,rndmdamage,true)
end
Hitdeb = 1
end
end

function OT2(hit) --Flip Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage) + bonusdmg
damage(hum,rndmdamage,false)
hit.Parent.Torso.CFrame = hit.Parent.Torso.CFrame * CFrame.Angles(-0.5*math.random(),0,0)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage) + bonusdmg
damage(hum,rndmdamage,true)
hit.Parent.Torso.CFrame = hit.Parent.Torso.CFrame * CFrame.Angles(-0.5*math.random(),0,0)
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

function dmgcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt1.Touched:connect(OT)
end

function dmgdc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
end

function dmgflipcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt1.Touched:connect(OT2)
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

function prcntdmg(sub)
mindamage = math.floor(omindamage - (omindamage*(sub/100)))
maxdamage = math.floor(omaxdamage - (omaxdamage*(sub/100)))
crtmaxdamage = math.floor(ocrtmaxdamage - (ocrtmaxdamage*(sub/100)))
end

function returndmg()
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end

function Jump()
if jumping then return end
jumping = true
attack=true
local vel = Instance.new("BodyVelocity")
vel.maxForce = Vector3.new(0,math.huge,0)
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,80,0)
vel.Parent = Torso
wait(0.1)
vel.Parent = nil
local floor = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.05)
hit,pos = rayCast(Torso.Position, (CFrame.new(Torso.Position,Torso.Position - Vector3.new(0,6,0))).lookVector, 6, Character)
if hit ~= nil then
floor = true
end
until floor
end))
local spinval = 0
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
if floor then return end
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90-45*i), 0, math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.rad(45), 0, math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.new(0,-1*i,0) * CFrame.Angles(math.rad(-45-90*i), 0, math.rad(-45*i)) 
end
end))
repeat 
wait(0.05)
spinval = spinval + 0.1
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(5.1,5,5.1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = Torso.CFrame * CFrame.Angles(0,spinval,0) + Vector3.new(0,-2.5,0) 
shell.Parent = swordholder
shell.Transparency = 1
shell.BrickColor = handlecolor
shell.CanCollide = false
local mesh2 = Instance.new("SpecialMesh")
mesh2.Scale = Vector3.new(8,8,8)
mesh2.MeshId = "http://www.roblox.com/asset/?id=1051557"
local shell2 = Instance.new("Part")
mesh2.Parent = shell2
shell2.Anchored = true
shell2.formFactor = 3
shell2.Size = Vector3.new(0.2,0.2,0.2)
shell2.CFrame = Torso.CFrame * CFrame.Angles(0,spinval,0) + Vector3.new(0,-2.5,0) 
shell2.Parent = swordholder
shell2.Transparency = 1
shell2.BrickColor = bcolor
shell2.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
shell2.Transparency = 1-1*i
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
shell2.Transparency = 1*i
end
shell.Parent = nil
shell2.Parent = nil
end))
until floor
local ps = Instance.new("BodyPosition")
ps.Parent = Torso
ps.position = Torso.Position
ps.maxForce = Vector3.new(1,1,1) * math.huge
ps.P = ps.P * 2
coroutine.resume(coroutine.create(function() wait(0.05) ps.Parent = nil end))
for rep = 1,3 do
end
local meshb = Instance.new("SpecialMesh")
meshb.Scale = Vector3.new(0,0,0)
meshb.MeshId = "http://www.roblox.com/asset/?id=1038653"
local shellb = Instance.new("Part")
meshb.Parent = shellb
shellb.Anchored = true
shellb.formFactor = 3
shellb.Size = Vector3.new(1,1,1)
shellb.CFrame = CFrame.new(Torso.Position)
shellb.Parent = swordholder
shellb.Transparency = 1
shellb.Reflectance = 0.25
shellb.BrickColor = bcolor
shellb.CanCollide = false
local meshb2 = Instance.new("SpecialMesh")
meshb2.Scale = Vector3.new(0,0,0)
meshb2.MeshType = "Sphere"
local shellb2 = Instance.new("Part")
meshb2.Parent = shellb2
shellb2.Anchored = true
shellb2.formFactor = 3
shellb2.Size = Vector3.new(1,1,1)
shellb2.CFrame = CFrame.new(Torso.Position)
shellb2.Parent = swordholder
shellb2.Transparency = 1
shellb2.Reflectance = 0.25
shellb2.BrickColor = bcolor
shellb2.CanCollide = false
local meshb3 = Instance.new("SpecialMesh")
meshb3.Scale = Vector3.new(0,0,0)
meshb3.MeshId = "http://www.roblox.com/asset/?id=1051557"
local shellb3 = Instance.new("Part")
meshb3.Parent = shellb3
shellb3.Anchored = true
shellb3.formFactor = 3
shellb3.Size = Vector3.new(1,1,1)
shellb3.CFrame = CFrame.new(Torso.Position+Vector3.new(0,10,0)) * CFrame.Angles(math.rad(180),0,0)
shellb3.Parent = swordholder
shellb3.Transparency = 1
shellb3.Reflectance = 0.25
shellb3.BrickColor = bcolor
shellb3.CanCollide = false
coroutine.resume(coroutine.create(function()
local spinv = 0
for i = 0 ,1,0.05 do
wait()
spinv = spinv+0.5
shellb.Transparency = 1-1*i
meshb.Scale = Vector3.new(25*i,25*i,25*i)
shellb2.Transparency = 1-1*i
meshb2.Scale = Vector3.new(50*i,5*i,50*i)
shellb3.Transparency = 1-1*i
meshb3.Scale = Vector3.new(40*i,40,40*i)
shellb3.CFrame = shellb3.CFrame * CFrame.Angles(0,spinval,0)
end
prcntdmg(-50)
AoE(Torso.Position,25) 
for i = 0 ,1,0.05 do
wait()
spinv = spinv+0.5
shellb.Transparency = 1*i
meshb.Scale = Vector3.new(25+25*i,25+25*i,25+25*i)
shellb2.Transparency = 1*i
meshb2.Scale = Vector3.new(50+25*i,5-5*i,50+25*i)
shellb3.Transparency = 1*i
meshb3.Scale = Vector3.new(40+40*i,40,40+40*i)
shellb3.CFrame = shellb3.CFrame * CFrame.Angles(0,spinval,0)
end
AoE(Torso.Position,35) 
returndmg()
shellb3.Parent = nil
shellb2.Parent = nil
shellb.Parent = nil
end))
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(45+45*i), 0, math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.rad(45), 0, math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.new(0,-1+1*i,0) * CFrame.Angles(math.rad(-135+90*i), 0, math.rad(-45+45*i)) 
end
jumping = false
attack=false
end



function returnwelds()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.rad(45), 0, math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
end

function Combo1()
attack = true
LastPoint = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
dmgcnnct()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90+90*i),math.rad(-45*i), math.rad(-45+90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1+1*i, 0.5, -0.5-0.5*i) * CFrame.Angles(math.rad(45+90*i), 0, math.rad(45+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45-270*i), math.rad(0), math.rad(0))
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
Hitdeb=0
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-0.8*i, 0.5, -1*i) * CFrame.Angles(math.rad(180-145*i),math.rad(-45), math.rad(45-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1*i, 0.5, -1+0.5*i) * CFrame.Angles(math.rad(135-45*i), 0, math.rad(90-80*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-315), math.rad(0), math.rad(0))
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
atktype(1,2)
attack = false
combo = 1
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(0.7-0.2*i, 0.5, -1) * CFrame.Angles(math.rad(35-20*i),math.rad(-45), math.rad(-45-20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(10))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-315), math.rad(0), math.rad(0))
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(0.5+0.5*i, 0.5, -1+0.5*i) * CFrame.Angles(math.rad(15+75*i),math.rad(-45+45*i), math.rad(-65+20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.rad(90-45*i), 0, math.rad(10+35*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-315-90*i), math.rad(0), math.rad(0))
end
end

function Combo2()
attack = true
for i = 0 , 1 ,0.1 do	
wait()
RW.C0 = CFrame.new(0.7, 0.5, -1) * CFrame.Angles(math.rad(35+55*i),math.rad(-45+135*i), math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-60*i), 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90), 0, math.rad(10))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-315-90*i), math.rad(0), math.rad(0))
end
dmgflipcnnct()
LastPoint = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
for i = 0 , 1 ,0.2 do	
wait()
RW.C0 = CFrame.new(0.7-0.8*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(90), math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-60+195*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(90), 0, math.rad(10+80*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
local TorsCF = Torso.CFrame
local bg = Instance.new("BodyGyro")
bg.Parent = Torso
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.P = 100000
bg.cframe = TorsCF
dmgflipcnnct()
for i = 0 , 1 ,0.15 do	
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90),math.rad(90), math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(135-180*i), 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90), 0, math.rad(90-180*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(-90*i),0)
end
LastPoint = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
for i = 0 , 1 ,0.1 do	
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90),math.rad(90), math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45+180*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(-90-270*i),0)
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
bg.Parent = nil
attack = false
combo = 2
atktype(1,3)
for i = 0 , 1 ,0.2 do	
if attack then break end
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(90), math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(135+20*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
end
for i = 0 , 1 ,0.1 do	
if attack then break end
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90),math.rad(90-90*i), math.rad(-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(155-155*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90-45*i), 0, math.rad(-90+135*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
end

end

function Combo3()
attack=true
wait(0.1)
local TorsCF = Torso.CFrame
local bg = Instance.new("BodyGyro",Torso)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.P = 100000
bg.cframe = TorsCF
for i = 0 , 1 ,0.1 do	
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(90-90*i), math.rad(90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(135-90*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(90*i),0)
end
local P1 = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
local hitt = nil
local TorsPos = P1.p
local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge, math.huge,math.huge)
bp.P = 14000
bp.position = TorsPos+Vector3.new(0,5,0)
local connection = prt1.Touched:connect(function(hit)
if hitt ~= nil then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
hitt = hit.Parent.Torso
bp.Parent=hitt
wait(2)
bp.Parent = nil
end
end
end)
subdmg(-10)
dmgflipcnnct()
for i = 0 , 1 ,0.2 do	
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0), math.rad(90))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45-135*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(90),0)
end
returndmg()
dmgdc()
local P2 = CFrame.new(P1.p) * CFrame.new(0,15,0) * CFrame.Angles(math.rad(-10),0,0)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshType = "Sphere"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(1,1,1)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = bcolor
effectsg.Reflectance = 0.25
local point1 = P2
local LP = P1
local mg = (LP.p - point1.p).magnitude
effectsmsh.Scale = Vector3.new(mg/5,mg*2,mg/5)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0) + Vector3.new(0,-mg,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
wait()
effectsg.Parent = nil
end))
connection:disconnect()
for i = 0 , 1 ,0.2 do	
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90),math.rad(0), math.rad(90-135*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90+90*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90-45*i), 0, math.rad(-90+135*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(90-90*i),0)
end
bg.Parent = nil
attack=false
combo = 0
end

function Slash1()
attack = true
local LastPoint = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
local LastPoint2 = prt1.CFrame * CFrame.new(0,prt1.Size.Y/2,0)
for i = 0 , 1 , 0.2 do
wait()
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
local Point2 = prt1.CFrame * CFrame.new(0,prt1.Size.Y/2,0)
effect("White",0.5,LastPoint,Point)
effect("White",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
RW.C0 = CFrame.new(1, 0.5+1*i, -0.5) * CFrame.Angles(math.rad(90+90*i), 0, math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 0.5+1*i, -0.5) * CFrame.Angles(math.rad(45+135*i), 0, math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45-45*i), math.rad(0), math.rad(135*i))
end
local TorsPos = Torso.Position
local bp = Instance.new("BodyPosition",Torso)
bp.maxForce = Vector3.new(0, math.huge,0)
bp.P = 14000
bp.position = TorsPos + Vector3.new(0,2,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(5.1,0.1,5.1)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(1,0.5,1)
shell.CFrame = CFrame.new() + prt1.Position
shell.Parent = swordholder
shell.Transparency = 0.5
shell.BrickColor = BrickColor.new("White")
shell.CanCollide = false
local mesh2 = Instance.new("SpecialMesh")
mesh2.Scale = Vector3.new(5.5,1,5.5)
mesh2.MeshId = "http://www.roblox.com/asset/?id=1051557"
local shell2 = Instance.new("Part")
shell2.Anchored = true
mesh2.Parent = shell2
shell2.formFactor = 3
shell2.Size = Vector3.new(0.2,0.2,0.2)
shell2.CFrame = shell.CFrame * CFrame.Angles(math.rad(180),0,0)
shell2.Parent = swordholder
shell2.Transparency = 0.5
shell2.BrickColor = BrickColor.new("Pastel Blue")
shell2.CanCollide = false

local derp = false

coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
shell.Transparency = 1-0.5*i
shell2.Transparency = 1-0.5*i
end
end))
coroutine.resume(coroutine.create(function()
local ii = 0
local yy = 1
repeat
wait()
ii = ii + 50
yy = yy + 0.25
shell.CFrame = CFrame.Angles(0,math.rad(ii),0) + prt1.Position
shell2.CFrame = shell.CFrame * CFrame.Angles(math.rad(180),0,0)
mesh2.Scale = Vector3.new(5.5,yy,5.5)
until derp
for i = 0 , 1 , 0.1 do
wait()
yy = yy + 0.5
shell.Transparency = 0.5+0.5*i
shell2.Transparency = 0.5+0.5*i
mesh2.Scale = Vector3.new(5.5-2*i,yy,5.5-2*i)
end
shell.Parent = nil
shell2.Parent = nil
end))

dmgcnnct()
prcntdmg(50)
rptddmg(derp,true,0.75)
for rep = 1 , 2 do
for i = 0 , 1 , 0.2 do
wait()
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
local Point2 = prt1.CFrame * CFrame.new(0,prt1.Size.Y/2,0)
effect("White",0.5,LastPoint,Point)
effect("White",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(180*i), math.rad(135))
end
for i = 0 , 1 , 0.2 do
wait()
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
local Point2 = prt1.CFrame * CFrame.new(0,prt1.Size.Y/2,0)
effect("White",0.5,LastPoint,Point)
effect("White",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(180+180*i), math.rad(135))
end
end
returndmg()
dmgdc()
derp = true
local done = false
local hit,pos = nil,nil
for i = 0 , 1 , 0.2 do
wait()
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
RW.C0 = CFrame.new(1+0.5*i, 1.5-1*i, -0.5+0.5*i) * CFrame.Angles(math.rad(180-45*i), 0, math.rad(-45+90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 1.5-1*i, -0.5+0.5*i) * CFrame.Angles(math.rad(180-45*i), 0, math.rad(45-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90+45*i), math.rad(0), math.rad(135-135*i))
w1.C1 = CFrame.new(0,0,0)
if i > 0.5 and not done then
hit,pos = rayCast(Torso.Position, (Torso.CFrame * CFrame.Angles(math.rad(-90),0,0)).lookVector, 100, Character)
bp.position = pos + Vector3.new(0,1,0)
bp.P = 5000
done = true
end
end
dmgcnnct()

local p1 = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(135-90*i), 0, math.rad(45-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(135-180*i), 0, math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
w1.C1 = CFrame.new(0,0,0)
end
bp.Parent = nil
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(0.5, 0.5, -1) * CFrame.Angles(math.rad(45-10*i), 0, math.rad(-45-10*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45), 0, math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
w1.C1 = CFrame.new(0,0,0)
end
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(0.5,1,0.5)
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=13425802"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = bcolor
effectsg.Reflectance = 0.25
local point1 = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
local LP = p1
local mg = (LP.p - point1.p).magnitude
effectsmsh.Scale = Vector3.new(mg/3,1,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,math.rad(-90))
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
wait()
effectsg.Parent = nil
end))
wait(0.2)
dmgdc()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(0.5+0.5*i, 0.5, -1+0.5*i) * CFrame.Angles(math.rad(35+55*i), 0, math.rad(-55+10*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(-45+90*i), 0, math.rad(-45+90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
end
attack = false
end

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

function RoundSlash()
attack = true
local TorsCF = Torso.CFrame
local bg = Instance.new("BodyGyro",Torso)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.P = bg.p * 25
bg.cframe = TorsCF
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90+45*i), 0, math.rad(-45+90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(45+25*i), 0, math.rad(45-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0))
end
dmgcnnct()
LastPoint = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(135-90*i), 0, math.rad(45-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(70-90*i), 0, math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(45*i))
w1.C1 = CFrame.Angles(math.rad(-25*i),0,0)
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(180*i),0)
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
Hitdeb=0
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(0.5, 0.5, -1) * CFrame.Angles(math.rad(45), 0, math.rad(-45-25*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
RWL.C0 = CFrame.new(1, -1+1*i, -1*i) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1-0.5*i, -0.5*i) * CFrame.Angles(math.rad(-90*i), 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(45))
w1.C1 = CFrame.Angles(math.rad(-25),0,0)
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(180+180*i),0)
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(0.5+0.5*i, 0.5, -1+0.5*i) * CFrame.Angles(math.rad(45+45*i), 0, math.rad(-70+25*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(-20+65*i), 0, math.rad(-45+90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
RWL.C0 = CFrame.new(1, -1*i, -1+1*i) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1.5+0.5*i, -0.5+0.5*i) * CFrame.Angles(math.rad(-90+90*i), 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
w1.C0 = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(45-45*i))
w1.C1 = CFrame.Angles(math.rad(-25+25*i),0,0)
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(360*i),0)
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
wait(0.1)
local Point = prt1.CFrame * CFrame.new(0,prt1.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
bg.Parent = nil
wait(0.1)
attack = false
end

local helm = Instance.new("Part")
helm.formFactor = 3
helm.CanCollide = false
helm.Name = "LancerHelm"
helm.Locked = true
helm.Size = Vector3.new(0.2,0.2,0.2)
helm.BrickColor = bcolor
local helmm = Instance.new("SpecialMesh")
helmm.MeshId = "http://www.roblox.com/asset/?id=27719952"
helmm.Parent = helm
local helmw = Instance.new("Weld")
local LancerM = false

function LancerMode()
attack=true
if not LancerM then
for i = 0,1,0.2 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90), 0, math.rad(-45+135*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(45-45*i), 0, math.rad(45-45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45-45*i), math.rad(0), math.rad(0))
end
for i = 0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90), 0, math.rad(90))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, 0) * CFrame.Angles(math.rad(-45*i), 0, math.rad(45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
end

helm.Parent = swordholder
helmw.Parent = helm
helmw.Part0 = helm
helmw.Part1 = LeftArm
helmw.C0 = CFrame.Angles(math.rad(90),0,math.rad(90))
helmw.C1 = CFrame.new(0,-1.5,0) 
bonusdmg = 10
LancerM = true
wait()
for i = 0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90), 0, math.rad(90))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0 , 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i), 0, math.rad(45-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
end
for i = 0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90), 0, math.rad(90))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0 , 0)
LW.C0 = CFrame.new(-1.5-0.5*i, 0.5+1*i, 0) * CFrame.Angles(math.rad(45+45*i), 0, math.rad(-45+135*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
end
helmw.Part1 = Head
helmw.C0 = CFrame.new(0,-0.25,0)
helmw.C1 = CFrame.new() 
coroutine.resume(coroutine.create(function()
local meshb = Instance.new("SpecialMesh")
meshb.Scale = Vector3.new(0,0,0)
meshb.MeshType = "Sphere"
local shellb = Instance.new("Part")
meshb.Parent = shellb
shellb.Anchored = true
shellb.formFactor = 3
shellb.Size = Vector3.new(1,1,1)
shellb.CFrame = Torso.CFrame
shellb.Parent = swordholder
shellb.Transparency = 0
shellb.BrickColor = bcolor
shellb.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.05 do
wait()
shellb.Transparency = 1*i
meshb.Scale = Vector3.new(20*i,20*i,20*i)
end
shellb.Parent = nil
end))
local spinval = 0
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137"
SlashSound.Parent = Head
SlashSound.Volume = 0.25
SlashSound.Pitch = 0.1
SlashSound.PlayOnRemove = true
SlashSound.Looped = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
local SlashSound2 = Instance.new("Sound")
SlashSound2.SoundId = "http://www.roblox.com/asset?id=1369158"
SlashSound2.Parent = Head
SlashSound2.Volume = 1
SlashSound2.Pitch = 0.05
SlashSound2.PlayOnRemove = true
SlashSound2.Looped = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound2.Parent = nil
end))
local ws = Character.Humanoid.WalkSpeed
repeat
wait(0.05)
Character.Humanoid.WalkSpeed = ws * 2
spinval = spinval + 0.1
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(5.1,5,5.1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = Torso.CFrame * CFrame.Angles(0,spinval,0) + Vector3.new(0,-2.5,0) 
shell.Parent = swordholder
shell.Transparency = 1
shell.BrickColor = handlecolor
shell.CanCollide = false
local mesh2 = Instance.new("SpecialMesh")
mesh2.Scale = Vector3.new(8,8,8)
mesh2.MeshId = "http://www.roblox.com/asset/?id=1051557"
local shell2 = Instance.new("Part")
mesh2.Parent = shell2
shell2.Anchored = true
shell2.formFactor = 3
shell2.Size = Vector3.new(0.2,0.2,0.2)
shell2.CFrame = Torso.CFrame * CFrame.Angles(0,spinval,0) + Vector3.new(0,-2.5,0) 
shell2.Parent = swordholder
shell2.Transparency = 1
shell2.BrickColor = bcolor
shell2.CanCollide = false
local mesh3 = Instance.new("BlockMesh")
mesh3.Scale = Vector3.new(5,5,5)
local shell3 = Instance.new("Part")
mesh3.Parent = shell3
shell3.Anchored = true
shell3.formFactor = 3
shell3.Size = Vector3.new(1,1,1)
shell3.CFrame = Torso.CFrame * CFrame.Angles(math.random(),math.random(),math.random()) 
shell3.Parent = swordholder
shell3.Transparency = 0.5
shell3.BrickColor = bcolor
shell3.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
shell2.Transparency = 1-1*i
shell3.Transparency = 0.5+0.25*i
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
shell2.Transparency = 1*i
shell3.Transparency = 0.75+0.25*i
end
shell.Parent = nil
shell2.Parent = nil
shell3.Parent = nil
end))
until not LancerM
Character.Humanoid.WalkSpeed = ws
end))
for i = 0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.Angles(math.rad(90), 0, math.rad(90-135*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0 , 0)
LW.C0 = CFrame.new(-1, 1.5-1*i, -0.5*i) * CFrame.Angles(math.rad(90-45*i), 0, math.rad(90-45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90+45*i), math.rad(0), math.rad(0))
end
elseif LancerM then
LancerM = false
local meshb = Instance.new("SpecialMesh")
meshb.Scale = Vector3.new(0,0,0)
meshb.MeshId = "http://www.roblox.com/asset/?id=1038653"
local shellb = Instance.new("Part")
meshb.Parent = shellb
shellb.Anchored = true
shellb.formFactor = 3
shellb.Size = Vector3.new(1,1,1)
shellb.CFrame = Torso.CFrame
shellb.Parent = swordholder
shellb.Transparency = 1
shellb.Reflectance = 0.25
shellb.BrickColor = bcolor
shellb.CanCollide = false
local meshb2 = Instance.new("SpecialMesh")
meshb2.Scale = Vector3.new(0,0,0)
meshb2.MeshType = "Sphere"
local shellb2 = Instance.new("Part")
meshb2.Parent = shellb2
shellb2.Anchored = true
shellb2.formFactor = 3
shellb2.Size = Vector3.new(1,1,1)
shellb2.CFrame = Torso.CFrame
shellb2.Parent = swordholder
shellb2.Transparency = 1
shellb2.Reflectance = 0.25
shellb2.BrickColor = bcolor
shellb2.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.05 do
wait()
shellb.Transparency = 1-1*i
meshb.Scale = Vector3.new(30*i,30*i,30*i)
shellb2.Transparency = 1-1*i
meshb2.Scale = Vector3.new(15*i,100*i,15*i)
end
for i = 0 ,1,0.05 do
wait()
shellb.Transparency = 1*i
meshb.Scale = Vector3.new(30+50*i,30+50*i,30+50*i)
shellb2.Transparency = 1*i
meshb2.Scale = Vector3.new(15-15*i,100+100*i,15-15*i)
end
shellb2.Parent = nil
shellb.Parent = nil
end))
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 0.5+1*i, -0.5+0.5*i) * CFrame.Angles(math.rad(45+45*i), 0, math.rad(45+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45-45*i), math.rad(0), math.rad(0))
end
helmw.Part1 = LeftArm
helmw.C0 = CFrame.Angles(math.rad(90),0,math.rad(90))
helmw.C1 = CFrame.new(0,-1.5,0) 
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 1.5-1*i, 0) * CFrame.Angles(math.rad(90-45*i), 0, math.rad(90-135*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i), 0, math.rad(-45+90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
end
helm.Parent = nil
helmw.Parent = nil
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(-45+90*i), 0, math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90+45*i), math.rad(0), math.rad(0))
end
end
attack=false
end

function Attackk(mag)
if attack then return end
if Character.Humanoid.Health <= Character.Humanoid.MaxHealth/2 and LancerM == false then
LancerMode()
end
if mag <= 6 then
local rndm = math.random(1,3) 
if rndm == 1 then
coroutine.resume(coroutine.create(function()
if combo == 0 then
Combo1()
elseif combo == 1 then
Combo2() 
elseif combo == 2 then
Combo3() 
end
end))
elseif rndm == 2 and combo == 0 then
coroutine.resume(coroutine.create(function()
Slash1()
end))
elseif rndm == 3 and combo == 0 then
coroutine.resume(coroutine.create(function()
RoundSlash()
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
