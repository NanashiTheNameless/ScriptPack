--[[                                              
Technomancer MiniBoss                                             ]]

ModelName = "Exavior (Ranged)"
attack = false
attacktype = 1
Hitdeb = 0
Hitdeb2 = 0
name = "luxulux"
----------------------------
--Customize mediafire
booster1 = false
booster2 = false
booster3 = false
booster4 = false
booster5 = false
booster6 = false
booster7 = false
booster8 = false
booster9 = false
time1 = false
time2 = false
time3 = false
time4 = false
time5 = false
time6 = false
time7 = false
time8 = false
time9 = false
clocker = 0
Rage = 0 
Rage = 200
mindamage = 5
maxdamage = 40
crtmaxdamage = 40
combo = 0
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
crtrate = 100/5
HP = 2000
WS = 8
jump = 50
--100%/critpercentage
attack = false
comboing = false
oblkbrkr = 3
blockbreaker = oblkbrkr
timer = 0
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
Head.BrickColor = BrickColor.new("Mid gray") 
local smh = Instance.new("SpecialMesh",Head)
smh.Scale = Vector3.new(1.25,1.25,1.25)
local Torso = Instance.new("Part")
Torso.formFactor = 3
Torso.CanCollide = true
Torso.Name = "Torso"
Torso.Locked = true
Torso.Size = Vector3.new(2,2,1)
Torso.Parent = bodyholder
Torso.BrickColor = BrickColor.new("Mid gray")
Torso.Reflectance = 0.1
Torso.CFrame = CFrame.new(SpawnPos.Value)
local RightArm = Instance.new("Part")
RightArm.formFactor = 3
RightArm.CanCollide = true
RightArm.Name = "Right Arm" 
RightArm.Locked = true
RightArm.Size = Vector3.new(1,2,1)
RightArm.Parent = bodyholder
RightArm.BrickColor = BrickColor.new("Mid gray")
local LeftArm = Instance.new("Part")
LeftArm.formFactor = 3
LeftArm.CanCollide = true
LeftArm.Name = "Left Arm"
LeftArm.Locked = true
LeftArm.Size = Vector3.new(1,2,1)
LeftArm.Parent = bodyholder
LeftArm.BrickColor = BrickColor.new("Mid gray")
local RightLeg = Instance.new("Part")
RightLeg.formFactor = 3
RightLeg.CanCollide = true
RightLeg.Name = "Right Leg"
RightLeg.Locked = true
RightLeg.Size = Vector3.new(1,2,1)
RightLeg.Parent = bodyholder
RightLeg.BrickColor = BrickColor.new("Mid gray")
local LeftLeg = Instance.new("Part")
LeftLeg.formFactor = 3
LeftLeg.CanCollide = true
LeftLeg.Name = "Left Leg"
LeftLeg.Locked = true
LeftLeg.Size = Vector3.new(1,2,1)
LeftLeg.Parent = bodyholder
LeftLeg.BrickColor = BrickColor.new("Mid gray") 

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
wh.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0.1, -.20,-0.2)
wh.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

Faic = Instance.new("Decal")
Faic.Texture = "http://www.roblox.com/asset/?id=110287983"
Faic.Face = "Front"
Faic.Parent = Head

Shirt = Instance.new("Shirt")
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=59751157"
Shirt.Parent = bodyholder

Pants = Instance.new("Pants")
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=59751577"
Pants.Parent = bodyholder
local LAmsh = Instance.new("CharacterMesh")

--[[LAmsh.MeshId = "111777907"
LAmsh.OverlayTextureId = "111778050"
LAmsh.BodyPart = "LeftArm"
LAmsh.Parent = bodyholder

--[[local LLmsh = Instance.new("CharacterMesh")
LLmsh.MeshId = "111777942"
LLmsh.OverlayTextureId = "111778050"
LLmsh.BodyPart = "LeftLeg"
LLmsh.Parent = bodyholder

local RAmsh = Instance.new("CharacterMesh")
RAmsh.MeshId = "111777972"
RAmsh.OverlayTextureId = "111778050"
RAmsh.BodyPart = "RightArm"
RAmsh.Parent = bodyholder

local RLmsh = Instance.new("CharacterMesh")
RLmsh.MeshId = "111778023"
RLmsh.OverlayTextureId = "111778050"
RLmsh.BodyPart = "RightLeg"
RLmsh.Parent = bodyholder

local Tmsh = Instance.new("CharacterMesh")
Tmsh.MeshId = "111777866"
Tmsh.OverlayTextureId = "111778050"
Tmsh.BodyPart = "Torso"
Tmsh.Parent = bodyholder]]
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
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
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
prt1.BrickColor = BrickColor.new("Really black") 
prt1.Name = "Part1" 
prt1.Transparency = 0.4 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = swordholder 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Bright red") 
prt2.Name = "Part2" 
prt2.Transparency = 0.4 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = swordholder 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Really black") 
prt3.Name = "Part3" 
prt3.Transparency = 0.4 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = swordholder 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Bright red") 
prt4.Name = "Part4" 
prt4.Transparency = 0.4 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = swordholder 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Really black") 
prt5.Name = "Part5" 
prt5.Transparency = 0.4 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = swordholder 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Bright red") 
prt6.Name = "Part6" 
prt6.Transparency = 0.4 
prt6.Size = Vector3.new(1,1,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = swordholder 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Really black") 
prt7.Name = "Part7" 
prt7.Transparency = 0.4 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = swordholder 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Bright red") 
prt8.Name = "Part8" 
prt8.Transparency = 0.4 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
swordholder:BreakJoints() 

local msh1 = Instance.new("BlockMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.5,1,0.5) 
local msh2 = Instance.new("BlockMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.5,1,0.5) 
local msh3 = Instance.new("BlockMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.5,1,0.5) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.5,1,0.5) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.5,1,0.5) 
local msh6 = Instance.new("BlockMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.5,1,0.5) 
local msh7 = Instance.new("BlockMesh") 
msh7.Parent = prt7 
msh7.Scale = Vector3.new(0.5,1,0.5) 
local msh8 = Instance.new("BlockMesh") 
msh8.Parent = prt8 
msh8.Scale = Vector3.new(0.5,1,0.5) 
local w1 = Instance.new("Weld") 
w1.Parent = prt1 
w1.Part0 = prt1 
w1.Part1 = Torso 
w1.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local w2 = Instance.new("Weld") 
w2.Parent = prt2 
w2.Part0 = prt2 
w2.Part1 = Torso 
w2.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
local w3 = Instance.new("Weld") 
w3.Parent = prt3 
w3.Part0 = prt3 
w3.Part1 = Torso 
w3.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
local w4 = Instance.new("Weld") 
w4.Parent = prt4 
w4.Part0 = prt4 
w4.Part1 = Torso 
w4.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
local w5 = Instance.new("Weld") 
w5.Parent = prt5 
w5.Part0 = prt5 
w5.Part1 = Torso 
w5.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
local w6 = Instance.new("Weld") 
w6.Parent = prt6 
w6.Part0 = prt6 
w6.Part1 = Torso 
w6.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
local w7 = Instance.new("Weld") 
w7.Parent = prt7 
w7.Part0 = prt7 
w7.Part1 = Torso 
w7.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
local w8 = Instance.new("Weld") 
w8.Parent = prt8 
w8.Part0 = prt8 
w8.Part1 = Torso 
w8.C0 = CFrame.new(0,1.6,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495)
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
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
function rayCast(Pos, Dir, Max, Ignore) -- Origin Position , Direction, MaxDistance , IgnoreDescendants 
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(-1.57,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,500,Character) 
local las=Instance.new("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Bright red") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.15,0.7,0.15) 
end 
Part.Parent = nil 
end),las,msh) 
local las=Instance.new("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Really black") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(-0.05,0.7,-0.05) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
local las2=Instance.new("Part",Character) 
las2.Anchored=true 
las2.Locked=true 
las2.CanCollide=false 
las2.TopSurface=0 
las2.BottomSurface=0 
las2.FormFactor = "Custom" 
las2.BrickColor=BrickColor.new("Bright red") 
las2.Size=Vector3.new(1,1,1) 
--las2.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
las2.CFrame=CFrame.new(pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("BlockMesh",las2) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,0.1,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
--wait(10) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.5,0,0.5) 
end 
Part.Parent = nil 
end),las2,msh) 
end 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
if(hit.Parent.Parent:findFirstChild("Humanoid")~= nil)then
if hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Parent.Name ~= Character.Name then
hit.Parent.Parent.Humanoid:TakeDamage(Dmg)
end 
end 
end
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Character.Name then 
hit.Parent.Humanoid:TakeDamage(Dmg) 
end 
end
--[[if hit.className == "Part" and hit.Parent:findFirstChild("Humanoid") == nil then 
hit.Parent.Humanoid:TakeDamage(Dmg) 
end]]--
end 
end 
function onehit() 
attack = true 
comboing = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
wait(0.1) 
gairo.Parent = Head 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180)+1*i,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--[[w1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) ]] 
w4.C0 = CFrame.new(1.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,2.355-0.785*i) 
w5.C0 = CFrame.new(-0.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,3.14-1.57*i) 
--[[w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) ]] 
end 
wait(0.1) 
combo = 1
Laser(prt4,math.random(20,40)) 
Laser(prt5,math.random(20,40)) 
attack = false 
end 
function twohit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w4.C0 = CFrame.new(1.3-1.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,2.355-0.785+0.785*i) 
w5.C0 = CFrame.new(-0.3+0.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,3.14-1.57+1.57*i) 
w6.C0 = CFrame.new(0.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,3.925+0.785*i) 
w7.C0 = CFrame.new(-1.3*i,1.6+3-2*i,-1+0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,4.71) 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180)+1-2*i,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
Laser(prt6,math.random(20,40)) 
Laser(prt7,math.random(20,40)) 
wait(0.1) 
attack = false 
combo = 2
end 
function threehit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w6.C0 = CFrame.new(0.3-0.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,3.925+0.785-0.785*i) 
w7.C0 = CFrame.new(-1.3+1.3*i,1.6+3-2+2*i,-1+0.2-0.2*i) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.5*i,5.495-5.495*i) 
w1.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.5*i,0.785-0.785*i) 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180)+1-2+1*i,0)  
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-0.5-1.27*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
Laser(prt8,math.random(20,40)) 
Laser(prt1,math.random(20,40)) 
Laser(prt2,math.random(20,40))  
wait(0.1) 
attack = false
combo = 3
end 
function fourhit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
w8.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0.5*i,5.495-5.495+5.495*i) 
w1.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,-0.5*i,0.785-0.785+0.785*i) 
w3.C0 = CFrame.new(0,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,1.57+0.5*i) 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180)+math.rad(90)*i,0)  
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,0.2-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,1.57-0.5-1.27+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
w3.C0 = CFrame.new(0,1.6+3,-1+1) * CFrame.fromEulerAnglesXYZ(0,0,1.57+0.5-0.8*i) 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(270),0)  
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(1.57,0,0.2-1.77) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(1.57-1.57,0,1.57-0.5-1.27+1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)  
Laser(prt3,math.random(5,15)) 
end 
wait(0.1) 
attack = false
combo = 0
end 
function LaserWave() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,6.28) 
w3.C0 = CFrame.new(0,1.6+3,-1+4*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,1.57) 
w5.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.14) 
w7.C0 = CFrame.new(0,1.6+3,-1+4*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,4.71) 
end 
Laser(prt1,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0.5-0.5*i,1.6+3,-1+1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,6.28) 
w3.C0 = CFrame.new(0,1.6+3,-1+4-4*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,1.57) 
w5.C0 = CFrame.new(0.5-0.5*i,1.6+3,-1+1-1*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,3.14) 
w7.C0 = CFrame.new(0,1.6+3,-1+4-4*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,4.71) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w2.C0 = CFrame.new(0,1.6+3,-1+2*i) * CFrame.fromEulerAnglesXYZ(-1.97*i,0,0.785-0.785*i) 
w4.C0 = CFrame.new(0,1.6+3,-1+1.5*i) * CFrame.fromEulerAnglesXYZ(-1.77*i,0,2.355-2.355*i) 
w6.C0 = CFrame.new(0,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.925-3.925*i) 
w8.C0 = CFrame.new(0,1.6+3,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(-1.37*i,0,5.495-5.495*i) 
end 
Laser(prt2,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w2.C0 = CFrame.new(0,1.6+3,-1+2-2*i) * CFrame.fromEulerAnglesXYZ(-1.97+1.97*i,0,-0.785*i) 
w4.C0 = CFrame.new(0,1.6+3,-1+1.5-1.5*i) * CFrame.fromEulerAnglesXYZ(-1.77+1.77*i,0,-2.355*i) 
w6.C0 = CFrame.new(0,1.6+3,-1+1-1*i) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,-3.925*i) 
w8.C0 = CFrame.new(0,1.6+3,-1+0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.37+1.37*i,0,-5.495*i) 
end 
wait(0.1) 
attack = false 
end 
function OverBlast() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1.05,0.05 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(-1.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.5*i,6.28) 
w2.C0 = CFrame.new(-1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.3*i,0.785+5.495*i) 
w3.C0 = CFrame.new(1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.3*i,1.57+4.71*i) 
w4.C0 = CFrame.new(1.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.5*i,2.355+3.925*i) 
w5.C0 = CFrame.new(-1.1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0.1*i,3.14-3.14*i) 
w6.C0 = CFrame.new(-0.6*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.925-3.925*i) 
w7.C0 = CFrame.new(0.6*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0,4.71-4.71*i) 
w8.C0 = CFrame.new(1.1*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,-0.1*i,5.495-5.495*i) 
end 
Laser(prt1,math.random(5,15)) 
Laser(prt2,math.random(5,15)) 
Laser(prt3,math.random(5,15)) 
Laser(prt4,math.random(5,15)) 
Laser(prt5,math.random(5,15)) 
Laser(prt6,math.random(5,15)) 
Laser(prt7,math.random(5,15)) 
Laser(prt8,math.random(5,15)) 
wait(0.2) 
for i = 0,1.05,0.05 do 
wait() 
w1.C0 = CFrame.new(-1.5,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0.5-0.5*i,6.28) 
w2.C0 = CFrame.new(-1+0.5*i,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0.3-0.3*i,0.785+5.495) 
w3.C0 = CFrame.new(1-0.5*i,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,-0.3+0.3*i,1.57+4.71) 
w4.C0 = CFrame.new(1.5,1.6+3,-1*i) * CFrame.fromEulerAnglesXYZ(-1.57,-0.5+0.5*i,2.355+3.925) 
w5.C0 = CFrame.new(-1.1-0.4*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0.1-0.1*i,3.14-3.14) 
w6.C0 = CFrame.new(-0.6+0.1*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0,3.925-3.925) 
w7.C0 = CFrame.new(0.6-0.1*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,0,4.71-4.71) 
w8.C0 = CFrame.new(1.1+0.4*i,1.6+3,1*i) * CFrame.fromEulerAnglesXYZ(-1.57,-0.1+0.1*i,5.495-5.495) 
end 
Laser(prt1,math.random(5,15)) 
Laser(prt2,math.random(5,15)) 
Laser(prt3,math.random(5,15)) 
Laser(prt4,math.random(5,15)) 
Laser(prt5,math.random(5,15)) 
Laser(prt6,math.random(5,15)) 
Laser(prt7,math.random(5,15)) 
Laser(prt8,math.random(5,15)) 
wait(0.5) 
attack = false 
end 
function SpinBeam() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)   
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(-0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
gairo.Parent = Head 
gairo.cframe = Head.CFrame 
CF = Torso.CFrame 
for i = 0,1,0.1 do 
wait(0.1) 
gairo.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
Laser(prt3,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
end 
wait(0.2) 
gairo.Parent = nil 
attack = false  
end 
function LaserBarrage() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,6.28) 
end 
Laser(prt1,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,0,1.57-1.77-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,6.28) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,0.785) 
end  
Laser(prt2,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,0.785) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.3*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w3.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,1.57) 
end 
Laser(prt3,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.3+0.3*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w3.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,1.57) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,2.355) 
end  
Laser(prt4,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,2.355) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,-1.57+1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.14) 
end 
Laser(prt5,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,-1.57+1.77-1.77*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,3.14) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,3.925) 
end 
Laser(prt6,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,3.925) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w7.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,4.71) 
end 
Laser(prt7,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w7.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,4.71) 
end 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3*i,0,1.57-1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,5.495) 
end 
Laser(prt8,math.random(10,20)) 
for i = 0,1,0.2 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,0,1.57-1.77+1.77*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,5.495) 
end 
wait(0.5) 
attack = false 
end 
function CloseRangedFire() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3-13*i,-1) * CFrame.fromEulerAnglesXYZ(-3*i,0,5.495) 
end 
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
wait(1) 
attack = false 
end 
function SpinLaser() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0,6.28-6.28*i) 
w2.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0.785*i,0.785-0.785*i) 
w3.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,1.57-1.57*i) 
w4.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,2.355*i,2.355-2.355*i) 
w5.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.14*i,3.14-3.14*i) 
w6.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.925*i,3.925-3.925*i) 
w7.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,4.71*i,4.71-4.71*i) 
w8.C0 = CFrame.new(0,1.6+3-2*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,5.495*i,5.495-5.495*i) 
end 
Laser(prt1,math.random(10,20)) 
Laser(prt2,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0+0.5*i,6.28-6.28) 
w2.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0.785+0.5*i,0.785-0.785) 
w3.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,1.57+0.5*i,1.57-1.57) 
w4.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,2.355+0.5*i,2.355-2.355) 
w5.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5*i,3.14-3.14) 
w6.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.925+0.5*i,3.925-3.925) 
w7.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,4.71+0.5*i,4.71-4.71) 
w8.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,5.495+0.5*i,5.495-5.495) 
end  
Laser(prt1,math.random(10,20)) 
Laser(prt2,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0+0.5+0.5*i,6.28-6.28) 
w2.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,0.785+0.5+0.5*i,0.785-0.785) 
w3.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,1.57+0.5+0.5*i,1.57-1.57) 
w4.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,2.355+0.5+0.5*i,2.355-2.355) 
w5.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5+0.5*i,3.14-3.14) 
w6.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.925+0.5+0.5*i,3.925-3.925) 
w7.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,4.71+0.5+0.5*i,4.71-4.71) 
w8.C0 = CFrame.new(0,1.6+3-2,-1) * CFrame.fromEulerAnglesXYZ(1.57,5.495+0.5+0.5*i,5.495-5.495) 
end 
Laser(prt1,math.random(10,20)) 
Laser(prt2,math.random(10,20)) 
Laser(prt3,math.random(10,20)) 
Laser(prt4,math.random(10,20)) 
Laser(prt5,math.random(10,20)) 
Laser(prt6,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
Laser(prt8,math.random(10,20)) 
wait(1) 
attack = false 
end 
function Implosion() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0,6.28-6.28*i) 
w2.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,0.785*i,0.785-0.785*i) 
w3.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,1.57-1.57*i) 
w4.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,2.355*i,2.355-2.355*i) 
w5.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.14*i,3.14-3.14*i) 
w6.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,3.925*i,3.925-3.925*i) 
w7.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,4.71*i,4.71-4.71*i) 
w8.C0 = CFrame.new(0,1.6+3-10*i,-1) * CFrame.fromEulerAnglesXYZ(1.57*i,5.495*i,5.495-5.495*i) 
end 
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,0+0.5*i,6.28-6.28) 
w2.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,0.785+0.5*i,0.785-0.785) 
w3.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,1.57+0.5*i,1.57-1.57) 
w4.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,2.355+0.5*i,2.355-2.355) 
w5.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5*i,3.14-3.14) 
w6.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,3.925+0.5*i,3.925-3.925) 
w7.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,4.71+0.5*i,4.71-4.71) 
w8.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57,5.495+0.5*i,5.495-5.495) 
end  
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
for i = 0,1,0.1 do 
wait() 
w1.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,0+0.5,6.28-6.28) 
w2.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,0.785+0.5,0.785-0.785) 
w3.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,1.57+0.5,1.57-1.57) 
w4.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,2.355+0.5,2.355-2.355) 
w5.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,3.14+0.5,3.14-3.14) 
w6.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,3.925+0.5,3.925-3.925) 
w7.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,4.71+0.5,4.71-4.71) 
w8.C0 = CFrame.new(0,1.6+3-10,-1) * CFrame.fromEulerAnglesXYZ(1.57-1*i,5.495+0.5,5.495-5.495) 
end 
Laser(prt1,math.random(5,10)) 
Laser(prt2,math.random(5,10)) 
Laser(prt3,math.random(5,10)) 
Laser(prt4,math.random(5,10)) 
Laser(prt5,math.random(5,10)) 
Laser(prt6,math.random(5,10)) 
Laser(prt7,math.random(5,10)) 
Laser(prt8,math.random(5,10)) 
wait(1) 
attack = false  
end 
function LaserPillars() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,0,6.28-6.28*i) 
w2.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,0.785*i,0.785-0.785*i) 
w3.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,1.57*i,1.57-1.57*i) 
w4.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,2.355*i,2.355-2.355*i) 
w5.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,3.14*i,3.14-3.14*i) 
w6.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,3.925*i,3.925-3.925*i) 
w7.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,4.71*i,4.71-4.71*i) 
w8.C0 = CFrame.new(0,1.6+3-15*i,-1-3*i) * CFrame.fromEulerAnglesXYZ(0,5.495*i,5.495-5.495*i) 
end 
Laser(prt1,math.random(20,40)) 
Laser(prt2,math.random(20,40)) 
Laser(prt3,math.random(20,40)) 
Laser(prt4,math.random(20,40)) 
Laser(prt5,math.random(20,40)) 
Laser(prt6,math.random(20,40)) 
Laser(prt7,math.random(20,40)) 
Laser(prt8,math.random(20,40)) 
hur = 0 
for i = 0,1,0.1 do 
wait(0.1) 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,0+2.5*i,6.28-6.28) 
w2.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,0.785+2.5*i,0.785-0.785) 
w3.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,1.57+2.5*i,1.57-1.57) 
w4.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,2.355+2.5*i,2.355-2.355) 
w5.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,3.14+2.5*i,3.14-3.14) 
w6.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,3.925+2.5*i,3.925-3.925) 
w7.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,4.71+2.5*i,4.71-4.71) 
w8.C0 = CFrame.new(0,1.6+3-15,-1-3-20*i) * CFrame.fromEulerAnglesXYZ(0,5.495+2.5*i,5.495-5.495) 
if hur == 1 then 
Laser(prt1,math.random(20,40)) 
Laser(prt2,math.random(20,40)) 
Laser(prt3,math.random(20,40)) 
Laser(prt4,math.random(20,40)) 
Laser(prt5,math.random(20,40)) 
Laser(prt6,math.random(20,40)) 
Laser(prt7,math.random(20,40)) 
Laser(prt8,math.random(20,40)) 
hur = 0 
end 
hur = hur + 1 
end 
wait(1) 
attack = false 
end  
function DodgeTheLaser() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3*i,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
for i = 0,1,0.1 do 
wait() 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
w1.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,6.28) 
w2.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,0.785) 
w3.C0 = CFrame.new(0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,1.57) 
w4.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,2.355) 
w5.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.14) 
w6.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,3.925) 
w7.C0 = CFrame.new(-0.5*i,1.6+3,-1+1*i) * CFrame.fromEulerAnglesXYZ(0,0,4.71) 
w8.C0 = CFrame.new(0,1.6+3,-1) * CFrame.fromEulerAnglesXYZ(0,0,5.495) 
end 
game:GetService("Chat"):Chat(Head,"DODGE THIS!",2)
gairo.Parent = Head 
gairo.cframe = Head.CFrame 
CF = Torso.CFrame 
for i = 0,1,0.01 do 
wait(0.1) 
gairo.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
Laser(prt3,math.random(10,20)) 
Laser(prt7,math.random(10,20)) 
end 
wait() 
gairo.Parent = nil 
attack = false  
end 
function Attackk(mag)
if attack then return end
if mag <= 100 then
local rndm = math.random(1,10) 
if rndm == 1 then
coroutine.resume(coroutine.create(function()
if combo == 0 and comboing == false then
onehit()
elseif combo == 1 then
twohit() 
elseif combo == 2 then
threehit() 
elseif combo == 3 then
fourhit() 
gairo.Parent = nil 
Neck.C0=necko*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),0)   
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wait(1)
comboing = false
end
end))
elseif rndm == 2 and combo == 0 and timer >= 40 then
coroutine.resume(coroutine.create(function()
	LaserWave() 
end))
elseif rndm == 3 and combo == 0 and timer >= 60 then
coroutine.resume(coroutine.create(function()
	OverBlast() 
end))
elseif rndm == 4 and combo == 0 and timer >= 90 then
coroutine.resume(coroutine.create(function()
	SpinBeam() 
end))
elseif rndm == 5 and combo == 0 and timer >= 135 then
coroutine.resume(coroutine.create(function()
	LaserBarrage()
end))
elseif rndm == 6 and combo == 0 and timer >= 202 then
coroutine.resume(coroutine.create(function()
	CloseRangedFire() 
end))
elseif rndm == 7 and combo == 0 and timer >= 303 then
coroutine.resume(coroutine.create(function()
	SpinLaser() 
end))
elseif rndm == 8 and combo == 0 and timer >= 454 then
coroutine.resume(coroutine.create(function()
	Implosion() 
end))
elseif rndm == 9 and combo == 0 and timer >= 681 then
coroutine.resume(coroutine.create(function()
	LaserPillars()
end))
elseif rndm == 10 and combo == 0 and timer >= 1000 then
coroutine.resume(coroutine.create(function()
	DodgeTheLaser() 
end))
end
end
coroutine.resume(coroutine.create(function()
	wait(1)
	if clocker == 0 then
	timer = timer + 1
	elseif clocker == 1 then
	timer = timer + 2
	elseif clocker == 2 then
	timer = timer + 3
	elseif clocker == 3 then
	timer = timer + 4
	elseif clocker == 4 then
	timer = timer + 5
	elseif clocker == 5 then
	timer = timer + 6
	elseif clocker == 6 then
	timer = timer + 7
	elseif clocker == 7 then
	timer = timer + 8
	elseif clocker == 8 then
	timer = timer + 9
	elseif clocker == 9 then
	timer = timer + 10
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*9/10 and booster1 == false then
	booster1 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*8/10 and booster2 == false then
	booster2 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*7/10 and booster3 == false then
	booster3 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*6/10 and booster4 == false then
	booster4 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*5/10 and booster5 == false then
	booster5 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*4/10 and booster6 == false then
	booster6 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed * 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*3/10 and booster7 == false then
	booster7 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*2/10 and booster8 == false then
	booster8 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
	if Character.Humanoid.Health < Character.Humanoid.MaxHealth*1/10 and booster9 == false then
	booster9 = true	
	clocker = clocker + 1
	Character.Humanoid.WalkSpeed = Character.Humanoid.WalkSpeed + 2
	local parchat = math.random(1,2)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Increasing System Speed.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Overclocking.",2)
	end
	end
end))
if time1 == false and timer >= 40 then
time1 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end
if time2 == false and timer >= 60 then
time2 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end 
if time3 == false and timer >= 90 then
time3 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end 
if time4 == false and timer >= 135 then
time4 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end 
if time5 == false and timer >= 202 then
time5 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end 
if time6 == false and timer >= 303 then
time6 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end 
if time7 == false and timer >= 454 then
time7 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end 
if time8 == false and timer >= 681 then
time8 = true
	local parchat = math.random(1,3)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Ajusting Parameters.",2)
	elseif parchat == 2 then
	game:GetService("Chat"):Chat(Head,"Modifying Battle Program.",2)
	elseif parchat == 3 then
	game:GetService("Chat"):Chat(Head,"Gaining new Attacking Software.",2)
	end
end
if time9 == false and timer >= 1000 then
time9 = true
	local parchat = math.random(1,1)
	if parchat == 1 then
	game:GetService("Chat"):Chat(Head,"Overdrive Attack Enabaled.",2)
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
if mag <= 400 then
Attackk(mag)
end
--
pcall(function()
Humanoid:MoveTo(Target.Torso.Position + CFrame.new(Torso.Position,Target.Torso.Position).lookVector * -25,Target.Torso)
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