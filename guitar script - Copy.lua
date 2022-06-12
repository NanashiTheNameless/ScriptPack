:ls --MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 12 and put your name where it says "YOUR NAME HERE"


Plrs = game:GetService("Players")



GuitarColour = "Navy blue"



me = Plrs.luxulux

char = me.Character

Modelname = "xGuitar"

Toolname = "Guitar"

Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 

selected = false

Hurt = false

Deb = true

Able = true

Prop = {Damage = 30}

volume = 0.75



ToolIcon = ""

MouseIc = ""

MouseDo = ""



Add = {

Sphere = function(P)

local m = Instance.new("SpecialMesh",P)

m.MeshType = "Sphere"

return m

end,

BF = function(P)

local bf = Instance.new("BodyForce",P)

bf.force = Vector3.new(0, P:GetMass()*187, 0)

return bf

end,

BP = function(P)

local bp = Instance.new("BodyPosition",P)

bp.maxForce = Vector3.new(math.huge, 0, math.huge)

bp.P = 14000

return bp

end,

BG = function(P)

local bg = Instance.new("BodyGyro",P)

bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

bg.P = 14000

return bg

end,

Mesh = function(P, ID, x, y, z)

local m = Instance.new("SpecialMesh")

m.MeshId = ID

m.Scale = Vector3.new(x, y, z)

m.Parent = P

return m

end,

Sound = function(P, ID, vol, pitch)

local s = Instance.new("Sound")

s.SoundId = ID

s.Volume = vol

s.Pitch = pitch

s.Parent = P

return s

end

}



function find(tab, arg)

local ah = nil

for i,v in pairs(tab) do

if v == arg then

ah = v

end

end

return ah

end



function getAllParts(from)

local t = {}

function getParts(where)

for i, v in pairs(where:children()) do

if v:IsA("BasePart") then

if v.Parent ~= char and v.Parent.Parent ~= char then

table.insert(t, v)

end

end

getParts(v)

end

end

getParts(workspace)

return t

end



function RayCast(pos1, pos2, maxDist, forward)

local list = getAllParts(workspace)

local pos0 = pos1

for dist = 1, maxDist, forward do

pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p

for _, v in pairs(list) do

local pos3 = v.CFrame:pointToObjectSpace(pos0)

local s = v.Size

if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide == true then

return pos0, v

end

end

end

return pos0, nil

end



function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)

local p = Instance.new("Part")

p.formFactor = "Custom"

p.Anchored = Anchor

p.CanCollide = Collide

p.Transparency = Tran

p.Reflectance = Ref

p.BrickColor = BrickColor.new(Color)

for _, Surf in pairs(Surfaces) do

p[Surf] = "Smooth"

end

p.Size = Vector3.new(X, Y, Z)

if Break then

p:BreakJoints()

else p:MakeJoints() end

p.Parent = Parent

return p

end



function Weld(p0, p1, x, y, z, a, b, c)

local w = Instance.new("Weld")

w.Parent = p0

w.Part0 = p0

w.Part1 = p1

w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)

return w

end



function ComputePos(pos1, pos2)

local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)

return CFrame.new(pos1, pos3)

end



function getHumanoid(c)

local h = nil

for i,v in pairs(c:children()) do

if v:IsA("Humanoid") and c ~= char then

if v.Health > 0 then

h = v

end

end

end

return h

end



for i,v in pairs(char:children()) do

if v.Name == Modelname then

v:remove()

end

end



torso = char.Torso

neck = torso.Neck

hum = char.Humanoid

Rarm = char["Right Arm"]

Larm = char["Left Arm"]

Rleg = char["Right Leg"]

Lleg = char["Left Leg"]



hc = Instance.new("Humanoid")

hc.Health = 0

hc.MaxHealth = 0



slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.8)

hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)

charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)

boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)

smashsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2692806", 0.8, 0.35)

boomboom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2760979", 1, 0.18)

GSound = Add.Sound(nil, "http://www.roblox.com/asset/?id=1089403", 0.75, 1)



function PlaySound(sound, pitch, vol)

local s = sound:clone()

if pitch ~= nil then

if tonumber(pitch) then

s.Pitch = tonumber(pitch)

end

end

if vol ~= nil then

if tonumber(vol) then

s.Volume = tonumber(vol)

end

end

s.Parent = torso

s.PlayOnRemove = true

coroutine.resume(coroutine.create(function()

wait()

s:remove()

end))

end



Mo = Instance.new("Model")

Mo.Name = Modelname



RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)



RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)

LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)

RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)

LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)



RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)

LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)

RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)

LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)



HB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)

HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)



TH = Weld(torso, nil, -0.8, 0.4, -0.4, 0, math.pi/2, math.rad(80))

THMain = TH.C1



RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil

NeckStand = necko * CFrame.Angles(math.rad(17), 0, math.rad(35))



handle = Part(Mo, false, false, 0, 0, GuitarColour, 0.6, 1.5, 1.5, true)

handle.Name = "Handle"



handletip1 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)

local w1 = Weld(handle, handletip1, 0, 1.12, 0, 0, 0, 0)

w1.C0 = CFrame.Angles(math.rad(-45), 0, 0)

Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.65, 0.45, 0.65)



handletip2 = Part(Mo, false, false, 0, 0.2, "Dark grey", 0.5, 0.5, 0.5, true)

Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)

Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.65, 0.35, 0.65)



for i = 45, 360+45-90, 90 do

local p = Part(Mo, false, false, 0, 0, GuitarColour, 0.7, 0.9, 0.6, true)

local w = Weld(handle, p, 0, 0, 0, 0, 0, 0)

w.C0 = CFrame.Angles(0, math.pi/2, math.rad(i))

w.C1 = CFrame.new(-1, 0, 0) * CFrame.Angles(0, 0, math.pi/4)

end



for i = 0, 40, 40 do

local p = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.2, 0.2, true)

Add.Mesh(p, "http://www.roblox.com/asset/?id=1033714", 0.14, 0.12, 0.14)

local w = Weld(handle, p, 0, -0.35, -0.7, 0, 0, math.pi/2)

w.C0 = CFrame.Angles(math.rad(i+130), 0, 0)

local p2 = Part(Mo, false, false, 0, 0, "Black", 0.2, 0.2, 0.2, true)

Instance.new("CylinderMesh",p2).Scale = Vector3.new(1, 0.7, 1)

Weld(p, p2, 0, -0.04, 0, 0, 0, 0)

end



fretboard = Part(Mo, false, false, 0, 0, "Black", 0.45, 2.6, 0.6, true)

Weld(handle, fretboard, -0.1, -1.95, 0, math.pi/4, 0, 0)



for i = 0, 2.48, 2.48/10 do

local asd = (1*i)

local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.55, 0.2, true)

Instance.new("CylinderMesh",p).Scale = Vector3.new(0.3, 1, 0.3)

Weld(fretboard, p, -0.21, 0, -1.1+asd, math.pi/2, 0, 0)

end



Strings = {}

for i = -0.24, 0.24, 0.48/6 do

local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 3.7, 0.2, true)

Instance.new("CylinderMesh",p).Scale = Vector3.new(0.06, 1, 0.06)

local w = Weld(fretboard, p, -0.25, 0.75, i+0.04, 0, 0, 0)

table.insert(Strings, {p, w})

end



for i = -20, 20, 20 do

local asd = (20+i)/60

local p = Part(Mo, false, false, 0, 0, "White", 0.2, 0.3, 0.6, true)

Instance.new("BlockMesh",p).Scale = Vector3.new(1, 0.5, 1)

local w = Weld(fretboard, p, 0, 0, 0, 0, 0, 0)

w.C0 = CFrame.new(0.11, -1.5-asd, 0)

w.C1 = CFrame.Angles(math.rad(i), 0, 0)

for x = -0.18, 0.18, 0.18 do

local p2 = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.2, 0.2, true)

Instance.new("CylinderMesh",p2).Scale = Vector3.new(0.5, 0.3, 0.5)

Weld(p, p2, 0, -0.08, x, 0, 0, math.pi/2)

end

end



stringattach = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.2, 0.8, true)

Instance.new("BlockMesh",stringattach)

Weld(fretboard, stringattach, -0.13, 2.55, 0, 0, 0, 0)



vibra = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.32, 0.2, true)

Instance.new("SpecialMesh",vibra).Scale = Vector3.new(0.35, 1, 0.35)

VW = Weld(stringattach, vibra, 0, -0.15, 0, 0, 0, 0)

VW.C0 = CFrame.new(0, 0, -0.36) * CFrame.Angles(0, 0, math.rad(-75))



vibra2 = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.62, 0.2, true)

Instance.new("SpecialMesh",vibra2).Scale = Vector3.new(0.35, 1, 0.35)

vwz = Weld(vibra, vibra2, 0, -0.29, 0, 0, 0, 0)

vwz.C0 = CFrame.new(0, 0.15, 0) * CFrame.Angles(0, 0, math.rad(70))



vibra3 = Part(Mo, false, false, 0, 0, GuitarColour, 0.2, 0.3, 0.2, true)

Add.Sphere(vibra3).Scale = Vector3.new(0.55, 1, 0.55)

Weld(vibra2, vibra3, 0, -0.25, 0, 0, 0, 0)



stringat2 = Part(Mo, false, false, 0, 0, "Dark grey", 0.2, 0.2, 0.7, true)

Instance.new("BlockMesh",stringat2).Scale = Vector3.new(1, 0.3, 1)

Weld(stringattach, stringat2, -0.02, 0, 0, 0, 0, 0)



for i = -0.2, 0.21, 0.4/5 do

local p = Part(Mo, false, false, 0, 0, "Mid gray", 0.2, 0.2, 0.2, true)

Instance.new("BlockMesh",p).Scale = Vector3.new(1, 0.8, 0.2)

Weld(stringat2, p, -0.01, 0, i, 0, 0, 0)

end



stringattach2 = Part(Mo, false, false, 0, 0, GuitarColour, 0.45, 1.2, 0.62, true)

local wdz = Weld(fretboard, stringattach2, 0, 0, 0, 0, 0, math.rad(8))

wdz.C0 = CFrame.new(0.1, 1.7, 0)



for i = 0, 180, 180 do

local p = Part(Mo, false, false, 0, 0, GuitarColour, 0.45, 1.2, 0.62, true)

Instance.new("SpecialMesh",p).MeshType = "Wedge"

local w = Weld(stringattach2, p, 0, 0, -0.21, math.rad(20), 0, math.pi)

w.C0 = CFrame.new(0, 0.4, 0) * CFrame.Angles(0, math.rad(i), 0)

for x = -0.4, 0.2, 0.3 do

local asd = -0.15 + (i/600)

local p2 = Part(Mo, false, false, 0, 0, "Dark grey", 0.2, 0.2, 0.2, true)

local w2 = Weld(p, p2, 0, 0, 0, 0, 0, math.pi/2)

w2.C0 = CFrame.new(asd, x, 0.15)

Instance.new("CylinderMesh",p2)

local p3 = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.3, 0.2, true)

Instance.new("CylinderMesh",p3).Scale = Vector3.new(0.8, 1, 0.8)

Weld(p2, p3, 0, 0, 0, 0, 0, 0)

end

end



for i = -0.6, 0.61, 1.2 do

local p = Part(Mo, false, false, 0, 0, "Really black", 0.5, 2.8, 0.2, true)

Weld(torso, p, 0, 0, i, 0, 0, math.rad(-40))

local p2 = Part(Mo, false, false, 0, 0, "Really black", 0.5, 0.2, 1.1, true)

Weld(torso, p2, -i*1.4, i*1.75, 0, 0, 0, 0)



end

Mo.Parent = char

TH.Part1 = handle



if script.Parent.className ~= "HopperBin" then

h = Instance.new("HopperBin",me.Backpack)

h.Name = Toolname

h.TextureId = ToolIcon

script.Parent = h

end



bin = script.Parent



function detach(bool)

LLW.C0 = CFrame.new(0, 0, 0)

RLW.C0 = CFrame.new(0, 0, 0)

LAW.C0 = CFrame.new(0,0,0)

RAW.C0 = CFrame.new(0, 0, 0)

if bool then

LLW.Part1 = nil

RLW.Part1 = nil

RAW.Part1 = nil

LAW.Part1 = nil

end

end



function attach()

RAW.Part1 = Rarm

LAW.Part1 = Larm

RLW.Part1 = Rleg

LLW.Part1 = Lleg

end



function normal()

neck.C0 = NeckStand

RAW.C0 = RAWStand

LAW.C0 = LAWStand

RLW.C0 = RLWStand

LLW.C0 = LLWStand

RAW.C1 = CFrame.new(0, 0.5, 0)

LAW.C1 = CFrame.new(0, 0.5, 0)

RLW.C1 = CFrame.new(0, 0.8, 0)

LLW.C1 = CFrame.new(0, 0.8, 0)

HW.C0 = HWStand

end



function selectanim()

RAW.Part1 = Rarm

for i = 0.09, 1, 0.09 do

TH.C0 = CFrame.Angles(0, math.rad(90*i), 0)

TH.C1 = THMain * CFrame.Angles(0, 0, math.rad(-30*i)) * CFrame.new(0, 0.3*i, -0.1*i)

RAW.C0 = CFrame.Angles(math.rad(110*i), 0, math.rad(10*i)) * CFrame.new(0, 0, -0.3*i)

neck.C0 = necko * CFrame.Angles(math.rad(5*i), 0, math.rad(-35*i))

wait()

end

LAW.Part1 = Larm

for i = 0.1, 1, 0.1 do

TH.C0 = CFrame.Angles(0, math.rad(90+90*i), 0)

TH.C1 = THMain * CFrame.Angles(math.rad(15*i), 0, math.rad(-30-30*i)) * CFrame.new(0, 0.3+0.2*i, -0.1)

RAW.C0 = CFrame.Angles(math.rad(110-65*i), 0, math.rad(10-30*i)) * CFrame.new(0, -0.5*i, -0.3-0.2*i)

LAW.C0 = CFrame.Angles(math.rad(75*i), math.rad(-15*i), math.rad(-10*i)) * CFrame.new(0, -0.2*i, 0)

neck.C0 = necko * CFrame.Angles(math.rad(5+12*i), 0, math.rad(-35+70*i))

wait()

end

if RAWStand == nil then

RAWStand = RAW.C0

LAWStand = LAW.C0

RLWStand = RLW.C0

LLWStand = LLW.C0

HWStand = HW.C0

end

normal()

end



function deselanim()

for i = 0.9, 0, -0.1 do

TH.C0 = CFrame.Angles(0, math.rad(90+90*i), 0)

TH.C1 = THMain * CFrame.Angles(math.rad(15*i), 0, math.rad(-30-30*i)) * CFrame.new(0, 0.3+0.2*i, -0.1)

RAW.C0 = CFrame.Angles(math.rad(110-65*i), 0, math.rad(10-30*i)) * CFrame.new(0, -0.5*i, -0.3-0.2*i)

LAW.C0 = CFrame.Angles(math.rad(75*i), math.rad(-15*i), math.rad(-10*i)) * CFrame.new(0, -0.2*i, 0)

neck.C0 = necko * CFrame.Angles(math.rad(5+12*i), 0, math.rad(-35+70*i))

wait()

end

LAW.Part1 = nil

for i = 0.91, 0, -0.09 do

TH.C0 = CFrame.Angles(0, math.rad(90*i), 0)

TH.C1 = THMain * CFrame.Angles(0, 0, math.rad(-30*i)) * CFrame.new(0, 0.3*i, -0.1*i)

RAW.C0 = CFrame.Angles(math.rad(110*i), 0, math.rad(10*i)) * CFrame.new(0, 0, -0.3*i)

neck.C0 = necko * CFrame.Angles(math.rad(5*i), 0, math.rad(-35*i))

wait()

end

neck.C0 = necko

detach(true)

end



keys = {"r", "t", "y", "u", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m"}



function PlayString(pitch, vol)

LAW.C0 = LAWStand * CFrame.new(pitch/7, 0, 0) * CFrame.Angles(0, 0, math.rad(pitch*18))

neck.C0 = NeckStand * CFrame.Angles(0, 0, math.rad(-pitch*13))

for i = 0, 1, 0.5 do

RAW.C0 = RAWStand * CFrame.Angles(math.rad(-5*i), 0, math.rad(-15*i)) * CFrame.new(0, 0.3*i, 0)

wait()

end

PlaySound(GSound, pitch, vol)

for i = 0, 1, 0.33 do

RAW.C0 = RAWStand * CFrame.Angles(math.rad(-5-10*i), 0, math.rad(-15+35*i)) * CFrame.new(0, 0.3-0.8*i, 0)

wait()

end

local lol = math.floor(pitch*2.5)

if lol < 1 then lol = 1 elseif lol > #keys then lol = #keys end

coroutine.resume(coroutine.create(function()

local vollol = vol*40

for i = 1, math.random(vollol/1.8, vollol) do

Strings[lol][2].C0 = CFrame.new(0, 0, math.random(-vollol, vollol)/1000)

wait()

end

Strings[lol][2].C0 = CFrame.new()

end))

for i = 0, 1, 0.25 do

RAW.C0 = RAWStand * CFrame.Angles(math.rad(-5-10+15*i), 0, math.rad(20-20*i)) * CFrame.new(0, 0.3-0.8+0.5*i, 0)

wait()

end

RAW.C0 = RAWStand

end



function select(mouse)

selectanim()

selected = true

mouse.KeyDown:connect(function(key)

key = key:lower()

for i, v in pairs(keys) do

if key == v then

local pitch = 0.3 + (i/7.5)

PlayString(pitch, volume)

end

end

end)

end



function deselect(mouse)

selected = false

deselanim()

end



bin.Selected:connect(select)

bin.Deselected:connect(deselect)