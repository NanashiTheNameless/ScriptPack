Player = game:GetService("Players").LocalPlayer ---No name needed--
local unlocks = Instance.new("StringValue")
unlocks.Name = "Unlocks"
unlocks.Parent = Player
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
if (string.match(Player.Unlocks.Value,"Dalahara Mana+") ~= nil) then
Mana = 250
MaxMana = 250
else
Mana = 150
MaxMana = 150
end
mindamage = 20
maxdamage = 40
crtmaxdamage = 69
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
crtrate = 100/5
--100%/critpercentage
 
 
oblkbrkr = 0
blockbreaker = oblkbrkr
 
if (string.match(Player.Unlocks.Value,"Dalahara ManaCharge +") ~= nil) then
manaregen = 2
else
manaregen = 1
end
if (string.match(Player.Unlocks.Value,"Dalahara Heal+") ~= nil) then
HealPower = 5
else
HealPower = 3
end
handlecolor = BrickColor.new("White")
bcolor = BrickColor.new("Bright blue")
gemcolor = BrickColor.new("Mid gray")
 
ToolName = "Dalahara"
 
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
local msh3 = Instance.new("SpecialMesh")
msh3.Scale = Vector3.new(1,1,1)
msh3.MeshId = "http://www.roblox.com/asset/?id=3270017"
local msh5 = Instance.new("SpecialMesh")
msh5.Scale = Vector3.new(0.5,5,0.5)
msh5.MeshId = "http://www.roblox.com/asset/?id=1051557"
 
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
prt2.Size = Vector3.new(0.5,0.2,0.5)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = handlecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "Ring1"
prt3.Locked = true
prt3.Size = Vector3.new(0.2,0.2,0.2)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = bcolor
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "Wrap"
prt5.Locked = true
prt5.Size = Vector3.new(0.2,0.2,0.2)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = bcolor
 
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
w3.C0 = CFrame.new(0, 3.1,0) * CFrame.Angles(0, 0, 0)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, math.rad(0)) * CFrame.new(0,0,0)
 
for i = 0 , 4 do
local msh4 = Instance.new("SpecialMesh")
msh4.Scale = Vector3.new(0.55,0.55,1)
msh4.MeshId = "http://www.roblox.com/asset/?id=3270017"
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "Ring2"
prt4.Locked = true
prt4.Size = Vector3.new(0.2,0.2,0.2)
prt4.Parent = swordholder
msh4.Parent = prt4
if math.fmod(i,2) == 0 then
prt4.BrickColor = handlecolor
else
prt4.BrickColor = bcolor
end
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt3
w4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4.C0 = CFrame.new(0.8, 0,0) * CFrame.Angles(0, 0, math.rad((-i*45))) * CFrame.new(0,0,0)
end
 
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
function is(parent,p) --Ice Sound
 
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\ice2.ogg"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function hs(parent,p) --Heal Sound
 
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101144"
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
 
function OT2(hit) --StealHP Damage
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
Character.Humanoid:TakeDamage(-rndmdamage)
if game.Players:findFirstChild(hit.Parent.Name) ~= nil then
local plyr = game.Players[hit.Parent.Name]
if plyr:findFirstChild("Class") ~= nil then
if plyr.Class.Value == "Magic" then
AddMana(math.floor(rndmdamage/2)) 
end
end
end
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
Character.Humanoid:TakeDamage(-rndmdamage)
if game.Players:findFirstChild(hit.Parent.Name) ~= nil then
local plyr = game.Players[hit.Parent.Name]
if plyr:findFirstChild("Class") ~= nil then
if plyr.Class.Value == "Magic" then
AddMana(math.floor(rndmdamage/2))
end
end
end
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
 
function dmg2cnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt1.Touched:connect(OT2)
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
prcntdmg(50)
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
 
function Heal(mouse)
local target = nil
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local mag = (head.Position - mouse.Hit.p).magnitude;
                if mag <= 10 and c[i].Name ~= Character.Name then
                local foundd = false
                for ii = 1 , #AoETrue do
                if AoETrue[ii] == c[i].Name then
                foundd = true
                end
                end
                if foundd then
                end
                --
                if not foundd and target == nil then
                if game.Players:findFirstChild(c[i].Name) ~= nil then
                local plyr  = game.Players[c[i].Name]
                if plyr.TeamColor == Player.TeamColor and plyr.Neutral == false  then
                target = c[i]
                elseif plyr.Neutral == true then
                target = c[i]
                end
                elseif game.Players:findFirstChild(c[i].Name) == nil then
                target = c[i]
                end
                end
                end
                end
                end
        end
if target == nil then return end
if (Torso.Position-target.Torso.Position).magnitude > 75 then return end
attack = true
for i = 0.1 ,1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90+45*i),math.rad(0),math.rad(-65+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20-30*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
 
local msh1z = Instance.new("CylinderMesh")
local prt1z = Instance.new("Part")
prt1z.formFactor = 3
prt1z.Name = "HealRay"
prt1z.Locked = true 
prt1z.Size = Vector3.new(0.2,0.2,0.2)
prt1z.Parent = swordholder
msh1z.Parent = prt1z
prt1z.BrickColor = BrickColor.new("White")
prt1z.CanCollide = false
prt1z.Anchored = true
local msh2z = Instance.new("CylinderMesh")
local prt2z = Instance.new("Part")
prt2z.formFactor = 3
prt2z.Name = "HealRay"
prt2z.Locked = true 
prt2z.Size = Vector3.new(0.2,0.2,0.2)
prt2z.Parent = swordholder
msh2z.Parent = prt2z
prt2z.BrickColor = BrickColor.new("White") 
prt2z.CanCollide = false
prt2z.Anchored = true
local msh3z = Instance.new("CylinderMesh")
local prt3z = Instance.new("Part")
prt3z.formFactor = 3
prt3z.Name = "HealRay"
prt3z.Locked = true 
prt3z.Size = Vector3.new(0.2,0.2,0.2)
prt3z.Parent = swordholder
msh3z.Parent = prt3z
prt3z.BrickColor = BrickColor.new("White") 
prt3z.CanCollide = false
prt3z.Anchored = true
local msh4z = Instance.new("CylinderMesh")
local prt4z = Instance.new("Part")
prt4z.formFactor = 3
prt4z.Name = "HealRay"
prt4z.Locked = true 
prt4z.Size = Vector3.new(0.2,0.2,0.2)
prt4z.Parent = swordholder
msh4z.Parent = prt4z
prt4z.BrickColor = BrickColor.new("White") 
prt4z.CanCollide = false
prt4z.Anchored = true
hs(Head,1)
repeat
wait(0.15)
local start = prt1.CFrame * CFrame.new(0,-prt1.Size.y/2,0)
local oristrpos1 = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) + (start.p+target.Torso.Position)/2
local oristrpos2 = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) + (oristrpos1+target.Torso.Position)/2
local oristrpos3 = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) + (oristrpos2+target.Torso.Position)/2
local oristrpos4 = target.Torso.Position
local mg1 = (start.p - oristrpos1).magnitude
local mg2 = (oristrpos1 - oristrpos2).magnitude
local mg3 = (oristrpos2- oristrpos3).magnitude
local mg4 = (oristrpos3 - oristrpos4).magnitude
prt1z.Size = Vector3.new(0.5,mg1,0.5) 
prt1z.CFrame = CFrame.new((start.p+oristrpos1)/2,oristrpos1) * CFrame.Angles(math.rad(90),0,0)
prt2z.Size = Vector3.new(0.75,mg2,0.75) 
prt2z.CFrame = CFrame.new((oristrpos1+oristrpos2)/2,oristrpos2) * CFrame.Angles(math.rad(90),0,0)
prt3z.Size = Vector3.new(1,mg3,1) 
prt3z.CFrame = CFrame.new((oristrpos2+oristrpos3)/2,oristrpos3) * CFrame.Angles(math.rad(90),0,0)
prt4z.Size = Vector3.new(1.25,mg4,1.25) 
prt4z.CFrame = CFrame.new((oristrpos3+oristrpos4)/2,oristrpos4) * CFrame.Angles(math.rad(90),0,0)
target.Humanoid:TakeDamage(-HealPower)
Mana = Mana - 2
coroutine.resume(coroutine.create(function()
for i = 0.1 , 1 ,0.1 do
wait()
msh1z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
msh2z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
msh3z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
msh4z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
prt1z.Transparency = 1*i
prt2z.Transparency = 1*i
prt3z.Transparency = 1*i
prt4z.Transparency = 1*i
end
end)) 
until not buttonhold or target.Humanoid.Health <= 0 or Mana < 2 or target.Parent == nil or (Torso.Position-target.Torso.Position).magnitude > 75
for i = 0.1 , 1 ,0.1 do
wait()
msh1z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
msh2z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
msh3z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
msh4z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
prt1z.Transparency = 0.5+0.5*i
prt2z.Transparency = 0.5+0.5*i 
prt3z.Transparency = 0.5+0.5*i
prt4z.Transparency = 0.5+0.5*i
end
prt1z.Parent = nil
prt2z.Parent = nil
prt3z.Parent = nil
prt4z.Parent = nil
for i = 0.1 ,1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(135-45*i),math.rad(0),math.rad(-20-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-50+30*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
attack = false
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
Character.Humanoid.WalkSpeed = 5
cs(Head,0.5)
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
shellb1.BrickColor = BrickColor.new("Bright blue")
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
shellb.BrickColor = BrickColor.new("Bright blue")
else
shellb.BrickColor = BrickColor.new("Light blue")
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
Character.Humanoid.WalkSpeed = 16
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
 
 
function ADmg(pos)
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Torso");
                if head ~= nil then
                local mag = (head.Position - pos).magnitude;
                if mag <= 3 and c[i].Name ~= Character.Name then
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
end
 
 
function shooticeneedle(mouse)
local p1 = (Torso.CFrame).p
local spread = 50
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (p1-mouse.Hit.p).magnitude/100
local dir = CFrame.new((p1+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(p1,dir.lookVector,10,Character)
local rangepos = 100
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(0,0,0)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(2,0.2,2)
effectsg.Parent = swordholder 
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Light blue")
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(0,mg*5,0)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1.5*i,mg*5,1.5*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = p1
local inc = 10
is(Head,1)
repeat
wait() 
rangepos = rangepos - 10
dir = dir
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(0.1,1,0.1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(1,3,1)
effectsg.Parent = swordholder 
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Light blue")
effectsg.Reflectance = 0.25
effectsg.CFrame = (CFrame.new(pos,p1) * CFrame.Angles(math.rad(90),0,0)) + CFrame.new(pos,p1).lookVector*effectsg.Size.y/2 
coroutine.resume(coroutine.create(function() 
wait(10)
for i = 0.1 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
effectsg.Parent = nil
end))
end
until rangepos <= 0
is(effectsgb,0.5)
ADmg(pos)
                for ii = 1 , #AoETrue do
                table.remove(AoETrue,#AoETrue)
                end
end
 
 
function IceNeedles(mouse)
if Mana < 10 then return else Mana = Mana - 10 end
attack = true
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-65+20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90*i),math.rad(0),math.rad(-20+65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(300-30*i), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5+0.5*i, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(20*i),0,0)
end
coroutine.resume(coroutine.create(function() shooticeneedle(mouse) end))
for i = 0.2 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45+90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5+0.5*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270), math.rad(0), math.rad(0)) * CFrame.new(0, -0, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(20-40*i),0,0)
end
for i = 0.1 , 1 , 0.1 do 
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45+20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45-20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270), math.rad(0), math.rad(0)) * CFrame.new(0, -0, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-20-5*i),0,0)
end
for i = 0.1 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -0.5*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(65-135*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-90*i),math.rad(0),math.rad(-65+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(270+30*i), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5*i, -1)  
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-25+25*i),0,0)
end
Neck.C0 = neckcf0
attack = false
end
 
function Absorb(mouse)
local target = nil
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local mag = (head.Position - mouse.Hit.p).magnitude;
                if mag <= 10 and c[i].Name ~= Character.Name then
                local foundd = false
                for ii = 1 , #AoETrue do
                if AoETrue[ii] == c[i].Name then
                foundd = true
                end
                end
                if foundd then
                end
                --
                if not foundd and target == nil then
                if game.Players:findFirstChild(c[i].Name) ~= nil then
                local plyr  = game.Players[c[i].Name]
                if plyr.TeamColor ~= Player.TeamColor and plyr.Neutral == false then
                target = c[i]
                elseif plyr.Neutral == true then
                target = c[i]
                end
                elseif game.Players:findFirstChild(c[i].Name) == nil then
                target = c[i]
                end
                end
                end
                end
                end
        end
if target == nil then return end
if (Torso.Position-target.Torso.Position).magnitude > 35 or target.Humanoid.Health <= 25  then return end
attack = true 
for i = 0.1 ,1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90+45*i),math.rad(0),math.rad(-65+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20-30*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
 
local msh1z = Instance.new("CylinderMesh")
local prt1z = Instance.new("Part")
prt1z.formFactor = 3
prt1z.Name = "AbsorbRay"
prt1z.Locked = true 
prt1z.Size = Vector3.new(0.2,0.2,0.2)
prt1z.Parent = swordholder
msh1z.Parent = prt1z
prt1z.BrickColor = BrickColor.new("Bright violet")
prt1z.CanCollide = false
prt1z.Anchored = true
local msh2z = Instance.new("CylinderMesh")
local prt2z = Instance.new("Part")
prt2z.formFactor = 3
prt2z.Name = "AbsorbRay"
prt2z.Locked = true 
prt2z.Size = Vector3.new(0.2,0.2,0.2)
prt2z.Parent = swordholder
msh2z.Parent = prt2z
prt2z.BrickColor = BrickColor.new("Bright violet") 
prt2z.CanCollide = false
prt2z.Anchored = true
local msh3z = Instance.new("CylinderMesh")
local prt3z = Instance.new("Part")
prt3z.formFactor = 3
prt3z.Name = "AbsorbRay"
prt3z.Locked = true 
prt3z.Size = Vector3.new(0.2,0.2,0.2)
prt3z.Parent = swordholder
msh3z.Parent = prt3z
prt3z.BrickColor = BrickColor.new("Bright violet") 
prt3z.CanCollide = false
prt3z.Anchored = true
local msh4z = Instance.new("CylinderMesh")
local prt4z = Instance.new("Part")
prt4z.formFactor = 3
prt4z.Name = "AbsorbRay"
prt4z.Locked = true 
prt4z.Size = Vector3.new(0.2,0.2,0.2)
prt4z.Parent = swordholder
msh4z.Parent = prt4z
prt4z.BrickColor = BrickColor.new("Bright violet") 
prt4z.CanCollide = false
prt4z.Anchored = true
repeat
wait(0.35)
local start = prt1.CFrame * CFrame.new(0,-prt1.Size.y/2,0)
local oristrpos1 = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) + (start.p+target.Torso.Position)/2
local oristrpos2 = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) + (oristrpos1+target.Torso.Position)/2
local oristrpos3 = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) + (oristrpos2+target.Torso.Position)/2
local oristrpos4 = target.Torso.Position
local mg1 = (start.p - oristrpos1).magnitude
local mg2 = (oristrpos1 - oristrpos2).magnitude
local mg3 = (oristrpos2- oristrpos3).magnitude
local mg4 = (oristrpos3 - oristrpos4).magnitude
prt1z.Size = Vector3.new(0.5,mg1,0.5) 
prt1z.CFrame = CFrame.new((start.p+oristrpos1)/2,oristrpos1) * CFrame.Angles(math.rad(90),0,0)
prt2z.Size = Vector3.new(0.75,mg2,0.75) 
prt2z.CFrame = CFrame.new((oristrpos1+oristrpos2)/2,oristrpos2) * CFrame.Angles(math.rad(90),0,0)
prt3z.Size = Vector3.new(1,mg3,1) 
prt3z.CFrame = CFrame.new((oristrpos2+oristrpos3)/2,oristrpos3) * CFrame.Angles(math.rad(90),0,0)
prt4z.Size = Vector3.new(1.25,mg4,1.25) 
prt4z.CFrame = CFrame.new((oristrpos3+oristrpos4)/2,oristrpos4) * CFrame.Angles(math.rad(90),0,0)
target.Humanoid:TakeDamage(HealPower)
Character.Humanoid:TakeDamage(-HealPower/2) 
Mana = Mana - 6
if game.Players:findFirstChild(target.Name) ~= nil then
local plyr = game.Players[target.Name]
if plyr:findFirstChild("Class") ~= nil then 
if plyr.Class.Value == "Magic" then
if math.random(1,2) == 1 then
AddMana(math.floor(5)) 
end
end
end
end
coroutine.resume(coroutine.create(function()
for i = 0.1 , 1 ,0.1 do
wait()
msh1z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
msh2z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
msh3z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
msh4z.Scale = Vector3.new(1-0.75*i,1,1-0.75*i)
prt1z.Transparency = 1*i
prt2z.Transparency = 1*i
prt3z.Transparency = 1*i
prt4z.Transparency = 1*i
end
end)) 
until not buttonhold or target.Humanoid.Health <= 35 or Mana < 3 or target.Parent == nil or (Torso.Position-target.Torso.Position).magnitude > 75
for i = 0.1 , 1 ,0.1 do
wait()
msh1z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
msh2z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
msh3z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
msh4z.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
prt1z.Transparency = 0.5+0.5*i
prt2z.Transparency = 0.5+0.5*i
prt3z.Transparency = 0.5+0.5*i
prt4z.Transparency = 0.5+0.5*i
end
prt1z.Parent = nil
prt2z.Parent = nil
prt3z.Parent = nil
prt4z.Parent = nil
for i = 0.1 ,1 , 0.1 do
wait()
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(135-45*i),math.rad(0),math.rad(-20-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-50+30*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
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
buttonhold = true
Heal(mouse)
end
if key == "e" then
IceNeedles(mouse)
end
if key == "f" then
buttonhold = true
ManaCharge()
end
if key == "r" then
buttonhold = true
Absorb(mouse)
end
end
 
 
function key2(key) 
if key == "f" or key == "q" or key == "r"  then
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