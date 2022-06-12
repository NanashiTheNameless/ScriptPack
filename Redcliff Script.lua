--[[                                              
Script shared by eletronix                                              ]]

Me = game.Players.LocalPlayer
Char = Me.Character
Selected = false
Attack = 1
Attacking = false
Hurt = false
Deb = true
Effect = false
DMG = 35
BlockAnim = false
Rotation = 0
RotationOn = false

CamStyles = {"Attach", "Custom", "Fixed", "Follow"}
Where = 2
Style = CamStyles[Where]

Asset = "http://www.roblox.com/asset/?id="

CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Add = {
Mesh = function(P, Id, Id2, scale)
local m = Instance.new("SpecialMesh", P)
m.Scale = scale
m.MeshId = Id
m.TextureId = Id2
end
}

Sounds = {
Hit = {"http://www.roblox.com/asset/?id=10209590", 0.8, 1},
Block = {"rbxasset://sounds\\metal.ogg", 1.3, 1},
Slash = {"rbxasset://sounds\\swordslash.wav", 1.6, 1},
}

Meshes = {
Coif = {Asset..(52238093), Asset..(33364735)},
Torso = {Asset..(33309581), Asset..(33308631)},
Rarm = {Asset..(33309581), Asset..(33308774)},
Larm = {Asset..(33309581), Asset..(33308496)},
Rleg = {Asset..(33309581), Asset..(33308827)}, 
Lleg = {Asset..(33309581), Asset..(33308564)},
Sword = {Asset..(49754754), Asset..(49754655)},
Shield = {Asset..(49759449), Asset..(49757732)},
}

function waitChild(p, n)
local child = p:findFirstChild(n)
if child then return child end
while true do
child = p.ChildAdded:wait()
if child.Name == n then return child end
end
end

function Part(P, Anch, Coll, Tran, Ref, Col, Size)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = Tran
p.Reflectance = Ref
p.CanCollide = Coll
p.Anchored = Anch
p.BrickColor = BrickColor.new(Col)
p.formFactor = "Custom"
p.Size = Size
p.Parent = P
p.Locked = true
p:BreakJoints()
return p
end

function Weld(P0, P1, C0, C1)
local w = Instance.new("Weld")
w.Part0 = P0
w.Part1 = P1
w.C0 = C0
w.C1 = C1
w.Parent = P0
return w
end

for i,v in pairs(Char:children()) do
if v.Name == "Icy" then v:remove() end 
end

Mod = Instance.new("Model")
Mod.Name = "Icy"

Rarm = waitChild(Char, "Right Arm")
Larm = waitChild(Char, "Left Arm")
Rleg = waitChild(Char, "Right Leg")
Lleg = waitChild(Char, "Left Leg")
Torso = waitChild(Char, "Torso")
Hum = waitChild(Char, "Humanoid")
Neck = waitChild(Torso, "Neck")

RH = waitChild(Torso, "Right Hip")
LH = waitChild(Torso, "Left Hip")

function Play(Sound)
local s = Instance.new("Sound")
s.SoundId = Sound[1]
s.Pitch = Sound[2]
s.Volume = Sound[3]
s.PlayOnRemove = true
s.Parent = Torso
game.Debris:AddItem(s, 0.0001)
end

for _,v in pairs(Char:children()) do
if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
v:remove()
elseif v:IsA("BoolValue") and v.Name == "Block" then
v:remove()
end
end

for _,v in pairs(Torso:children()) do
if v:IsA("Decal") or v:IsA("Texture") then v:remove() end
end

CamBlock = Part(Mod, true, false, 1, 0, "White", V3(0.4, 0.4, 0.4))
Cam = workspace.CurrentCamera

local Blocking = Instance.new("BoolValue")
Blocking.Value = false
Blocking.Name = "Block"
Blocking.Parent = Char

Torso.Transparency = 1

Faketorso = Part(Mod, false, false, 0, 0, Torso.BrickColor.Name, V3(1.98, 1.98, 0.98))
FW = Weld(Torso, Faketorso, CN(), CN())

Hat = Instance.new("Hat", Char)
Hat.Name = "Epoc."

HatHandle = Part(Hat, false, false, 0, 0, "White", V3(1.5, 1.8, 1.4))
HatHandle.Name = "Handle"
Hat.AttachmentPos = V3(0, 0.3, 0.1)
Add.Mesh(HatHandle, Meshes.Coif[2], Meshes.Coif[1], V3(1.1,1.1,1.1))

for _,v in pairs({{Rarm, Meshes.Rarm}, {Larm, Meshes.Larm}, {Rleg, Meshes.Rleg}, {Lleg, Meshes.Lleg}, {Faketorso, Meshes.Torso}}) do
for _,v in pairs(v[1]:children()) do
if v:IsA("SpecialMesh") then
v:remove()
end
end
local mes = Add.Mesh(v[1], v[2][2], v[2][1], V3(1,1,1))
end

Sword = Part(Mod, false, false, 0, 0, "White", V3(0.8, 0.4, 4.5))
Add.Mesh(Sword, Meshes.Sword[2], Meshes.Sword[1], V3(2.1, 2.5, 2.15))

Shield = Part(Mod, false, false, 0, 0, "White", V3(2.3, 0.6, 3))
Add.Mesh(Shield, Meshes.Shield[2], Meshes.Shield[1], V3(1.5, 1.6, 1.3))

RABrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
LABrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
RLBrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
LLBrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))

RABW = Weld(Torso, RABrick, CN(), CN(-1.5, -0.5, 0))
LABW = Weld(Torso, LABrick, CN(), CN(1.5, -0.5, 0))
RLBW = Weld(Torso, RLBrick, CN(), CN(-0.5, 1.2, 0))
LLBW = Weld(Torso, LLBrick, CN(), CN(0.5, 1.2, 0))

function Atch(p)
RABW.Part0 = p
LABW.Part0 = p
RLBW.Part0 = p
LLBW.Part0 = p
RH.Part0 = p
LH.Part0 = p
end

RAW = Weld(RABrick, nil, CN(), CN(0, 0.5, 0))
LAW = Weld(LABrick, nil, CN(), CN(0, 0.5, 0))
RLW = Weld(RLBrick, nil, CN(), CN(0, 0.8, 0))
LLW = Weld(LLBrick, nil, CN(), CN(0, 0.8, 0))

HB = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
HBW = Weld(Rarm, HB, CN(0, -1, 0), CN())
HW = Weld(HB, nil, CN(), CN(0, 0, -2) * CA(MP, 0, MR(90)))

SW = Weld(Larm, Shield, CA(MR(-90), 0, MR(90)), CN(0, 0.4, 0.2) * CA(MR(160), 0, 0))
TW = Weld(Torso, Sword, CA(MR(90), MR(-40), 0), CN(0, -0.7, 0))

function Normal()
SW.C1 = CN(0, 0.4, 0.2) * CA(MR(160), 0, 0)
HW.C0 = CN()
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(70), MR(40), MR(-30))
LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(45), MR(-35), MR(20))
HW.C1 = CN(0, 0, -2) * CA(MP, 0, MR(-90))
FW.C0 = CN()
end

Mod.Parent = Char

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",Me.Backpack)
h.Name = "Redcliff"
script.Parent = h
end

Bin = script.Parent

function getStat(c)
local blo = false
local h
for _,v in pairs(c:children()) do
if v:IsA("Humanoid") then
if v.Health > 0 then
h = v
end
elseif v:IsA("BoolValue") then
if v.Name == "Block" then
blo = v.Value
end
end
end
return h, blo
end

function Damage(h, dmg)
h.Health = h.Health - dmg
end

function SwordDmg(hit)
local h, b = getStat(hit.Parent)
if h then
if Hurt and Deb and b == false then
Damage(h, MRA(5+(DMG/3), DMG+5))
Play(Sounds.Hit)
elseif Hurt and Deb and b then
Play(Sounds.Block)
end
Deb = false
end
end

Sword.Touched:connect(SwordDmg)

function SE(part, cf)
coroutine.resume(coroutine.create(function()
Effect = true
local lastP = (part.CFrame * cf).p
while Effect do
wait()
local p = Part(Mod, true, false, 0, 0, "Neon orange", V3(0.2, 0.2, 0.2))
local posnow = (part.CFrame * cf).p
local magn = (lastP - posnow).magnitude
local cc = CN(lastP, posnow) * CA(MR(-90), 0, 0) * CN(0, magn/2, 0)
local m = Instance.new("SpecialMesh", p)
m.MeshType = "Head"
m.Scale = V3(0.9, magn*5+0.45, 0.9)
p.CFrame = cc
coroutine.resume(coroutine.create(function()
for i = 0, 1, 0.15 do
wait()
m.Scale = V3(0.9-0.9*i, magn*5+0.45-0.45*i, 0.9-0.9*i)
p.Transparency = -0.2+1.2*i
end
p:remove()
end))
lastP = (part.CFrame * cf).p
end
end))
end

function EE()
Effect = false
end

function SetAtk(S, E)
coroutine.resume(coroutine.create(function()
Attack = E
wait(0.25)
Attack = S
end))
end

Combo = {
function()
Attack = 1
Atch(Faketorso)
Attacking = true
for i = 0.15, 1, 0.15 do
FW.C0 = CA(0, MR(-35*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(70+90*i), MR(40-20*i), MR(-30+30*i))
HW.C0 = CA(MR(20*i), 0, MR(-10*i))
LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(45+10*i), MR(-35+20*i), MR(20))
wait()
end
Play(Sounds.Slash)
for i = 0.33, 1, 0.33 do
FW.C0 = CA(0, MR(-35-10*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(160+10*i), MR(20-5*i), MR(10*i))
HW.C0 = CA(MR(20+5*i), 0, MR(-10))
LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(55+5*i), MR(-15+5*i), MR(20))
wait()
end
SE(Sword, CN(0, 0, 2.2))
Hurt = true
Deb = true
for i = 0.16, 1, 0.16 do
FW.C0 = CA(0, MR(-45+60*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(170-140*i), MR(15+10*i), MR(10-20*i))
HW.C0 = CA(MR(25-75*i), 0, MR(-10))
LAW.C0 = CN(0.3, 0, -0.5+0.8*i) * CA(MR(60-90*i), MR(-10+20*i), MR(20-30*i))
wait()
end
Hurt = false
for i = 0.25, 1, 0.25 do
FW.C0 = CA(0, MR(15+10*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(30-10*i), MR(25+5*i), MR(-10-5*i))
HW.C0 = CA(MR(-50-5*i), 0, MR(-10))
LAW.C0 = CN(0.3, 0, 0.3+0.1*i) * CA(MR(-30-10*i), MR(10+5*i), MR(-10-5*i))
wait()
end
EE()
SetAtk(1, 2)
Attacking = false
wait(0.08)
for i = 0.2, 1, 0.2 do
if Attacking then return end
FW.C0 = CA(0, MR(25-25*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(20+40*i), MR(30+8*i), MR(-15-10*i))
HW.C0 = CA(MR(-55+45*i), 0, MR(-10+10*i))
LAW.C0 = CN(0.3, 0, 0.4-0.8*i) * CA(MR(-40+75*i), MR(15-45*i), MR(-15+30*i))
wait()
end
for i = 0.33, 1, 0.33 do
if Attacking then return end
FW.C0 = CA(0, 0, 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(60+10*i), MR(38+2*i), MR(-25-5*i))
HW.C0 = CA(MR(-10+10*i), 0, 0)
LAW.C0 = CN(0.3, 0, -0.4-0.1*i) * CA(MR(35+10*i), MR(-30-5*i), MR(15+5*i))
wait()
end
Attack = 1
Attacking = false
FW.C0 = CN()
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(70), MR(40), MR(-30))
HW.C0 = CN()
Atch(Torso)
end,
function()
Attack = 2
Attacking = true
for i = 0.1, 1, 0.1 do
FW.C0 = CA(0, MR(25+15*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(20+65*i), MR(30-30*i), MR(-15-35*i))
LAW.C0 = CN(0.3+0.3*i, 0, 0.2) * CA(MR(-40-10*i), MR(15), MR(-15))
HW.C0 = CA(MR(-55+45*i), MR(80*i), MR(-10+10*i))
wait()
end
Play(Sounds.Slash)
for i = 0.25, 1, 0.25 do
FW.C0 = CA(0, MR(40+5*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(85+5*i), 0, MR(-50-5*i))
LAW.C0 = CN(0.6, 0, 0.2) * CA(MR(-50-5*i), MR(15), MR(-15))
HW.C0 = CA(MR(-10+10*i), MR(80+10*i), 0)
wait()
end
SE(Sword, CN(0, 0, 2.2))
Hurt = true
Deb = true
for i = 0.16, 1, 0.16 do
FW.C0 = CA(0, MR(45-80*i), 0)
RAW.C0 = CN(-0.3+0.3*i, 0.2, -0.4) * CA(MR(90), 0, MR(-55+95*i))
LAW.C0 = CN(0.6-0.3*i, 0, 0.2-0.8*i) * CA(MR(-55+130*i), MR(15-15*i), MR(-15+50*i))
HW.C0 = CA(0, MR(90), 0)
HW.C1 = CN(0, 0, -2) * CA(MP, MR(-40*i), MR(-90))
wait()
end
Hurt = false
for i = 0.25, 1, 0.25 do
FW.C0 = CA(0, MR(-35-10*i), 0)
RAW.C0 = CN(0.1*i, 0.2, -0.4) * CA(MR(90), 0, MR(40+10*i))
LAW.C0 = CN(0.3, 0, -0.6+0.1*i) * CA(MR(75+10*i), 0, MR(35+10*i))
HW.C0 = CA(0, MR(90), 0)
HW.C1 = CN(0, 0, -2) * CA(MP, MR(-40-5*i), MR(-90))
wait()
end
EE()
SetAtk(1, 3)
Attacking = false
wait(0.08)
for i = 0.16, 1, 0.16 do
if Attacking then return end
FW.C0 = CA(0, MR(-45+35*i), 0)
RAW.C0 = CN(0.1-0.4*i, 0.2, -0.4) * CA(MR(90-15*i), MR(35*i), MR(50-70*i))
LAW.C0 = CN(0.3, 0, -0.6+0.1*i) * CA(MR(85-30*i), MR(-30*i), MR(45-20*i))
HW.C0 = CA(0, MR(90-80*i), 0)
HW.C1 = CN(0, 0, -2) * CA(MP, MR(-45+40*i), MR(-90))
wait()
end
for i = 0.25, 1, 0.25 do
if Attacking then return end
FW.C0 = CA(0, MR(-10+10*i), 0)
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(75-5*i), MR(35+5*i), MR(-20-10*i))
LAW.C0 = CN(0.3, 0, -0.6+0.1*i) * CA(MR(55-10*i), MR(-30-5*i), MR(25-5*i))
HW.C0 = CA(0, MR(10-10*i), 0)
HW.C1 = CN(0, 0, -2) * CA(MP, MR(-5+5*i), MR(-90))
wait()
end
Normal()
Atch(Torso)
end,
function()
Attack = 3
Attacking = true
for i = 0.15, 1, 0.15 do
FW.C0 = CA(0, MR(-45+35*i), 0)
RAW.C0 = CN(0.1-0.2*i, 0.2-0.2*i, -0.4) * CA(MR(90+30*i), 0, MR(50-70*i)) * CN(0, -0.5*i, 0)
LAW.C0 = CN(0.3-0.2*i, 0, -0.5) * CA(MR(85+35*i), 0, MR(45-25*i)) * CN(0, -0.5*i, 0)
HW.C0 = CA(0, MR(90-70*i), MR(-45*i))
HW.C1 = CN(0, 0, -2) * CA(MP, MR(-45+45*i), MR(-90))
wait()
end
for i = 0.18, 1, 0.18 do
FW.C0 = CA(0, MR(-10+10*i), 0)
RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(120+80*i), 0, MR(-20-15*i)) * CN(0, -0.5-0.1*i, 0)
LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(120+80*i), 0, MR(20+15*i)) * CN(0, -0.5-0.1*i, 0)
HW.C0 = CA(0, MR(20-20*i), MR(-45-10*i))
HW.C1 = CN(0, 0, -2) * CA(MP, 0, MR(-90))
wait()
end
Play(Sounds.Slash)
for i = 0.25, 1, 0.25 do
FW.C0 = CA(0, 0, 0)
RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(200+10*i), 0, MR(-35-5*i)) * CN(0, -0.6, 0)
LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(200+10*i), 0, MR(35+5*i)) * CN(0, -0.6, 0)
HW.C0 = CA(0, 0, MR(-55+5*i))
wait()
end
SE(Sword, CN(0, 0, 2.2))
Hurt = true
Deb = true
for i = 0.14, 1, 0.14 do
RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(210-180*i), 0, MR(-40)) * CN(0, -0.6-0.25*i, 0)
LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(210-180*i), 0, MR(40)) * CN(0, -0.6-0.25*i, 0)
HW.C0 = CA(MR(-55*i), MR(-30*i), MR(-50))
wait()
end
Hurt = false
EE()
Play(Sounds.Block)
for i = 0.33, 1, 0.33 do
RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(30+5*i), 0, MR(-40)) * CN(0, -0.85+0.4*i, 0)
LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(30+5*i), 0, MR(40)) * CN(0, -0.85+0.4*i, 0)
HW.C0 = CA(MR(-55+5*i), MR(-30), MR(-50))
wait()
end
for i = 0.16, 1, 0.16 do
RAW.C0 = CN(-0.1-0.2*i, 0.2*i, -0.4) * CA(MR(35+25*i), MR(30*i), MR(-40+7*i)) * CN(0, -0.45+0.3*i, 0)
LAW.C0 = CN(0.1+0.2*i, 0, -0.5) * CA(MR(35+5*i), MR(-30*i), MR(40-15*i)) * CN(0, -0.45+0.3*i, 0)
HW.C0 = CA(MR(-50+40*i), MR(-30+25*i), MR(-50+45*i))
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(60+10*i), MR(30+10*i), MR(-33+3*i)) * CN(0, -0.15+0.15*i, 0)
LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(40+5*i), MR(-30-5*i), MR(25-5*i)) * CN(0, -0.15+0.15*i, 0)
HW.C0 = CA(MR(-10+10*i), MR(-5+5*i), MR(-5+5*i))
wait()
end
Attack = 1
Atch(Torso)
Attacking = false
Normal()
end
}

function onButtonDown()
if Attacking == false and BlockAnim == false and Blocking.Value == false then
Combo[Attack]()
end
end

function Block()
coroutine.resume(coroutine.create(function()
Blocking.Value = true
BlockAnim = trueCN
for i = 0.15, 1, 0.15 do
LAW.C0 = CN(0.3+0.4*i, 0, -0.5-0.4*i) * CA(MR(45+35*i), MR(-35+30*i), MR(20+50*i))
RAW.C0 = CN(-0.3-0.1*i, 0.2, -0.4) * CA(MR(70+15*i), MR(40-30*i), MR(-30-30*i))
SW.C1 = CN(0, 0.4, 0.2) * CA(MR(160+15*i), MR(-75*i), 0)
wait()
end
Play(Sounds.Block)
for i = 0.33, 1, 0.33 do
LAW.C0 = CN(0.7+0.1*i, 0, -0.9-0.1*i) * CA(MR(80+5*i), MR(-5+5*i), MR(70+10*i))
RAW.C0 = CN(-0.4, 0.2, -0.4) * CA(MR(85+5*i), MR(10-10*i), MR(-60-5*i))
SW.C1 = CN(0, 0.4, 0.2) * CA(MR(175+5*i), MR(-75-15*i), 0)
wait()
end
LAW.C0 = CN(0.8, 0, -1) * CA(MR(85), 0, MR(80))
repeat wait() until Blocking.Value == false
for i = 0.14, 1, 0.14 do
LAW.C0 = CN(0.8-0.5*i, 0, -1+0.5*i) * CA(MR(85-40*i), MR(-35*i), MR(80-60*i))
RAW.C0 = CN(-0.4+0.1*i, 0.2, -0.4) * CA(MR(90-20*i), MR(40*i), MR(-65+35*i))
SW.C1 = CN(0, 0.4, 0.2) * CA(MR(180-20*i), MR(-90+90*i), 0)
wait()
end
BlockAnim = false
Normal()
end))
end

function SelectAnim()
RAW.Part1 = Rarm
for i = 0.14, 1, 0.14 do
RAW.C0 = CA(MR(205*i), MR(30*i), MR(-10*i))
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(205+15*i), MR(30), MR(-10))
wait()
end
HW.C0 = CA(MR(40), MR(30), MR(120))* CN(0, 0, 0.15)
HW.Part1 = Sword
TW.Part1 = nil
for i = 0.18, 1, 0.18 do
RAW.C0 = CA(MR(220-80*i), MR(30-50*i), MR(-10+30*i))
HW.C0 = CA(MR(40-40*i), MR(30-30*i), MR(120-120*i))* CN(0, 0, 0.15-0.15*i)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(140-15*i), MR(-20-5*i), MR(20+5*i))
HW.C0 = CA(MR(-10*i), 0, 0)
wait()
end
LAW.Part1 = Larm
for i = 0.18, 1, 0.18 do
RAW.C0 = CN(-0.3*i, 0.2*i, -0.4*i) * CA(MR(125-45*i), MR(-25+60*i), MR(25-50*i))
LAW.C0 = CN(0.3*i, 0, -0.5*i) * CA(MR(40*i), MR(-30*i), MR(15*i))
HW.C0 = CA(MR(-10+10*i), 0, 0)
wait()
end
HW.C0 = CN()
for i = 0.33, 1, 0.33 do
RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(80-10*i), MR(35+5*i), MR(-25-5*i))
LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(40+5*i), MR(-30-5*i), MR(15+5*i))
wait()
end
Normal()
end

function DeselectAnim()
for i = 0.14, 1, 0.14 do
RAW.C0 = CN(-0.3+0.3*i, 0.2-0.2*i, -0.4+0.4*i) * CA(MR(70+80*i), MR(40-60*i), MR(-30+20*i))
LAW.C0 = CN(0.3-0.3*i, 0, -0.5+0.5*i) * CA(MR(45-35*i), MR(-35+25*i), MR(20-15*i))
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(150+10*i), MR(-20-5*i), MR(-10+5*i))
LAW.C0 = CA(MR(10-10*i), MR(-10+10*i), MR(5-5*i))
wait()
end
LAW.Part1 = nil
for i = 0.18, 1, 0.18 do
RAW.C0 = CA(MR(160+50*i), MR(-25+50*i), MR(-5-5*i))
HW.C0 = CA(MR(30*i), MR(25*i), MR(110*i))* CN(0, 0, 0.15*i)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(210+10*i), MR(25+5*i), MR(-10))
HW.C0 = CA(MR(30+10*i), MR(25+5*i), MR(110+10*i))* CN(0, 0, 0.15)
wait()
end
HW.Part1 = nil
TW.Part1 = Sword
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(220-200*i), MR(30-20*i), MR(-10+10*i))
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(20-20*i), MR(10-10*i), 0)
wait()
end
RAW.Part1 = nil
end

function onSelected(mouse)
SelectAnim()
Selected = true
mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "f" and Blocking.Value == false and BlockAnim == false and Attacking == false then
Block()
local k
repeat k = mouse.KeyUp:wait() until k == "f"
Blocking.Value = false
elseif key == "q" then
Where = Where - 1
elseif key == "e" then
Where = Where + 1
elseif key == "z" then
local h = nil
local t = mouse.Target
if t then
h = getStat(t.Parent)
if h == nil and t.Parent.Parent ~= game and t.Parent.Parent ~= nil then
h = getStat(t.Parent.Parent)
end
end
if h == nil then
CamBlock.CFrame = CFrame.new(mouse.Hit.p)
Cam.CameraSubject = CamBlock
Cam.CameraType = Enum.CameraType[CamStyles[Where] ]
else
Cam.CameraSubject = h
end
elseif key == "x" then
Cam.CameraSubject = Hum
elseif key == "r" then
RotationOn = not RotationOn
elseif key == "t" then
local k
coroutine.resume(coroutine.create(function()
repeat
wait()
Rotation = Rotation - 0.05
until k == "t"
end))
repeat k = mouse.KeyUp:wait() until k == "t"
elseif key == "y" then
local k
coroutine.resume(coroutine.create(function()
repeat
wait()
Rotation = Rotation + 0.05
until k == "y"
end))
repeat k = mouse.KeyUp:wait() until k == "y"
end
if Where > #CamStyles then Where = 1 elseif Where < 1 then Where = #CamStyles end
Cam.CameraType = Enum.CameraType[CamStyles[Where] ]
end)
mouse.Button1Down:connect(function()
onButtonDown()
end)
end

function onDeselected(mouse)
Selected = false
DeselectAnim()
end

Bin.Selected:connect(onSelected)
Bin.Deselected:connect(onDeselected)

while true do
wait()
if RotationOn then
Cam.CoordinateFrame = Cam.CoordinateFrame * CN(Rotation, 0, 0)
end
end


--mediafire