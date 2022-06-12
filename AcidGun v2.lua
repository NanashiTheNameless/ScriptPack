Player = game:GetService("Players").LocalPlayer -- grg instead of putting your name u can just put LocalPlayer in it
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
Ammo = 200
MaxAmmo = 200
mindamage = 10
maxdamage = 30
crtmaxdamage = 50
reloadspeed=5
attackspeed=5
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
rangepower = 50
CurrentAmmo = "Normal"
attackdebounce = false
poisoncounter=0
Gunzerkering=false
firingdebounce1=false
firingdebounce2=false
handlecolor = BrickColor.new("Navy blue")
bcolor = BrickColor.new("White")
gemcolor = BrickColor.new("Black")
ammotrail = BrickColor.new("White")
ToolName = "Ras Algethi"
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
local swordholder = Instance.new("Model",Character)
swordholder.Name = ModelName
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
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(1,1,1)
local msh3 = Instance.new("CylinderMesh")
msh3.Scale = Vector3.new(1,1,1)
local msh4 = Instance.new("CylinderMesh")
msh4.Scale = Vector3.new(1,1,1)
local msh5 = Instance.new("CylinderMesh")
msh5.Scale = Vector3.new(1,1,1)
local msh6 = Instance.new("BlockMesh")
msh6.Scale = Vector3.new(1,1,1)
local torsc = false
for i,z in pairs(Character:GetChildren()) do
if z.className == "CharacterMesh" then
if z.BodyPart == Enum.BodyPart.Torso then
torsc = true
end
end
end
if torsc then
msh7 = Instance.new("SpecialMesh")
msh7.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh7.Scale = Vector3.new(2.01,1,1.01)
else
msh7 = Instance.new("BlockMesh")
msh7.Scale = Vector3.new(2.01,0.1,1.01)
end
local msh8 = Instance.new("SpecialMesh")
msh8.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh8.Scale = Vector3.new(0.5,0.5,7)
local msh9 = Instance.new("BlockMesh")
msh9.Scale = Vector3.new(1,1,1)
local prt1 = Instance.new("Part",Character)
prt1.Material = "SmoothPlastic"
prt1.formFactor = 3
prt1.CanCollide = true
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.3,1,0.3)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part",Character)
prt2.Material = "SmoothPlastic"
prt2.formFactor = 3
prt2.CanCollide = true
prt2.Name = "Handle2"
prt2.Locked = true
prt2.Size = Vector3.new(0.5,0.2,1.5)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = handlecolor
local prt3 = Instance.new("Part",Character)
prt3.Material = "SmoothPlastic"
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "Handle3"
prt3.Locked = true
prt3.Size = Vector3.new(0.7,1.2,0.7)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = bcolor
local prt4 = Instance.new("Part",Character)
prt4.Material = "SmoothPlastic"
prt4.formFactor = 3
prt4.CanCollide = true
prt4.Name = "BackBarrel"
prt4.Locked = true
prt4.Size = Vector3.new(0.5,1.2,0.5)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.BrickColor = handlecolor
local prt5 = Instance.new("Part",Character)
prt5.Material = "SmoothPlastic"
prt5.formFactor = 3
prt5.CanCollide = true
prt5.Name = "Barrel"
prt5.Locked = true
prt5.Size = Vector3.new(0.4,2.5,0.4)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = handlecolor
local prt6 = Instance.new("Part",Character)
prt6.Material = "SmoothPlastic"
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "BarrelHandle"
prt6.Locked = true
prt6.Size = Vector3.new(0.3,1,0.3)
prt6.Parent = swordholder
msh6.Parent = prt6
prt6.BrickColor = handlecolor
local prt7 = Instance.new("Part",Character)
prt7.Material = "SmoothPlastic"
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "HolsterStrap"
prt7.Locked = true
prt7.Size = Vector3.new(1,1,1)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = handlecolor
local prt8 = Instance.new("Part",Character)
prt8.Material = "SmoothPlastic"
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "Holster"
prt8.Locked = true
prt8.Size = Vector3.new(1,1,1)
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor 
local prt9 = Instance.new("Part",Character)
prt9.Material = "SmoothPlastic"
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "AmmoHolster"
prt9.Locked = true
prt9.Size = Vector3.new(0.2,1,0.7)
prt9.Parent = swordholder
msh9.Parent = prt9
prt9.BrickColor = handlecolor 
local w1 = Instance.new("Weld")
w1.Parent = prt1 
w1.Part0 = prt1
w1.Name = "Weld1"
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.Name = "Weld2"
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0.6,0.5)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt2
w3.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90+45), 0, 0) * CFrame.new(0, 0.25,-0.5)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt2
w4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,0.5)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt3
w5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 1.5,0)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt3
w6.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w6.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 1.5,-0.5)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = Torso
w7.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
if torsc then
w7.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 1,0) 
else
w7.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 1,0) 
end
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = Torso
w8.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w8.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(-1.1, 1-0.25,0) 
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = Torso
w9.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w9.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(1, 0.75,-0.5) 
newgun=swordholder:Clone()
newgun.Name="WeaponClone"
newprt1=newgun.Handle
newprt2=newgun.Handle2
newprt3=newgun.Handle3
newprt4=newgun.BackBarrel
newprt5=newgun.Barrel
newprt6=newgun.BarrelHandle
newgun.HolsterStrap:Remove()
newgun.Holster:Remove()
newgun.AmmoHolster:Remove()
newgun:BreakJoints()
local neww1 = Instance.new("Weld")
neww1.Parent = newprt1 
neww1.Part0 = newprt1
local neww2 = Instance.new("Weld")
neww2.Parent = newprt2
neww2.Part0 = newprt2
neww2.Part1 = newprt1
neww2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
neww2.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0.6,0.5)
local neww3 = Instance.new("Weld")
neww3.Parent = newprt3
neww3.Part0 = newprt3
neww3.Part1 = newprt2
neww3.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
neww3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
local neww4 = Instance.new("Weld")
neww4.Parent = newprt4
neww4.Part0 = newprt4
neww4.Part1 = newprt2
neww4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
neww4.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,0.5)
local neww5 = Instance.new("Weld")
neww5.Parent = newprt5
neww5.Part0 = newprt5
neww5.Part1 = newprt3
neww5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
neww5.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 1.5,0)
local neww6 = Instance.new("Weld")
neww6.Parent = newprt6
neww6.Part0 = newprt6
neww6.Part1 = newprt3
neww6.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
neww6.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 1.5,-0.5)
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
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(-0), math.rad(0)) * CFrame.new(-1.15, 1, -0.6)
end
unequipweld()
function equipweld()
w1.Part0 = prt1
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
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
SlashSound.Volume = 5
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
function hs(parent,p) --Ammo Hit Sound
ms(parent,p)
end
function as(parent,p) --Gun Shoot Sound
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://roblox.com/asset/?id=10209257" 
SlashSound.Parent = parent
SlashSound.Volume = 0.5
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function ars(parent,p) --Gun Reload Sound
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://roblox.com/asset/?id=10209869"
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
function hideanim()
attack = true
ars(Head,0.85)
for i = 0.25 ,1 ,0.25 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-15*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(25+10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90+25*i), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5*i),0,math.rad(0))
end 
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(10-10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(35+10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(115+20*i), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5-5*i),0,math.rad(0))
end
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-130*i),math.rad(0),math.rad(-60+60*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.25*i) * CFrame.Angles(math.rad(40-20*i),math.rad(0),math.rad(45-22.5*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(135), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10+40*i),0,math.rad(-30*i))
end
unequipweld()
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20+20*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.25+0.25*i) * CFrame.Angles(math.rad(20-20*i),math.rad(0),math.rad(22.5-22.5*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(135), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(30-30*i),0,math.rad(-30+30*i))
end
Neck.C0 = neckcf0
RWRem()
LWRem()        
attack = false
end
function equipanim()
attack = true
RWFunc()
w3.C0 = CFrame.Angles(math.rad(135), 0, 0) * CFrame.new(0, 0.25,-0.5)
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(30*i),0,math.rad(-30*i))
end 
equipweld()
ars(Head,1)
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, -0.25*i) * CFrame.Angles(math.rad(-20+130*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(30-35*i),0,math.rad(-30))
end
LWFunc()
for i = 0.1 ,1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(110-20*i),math.rad(0),math.rad(-60*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.Angles(math.rad(40*i),math.rad(0),math.rad(25*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(135-45*i), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+5*i),0,math.rad(-30+30*i))
end
Neck.C0 = neckcf0
attack = false
end
function faketors()
local T = Instance.new("Part")
T.Material = "SmoothPlastic"
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
    pa.Material = "SmoothPlastic"
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
function AddAmmo(add)
Ammo = Ammo + add
if Ammo > MaxAmmo then
Ammo = MaxAmmo
end
end
function ADmg(humm,hit,pos)
if CurrentAmmo == "Normal" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(-25)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
elseif CurrentAmmo == "Poison" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(15)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
if poisoncounter==1 then
local poisoncount = math.random(2,10)
coroutine.resume(coroutine.create(function()
repeat
wait(1.5)
poisoncount = poisoncount - 1
local rndmdamage = math.floor(math.random(1,5)/2)
local pa = damage(humm,rndmdamage,false)
pa.BrickColor = BrickColor.new("Alder")
until poisoncount <= 0
end))
end
elseif CurrentAmmo == "Explosion" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(0)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
elseif CurrentAmmo == "Herpity" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(0)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
if humm.Parent:findFirstChild("Torso")~=nil then
humm.Parent.Torso.RotVelocity=Vector3.new(math.random(-50000,50000),math.random(-50000,50000),math.random(-50000,50000)) 
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-500,500),math.random(-500,500),math.random(-500,500))
                        r.Parent=humm.Parent.Torso
                        coroutine.resume(coroutine.create(function()
                        for i=1,5000000000000 do
                        wait()
                        r.angularvelocity=vt(math.random(-500,500),math.random(-500,500),math.random(-500,500))
                        end
                        r.Parent=nil
                        end))
                        end
elseif CurrentAmmo == "Bees" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(0)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
if humm.Parent:findFirstChild("Torso")~=nil then
humm.Parent.Torso.RotVelocity=Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360)) 
                        coroutine.resume(coroutine.create(function()
victim=humm.Parent
d=true 
for i=1, 40 do 
m=Instance.new("Model") 
m.Name="BEE" 
p=Instance.new("Part") 
p.Material = "SmoothPlastic"
p.CanCollide=false 
p.Name="Head" 
p.Parent=m 
mz=Instance.new("SpecialMesh") 
mz.Scale=Vector3.new(.225,.25,.225) 
p.BrickColor=BrickColor.new("Bright yellow") 
p.Size=Vector3.new(1,1,1) 
p.CFrame=victim.Torso.CFrame+Vector3.new(math.random(-10,10),50,math.random(-10,10)) 
mz.Parent=p 
m.Parent=workspace 
b=Instance.new("BodyPosition") 
b.P=8000 
b.D=200 
b.maxForce=Vector3.new(5000,5000,5000)*50000000 
b.position=p.Position 
b.Parent=p 
coroutine.resume(coroutine.create(function(f) 
while f.Parent~=nil do 
f.BodyPosition.position=f.Position:Lerp(victim.Torso.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*2,.75) 
wait(.1) 
end 
end),p) 
m.Parent=victim 
p.Touched:connect(function(hit) 
if hit.Parent~=nil then 
if hit.Parent==victim then 
if d==true then  
d=false 
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-15 
hit.Parent.Torso.Velocity=Vector3.new(math.random(-5,5)/5,math.random(-5,5),math.random(-5,5)/5) 
hit.Parent.Torso.CFrame=hit.Parent.Torso.CFrame*CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(math.random(-20,20)/20,math.random(-20,20)/30,.01) 
hit.Parent.Humanoid.Jump=true 
wait(math.random(10,20)/5) 
d=true 
end 
end 
end 
end) 
wait() 
end
                        end))
                        end
elseif CurrentAmmo == "derp" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(0)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
if humm.Parent:findFirstChild("Torso")~=nil then
                        coroutine.resume(coroutine.create(function()
Headt=humm.Parent.Torso.Neck
LeftArmt=humm.Parent.Torso["Left Shoulder"]
RightArmt=humm.Parent.Torso["Right Shoulder"]
LeftLegt=humm.Parent.Torso["Left Hip"]
RightLegt=humm.Parent.Torso["Right Hip"]
derptable={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
pootisss=""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""
coroutine.resume(coroutine.create(function()
while true do
wait()
Headt.C0=Headt.C0*CFrame.fromEulerAnglesXYZ(0,0,0.5)
LeftArmt.C0=LeftArmt.C0*CFrame.fromEulerAnglesXYZ(0,0,0.5)
RightArmt.C0=RightArmt.C0*CFrame.fromEulerAnglesXYZ(0,0,0.5)
LeftLegt.C0=LeftLegt.C0*CFrame.fromEulerAnglesXYZ(0,0,0.5)
RightLegt.C0=RightLegt.C0*CFrame.fromEulerAnglesXYZ(0,0,0.5)
humm.Parent.Humanoid.PlatformStand=true
humm.Parent.Torso.RotVelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30)) 
pootisss=""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""..tostring(derptable[math.random(1,25)])..""
game:GetService("Chat"):Chat(humm.Parent,pootisss,1) 
end
end))
                        end))
                        end
elseif CurrentAmmo == "Troll" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(0)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
if humm.Parent:findFirstChild("Torso")~=nil then
                        coroutine.resume(coroutine.create(function()
c=humm.Parent:children()
for i=1,#c do
m=Instance.new("BlockMesh")
m.Parent=c[i]
m.Scale=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
coroutine.resume(coroutine.create(function(mesh) 
while true do
wait()
mesh.Scale=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
end
end),m)
end
                        end))
                        end
elseif CurrentAmmo == "suparKnockback" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(25)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true)  
end
local vel = Instance.new("BodyVelocity",humm.Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 5
vel.velocity = Vector3.new(0,1,0) + CFrame.new(Torso.Position,humm.Torso.Position).lookVector * 1000
coroutine.resume(coroutine.create(function()
wait() wait() wait() wait()
vel.Parent=nil
end))
elseif CurrentAmmo == "Knockback" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(0)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true)  
end
local vel = Instance.new("BodyVelocity",humm.Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 5
vel.velocity = Vector3.new(0,1,0) + CFrame.new(Torso.Position,humm.Torso.Position).lookVector * 10
coroutine.resume(coroutine.create(function()
wait() wait() wait() wait()
vel.Parent=nil
end))
returndmg()
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
effectsg.Material = "SmoothPlastic"
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
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=Instance.new("Part")
        S.Material = "SmoothPlastic"
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
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 14 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(1,1,1) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function shoottrail(mouse)
local p1 = (prt5.CFrame * CFrame.new(0,-prt5.Size.y/2,0)).p
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (p1-mouse.Hit.p).magnitude/100
local dir = CFrame.new((p1+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(p1,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.Material = "SmoothPlastic"
if poisoncounter==1 then
local derpsmoke=Instance.new("Smoke")
derpsmoke.Parent=effectsg
derpsmoke.Color=Color3.new(0,0,154)
--derpsmoke.Opacity=0.05
--derpsmoke.Size=0.5
end
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = ammotrail
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = p1
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-0.1),0,0)
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
EVENMOARMAGIX2(CFrame.new(newpos),1,1,1,0,0,0,0,0,0,BrickColor.new("Bright red")) 
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
ADmg(hum,hit,pos)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
attackdebounce=false
ADmg(hum,hit,pos)
end
end
end
function shoottrail2(mouse)
local p1 = (newprt5.CFrame * CFrame.new(0,-newprt5.Size.y/2,0)).p
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (p1-mouse.Hit.p).magnitude/100
local dir = CFrame.new((p1+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(p1,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
if poisoncounter==1 then
local derpsmoke=Instance.new("Smoke")
derpsmoke.Parent=effectsg
derpsmoke.Color=Color3.new(0,0,154)
--derpsmoke.Opacity=0.05
--derpsmoke.Size=0.5
end
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = ammotrail
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = p1
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-0.1),0,0)
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
EVENMOARMAGIX2(CFrame.new(newpos),1,1,1,0,0,0,0,0,0,BrickColor.new("Bright red")) 
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
ADmg(hum,hit,pos)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
attackdebounce=false
ADmg(hum,hit,pos)
end
end
end
function Melee()
attack=true
local wt,t = faketors()
w7.Part1 = t
w8.Part1 = t
w9.Part1 = t
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-15*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.25*i) * CFrame.Angles(math.rad(40+50*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.Part1=LeftArm
w1.C0 = CFrame.Angles(math.rad(-80), math.rad(-55+145*i), math.rad(90)) * CFrame.new(-1.3, 1, 0)
wt.C0 = CFrame.Angles(0, math.rad(100*i), 0) 
end
con1=prt5.Touched:connect(function(hit) 
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
con2=prt5.Touched:connect(function(hit) 
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
for i = 0 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+160*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-15), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.25) * CFrame.Angles(math.rad(40+50),math.rad(0),math.rad(25-50*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.Part1=LeftArm
w1.C0 = CFrame.Angles(math.rad(-80+80*i), math.rad(-55+145), math.rad(90)) * CFrame.new(-1.3+1*i, 1+1.5*i, 0)
wt.C0 = CFrame.Angles(0, math.rad(100-200*i), 0) 
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+150))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-15), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.25) * CFrame.Angles(math.rad(40+50),math.rad(0),math.rad(25-50-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.Part1=LeftArm
w1.C0 = CFrame.Angles(math.rad(-80+80), math.rad(-55+145), math.rad(90)) * CFrame.new(-1.3+1, 1+1.5, 0)
wt.C0 = CFrame.Angles(0, math.rad(100-200-10*i), 0) 
end
con1:disconnect()
con2:disconnect()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+150-150*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-15+15*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.25-0.25*i) * CFrame.Angles(math.rad(40+50-50*i),math.rad(0),math.rad(25-50-10+60*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.Part1=LeftArm
w1.C0 = CFrame.Angles(math.rad(-80+80-80*i), math.rad(-55+145-145*i), math.rad(90)) * CFrame.new(-1.3+1-1*i, 1+1.5-1.5*i, 0)
wt.C0 = CFrame.Angles(0, math.rad(100-200-10+110*i), 0) 
end
w1.Part1 = RAP
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, 0, 0) 
w7.Part1 = Torso
w8.Part1 = Torso
w9.Part1 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
t.Parent = nil
attack=false
end
function Ready(mouse)
if Ammo <= 0 then Reload() return end
attack = true
local wt,t = faketors()
w7.Part1 = t
w8.Part1 = t
w9.Part1 = t
Character.Humanoid.WalkSpeed = 5
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-15*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.25*i) * CFrame.Angles(math.rad(40+35*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(50*i), 0) 
end
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(10-10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.25+0.25*i) * CFrame.Angles(math.rad(75+20*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(50+10*i), 0) 
end
wait() wait()
repeat
poisoncounter=math.random(1,5)
wait()
as(Head,1)
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
local shellb1 = Instance.new("Part")
shellb1.material = "SmoothPlastic"
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((prt5.CFrame * CFrame.new(0,-prt5.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
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
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
coroutine.resume(coroutine.create(function()
shoottrail(mouse)
end))
if twobullets==true then
shoottrail(mouse)
end
end))
Ammo = Ammo - 1 
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-5*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0) * CFrame.Angles(math.rad(95+5*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(60), 0) 
end
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-5+5*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0) * CFrame.Angles(math.rad(100-5*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(60), 0) 
end
until not keyhold or Ammo <= 0
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(15*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.25*i) * CFrame.Angles(math.rad(95-25*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(60-60*i), 0) 
end
w7.Part1 = Torso
w8.Part1 = Torso
w9.Part1 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
t.Parent = nil
Character.Humanoid.WalkSpeed = 14
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(15+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.25-0.25*i) * CFrame.Angles(math.rad(70-30*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
end
wait(0.25)
attack = false
end
function GunzerkReady(mouse)
if Ammo <= 0 then Reload() return end
attack = true
Character.Humanoid.WalkSpeed = 5
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50+30*i),math.rad(0),math.rad(-5+3*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50+30*i),math.rad(0),math.rad(5-3*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50+30+10*i),math.rad(0),math.rad(-5+3+2*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50+30+10*i),math.rad(0),math.rad(5-3-2*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
wait() wait()
repeat 
wait()
coroutine.resume(coroutine.create(function()
if firingdebounce1==false then
firingdebounce1=true
poisoncounter=math.random(1,5)
wait()
as(Head,1)
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
local shellb1 = Instance.new("Part")
shellb1.Material = "SmoothPlastic"
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((prt5.CFrame * CFrame.new(0,-prt5.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
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
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
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
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90+10*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
end
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90+10-10*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
end
firingdebounce1=false
end
end))
coroutine.resume(coroutine.create(function()
if firingdebounce2==false then
firingdebounce2=true
poisoncounter=math.random(1,5)
wait(0.1)
as(Head,1)
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
local shellb1 = Instance.new("Part")
shellb1.Material = "SmoothPlastic"
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((newprt5.CFrame * CFrame.new(0,-newprt5.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
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
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
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
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90+10*i),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
for i = 0.5 , 1 , 0.5*attackspeed do
wait(0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90+10-10*i),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
firingdebounce2=false
end
end))
until not keyhold or Ammo <= 0 or GunzerkDuration==0
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-30*i),math.rad(0),math.rad(-3*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-30*i),math.rad(0),math.rad(3*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
Character.Humanoid.WalkSpeed = 14
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-30-10*i),math.rad(0),math.rad(-3-2*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-30-10*i),math.rad(0),math.rad(3+2*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
wait(0.25)
attack = false
end
function Reload()
attack = true
while buttonhold==true do
wait()
ars(Head,0.75)
for i = 0.1 , 1 , 0.1*reloadspeed do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-45*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(40-60*i),math.rad(0),math.rad(25-15*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90+90*i), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10*i),0,math.rad(-20*i))
end
for i = 0.2 , 1 , 0.2*reloadspeed do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-20+20*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20+40*i),math.rad(0),math.rad(10-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10+20*i),0,math.rad(-20))
end
for i = 0.2 , 1 , 0.2*reloadspeed do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40-5*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(20+80*i),math.rad(0),math.rad(45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(10+10*i),0,math.rad(-20+10*i))
end
AddAmmo(Ammoregen)
for i = 0.2 , 1 , 0.2*reloadspeed do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45+5*i), 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.rad(100-10*i),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(20+5*i),0,math.rad(-10+5*i))
end
for i = 0.1 , 1 , 0.1*reloadspeed do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45-15*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(50-25*i), 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5) * CFrame.Angles(math.rad(90-60*i),math.rad(0),math.rad(45-20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180-90*i), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(25-25*i),0,math.rad(-5+5*i))
end
Neck.C0 = neckcf0
end
attack = false
end
function Reload2()
attack=true
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5*i),0,math.rad(20*i))
end
derp=prt6:Clone()
prt6.Transparency=1
prt6.CanCollide=false
derp.Parent=workspace
derp.CFrame=prt6.CFrame
derp.CanCollide=true
coroutine.resume(coroutine.create(function(Part)
wait(5)
Part.CanCollide=false
wait(3)
Part.Parent=nil
end),derp)
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25+5*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-30*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5+5*i),0,math.rad(20))
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25+5), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-30-5*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5+5+5*i),0,math.rad(20))
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25+5+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(40+60-30-5-100*i),math.rad(0),math.rad(25-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5+5+5+10*i),0,math.rad(20+20*i))
end
derp2=prt6:Clone()
derp2.Parent=swordholder
derp2.Transparency=0
wldderp=Instance.new("Weld")
wldderp.Parent=derp
wldderp.Part0=derp2
wldderp.Part1=LeftArm
wldderp.C0=CFrame.Angles(math.rad(90),0,0)*CFrame.new(0,1,0)
for i = 0.1 , 1 , 0.1 do
wait()
wldderp.C0=CFrame.Angles(math.rad(90-5*i),0,0)*CFrame.new(0,1+0.1*i,0.2*i)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25+5+10-10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.5-0.5*i) * CFrame.Angles(math.rad(40+60-30-5-100+120*i),math.rad(0),math.rad(25-10+10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5+5+5+10-10*i),0,math.rad(20+20-20*i))
end
derp2.Parent=nil
prt6.Transparency=0
prt6.CanCollide=false
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10-10*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25+5+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-30-5-100+120-70*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(30*i), math.rad(0)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5+5+5),0,math.rad(20))
end
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90+30*i),math.rad(0),math.rad(-60+10-10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25+5+10), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-30-5-100+120-70+50*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(30), math.rad(0)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5+5+5-10*i),0,math.rad(20))
end
Ammo = MaxAmmo
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90+30-30*i),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(15+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(65-40*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(30-30*i), math.rad(0)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5-5*i),0,math.rad(20-20*i))
end
attack=false
end
function Gunzerker()
attack=true
Gunzerkering=true
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+60*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(40-60*i),math.rad(0),math.rad(25-25*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5*i),0,0)
end
newgun.Parent=workspace
newprt3.BrickColor=prt3.BrickColor
neww1.Parent=newprt1
neww2.Parent=newprt2
neww3.Parent=newprt3
neww4.Parent=newprt4
neww5.Parent=newprt5
neww6.Parent=newprt6
neww1.Part0 = newprt1
neww1.Part1 = LeftArm
neww1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
neww1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 1, 0)
print(newgun)
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90+10*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-25*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40-60+120*i),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5-10*i),0,0)
end
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90+10+10*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40-60+120+10*i),math.rad(0),math.rad(0))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5-10-5*i),0,0)
end
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(110-60*i),math.rad(0),math.rad(-5*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(110-60*i),math.rad(0),math.rad(5*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5-10-5+10*i),0,0)
end
attack=false
end
function ChangeAmmoAnim(ammo,trail,derpcol)
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5*i),0,0)
end
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-50*i),math.rad(0),math.rad(25+20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90+90*i), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20*i),0,0)
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5+5*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-50+50*i),math.rad(0),math.rad(25+20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20-10*i),0,0)
end
derpd=prt3:Clone()
derpd.Parent=swordholder
derpd.Transparency=0
derpdw=Instance.new("Weld")
derpdw.Parent=swordholder
derpdw.Part0=derpd
derpdw.Part1=LeftArm
derpdw.C0=CFrame.Angles(math.rad(90),math.rad(-30),0)*CFrame.new(-0.4,0.8,0)
prt3.Transparency=1
wait(0.1)
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5+5+5*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(40+60-50+50+10*i),math.rad(0),math.rad(25+20-30*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20-10-5*i),0,0)
derpdw.C0=CFrame.Angles(math.rad(90),math.rad(-30+30*i),0)*CFrame.new(-0.4+0.4*i,0.8+0.2*i,0)
end
for i = 0.1 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5+5+5), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40+60-50+50+10-140*i),math.rad(0),math.rad(25+20-30))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20-10-5+30*i),0,math.rad(20*i))
derpdw.C0=CFrame.Angles(math.rad(90),math.rad(0),0)*CFrame.new(0,1,0)
end
CurrentAmmo = ammo
ammotrail = BrickColor.new(trail)
derpd.BrickColor=BrickColor.new(derpcol)
prt3.BrickColor=BrickColor.new(derpcol)
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5+5+5), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40+60-50+50+10-140+140*i),math.rad(0),math.rad(25+20-30+30*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20-10-5+30-30*i),0,math.rad(20-20*i))
derpdw.C0=CFrame.Angles(math.rad(90),math.rad(0),0)*CFrame.new(0,1,0)
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5+5+5-5*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(40+60-50+50+10-10*i),math.rad(0),math.rad(25+20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20-10-5+5*i),0,0)
derpdw.C0=CFrame.Angles(math.rad(90),math.rad(-30*i),0)*CFrame.new(-0.4*i,1-0.2*i,0)
end
prt3.Transparency=0
derpd.Parent=nil
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5+5+5-5-5*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-50+50-60*i),math.rad(0),math.rad(25+20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20-10+10*i),0,0)
end
for i = 0.1 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+5+5+5-5-5-5*i), 0, 0)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i, 0.5, -0.5) * CFrame.Angles(math.rad(40+60*i),math.rad(0),math.rad(25+20-20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(180-90*i), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+20-20*i),0,0)
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60+10-10*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-10+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40+60-60*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-5+5*i),0,0)
end
end
function NormalAmmo()
attack = true
ChangeAmmoAnim("Normal","White","White")
attack = false
end
function PoisonAmmo()
attack = true
ChangeAmmoAnim("Poison","Bright violet","Bright violet")
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.25+0.75*math.random())
if Ammo ~= 0 then
local meshb1 = Instance.new("SpecialMesh")
meshb1.Scale = Vector3.new(1,1,1)
meshb1.MeshType = "Sphere"
local shellb1 = Instance.new("Part")
shellb1.Material = "SmoothPlastic"
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3)
shellb1.CFrame = CFrame.new((prt5.CFrame * CFrame.new(0,-prt5.Size.y/2,0)).p)
shellb1.Parent = swordholder
shellb1.Transparency = 0
shellb1.BrickColor = BrickColor.new("Alder")
shellb1.CanCollide = false
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Vector3.new(0,-0.15,0)
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1,1+3*i,1)
end
shellb1.Parent=nil
end
until CurrentAmmo ~= "Poison"
end))
end
function KBAmmo()
attack = true
ChangeAmmoAnim("Knockback","Black","Black")
attack = false
end
function ExplodeAmmo()
attack = true
ChangeAmmoAnim("Explosion","Bright red","Bright red")
attack = false
end
function HerpAmmo()
attack = true
ChangeAmmoAnim("Herpity","White","Really red")
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait()
ammotrail = BrickColor:random()
until CurrentAmmo ~= "Herpity"
end))
end
function suparKnockbackAmmo()
attack = true
ChangeAmmoAnim("suparKnockback","White","Really blue")
CurrentAmmo = "suparKnockback"
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait()
ammotrail = BrickColor:random()
until CurrentAmmo ~= "suparKnockback"
end))
end
function BeesAmmo()
attack = true
ChangeAmmoAnim("Bees","White","New Yeller")
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait()
ammotrail = BrickColor:random()
until CurrentAmmo ~= "Bees"
end))
end
function derpAmmo()
attack = true
ChangeAmmoAnim("derp","White","Bright green")
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait()
ammotrail = BrickColor:random()
until CurrentAmmo ~= "derp"
end))
end
function TrollAmmo()
attack = true
ChangeAmmoAnim("Troll","White","Cyan")
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait()
ammotrail = BrickColor:random()
until CurrentAmmo ~= "Troll"
end))
end
function AimedReady(mouse)
if Ammo <= 0 then Reload() return end
attack = true
local wt,t = faketors()
w7.Part1 = t
w8.Part1 = t
w9.Part1 = t
Character.Humanoid.WalkSpeed = 5
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25-15*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5+0.25*i) * CFrame.Angles(math.rad(40+35*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(50*i), 0) 
Neck.C0 = neckcf0 * CFrame.Angles(0,math.rad(-20*i),0)
end
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(10-10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.25+0.25*i) * CFrame.Angles(math.rad(75+20*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(50+10*i), 0) 
end
wait() wait()
local orispread = spread
spread = 0
repeat
poisoncounter=math.random(1,5)
wait(0.5)
as(Head,1)
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
local shellb1 = Instance.new("Part")
shellb1.Material = "SmoothPlastic"
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((prt5.CFrame * CFrame.new(0,-prt5.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
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
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
shoottrail(mouse)
end))
Ammo = Ammo - 1 
for i = 0.5 , 1 , 0.5 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-5*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0) * CFrame.Angles(math.rad(95+5*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(60), 0) 
Neck.C0 = neckcf0 * CFrame.Angles(0,math.rad(-20+5*i),0)
end
for i = 0.5 , 1 , 0.5 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-5+5*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0) * CFrame.Angles(math.rad(100-5*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(60), 0) 
Neck.C0 = neckcf0 * CFrame.Angles(0,math.rad(-15-5*i),0)
end
until not buttonhold or Ammo <= 0
spread = orispread
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(15*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.25*i) * CFrame.Angles(math.rad(95-25*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(60-60*i), 0) 
Neck.C0 = neckcf0 * CFrame.Angles(0,math.rad(-20+20*i),0)
end
w7.Part1 = Torso
w8.Part1 = Torso
w9.Part1 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
t.Parent = nil
Character.Humanoid.WalkSpeed = 14
for i = 0.2 , 1 , 0.2 do
wait(0)
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(15+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.25-0.25*i) * CFrame.Angles(math.rad(70-30*i),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
end
wait(0.25)
attack = false
end
function returnwelds()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.25,-0.5)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
Neck.C0 = neckcf0
end
keyhold = false
function ob1d(mouse) 
hold = true 
if attack then return end
keyhold = true
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
if key=="h" and GunzerkDuration==1000 then
Gunzerker()
coroutine.resume(coroutine.create(function()
while GunzerkDuration~=0 do
wait(0)
GunzerkDuration=GunzerkDuration-2
end
Gunzerkering=false
while attack==true do
wait()
end
newgun.Parent=nil
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(25), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(25))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(0),0,0)
wait()
while GunzerkDuration~=1000 and Gunzerkering==false do
wait()
GunzerkDuration=GunzerkDuration+2
end
end))
end
if Gunzerkering~=true then
if key == "f" then
if Ammo~=MaxAmmo then
Reload2()
end
end
if key == "q" then
buttonhold = true
AimedReady(mouse)
end
if key == "g" then
Melee()
end
if key == "e" then
NormalAmmo()
end
if key == "r" then
PoisonAmmo()
end
if key == "t" then
KBAmmo()
end
if key == "y" then
ExplodeAmmo()
end
--[[DERP AMMO]]--
if key == "z" then
HerpAmmo()
end
if key == "x" then
suparKnockbackAmmo()
end
if key == "c" then
TrollAmmo()
end
if key == "v" then
derpAmmo()
end
if key=="b" then
BeesAmmo()
end
end
end
function key2(key) 
if key == "f" or key == "q" then
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
local SG = Instance.new("ScreenGui",PlayerGui)
SG.Name = "AmmoMeter"
local frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.1,0)
frame.Position = UDim2.new(0.5-0.1,0,0.05,0)
frame.BackgroundColor3 = BrickColor.new("Brown").Color
local Ammotext = Instance.new("TextLabel",frame)
Ammotext.Size = UDim2.new(1,0,0.35,0)
Ammotext.BackgroundTransparency = 1
Ammotext.Text = "Ammo"
Ammotext.FontSize = "Size10"
Ammotext.TextColor3 = BrickColor.new("White").Color
local backing = Instance.new("ImageLabel",frame)
backing.Size = UDim2.new(0.8,0,0.2,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.3,0)
backing.BackgroundColor3 = BrickColor.new("Black").Color
local img = Instance.new("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = BrickColor.new("Brown").Color
local percent = Instance.new("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("White").Color
percent.Text = Ammo.."/".. MaxAmmo
percent.FontSize = "Size10"
local Gunzerktext = Instance.new("TextLabel",frame)
Gunzerktext.Size = UDim2.new(1,0,1.2,0)
Gunzerktext.BackgroundTransparency = 1
Gunzerktext.Text = "Gunzerk Duration"
Gunzerktext.FontSize = "Size10"
Gunzerktext.TextColor3 = BrickColor.new("White").Color
local Gunzerkbacking = Instance.new("ImageLabel",frame)
Gunzerkbacking.Size = UDim2.new(0.8,0,0.2,0)
Gunzerkbacking.Image = "http://www.roblox.com/asset/?id=48965808"
Gunzerkbacking.Position = UDim2.new(0.1,0,0.75,0)
Gunzerkbacking.BackgroundColor3 = BrickColor.new("Black").Color
local Gunzerkimg = Instance.new("ImageLabel",Gunzerkbacking)
Gunzerkimg.Size = UDim2.new(1,0,1,0)
Gunzerkimg.Image = "http://www.roblox.com/asset/?id=48965808"
Gunzerkimg.Position = UDim2.new(0,0,0,0)
Gunzerkimg.BackgroundColor3 = BrickColor.new("Brown").Color
local currentam = Instance.new("TextLabel",frame)
currentam.Size = UDim2.new(0.5,0,0.25,0)
currentam.Position = UDim2.new(0,0,1,0)
currentam.BackgroundTransparency = 0
currentam.BackgroundColor3 = BrickColor.new("Brown").Color
currentam.TextColor3 = BrickColor.new("White").Color
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
coroutine.resume(coroutine.create(function()
swordholder.Parent = workspace
for i=0,9999999999 do
wait()
if swordholder.Parent==nil then
wait(0.3)
swordholder.Parent = workspace
prt1.Parent = swordholder 
prt2.Parent = swordholder 
prt3.Parent = swordholder 
prt4.Parent = swordholder 
prt5.Parent = swordholder 
prt6.Parent = swordholder 
prt7.Parent = swordholder 
prt8.Parent = swordholder 
prt9.Parent = swordholder 
w1.Parent=prt1
w2.Parent=prt2
w3.Parent=prt3
w4.Parent=prt4
w5.Parent=prt5
w6.Parent=prt6
w7.Parent=prt7
w8.Parent=prt8
w9.Parent=prt9
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
end))
Character.Humanoid.WalkSpeed = 14
-- mediafire

