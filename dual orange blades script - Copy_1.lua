:ls --Orange Blades Gifted by TheRedAngel, Local Script!

Players = game:GetService("Players")
Me = Players.LocalPlayer
Char = Me.Character
Neck0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
Neck1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Selected = false
Attacking = false
Running = false
Debounce = true
Hurt = false
ModelName = "Weapon"
ToolName = "Weapon"
Speed = 25
Attacks = {"q", "e"}
Find = function(tab, arg)
for _,v in pairs(tab) do
if v==arg then
return true
end
end
return false
end
ContentProvider = game:GetService("ContentProvider")
V3 = Vector3.new
C3 = Color3.new
BN = BrickColor.new
CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MRA = math.random
MP = math.pi
MH = math.huge
UD = UDim2.new
function RC(Pos, Dir, Max, Ignore)
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
function RayC(Start, En, MaxDist, Ignore)
return RC(Start, (En - Start), MaxDist, Ignore)
end
function ComputePos(pos1, pos2)
return CN(pos1, V3(pos2.x, pos1.y, pos2.z))
end
function DetectSurface(pos, part)
local surface = nil
local pospos = part.CFrame
local pos2 = pospos:pointToObjectSpace(pos)
local siz = part.Size
local shaep = part.Shape
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude)*CA(MR(-90), 0, 0)}
else
if pos2.Y > ((siz.Y/2)-0.04) then
surface = {"Top", CA(0, 0, 0)}
elseif pos2.Y < -((siz.Y/2)-0.04) then
surface = {"Bottom", CA(-MP, 0, 0)}
elseif pos2.X > ((siz.X/2)-0.04) then
surface = {"Right", CA(0, 0, MR(-90))}
elseif pos2.X < -((siz.X/2)-0.04) then
surface = {"Left", CA(0, 0, MR(90))}
elseif pos2.Z > ((siz.Z/2)-0.04) then
surface = {"Back", CA(MR(90), 0, 0)}
elseif pos2.Z < -((siz.Z/2)-0.04) then
surface = {"Front", CA(MR(-90), 0, 0)}
end
end
return surface
end
function Compute(pos1, pos2)
local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
return CN(pos1, pos3)
end
function waitChild(n, p)
local c = p:findFirstChild(n)
if c then return c end
while true do
c = p.ChildAdded:wait()
if c.Name == n then return c end
end
end
function Notime(func)
coroutine.resume(coroutine.create(function()
func()
end))
end
Torso = waitChild("Torso", Char)
Head = waitChild("Head", Char)
Rarm = waitChild("Right Arm", Char)
Larm = waitChild("Left Arm", Char)
Rleg = waitChild("Right Leg", Char)
Lleg = waitChild("Left Leg", Char)
Neck = waitChild("Neck", Torso)
Hum = waitChild("Humanoid", Char)
RSH = waitChild("Right Shoulder", Torso)
LSH = waitChild("Left Shoulder", Torso)
RH = waitChild("Right Hip", Torso)
LH = waitChild("Left Hip", Torso)
RSH.Part0 = Torso
LSH.Part0 = Torso
RH.Part0 = Torso
LH.Part0 = Torso
Add = {
Mesh = function(P, Type, ID, Scale, Tex)
local m = Instance.new("SpecialMesh")
m.MeshType = Type or "Head"
m.MeshId = ID or ""
m.Scale = Scale or V3(1, 1, 1)
m.TextureId = Tex or ""
m.Parent = P
return m
end,
Cylinder = function(P, Scale)
local m = Instance.new("CylinderMesh")
m.Scale = Scale or V3(1, 1, 1)
m.Parent = P
return m
end,
Block = function(P, Scale)
local m = Instance.new("BlockMesh")
m.Scale = Scale or V3(1, 1, 1)
m.Parent = P
return m
end,
BP = function(P, Pos, Power)
local bp = Instance.new("BodyPosition")
bp.P = Power
bp.position = Pos
bp.maxForce = V3(MH, MH, MH)
bp.Parent = P
return bp
end,
}
Sounds = {
Shoot = {Id = "http://www.roblox.com/asset/?id=2697431", Pitch = 0.3, Volume = 0.5},
Boom = {Id = "http://www.roblox.com/asset/?id=2692806", Pitch = 0.55, Volume = 0.4},
Slash = {Id = "rbxasset://sounds//swordslash.wav", Pitch = 0.5, Volume = 0.5},
Hit = {Id = "http://www.roblox.com/asset/?id=2801263", Pitch = 0.85, Volume = 0.35},
Reload = {Id = "rbxasset://sounds\\metal.ogg", Pitch = 1, Volume = 0.45},
}
for _,v in pairs(Sounds) do
ContentProvider:Preload(v.Id)
end
function PlaySound(Sound, bool)
local s = Instance.new("Sound")
s.Looped = false
s.Volume = Sound.Volume
s.SoundId = Sound.Id
if bool then
s.Pitch = MRA((Sound.Pitch*0.75)*1000, (Sound.Pitch*1.15)*1000)/1000
else
s.Pitch = Sound.Pitch
end
s.PlayOnRemove = true
s.Parent = Torso
Notime(function()
wait()
s.Parent = nil
end)
end
function GetParts(pos, dist)
local parts = {}
local function o(p)
for _,v in pairs(p:children()) do
if v:IsA("BasePart") then
if (pos - v.Position).magnitude <= dist then
table.insert(parts, {v, (pos - v.Position).magnitude, v.Anchored})
end
end
o(v)
end
end
o(workspace)
return parts
end
function GetHum(P)
for _,v in pairs(P:children()) do
if v:IsA("Humanoid") then
if v.Health > 0 then
return v
end
end
end
end
function GetGroup(Pos, Distance, Hit)
local tab = {}
for _,v in pairs(workspace:children()) do
local h = GetHum(v)
local t = v:findFirstChild("Torso")
if h and t and v ~= Hit.Parent then
if (t.Position - Pos).magnitude <= Distance then
table.insert(tab, {h, v, (t.Position - Pos).magnitude})
end
end
end
if Hit then
local h = GetHum(Hit.Parent)
if h then
table.insert(tab, {h, Hit.Parent, 0})
end
end
return tab
end
function Part(Par, Anc, Colli, Tran, Ref, Col, Siz)
local p = Instance.new("Part")
p.formFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = Tran
p.Reflectance = Ref
p.Anchored = Anc
p.CanCollide = Colli
p.BrickColor = Col
p.Size = Siz
p.Locked = true
p.Parent = Par
p:BreakJoints()
return p
end
function Weld(P0, P1, C0, C1)
local w = Instance.new("Weld")
w.Part0 = P0
w.Part1 = P1
if C0 then
w.C0 = C0
end
if C1 then
w.C1 = C1
end
w.Parent = P0
return w
end
for _,v in pairs(Char:children()) do
if v.Name == ModelName then
v:remove()
end
end
Model = Instance.new("Model")
Model.Name = ModelName
FTorso = Part(Model, false, false, 1, 0, Torso.BrickColor, V3(2, 2, 1))
FW = Weld(Torso, FTorso)
RAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
LAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
RLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
LLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
RABW = Weld(Torso, RAB, CN(), CN(-1.5, -0.5, 0))
LABW = Weld(Torso, LAB, CN(), CN(1.5, -0.5, 0))
RLBW = Weld(Torso, RLB, CN(), CN(-0.5, 1, 0))
LLBW = Weld(Torso, LLB, CN(), CN(0.5, 1, 0))
RAW = Weld(RAB, nil, CN(), CN(0, 0.5, 0))
LAW = Weld(LAB, nil, CN(), CN(0, 0.5, 0))
RLW = Weld(RLB, nil, CN(), CN(0, 1, 0))
LLW = Weld(LLB, nil, CN(), CN(0, 1, 0))
FNeck = Weld(FTorso, nil, CN(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), CN(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
TW = Weld(Torso, nil, CN(0.7, 0.8, 1.2), CA(0, MR(180), MR(55)))
Weapon = Instance.new("Model")
Weapon.Name = "Weapon"
HBR = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBWR = Weld(Rarm, HBR, CN(0, -0.9, 0), CA(MR(90), 0, 0))
HWR = Weld(HBR, nil)
HBL = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBWL = Weld(Larm, HBL, CN(0, -0.9, 0), CA(MR(90), 0, 0))
HWL = Weld(HBL, nil)
Limbs = {Rarm = {RAW, Rarm}, Larm = {LAW, Larm}, Rleg = {RLW, Rleg}, Lleg = {LLW, Lleg}, }
function Atta(Lol)
Lol[1].Part1 = Lol[2]
end
function MakeKnife(Arm)
local Parts = {}
local Handle = Part(Weapon, false, false, 0, 0, BN("Navy blue"), V3(0.35, 1.1, 0.35))
local Derp = Part(Weapon, false, false, 0, 0, BN("Really black"), V3(0.6, 0.2, 0.6))
local Blade1 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.5, 0.3))
local Blade2 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.4, 0.4))
local Blade3 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.8, 0.4))
local Blade4 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.7, 0.4))
Add.Mesh(Handle)
Add.Cylinder(Derp)
Add.Block(Blade1)
Add.Block(Blade2)
Add.Block(Blade3)
Add.Mesh(Blade4, "Wedge")
Arm.Part1 = Handle
Weld(Handle, Derp, CN(0, -0.5, 0))
Weld(Derp, Blade1, CN(0, -0.25, 0))
Weld(Blade1, Blade2, CN(0, -0.25, -0.04), CA(MR(5), 0, 0))
Weld(Blade2, Blade3, CN(0, -0.55, 0.08), CA(MR(12), 0, 0))
Weld(Blade3, Blade4, CN(0, -0.68, 0.075), CA(MR(-15)+MP, MP, 0))
Parts.Handle = Handle
Parts.Derp = Derp
Parts.Blades = {Blade1, Blade2, Blade3, Blade4}
return Parts
end
MakeKnife(HWR)
MakeKnife(HWL)
function Show_Damage(P, D)
local mo = Instance.new("Model")
mo.Name = D
local p = Part(mo, false, false, 0, 0, BN("Bright red"), V3(0.2, 0.2, 0.2))
p.Name = "Head"
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(4.5, 2.3, 4.5)
m.Parent = p
local bp = Instance.new("BodyPosition", p)
bp.maxForce = V3(MH, MH, MH)
bp.P = 9001
bp.position = CN(P) * CN(0, 1.5, 0).p
local h = Instance.new("Humanoid")
h.Health = 0
h.MaxHealth = 0
h.Name = "asd"
h.Parent = mo
local nah = true
mo.Parent = workspace
p.CFrame = CN(P) 
Notime(function()
wait(1.5)
for i = 0, 1, 0.05 do
p.Transparency = i
if nah then mo.Name = "" nah = false else mo.Name = "- "..D nah = true end
wait()
end
mo:remove()
end)
end
Weapon.Parent = Model
Model.Parent = Char
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", Me.Backpack)
h.Name = ToolName
script.Parent = h
end
bin = script.Parent
function Attach(t)
RSH.Part0 = t
LSH.Part0 = t
RH.Part0 = t
LH.Part0 = t
RABW.Part0 = t
LABW.Part0 = t
LLBW.Part0 = t
RLBW.Part0 = t
if t == Torso then
FTorso.Transparency = 1
FNeck.Part1 = nil
else
Torso.Transparency = 1
FNeck.Part1 = Head
end
t.Transparency = 0
end
function Idle()
local SpeedAtm = Torso.Velocity.magnitude
for i = 0.02, 1, 0.03 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-15-6*i), MR(20-2*i), MR(20-3*i))
LAW.C0 = CA(MR(-15-4*i), MR(-20+3*i), MR(-20+4*i))
RLW.C0 = CA(MR(15+4*i), 0, 0) * CN(0.02, 0.4+0.05*i, -0.75)
LLW.C0 = CA(MR(-50-5*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.5-0.1*i, 0) * CA(MR(-10-4*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20+4*i), 0, 0)
wait()
end
for i = 0.05, 1, 0.05 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-21-2*i), MR(18-1*i), MR(17-1*i))
LAW.C0 = CA(MR(-19-1*i), MR(-17+1*i), MR(-16+1*i))
RLW.C0 = CA(MR(19+1*i), 0, 0) * CN(0.02, 0.45+0.02*i, -0.75)
LLW.C0 = CA(MR(-55-2*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.6-0.025*i, 0) * CA(MR(-14-1*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(24+1*i), 0, 0)
wait()
end
for i = 0.04, 1, 0.04 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-23+2*i), MR(17+1*i), MR(16+1*i))
LAW.C0 = CA(MR(-20+1*i), MR(-16-1*i), MR(-15-1*i))
RLW.C0 = CA(MR(20-1*i), 0, 0) * CN(0.02, 0.47-0.02*i, -0.75)
LLW.C0 = CA(MR(-57+2*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.625+0.025*i, 0) * CA(MR(-15+1*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(25-1*i), 0, 0)
wait()
end
for i = 0.03, 1, 0.03 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-21+4*i), MR(18+2*i), MR(17+2*i))
LAW.C0 = CA(MR(-19+2*i), MR(-17-3*i), MR(-16-3*i))
RLW.C0 = CA(MR(19-3*i), 0, 0) * CN(0.02, 0.45-0.05*i, -0.75)
LLW.C0 = CA(MR(-55+4*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.6+0.06*i, 0) * CA(MR(-14+3*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(24-3*i), 0, 0)
wait()
end
for i = 0.07, 1, 0.07 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm >= 0.1 then return end
RAW.C0 = CA(MR(-17+2*i), MR(20), MR(19+1*i))
LAW.C0 = CA(MR(-17+2*i), MR(-20), MR(-19-1*i))
RLW.C0 = CA(MR(16-1*i), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-51+1*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.54+0.04*i, 0) * CA(MR(-11+1*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(21-1*i), 0, 0)
wait()
end
wait()
end
function RunStart()
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(-15-5*i), MR(20-3*i), MR(20-3*i))
LAW.C0 = CA(MR(-15-5*i), MR(-20+3*i), MR(-20+3*i))
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(-20-15*i), MR(17-5*i), MR(17-7*i))
LAW.C0 = CA(MR(-20-15*i), MR(-17+5*i), MR(-17+7*i))
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-35-5*i), MR(12-2*i), MR(10-2*i))
LAW.C0 = CA(MR(-35-5*i), MR(-12+2*i), MR(-10+2*i))
wait()
end
end
function RunEnd()
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-40+5*i), MR(10+2*i), MR(8+2*i))
LAW.C0 = CA(MR(-40+5*i), MR(-10-2*i), MR(-8-2*i))
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(-35+15*i), MR(12+5*i), MR(10+7*i))
LAW.C0 = CA(MR(-35+15*i), MR(-12-5*i), MR(-10-7*i))
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(-20+5*i), MR(17+3*i), MR(17+3*i))
LAW.C0 = CA(MR(-20+5*i), MR(-17-3*i), MR(-17-3*i))
wait()
end
end
function Run()
local SpeedAtm = Torso.Velocity.magnitude
for i = 0.33, 1, 0.33 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(15-15*i), 0, 0) * CN(0.02, 0.4-0.1*i, -0.75+0.25*i)
LLW.C0 = CA(MR(-50+15*i), 0, 0) * CN(-0.02, 0.45+0.3*i, -0.5)
FW.C0 = CN(0, -0.5+0.2*i, 0) * CA(MR(-10+2*i), 0, 0)
wait()
end
for i = 0.25, 1, 0.25 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-60*i), 0, 0) * CN(0.02, 0.3-0.25*i, -0.5+0.75*i)
LLW.C0 = CA(MR(-35+45*i), 0, 0) * CN(-0.02, 0.75+0.4*i, -0.5-0.2*i)
FW.C0 = CN(0, -0.3+0.2*i, 0) * CA(MR(-8+1*i), 0, 0)
wait()
end
for i = 0.5, 1, 0.5 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-60-5*i), 0, 0) * CN(0.02, 0.05-0.1*i, 0.25+0.1*i)
LLW.C0 = CA(MR(10+5*i), 0, 0) * CN(-0.02, 1.15-0.15*i, -0.7-0.05*i)
FW.C0 = CN(0, -0.1+0.05*i, 0) * CA(MR(-7+1*i), 0, 0)
wait()
end
for i = 0.33, 1, 0.33 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-65+30*i), 0, 0) * CN(0.02, -0.05+0.5*i, 0.35-0.2*i)
LLW.C0 = CA(MR(15-10*i), 0, 0) * CN(-0.02, 1-0.5*i, -0.75+0.1*i)
FW.C0 = CN(0, -0.05-0.6*i, 0) * CA(MR(-6-3*i), 0, 0)
wait()
end
for i = 0.25, 1, 0.25 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-35+40*i), 0, 0) * CN(0.02, 0.45+0.9*i, 0.15-0.6*i)
LLW.C0 = CA(MR(5-55*i), 0, 0) * CN(-0.02, 0.5-0.6*i, -0.65+0.8*i)
FW.C0 = CN(0, -0.65+0.4*i, 0) * CA(MR(-9-3*i), 0, 0)
wait()
end
for i = 0.33, 1, 0.33 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.1 then return end
RLW.C0 = CA(MR(5+10*i), 0, 0) * CN(0.02, 1.35-0.95*i, -0.45-0.3*i)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, -0.1+0.55*i, 0.15-0.7*i)
FW.C0 = CN(0, -0.25-0.35*i, 0) * CA(MR(-12+2*i), 0, 0)
wait()
end
end
coroutine.resume(coroutine.create(function()
while true do
local SpeedAtm = Torso.Velocity.magnitude
if Attacking == false and Selected or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then
if SpeedAtm < 0.1 then
Idle()
RAW.C0 = CA(MR(-15), MR(20), MR(20))
LAW.C0 = CA(MR(-15), MR(-20), MR(-20))
RLW.C0 = CA(MR(15), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, 0.45, -0.5)
HWR.C0 = CN()
HWL.C0 = CN()
FW.C0 = CN(0, -0.5, 0) * CA(MR(-10), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
else
Run()
end
end
wait()
end
end))
Notime(function()
local Last = Torso.Velocity.magnitude > 0.1
while true do
Running = Torso.Velocity.magnitude > 0.1
if Torso.Velocity.Y < 0.5 or Torso.Velocity.Y > -0.5 and Attacking == false and Selected then
if Running ~= Last then
Last = Running
if Running then
RunStart()
else
RunEnd()
end
end
end
wait()
end
end)
function Jump()
Attacking = true
--Hum.PlatformStand = true
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-15+10*i), MR(20-5*i), MR(20-3*i))
LAW.C0 = CA(MR(-15+10*i), MR(-20+5*i), MR(-20+3*i))
RLW.C0 = CA(MR(15-10*i), 0, 0) * CN(0.02, 0.4-0.2*i, -0.75+0.35*i)
LLW.C0 = CA(MR(-50+20*i), 0, 0) * CN(-0.02, 0.45-0.3*i, -0.5+0.5*i)
HWR.C0 = CA(MR(10*i), 0, 0)
HWL.C0 = CA(MR(10*i), 0, 0)
FW.C0 = CN(0, -0.5+0.05*i, 0) * CA(MR(-10-2*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
wait()
end
local bp = Add.BP(Torso, Torso.Position, 10000)
local Face = Compute(Torso.Position, Torso.CFrame * CN(0, 0, -10).p)
local Dist = 13
local Center = Face * CN(0, 0, -Dist) + V3(0, -Dist/2, 0)
--bp.position = Center * CA(MR(150-120*i), 0, 0) * CN(0, 0, -Dist).p
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(-5+80*i), MR(15-20*i), MR(17-12*i))
LAW.C0 = CA(MR(-5+80*i), MR(-15+20*i), MR(-17+12*i))
RLW.C0 = CA(MR(10-10*i), 0, 0) * CN(0.02, 0.2-0.2*i, -0.45+0.45*i)
LLW.C0 = CA(MR(-40+40*i), 0, 0) * CN(-0.02, 0.15-0.15*i, -0.25+0.25*i)
HWR.C0 = CA(MR(10+25*i), 0, 0)
HWL.C0 = CA(MR(10+25*i), 0, 0)
FW.C0 = CN(0, -0.45+0.45*i, 0) * CA(MR(-12-13*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(150-10*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(75+60*i), MR(-5), MR(5))
LAW.C0 = CA(MR(75+60*i), MR(5), MR(-5))
RLW.C0 = CA(0, 0, 0) * CN(0.02, 0.25*i, 0)
LLW.C0 = CA(0, 0, 0) * CN(-0.02, 0.25*i, 0)
HWR.C0 = CA(MR(35+20*i), 0, 0)
HWL.C0 = CA(MR(35+20*i), 0, 0)
FW.C0 = CA(MR(-25-35*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(140-50*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(135+15*i), MR(-5), MR(5))
LAW.C0 = CA(MR(135+15*i), MR(5), MR(-5))
RLW.C0 = CA(MR(-5*i), 0, 0) * CN(0.02, 0.25+0.4*i, -0.45*i)
LLW.C0 = CA(MR(-5*i), 0, 0) * CN(-0.02, 0.25+0.4*i, -0.45*i)
FW.C0 = CA(MR(-60-15*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(90-10*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
Hurt = true
Deb = true
for i = 0.15, 1, 0.15 do
RAW.C0 = CA(MR(150-120*i), MR(-5), MR(5))
LAW.C0 = CA(MR(150-120*i), MR(5), MR(-5))
RLW.C0 = CA(MR(-5-20*i), 0, 0) * CN(0.02, 0.65+0.6*i, -0.45-0.45*i)
LLW.C0 = CA(MR(-5-20*i), 0, 0) * CN(-0.02, 0.65+0.5*i, -0.45-0.45*i)
HWR.C0 = CA(MR(55-60*i), 0, 0)
HWL.C0 = CA(MR(55-60*i), 0, 0)
FW.C0 = CA(MR(-75-130*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(80-30*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
Hurt = false
Hum.PlatformStand = false
bp:remove()
Attacking = false
end
function SelectAnim()
Atta(Limbs.Rarm)
Atta(Limbs.Larm)
Attach(FTorso)
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(10*i), MR(4*i), MR(3*i))
LAW.C0 = CA(MR(10*i), MR(-4*i), MR(-3*i))
HWR.C0 = CN(0.15*i, 0, 0) * CA(MR(-35*i), 0, 0)
HWL.C0 = CN(-0.15*i, 0, 0) * CA(MR(-35*i), 0, 0)
FW.C0 = CA(MR(3*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-5*i), 0, 0)
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(10+50*i), MR(4+16*i), MR(3+7*i))
LAW.C0 = CA(MR(10+50*i), MR(-4-16*i), MR(-3-7*i))
HWR.C0 = CN(0.15+0.25*i, 0, 0) * CA(MR(-35-180*i), 0, 0)
HWL.C0 = CN(-0.15-0.25*i, 0, 0) * CA(MR(-35-180*i), 0, 0)
FW.C0 = CA(MR(3+7*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-5-15*i), 0, 0)
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(60+12*i), MR(20), MR(10+3*i))
LAW.C0 = CA(MR(60+12*i), MR(-20), MR(-10-3*i))
HWR.C0 = CN(0.4+0.05*i, 0, 0) * CA(MR(-215-180*i), 0, 0)
HWL.C0 = CN(-0.4-0.05*i, 0, 0) * CA(MR(-215-180*i), 0, 0)
FW.C0 = CA(MR(10+2*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-20-2*i), 0, 0)
wait()
end
Atta(Limbs.Rleg)
Atta(Limbs.Lleg)
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(72-80*i), MR(20), MR(13+7*i))
LAW.C0 = CA(MR(72-80*i), MR(-20), MR(-13-7*i))
RLW.C0 = CA(MR(10*i), 0, 0) * CN(0, 0.3*i, -0.7*i)
LLW.C0 = CA(MR(-40*i), 0, 0) * CN(0, 0.4*i, -0.4*i)
HWR.C0 = CN(0.45-0.35*i, 0, 0) * CA(MR(-35-290*i), 0, 0)
HWL.C0 = CN(-0.45+0.35*i, 0, 0) * CA(MR(-35-290*i), 0, 0)
FW.C0 = CN(0, -0.4*i, 0) * CA(MR(12-18*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-22+18*i), 0, 0)
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-8-7*i), MR(20), MR(20))
LAW.C0 = CA(MR(-8-7*i), MR(-20), MR(-20))
RLW.C0 = CA(MR(10+5*i), 0, 0) * CN(0.02*i, 0.3+0.1*i, -0.7-0.05*i)
LLW.C0 = CA(MR(-40-10*i), 0, 0) * CN(-0.02*i, 0.4+0.05*i, -0.4-0.1*i)
HWR.C0 = CN(0.1-0.1*i, 0, 0) * CA(MR(-325-35*i), 0, 0)
HWL.C0 = CN(-0.1+0.1*i, 0, 0) * CA(MR(-325-35*i), 0, 0)
FW.C0 = CN(0, -0.4-0.1*i, 0) * CA(MR(-6-4*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-4+16*i), 0, 0)
wait()
end
RAW.C0 = CA(MR(-15), MR(20), MR(20))
LAW.C0 = CA(MR(-15), MR(-20), MR(-20))
RLW.C0 = CA(MR(15), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, 0.45, -0.5)
HWR.C0 = CN()
HWL.C0 = CN()
FW.C0 = CN(0, -0.5, 0) * CA(MR(-10), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
end
function DeselAnim()
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(-15+4*i), MR(20-5*i), MR(20-3*i))
LAW.C0 = CA(MR(-15+4*i), MR(-20+5*i), MR(-20+3*i))
RLW.C0 = CA(MR(15-5*i), 0, 0) * CN(0.02-0.02*i, 0.4-0.1*i, -0.75+0.25*i)
LLW.C0 = CA(MR(-50+15*i), 0, 0) * CN(-0.02+0.02*i, 0.45-0.1*i, -0.5+0.2*i)
FW.C0 = CN(0, -0.5+0.15*i, 0) * CA(MR(-10+3*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20-15*i), 0, 0)
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(-11+11*i), MR(15-15*i), MR(17-17*i))
LAW.C0 = CA(MR(-11+11*i), MR(-15+15*i), MR(-17+17*i))
RLW.C0 = CA(MR(10-10*i), 0, 0) * CN(0, 0.3-0.3*i, -0.5+0.5*i)
LLW.C0 = CA(MR(-35+35*i), 0, 0) * CN(0, 0.35-0.35*i, -0.3+0.3*i)
FW.C0 = CN(0, -0.35+0.35*i, 0) * CA(MR(-7+7*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(5-5*i), 0, 0)
wait()
end
RAW.Part1 = nil
LAW.Part1 = nil
RLW.Part1 = nil
LLW.Part1 = nil
Attach(Torso)
end
function _onselected(mouse)
SelectAnim()
Hum.WalkSpeed = Speed
Selected = true
mouse.Button1Down:connect(function()
end)
mouse.KeyDown:connect(function(key)
key = key:lower()
if Find(Attacks, key) then
if key == "q" then
Jump()
end
RAW.C0 = CA(MR(-15), MR(20), MR(20))
LAW.C0 = CA(MR(-15), MR(-20), MR(-20))
RLW.C0 = CA(MR(15), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, 0.45, -0.5)
HWR.C0 = CN()
HWL.C0 = CN()
FW.C0 = CN(0, -0.5, 0) * CA(MR(-10), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
end
end)
end
function onDeselected(mouse)
Selected = false
Hum.WalkSpeed = 16
DeselAnim()
end
bin.Selected:connect( _onselected)
bin.Deselected:connect(onDeselected)
