Players = game:GetService("Players")
Me = Players.yfc
Char = Me.Character
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
Asset = "http://www.roblox.com/asset/?id="
EffectModel = nil
MeleeDmg = 55
Accuracy = {Minimum = 2, Maximum = 5.5, Momentum = 2}
Selected = false
ReloadFlash = false
Attacking = false
ReloadHold = false
Reloading = false
Swinging = false
Aiming = false
ReloadOn = false
Debounce = true
Hurt = false
ModelName = "Weapon"
ToolName = "Weapon"
Icon = Asset..(58334502)

function ReNew()
 if EffectModel then
  if EffectModel.Parent ~= workspace then
   pcall(function() EffectModel:remove() end)
   EffectModel = Instance.new("Model",workspace)
   EffectModel.Name = "Effects"
  end
 else
  EffectModel = Instance.new("Model",workspace)
  EffectModel.Name = "Effects"
 end
end

Ammunition = {
 MaxAmmo = 20,
 Ammo = 30,
 Ammoleft = 200,
}

Images = {
 Asset..(64291927),
 Asset..(64291941),
 Asset..(64291961),
 Asset..(64291977),
}

Sounds = {
 Fire = {Id = Asset..(2697294), Pitch = 0.92, Volume = 0.8},
 Reload = {Id = Asset..(2697295), Pitch = 1, Volume = 0.5},
 Slash = {Id = "rbxasset://sounds//swordslash.wav", Pitch = 1.2, Volume = 0.6},
 Out = {Id = "rbxasset://sounds\\clickfast.wav", Pitch = 1.4, Volume = 0.6},
 Hit = {Id = Asset..(10209590), Pitch = 1.1, Volume = 0.45},
 PartHit = {Id = "rbxasset://sounds\\metal.ogg", Pitch = 1, Volume = 0.2},
}

ContentProvider = game:GetService("ContentProvider")
for _,v in pairs(Images) do ContentProvider:Preload(v) end

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
  surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude+0.12)*CA(MR(-90), 0, 0)}
 else
  if pos2.Y > ((siz.Y/2)-0.01) then
   surface = {"Top", CA(0, 0, 0)}
  elseif pos2.Y < -((siz.Y/2)-0.01) then
   surface = {"Bottom", CA(-MP, 0, 0)}
  elseif pos2.X > ((siz.X/2)-0.01) then
   surface = {"Right", CA(0, 0, MR(-90))}
  elseif pos2.X < -((siz.X/2)-0.01) then
   surface = {"Left", CA(0, 0, MR(90))}
  elseif pos2.Z > ((siz.Z/2)-0.01) then
   surface = {"Back", CA(MR(90), 0, 0)}
  elseif pos2.Z < -((siz.Z/2)-0.01) then
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

local C3 = Color3.new
local UD = UDim2.new
local V2 = Vector2.new

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

local Classes = {"Frame", "ImageLabel", "ImageButton", "TextLabel", "TextButton", "TextBox"}
function Make(Class, Par, Size, Pos, Color, Trans, Border, Borderc, Txt, TxtC, Img)
 local Mk = "Frame"
 for _,v in pairs(Classes) do
  if Class == v then
   Mk = v
  end
 end
 local g = Instance.new(Mk)
 g.Size = Size
 g.Position = Pos
 g.BackgroundColor3 = Color
 g.Transparency = Trans
 g.BorderSizePixel = Border
 g.BorderColor3 = Borderc
 if Mk == "TextButton" or Mk == "TextLabel" or Mk == "TextBox" then
  g.Text = Txt
  g.TextColor3 = TxtC
 elseif Mk == "ImageLabel" or Mk == "ImageButton" then
  g.Image = Img
 end
 g.Parent = Par
 return g
end

Gui = Me:findFirstChild("PlayerGui")
if Gui then
 for _,v in pairs(Gui:children()) do if v.Name == "Weapon GUI" then v:remove() end end
end

Screen = Instance.new("ScreenGui")
Screen.Name = "Weapon GUI"

AmmoTable = {}
AccuracyGuis = {}
lul = {
 {unit = V2(0, -1), size = V2(2, 25), offset = V2(-1, -1-25)},
 {unit = V2(1, 0), size = V2(25, 2), offset = V2(1, -1)},
 {unit = V2(0, 1), size = V2(2, 25), offset = V2(-1, -1)},
 {unit = V2(-1, 0), size = V2(25, 2), offset = V2(-1-25, -1)}
}

Main = Make("Frame", Screen, UD(0, 175, 0, 20), UD(1, -185-60, 1, -30), C3(0.25, 0.25, 0.3), 0.6, 0, C3())

for i = 1, Ammunition.MaxAmmo, 1 do
 local Fr = Make("Frame", Main, UD(0, 8, 0, 14), UD(1, -12*i, 0, -14-6), C3(0.25, 0.25, 0.3), 0.6, 0, C3())
 table.insert(AmmoTable, Fr)
end

AmmoAtm = Make("TextLabel", Main, UD(0, 0, 0, 0), UD(0, 8, 0.5, 0), C3(), 0, 0, C3(), "0", C3(1, 1, 1))
AmmoAtm.BackgroundTransparency = 1
AmmoAtm.TextXAlignment = "Left"
AmmoAtm.Font = "ArialBold"
AmmoAtm.FontSize = "Size18"

AmmoLeft = Make("TextLabel", Main, UD(0, 0, 0, 0), UD(1, -8, 0.5, 0), C3(), 0, 0, C3(), "40", C3(1, 1, 1))
AmmoLeft.BackgroundTransparency = 1
AmmoLeft.TextXAlignment = "Right"
AmmoLeft.Font = "ArialBold"
AmmoLeft.FontSize = "Size18"

ReloadGui = Make("TextLabel", Main, UD(0, 0, 0, 0), UD(1, -12, 0, -40), C3(), 1, 0, C3(), "RELOAD", C3(1, 0.25, 0.1))
ReloadGui.TextXAlignment = "Right"
ReloadGui.Font = "ArialBold"
ReloadGui.FontSize = "Size24"

for _, prop in pairs(lul) do
 local g = Make("Frame", Screen, UD(0, prop.size.x, 0, prop.size.y), UD(0.5, prop.offset.x, 0.5, prop.offset.y), C3(0.8, 0.8, 0.9), 1, 0, C3())
 table.insert(AccuracyGuis, {Gui = g, props = prop})
end

Screen.Parent = Gui

local Offset = 0.1
local Thing = 1
local Speed1 = 0.1
local Speed2 = 0
local TempAcc = 0
local AccTimesMax = 17
local AccTime = 1.25
local AccTimes = AccTimesMax
local AccOn = false
function AddInaccuracy(Acc)
 TempAcc = Acc
end
Notime(function()
 while true do
  ReNew()
  AmmoAtm.Text = Ammunition.Ammo
  AmmoLeft.Text = Ammunition.Ammoleft
  for i,v in pairs(AmmoTable) do
   v.Transparency = 1
  end
  for i = 1, Ammunition.Ammo do
   AmmoTable[i].Transparency = 0.6
  end
  if Ammunition.Ammo <= Ammunition.MaxAmmo/4 then ReloadFlash = true else ReloadFlash = false end
  local Speed = Torso.Velocity.magnitude
  Offset = 0
  if Speed > 1 then
   Speed1 = Speed
   Thing = Thing*1.2
  else
   Speed2 = Speed
   local lol = 1.4
   if AccOn then lol = AccTime end
   Thing = Thing/lol
  end
  if TempAcc ~= 0 then
   Speed1 = TempAcc
   Thing = TempAcc/2
   AccOn = true
   if TempAcc ~= 0 then
    AccTimes = AccTimes - 1
    if AccTimes < 1 then AccTimes = AccTimesMax Notime(function() wait(0.4) AccOn = false end) TempAcc = 0 end
   end
  end
  if Thing < 1 then Thing = 1 elseif Thing > 14 then Thing = 14 end
  Offset = Accuracy.Minimum + ((Speed1 - Speed1/Thing)/(Speed1 - Speed1/14))*Accuracy.Maximum
  Accuracy.Momentum = Offset
  wait()
 end
end)

Notime(function()
 while true do
  if ReloadFlash then
   if ReloadOn then
    ReloadOn = false
    ReloadGui.Transparency = 1
   else
    ReloadOn = true
    ReloadGui.Transparency = 0
   end
  else
   ReloadGui.Transparency = 1
  end
  wait(0.4)
 end
end)


Add = {
 Head = function(P, Scale)
  local m = Instance.new("SpecialMesh")
  m.MeshType = "Head"
  m.Scale = Scale or V3(1, 1, 1)
  m.Parent = P
  return m
 end,
 Sphere = function(P, Scale)
  local m = Instance.new("SpecialMesh")
  m.MeshType = "Sphere"
  m.Scale = Scale or V3(1, 1, 1)
  m.Parent = P
  return m
 end,
 Wedge = function(P, Scale)
  local m = Instance.new("SpecialMesh")
  m.MeshType = "Wedge"
  m.Scale = Scale or V3(1, 1, 1)
  m.Parent = P
  return m
 end,
 Block = function(P, Scale, Bevel)
  local m = Instance.new("BlockMesh")
  m.Bevel = Bevel
  m.Scale = Scale or V3(1,1,1)
  m.Parent = P
  return m
 end
}

for _,v in pairs(Sounds) do
 ContentProvider:Preload(v.Id)
end

function PlaySound(Sound, bool)
 Pitch = Sound.Pitch
 if bool then
  Pitch = MRA((Sound.Pitch*0.75)*1000, (Sound.Pitch*1.15)*1000)/1000
 end
 local a = Instance.new("Sound")
 a.SoundId = Sound.Id
 a.Volume = Sound.Volume
 a.Pitch = Pitch
 a.Name = "FX"
 a.Parent = Torso
 a:play()
 Notime(function()
  wait(1)
  a:remove()
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

for _,v in pairs(Char:children()) do if v.Name == ModelName then v:remove() end end

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

TW = Weld(Torso, nil, CN(-0.4, -1.5, 0.7), CA(MR(55), MR(-90), MR(0)))

local FH = Instance.new("Humanoid",Model)
FH.PlatformStand = true
FH.MaxHealth = math.huge
FH.Health = math.huge

pcall(function() Torso:findFirstChild("Shirt"):clone().Parent = Model end)

local hh = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
hh.Name = "Head"
Weld(FTorso, hh)

Weapon = Instance.new("Model")
Weapon.Name = "Weapon"

HB = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBW = Weld(Rarm, HB, CN(0, -0.7, 0), CA(MR(-90), MR(180), 0))
HW = Weld(HB, nil, CA(MR(38), MR(-28), MR(-90)) * CN(0, -0.2, -3.8))

LHB = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
LHBW = Weld(Larm, LHB, CN(0, -0.7, 0), CA(MR(-90), MR(180), 0))
LHW = Weld(LHB, nil, CA(MR(-2), MR(30), MR(-3)) * CN(-0.1, 0.32, -0.24))
LHWK = Weld(LHB, nil, CA(MR(170), 0, 0))


Handle = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.5, 0.9, 0.9))
TW.Part1 = Handle

Handle2 = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.5, 0.6, 1.6))
Weld(Handle, Handle2, CA(MR(-45), 0, 0), CN(0, 0.5, -0.4))

Handle3 = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.5, 0.7, 1.3))
Weld(Handle2, Handle3, CA(MR(45), 0, 0), CN(0, -0.4, -0.9))

Pipe1 = Part(Weapon, false, false, 0, 0.1, BN("Really black"), V3(0.3, 0.3, 3.2))
Add.Block(Pipe1, V3(1,1,1), 0.08)
Weld(Handle3, Pipe1, CN(0, 0.15, 1.6+0.55))

Pipe2 = Part(Weapon, false, false, 0, 0.1, BN("Really black"), V3(0.3, 0.3, 1.7))
Add.Block(Pipe2, V3(1,1,1), 0.08)
Weld(Handle3, Pipe2, CN(0, -0.15, 0.85+0.55))

Pipe3 = Part(Weapon, false, false, 0, 0.1, BN("Really black"), V3(0.25, 0.25, 1.6))
Add.Block(Pipe3, V3(1,1,1), 0.065)
Weld(Pipe2, Pipe3, CN(0, 0, 0.8+0.7))

Pump = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.45, 0.45, 1.1))
Add.Block(Pump, V3(1,1,1), 0.225/2)
PumpWeld = Weld(Pipe2, Pump, CN(0, 0, 0.6), CN(0, 0, 0))

Pump2 = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.5, 0.5, 0.3))
Add.Block(Pump, V3(1,1,1), 0.13)
Weld(Pump, Pump2, CN(0, 0, -0.5))

for degrees = -20, 200, 20 do
 local Derp = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.2, 0.2, 0.2))
 Add.Block(Derp, V3(0.4,0.6,0.4), 0.02)
 Weld(Handle3, Derp, CN(0, -0.45, -0.32) * CA(MR(degrees), 0, 0), CN(0, 0, -0.2))
end

Derp = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.2, 0.2, 0.3))
Add.Block(Derp, V3(0.4,1,1), 0.02)
Weld(Handle3, Derp, CN(0, 0, -0.32) * CA(MR(-20), 0, 0), CN(0, 0.45, -0.2))

Trigger = Part(Weapon, false, false, 0, 0, BN("Really black"), V3(0.2, 0.3, 0.2))
Add.Block(Trigger, V3(0.5, 0.9, 0.3), 0.02)
TriggerWeld = Weld(Handle3, Trigger, CN(0, -0.45, -0.4) * CA(MR(2), 0, 0))

Aim = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.3, 0.2, 0.7))
Add.Block(Aim, V3(1,0.7,1), 0.05)
Weld(Pipe1, Aim, CN(0, 0.12, 1.1))

Aim1 = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.2, 0.2, 0.2))
Add.Block(Aim1, V3(0.3, 0.7, 0.5))
Weld(Aim, Aim1, CN(-.1, 0.1, -0.25))

Aim2 = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.2, 0.2, 0.2))
Add.Block(Aim2, V3(0.3, 0.7, 0.5))
Weld(Aim, Aim2, CN(.1, 0.1, -0.25))

Aim3 = Part(Weapon, false, false, 0, 0, BN("Brown"), V3(0.2, 0.2, 0.2))
Add.Block(Aim3, V3(0.3, 0.7, 0.5))
Weld(Aim, Aim3, CN(0, 0.1, 0.25))

BulletFlip = Part(Weapon, false, false, 0, 0, BN("Light grey"), V3(0.2, 0.3, 0.6))
Flip = Weld(Handle3, BulletFlip, CN(-0.18, 0.1, 0.2) * CA(0, MR(-10), 0))

---POCKET

BeltWelds = {}

BeltK = nil
for i = -0.5, 0.5, 1 do
 local Belt = Part(Weapon, false, false, 0, 0, BN("Black"), V3(2.1, 0.3, 0.2))
 table.insert(BeltWelds, Weld(Torso, Belt, CN(0, -0.9, i)))
end
for i = 1, -1, -2 do
 local Belt = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.2, 0.3, 1.1))
 table.insert(BeltWelds, Weld(Torso, Belt, CN(i, -0.9, 0)))
 BeltK = Belt
end

for i = -0.25, 0.25, 0.5 do
 local Pocket = Part(Weapon, false, false, 0, 0, BN("Black"), V3(1.1, 0.9, 0.2))
 table.insert(BeltWelds, Weld(Torso, Pocket, CN(0.8, -1.2, -0.8) * CA(0, MR(-15), 0), CN(0, 0, i)))
end

for i = -0.5, 0.5, 1 do
 local Pocket = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.6, 0.9, 0.2))
 table.insert(BeltWelds, Weld(Torso, Pocket, CN(0.8, -1.2, -0.8) * CA(0, MR(-15)+MP/2, 0), CN(0, 0, i)))
end
Pocket = Part(Weapon, false, false, 0, 0, BN("Black"), V3(1.1, 0.2, 0.6))
table.insert(BeltWelds, Weld(Torso, Pocket, CN(0.8, -1.6, -0.8) * CA(0, MR(-15), 0)))

function Shell(P)
 local Shel = Instance.new("Model")
 local Back = Part(Shel, false, false, 0, 0, BN("Bright yellow"), V3(0.3, 0.3, 0.25))
 local Main = Part(Shel, false, false, 0, 0, BN("Bright red"), V3(0.3, 0.3, 0.4))
 Add.Block(Back, V3(1,1,1), 0.077)
 Add.Block(Main, V3(1,1,1), 0.077)
 Weld(Main, Back, CN(0, 0, -0.225))
 Shel.Parent = P
 return {Model = Shel, Back = Back, Main = Main}
end

for y = 0.15, 0.65, 0.25 do
 for x = -0.12, 0.13, 0.24 do
  for z = -0.25, 0.26, 0.5 do
   local sh = Shell(Weapon)
   Weld(Pocket, sh.Main, CN(z-0.05, y, x), CA(0, MP/2, 0))
  end
 end
end

KnifeSheath = Part(Weapon, false, false, 0, 0, BN("Really black"), V3(0.3, 0.9, 0.6))
SheathWeld = Weld(BeltK, KnifeSheath, CN(-0.2, -0.3, -0.25) * CA(MR(-20), 0, 0))

KnifeHandle = Part(Weapon, false, false, 0, 0, BN("Really black"), V3(0.3, 0.6, 0.3))
KnifeWeld = Weld(KnifeSheath, KnifeHandle, CA(MP, 0, 0), CN(0, 0.9, 0))

KnifeHandle2 = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(0.3, 0.2, 0.4))
Weld(KnifeHandle, KnifeHandle2, CN(0, 0.35, 0))

KnifeBlade1 = Part(Weapon, false, false, 0, 0.1, BN("Light grey"), V3(0.2, 0.8, 0.3))
Add.Block(KnifeBlade1, V3(0.4, 1, 1), 0.05)
Weld(KnifeHandle2, KnifeBlade1, CN(0, 0.42, 0))

KnifeBlade2 = Part(Weapon, false, false, 0, 0.1, BN("Light grey"), V3(0.2, 0.24, 0.24))
Add.Block(KnifeBlade2, V3(0.4, 1, 1), 0.05)
Weld(KnifeBlade1, KnifeBlade2, CN(0, 0.32, 0), CA(MR(45), 0, 0))

function Show_Damage(P, D, Area)
 local mo = Instance.new("Model")
 mo.Name = D
 local p = Part(mo, true, false, 0, 0, BN("Bright red"), V3(0.2, 0.2, 0.2))
 p.Name = "Head"
 local m = Instance.new("SpecialMesh")
 m.MeshType = "Brick"
 m.Scale = Vector3.new(3.5, 2.3, 3.5)
 m.Parent = p
 local h = Instance.new("Humanoid")
 h.Health = 0
 h.MaxHealth = 0
 h.Name = "asd"
 h.Parent = mo
 local nah = true
 mo.Parent = workspace
 local cf = CN(P) * CN(MRA(-Area*100, Area*100)/100, MRA(-Area*100, Area*100)/100, MRA(-Area*100, Area*100)/100)
 p.CFrame = cf
 Notime(function()
  Notime(function()
   for i = 0, 6, 0.03 do
    wait()
    p.CFrame = cf * CN(0, i, 0)
   end
  end)
  wait(1.5)
  for i = 0, 1, 0.05 do
   p.Transparency = i
   if nah then mo.Name = "" nah = false else mo.Name = "- "..D nah = true end
   wait()
  end
  mo:remove()
 end)
end

function Hit(part)
 local H = GetHum(part.Parent)
 if H and Debounce and Hurt then
  Debounce = false
  local Dmg = MRA(MeleeDmg/1.3, MeleeDmg)
  H.Health = H.Health - Dmg
  Show_Damage(KnifeBlade2.Position, Dmg, 0.1)
 end
end

KnifeBlade1.Touched:connect(Hit)
KnifeBlade2.Touched:connect(Hit)

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
 for _,v in pairs(BeltWelds) do
  v.Part0 = t
 end
 if t == Torso then
  FTorso.Transparency = 1
 else
  Torso.Transparency = 1
 end
 t.Transparency = 0
end

function Normal()
 RAW.C0 = CA(MR(90), 0, MR(-65)) * CN(0.6, -0.9, 0)
 LAW.C0 = CA(MR(85), 0, MR(-40)) * CN(0.5, -0.5, 0)
 FW.C0 = CA(0, MR(-70), 0)
 HW.C0 = CA(MR(0), MR(5), MR(0)) * CN(0.4, 0, -1.2)
 LHW.C0 = CA(MR(-2), MR(30), MR(-3)) * CN(-0.1, 0.32, -0.24)
 PumpWeld.C1 = CN(0, 0, 0)
 Flip.C1 = CN(0, 0, 0)
 Attach(FTorso)
 LHW.Part1 = nil
 TW.Part1 = nil
 LHWK.Part1 = nil
 KnifeWeld.Part1 = KnifeHandle
 Neck.C0 = necko
 HW.Part1 = Handle
end

function Swing()
 Swinging = true
 for i = 0.5, 1, 0.5 do
  LAW.C0 = CA(MR(85-8*i), 0, MR(-40+5*i)) * CN(0.5, -0.5+0.2*i, 0)
  RAW.C0 = CA(MR(90-5*i), 0, MR(-65-5*i)) * CN(0.6+0.05*i, -0.9+0.05*i, -0.1*i)
  HW.C0 = CA(MR(-5*i), MR(5+5*i), MR(0)) * CN(0.4, 0, -1.2)
  FW.C0 = CA(0, MR(-70+8*i), 0)
  wait()
 end
 for i = 0.33, 1, 0.33 do
  LAW.C0 = CA(MR(77-37*i), 0, MR(-35+30*i)) * CN(0.5-0.15*i, -0.3+0.3*i, 0)
  RAW.C0 = CA(MR(85-15*i), 0, MR(-70-5*i)) * CN(0.65+0.15*i, -0.85+0.2*i, -0.1-0.2*i)
  HW.C0 = CA(MR(-5-15*i), MR(10+10*i), MR(0)) * CN(0.4, 0, -1.2)
  FW.C0 = CA(0, MR(-62+58*i), 0)
  wait()
 end
 LHWK.Part1 = KnifeHandle
 KnifeWeld.Part1 = nil
 PlaySound(Sounds.Slash)
 for i = 0.25, 1, 0.25 do
  LAW.C0 = CA(MR(40+30*i), 0, MR(-5-45*i)) * CN(0.35-0.2*i, -0.5*i, 0)
  RAW.C0 = CA(MR(70-15*i), 0, MR(-75-5*i)) * CN(0.8, -0.65+0.15*i, -0.3-0.05*i)
  HW.C0 = CA(MR(-20-10*i), MR(20+5*i), MR(0)) * CN(0.4, 0, -1.2)
  FW.C0 = CA(0, MR(-4+14*i), 0)
  LHWK.C0 = CN(0, -0.1*i, 0.2*i) * CA(MR(170), 0, MR(-50*i))
  wait()
 end
 Hurt = true
 Debounce = true
 for i = 0.25, 1, 0.25 do
  LAW.C0 = CA(MR(70+20*i), 0, MR(-50+35*i)) * CN(0.15-0.05*i, -0.5-0.3*i, 0)
  FW.C0 = CA(0, MR(10-60*i), 0)
  LHWK.C0 = CN(0, -0.1-0.05*i, 0.2+0.1*i) * CA(MR(170), 0, MR(-50-40*i))
  wait()
 end
 for i = 0.25, 1, 0.25 do
  LAW.C0 = CA(MR(90+10*i), 0, MR(-15+15*i)) * CN(0.1, -0.9, 0)
  FW.C0 = CA(0, MR(-50-40*i), 0)
  LHWK.C0 = CN(0, -0.15, 0.3) * CA(MR(170), 0, MR(-90))
  wait()
 end
 for i = 0.33, 1, 0.33 do
  LAW.C0 = CA(MR(100+3*i), 0, 0) * CN(0.1, -0.9, 0)
  FW.C0 = CA(0, MR(-90-6*i), 0)
  LHWK.C0 = CN(0, -0.15, 0.3) * CA(MR(170), 0, MR(-90))
  wait()
 end
 Hurt = false
 wait(0.04)
 for i = 0.25, 1, 0.25 do
  LAW.C0 = CA(MR(103-13*i), 0, 0) * CN(0.1, -0.9+0.1*i, 0)
  FW.C0 = CA(0, MR(-96+16*i), 0)
  LHWK.C0 = CN(0, -0.15, 0.3-0.1*i) * CA(MR(170), 0, MR(-90+15*i))
  wait()
 end
 for i = 0.25, 1, 0.25 do
  LAW.C0 = CA(MR(90-42*i), 0, 0) * CN(0.1+0.1*i, -0.8+0.3*i, 0)
  RAW.C0 = CA(MR(55+15*i), 0, MR(-80+5*i)) * CN(0.8-0.05*i, -0.5-0.1*i, -0.35+0.05*i)
  FW.C0 = CA(0, MR(-80+10*i), 0)
  HW.C0 = CA(MR(-30+20*i), MR(25-15*i), MR(0)) * CN(0.4, 0, -1.2)
  LHWK.C0 = CN(0, -0.15, 0.2-0.45*i) * CA(MR(170), 0, MR(-75+75*i))
  wait()
 end
 for i = 0.5, 1, 0.5 do
  LAW.C0 = CA(MR(48-8*i), 0, 0) * CN(0.2+0.05*i, -0.5, 0)
  RAW.C0 = CA(MR(70+10*i), 0, MR(-75+7*i)) * CN(0.75-0.05*i, -0.6-0.1*i, -0.3+0.05*i)
  FW.C0 = CA(0, MR(-70), 0)
  HW.C0 = CA(MR(-10+10*i), MR(10-5*i), MR(0)) * CN(0.4, 0, -1.2)
  LHWK.C0 = CN(0, -0.15, -0.25-0.15*i) * CA(MR(170), 0, 0)
  wait()
 end
 LHWK.Part1 = nil
 KnifeWeld.Part1 = KnifeHandle
 for i = 0.25, 1, 0.25 do
  LAW.C0 = CA(MR(40+40*i), 0, MR(-30*i)) * CN(0.25+0.2*i, -0.5, 0)
  RAW.C0 = CA(MR(80+10*i), 0, MR(-68+3*i)) * CN(0.7-0.1*i, -0.7-0.2*i, -0.25+0.2*i)
  wait()
 end
 for i = 0.5, 1, 0.5 do
  LAW.C0 = CA(MR(80+5*i), 0, MR(-30-10*i)) * CN(0.45+0.05*i, -0.5, -0.05+0.05*i)
  RAW.C0 = CA(MR(90), 0, MR(-65)) * CN(0.6, -0.9, 0)
  wait()
 end
 Normal()
 Swinging = false
end

function Reload(once)
 while Ammunition.Ammo < Ammunition.MaxAmmo and Ammunition.Ammoleft > 0 do
  wait()
  for i = 0.33, 1, 0.33 do
   RAW.C0 = CA(MR(45-2*i), 0, MR(-15)) * CN(0, -0.15-0.05*i, 0)
   LAW.C0 = CA(MR(50), MR(40), MR(-15)) * CN(0.5, -0.5, 0)
   LHW.C0 = CA(MR(-35), MR(60), MR(-45)) * CN(-0.6, 0.2, -0.24)
   wait()
  end
  for i = 0.25, 1, 0.25 do
   RAW.C0 = CA(MR(43-8*i), 0, MR(-15)) * CN(0, -0.2-0.2*i, 0)
   LAW.C0 = CA(MR(50), MR(40), MR(-15)) * CN(0.5, -0.5, 0)
   LHW.C0 = CA(MR(-35), MR(60), MR(-45)) * CN(-0.6, 0.2, -0.24)
   wait()
  end
  for i = 0.5, 1, 0.5 do
   RAW.C0 = CA(MR(35-2*i), 0, MR(-15)) * CN(0, -0.4-0.05*i, 0)
   wait()
  end
  local shel = Shell(Weapon)
  local w = Weld(Rarm, shel.Main, CN(0, -1.25, 0.45), CA(MR(-140), 0, MR(60)))
  for i = 0.25, 1, 0.25 do
   RAW.C0 = CA(MR(33+20*i), 0, MR(-15-10*i)) * CN(0, -0.45+0.2*i, 0)
   LAW.C0 = CA(MR(50-5*i), MR(40), MR(-15+5*i)) * CN(0.5, -0.5, 0)
   w.C0 = CN(-0.1*i, -1.25, 0.45-0.25*i)
   wait()
  end
  for i = 0.2, 1, 0.2 do
   RAW.C0 = CA(MR(53+32*i), 0, MR(-25-12*i)) * CN(0, -0.25-0.3*i, 0)
   LAW.C0 = CA(MR(45), MR(40), MR(-10+10*i)) * CN(0.5, -0.5+0.15*i, 0)
   w.C0 = CN(-0.1-0.1*i, -1.25, 0.2-0.3*i)
   w.C1 = CA(MR(-140+50*i), 0, MR(60))
   wait()
  end
  PlaySound(Sounds.Reload, false)
  for i = 0.25, 1, 0.25 do
   RAW.C0 = CA(MR(85+10*i), 0, MR(-42-8*i)) * CN(0, -0.55-0.1*i, 0)
   LAW.C0 = CA(MR(45), MR(40), 0) * CN(0.5, -0.35, 0)
   w.C0 = CN(-0.2-0.05*i, -1.25, -0.1-0.1*i)
   wait()
  end
  shel.Model:remove() shell = nil
  Ammunition.Ammo = Ammunition.Ammo + 1
  Ammunition.Ammoleft = Ammunition.Ammoleft - 1
  wait(0.1)
  for i = 0.33, 1, 0.33 do
   RAW.C0 = CA(MR(95-10*i), 0, MR(-50+10*i)) * CN(0, -0.65+0.1*i, 0)
   LAW.C0 = CA(MR(45+5*i), MR(40), MR(-12*i)) * CN(0.5, -0.35-0.1*i, 0)
   wait()
  end
  for i = 0.25, 1, 0.25 do
   RAW.C0 = CA(MR(85-40*i), 0, MR(-40+25*i)) * CN(0, -0.55+0.4*i, 0)
   LAW.C0 = CA(MR(50), MR(40), MR(-12-3*i)) * CN(0.5, -0.45-0.05*i, 0)
   wait()
  end
  if once then break end
  if not ReloadHold then break end
 end
 for i = 0.33, 1, 0.33 do
  RAW.C0 = CA(MR(45+10*i), 0, MR(-15-10*i)) * CN(0.1*i, -0.15-0.1*i, 0)
  LAW.C0 = CA(MR(52+12*i), MR(40-5*i), MR(-15-5*i)) * CN(0.5, -0.5, 0)
  LHW.C0 = CA(MR(-35+10*i), MR(60-10*i), MR(-45+10*i)) * CN(-0.6+0.1*i, 0.2, -0.24)
  wait()
 end
 for i = 0.2, 1, 0.2 do
  RAW.C0 = CA(MR(55+30*i), 0, MR(-25-30*i)) * CN(0.1+0.4*i, -0.25-0.55*i, 0)
  LAW.C0 = CA(MR(70+10*i), MR(35-30*i), MR(-20-15*i)) * CN(0.5, -0.5, 0)
  LHW.C0 = CA(MR(-25+18*i), MR(50-15*i), MR(-35+25*i)) * CN(-0.5+0.3*i, 0.2+0.1*i, -0.24)
  wait()
 end
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CA(MR(85+5*i), 0, MR(-55-10*i)) * CN(0.5+0.1*i, -0.8-0.1*i, 0)
  LAW.C0 = CA(MR(80+5*i), MR(5-5*i), MR(-35-5*i)) * CN(0.5, -0.5, 0)
  LHW.C0 = CA(MR(-7+5*i), MR(35-5*i), MR(-10+7*i)) * CN(-0.2+0.1*i, 0.3+0.02*i, -0.24)
  wait()
 end
end

function ReloadStart(once)
 Reloading = true
 HW.Part1 = nil
 LHW.Part1 = Pipe2
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CA(MR(90-10*i), 0, MR(-65+10*i)) * CN(0.6-0.2*i, -0.9+0.15*i, 0)
  LAW.C0 = CA(MR(85-5*i), MR(7*i), MR(-40+5*i)) * CN(0.5, -0.5, 0)
  LHW.C0 = CA(MR(-2-8*i), MR(30+5*i), MR(-3-12*i)) * CN(-0.1-0.1*i, 0.32-0.12*i, -0.24)
  wait()
 end
 for i = 0.15, 1, 0.15 do
  RAW.C0 = CA(MR(80-35*i), 0, MR(-55+40*i)) * CN(0.4-0.4*i, -0.75+0.6*i, 0)
  LAW.C0 = CA(MR(80-30*i), MR(7+33*i), MR(-35+20*i)) * CN(0.5, -0.5, 0)
  LHW.C0 = CA(MR(-10-25*i), MR(35+25*i), MR(-15-30*i)) * CN(-0.2-0.4*i, 0.2, -0.24)
  wait()
 end
 Reload(once)
 Normal()
 Reloading = false
end

function AimEet()
end

function Shoot(Start, To)
 local Accu = CA(MR(MRA(-Accuracy.Momentum*1000, Accuracy.Momentum*1000)/1700),  MR(MRA(-Accuracy.Momentum*1000, Accuracy.Momentum*1000)/1000), MR(MRA(-Accuracy.Momentum*1000, Accuracy.Momentum*1000)/1000))
 for Pellets = 1, 8 do
  local Power = 20
  local Drop = 0.2
  local Face = CN(Start, To) * Accu * CA(MR(MRA(-10000, 10000)/2500), MR(MRA(-10000, 10000)/2500), MR(MRA(-10000, 10000)/2500))
  local Pellet = Part(PelletModel, true, false, 0, 0, BN("Dark grey"), V3(0.2, 0.2, 0.3))
  Pellet.CFrame = Face
  local LastPoint = Face.p
  Notime(function()
   local HitObj
   local HitPos
   local DistThing = 250
   for Distance = Power, 600, Power do
    Face = Face * CA(MR(-Drop), 0, 0) * CN(0, 0, -Power)
    local PointNow = Face.p
    local Hit, Pos = RayC(LastPoint, PointNow, Power+2, EffectModel)
    if Hit then
     DistThing = Distance
     if DistThing > 250 then DistThing = 200 end
     PointNow = Pos
     HitPos = Pos
     HitObj = Hit
    end
    local Dist = (PointNow - LastPoint).magnitude
    Pellet.CFrame = Face
    Drop = Drop + 0.04
    local Effect = Part(EffectModel, true, false, 0, 0, BN("White"), V3(0.2, 0.2, 0.2))
    Effect.CFrame = CN(LastPoint, PointNow) * CA(MR(-90), 0, 0) * CN(0, Dist/2, 0)
    local H = Add.Head(Effect, V3(0.8, Dist*5, 0.8))
    LastPoint = Face.p
    Power = Power - Drop/3
    Notime(function()
     for i = 0, 1, 0.2 do
      wait()
      Effect.Transparency = i
     end
     Effect:remove()
    end)
    if Hit then
     Pellet.CFrame = CN(Pos)
     break
    end
    wait()
   end
   Pellet:remove()
   if HitObj then
    local Surface = DetectSurface(HitPos, HitObj)
    local C = CN(HitPos) * CA(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]
    if Surface[1] == "Anything" then
     C = Surface[2]
    end
    local H = nil
    if HitObj.Parent ~= workspace then
     H = GetHum(HitObj.Parent)
     if HitObj.Parent.Parent ~= workspace and H == nil then
      H = GetHum(HitObj.Parent.Parent)
     end
    end
    if H then
     local Dmg = DistThing/200
     Dmg = (1-Dmg)*15
     Dmg = MRA(Dmg*850, Dmg*1100)/1000
     H.Health = H.Health - Dmg
     PlaySound(Sounds.Hit)
     Show_Damage(HitObj.Position, math.floor(Dmg), 1.5)
    else
     PlaySound(Sounds.PartHit)
     local BulletHole = Part(EffectModel, true, false, 1, 0, BN("White"), V3(0.8, 0.2, 0.8))
     BulletHole.CFrame = C * CN(0, -0.085, 0)
     local Dec = Instance.new("Decal",BulletHole)
     Dec.Texture = Images[MRA(1,#Images)]
     Dec.Face = "Top"
     if not HitObj.Anchored then
      BulletHole.Anchored = false
      local W = Weld(HitObj, BulletHole, HitObj.CFrame:toObjectSpace(C))
     end
     Notime(function()
      wait(MRA(700, 15000)/100)
      BulletHole:remove()
     end)
    end
   end
  end)
 end
end

function ShootAnim(From, To)
 Shoot(From, To)
 AddInaccuracy(16)
 PlaySound(Sounds.Fire, false)
 for i = 0.33, 1, 0.33 do
  RAW.C0 = CA(MR(90+10*i), 0, MR(-65)) * CN(0.6, -0.9+0.5*i, 0)
  LAW.C0 = CA(MR(85+26*i), 0, MR(-40)) * CN(0.5, -0.5+0.1*i, 0)
  HW.C0 = CA(MR(-15*i), MR(5), MR(0)) * CN(0.4, 0, -1.2)
  wait()
 end
 for i = 0.2, 1, 0.2 do
  RAW.C0 = CA(MR(100+5*i), 0, MR(-65)) * CN(0.6, -0.4+0.15*i, 0)
  LAW.C0 = CA(MR(111+4*i), 0, MR(-40)) * CN(0.5, -0.4+0.05*i, 0)
  HW.C0 = CA(MR(-15-2*i), MR(5), MR(0)) * CN(0.4, 0, -1.2)
  wait()
 end
 for i = 0.5, 1, 0.5 do
  RAW.C0 = CA(MR(105+2*i), 0, MR(-65)) * CN(0.6, -0.25+0.03*i, 0)
  LAW.C0 = CA(MR(115+2*i), 0, MR(-40)) * CN(0.5, -0.35+0.02*i, 0)
  HW.C0 = CA(MR(-17), MR(5), MR(0)) * CN(0.4, 0, -1.2)
  wait()
 end
 for i = 0.2, 1, 0.2 do
  RAW.C0 = CA(MR(107-12*i), 0, MR(-65)) * CN(0.6, -0.22-0.68*i, 0)
  LAW.C0 = CA(MR(117-17*i), 0, MR(-40)) * CN(0.5, -0.33-0.02*i, 0)
  HW.C0 = CA(MR(-17+2*i), MR(5), MR(0)) * CN(0.4, 0, -1.2)
  wait()
 end
 for i = 0.33, 1, 0.33 do
  RAW.C0 = CA(MR(95-5*i), 0, MR(-65)) * CN(0.6, -0.9-0.1*i, 0)
  LAW.C0 = CA(MR(100-5*i), 0, MR(-40)) * CN(0.5+0.1*i, -0.35+0.1*i, 0)
  HW.C0 = CA(MR(-15+11*i), MR(5), MR(0)) * CN(0.4, 0, -1.2)
  PumpWeld.C1 = CN(0, 0, 0.1*i)
  wait()
 end
 for i = 0.33, 1, 0.33 do
  RAW.C0 = CA(MR(90-3*i), 0, MR(-65)) * CN(0.6, -1+0.05*i, 0)
  LAW.C0 = CA(MR(95-5*i), 0, MR(-40)) * CN(0.6+0.2*i, -0.25+0.35*i, 0)
  HW.C0 = CA(MR(-4+4*i), MR(5), MR(0)) * CN(0.4, 0, -1.2)
  PumpWeld.C1 = CN(0, 0, 0.1+0.6*i)
  Flip.C1 = CN(0, 0, 0.5*i)
  wait()
 end
 local sh = Shell(workspace)
 sh.Main.CanCollide = true
 sh.Back.CanCollide = true
 sh.Main.CFrame = Handle3.CFrame * CN(0.3, 0.2, 0)
 sh.Main.Velocity = (Handle3.CFrame * CA(0, MR(90), 0)).lookVector * 15
 Notime(function()
  wait(MRA(100,180)/10)
  for i = 0, 1, 0.005 do
   sh.Main.Transparency = i
   sh.Back.Transparency = i
   wait()
  end
  sh.Model:remove()
 end)
 for i = 0.33, 1, 0.33 do
  RAW.C0 = CA(MR(87+3*i), 0, MR(-65)) * CN(0.6, -0.95+0.05*i, 0)
  LAW.C0 = CA(MR(90-5*i), 0, MR(-40)) * CN(0.8-0.3*i, 0.1-0.6*i, 0)
  HW.C0 = CA(0, MR(5), 0) * CN(0.4, 0, -1.2)
  PumpWeld.C1 = CN(0, 0, 0.7-0.7*i)
  Flip.C1 = CN(0, 0, 0.5-0.5*i)
  wait()
 end
 Normal()
end

function ShootFunc(From, To)
 local H, Pos = RayC(From, To, 10, EffectModel)
 local Can = true
 if H then
  if H:IsDescendantOf(Char) then
   Can = false
  end
 end
 if Can then
  Attacking = true
  Ammunition.Ammo = Ammunition.Ammo - 1
  if Ammunition.Ammo < 0 then Ammunition.Ammo = 0 end
  ShootAnim(From, To)
  Attacking = false
 end
end

function SelectAnim()
 RAW.Part1 = Rarm
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CA(MR(-10*i), 0, MR(2*i))
  wait()
 end
 for i = 0.1, 1, 0.1 do
  RAW.C0 = CN(-0.15*i, 0, -0.45*i) * CA(MR(-10-115*i), 0, MR(2+8*i)) * CN(0, -0.4*i, 0)
  wait()
 end
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CN(-0.15, 0, -0.45-0.05*i) * CA(MR(-125-15*i), 0, MR(10)) * CN(0, -0.4, 0)
  wait()
 end
 TW.Part1 = nil
 HW.Part1 = Handle
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CN(-0.15+0.15*i, 0, -0.5+0.1*i) * CA(MR(-140+10*i), 0, MR(10+2*i)) * CN(0, -0.4+0.15*i, 0)
  HW.C0 = CA(MR(38+12*i), MR(-28-15*i), MR(-90-10*i)) * CN(0, -0.1*i, -3.8)
  wait()
 end
 Attach(FTorso)
 for i = 0.1, 1, 0.1 do
  RAW.C0 = CN(0, 0, -0.4+0.3*i) * CA(MR(-130+90*i), 0, MR(12+30*i)) * CN(0, -0.25+0.25*i, 0)
  HW.C0 = CA(MR(50+30*i), MR(-43-50*i), MR(-100-50*i)) * CN(0, -0.1-0.7*i, -3.8+0.7*i)
  FW.C0 = CA(0, MR(-15*i), 0)
  wait()
 end
 LAW.Part1 = Larm
 for i = 0.15, 1, 0.15 do
  RAW.C0 = CN(0, 0, -0.1+0.1*i) * CA(MR(-40+60*i), 0, MR(42+4*i))
  LAW.C0 = CA(MR(10*i), 0, MR(-8*i)) * CN(0, -0.15*i, 0)
  FW.C0 = CA(0, MR(-15-20*i), 0)
  HW.C0 = CA(MR(80+50*i), MR(-93-57*i), MR(-150-30*i)) * CN(0, -0.8, -3.1+1*i)
  wait()
 end
 for i = 0.15, 1, 0.15 do
  RAW.C0 = CA(MR(20+58*i), 0, MR(46-60*i)) * CN(0.2*i, -0.35*i, 0)
  LAW.C0 = CA(MR(10+65*i), 0, MR(-8-32*i)) * CN(0.3*i, -0.15-0.25*i, 0)
  FW.C0 = CA(0, MR(-35-30*i), 0)
  HW.C0 = CA(MR(130+50*i), MR(-150-20*i), MR(-180)) * CN(0.25*i, -0.8+0.3*i, -2.1+0.9*i)
  wait()
 end
 for i = 0.2, 1, 0.2 do
  RAW.C0 = CA(MR(78+8*i), 0, MR(-14-41*i)) * CN(0.2+0.35*i, -0.35-0.55*i, 0)
  LAW.C0 = CA(MR(75+7*i), 0, MR(-40)) * CN(0.3+0.15*i, -0.4-0.06*i, 0)
  FW.C0 = CA(0, MR(-65-5*i), 0)
  HW.C0 = CA(MR(0), MR(-10+10*i), MR(0)) * CN(0.25+0.1*i, -0.5+0.4*i, -1.2)
  wait()
 end
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CA(MR(86+4*i), 0, MR(-55-10*i)) * CN(0.55+0.05*i, -0.8-0.1*i, 0)
  LAW.C0 = CA(MR(82+3*i), 0, MR(-40)) * CN(0.45+0.05*i, -0.46-0.04*i, 0)
  FW.C0 = CA(0, MR(-70), 0)
  HW.C0 = CA(MR(0), MR(5*i), MR(0)) * CN(0.35+0.05*i, -0.1+0.1*i, -1.2)
  wait()
 end
end

function DeselAnim()
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CA(MR(90-10*i), 0, MR(-65+10*i)) * CN(0.6-0.05*i, -0.9+0.35*i, 0)
  LAW.C0 = CA(MR(85-10*i), 0, MR(-40+4*i)) * CN(0.5-0.05*i, -0.5+0.04*i, 0)
  FW.C0 = CA(0, MR(-70+10*i), 0)
  HW.C0 = CA(MR(180-10*i), MR(-185+10*i), MR(180-10*i)) * CN(0.4-0.05*i, -0.1*i, -1.2)
  wait()
 end
 for i = 0.07, 1, 0.07 do
  RAW.C0 = CA(MR(80-80*i), 0, MR(-55+90*i)) * CN(0.55-0.35*i, -0.55+0.55*i, 0)
  LAW.C0 = CA(MR(75-70*i), 0, MR(-36+30*i)) * CN(0.45-0.35*i, -0.46+0.36*i, 0)
  FW.C0 = CA(0, MR(-60+40*i), 0)
  HW.C0 = CA(MR(170-70*i), MR(-175+70*i), MR(170-70*i)) * CN(0.35-0.35*i, -0.1-0.1*i, -1.2-1*i)
  wait()
 end
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CN(-0.1*i, 0, -0.15*i) * CA(MR(-30*i), 0, MR(35+10*i)) * CN(0.2-0.2*i, 0, 0)
  LAW.C0 = CA(MR(5-5*i), 0, MR(-6+6*i)) * CN(0.1-0.1*i, -0.1+0.1*i, 0)
  FW.C0 = CA(0, MR(-20+15*i), 0)
  HW.C0 = CA(MR(100-20*i), MR(-105+15*i), MR(100-15*i)) * CN(0, -0.2, -2.2-0.3*i)
  wait()
 end
 LAW.Part1 = nil
 for i = 0.12, 1, 0.12 do
  RAW.C0 = CN(-0.1-0.05*i, 0, -0.15-0.3*i) * CA(MR(-30-100*i), 0, MR(45-30*i)) * CN(0, -0.3*i, 0)
  FW.C0 = CA(0, MR(-5+5*i), 0)
  HW.C0 = CA(MR(80-37*i), MR(-90+55*i), MR(85-135*i)) * CN(0, -0.2, -2.5-0.9*i)
  wait()
 end
 Attach(Torso)
 for i = 0.2, 1, 0.2 do
  RAW.C0 = CN(-0.15*i, 0, -0.45-0.05*i) * CA(MR(-130-10*i), 0, MR(15-5*i)) * CN(0, -0.3-0.1*i, 0)
  HW.C0 = CA(MR(43-5*i), MR(-35+7*i), MR(-50-40*i)) * CN(0, -0.2, -3.4-0.4*i)
  wait()
 end
 TW.Part1 = Handle
 HW.Part1 = nil
 for i = 0.25, 1, 0.25 do
  RAW.C0 = CN(-0.15+0.05*i, 0, -0.5+0.15*i) * CA(MR(-140+10*i), 0, MR(10-3*i)) * CN(0, -0.4+0.1*i, 0)
  wait()
 end
 for i = 0.15, 1, 0.15 do
  RAW.C0 = CN(-0.1+0.1*i, 0, -0.35+0.25*i) * CA(MR(-130+115*i), 0, MR(7-7*i)) * CN(0, -0.3+0.25*i, 0)
  wait()
 end
 for i = 0.33, 1, 0.33 do
  RAW.C0 = CN(0, 0, -0.1+0.1*i) * CA(MR(-15+15*i), 0, 0) * CN(0, -0.05+0.05*i, 0)
  wait()
 end
 Attach(Torso)
 TW.Part1 = Handle
 HW.Part1 = nil
 RAW.Part1 = nil
 LAW.Part1 = nil
end

function ReloadFunc(once)
 if Ammunition.Ammo < Ammunition.MaxAmmo and Selected and not Reloading and not Attacking and Ammunition.Ammoleft > 0 then
  if not once then
   ReloadHold = true
  end
  ReloadStart(once)
 end
end

function onSelected(mouse)
 SelectAnim()
 mouse.Icon = Icon
 Selected = true
 Notime(function()
  for _, g in pairs(AccuracyGuis) do
   g.Gui.Transparency = 0.2
  end
  while Selected do
   pcall(function()
    for _, g in pairs(AccuracyGuis) do
     g.Gui.Position = UD(0, mouse.X+g.props.offset.x+g.props.unit.x*(Accuracy.Momentum*11), 0, mouse.Y+g.props.offset.y+g.props.unit.y*(Accuracy.Momentum*11))
    end
   end)
   wait()
  end
 end)
 mouse.Button1Down:connect(function()
  if Selected and not Attacking and not Swinging then
   if Reloading then
    ReloadHold = false
   else
    if Ammunition.Ammo < 1 then
     ReloadFunc(true)
    else
     ShootFunc((Pipe1.CFrame * CN(0, 0, 1.65)).p, mouse.Hit.p)
    end
    if Ammunition.Ammo < 1 and Ammunition.Ammoleft < 1 then
     PlaySound(Sounds.Out)
    end
   end
  end
 end)
 mouse.KeyDown:connect(function(key)
  key = key:lower()
  if Selected and not Attacking and not Swinging then
   if key == "r" then
    ReloadFunc()
   elseif key == "e" then
    Swing()
   end
  end
 end)
 mouse.KeyUp:connect(function(key)
  key = key:lower()
  if key == "r" then
   ReloadHold = false
  end
 end)
end

function onDeselected(mouse)
 Selected = false
 for _, g in pairs(AccuracyGuis) do
  g.Gui.Transparency = 1
 end
 DeselAnim()
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)
