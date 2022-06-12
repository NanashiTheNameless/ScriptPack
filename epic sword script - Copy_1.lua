:ls --MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: Go to line 3 and put your name where it says "YOUR NAME HERE"

Player = game:GetService("Players").luxulux
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
ToolName = "Yamato"
attack = false
attacktype = 1
mindamage = 15
maxdamage = 25
crtmaxdamage = 45
omindamage = 15
omaxdamage = 25
ocrtmaxdamage = 45
crtrate = 12
fireboost = 0
iceboost = 0
darkboost = 0
Mode = "None"
ssh = false
atktypez = 1
Hitdeb = 0
ammo = 1
MMouse = nil
point = false
offset = 0
radv = 90
----------------------------
--Customize
DarkFire = true
MaxFT = 40
 
 
 
---------------------------------------------------------------------------------------------------------------------------------------
if Character:findFirstChild("EquippedVal",true) ~= nil then
Character:findFirstChild("EquippedVal",true).Parent = nil
end
ev = Instance.new("BoolValue")
ev.Parent = Character
ev.Name = "EquippedVal"
ev.Value = false
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
 RWL.C0 = CFrame.new(1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 RWL.C1 = CFrame.new(0.5, 1, 0)
 RWL.Parent = swordholder
 --
 LWL.Part0 = ch.Torso
 LWL.C0 = CFrame.new(-1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
 LWL.C1 = CFrame.new(-0.5, 1, 0)
 LWL.Parent = swordholder
handlecolor = BrickColor.new("Really black")
scndryclr = BrickColor.new("Bright violet")
firepri = BrickColor.new("Bright red")
icepri = BrickColor.new("Bright blue")
local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(1,1,1)
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(1,1,1)
--
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
--
local msh5 = Instance.new("SpecialMesh")
msh5.Scale = Vector3.new(1,1,2)
msh5.MeshId = "http://www.roblox.com/asset/?id=3270017"
local msh6 = Instance.new("BlockMesh")
msh6.Scale = Vector3.new(1,1,0.5)
local msh7 = Instance.new("BlockMesh")
msh7.Scale = Vector3.new(1,1,1)
local msh8 = Instance.new("BlockMesh")
msh8.Scale = Vector3.new(0.5,1,1)
local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.2,1.5,0.2)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "HandleTop"
prt2.Locked = true
prt2.Size = Vector3.new(1.6,0.2,0.5)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = scndryclr
---
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "FlameBlade"
prt3.Locked = true
prt3.Size = Vector3.new(0.4,3,0.2)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = firepri
prt3.Reflectance = 0
local prt3a = Instance.new("Part")
prt3a.formFactor = 3
prt3a.CanCollide = false
prt3a.Name = "FlameBladeP1"
prt3a.Locked = true
prt3a.Size = Vector3.new(0.2,1,0.4)
prt3a.Parent = swordholder
msh3a.Parent = prt3a
prt3a.BrickColor = firepri
prt3a.Reflectance = 0
--
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "FrostBlade"
prt4.Locked = true
prt4.Size = Vector3.new(0.4,3,0.2)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.BrickColor = icepri
prt4.Reflectance = 0.5
local prt4a = Instance.new("Part")
prt4a.formFactor = 3
prt4a.CanCollide = false
prt4a.Name = "FrostBladeP1"
prt4a.Locked = true
prt4a.Size = Vector3.new(0.2,1,0.4)
prt4a.Parent = swordholder
msh4a.Parent = prt4a
prt4a.BrickColor = icepri
prt4a.Reflectance = 0.5
--
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "HandleRing"
prt5.Locked = true
prt5.Size = Vector3.new(1,1,0.2)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = scndryclr
prt5.Reflectance = 0
local DFlame = Instance.new("Fire")
DFlame.Parent = prt5
DFlame.Color = Color3.new(0.5,0,0.5)
DFlame.SecondaryColor = Color3.new(0.5,0,0.5)
DFlame.Heat = 25
DFlame.Size = 1
DFlame.Enabled = DarkFire
local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "HandleP1"
prt6.Locked = true
prt6.Size = Vector3.new(0.2,1.5,0.2)
prt6.Parent = swordholder
msh6.Parent = prt6
prt6.BrickColor = scndryclr
prt6.Reflectance = 0
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "HandleP2"
prt7.Locked = true
prt7.Size = Vector3.new(0.7,0.2,0.2)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = scndryclr
prt7.Reflectance = 0
local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "DarkBlade"
prt8.Locked = true
prt8.Size = Vector3.new(0.2,4,0.2)
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor
prt8.Transparency = 1
local hitbox = Instance.new("Part")
hitbox.formFactor = 3
hitbox.CanCollide = false
hitbox.Name = "Hitbox"
hitbox.Locked = true
hitbox.Size = Vector3.new(1,4,0.2)
hitbox.Parent = swordholder
hitbox.Transparency = 1
local hbw = Instance.new("Weld")
hbw.Parent = hitbox
hbw.Part0 = hitbox
hbw.Part1 = prt1
hbw.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
hbw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0, -2.95, 0)
 
local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0, -0.85, 0)
--
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0.25, -2.45, 0)
local w3a = Instance.new("Weld")
w3a.Parent = prt3a
w3a.Part0 = prt3a
w3a.Part1 = prt1
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w3a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-90),0) * CFrame.new(0.25, -4.45, 0)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0.25, -2.45, 0)
local w4a = Instance.new("Weld")
w4a.Parent = prt4a
w4a.Part0 = prt4a
w4a.Part1 = prt1
w4a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w4a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90),0) * CFrame.new(-0.25, -4.45, 0)
--
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0, -0.85, 0)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0.5, -0, 0)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt1
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0.25, 0.75, 0)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt1
w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0, -2.95, 0)
for ringi = 0 , math.rad(350) , math.rad(50) do
local ringm = Instance.new("BlockMesh")
ringm.Scale = Vector3.new(1,1.5,1)
local ringp = Instance.new("Part")
ringp.formFactor = 3
ringp.CanCollide = false
ringp.Name = "HandleRingP"..ringi
ringp.Locked = true
ringp.Size = Vector3.new(0.2,0.2,0.2)
ringp.Parent = swordholder
ringm.Parent = ringp
ringp.BrickColor = scndryclr
ringp.Reflectance = 0.1
local ringw = Instance.new("Weld")
ringw.Parent = ringp
ringw.Part0 = ringp
ringw.Part1 = prt5
ringw.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90), -ringi, 0) * CFrame.new(0, 0 , 0)
ringw.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(-msh5.Scale.x/1.625, 0, 0) --* CFrame.new(-0.6, 0, 0) ---msh5.Scale.z/3.25
end
 
local Objects = {} 
function getAllObjects(obj)
 for a,v in pairs(obj:GetChildren()) do 
  if v:IsA("BasePart") then 
   table.insert(Objects,v) 
    end 
    if #v:GetChildren() > 0 then 
   getAllObjects(v) 
  end 
 end 
end 
getAllObjects(Workspace)
function Raycast(Start,End,Range) 
--
for ii = 0 , #Objects do
table.remove(Objects,ii)
end
getAllObjects(Workspace)
 local MA = math.abs
  local CF = CFrame.new(Start,End) 
   local CP = Start
    for i = 1, Range do--(Start - End).magnitude do 
     for b,v in pairs(Objects) do
      if v.Parent ~= nil then 
       local pos = Start + (CF.lookVector*i) 
        local dist = v.CFrame:pointToObjectSpace(pos) 
       if MA(dist.x) < v.Size.x/2 and MA(dist.y) < v.Size.y/2 and MA(dist.z) < v.Size.z/2 then 
        if v.Parent ~= Character or v.Parent ~= swordholder or v.Parent.Parent ~= Character then 
      return v,Start,pos 
      end
     end 
    end 
   end 
  end 
 return nil,Start,End 
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
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(180), math.rad(-150)) * CFrame.new(-1, -1.5, -0.6)
end
unequipweld()
 
function equipweld()
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
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
function is(parent,p) --Ice Sound
local SlashSound = Instance.new("Sound")
local rndm = math.random(1,3)
if rndm == 1 then
SlashSound.SoundId = "rbxasset://sounds\\ice.ogg"
elseif rndm == 2 then
SlashSound.SoundId = "rbxasset://sounds\\ice2.ogg"
elseif rndm == 3 then
SlashSound.SoundId = "rbxasset://sounds\\ice3.ogg"
end
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
function bs(parent,p) --Boom Sound
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds/Rocket shot.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
--
 
 
function hideanim()
attack = true
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+67*i), math.rad(45), math.rad(-45+90*i))
  LW.C0 = CFrame.new(-1-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80-80*i),math.rad(-45+45*i),math.rad(45-45*i))
        end 
  LWRem() 
 for i = 0 , 1 , 0.15 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(147+103*i), math.rad(45), math.rad(45-35*i))
        end  
  unequipweld()
 wait(0.1)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(250-250*i), math.rad(45-45*i), math.rad(10-10*i))
        end  
  RWRem()
attack = false
end
 
function equipanim()
attack = true
RWFunc()
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(250*i), math.rad(45*i), math.rad(-10*i))
        end 
  equipweld()
 uss(Head,1)
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(250-102.5*i), math.rad(45), math.rad(-10+27.5*i))
        end  
 for i = 0 , 1 , 0.15 do
                wait()
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(147-67*i), math.rad(45), math.rad(17.5+27.5*i))
        end  
 LWFunc()
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(45-90*i))
  LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80*i),math.rad(-45*i),math.rad(45*i))
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
 
function damagesplat(dmg,hit,critornot,healornot)
local OffsetX = -2.5
local OffsetY = 5
local OffsetZ = 0
local bill = Instance.new("BillboardGui")
bill.Size = UDim2.new(1,0,1,0)
bill.Adornee = hit
bill.StudsOffset = Vector3.new(OffsetX,OffsetY,OffsetZ)
bill.Parent = hit.Parent
bill.Name = "DamageSplat"
local tex = Instance.new("TextLabel")
tex.Size = UDim2.new(5,0,2.5,0)
tex.Parent = bill
tex.Text = dmg
tex.BackgroundTransparency = 1
tex.ZIndex = 4
tex.FontSize = "Size24"
local tex2 = Instance.new("ImageLabel")
tex2.Size = UDim2.new(1,0,1,0)
tex2.Parent = tex
tex2.BackgroundTransparency = 1
tex2.Image = "http://www.roblox.com/asset/?id=42611276"
if critornot == true then
tex.TextColor3 = Color3.new(1,0.2,0.2)
elseif critornot == false then
tex.TextColor3 = Color3.new(0,0,0)
end
if healornot == true then
tex.TextColor3 = Color3.new(0.2,0.5,0.5)
end
coroutine.resume(coroutine.create(function()
wait(0.25)
for i = 0 , 1 , 0.075 do
wait()
bill.StudsOffset = Vector3.new(OffsetX,OffsetY+5*i,OffsetZ)
tex.TextTransparency = 1*i
end
bill.Parent = nil
end))
end
function FireEff(Part,Time,Color1,Color2,Color3)
local Firee = Part
local Spawn = Part
local colors = {} 
if Color1 ~= nil then
table.insert(colors,BrickColor.new(Color1))
end
if Color2 ~= nil then
table.insert(colors,BrickColor.new(Color2))
end
if Color3 ~= nil then
table.insert(colors,BrickColor.new(Color3))
end
if Color4 ~= nil then
table.insert(colors,BrickColor.new(Color4))
end
local Embers = {} 
local modelz = Instance.new("Model",Firee)
modelz.Name = "FireHolder"
for X = 1, 3 do
local f = Instance.new("Part") 
f.Parent = nil
f.BrickColor = colors[math.random(1, # colors)] 
f.Size = Vector3.new(1,1,1) 
f.formFactor = 1
f.Anchored = true 
f.Locked = true 
f.CanCollide = false 
f.Transparency = 0.5 
f.Name = "Fire"
f.TopSurface = 0
f.BottomSurface = 0
table.insert(Embers, f) 
end 
local R = 0
coroutine.resume(coroutine.create(function ()
repeat 
wait() 
R = R + 1
for X = 1, # Embers do 
Embers[X].Parent = modelz
local FM = math.fmod(R + X, # Embers) 
if FM == 1 then 
RandPos = Vector3.new(math.random(-Spawn.Size.x * 5, Spawn.Size.x * 5) / 10, Spawn.Size.y / 2, math.random(-Spawn.Size.x * 5, Spawn.Size.x * 5) / 10) 
RandDir = Vector3.new(math.random(-100,100), math.random(-100,100), math.random(-100,100)) 
Embers[X].CFrame = CFrame.new(Spawn.Position + RandPos, Spawn.Position + RandPos + RandDir) 
else 
Embers[X].CFrame = CFrame.new(Embers[X].Position + Vector3.new(0,0.5,0), Embers[X].Position + Vector3.new(0,0.5,0) + Embers[X].CFrame.lookVector) 
end 
end 
until R == Time
for i = 0 ,1 , 0.1 do
wait(0.2)
for X = 1, # Embers do 
Embers[X].Transparency = 0.5+0.5*i
end
end
for X = 1, # Embers do 
Embers[X].Parent = nil
end
end))
end
 
function OT(hit) --Normal Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil and hum ~= Character.Humanoid then
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,hit,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,hit,true)
hum:TakeDamage(rndmdamage)
end
Hitdeb = 1
end
end
 
function OTND(part) --No Debounce Damage
coroutine.resume(coroutine.create(function() 
local dd = false
while part.Parent ~= nil and not dd do
wait() 
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Torso"); 
if head ~= nil then 
local targ = head.Position - part.Position;                                              ------------------------------------------------Local 
local mag = targ.magnitude; 
if mag <= 5 and c[i].Name ~= Player.Name then 
dd = true
local rndmdamage = math.random(1,7+5*math.random()) + fireboost
damagesplat(rndmdamage,head,false)
hum:TakeDamage(rndmdamage)
FireEff(head,150,"Bright red","Bright orange","Cool yellow")
part.Parent = nil
 
end 
end 
end 
end 
end 
end)) 
end
 
function AoE(p,magnitude,damage,critornot) 
 local c = game.Workspace:GetChildren();
 for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
  local head = c[i]:findFirstChild("Head");
                if head ~= nil then
  local targ = head.Position - p;
  local mag = targ.magnitude;
  if mag <= magnitude and c[i].Name ~= Character.Name then
  local foundd = false
  for ii = 1 , #AoETrue do
  if AoETrue[ii] == c[i].Name then
  --delay(1,function() table.remove(AoETrue,ii) end)
  --blast(2.5,0.5,"Bright red",prt2,false)
  foundd = true
  end
  end
  if foundd then
  end
  --
  if not foundd then
  hum:TakeDamage(damage)
  damagesplat(damage,head,critornot)
  table.insert(AoETrue,c[i].Name)
  --blast(2.5,0.5,"Bright red",prt2)
  end
  end
  end
                end
 end
end
function AoEP(p,magnitude,damage,critornot) 
 local c = game.Workspace:GetChildren();
 for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
  local head = c[i]:findFirstChild("Head");
                if head ~= nil then
  local targ = head.Position - p;
  local mag = targ.magnitude;
  if mag <= magnitude and c[i].Name ~= Character.Name then
  local foundd = false
  for ii = 1 , #AoETrue do
  if AoETrue[ii] == c[i].Name then
  --delay(1,function() table.remove(AoETrue,ii) end)
  --blast(2.5,0.5,"Bright red",prt2,false)
  foundd = true
  end
  end
  if foundd then
  end
  --
  if not foundd then
  hum:TakeDamage(damage)
  damagesplat(damage,head,critornot)
  c[i].Humanoid.Sit = true
  coroutine.resume(coroutine.create(function() 
local bp = Instance.new("BodyVelocity",c[i].Torso)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = bp.P*2
bp.velocity = CFrame.new(c[i].Torso.Position , p).lookVector * 150 + Vector3.new(0,25,0)
coroutine.resume(coroutine.create(function() 
for i=1, 
bp.velocity.y/3 do 
bp.velocity = bp.velocity+Vector3.new(0,-4.25,0) 
wait() 
end  
bp.Parent = nil   
end))
c[i].Torso.RotVelocity = CFrame.new(c[i].Torso.Position , p).lookVector * 25
wait(0.4) c[i].Humanoid.Sit = false end))
  table.insert(AoETrue,c[i].Name)
  end
  end
  end
                end
 end
end
--
 
local LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.5,1,0.5)
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
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
wait()
effectsg.Parent = nil
end
end))
end
 
con = nil
function dmgcnnct(p)
con = p.Touched:connect(OT)
end
function dmgdc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
end
function atktype(s,e)
coroutine.resume(coroutine.create(function ()
attacktype = e
wait(0.5)
repeat wait() until attack
attacktype = s
end))
end
 
hold = false 
function Combo1a()
attack=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45+45*i), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i), math.rad(10*i), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i),math.rad(-45+45*i),math.rad(45-20*i))
    end 
 dmgcnnct(hitbox)
 ss(Head,1.5)
 for i = 0 , 1 , 0.2 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(0.5+1*i,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i), math.rad(10+35*i), math.rad(0))
  LW.C0 = CFrame.new(-1+1*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(25+65*i))
  effect("Bright blue",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
    end 
 dmgdc()
 for i = 0 , 1 , 0.2 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+20*i), math.rad(45+5*i), math.rad(0))
  LW.C0 = CFrame.new(-0.25*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(90+10*i))
  effect("Bright blue",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
    end 
 attacktype = 2
 coroutine.resume(coroutine.create(function ()
 wait(0.25)
 attacktype = 1
 end))
 attack=false
 wait(0.15)
 wait()
 for i = 0 , 1 , 0.1 do
 if not attack then 
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(90-45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-110*i), math.rad(50-50*i), math.rad(0))
  LW.C0 = CFrame.new(-0.25-0.75*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i),math.rad(-45*i),math.rad(100-55*i))
 end
    end 
 
end
function Combo1b()
attack=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-155*i), math.rad(50-40*i), math.rad(0))
  LW.C0 = CFrame.new(-0.25-0.75*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(100-50*i))
    end 
 
cs(Head,1.5)
local tempmod = Instance.new("Model",swordholder)
for l = 1 , 20 do
local meshz = Instance.new("SpecialMesh")
meshz.Scale = Vector3.new(0.5,0.5,0.5)
meshz.MeshType = "Sphere"
local shellz = Instance.new("Part")
meshz.Parent = shellz
shellz.Anchored = false
shellz.formFactor = 0
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = hitbox.CFrame * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
shellz.Parent = tempmod
shellz.Transparency = 0.5
shellz.BrickColor = BrickColor.new("Bright violet")
shellz.CanCollide = false
shellz.Reflectance = 0.25
local bv = Instance.new("BodyPosition") 
bv.Parent = shellz
bv.maxForce = Vector3.new(200000,200000,200000) 
bv.position = shellz.Position
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
shellz.Transparency = 1-1*i
end
shellz.Transparency = 0
end))
coroutine.resume(coroutine.create(function()
wait(0.05)
bv.position = hitbox.Position 
for i = 1 , 20 do
wait(0.1)
bv.position = shell.Position 
end
shellz.Parent = nil
end))
wait(0.01)
end
coroutine.resume(coroutine.create(function ()
wait(0.25)
tempmod.Parent = nil
end))
 for i = 0 , 1 , 0.2 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i), math.rad(10), math.rad(0))
  LW.C0 = CFrame.new(-1+1.5*i,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(50+40*i))
 effect("Really red",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
    end 
local gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
gyro.P = gyro.P + 10000
local CF = Torso.CFrame
gyro.cframe = CF
gyro.Parent = Torso
dmgcnnct(hitbox)
ss(Head,1)
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
 gyro.cframe = CF * CFrame.Angles(0,math.rad(-360*i),0)
 effect("Really red",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
ss(Head,1)
Hitdeb = 0
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
 gyro.cframe = CF * CFrame.Angles(0,math.rad(-360*i),0)
 effect("Really red",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
dmgdc()
 attacktype = 3
 coroutine.resume(coroutine.create(function ()
 wait(0.5)
 attacktype = 1
 end))
 wait(0.15)
 wait()
gyro.Parent = nil
  attack=false
 for i = 0 , 1 , 0.1 do
 if not attack then 
                wait()
  RW.C0 = CFrame.new(0.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(90-45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90-90*i), math.rad(10-10*i), math.rad(0))
  LW.C0 = CFrame.new(0.5-1.5*i,0.5,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i),math.rad(-45*i),math.rad(50-5*i))
 end
 end
end
 
function Combo1c()
attack=true
local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = bp.P + 10000
local CF = Torso.CFrame
bp.position = CF.p
bp.Parent = Torso
RWLFunc()
LWLFunc()
for zz = 1 , 2  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.Angles(0,0.5*zz,0) + Vector3.new(0,-2.5,0) -- + shellspawn.CFrame.lookVector * 2
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("White")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
  RW.C0 = CFrame.new(0.5+0.5*i,0.5+1*i,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+100*i), math.rad(90-90*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90-90*i), math.rad(10-10*i), math.rad(0))
  LW.C0 = CFrame.new(0.5-1.5*i,0.5+1*i,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90+100*i),math.rad(0),math.rad(50-5*i))
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90-45*i)) * CFrame.new(0, 0, 0.2)
 bp.position = CF.p + Vector3.new(0,10,0)
 RWL.C0 = CFrame.new(1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20*i), math.rad(0), math.rad(0))
 LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20*i), math.rad(0), math.rad(0))
 prt8.Transparency = 1-1*i
 effect("Really black",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
end
 cs(Head,1.5)
coroutine.resume(coroutine.create(function ()
local tempmod = Instance.new("Model",swordholder)
for l = 1 , 20 do
local meshz = Instance.new("SpecialMesh")
meshz.Scale = Vector3.new(1.5,1.5,1.5)
meshz.MeshType = "Sphere"
local shellz = Instance.new("Part")
meshz.Parent = shellz
shellz.Anchored = false
shellz.formFactor = 0
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = hitbox.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))
shellz.Parent = tempmod
shellz.Transparency = 0.5
shellz.BrickColor = BrickColor.new("Really black")
shellz.CanCollide = false
shellz.Reflectance = 0
local bv = Instance.new("BodyPosition") 
bv.Parent = shellz
bv.maxForce = Vector3.new(200000,200000,200000) 
bv.position = shellz.Position
local hx = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
shellz.Transparency = 1-1*i
end
shellz.Transparency = 0
end))
coroutine.resume(coroutine.create(function()
wait(0.05)
bv.position = hitbox.Position 
for i = 1 , 20 do
wait(0.1)
bv.position = shell.Position 
end
shellz.Parent = nil
end))
wait(0.01)
end
coroutine.resume(coroutine.create(function ()
repeat wait() until hx
tempmod.Parent = nil
end))
end))
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
  RW.C0 = CFrame.new(1,1.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(190+20*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(190+20*i),math.rad(0),math.rad(45))
  effect("Really black",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
  RW.C0 = CFrame.new(1,1.5-1*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(210-130*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5-1*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(210-130*i),math.rad(0),math.rad(45))
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(45)) * CFrame.new(0, 0, 0.2)
 bp.position = CF.p + CF.lookVector * 2.5 + Vector3.new(0,-1,0)
 RWL.C0 = CFrame.new(1, -1+1*i, -1*i) * CFrame.fromEulerAnglesXYZ(math.rad(-20+20*i), math.rad(0), math.rad(0))
 LWL.C0 = CFrame.new(-1, -1+1*i, -1*i) * CFrame.fromEulerAnglesXYZ(math.rad(-20+20*i), math.rad(0), math.rad(0))
  effect("Really black",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
 hx = true
 wait(0.1)
local Hit,A, B = Raycast(hitbox.Position + Vector3.new(0,3,0) + Torso.CFrame.lookVector * 1 ,hitbox.Position + Vector3.new(0,3,0) + Torso.CFrame.lookVector * 101 ,100)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "LAZOR"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Black")
effectsg.Reflectance = 0.5
local point1 = B
local point0 = A
for zz = 1 , 5  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /-2) + Torso.CFrame.lookVector * 2
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90),0.5*zz,0)
shell.Parent = swordholder
shell.Transparency = 0
if math.fmod(zz,2) == 0 then
shell.BrickColor = BrickColor.new("Really black")
else
shell.BrickColor = BrickColor.new("Bright violet")
end
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.01 do
wait()
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 1 do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(20,15,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /-2) + Torso.CFrame.lookVector * 10
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90),0,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Bright violet")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.02 do
wait()
mesh.Scale = Vector3.new(10,15,15) * Vector3.new(i,1,i)
shell.CFrame = shell.CFrame * CFrame.Angles(0,i,0)
shell.Transparency = 1-1*i
end
for i = 0 , 1 , 0.05 do
wait()
shell.CFrame = shell.CFrame * CFrame.Angles(0,i,0)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 1 do
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(20,0.5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /-2) + Torso.CFrame.lookVector * -0.5
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90),0,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Bright violet")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.02 do
wait()
mesh.Scale = Vector3.new(20,0.5,20) * Vector3.new(i,1,i)
shell.Transparency = 1-1*i
end
for i = 0 , 1 , 0.02 do
wait()
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end)) 
end
for zz = 1 , 10  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh.Scale = Vector3.new(5,5,5) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /2)
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90)+2*math.random(),2*math.random(),2*math.random())
shell.Parent = swordholder
shell.Transparency = 0
if math.fmod(zz,2) == 0 then
shell.BrickColor = BrickColor.new("Really black")
else
shell.BrickColor = BrickColor.new("Bright violet")
end
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.01 do
wait()
mesh.Scale = Vector3.new(25,25,25) * Vector3.new(i,i,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
coroutine.resume(coroutine.create(function()
effectsg.Transparency = 1
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1-1*i
end
wait(2)
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
effectsg.Parent = nil
end))
local mg = 100
if Hit ~= nil then
mg = (point0-point1).magnitude
elseif Hit == nil then
mg = 100
end
ls(Head,0.5)
ls(Head,0.75)
cs(Head,0.25)
ls(Head,1)
ls(Head,3)
cs(Head,0.15)
for mgg = 0 , 1,0.1 do
wait()
effectsg.Size = Vector3.new(5,(mg*mgg)+0.2,5)
local durr = CFrame.new((point0+(point1))/2,(point1))
effectsg.CFrame = CFrame.new((point0+(point1-durr.lookVector * (mg*(1-mgg))))/2,(point1)) * CFrame.Angles(math.rad(90),0,0)
end
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage+30,maxdamage+30)
AoEP((CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /2)).p,15,rndmdamage+darkboost,false) 
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage+30,crtmaxdamage+30)
AoEP((CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /2)).p,15,rndmdamage+darkboost,true)
end
bp.Parent = nil
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(90-45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45*i),math.rad(45))
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(45+45*i)) * CFrame.new(0, 0, 0.2)
 RWL.C0 = CFrame.new(1, -1*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
 LWL.C0 = CFrame.new(-1, -1*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
 prt8.Transparency = 1*i
    end 
  for ii = 1 , #AoETrue do
  table.remove(AoETrue,#AoETrue)
  end
RWLRem()
LWLRem()
attack = false
attacktype = 1
end
function BlizzardSword()
attack=true
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1,0.5+1*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i), math.rad(45-45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5+1*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i),math.rad(-45+45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90-45*i)) * CFrame.new(0, 0, 0.2)
    end 
 local wssave = Character.Humanoid.WalkSpeed
 Character.Humanoid.WalkSpeed = 0
 ss(Head,1.5)
 local efftab = {}
 for i = 0 , 1 , 0.2 do
   LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1,1.5-1.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(135-135*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5-1.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(135-135*i),math.rad(0),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(45)) * CFrame.new(0, 0, 0.2)
  local eff = effect("Bright blue",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  table.insert(efftab,eff)
    end 
local trspos = Torso.Position
 Character.Humanoid.WalkSpeed = wssave
 for _,efff in pairs(efftab) do
 wait()
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 efff.Transparency = 1*i
 end 
 wait()
 efff.Transparency = 1
 end))
 end
 for io,eff in pairs(efftab) do
 wait()
for zz = 1 , 1 do
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.1,0.5,0.1)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
local dur = CFrame.new(trspos,eff.Position)
local CF1 = dur * CFrame.Angles(math.rad(90),0,0) * CFrame.new(0,-6,0)
shell.CFrame = CF1
shell.Parent = eff
shell.Transparency = 1
shell.Reflectance = 0.25
shell.BrickColor = BrickColor.new("Bright blue")
shell.CanCollide = false
is(shell,0.5)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1-1*i
 mesh.Scale = Vector3.new(0.1+4.9*i,0.5,0.1+4.9*i)
 end
 wait(0.25)
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1*i
 mesh.Scale = Vector3.new(5-5*i,0.5-0.5*i,5-5*i)
 end
 shell.Parent = nil
 end))
end
end
 for io,eff in pairs(efftab) do
 wait()
for zz = 1 , 1 do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(5,2,1)
mesh.MeshId = "rbxasset://fonts/sword.mesh"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(2,2,5)
local dur = CFrame.new(trspos,eff.Position)
local CF1 = dur * CFrame.Angles(math.rad(180),0,0) * CFrame.new(0,0,6.5)* CFrame.Angles(0,0,math.rad(90)) 
shell.CFrame = CF1
shell.Parent = eff
shell.Transparency = 1
shell.Reflectance = 0.25
shell.BrickColor = BrickColor.new("Bright blue")
shell.CanCollide = false
local hitd = 0
coroutine.resume(coroutine.create(function() 
local dd = false
while shell.Parent ~= nil and not dd do
wait() 
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Torso"); 
if head ~= nil then 
local targ = head.Position - shell.Position; 
local mag = targ.magnitude; 
if mag <= 3 and c[i].Name ~= Player.Name then 
dd = true
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage+iceboost,maxdamage+iceboost)
damagesplat(rndmdamage,head,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage+iceboost,crtmaxdamage+iceboost)
damagesplat(rndmdamage,head,true)
hum:TakeDamage(rndmdamage)
end
end 
end 
end 
end 
end 
end)) 
 coroutine.resume(coroutine.create(function()
 uss(eff,1)
 
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1-1*i
CF1 = dur * CFrame.Angles(math.rad(180),0,0) * CFrame.new(0,0,6.5+2*i)* CFrame.Angles(0,0,math.rad(90)) 
 shell.CFrame = CF1
 mesh.Scale = Vector3.new(5,2,1+0.5*i)
 end
 wait(0.25)
 ss(eff,2)
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1*i
CF1 = dur * CFrame.Angles(math.rad(180),0,0) * CFrame.new(0,0,8.5+25*i)* CFrame.Angles(0,0,math.rad(90)) 
 shell.CFrame = CF1
 mesh.Scale = Vector3.new(5-5*i,2-2*i,1.5-1.5*i*i)
 end
 shell.Parent = nil
 end))
end
end
 coroutine.resume(coroutine.create(function()
 wait(1.5)
 for _,eff in pairs(efftab) do
 wait()
 eff.Parent = nil
 end end))
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80*i), math.rad(45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80*i),math.rad(-45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(45+45*i)) * CFrame.new(0, 0, 0.2)
    end 
 attack=false
end
local FTCount = 0
function FlameTrail()
attack=true
 for i = 0 , 1 , 0.15 do
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45+45*i), math.rad(-45+55*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1+0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45+20*i))
     end 
 wait(0.1)
 ss(Head,1.5)
 fs(Head,0.5+1.5*math.random())
 local efftab = {}
  RW.C0 = CFrame.new(0.5,0.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(10))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(65))
 dmgcnnct(hitbox)
 for i = 0 , 1 , 0.15 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(0.5+1*i,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(10))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5-1*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+20*i),math.rad(-45),math.rad(65-155*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
  if FTCount <= MaxFT then
  local eff = effect("Bright red",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  eff.Transparency = 1
  table.insert(efftab,eff)
  FTCount = FTCount + 1
  OTND(eff)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 eff.Transparency = 1-0.5*i
 end 
 wait()
 eff.Transparency = 0.5
 end))
 end
     end 
 local rndmneg = math.random(1,2)
 if rndmneg == 1 then
 rndmdec1 = 13 * math.random()
 else
 rndmdec1 = -13 * math.random()
 end
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90-rndmdec1*i), math.rad(90), math.rad(10-(rndmdec1*2)*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+20*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5,0.5,-0) * CFrame.fromEulerAnglesXYZ(math.rad(100),math.rad(-45),math.rad(-90))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(90)) * CFrame.new(0, 0, 0.2)
     end 
 ss(Head,1.5)
 fs(Head,0.5+1.5*math.random())
 Hitdeb = 0
 for i = 0 , 1 , 0.15 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1.5-1.5*i,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-rndmdec1), math.rad(90), math.rad(10-(rndmdec1*2)))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-200*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5+1*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(100-80*i),math.rad(-45),math.rad(-90+135*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
  if FTCount <= MaxFT then
  local eff = effect("Bright red",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  eff.Transparency = 1
  table.insert(efftab,eff)
  FTCount = FTCount + 1
  OTND(eff)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 eff.Transparency = 1-0.5*i
 end 
 wait()
 eff.Transparency = 0.5
 end))
 end
     end 
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
 for i = 0 , 1 , 0.2 do
                wait()
  local rndmd = rndmdec1-rndmdec1*i
  RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad((90-rndmd)), math.rad(90), math.rad((10-(rndmd*2))-20*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90-10*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
  end 
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1*i,0.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad(90-20*i), math.rad(90-90*i), math.rad(-10-35*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-100+100*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80-10*i),math.rad(-45+45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(90-45*i)) * CFrame.new(0, 0, 0.2)
  end 
 ss(Head,1.5)
 fs(Head,0.5+1.5*math.random())
 wait(0.1)
 Hitdeb = 0
 for i = 0 , 1 , 0.2 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1,0.5+1*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(70+65*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5+1*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(70+65*i),math.rad(0),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(45)) * CFrame.new(0, 0, 0.2)
  if FTCount <= MaxFT then
  local eff = effect("Bright red",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  eff.Transparency = 1
  table.insert(efftab,eff)
  FTCount = FTCount + 1
  OTND(eff)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 eff.Transparency = 1-0.5*i
 end 
 wait()
 eff.Transparency = 0.5
 end))
 end
  end 
 coroutine.resume(coroutine.create(function()
 wait(5)
 for _,eff in pairs(efftab) do
 wait()
 eff.Parent = nil
 FTCount = FTCount - 1
 end end))
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,1.5-1*i,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(135-55*i), math.rad(45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5-1*i,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(135-55*i),math.rad(-45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(45+45*i)) * CFrame.new(0, 0, 0.2)
   end 
 dmgdc()
 attack=false
end
 
 
function LifeDrain()
attack=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i), math.rad(45), math.rad(-45+90*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90*i), math.rad(0))
  LW.C0 = CFrame.new(-1+1.25*i,0.5+0.25*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+25*i),math.rad(-45+90*i),math.rad(45+25*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90*i), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
     end 
------
local nrmag = 50
local nrprsn = nil
wait() 
--
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Torso"); 
if head ~= nil then 
local targ = head.Position - Torso.Position; 
local mag = targ.magnitude; 
if mag <= 50 and c[i].Name ~= Player.Name then 
if mag < nrmag then
nrmag = mag
nrprsn = c[i]
end
end end end end
--
if nrprsn == nil then 
attack = false     
return end
local C = 0
local bp = Instance.new("BodyPosition")
local bg = Instance.new("BodyGyro")
bp.Parent = Torso
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = bp.P + 10000
local CF = nrprsn.Torso.CFrame
bp.position = CF.p + CFrame.new(Torso.Position,CF.p).lookVector * -3
bg.Parent = Torso
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = bg.P + 100000
bg.cframe = CFrame.new(Torso.Position,CF.p) * CFrame.Angles(math.rad(0),0,0)
ss(Head,2)
wait(0.1)
local FirstP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
local LastP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 for i = 0 , 1 , 0.2 do
                wait()
  C = C + 1
  RW.C0 = CFrame.new(1-1*i,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(math.rad(135-90*i), math.rad(45), math.rad(45-135*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(0))
  LW.C0 = CFrame.new(0.25-1.75*i,0.75-0.25*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(105-60*i),math.rad(45),math.rad(70-125*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
  if C == 3 then
  bp.P = bp.P + 10000
bp.position = CF.p + CFrame.new(Torso.Position,CF.p).lookVector * 6
bg.cframe = CFrame.new(Torso.Position,CF.p) * CFrame.Angles(math.rad(-45),0,0)
  end
  if C == 2 then
  FirstP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
  elseif C == 5 then
  LastP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
  end
     end 
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(5,1,5)
effectsmsh.MeshType = "Sphere"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("White")
effectsg.Reflectance = Ref
local point1 = FirstP
local LP = LastP
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
wait()
effectsg.Parent = nil
end
end))
local critrandomizer = math.random(1,crtrate)
local rndmdamage = 0
if critrandomizer ~= 1 then
rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,nrprsn.Head,false)
nrprsn.Humanoid:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,nrprsn.Head,true)
nrprsn.Humanoid:TakeDamage(rndmdamage)
end
local tempmod = Instance.new("Model",Workspace)
for l = 1 , rndmdamage/5 do
local meshz = Instance.new("SpecialMesh")
meshz.Scale = Vector3.new(1.5,1.5,1.5)
meshz.MeshType = "Sphere"
local shellz = Instance.new("Part")
meshz.Parent = shellz
shellz.Anchored = false
shellz.formFactor = 0
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = hitbox.CFrame
shellz.Parent = tempmod
shellz.Transparency = 0.5
shellz.BrickColor = BrickColor.new("White")
shellz.CanCollide = false
shellz.Reflectance = 0
local bv = Instance.new("BodyPosition") 
bv.Parent = shellz
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bv.P = bv.P + 10000
bv.position = shellz.Position + Vector3.new(math.random(-25,25),math.random(-2.5,7.5),math.random(-25,25))
coroutine.resume(coroutine.create(function()
wait(3)
bv.maxForce = Vector3.new(0,math.huge,0) 
coroutine.resume(coroutine.create(function() 
local dd = false
while shellz.Transparency ~= 1 and not dd do
wait(0.1) 
local cc = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = cc[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = cc[i]:findFirstChild("Head"); 
if head ~= nil then 
local targ = head.Position - shellz.Position; 
local mag = targ.magnitude; 
if mag <= 5 then 
dd = true
damagesplat(5+darkboost,head,false)
hum.Health = hum.Health + 5 + darkboost
for i = 0 , 1 , 0.05 do
wait()
shellz.Transparency = 1*i
end
shellz.Parent = nil
end 
end 
end 
end 
end 
end)) 
 
end))
local hx = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
shellz.Transparency = 1-1*i
end
shellz.Transparency = 0
end))
coroutine.resume(coroutine.create(function()
wait(60)
for ii,shellz in pairs(tempmod:GetChildren()) do
for i = 0 , 1 , 0.1 do
wait()
shellz.Transparency = 1*i
end
shellz.Parent = nil
end
tempmod.Parent = nil
end))
end
wait(0.5)
----
  RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
 attack=false
bp.Parent = nil bg.Parent = nil
end
 
 
--TEST
 
hammer = Torso
 
function doDamage(hit)
 local humanoid = hit.Parent:findFirstChild("Humanoid")
 local hum = Player.Character:findFirstChild("Humanoid") -- non-nil if tool held by a character
 if humanoid~=nil and humanoid ~= hum and hum ~= nil then
  local foundd = false
  for ii = 1 , #AoETrue do
  if AoETrue[ii] == hit.Parent.Name then
  foundd = true
  end
  end
  if foundd then
  end
  --
  if not foundd then
  humanoid:TakeDamage(5)
  if Mode == "Fire" then
  end
  damagesplat(5,humanoid.Parent.Torso,false)
  table.insert(AoETrue,hit.Parent)
  end
 
  if humanoid.Health <= 0 then
   local c = hit.CFrame
   hit.CFrame = CFrame.new(hit.Position)
   hit.CFrame = c
  end
  delay(1, function() end)
 else
  local c = hit.CFrame hit.CFrame = CFrame.new(hit.Position) hit.CFrame = c
 end
end
function bewm(obj, pos, notme)
 if (obj ~= notme) then
  if (obj.className == "Part") or (obj.className == "Seat") then
   if (not obj.Anchored) and (((pos - obj.Position) * Vector3.new(1, 0, 1)).magnitude < 24) and (pos.y <= obj.Position.y + 2) and (pos.y >= obj.Position.y - 2) then
    delay((pos - obj.Position).magnitude / 24, function() obj.Velocity = ((obj.Position - pos).unit + Vector3.new(0, 0.5, 0)) * 96 + obj.Velocity obj.RotVelocity = obj.RotVelocity + Vector3.new(obj.Position.z - pos.z, 0, pos.x - obj.Position.x).unit * 40 doDamage(obj)    end)
   end
  elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
   local list = obj:GetChildren()
   for x = 1, #list do
    bewm(list[x], pos, notme)
   end
  end
 end
end
 
function attackr()
local shockRing = Instance.new("Part")
shockRing.formFactor = 2
shockRing.Size = Vector3.new(1, 0.4, 1)
shockRing.Anchored = true
shockRing.Locked = true
shockRing.CanCollide = false
shockRing.archivable = false
shockRing.TopSurface = 0
shockRing.BottomSurface = 0
shockRing.Transparency = 0
if Mode == "Fire" then
shockRing.BrickColor = BrickColor.new("Really red")
elseif Mode == "Dark" then
shockRing.BrickColor = BrickColor.new("Bright violet")
elseif Mode == "Ice" then
shockRing.BrickColor = BrickColor.new("Bright blue")
shockRing.Reflectance = 0.2
end
local decal = Instance.new("CylinderMesh")
decal.Parent = shockRing
decal.Scale = Vector3.new(1,0.1,1)
 wait(0.2)
 local pos = hammer.CFrame * (Vector3.new(0, -2.5, 0))
 bewm(game.Workspace, pos, Player.Character)
 shockRing.CFrame = CFrame.new(pos)
 for x = 0, 1 , 0.0625 do
  delay((x*16) / 30, function() shockRing.Parent = nil shockRing.Size = Vector3.new(0, 0.4, 0) + Vector3.new(3.2, 0, 3.2) * (x*16) shockRing.Transparency = 1*x    shockRing.Parent = Player.Character end)
 end
 delay(1, function() 
  shockRing.Parent = nil   
  for ii = 1 , #AoETrue do
  table.remove(AoETrue,#AoETrue)
  end end)
end
local modemodel = Instance.new("Model",swordholder)
local mrdychng = false
function FireMode()
attack=true
Mode = "Fire"
fireboost = 5
mrdychng = true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5+1*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i), math.rad(45-45*i), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1+1*i,0.5+1*i,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80-80*i),math.rad(-45+45*i),math.rad(45+65*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
cs(Head,1.5)
local tempmod = Instance.new("Model",swordholder)
for l = 1 , 20 do
local meshz = Instance.new("SpecialMesh")
meshz.Scale = Vector3.new(0.5,0.5,0.5)
meshz.MeshType = "Sphere"
local shellz = Instance.new("Part")
meshz.Parent = shellz
shellz.Anchored = false
shellz.formFactor = 0
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = hitbox.CFrame * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
shellz.Parent = tempmod
shellz.Transparency = 0.5
shellz.BrickColor = BrickColor.new("Really red")
shellz.CanCollide = false
shellz.Reflectance = 0
local bv = Instance.new("BodyPosition") 
bv.Parent = shellz
bv.maxForce = Vector3.new(200000,200000,200000) 
bv.position = shellz.Position
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
shellz.Transparency = 1-1*i
end
shellz.Transparency = 0
end))
coroutine.resume(coroutine.create(function()
wait(0.05)
bv.position = hitbox.Position 
for i = 1 , 20 do
wait(0.1)
bv.position = shell.Position 
end
shellz.Parent = nil
end))
wait(0.01)
end
coroutine.resume(coroutine.create(function ()
wait(0.25)
tempmod.Parent = nil
end))
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1.5,1.5-1*i,0) * CFrame.fromEulerAnglesXYZ(math.rad(135-45*i), math.rad(0), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(0,1.5-1*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(110-45*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
bs(Head,0.75)
attackr()
for zz = 1 , 1  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.new(0,-1.5,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Really red")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.075 do
wait()
mesh.Scale = Vector3.new(20,5,20) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 1  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,20,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.new(0,1,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Really red")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
mesh.Scale = Vector3.new(10,20,10) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 3  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(5*zz,5*zz,5*zz) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.new(0,-1,0)
shell.Parent = swordholder
shell.Transparency = 0
if math.fmod(zz,2) == 1 then
shell.BrickColor = BrickColor.new("Bright orange")
elseif math.fmod(zz,2) == 0.5 then
shell.BrickColor = BrickColor.new("Bright red")
else
shell.BrickColor = BrickColor.new("Bright yellow")
end
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
mesh.Scale = Vector3.new(10*zz,10*zz,10*zz) * Vector3.new(i,i,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
 
 
for ii,z in pairs(modemodel:GetChildren()) do
z.Parent = nil
end
 
local wing1m = Instance.new("BlockMesh")
wing1m.Scale = Vector3.new(1,1,1)
local wing1p = Instance.new("Part")
wing1p.formFactor = 3
wing1p.CanCollide = false
wing1p.Name = "FlameWingP1"
wing1p.Locked = true
wing1p.Size = Vector3.new(0.2,0.2,0.2)
wing1p.Parent = modemodel
wing1m.Parent = wing1p
wing1p.BrickColor = BrickColor.new("Bright red")
wing1p.Transparency = 1
local wing1w = Instance.new("Weld")
wing1w.Parent = wing1p
wing1w.Part0 = wing1p
wing1w.Part1 = Torso
wing1w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0 , 0)
wing1w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(-1, 0, 0) 
local wing2m = Instance.new("BlockMesh")
wing2m.Scale = Vector3.new(1,1,1)
local wing2p = Instance.new("Part")
wing2p.formFactor = 3
wing2p.CanCollide = false
wing2p.Name = "FlameWingP2"
wing2p.Locked = true
wing2p.Size = Vector3.new(0.2,0.2,0.2)
wing2p.Parent = modemodel
wing2m.Parent = wing2p
wing2p.BrickColor = BrickColor.new("Bright red")
wing2p.Transparency = 1
local wing2w = Instance.new("Weld")
wing2w.Parent = wing2p
wing2w.Part0 = wing2p
wing2w.Part1 = Torso
wing2w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0 , 0)
wing2w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(1, 0, 0) 
coroutine.resume(coroutine.create(function()
for ringi = math.rad(-20) , math.rad(130) , math.rad(10) do
wait(0.1)
local ringm = Instance.new("BlockMesh")
ringm.Scale = Vector3.new(1,1,1)
local ringp = Instance.new("Part")
ringp.formFactor = 3
ringp.CanCollide = false
ringp.Name = "FlameWing"..ringi
ringp.Locked = true
ringp.Size = Vector3.new(0.2,2,0.8)
ringp.Parent = modemodel
ringm.Parent = ringp
ringp.BrickColor = BrickColor.new("Bright red")
ringp.Reflectance = 0.1
ringp.Transparency = 1
local ringw = Instance.new("Weld")
ringw.Parent = ringp
ringw.Part0 = ringp
ringw.Part1 = wing1p
ringw.C1 = CFrame.fromEulerAnglesXYZ(ringi, 0, 0) * CFrame.new(0, ringp.Size.y/4 , 0)
ringw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(45)) * CFrame.new(0, -1, 0) --* CFrame.new(-0.6, 0, 0) ---msh5.Scale.x/1.625
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
ringp.Transparency = 1-1*i
end
ringp.Transparency = 0
end))
end end))
coroutine.resume(coroutine.create(function()
for ringi = math.rad(-20) , math.rad(130) , math.rad(10) do
wait(0.1)
local ringm = Instance.new("BlockMesh")
ringm.Scale = Vector3.new(1,1,1)
local ringp = Instance.new("Part")
ringp.formFactor = 3
ringp.CanCollide = false
ringp.Name = "FlameWing2_"..ringi
ringp.Locked = true
ringp.Size = Vector3.new(0.2,2,0.8)
ringp.Parent = modemodel
ringm.Parent = ringp
ringp.BrickColor = BrickColor.new("Bright red")
ringp.Reflectance = 0.1
ringp.Transparency = 1
local ringw = Instance.new("Weld")
ringw.Parent = ringp
ringw.Part0 = ringp
ringw.Part1 = wing2p
ringw.C1 = CFrame.fromEulerAnglesXYZ(ringi+math.rad(0), 0, 0) * CFrame.new(-0, ringp.Size.y/4 , 0)
ringw.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(-45)) * CFrame.new(-0, -1, 0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
ringp.Transparency = 1-1*i
end
ringp.Transparency = 0
end))
end end))
local wingp1m = Instance.new("SpecialMesh")
wingp1m.Scale = Vector3.new(1,1,1)
wingp1m.MeshType = "Sphere"
local wingp1p = Instance.new("Part")
wingp1p.formFactor = 3
wingp1p.CanCollide = false
wingp1p.Name = "FlameOrb"
wingp1p.Locked = true
wingp1p.Size = Vector3.new(1,1,1)
wingp1p.Parent = modemodel
wingp1m.Parent = wingp1p
wingp1p.Reflectance = 0.2
wingp1p.BrickColor = BrickColor.new("Bright red")
local wingp1w = Instance.new("Weld")
wingp1w.Parent = wingp1p
wingp1w.Part0 = wingp1p
wingp1w.Part1 = Torso
wingp1w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0 , 0)
wingp1w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(0, -0.5, 0.5) 
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
wingp1p.Transparency = 1-1*i
end
wingp1p.Transparency = 0
end))
local Firee = modemodel
local Spawn = wingp1p
local colors = {BrickColor.new("Bright red"),BrickColor.new("Bright yellow"),BrickColor.new("Bright orange")} 
local Embers = {} 
local modelz = Instance.new("Model",Firee)
modelz.Name = "FireHolder"
for X = 1, 15 do
local f = Instance.new("Part") 
f.Parent = nil
f.BrickColor = colors[math.random(1, # colors)] 
f.Size = Vector3.new(1,1,1) 
f.formFactor = 3
f.Anchored = true 
f.Locked = true 
f.CanCollide = false 
f.Transparency = 0.5 
f.Name = "Fire"
f.TopSurface = 0
f.BottomSurface = 0
Instance.new("BlockMesh",f)
table.insert(Embers, f) 
end 
local R = 0
coroutine.resume(coroutine.create(function ()
repeat 
wait() 
R = R + 1
for X = 1, # Embers do 
Embers[X].Parent = modelz
local FM = math.fmod(R + X, # Embers) 
if FM == 1 then 
RandPos = Vector3.new(math.random(-Spawn.Size.x * 5, Spawn.Size.x * 5) / 10, Spawn.Size.y / 2, math.random(-Spawn.Size.x * 5, Spawn.Size.x * 5) / 10) 
RandDir = Vector3.new(math.random(-100,100), math.random(-100,100), math.random(-100,100)) 
Embers[X].CFrame = CFrame.new(Spawn.Position + RandPos, (Spawn.Position * rndm) + RandPos + RandDir) 
Embers[X].Mesh.Scale = Vector3.new(1,1,1)
else 
Embers[X].CFrame = Embers[X].CFrame + Embers[X].CFrame.lookVector*0.5
Embers[X].Mesh.Scale = Embers[X].Mesh.Scale - Vector3.new(0.1,0.1,0.1)
end 
end 
until wingp1p.Parent == nil
for i = 0 ,1 , 0.1 do
wait(0.2)
for X = 1, # Embers do 
Embers[X].Transparency = 0.5+0.5*i
end
end
for X = 1, # Embers do 
Embers[X].Parent = nil
end
end))
  for ii = 1 , #AoETrue do
  table.remove(AoETrue,#AoETrue)
  end
 wait(0.25)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+25*i), math.rad(0), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(0,0.5+0.5*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(65+25*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(115-35*i), math.rad(45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1*i,1-0.5*i,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80*i),math.rad(0),math.rad(90-45*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
  RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
attack=false
wait(1.5)
mrdychng = false
end
function NeutralMode()
attack=true
Mode = "None"
fireboost = 0
iceboost = 0
darkboost = 0
ss(Head,1)
cs(Head,2)
mrdychng = true
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i),math.rad(-45),math.rad(45-45*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100*i), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(70*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
coroutine.resume(coroutine.create(function()
for ii,z in pairs(modemodel:GetChildren()) do
if string.sub(z.Name,0,string.len(z.Name)-1) ~= "FlameWingP" then
wait()
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
z.Transparency = (1-z.Transparency)*i
end
z.Parent = nil
end))
end
end
wait(0.5)
for ii,z in pairs(modemodel:GetChildren()) do
wait()
z.Parent = nil
end
end))
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(45), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100+20*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-45),math.rad(0))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100+20*i), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(70+20*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
 
 wait(0.25)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(45), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(120-120*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i),math.rad(-45),math.rad(45*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(120-120*i), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90-90*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
  RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
attack=false
wait(0.5)
mrdychng = false
end
 
function ob1d(mouse) 
hold = true 
if attack == true then return end
end 
function ob1u(mouse)  
end 
buttonhold = false
function key(key)
if attack == true then return end
if key == "q" then
if attacktype == 1 then
Combo1a()
elseif attacktype == 2 then
Combo1b()
elseif attacktype == 3 then
Combo1c()
end
end
if key == "e" then
if attacktype == 1 then
BlizzardSword()
end
end
if key == "r" then
FlameTrail()
end
if key == "t" then
LifeDrain()
end
if Mode == "None" and not mrdychng then
if key == "z" then
FireMode()
end
elseif not mrdychng then
if key == "z" or key == "x" or key == "c" then
NeutralMode()
end
end
end 
 
function key2(key) 
end 
function s(mouse) 
repeat wait() until not attack
while ev.Value ~= false do
wait(0.1)
end
MMouse = mouse
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
        equipanim()
  ev.Value = true
--[[
script.Parent = Bin.Parent
Bin:remove()]]
end 
function ds(mouse) 
repeat wait() until not attack
while ev.Value == false do
wait(0.1)
end
 
hideanim()
        wait(0.1)
ev.Value = false
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
 
--lego
 