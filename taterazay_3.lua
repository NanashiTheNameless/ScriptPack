--[[                                              
                                              ]]

Player = game:GetService("Players").LocalPlayer
local unlocks = Instance.new("StringValue")
unlocks.Name = "Unlocks"
unlocks.Parent = Player 
unlocks.Value = "Rage Slash Combo"
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
Rage = 0
MaxRage = 200
mindamage = 200
maxdamage = 200
crtmaxdamage = 200
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
if (string.match(Player.Unlocks.Value,"Taterazay Crit Plus") ~= nil) then
crtrate = 100/10
else
crtrate = 100/10
end
--100%/critpercentage
blockpower = 3
oblkbrkr = 1
blockbreaker = oblkbrkr
handlecolor = BrickColor.new("Hot pink")
bcolor = BrickColor.new("Hot pink")
gemcolor = BrickColor.new("Royal purple")
ToolName = "Taterazay"
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
blk = Instance.new("BoolValue",Character)
blk.Name = "Block"
blk.Value = false
blkc = Instance.new("IntValue",blk)
blkc.Name = "BlockPower"
blkc.Value = blockpower
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
local msh1 = Instance.new("BlockMesh")
msh1.Scale = Vector3.new(1,1,1)
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(1,1,1)
local msh3 = Instance.new("BlockMesh")
msh3.Scale = Vector3.new(1.01,1.01,1.01)
local msh4 = Instance.new("BlockMesh")
msh4.Scale = Vector3.new(1,0.75,1)
msh4.Offset = Vector3.new(0,0.5,0)
local msh6 = Instance.new("SpecialMesh")
msh6.MeshType = "Sphere"
local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.3,1.5,0.3)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "Handle2"
prt2.Locked = true
prt2.Size = Vector3.new(0.8,0.2,0.8)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = handlecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "HandlePart"
prt3.Locked = true
prt3.Size = Vector3.new(0.3,1,0.3)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = gemcolor
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "Blade"
prt4.Locked = true
prt4.Size = Vector3.new(0.5,4,0.2)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.Reflectance = 0.25
prt4.BrickColor = bcolor
local prt5 = Instance.new("WedgePart")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "BladeTip"
prt5.Locked = true
prt5.Size = Vector3.new(0.2,1,0.5)
prt5.Parent = swordholder
prt5.Reflectance = 0.25
prt5.BrickColor = bcolor
local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "HandlePart2"
prt6.Locked = true
prt6.Size = Vector3.new(0.5,0.5,0.5)
prt6.Parent = swordholder
prt6.BrickColor = handlecolor
msh6.Parent = prt6
local msh7 = Instance.new("BlockMesh")
local msh8 = Instance.new("BlockMesh")
msh8.Scale = Vector3.new(1.1,0.9,1.1)
local msh9 = Instance.new("CylinderMesh")
msh9.Scale = Vector3.new(1,1,1)
local msh10 = Instance.new("CylinderMesh")
msh10.Scale = Vector3.new(1,1,1)
local msh11 = Instance.new("CylinderMesh")
msh11.Scale = Vector3.new(1,1,1)
---Shield
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "Shield"
prt7.Locked = true
prt7.Size = Vector3.new(3.5,0.2,2)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = bcolor
prt7.Reflectance = 0.25
local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "ShieldOutline"
prt8.Locked = true
prt8.Size = prt7.Size
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor
local prt9 = Instance.new("Part")
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "ShieldDesign"
prt9.Locked = true
prt9.Size = Vector3.new(0.5,0.2,0.5)
prt9.Parent = swordholder
msh9.Parent = prt9
prt9.BrickColor = gemcolor
local prt10 = Instance.new("Part")
prt10.formFactor = 3
prt10.CanCollide = false
prt10.Name = "ShieldDesign"
prt10.Locked = true
prt10.Size = Vector3.new(0.5,0.2,0.5)
prt10.Parent = swordholder
msh10.Parent = prt10
prt10.BrickColor = gemcolor
local prt11 = Instance.new("Part")
prt11.formFactor = 3
prt11.CanCollide = false
prt11.Name = "ShieldDesign"
prt11.Locked = true
prt11.Size = Vector3.new(0.5,0.2,0.5)
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
w2.C0 = CFrame.new(0, 0.75,0) * CFrame.Angles(0, 0, 0)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4.C0 = CFrame.new(0, 0.75+prt4.Size.y/2,0) * CFrame.Angles(0, 0, 0)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.Angles(math.rad(180), math.rad(-90), 0) * CFrame.new(0, 1.25+prt4.Size.y*0.75,0)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w6.C0 = CFrame.new(0, -0.85,0) * CFrame.Angles(0, 0, 0)
--Shield weld
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = LeftArm
w7.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w7.C0 = CFrame.new(0, 0.5,0) * CFrame.Angles(math.rad(90), math.rad(90), 0)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt7
w8.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w8.C0 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = prt7
w9.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w9.C0 = CFrame.new(0.5, 0.005,0.5) * CFrame.Angles(0, 0, 0)
local w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt7
w10.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w10.C0 = CFrame.new(0.5, 0.005,-0.5) * CFrame.Angles(0, 0, 0)
local w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = prt7
w11.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w11.C0 = CFrame.new(-0.5, 0.005,0) * CFrame.Angles(0, 0, 0)
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
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(180), math.rad(35)) * CFrame.new(-1, -1.5, -0.6)
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
for i = 0 , 1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45+155*i),math.rad(45+15*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45-45*i),math.rad(-45+45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
end
LWRem()        
unequipweld()
for i = 0 , 1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200-200*i),math.rad(60-60*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
RWRem()
attack = false
end
function equipanim()
attack = true
RWFunc()
for i = 0 , 1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200*i),math.rad(60*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
equipweld()
LWFunc()
uss(Head,1)
for i = 0 , 1 ,0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200-110*i),math.rad(60-15*i),math.rad(45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45*i),math.rad(-45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
end
for i = 0 , 1 ,0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(45),math.rad(45-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
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
    pa.BrickColor = BrickColor.new("Royal purple")
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
AddRage(5) 
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
AddRage(rndmdamage/2)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
AddRage(rndmdamage/2)
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
AddRage(5) 
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
AddRage(rndmdamage/2)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
AddRage(rndmdamage/2)
end
Hitdeb = 1
end
end
function OTNR(hit) --No rage Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hit.Parent:findFirstChild("Block") ~= nil then 
if hit.Parent.Block.Value then 
damagesplat(0,hum.Torso,false,true)
AddRage(5) 
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
local rndmdamage = math.random(mindamage,maxdamage) + bonusdmg
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage) + bonusdmg
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
function shldcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt7.Touched:connect(OT2)
end
function nrdmgcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt4.Touched:connect(OTNR)
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
local bl = false
local bll = false
function Guard()
attack = true
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(45-90*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+1*i, 0.5, -1*i) * CFrame.Angles(math.rad(45+45*i),math.rad(-45+45*i),math.rad(90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
blk.Value = true
ms(Head,1.5)
repeat 
wait(0.1) 
until not buttonhold or not blk.Value
blk.Value = false
if blkc.Value < 1 then
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
uss(Head,0.5)
bll = true
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(45*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(45*i), 0) 
end
if bl then
Rage = Rage - 20
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+135*i),math.rad(-45-45*i),math.rad(45-45*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90*i), 0, 0)
LW.C0 = CFrame.new(-0.5-1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(90-135*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45-45*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(45-45*i), 0) 
end 
dmgcnnct()
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(90-20*i),math.rad(-90),math.rad(0)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90+180*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-90*i), 0) 
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end 
for i = 0 , 1 , 0.4 do
wait()
RW.C0 = CFrame.new(0.5, 0.5, -1) * CFrame.Angles(math.rad(70),math.rad(-90),math.rad(0)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(90+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-90-10*i), 0) 
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end 
dmgdc()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(70-25*i),math.rad(-90+135*i),math.rad(0)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-100*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(-45+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-100+100*i), 0) 
end 
end
if not bl then
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(45+20*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45+20*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(45+20*i), 0) 
end 
wait()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45+90*i),math.rad(65-65*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5-1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(90-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(65-65*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(65-65*i), 0) 
end 
end
bll = false
RHL.Part0 = Torso
LHL.Part0 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
T.Parent = nil
Torso.Transparency = 0
elseif blkc.Value >= 1 then
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45+90*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5-1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(90-90*i))
end
end
blkc.Value = blockpower
attack = false
bl = false
bll = false
end
function Slash1()
attack = true
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45+90*i),math.rad(45-90*i),math.rad(45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
dmgcnnct()
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(135-135*i),math.rad(-45+90*i),math.rad(45-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
atktype(1,2)
attack = false
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(45*i),math.rad(45),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
end
function Slash2()
attack = true
ss(Head,2)
for i = 0 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(0.5, 0.5, -1) * CFrame.Angles(math.rad(90*i),math.rad(45+45*i),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(-45+90*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
dmgcnnct()
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45+180*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
atktype(1,3)
attack = false
for i = 0 , 1 , 0.2 do
if attack then return end
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(135+20*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(90-45*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(155-155*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(45-90*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
end
function Slash3()
attack = true
ss(Head,1.5)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-135*i),math.rad(90-135*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(155-155*i), 0, 0)
LW.C0 = CFrame.new(-1.5+1.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(-45+135*i),math.rad(45-45*i),math.rad(90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
shldcnnct()
LastPoint = LeftArm.CFrame * CFrame.new(0,LeftArm.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90-180*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = LeftArm.CFrame * CFrame.new(0,LeftArm.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90-20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = LeftArm.CFrame * CFrame.new(0,LeftArm.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45+90*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(-110+110*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
attack = false
end
function Powerslash()
if Rage < 15 then return end
Rage = Rage - 15
attack = true
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5+1*i, -0.5*i) * CFrame.Angles(math.rad(45+90*i),math.rad(45-45*i),math.rad(-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5+1*i, -0.5*i) * CFrame.Angles(math.rad(45+90*i),math.rad(-45+45*i),math.rad(45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90-45*i)) * CFrame.new(0, 0, 0)
end
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
subdmg(-10)
nrdmgcnnct()
ms(Head,0.5)
for i = 0 , 1 , 0.2 do 
wait()
RW.C0 = CFrame.new(1, 1.5-1*i, -0.5-0.5*i) * CFrame.Angles(math.rad(135-90*i),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 1.5-1*i, -0.5-0.5*i) * CFrame.Angles(math.rad(135-90*i),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(90*i), math.rad(45)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Royal purple",0.5,LastPoint,Point)
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = CFrame.new(LastPoint.p,Point.p) * CFrame.Angles(math.rad(90),0,0)
shell.Parent = swordholder
shell.Transparency = 1
shell.Reflectance = 0.2
shell.BrickColor = BrickColor.new("Royal purple")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
mesh.Scale = Vector3.new(1+0.5*i,1+0.5*i,1+0.5*i)
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
mesh.Scale = Vector3.new(1.5+1*i,1.5+1*i,1.5+1*i)
end
shell.Parent = nil
end))
LastPoint = Point
end
dmgdc()
returndmg()
wait(0.15)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5,-1+1*i) * CFrame.Angles(math.rad(45),math.rad(45*i),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(45),math.rad(-45*i),math.rad(45-45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(90-90*i), math.rad(45+45*i)) * CFrame.new(0, 0, 0)
end
attack = false
end
function Upperslash()
if Rage < 25 then return end
Rage = Rage - 25
attack = true
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
local LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 ,1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(45-45*i),math.rad(45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45+45*i),math.rad(-45+45*i),math.rad(45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90+180*i)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0,math.rad(45*i),0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
-- 
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = CFrame.new(LastPoint.p,Point.p) * CFrame.Angles(math.rad(90),0,0)
shell.Parent = swordholder
shell.Transparency = 1
shell.Reflectance = 0.2
shell.BrickColor = BrickColor.new("Royal purple")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
mesh.Scale = Vector3.new(1+0.5*i,1+0.5*i,1+0.5*i)
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
mesh.Scale = Vector3.new(1.5+1*i,1.5+1*i,1.5+1*i)
end
shell.Parent = nil
end))
--
LastPoint = Point
end
local HIT = false
local humh = nil
local conn = prt4.Touched:connect(function(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hum.Health <= 0 then return end
humh = hum
HIT = true
local vel = Instance.new("BodyVelocity",hum.Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,75,0) + CFrame.new(Torso.Position,hum.Torso.Position).lookVector * 10
coroutine.resume(coroutine.create(function()
wait(0.2)
vel.Parent=nil
end))
end
end)
subdmg(-20)
nrdmgcnnct()
ss(Head,2)
wait(0.1)
for i = 0 ,1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(-45+180*i),math.rad(0),math.rad(45-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-135*i),math.rad(0),math.rad(45-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(270)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0,math.rad(45-90*i),0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
--
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = CFrame.new(LastPoint.p,Point.p) * CFrame.Angles(math.rad(90),0,0)
shell.Parent = swordholder
shell.Transparency = 1
shell.Reflectance = 0.2
shell.BrickColor = BrickColor.new("Royal purple")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
mesh.Scale = Vector3.new(1+0.5*i,1+0.5*i,1+0.5*i)
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
mesh.Scale = Vector3.new(1.5+1*i,1.5+1*i,1.5+1*i)
end
shell.Parent = nil
end))
--
LastPoint = Point
end
dmgdc()
returndmg()
conn:disconnect()
for i = 0 ,1 , 0.1 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(135-90*i),math.rad(45*i),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45*i),math.rad(-45+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(270-180*i)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0,math.rad(-45+45*i),0)
end
RHL.Part0 = Torso
LHL.Part0 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
T.Parent = nil
Torso.Transparency = 0
wait(0.1)
attack = false
end
function RageSlash1()
if Rage < 10 then return end
Rage = Rage - 10
attack = true
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(45+45*i),math.rad(45+25*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(-45+45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
subdmg(-5)
nrdmgcnnct()
local hit,pos = rayCast(Torso.Position,Torso.CFrame.lookVector,20,Character) 
local vel = Instance.new("BodyPosition",Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 2
vel.position = pos
coroutine.resume(coroutine.create(function()
wait(0.075)
vel.Parent=nil
end))
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(70),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90+180*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(0),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(70),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(90+20*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(0),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Alder",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
returndmg()
wait(0.1)
atktype(1,4)
attack = false
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(70-25*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(110-110*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
end
function RageSlash2()
if Rage < 10 then return end
Rage = Rage - 10
attack = true
ss(Head,1)
local trscf = Torso.CFrame
local vel = Instance.new("BodyAngularVelocity",Torso)
vel.maxTorque = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 4
vel.angularvelocity = Vector3.new(0,20,0)
nrdmgcnnct()
for i = 0 , 1 , 0.1 do 
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(70-70*i),math.rad(90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(110-110*i), math.rad(90*i), 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+135*i),math.rad(0),math.rad(-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
rptddmg(vel.Parent,nil,0.75)
repeat
Rage = Rage - 10
wait(1)
until Rage < 20
dmgdc()
wait(0.1)
vel.Parent = nil
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(45*i),math.rad(90-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90-90*i), 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(-90+90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
attack = false
end
function returnwelds()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(45),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
end
function ob1d(mouse) 
hold = true 
if bll and Rage > 10 then
bl = true
end
if attack then return end
if attacktype == 1 then
Slash1()
elseif attacktype == 2 then
Slash2()
elseif attacktype == 3 then
Slash3()
end
end 
function ob1u(mouse)  
end 
buttonhold = false
function key(key)
if attack then return end
if key == "f" then
buttonhold = true
Guard()
end
if key == "q" then
Powerslash()
end
if key == "e" then
Upperslash()
end
if key == "r" and (string.match(Player.Unlocks.Value,"Rage Slash Combo") ~= nil) then
if attacktype == 1 then
RageSlash1()
elseif attacktype == 4 then
RageSlash2()
end
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
mouse.KeyDown:connect(key) 
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
if PlayerGui:findFirstChild("RageMeter") ~= nil then
PlayerGui:findFirstChild("RageMeter").Parent = nil
end
local fullrage = false
coroutine.resume(coroutine.create(function()
local SG = Instance.new("ScreenGui",PlayerGui)
SG.Name = "RageMeter"
local frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.1,0)
frame.Position = UDim2.new(0.5-0.1,0,0.05,0)
frame.BackgroundColor3 = BrickColor.new("Royal purple").Color
local ragetext = Instance.new("TextLabel",frame)
ragetext.Size = UDim2.new(1,0,0.35,0)
ragetext.BackgroundTransparency = 1
ragetext.Text = "Rage"
ragetext.FontSize = "Size18"
local backing = Instance.new("ImageLabel",frame)
backing.Size = UDim2.new(0.8,0,0.45,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.45,0)
backing.BackgroundColor3 = BrickColor.new("Alder").Color
local img = Instance.new("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = Color3.new(0.7,0.15,0.1) --BrickColor.new("Royal purple").Color
local percent = Instance.new("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("Alder").Color
percent.Text = math.floor((Rage/MaxRage)*100).."%"
percent.FontSize = "Size18"
local frame2 = Instance.new("Frame",frame)
frame2.Size = UDim2.new(1,0,0.5,0)
frame2.Position = UDim2.new(0,0,-0.5,0)
frame2.BackgroundTransparency = 1
local function updateblk()
for i,z in pairs(frame2:GetChildren()) do
z.Parent = nil
end
for i = 1,blkc.Value do
local gimg = Instance.new("ImageLabel",frame2)
gimg.Size = UDim2.new(0.125,0,0.5,0)
gimg.Image = "http://www.roblox.com/asset/?id=48908046"
local ii = 1
if i <= 10 then
ii = 1
elseif i > 10 then
ii = 0
i = i - 10
end
gimg.Position = UDim2.new((0.1*i)-0.1075,0,0.5*ii,0)
gimg.BackgroundTransparency = 1
end
end
repeat
wait()
pcall(function()
updateblk()
img.Size = UDim2.new(1*(Rage/MaxRage),0,1,0)
percent.Text = math.floor((Rage/MaxRage)*100).."%"
if math.floor((Rage/MaxRage)*100) > 99 then
coroutine.resume(coroutine.create(function()
if not fullrage then
bs(Head,1.1)
fullrage = true
Character.Humanoid.WalkSpeed = 30
repeat
for i = 0 , 1 , 0.1 do
wait()
img.BackgroundColor3 = Color3.new(0.7+0.3*i,0.15+0.5*i,0.1+0.5*i)
end
for i = 0 , 1 , 0.1 do
wait()
img.BackgroundColor3 = Color3.new(1-0.75*i,0.65-0.65*i,0.6-0.6*i)
end
for i = 0 , 1 , 0.1 do
wait()
img.BackgroundColor3 = Color3.new(0.25+0.45*i,0.15*i,0.1*i)
end
until math.floor((Rage/MaxRage)*100) < 100
fullrage = false
Character.Humanoid.WalkSpeed = 20
end
end))
end
end)
until SG.Parent == nil
end))
Character.Humanoid.WalkSpeed = 20

--mediafire