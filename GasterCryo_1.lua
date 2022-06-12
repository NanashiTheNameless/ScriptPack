script.Parent=Strife
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Neck = Torso.Neck
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
mr = math.rad
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
Mouse = Player:GetMouse()
combo = 0
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local Claw = {}
local nClaw = {}
local D1Welds = {}
local D2Welds = {}
local D3Welds = {}
local HWelds = {}
local FStacks = {}
local dattack = false
local drakes = 0
local Frost = 0
local Mode = "Drakes"
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local prt1 = nil
local freeze = false
local breakfreeze = false
local dryice = false
local move1 = "(Z)\nCold Front"
local move2 = "(X)\nFrostfang"
local move3 = "(C)\nDry Ice"
local move4 = "(V)\nSavage Wrath"
local Stats = Instance.new("BoolValue")
Stats.Name = "Stats"
Stats.Parent = Character
local RecentEnemy = Instance.new("ObjectValue")
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Parent = Stats
RecentEnemy.Value = nil
local Mvmt = Instance.new("NumberValue")
Mvmt.Name = "Movement"
Mvmt.Parent = Stats
Mvmt.Value = 1
local Rooted = Instance.new("BoolValue")
Rooted.Name = "Rooted"
Rooted.Parent = Stats
Rooted.Value = false
player = nil
RSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NewCol = BrickColor.new("Really black").Color
--[[NewCol2 = BrickColor.new("Pastel light blue").Color
NewCol3 = BrickColor.new("Medium blue").Color
NewCol3aa = BrickColor.new("Medium blue").Color
NewCol4 = BrickColor.new("Cyan").Color
NewCol5 = BrickColor.new("Lily white").Color
NewCol6 = BrickColor.new("Bright blue").Color ]]

NewCol2 = BrickColor.new("Really black").Color
NewCol3 = BrickColor.new("Really black").Color
NewCol3aa = BrickColor.new("Really black").Color
NewCol4 = BrickColor.new("White").Color
NewCol5 = BrickColor.new("Really black").Color
NewCol6 = BrickColor.new("White").Color
if Player:findFirstChild("Color1") ~= nil then
  NewCol5 = Player.Color1.Value
end
local canjump = true
removeControl = function()
  canjump = false
end

resumeControl = function()
  canjump = true
end

for i,v in pairs(Character:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end

Character.Head.face.Texture = "http://www.roblox.com/asset/?id=382064532"
Character.Shirt:Remove()
Character.Pants:Remove()
Character["Body Colors"].TorsoColor=BrickColor.new("Really red")
Torso.BrickColor=BrickColor.new("Really red")
Torso.Material="Metal"
RightArm.Material="DiamondPlate"
LeftArm.Material="DiamondPlate"
RightLeg.Material="DiamondPlate"
LeftLeg.Material="DiamondPlate"

Player.Character.Humanoid.Changed:connect(function()
  if canjump == false then
    Player.Character.Humanoid.Jump = false
  end
end
)
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end


NoOutline = function(Part)
  Part.TopSurface = 10
end

part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0)
  local weld = it("Motor")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end

AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(prt1, prt, wldpar, ceef)
  v = it("NumberValue", prt)
  v.Value = trans
  v.Name = "MainTransparency"
  return prt, msh, wld
end

local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
local nsk = NumberSequenceKeypoint.new

particle = function(parent, col1, col2, lightemis, size, texture, transparency, zoffset, accel, drag, ltp, velinher, emisdir, enabled, lifetime, rate, rotation, rotspeed, speed, velspread)
  local fp = it("ParticleEmitter")
  fp.Parent = parent
  fp.Color = cs(col1, col2)
  fp.LightEmission = lightemis
  fp.Size = size
  fp.Texture = texture
  fp.Transparency = transparency
  fp.ZOffset = zoffset
  fp.Acceleration = accel
  fp.Drag = drag
  fp.LockedToPart = ltp
  fp.VelocityInheritance = velinher
  fp.EmissionDirection = emisdir
  fp.Enabled = enabled
  fp.Lifetime = lifetime
  fp.Rate = rate
  fp.Rotation = rotation
  fp.RotSpeed = rotspeed
  fp.Speed = speed
  fp.VelocitySpread = velspread
  return fp
end

knife = function(parent, pitch)
knifes = Instance.new("Sound")
knifes.Parent=parent
knifes.SoundId="rbxassetid://357417055"
knifes.Volume=10
knifes.Pitch=pitch
wait(0.001)
knifes:Play()
end

rave = function(parent, pitch)
raves = Instance.new("Sound")
raves.Parent=parent
raves.SoundId="rbxassetid://160772554"
raves.Volume=10
raves.Pitch=pitch
wait(0.001)
raves:Play()
end

gaster = function(parent, pitch)
blaster = Instance.new("Sound")
blaster.Parent=parent
blaster.SoundId="rbxassetid://332223043"
blaster.Volume=10
blaster.Pitch=pitch
wait(0.001)
blaster:Play()
end

gastblast = function(parent, pitch)
gastblasts = Instance.new("Sound")
gastblasts.Parent=parent
gastblasts.SoundId="rbxassetid://340722848"
gastblasts.Volume=10
gastblasts.Pitch=pitch
wait(0.001)
gastblasts:Play()
end

summongb = function(parent, pitch)
gastsummons = Instance.new("Sound")
gastsummons.Parent=parent
gastsummons.SoundId="rbxassetid://382366855"
gastsummons.Volume=10
gastsummons.Pitch=pitch
wait(0.001)
gastsummons:Play()
end

-----Left Asriel {R} Arm Two----------------------
--[[p=Instance.new('Part',Character)
p.BrickColor=BrickColor.new('Black')
p.Material=("SmoothPlastic") --("Neon")
p.Name="P6"
p.Size=Vector3.new(1.2,2.2,1.2)
w=Instance.new('Weld',Character.P6)
w.Part0=Character.P6
w.Part1=LeftArm
------------------------------
p=Instance.new('Part',Character)
p.BrickColor=BrickColor.new('Institutional white')
p.Material=("Neon")
p.Name="P7"
p.Size=Vector3.new(1.3, 0.2, 1.3)
w=Instance.new('Weld',Character.P7)
w.Part0=Character.P7
w.Part1=LeftArm 
w.C0=CFrame.new(0,0.8,0)
------------------------------
p=Instance.new('Part',Character)
p.BrickColor=BrickColor.new('Institutional white')
p.Material=("Neon")
p.Name="Diamond2"
p.Size=Vector3.new(1.3, 0.2, 1.3)
m=Instance.new('SpecialMesh',Character.Diamond2)
m.MeshId="http://www.roblox.com/asset/?id=9756362"
m.Scale=Vector3.new(1.3, 1.4, 1.3)
w=Instance.new('Weld',Character.Diamond2)
w.Part0=Character.Diamond2
w.Part1=LeftArm 
w.C0=CFrame.new(0,0,0)
----------------------------------
p=Instance.new('Part',Character)
p.BrickColor=BrickColor.new('Institutional white')
p.Material=("Neon")
p.Name="P8"
p.Size=Vector3.new(1.3, 0.2, 1.3)
w=Instance.new('Weld',Character.P8)
w.Part0=Character.P8
w.Part1=LeftArm 
w.C0=CFrame.new(0,0.4,0)
------------------------------------------
p=Instance.new('Part',Character)
p.BrickColor=BrickColor.new('Institutional white')
p.Material=("Neon")
p.Name="P9"
p.Size=Vector3.new(1.3, 0.2, 1.3)
w=Instance.new('Weld',Character.P9)
w.Part0=Character.P9
w.Part1=LeftArm 
w.C0=CFrame.new(0,-0.8,0)
-----------------------------------------------------
p=Instance.new('Part',Character)
p.BrickColor=BrickColor.new('Institutional white')
p.Material=("Neon")
p.Name="P10"
p.Size=Vector3.new(1.3, 0.2, 1.3)
w=Instance.new('Weld',Character.P10)
w.Part0=Character.P10
w.Part1=LeftArm 
w.C0=CFrame.new(0,-0.4,0) ]]
-----------------------------------------------------

local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Drake Claw"
local handle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle", vt())
prt1 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part01", vt())
msh1 = mesh("BlockMesh", prt1, "", "", vt(0, 0, 0), vt(5.25, 5, 5.25))
local handlewld = weld(handle, handle, RightArm, euler(0, 0, 0) * cf(0, 0, 0))
local wld1 = weld(prt1, prt1, handle, cf(0, 0, 0) * euler(0, 0, 0))
prt4, msh4, wld4 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol3, "Part04", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 3, 0.75, 1.5, euler(mr(90), 0, 0) * euler(0, mr(90), 0) * cf(-0.575, -0.825, 0))
prt5, msh5, wld5 = AesthPart(modelzorz, prt1, 0, 0, "Really black", "Part05", "Metal", "SpecialMesh", "Sphere", "nil", 0.475, 0.15, 0.675, euler(mr(90), 0, 0) * euler(0, mr(90), 0) * cf(-0.65, -0.825, 0))
prt6, msh6, wld6 = AesthPart(modelzorz, prt1, 0, 0, NewCol4, "Part06", "Neon", "SpecialMesh", "Sphere", "nil", 0.4, 0.25, 0.6, euler(mr(90), 0, 0) * euler(0, mr(90), 0) * cf(-0.65, -0.825, 0))
prt9, msh9, wld9 = AesthPart(modelzorz, prt1, 0.3, 0, NewCol2, "Part09", "SmoothPlastic", "SpecialMesh", "FileMesh", "19251107", 0.1, 0.1, 0.1, euler(mr(90), 0, 0) * euler(0, mr(90), 0) * cf(-0.65, -0.825, 0))
prt12, msh12, wld12 = AesthPart(modelzorz, prt1, 0, 0, "Black", "Part12", "SmoothPlastic", "BlockMesh", "nil", "nil", 5.25, 4, 1, euler(0, mr(90), 0) * cf(-0.6, 0.375, 0))
prt13, msh13, wld13 = AesthPart(modelzorz, prt1, 0, 0, "Black", "Part13", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 4, 3.05, 0.475, euler(0, mr(90), 0) * euler(0, 0, -mr(10)) * cf(-0.601, -0.316, 0))
prt14, msh14, wld14 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol3, "Part14", "SmoothPlastic", "BlockMesh", "nil", "nil", 2.5, 5, 1, euler(0, mr(90), 0) * euler(0, 0, -mr(10)) * cf(-0.676, -0.162, 0))
prt15, msh15, wld15 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol3, "Part15", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 5, 0.25, 1.25, euler(0, 0, mr(80)) * euler(0, 0, 0) * cf(-0.799, -0.184, 0.125))
prt16, msh16, wld16 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol3, "Part16", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 5, 0.25, 1.25, euler(0, 0, mr(100)) * euler(mr(180), 0, 0) * cf(-0.799, -0.184, -0.125))
prt17, msh17, wld17 = AesthPart(modelzorz, prt1, 0, 0, "Black", "Part17", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 4.5, 4.5, 0.4, euler(0, mr(90), 0) * euler(0, 0, 0) * cf(-0.55, -0.475, 0))
prt18, msh18, wld18 = AesthPart(modelzorz, prt1, 0, 0, "Black", "Part18", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 5.25, 1, 0.25, euler(0, mr(-90), 0) * euler(mr(180), 0, 0) * cf(-0.525, 0.875, 0))
prt19, msh19, wld19 = AesthPart(modelzorz, prt1, 0, 0, "Black", "Part19", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 5.25, 1, 0.5, euler(0, mr(90), 0) * euler(mr(180), 0, 0) * cf(-0.65, 0.875, 0))
prt20, msh20, wld20 = AesthPart(modelzorz, prt1, 0, 0, "Black", "Part20", "SmoothPlastic", "BlockMesh", "nil", "nil", 5.25, 1, 0.25, euler(0, mr(90), 0) * euler(0, 0, 0) * cf(-0.575, 0.875, 0))
prt21, msh21, wld21 = AesthPart(modelzorz, prt1, 0, 0, "Black", "Part21", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 1.25, 1.5, 1.25, euler(mr(180), 0, 0) * euler(0, 0, 0) * cf(-0.675, 0.975, 0))
prt24, msh24, wld24 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol5, "Part24", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 3.5, 2.5, 1.5, euler(0, mr(90), 0) * euler(mr(180), 0, 0) * cf(-0.7, 0.575, 0))
prt25, msh25, wld25 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol5, "Part25", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.5, 0.3, 1.2, euler(mr(90), mr(90), 0) * euler(0, 0, mr(10)) * cf(-0.945, 0.378, 0))
prt26, msh26, wld26 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol5, "Part26", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 0.625, 0.4, 0.5, euler(mr(90), mr(90), 0) * euler(0, 0, mr(-10)) * cf(-0.845, 0.428, 0))
prt27, msh27, wld27 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol5, "Part27", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 0.525, 0.3, 0.75, euler(mr(90), mr(90), 0) * euler(0, 0, mr(-10)) * cf(-0.73, 0.174, 0))
prt28, msh28, wld28 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part28", "Metal", "SpecialMesh", "Sphere", "nil", 0.6, 0.125, 0.85, euler(0, mr(95.221), mr(113.261)) * euler(0, mr(-19.53), 0) * cf(-1.058, 0.687, 0.252))
prt29, msh29, wld29 = AesthPart(modelzorz, prt1, 0, 0, NewCol4, "Part29", "Neon", "SpecialMesh", "Sphere", "nil", 0.5, 0.25, 0.75, euler(0, mr(95.221), mr(113.261)) * euler(0, mr(-19.53), 0) * cf(-1.058, 0.687, 0.252))
prt30, msh30, wld30 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part30", "Metal", "SpecialMesh", "Sphere", "nil", 0.6, 0.125, 0.85, euler(0, mr(84.779), mr(113.261)) * euler(0, mr(19.53), 0) * cf(-1.058, 0.687, -0.252))
prt31, msh31, wld31 = AesthPart(modelzorz, prt1, 0, 0, NewCol4, "Part31", "Neon", "SpecialMesh", "Sphere", "nil", 0.5, 0.25, 0.75, euler(0, mr(84.779), mr(113.261)) * euler(0, mr(19.53), 0) * cf(-1.058, 0.687, -0.252))
prt32, msh32, wld32 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part32", "Metal", "SpecialMesh", "Sphere", "nil", 0.275, 0.1, 0.475, euler(0, mr(94.208), mr(114.079)) * euler(0, mr(-24.666), 0) * cf(-1.093, 0.693, 0.137))
prt33, msh33, wld33 = AesthPart(modelzorz, prt1, 0, 0, NewCol4, "Part33", "Neon", "SpecialMesh", "Sphere", "nil", 0.2, 0.25, 0.4, euler(0, mr(94.208), mr(114.079)) * euler(0, mr(-24.666), 0) * cf(-1.093, 0.693, 0.137))
prt34, msh34, wld34 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part34", "Metal", "SpecialMesh", "Sphere", "nil", 0.275, 0.1, 0.475, euler(0, mr(85.792), mr(114.079)) * euler(0, mr(24.666), 0) * cf(-1.093, 0.693, -0.137))
prt35, msh35, wld35 = AesthPart(modelzorz, prt1, 0, 0, NewCol4, "Part35", "Neon", "SpecialMesh", "Sphere", "nil", 0.2, 0.25, 0.4, euler(0, mr(85.792), mr(114.079)) * euler(0, mr(24.666), 0) * cf(-1.093, 0.693, -0.137))
for i = -0.225, 0.226, 0.45 do
  prt36, msh36, wld36 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol6, "Part36", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.225, 0.225, 0.225, euler(0, 0, mr(-10)) * euler(0, 0, 0) * cf(-0.729, 0.85, i))
  prt37, msh37, wld37 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part37", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.7, 1.5, 1, euler(0, mr(90), 0) * euler(0, 0, mr(-10)) * cf(-0.751, 0.973, i))
  prt38, msh38, wld38 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part38", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.7, 1.25, 1, euler(0, mr(-90), 0) * euler(0, 0, mr(170)) * cf(-0.799, 1.244, i))
  prt39, msh39, wld39 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part39", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.6, 1.5, 1, euler(0, mr(90), 0) * euler(0, 0, mr(0)) * cf(-0.772, 1.239, i))
  prt40, msh40, wld40 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part40", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.6, 1.25, 1, euler(0, mr(-90), 0) * euler(0, 0, mr(180)) * cf(-0.772, 1.514, i))
  prt41, msh41, wld41 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part41", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.5, 2, 1, euler(0, mr(90), 0) * euler(0, 0, mr(10)) * cf(-0.738, 1.559, i))
  prt42, msh42, wld42 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part42", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 1.25, 1, euler(0, mr(-90), 0) * euler(0, 0, mr(190)) * cf(-0.682, 1.879, i))
  prt43, msh43, wld43 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part43", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.4, 2.5, 1, euler(0, mr(90), 0) * euler(0, 0, mr(20)) * cf(-0.624, 1.939, i))
  prt44, msh44, wld44 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part44", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.4, 1.25, 1, euler(0, mr(-90), 0) * euler(0, 0, mr(200)) * cf(-0.496, 2.291, i))
  prt45, msh45, wld45 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part45", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.3, 2, 1, euler(0, mr(90), 0) * euler(0, 0, mr(35)) * cf(-0.428, 2.307, i))
  prt46, msh46, wld46 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol2, "Part46", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.3, 2.25, 1, euler(0, mr(-90), 0) * euler(0, 0, mr(215)) * cf(-0.184, 2.655, i))
  table.insert(Claw, prt37)
  table.insert(Claw, prt38)
  table.insert(Claw, prt39)
  table.insert(Claw, prt40)
  table.insert(Claw, prt41)
  table.insert(Claw, prt42)
  table.insert(Claw, prt43)
  table.insert(Claw, prt44)
  table.insert(Claw, prt45)
  table.insert(Claw, prt46)
end
for i = 1, #Claw do
  Claw[i].Transparency = 1
end
for i = -0.425, 0.426, 0.85 do
  local prt22, msh22, wld22 = AesthPart(modelzorz, prt1, 0.2, 0, NewCol2, "Part22", "SmoothPlastic", "BlockMesh", "nil", "nil", 1.01, 3.001, 0.26, euler(0, mr(90), 0) * euler(0, 0, 0) * cf(-0.675, 0.275, i))
  local prt23, msh23, wld23 = AesthPart(modelzorz, prt1, 0.2, 0, NewCol2, "Part23", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1.01, 1.01, 0.26, euler(0, mr(-90), 0) * euler(mr(180), 0, 0) * cf(-0.675, 0.675, i))
end
for i = -0.375, 0.376, 0.75 do
  local prt10, msh10, wld10 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol4, "Part10", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 2.25, 1, 1, euler(0, 0, mr(90)) * euler(0, 0, 0) * cf(-0.6, -0.75, i))
  local prt11, msh11, wld11 = AesthPart(modelzorz, prt1, 0.5, 0, NewCol4, "Part10", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 5.25, 0.501, 1, euler(0, 0, mr(90)) * euler(0, 0, 0) * cf(-0.55, -0.45, i))
end
for i = -0.5, 0.5, 0.25 do
  local prt2, msh2, wld2 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part02", "SmoothPlastic", "BlockMesh", "", "", 5.3, 0.5, 5.3, cf(0, i, 0))
end
for i = -0.65, 0.66 do
  local prt3, msh3, wld3 = AesthPart(modelzorz, prt1, 0.3, 0, NewCol2, "Part03", "SmoothPlastic", "BlockMesh", "", "", 5.5, 1.5, 5.5, cf(0, i, 0))
end
for i = -0.075, 0.076, 0.15 do
  local prt7, msh7, wld7 = AesthPart(modelzorz, prt1, 0, 0, "Really black", "Part07", "Metal", "SpecialMesh", "Sphere", "nil", 0.2, 0.1, 0.35, euler(mr(90), 0, 0) * euler(0, mr(90), 0) * cf(-0.65, -0.825, i))
  local prt8, msh8, wld8 = AesthPart(modelzorz, prt1, 0, 0, NewCol4, "Part08", "Neon", "SpecialMesh", "Sphere", "nil", 0.15, 0.2, 0.3, euler(mr(90), 0, 0) * euler(0, mr(90), 0) * cf(-0.65, -0.825, i))
end
local model2 = it("Model", Character)
model2.Name = "Drake1"
dprt1, dmsh1, dwld1 = AesthPart(model2, RootPart, 0, 0, NewCol2, "Drake Part01", "Neon", "SpecialMesh", "Sphere", "nil", 2.75, 2.75, 2.75, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 5))
dprt2, dmsh2, dwld2 = AesthPart(model2, dprt1, 0, 0.2, NewCol2, "Drake Part02", "Neon", "SpecialMesh", "Sphere", "nil", 3, 3, 3, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
dprt3, dmsh3, dwld3 = AesthPart(model2, dprt2, 0, 0.7, NewCol4, "Drake Part03", "Neon", "SpecialMesh", "Sphere", "nil", 3.5, 3.5, 3.5, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
dprt4, dmsh4, dwld4 = AesthPart(model2, dprt2, 0, 0.9, NewCol4, "Drake Part04", "Neon", "SpecialMesh", "Sphere", "nil", 4, 4, 4, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
dprt5, dmsh5, dwld5 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part05", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 1, 1, 1, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, -0.3, -0.35))
dprt6, dmsh6, dwld6 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part06", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 0.8, 0.8, 1.5, euler(mr(-5), 0, 0) * euler(0, 0, 0) * cf(0, -0.172, -1.054))
dprt7, dmsh7, dwld7 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part07", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(mr(20), 0, 0) * euler(0, 0, 0) * cf(0, -0.842, -0.355))
dprt13, dmsh13, dwld13 = AesthPart(model2, dprt2, 0, 0, NewCol, "Drake Part13", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(34.252), 0, 0) * euler(0, 0, mr(-30.192)) * euler(0, mr(3.81), 0) * cf(0.244, -0.676, 0.395))
dprt14, dmsh14, dwld14 = AesthPart(model2, dprt2, 0, 0, NewCol, "Drake Part14", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(36.107), 0, 0) * euler(0, 0, mr(-35.792)) * euler(0, mr(12.017), 0) * cf(0.402, -0.656, 0.288))
dprt15, dmsh15, dwld15 = AesthPart(model2, dprt2, 0, 0, NewCol, "Drake Part15", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(34.252), 0, 0) * euler(0, 0, mr(30.192)) * euler(0, mr(-3.81), 0) * cf(-0.244, -0.676, 0.395))
dprt16, dmsh16, dwld16 = AesthPart(model2, dprt2, 0, 0, NewCol, "Drake Part16", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(36.107), 0, 0) * euler(0, 0, mr(35.792)) * euler(0, mr(-12.017), 0) * cf(-0.402, -0.656, 0.288))
dprt17, dmsh17, dwld17 = AesthPart(model2, dprt2, 0, 0, NewCol4, "Drake Part17", "Neon", "SpecialMesh", "Sphere", "nil", 0.9, 0.6, 1.3, euler(mr(34.252), 0, 0) * euler(0, 0, mr(-30.192)) * euler(0, mr(3.81), 0) * cf(0.244, -0.676, 0.395))
dprt18, dmsh18, dwld18 = AesthPart(model2, dprt2, 0, 0, NewCol4, "Drake Part18", "Neon", "SpecialMesh", "Sphere", "nil", 0.3, 0.3, 0.4, euler(mr(36.107), 0, 0) * euler(0, 0, mr(-35.792)) * euler(0, mr(12.017), 0) * cf(0.402, -0.656, 0.288))
dprt19, dmsh19, dwld19 = AesthPart(model2, dprt2, 0, 0, NewCol4, "Drake Part19", "Neon", "SpecialMesh", "Sphere", "nil", 0.9, 0.6, 1.3, euler(mr(34.252), 0, 0) * euler(0, 0, mr(30.192)) * euler(0, mr(-3.81), 0) * cf(-0.244, -0.676, 0.395))
dprt20, dmsh20, dwld20 = AesthPart(model2, dprt2, 0, 0, NewCol4, "Drake Part20", "Neon", "SpecialMesh", "Sphere", "nil", 0.3, 0.3, 0.4, euler(mr(36.107), 0, 0) * euler(0, 0, mr(35.792)) * euler(0, mr(-12.017), 0) * cf(-0.402, -0.656, 0.288))
table.insert(D1Welds, dwld1)
table.insert(D1Welds, dwld2)
table.insert(D1Welds, dwld3)
table.insert(D1Welds, dwld4)
table.insert(D1Welds, dwld5)
table.insert(D1Welds, dwld6)
table.insert(D1Welds, dwld7)
table.insert(D1Welds, dwld13)
table.insert(D1Welds, dwld14)
table.insert(D1Welds, dwld15)
table.insert(D1Welds, dwld16)
table.insert(D1Welds, dwld17)
table.insert(D1Welds, dwld18)
table.insert(D1Welds, dwld19)
table.insert(D1Welds, dwld20)
for i = -1, 1, 2 do
  dprt10, dmsh10, dwld10 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part10", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 1, 0.25, euler(mr(34.897), 0, 0) * euler(0, 0, mr(44.099) * i) * euler(0, mr(2.865) * i, 0) * cf(1.369 * i, 0.43, -1.182))
  dprt11, dmsh11, dwld11 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part11", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.75, 0.25, euler(mr(20.486), 0, 0) * euler(0, 0, mr(43.384) * i) * euler(0, mr(16.995) * i, 0) * cf(1.144 * i, 0.609, -0.593))
  dprt12, dmsh12, dwld12 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part12", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.65, 0.2, euler(mr(3.814), 0, 0) * euler(0, 0, mr(36.66) * i) * euler(0, mr(29.955) * i, 0) * cf(0.908 * i, 0.762, -0.022))
  table.insert(D1Welds, dwld10)
  table.insert(D1Welds, dwld11)
  table.insert(D1Welds, dwld12)
end
for i = -1, 1, 2 do
  dprt8, dmsh8, dwld8 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part08", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(mr(23.273), mr(-20.027 * i), mr(-95.696 * i)) * cf(0.903 * i, -0.554, -0.531))
  dprt9, dmsh9, dwld9 = AesthPart(model2, dprt2, 0.5, 0, NewCol5, "Drake Part09", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.3, 0.15, 1.5, euler(mr(22.305), mr(-3.546 * i), mr(-101.084 * i)) * cf(0.836 * i, -0.195, -0.533))
  table.insert(D1Welds, dwld8)
  table.insert(D1Welds, dwld9)
end
sizeseq = ns({nsk(0, 0), nsk(0.096, 1.5), nsk(0.602, 3), nsk(1, 10)})
transseq = ns({nsk(0, 0), nsk(0.05, 0.5), nsk(0.1, 1), nsk(1, 1)})
sizeseq = ns({nsk(0, 0), nsk(0.054, 0.12), nsk(0.451, 0.12), nsk(1, 0.12)})
transseq = ns({nsk(0, 1), nsk(0.03, 1), nsk(0.1, 0.137), nsk(0.232, 1), nsk(1, 1)})
sizeseq = ns({nsk(0, 1), nsk(0.096, 2.5), nsk(0.3, 10), nsk(1, 10)})
transseq = ns({nsk(0, 0), nsk(0.05, 0.5), nsk(0.1, 1), nsk(1, 1)})
local model3 = it("Model", Character)
model3.Name = "Drake2"
d2prt1, d2msh1, d2wld1 = AesthPart(model3, RootPart, 0, 0, NewCol2, "Drake Part01", "Neon", "SpecialMesh", "Sphere", "nil", 2.75, 2.75, 2.75, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 5))
d2prt2, d2msh2, d2wld2 = AesthPart(model3, d2prt1, 0, 0.2, NewCol2, "Drake Part02", "Neon", "SpecialMesh", "Sphere", "nil", 3, 3, 3, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
d2prt3, d2msh3, d2wld3 = AesthPart(model3, d2prt2, 0, 0.7, NewCol4, "Drake Part03", "Neon", "SpecialMesh", "Sphere", "nil", 3.5, 3.5, 3.5, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
d2prt4, d2msh4, d2wld4 = AesthPart(model3, d2prt2, 0, 0.9, NewCol4, "Drake Part04", "Neon", "SpecialMesh", "Sphere", "nil", 4, 4, 4, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
d2prt5, d2msh5, d2wld5 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part05", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 1, 1, 1, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, -0.3, -0.35))
d2prt6, d2msh6, d2wld6 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part06", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 0.8, 0.8, 1.5, euler(mr(-5), 0, 0) * euler(0, 0, 0) * cf(0, -0.172, -1.054))
d2prt7, d2msh7, d2wld7 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part07", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(mr(20), 0, 0) * euler(0, 0, 0) * cf(0, -0.842, -0.355))
d2prt13, d2msh13, d2wld13 = AesthPart(model3, d2prt2, 0, 0, NewCol, "Drake Part13", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(34.252), 0, 0) * euler(0, 0, mr(-30.192)) * euler(0, mr(3.81), 0) * cf(0.244, -0.676, 0.395))
d2prt14, d2msh14, d2wld14 = AesthPart(model3, d2prt2, 0, 0, NewCol, "Drake Part14", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(36.107), 0, 0) * euler(0, 0, mr(-35.792)) * euler(0, mr(12.017), 0) * cf(0.402, -0.656, 0.288))
d2prt15, d2msh15, d2wld15 = AesthPart(model3, d2prt2, 0, 0, NewCol, "Drake Part15", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(34.252), 0, 0) * euler(0, 0, mr(30.192)) * euler(0, mr(-3.81), 0) * cf(-0.244, -0.676, 0.395))
d2prt16, d2msh16, d2wld16 = AesthPart(model3, d2prt2, 0, 0, NewCol, "Drake Part16", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(36.107), 0, 0) * euler(0, 0, mr(35.792)) * euler(0, mr(-12.017), 0) * cf(-0.402, -0.656, 0.288))
d2prt17, d2msh17, d2wld17 = AesthPart(model3, d2prt2, 0, 0, NewCol4, "Drake Part17", "Neon", "SpecialMesh", "Sphere", "nil", 0.9, 0.6, 1.3, euler(mr(34.252), 0, 0) * euler(0, 0, mr(-30.192)) * euler(0, mr(3.81), 0) * cf(0.244, -0.676, 0.395))
d2prt18, d2msh18, d2wld18 = AesthPart(model3, d2prt2, 0, 0, NewCol4, "Drake Part18", "Neon", "SpecialMesh", "Sphere", "nil", 0.3, 0.3, 0.4, euler(mr(36.107), 0, 0) * euler(0, 0, mr(-35.792)) * euler(0, mr(12.017), 0) * cf(0.402, -0.656, 0.288))
d2prt19, d2msh19, d2wld19 = AesthPart(model3, d2prt2, 0, 0, NewCol4, "Drake Part19", "Neon", "SpecialMesh", "Sphere", "nil", 0.9, 0.6, 1.3, euler(mr(34.252), 0, 0) * euler(0, 0, mr(30.192)) * euler(0, mr(-3.81), 0) * cf(-0.244, -0.676, 0.395))
d2prt20, d2msh20, d2wld20 = AesthPart(model3, d2prt2, 0, 0, NewCol4, "Drake Part20", "Neon", "SpecialMesh", "Sphere", "nil", 0.3, 0.3, 0.4, euler(mr(36.107), 0, 0) * euler(0, 0, mr(35.792)) * euler(0, mr(-12.017), 0) * cf(-0.402, -0.656, 0.288))
table.insert(D2Welds, d2wld1)
table.insert(D2Welds, d2wld2)
table.insert(D2Welds, d2wld3)
table.insert(D2Welds, d2wld4)
table.insert(D2Welds, d2wld5)
table.insert(D2Welds, d2wld6)
table.insert(D2Welds, d2wld7)
table.insert(D2Welds, d2wld13)
table.insert(D2Welds, d2wld14)
table.insert(D2Welds, d2wld15)
table.insert(D2Welds, d2wld16)
table.insert(D2Welds, d2wld17)
table.insert(D2Welds, d2wld18)
table.insert(D2Welds, d2wld19)
table.insert(D2Welds, d2wld20)
for i = -1, 1, 2 do
  d2prt10, d2msh10, d2wld10 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part10", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 1, 0.25, euler(mr(34.897), 0, 0) * euler(0, 0, mr(44.099) * i) * euler(0, mr(2.865) * i, 0) * cf(1.369 * i, 0.43, -1.182))
  d2prt11, d2msh11, d2wld11 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part11", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.75, 0.25, euler(mr(20.486), 0, 0) * euler(0, 0, mr(43.384) * i) * euler(0, mr(16.995) * i, 0) * cf(1.144 * i, 0.609, -0.593))
  d2prt12, d2msh12, d2wld12 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part12", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.65, 0.2, euler(mr(3.814), 0, 0) * euler(0, 0, mr(36.66) * i) * euler(0, mr(29.955) * i, 0) * cf(0.908 * i, 0.762, -0.022))
  table.insert(D2Welds, d2wld10)
  table.insert(D2Welds, d2wld11)
  table.insert(D2Welds, d2wld12)
end
for i = -1, 1, 2 do
  d2prt8, d2msh8, d2wld8 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part08", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(mr(23.273), mr(-20.027 * i), mr(-95.696 * i)) * cf(0.903 * i, -0.554, -0.531))
  d2prt9, d2msh9, d2wld9 = AesthPart(model3, d2prt2, 0.5, 0, NewCol5, "Drake Part09", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.3, 0.15, 1.5, euler(mr(22.305), mr(-3.546 * i), mr(-101.084 * i)) * cf(0.836 * i, -0.195, -0.533))
  table.insert(D2Welds, d2wld8)
  table.insert(D2Welds, d2wld9)
end
local model4 = it("Model", Character)
model4.Name = "Drake3"
d3prt1, d3msh1, d3wld1 = AesthPart(model4, RootPart, 0, 0, NewCol2, "Drake Part01", "Neon", "SpecialMesh", "Sphere", "nil", 2.75, 2.75, 2.75, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 5))
d3prt2, d3msh2, d3wld2 = AesthPart(model4, d3prt1, 0, 0.2, NewCol2, "Drake Part02", "Neon", "SpecialMesh", "Sphere", "nil", 3, 3, 3, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
d3prt3, d3msh3, d3wld3 = AesthPart(model4, d3prt2, 0, 0.7, NewCol4, "Drake Part03", "Neon", "SpecialMesh", "Sphere", "nil", 3.5, 3.5, 3.5, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
d3prt4, d3msh4, d3wld4 = AesthPart(model4, d3prt2, 0, 0.9, NewCol4, "Drake Part04", "Neon", "SpecialMesh", "Sphere", "nil", 4, 4, 4, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0))
d3prt5, d3msh5, d3wld5 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part05", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 1, 1, 1, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, -0.3, -0.35))
d3prt6, d3msh6, d3wld6 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part06", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 0.8, 0.8, 1.5, euler(mr(-5), 0, 0) * euler(0, 0, 0) * cf(0, -0.172, -1.054))
d3prt7, d3msh7, d3wld7 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part07", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(mr(20), 0, 0) * euler(0, 0, 0) * cf(0, -0.842, -0.355))
d3prt13, d3msh13, d3wld13 = AesthPart(model4, d3prt2, 0, 0, NewCol, "Drake Part13", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(34.252), 0, 0) * euler(0, 0, mr(-30.192)) * euler(0, mr(3.81), 0) * cf(0.244, -0.676, 0.395))
d3prt14, d3msh14, d3wld14 = AesthPart(model4, d3prt2, 0, 0, NewCol, "Drake Part14", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(36.107), 0, 0) * euler(0, 0, mr(-35.792)) * euler(0, mr(12.017), 0) * cf(0.402, -0.656, 0.288))
d3prt15, d3msh15, d3wld15 = AesthPart(model4, d3prt2, 0, 0, NewCol, "Drake Part15", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(34.252), 0, 0) * euler(0, 0, mr(30.192)) * euler(0, mr(-3.81), 0) * cf(-0.244, -0.676, 0.395))
d3prt16, d3msh16, d3wld16 = AesthPart(model4, d3prt2, 0, 0, NewCol, "Drake Part16", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(36.107), 0, 0) * euler(0, 0, mr(35.792)) * euler(0, mr(-12.017), 0) * cf(-0.402, -0.656, 0.288))
d3prt17, d3msh17, d3wld17 = AesthPart(model4, d3prt2, 0, 0, NewCol4, "Drake Part17", "Neon", "SpecialMesh", "Sphere", "nil", 0.9, 0.6, 1.3, euler(mr(34.252), 0, 0) * euler(0, 0, mr(-30.192)) * euler(0, mr(3.81), 0) * cf(0.244, -0.676, 0.395))
d3prt18, d3msh18, d3wld18 = AesthPart(model4, d3prt2, 0, 0, NewCol4, "Drake Part18", "Neon", "SpecialMesh", "Sphere", "nil", 0.3, 0.3, 0.4, euler(mr(36.107), 0, 0) * euler(0, 0, mr(-35.792)) * euler(0, mr(12.017), 0) * cf(0.402, -0.656, 0.288))
d3prt19, d3msh19, d3wld19 = AesthPart(model4, d3prt2, 0, 0, NewCol4, "Drake Part19", "Neon", "SpecialMesh", "Sphere", "nil", 0.9, 0.6, 1.3, euler(mr(34.252), 0, 0) * euler(0, 0, mr(30.192)) * euler(0, mr(-3.81), 0) * cf(-0.244, -0.676, 0.395))
d3prt20, d3msh20, d3wld20 = AesthPart(model4, d3prt2, 0, 0, NewCol4, "Drake Part20", "Neon", "SpecialMesh", "Sphere", "nil", 0.3, 0.3, 0.4, euler(mr(36.107), 0, 0) * euler(0, 0, mr(35.792)) * euler(0, mr(-12.017), 0) * cf(-0.402, -0.656, 0.288))
table.insert(D3Welds, d3wld1)
table.insert(D3Welds, d3wld3)
table.insert(D3Welds, d3wld2)
table.insert(D3Welds, d3wld4)
table.insert(D3Welds, d3wld5)
table.insert(D3Welds, d3wld6)
table.insert(D3Welds, d3wld7)
table.insert(D3Welds, d3wld13)
table.insert(D3Welds, d3wld14)
table.insert(D3Welds, d3wld15)
table.insert(D3Welds, d3wld16)
table.insert(D3Welds, d3wld17)
table.insert(D3Welds, d3wld18)
table.insert(D3Welds, d3wld19)
table.insert(D3Welds, d3wld20)
for i = -1, 1, 2 do
  d3prt10, d3msh10, d3wld10 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part10", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 1, 0.25, euler(mr(34.897), 0, 0) * euler(0, 0, mr(44.099) * i) * euler(0, mr(2.865) * i, 0) * cf(1.369 * i, 0.43, -1.182))
  d3prt11, d3msh11, d3wld11 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part11", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.75, 0.25, euler(mr(20.486), 0, 0) * euler(0, 0, mr(43.384) * i) * euler(0, mr(16.995) * i, 0) * cf(1.144 * i, 0.609, -0.593))
  d3prt12, d3msh12, d3wld12 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part12", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.65, 0.2, euler(mr(3.814), 0, 0) * euler(0, 0, mr(36.66) * i) * euler(0, mr(29.955) * i, 0) * cf(0.908 * i, 0.762, -0.022))
  table.insert(D3Welds, d3wld10)
  table.insert(D3Welds, d3wld11)
  table.insert(D3Welds, d3wld12)
end
for i = -1, 1, 2 do
  d3prt8, d3msh8, d3wld8 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part08", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(mr(23.273), mr(-20.027 * i), mr(-95.696 * i)) * cf(0.903 * i, -0.554, -0.531))
  d3prt9, d3msh9, d3wld9 = AesthPart(model4, d3prt2, 0.5, 0, NewCol5, "Drake Part09", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.3, 0.15, 1.5, euler(mr(22.305), mr(-3.546 * i), mr(-101.084 * i)) * cf(0.836 * i, -0.195, -0.533))
  table.insert(D3Welds, d3wld8)
  table.insert(D3Welds, d3wld9)
end
model2.Parent = nil
model3.Parent = nil
model4.Parent = nil
dwld2.Part0 = dprt1
dwld2.Part1 = dprt2
d2wld2.Part0 = d2prt1
d2wld2.Part1 = d2prt2
d3wld2.Part0 = d3prt1
d3wld2.Part1 = d3prt2
local helm = it("Model", Character)
helm.Name = "Monarch"
Head.Transparency = 0
Head.face.Transparency = 0
for _,v in pairs(Character:children()) do
  if v.className == "Hat" then
    v.Handle.Transparency = 0
  end
end
mhead, mhmsh, mhwld = AesthPart(helm, Head, 0.5, 0, NewCol5, "Monarch Head", "Neon", "SpecialMesh", "Head", "nil", 5.5, 5.5, 5.5, euler(0, 0, 0) * cf(0, 0, 0))
mprt1, mmsh1, mwld1 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part01", "SmoothPlastic", "SpecialMesh", "FileMesh", "9253927", 0.9, 0.9, 0.9, euler(0, 0, 0) * cf(0, 0, 0))
mprt2, mmsh2, mwld2 = AesthPart(helm, mhead, 0, 0, NewCol, "Monarch Part02", "Metal", "SpecialMesh", "Sphere", "nil", 0.95, 1.8, 0.6, euler(0, 0, 0) * cf(0, -0.149, 0.558))
mprt3, mmsh3, mwld3 = AesthPart(helm, mhead, 0, 0, NewCol4, "Monarch Part03", "Neon", "SpecialMesh", "Sphere", "nil", 0.8, 1.5, 0.9, euler(0, 0, 0) * cf(0, -0.149, 0.558))
mprt4, mmsh4, mwld4 = AesthPart(helm, mhead, 0, 0, NewCol, "Monarch Part04", "Metal", "SpecialMesh", "Sphere", "nil", 0.55, 1.2, 0.6, euler(0, mr(15), 0) * cf(-0.191, -0.149, 0.524))
mprt5, mmsh5, mwld5 = AesthPart(helm, mhead, 0, 0, NewCol4, "Monarch Part05", "Neon", "SpecialMesh", "Sphere", "nil", 0.4, 1, 0.75, euler(0, mr(15), 0) * cf(-0.191, -0.149, 0.524))
mprt6, mmsh6, mwld6 = AesthPart(helm, mhead, 0, 0, NewCol, "Monarch Part06", "Metal", "SpecialMesh", "Sphere", "nil", 0.55, 1.2, 0.6, euler(0, mr(-15), 0) * cf(0.191, -0.149, 0.524))
mprt7, mmsh7, mwld7 = AesthPart(helm, mhead, 0, 0, NewCol4, "Monarch Part07", "Neon", "SpecialMesh", "Sphere", "nil", 0.4, 1, 0.75, euler(0, mr(-15), 0) * cf(0.191, -0.149, 0.524))
mprt8, mmsh8, mwld8 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part08", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 1, 1, 1, euler(mr(-10), 0, 0) * cf(0, -0.063, -0.236))
mprt9, mmsh9, mwld9 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part09", "SmoothPlastic", "SpecialMesh", "FileMesh", "170786197", 0.8, 0.8, 1.5, euler(mr(-15), 0, 0) * cf(0, 0.185, -0.907))
mprt10, mmsh10, mwld10 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part10", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(mr(10), 0, 0) * cf(0, -0.596, -0.335))
mprt16, mmsh16, mwld16 = AesthPart(helm, mhead, 0, 0, NewCol, "Monarch Part16", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(29.252), 0, 0) * euler(0, 0, mr(-22.192)) * euler(0, mr(-3.81), 0) * cf(0.244, -0.563, 0.433))
mprt17, mmsh17, mwld17 = AesthPart(helm, mhead, 0, 0, NewCol4, "Monarch Part17", "Neon", "SpecialMesh", "Sphere", "nil", 0.2, 0.6, 1.1, euler(mr(29.252), 0, 0) * euler(0, 0, mr(-22.192)) * euler(0, mr(-3.81), 0) * cf(0.244, -0.563, 0.433))
mprt18, mmsh18, mwld18 = AesthPart(helm, mhead, 0, 0, NewCol, "Monarch Part18", "Metal", "SpecialMesh", "Sphere", "nil", 1.05, 0.4, 1.4, euler(mr(29.252), 0, 0) * euler(0, 0, mr(22.192)) * euler(0, mr(3.81), 0) * cf(-0.244, -0.563, 0.433))
mprt19, mmsh19, mwld19 = AesthPart(helm, mhead, 0, 0, NewCol4, "Monarch Part19", "Neon", "SpecialMesh", "Sphere", "nil", 0.2, 0.6, 1.1, euler(mr(29.252), 0, 0) * euler(0, 0, mr(22.192)) * euler(0, mr(3.81), 0) * cf(-0.244, -0.563, 0.433))
mprt20, mmsh20, mwld20 = AesthPart(helm, mhead, 0, 0, NewCol, "Monarch Part20", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(26.107), 0, 0) * euler(0, 0, mr(-35.793)) * euler(0, mr(-12.017), 0) * cf(0.402, -0.525, 0.331))
mprt21, mmsh21, mwld21 = AesthPart(helm, mhead, 0, 0, NewCol4, "Monarch Part21", "Neon", "SpecialMesh", "Sphere", "nil", 0.1, 0.3, 0.3, euler(mr(26.107), 0, 0) * euler(0, 0, mr(-35.793)) * euler(0, mr(-12.017), 0) * cf(0.402, -0.525, 0.331))
mprt22, mmsh22, mwld22 = AesthPart(helm, mhead, 0, 0, NewCol, "Monarch Part22", "Metal", "SpecialMesh", "Sphere", "nil", 0.35, 0.25, 0.45, euler(mr(26.107), 0, 0) * euler(0, 0, mr(35.793)) * euler(0, mr(12.017), 0) * cf(-0.402, -0.525, 0.331))
mprt23, mmsh23, mwld23 = AesthPart(helm, mhead, 0, 0, NewCol4, "Monarch Part23", "Neon", "SpecialMesh", "Sphere", "nil", 0.1, 0.3, 0.3, euler(mr(26.107), 0, 0) * euler(0, 0, mr(35.793)) * euler(0, mr(12.017), 0) * cf(-0.402, -0.525, 0.331))
table.insert(HWelds, mhwld)
table.insert(HWelds, mwld1)
table.insert(HWelds, mwld2)
table.insert(HWelds, mwld3)
table.insert(HWelds, mwld4)
table.insert(HWelds, mwld5)
table.insert(HWelds, mwld6)
table.insert(HWelds, mwld7)
table.insert(HWelds, mwld8)
table.insert(HWelds, mwld9)
table.insert(HWelds, mwld10)
table.insert(HWelds, mwld16)
table.insert(HWelds, mwld17)
table.insert(HWelds, mwld18)
table.insert(HWelds, mwld19)
table.insert(HWelds, mwld20)
table.insert(HWelds, mwld21)
table.insert(HWelds, mwld22)
table.insert(HWelds, mwld23)
for i = -1, 1, 2 do
  mprt11, mmsh11, mwld11 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part11", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.6, 0.3, 2, euler(0, 0, mr(-95.514) * i) * euler(0, mr(24.898) * i, 0) * euler(mr(7.673), 0, 0) * cf(0.903 * i, -0.282, -0.458))
  mprt12, mmsh12, mwld12 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part12", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.3, 0.15, 1.5, euler(0, 0, mr(-102.075) * i) * euler(0, mr(22.588) * i, 0) * euler(mr(-8.529), 0, 0) * cf(0.836 * i, 0.072, -0.398))
  mprt13, mmsh13, mwld13 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part13", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 1, 0.25, euler(0, mr(-154.897) * i, 0) * euler(mr(-25), 0, mr(-45.901) * i) * euler(0, 0, 0) * cf(0.885 * i, 0.033, -0.049))
  mprt14, mmsh14, mwld14 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part14", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.75, 0.25, euler(0, mr(-160) * i, 0) * euler(mr(-40), 0, mr(-60) * i) * euler(0, 0, 0) * cf(0.701 * i, 0.33, -0.205))
  mprt15, mmsh15, mwld15 = AesthPart(helm, mhead, 0.5, 0, NewCol5, "Monarch Part15", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.125, 0.65, 0.2, euler(0, mr(-123) * i, 0) * euler(mr(-70), 0, mr(-80) * i) * euler(0, 0, 0) * cf(0.559 * i, 0.59, -0.478))
  table.insert(HWelds, mwld11)
  table.insert(HWelds, mwld12)
  table.insert(HWelds, mwld13)
  table.insert(HWelds, mwld14)
  table.insert(HWelds, mwld15)
end
helm.Parent = nil
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(prt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox", vt())
hitbox.Anchored = false
local hitboxCF = cf(0, 0, 0)
local sref = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt(20, 20, 20))
sref.Anchored = true
sref.CFrame = cf(RootPart.Position)
sizeseq = ns({nsk(0, 5.9), nsk(0.162, 8.63), nsk(1, 10)})
transseq = ns({nsk(0, 1), nsk(0.498, 0.8), nsk(0.913, 0.85), nsk(1, 1)})
sizeseq = ns({nsk(0, 3.61), nsk(0.162, 5.85), nsk(1, 10)})
transseq = ns({nsk(0, 1), nsk(0.498, 0.5), nsk(0.913, 0.55), nsk(1, 1)})
local gsou = Instance.new("Sound", sref)
gsou.Volume = 1
gsou.Pitch = 0.8
gsou.SoundId = "http://www.roblox.com/asset/?id=338601253"
gsou.Looped = true
local effects = it("Model", modelzorz)
effects.Name = "Effects"
hboxpos = Instance.new("BodyPosition", nil)
hboxpos.P = 2000
hboxpos.D = 100
hboxpos.maxForce = Vector3.new(545000, 545000, 545000)
sizeseq = ns({nsk(0, 0), nsk(0.027, 0.765), nsk(0.184, 2.24), nsk(1, 4.64)})
transseq = ns({nsk(0, 0.375), nsk(0.4, 1), nsk(1, 1)})
sizeseq = ns({nsk(0, 0), nsk(0.025, 0.383), nsk(0.192, 2.51), nsk(1, 2.02)})
transseq = ns({nsk(0, 0.8), nsk(0.3, 1), nsk(1, 1)})


local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end
), sou)
  game:GetService("Debris"):AddItem(sou, 6)
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function Block1(prt, delay, x3, y3, z3, msh)
spawn(function()
repeat swait()
prt.CFrame = prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
Mesh = msh
Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
prt.Transparency = prt.Transparency + delay
until prt.Transparency >= 1
prt:remove()
end)
end

function Block2(prt, delay, x3, y3, z3, msh)
spawn(function()
repeat swait()
prt.CFrame = prt.CFrame
Mesh = msh
Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
prt.Transparency = prt.Transparency + delay
until prt.Transparency >= 1
prt:remove()
end)
end

function Block3(prt, delay, x3, y3, z3, msh, CF)
spawn(function()
repeat swait()
prt.CFrame = prt.CFrame * cf(0, 1, 0)
prt.CFrame = prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
Mesh = msh
Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
prt.Transparency = prt.Transparency + delay
until prt.Transparency >= 1
prt:remove()
end)
end

function Cylinder(effectsg, delay, x3, y3, z3, effectsmsh)
spawn(function()
repeat swait()
Mesh = effectsmsh
Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
effectsg.Transparency = effectsg.Transparency + delay
until prt.Transparency >= 1
prt:remove()
end)
end

function Shatter(prt, delay, x3, y3, z3)
spawn(function()
repeat swait()
prt.Transparency = prt.Transparency + delay
prt.CFrame = prt.CFrame * cf(0, z3, 0)
prt.CFrame = prt.CFrame * euler(y3, 0, 0)
until prt.Transparency >= 1
prt:remove()
end)
end


hideanim = function()
  equipped = false
  coroutine.resume(coroutine.create(function()
    for i = #Claw / 2, 1, -1 do
      swait()
      Claw[i].Transparency = 1
      Claw[i + 10].Transparency = 1
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.8) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.6, 0.4) * euler(0.2, 0, 0.8) * euler(0, -1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.05), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.1, 0, 0.1), 0.3)
  end
  for _,c in pairs(model2:children()) do
    c.Transparency = 1
  end
  for _,c in pairs(model3:children()) do
    c.Transparency = 1
  end
  for _,c in pairs(model4:children()) do
    c.Transparency = 1
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
end

equipanim = function()
  equipped = true
  if drakes >= 1 then
    model2.Parent = Character
    for i = 1, #D1Welds do
      D1Welds[i].Parent = prt1
    end
  end
  do
    if drakes >= 2 then
      model3.Parent = Character
      for i = 1, #D2Welds do
        D2Welds[i].Parent = prt1
      end
    end
    do
      if drakes >= 3 then
        model4.Parent = Character
        for i = 1, #D3Welds do
          D3Welds[i].Parent = prt1
        end
      end
      do
        dwld1.C0 = clerp(dwld1.C0, cf(3.8, -2.2, 0.5) * euler(0.2, 0, -0.4) * euler(0, 0.3, 0), 1)
        d2wld1.C0 = clerp(d2wld1.C0, cf(-3.8, -2.2, 0.5) * euler(0.2, 0, 0.4) * euler(0, -0.3, 0), 1)
        d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4, 0.5) * euler(0.4, 0, 0) * euler(0, 0, 0), 1)
        for _,c in pairs(model2:children()) do
          c.Transparency = 1
        end
        for _,c in pairs(model3:children()) do
          c.Transparency = 1
        end
        for _,c in pairs(model4:children()) do
          c.Transparency = 1
        end
        for i = 0, 1, 0.1 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.8) * euler(0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.4), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.6, 0.4) * euler(0.2, 0, 0.8) * euler(0, -1, 0), 0.3)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.3)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.05), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.1, 0, 0.1), 0.3)
        end
        coroutine.resume(coroutine.create(function()
    local da = 2
    for i = 1, #Claw / 2 do
      da = da + 1
      Claw[i].Transparency = 0
      Claw[i + 10].Transparency = 0
      if (da) % 2 == 0 then
        swait()
      end
    end
  end
))
        for i = 0, 1, 0.15 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.8) * euler(0.2, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.4), 0.45)
          RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.4, 0, 0.7) * euler(0, -1, 0), 0.45)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.45)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.05), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.1, 0, 0.1), 0.45)
        end
        for _,c in pairs(model2:children()) do
          c.Transparency = c.MainTransparency.Value
        end
        for _,c in pairs(model3:children()) do
          c.Transparency = c.MainTransparency.Value
        end
        for _,c in pairs(model4:children()) do
          c.Transparency = c.MainTransparency.Value
        end
        dwld1.C0 = clerp(dwld1.C0, cf(3.8, -2.2, 0.5) * euler(0.2, 0, -0.4) * euler(0, 0.3, 0), 1)
        d2wld1.C0 = clerp(d2wld1.C0, cf(-3.8, -2.2, 0.5) * euler(0.2, 0, 0.4) * euler(0, -0.3, 0), 1)
        d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4, 0.5) * euler(0.4, 0, 0) * euler(0, 0, 0), 1)
      end
    end
  end
end

IceDrake = function()
  attack = true
  dattack = true
  Frost = 0
  coroutine.resume(coroutine.create(function()
    for i = #Claw / 2, 1, -1 do
      swait()
      Claw[i].Transparency = 1
      Claw[i + 10].Transparency = 1
    end
  end
))
  if drakes == 0 then
    model2.Parent = Character
summongb(dprt1, 1)
    --so("338594711", dprt1, 1, 1)
    for i = 1, #D1Welds do
      D1Welds[i].Parent = prt1
    end
  end
  do
    if drakes == 1 then
      model3.Parent = Character
summongb(d2prt1, 1)
      --so("338594711", d2prt1, 1, 1)
      for i = 1, #D2Welds do
        D2Welds[i].Parent = prt1
      end
    end
    do
      if drakes == 2 then
        model4.Parent = Character
summongb(d3prt1, 1)
        --so("338594711", d3prt1, 1, 1)
        for i = 1, #D3Welds do
          D3Welds[i].Parent = prt1
        end
      end
      do
        if drakes == 0 then
          for _,c in pairs(model2:children()) do
            c.Transparency = 1
          end
        else
          if drakes == 1 then
            for _,c in pairs(model3:children()) do
              c.Transparency = 1
            end
          else
            if drakes == 2 then
              for _,c in pairs(model4:children()) do
                c.Transparency = 1
              end
            end
          end
        end
        for i = 0, 1, 0.1 do
          swait()
          if drakes == 0 then
            dwld1.C0 = clerp(dwld1.C0, euler(0, 3.14, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -0.5, 2.2), 1)
          else
            if drakes == 1 then
              d2wld1.C0 = clerp(d2wld1.C0, euler(0, 3.14, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -0.5, 2.2), 1)
            else
              if drakes == 2 then
                d3wld1.C0 = clerp(d3wld1.C0, euler(0, 3.14, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -0.5, 2.2), 1)
              end
            end
          end
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.6) * euler(1.7, 0, -0.4) * euler(0, -1, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.6) * euler(1.7, 0, 0.4) * euler(0, 1, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.3) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.05), 0.3)
        end
        if drakes == 0 then
          for _,c in pairs(model2:children()) do
            c.Transparency = c.MainTransparency.Value
          end
        else
          if drakes == 1 then
            for _,c in pairs(model3:children()) do
              c.Transparency = c.MainTransparency.Value
            end
          else
            if drakes == 2 then
              for _,c in pairs(model4:children()) do
                c.Transparency = c.MainTransparency.Value
              end
            end
          end
        end
        drakes = drakes + 1
        for i = 0, 1, 0.1 do
          swait()
          if drakes == 1 then
            dwld1.C0 = clerp(dwld1.C0, euler(0, 3.14, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -2, 2.2), 0.3)
            dwld2.C0 = clerp(dwld2.C0, euler(0, 3.14, 0), 0.3)
          else
            if drakes == 2 then
              d2wld1.C0 = clerp(d2wld1.C0, euler(0, 3.14, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -2, 2.2), 0.3)
              d2wld2.C0 = clerp(d2wld2.C0, euler(0, 3.14, 0), 0.3)
            else
              if drakes == 3 then
                d3wld1.C0 = clerp(d3wld1.C0, euler(0, 3.14, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -2, 2.2), 0.3)
                d3wld2.C0 = clerp(d3wld2.C0, euler(0, 3.14, 0), 0.3)
              end
            end
          end
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.3) * euler(1.2, 0, 0.2) * euler(0, -1, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.3) * euler(1.2, 0, -0.2) * euler(0, 1, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.3) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.05), 0.3)
        end
        if drakes == 1 then
          dwld1.C0 = clerp(dwld1.C0, euler(0, 0, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -2, 2.2), 1)
          dwld2.C0 = clerp(dwld2.C0, euler(0, 0, 0), 1)
        else
          if drakes == 2 then
            d2wld1.C0 = clerp(d2wld1.C0, euler(0, 0, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -2, 2.2), 1)
            d2wld2.C0 = clerp(d2wld2.C0, euler(0, 0, 0), 1)
          else
            if drakes == 3 then
              d3wld1.C0 = clerp(d3wld1.C0, euler(0, 0, 0) * euler(0.2, 0, 0) * euler(0, 0, 0) * cf(0, -2, 2.2), 1)
              d3wld2.C0 = clerp(d3wld2.C0, euler(0, 0, 0), 1)
            end
          end
        end
        coroutine.resume(coroutine.create(function()
    for i = 1, #Claw / 2 do
      Claw[i].Transparency = 0
      Claw[i + 10].Transparency = 0
      swait()
    end
  end
))
        dattack = false
        attack = false
      end
    end
  end
end

IcyMonarch = function()
  attack = true
  dattack = true
  if Mode == "Drakes" then
    coroutine.resume(coroutine.create(function()
    for i = #Claw / 2, 1, -1 do
      swait()
      Claw[i].Transparency = 1
      Claw[i + 10].Transparency = 1
    end
  end
))
rave(Head, 1)
    --so("338594711", Head, 1, 1.2)
    for i = 0, 1, 0.1 do
      swait()
      dwld1.C0 = clerp(dwld1.C0, cf(0, -0.3, 0) * euler(0.2, 0, 0) * cf(0, -1, 0) * euler(0.4, 0, 0), 0.3)
      d2wld1.C0 = clerp(d2wld1.C0, cf(0, -0.3, 0) * euler(0.2, 0, 0) * cf(0, -1, 0) * euler(0.4, 0, 0), 0.3)
      d3wld1.C0 = clerp(d3wld1.C0, cf(0, -0.3, 0) * euler(0.2, 0, 0) * cf(0, -1, 0) * euler(0.4, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.4, -0.3) * euler(1.8, 0, -1) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.6, -0.1) * euler(2.8, 0, 0.6) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.5) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.3), 0.3)
    end
    Mode = "Monarch"
    for i = 1, #Claw do
      Claw[i].Material = "Neon"
    end
    model2.Parent = nil
    model3.Parent = nil
    model4.Parent = nil
    Head.Transparency = 1
    Head.face.Transparency = 1
    for _,v in pairs(Character:children()) do
      if v.className == "Hat" then
        v.Handle.Transparency = 1
      end
    end
    helm.Parent = Character
    for i = 1, #HWelds do
      HWelds[i].Parent = prt1
    end
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.8) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.8) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.5) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.3), 0.3)
    end
    coroutine.resume(coroutine.create(function()
    for i = 1, #Claw / 2 do
      Claw[i].Transparency = 0
      Claw[i + 10].Transparency = 0
      swait()
    end
  end
))
  else
    if Mode == "Monarch" then
rave(Head, 1)
      --so("338594711", Head, 1, 0.8)
      for i = 0, 1, 0.1 do
        swait()
        dwld1.C0 = clerp(dwld1.C0, cf(0, -0.3, 0) * euler(0.2, 0, 0) * cf(0, -1, 0) * euler(0.4, 0, 0), 0.3)
        d2wld1.C0 = clerp(d2wld1.C0, cf(0, -0.3, 0) * euler(0.2, 0, 0) * cf(0, -1, 0) * euler(0.4, 0, 0), 0.3)
        d3wld1.C0 = clerp(d3wld1.C0, cf(0, -0.3, 0) * euler(0.2, 0, 0) * cf(0, -1, 0) * euler(0.4, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.6, 0, 0.7) * euler(0, -1, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.3, 0.6, -0.1) * euler(2.8, 0, 0.6) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.5) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.3), 0.3)
      end
      Mode = "Drakes"
      for i = 1, #Claw do
        Claw[i].Material = "SmoothPlastic"
      end
      if drakes >= 1 then
        model2.Parent = Character
        for i = 1, #D1Welds do
          D1Welds[i].Parent = prt1
        end
      end
      do
        if drakes >= 2 then
          model3.Parent = Character
          for i = 1, #D2Welds do
            D2Welds[i].Parent = prt1
          end
        end
        do
          if drakes >= 3 then
            model4.Parent = Character
            for i = 1, #D3Welds do
              D3Welds[i].Parent = prt1
            end
          end
          do
            helm.Parent = nil
            Head.Transparency = 0
            Head.face.Transparency = 0
            for _,v in pairs(Character:children()) do
              if v.className == "Hat" then
                v.Handle.Transparency = 0
              end
            end
            for i = 0, 1, 0.1 do
              swait()
              dwld1.C0 = clerp(dwld1.C0, cf(3.8, -2.2, 0.5) * euler(0.2, 0, -0.4) * euler(0, 0.3, 0), 0.3)
              d2wld1.C0 = clerp(d2wld1.C0, cf(-3.8, -2.2, 0.5) * euler(0.2, 0, 0.4) * euler(0, -0.3, 0), 0.3)
              d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4, 0.5) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.6, 0, 0.7) * euler(0, -1, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.5) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.3), 0.3)
            end
            do
            end
          end
        end
      end
    end
  end
              dattack = false
              attack = false
end

attackone = function()
  attack = true
  if Mode == "Drakes" then
    for i = 0, 1, 0.14 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.6) * euler(0.1, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0.6, 0, 2) * euler(0, -1, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.2), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(-0.05, 0, 0.1), 0.3)
    end
knife(RightArm, 1)
    --so("338586299", RightArm, 1, 1)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(0.2, 0.2, 0.2)
    hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
    for i = 0, 1, 0.12 do
      swait()
      hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
      MagniDamage(hitbox, 2, 6, 10, math.random(8, 10), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6) * euler(0.1, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.45)
      RW.C0 = clerp(RW.C0, cf(1, 0.6, -0.4) * euler(0.6, 0, 2) * euler(0, -1, 0) * euler(0, 0, -2.8), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0.3) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(-0.1, 0, -0.4), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(-0.2, 0, 0.1), 0.45)
    end
    hitbox.Parent = nil
  else
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.3, 0, 0) * euler(0, 0, -0.4), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0.6, 0, 2) * euler(0, -1, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.5), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.5, -0.4) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(0, 0, -0.3), 0.4)
    end
    so("338586299", RightArm, 1, 1.2)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(0.2, 0.2, 0.2)
    hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
    for i = 0, 1, 0.16 do
      swait()
      hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
      MagniDamage(hitbox, 2, 7, 11, math.random(4, 8), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, -0.4) * euler(0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.3, 0, 0) * euler(0, 0, 0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(0.6, 0, 2) * euler(0, -1.3, 0) * euler(0, 0, -2.8), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.8, -0.3) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(-0.1, 0, -0.2), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, 0.4), 0.5)
    end
    hitbox.Parent = nil
  end
  attack = false
end

attacktwo = function()
  attack = true
  if Mode == "Drakes" then
    for i = 0, 1, 0.14 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.8) * euler(0.1, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0, 0, 1.6) * euler(0, -1.4, 0) * euler(0, 0, -1.5), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.8), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(-0.05, 0, 0.1), 0.3)
    end
knife(RightArm, 1)
    --so("338586318", RightArm, 1, 1)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(0.2, 0.2, 0.2)
    hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
    for i = 0, 1, 0.12 do
      swait()
      hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
      MagniDamage(hitbox, 2, 6, 10, math.random(8, 10), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -1) * euler(0.1, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 1) * euler(0.1, 0, 0), 0.45)
      RW.C0 = clerp(RW.C0, cf(1, 0.6, -0.4) * euler(0, 0, 1.6) * euler(0, -1.3, 0) * euler(0, 0, -0.7), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0.3) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(0, 0, -0.2), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(-0.2, 0, 0.1), 0.45)
    end
    hitbox.Parent = nil
  else
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.3, 0, 0) * euler(0, 0, 0.6), 0.4)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.6, -0.4) * euler(0, 0, 1.2) * euler(0, 1, 0) * euler(0, 0, 2.5), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.7, -0.4) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(-0.1, 0, 0.3), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, -0.1), 0.4)
    end
    so("338586331", RightArm, 1, 1.2)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(0.2, 0.2, 0.2)
    hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
    for i = 0, 1, 0.16 do
      swait()
      hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
      MagniDamage(hitbox, 2, 7, 11, math.random(4, 8), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.4, 0, 0) * euler(0, 0, -0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.1) * euler(0, 0, 1.2) * euler(0, 1.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -1), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.5) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.5), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1.2, -0.2, -0.8) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.2, 0, -0.2), 0.5)
    end
    hitbox.Parent = nil
  end
  attack = false
end

attackthree = function()
  attack = true
  if Mode == "Drakes" then
    for i = 0, 1, 0.14 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.6, -0.4) * euler(0, 0, 1.2) * euler(0, 1.5, 0) * euler(0, 0, 2.5), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0.3) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(-0.1, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(-0.2, 0, 0.1), 0.3)
    end
knife(RightArm, 1)
    --so("338586331", RightArm, 1, 1)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(0.2, 0.2, 0.2)
    hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
    for i = 0, 1, 0.12 do
      swait()
      hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
      MagniDamage(hitbox, 2, 6, 10, math.random(10, 12), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.6) * euler(0.1, 0, 0), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.1) * euler(0, 0, 1.2) * euler(0, 1.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.8), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(-0.05, 0, 0.1), 0.45)
    end
    hitbox.Parent = nil
  else
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.3, 0, 0) * euler(0, 0, -0.4), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0.6, 0, 0.5) * euler(0, -0.6, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.5), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.5, -0.4) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(0, 0, -0.3), 0.4)
    end
    so("338586318", RightArm, 1, 1.2)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(0.2, 0.2, 0.2)
    hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
    for i = 0, 1, 0.16 do
      swait()
      hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
      MagniDamage(hitbox, 2, 7, 11, math.random(4, 8), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, -0.4) * euler(-0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.2, 0, 0) * euler(0, 0, 0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.8, -0.6) * euler(0.6, 0, 0.5) * euler(0, -1.4, 0) * euler(0, 0, -2.4), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.8, -0.3) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(-0.1, 0, -0.2), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, 0.4), 0.5)
    end
    hitbox.Parent = nil
  end
  attack = false
end

attackfour = function()
  attack = true
  local ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
  if Mode == "Drakes" then
    for i = 0, 1, 0.08 do
      swait()
      MagicBlock(BrickColor.new(NewCol2), LeftArm.CFrame * cf(0, -1, 0), 6, 6, 6, 1, 1, 1, 0.1, 1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.8) * euler(0.1, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0, 0, 1) * euler(0, -1.4, 0) * euler(0, 0, -1), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.7, 0, -0.8), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(-0.05, 0, 0.1), 0.3)
    end
    ref.Anchored = true
    ref.CFrame = LeftArm.CFrame * cf(0, -1, 0)
    game:GetService("Debris"):AddItem(ref, 3)
rave(ref, 1)
    --so("333475981", ref, 1, 2)
    --so("333476017", ref, 1, 1.4)
    MagniDamage(ref, 5, 6, 8, math.random(10, 15), "Knockdown2", ref, 0, 2, (math.random(6, 8)), nil, nil, true)
    MagicCircle(BrickColor.new(NewCol2), cf(ref.Position), 40, 40, 40, 3, 3, 3, 0.08)
    for i = 1, 10 do
      MagicBlock(BrickColor.new(NewCol2), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 12, 12, 12, -1, -1, -1, 0.08, 3)
    end
    Torso.Velocity = RootPart.CFrame.lookVector * -80
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 1) * euler(0, -1.5, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -1), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.15, 0, -0.4), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.15, 0, 0.1), 0.4)
    end
  else
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.3, 0, 0) * euler(0, 0, -0.4), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0.6, 0, 1.5) * euler(0, -1, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.5), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.5, -0.4) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(0, 0, -0.3), 0.4)

    end
    so("338586331", RightArm, 1, 1.4)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(0.2, 0.2, 0.2)
    hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
    spin = 0
    ra = 0
    for i = 0, 1, 0.1 do
      swait()
      if i < 0.6 then
        spin = spin + 1
        ra = -0.4
      else
        spin = 0
        ra = 0
      end
      hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
      MagniDamage(hitbox, 4, 7, 11, math.random(4, 8), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, -0.4) * euler(0.2, 0, 0), 0.55)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0, 0, spin) * euler(0.3, 0, 0) * euler(0, 0, 0.4), 0.55)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5 + ra) * euler(0.6, 0, 2) * euler(0, -1.3, 0) * euler(0, 0, -2.8), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8), 0.55)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.8, -0.3) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(-0.1, 0, -0.2), 0.55)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, 0.4), 0.55)
    end
    hitbox.Parent = nil
  end
  attack = false
  if Mode == "Drakes" then
    dattack = true
    local target1, distance1 = findNearestTorso(ref.Position, 30)
    for i = 0, 1, 0.1 do
      swait()
      if target1 ~= nil then
        if drakes > 0 then
          local mpos = dprt2.CFrame * euler(0, 0, 0)
          local cff = CFrame.new(mpos.p, target1.Position) * CFrame.Angles(math.pi / 2, 0, 0)
          local x, y, z = dprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
          dwld1.C0 = clerp(dwld1.C0, cf(4.5, -2, 1.5), 0.3)
          dwld2.C0 = clerp(dwld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
        end
        do
          if drakes > 1 then
            local mpos = d2prt2.CFrame * euler(0, 0, 0)
            local cff = CFrame.new(mpos.p, target1.Position) * CFrame.Angles(math.pi / 2, 0, 0)
            local x, y, z = dprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
            d2wld1.C0 = clerp(d2wld1.C0, cf(-4.5, -2, 1.5), 0.3)
            d2wld2.C0 = clerp(d2wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
          end
          do
            if drakes > 2 then
              local mpos = d3prt2.CFrame * euler(0, 0, 0)
              local cff = CFrame.new(mpos.p, target1.Position) * CFrame.Angles(math.pi / 2, 0, 0)
              local x, y, z = dprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
              d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4, 1.5), 0.3)
              d3wld2.C0 = clerp(d3wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
            end
            do
              -- DECOMPILER ERROR at PC1114: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC1114: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC1114: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1114: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
    if target1 ~= nil then
      do
        if drakes > 0 then
          local icepart1 = part(3, effects, 0.5, 0, BrickColor.new(NewCol2), "Ice", vt())
          icepart1.Anchored = true
          icepart1.Material = Enum.Material.Neon
          i1msh = mesh("SpecialMesh", icepart1, "FileMesh", "1778999", vt(0, 0, 0), vt(0.7, 1, 0.7))
          icepart1.CFrame = dprt1.CFrame * euler(-1.57, 0, 0)
          game:GetService("Debris"):AddItem(icepart1, 20)
          MouseLook = cf(dprt1.Position, target1.Position)
          so("338594524", icepart1, 1, 1)
          table.insert(Effects, {MouseLook, "ShootIce", 10, icepart1.Position, 4, 5, 0, icepart1, 7, 1})
        end
        do
          if drakes > 1 then
            local icepart1 = part(3, effects, 0.5, 0, BrickColor.new(NewCol2), "Ice", vt())
            icepart1.Anchored = true
        	icepart1.Material = Enum.Material.Neon
            i1msh = mesh("SpecialMesh", icepart1, "FileMesh", "1778999", vt(0, 0, 0), vt(0.7, 1, 0.7))
            icepart1.CFrame = d2prt1.CFrame * euler(-1.57, 0, 0)
            game:GetService("Debris"):AddItem(icepart1, 20)
            MouseLook = cf(d2prt1.Position, target1.Position)
            so("338594524", icepart1, 1, 1)
            table.insert(Effects, {MouseLook, "ShootIce", 10, icepart1.Position, 4, 5, 0, icepart1, 7, 1})
          end
          do
            if drakes > 2 then
              local icepart1 = part(3, effects, 0.5, 0, BrickColor.new(NewCol2), "Ice", vt())
              icepart1.Anchored = true
         		icepart1.Material = Enum.Material.Neon
              i1msh = mesh("SpecialMesh", icepart1, "FileMesh", "1778999", vt(0, 0, 0), vt(0.7, 1, 0.7))
              icepart1.CFrame = d3prt1.CFrame * euler(-1.57, 0, 0)
              game:GetService("Debris"):AddItem(icepart1, 20)
              MouseLook = cf(d3prt1.Position, target1.Position)
              so("338594524", icepart1, 1, 1)
              table.insert(Effects, {MouseLook, "ShootIce", 10, icepart1.Position, 4, 5, 0, icepart1, 7, 1})
            end
            dwld2.C0 = clerp(dwld2.C0, cf(0, 0, 0), 1)
            d2wld2.C0 = clerp(d2wld2.C0, cf(0, 0, 0), 1)
            d3wld2.C0 = clerp(d3wld2.C0, cf(0, 0, 0), 1)
            dattack = false
          end
        end
      end
    end
  end
end

do1 = function()
  if attack == true then
    return end
    attack = true
                dattack = true
    local tPos = Mouse.Hit.p
    if Mode == "Drakes" and drakes < 1 then
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.8) * euler(0.1, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0, 0, 1) * euler(0, -1.4, 0) * euler(0, 0, -1), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.7, 0, -0.8), 0.4)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(-0.05, 0, 0.1), 0.4)
      end
      tPos = Mouse.Hit.p
          ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          ref.CFrame = LeftArm.CFrame * cf(0, -1, 0)
          game:GetService("Debris"):AddItem(ref, 1)
          MagicBlock(BrickColor.new(NewCol3), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 7, 7, 7, 1, 1, 1, 0.08, 2)
          local icepart1 = part(3, effects, 0.5, 0, BrickColor.new(NewCol2), "Ice", vt(2, 4, 2))
          icepart1.Anchored = true
          icepart1.Material = Enum.Material.Neon
          i1msh = mesh("SpecialMesh", icepart1, "FileMesh", "1778999", vt(0, 0, 0), vt(0.7, 1, 0.7))
          icepart1.CFrame = cf(ref.Position)
          game:GetService("Debris"):AddItem(icepart1, 20)
            MouseLook = cf(icepart1.Position, Mouse.Hit.p)
            --so("338594467", icepart1, 1, 1)
gastblast(icepart1, 1)
            for i = 0, 1, 0.1 do
              swait()
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.4)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.8) * euler(0.1, 0, 0), 0.4)
              RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0, 0, 1) * euler(0, -1.4, 0) * euler(0, 0, -1), 0.4)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.7, 0, -0.8) * cf(0, 0.3, 0) * euler(0.5, 0, 0), 0.4)
              RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.4)
              LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(-0.05, 0, 0.1), 0.4)
            end
            end
            if Mode == "Monarch" then
              for i = 0, 1, 0.14 do
                swait()
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.3)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.6) * euler(0.1, 0, 0), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0.6, 0, 1.5) * euler(0, -1, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.2), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(-0.05, 0, 0.1), 0.3)
              end
knife(RightArm, .8)
              --so("338586299", RightArm, 1, 1.1)
              hitbox.Parent = modelzorz
              hitbox.Anchored = true
              hitbox.Size = vt(0.2, 0.2, 0.2)
              hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
              local oldCF = RightArm.CFrame * cf(0, -10, 0.5)
              local oldCF2 = RightArm.CFrame * cf(0, -10, -0.5)
              local ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
              ref.Anchored = true
              ref.CFrame = RightArm.CFrame * cf(0, -10, 0)
              game:GetService("Debris"):AddItem(ref, 1)
knife(RightArm, 1.4)
              --so("28144425", ref, 1, 1.2)
              rara = 0.35
              for i = 0, 1, 0.1 do
                swait()
                Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6) * euler(0.1, 0, 0), rara)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0.6) * euler(0.1, 0, 0), rara)
                RW.C0 = clerp(RW.C0, cf(1, 0.6, -0.4) * euler(0.6, 0, 1.5) * euler(0, -1, 0) * euler(0, 0, -2.8), rara)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), rara)
                RH.C0 = clerp(RH.C0, cf(1, -0.8, 0.3) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(-0.1, 0, -0.4), rara)
                LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(-0.2, 0, 0.1), rara)
                ref.CFrame = RightArm.CFrame * cf(0, -10, 0)
                rara = rara - 0.02
                if i < 0.8 then
                  hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
                  freeze = true
                  MagniDamage(ref, 5, 4, 6, 0, "Knockdown2", RootPart, 0.5, 1, (math.random(4, 6)), nil, true)
                  MagniDamage(hitbox, 2, 5, 7, math.random(8, 10), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
                  freeze = false
                  effect2("Pastel light blue", 0, RightArm.CFrame * cf(0, -10, 0.5), oldCF, nil, 1, 2)
                  effect2("Pastel light blue", 0, RightArm.CFrame * cf(0, -10, -0.5), oldCF2, nil, 1, 2)
                  oldCF = RightArm.CFrame * cf(0, -10, 0.5)
                  oldCF2 = RightArm.CFrame * cf(0, -10, -0.5)
                end
              end
              ref.Parent = nil
              hitbox.Parent = nil
            end
              if Mode == "Drakes"and drakes > 0 then
                for i = 0, 1, 0.1 do
                  swait()
                  if drakes > 0 then
                    local cff = CFrame.new(dprt1.CFrame.p, tPos) * CFrame.Angles(math.pi / 2, 0, 0)
                    local x, y, z = dprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                    dwld1.C0 = clerp(dwld1.C0, cf(0, -5, 1.5) * euler(0, 0, -1.2), 0.4)
                    dwld2.C0 = clerp(dwld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
                  end
                    if drakes > 1 then
                      local cff = CFrame.new(d2prt1.CFrame.p, tPos) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = d2prt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      d2wld1.C0 = clerp(d2wld1.C0, cf(0, -5, 1.5) * euler(0, 0, 1.2), 0.4)
                      d2wld2.C0 = clerp(d2wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
                    end
                      if drakes > 2 then
                        local cff = CFrame.new(d3prt1.CFrame.p, tPos) * CFrame.Angles(math.pi / 2, 0, 0)
                        local x, y, z = d3prt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                        d3wld1.C0 = clerp(d3wld1.C0, cf(0, -5, 1.5), 0.4)
                        d3wld2.C0 = clerp(d3wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
                      end
                end
                local drakeprt = dprt1
                for i = 1, drakes do
                  if i == 1 then
                    drakeprt = dprt1
                  else
                    if i == 2 then
                      drakeprt = d2prt1
                    else
                      if i == 3 then
                        drakeprt = d3prt1
                      end
                    end
                  end
                  dprt1.Transparency = 1
                  d2prt1.Transparency = 1
                  d3prt1.Transparency = 1
                  local refd = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                  refd.Anchored = true
                  refd.CFrame = drakeprt.CFrame
                  game:GetService("Debris"):AddItem(refd, 1)
                  MagicBlock(BrickColor.new(NewCol3), cf(refd.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 7, 7, 7, 1, 1, 1, 0.08, 2)
                  local icepart1 = part(3, effects, 0.5, 0, BrickColor.new(NewCol2), "Ice", vt(2, 4, 2))
                  icepart1.Anchored = true
          icepart1.Material = Enum.Material.Neon
                  i1msh = mesh("SpecialMesh", icepart1, "FileMesh", "1778999", vt(0, 0, 0), vt(0.7, 1, 0.7))
                  icepart1.CFrame = cf(refd.Position)
                  game:GetService("Debris"):AddItem(icepart1, 20)
gastblast(icepart1, 1)
                  --so("338594524", icepart1, 1, 1)
                  MouseLook = cf(icepart1.Position, tPos + vt(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100))
                  for d = 0, 1, 0.2 do
                    swait()
                    if i == 1 then
                      local cff = CFrame.new(dprt1.CFrame.p, tPos) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = dprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      dwld2.C0 = clerp(dwld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0) * cf(0, 0, 2), 0.4)
                    else
                        if i == 2 then
                          local cff = CFrame.new(d2prt1.CFrame.p, tPos) * CFrame.Angles(math.pi / 2, 0, 0)
                          local x, y, z = d2prt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                          d2wld2.C0 = clerp(d2wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0) * cf(0, 0, 2), 0.4)
                        else
                            if i == 3 then
                              local cff = CFrame.new(d3prt1.CFrame.p, tPos) * CFrame.Angles(math.pi / 2, 0, 0)
                              local x, y, z = d3prt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                              d3wld2.C0 = clerp(d3wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0) * cf(0, 0, 2), 0.4)
                            end
                      end
                    end
                  end
                end
                for i = 0, 1, 0.2 do
                  if dattack == false then
                    swait()
                  end
                  dwld2.C0 = clerp(dwld2.C0, cf(0, 0, 0), 0.4)
                  d2wld2.C0 = clerp(d2wld2.C0, cf(0, 0, 0), 0.4)
                  d3wld2.C0 = clerp(d3wld2.C0, cf(0, 0, 0), 0.4)
                end
                dwld2.C0 = clerp(dwld2.C0, cf(0, 0, 0), 1)
                d2wld2.C0 = clerp(d2wld2.C0, cf(0, 0, 0), 1)
                d3wld2.C0 = clerp(d3wld2.C0, cf(0, 0, 0), 1)
              end
                dprt1.Transparency = 0
                d2prt1.Transparency = 0
                d3prt1.Transparency = 0
                dattack = false
              attack = false
end

do2 = function()
  if attack == true then
    return 
  end
    attack = true
    dattack = true
  if drakes > 0 or Mode == "Monarch" then
    if Mode == "Drakes" then
      for i = 0, 1, 0.1 do
        swait()
        if drakes > 2 then
          d3wld1.C0 = clerp(d3wld1.C0, euler(0.2, 0, 0.5) * cf(0, -5, 1.5) * euler(-0.5, 0, -1.2), 0.45)
          dwld1.C0 = clerp(dwld1.C0, euler(0, 0, 1.2) * cf(0, -4, -2.5) * euler(0, 0, -1.2), 0.45)
          d2wld1.C0 = clerp(d2wld1.C0, euler(0, 0, -1.2) * cf(0, -4, -2.5) * euler(0, 0, 1.2), 0.45)
        else
          if drakes > 1 then
            d2wld1.C0 = clerp(d2wld1.C0, euler(0.2, 0, 0.5) * cf(0, -5, 1.5) * euler(-0.5, 0, -1.2), 0.45)
            dwld1.C0 = clerp(dwld1.C0, euler(0, 0, -1.2) * cf(0, -4, -2.5) * euler(0, 0, 1.2), 0.45)
            d3wld1.C0 = clerp(d3wld1.C0, euler(0, 0, 1.2) * cf(0, -4, -2.5) * euler(0, 0, -1.2), 0.45)
          else
            if drakes > 0 then
              dwld1.C0 = clerp(dwld1.C0, euler(0.2, 0, 0.5) * cf(0, -5, 1.5) * euler(-0.5, 0, -1.2), 0.45)
            end
          end
        end
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.6, 0, 0.7) * euler(0, -1, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -2) * euler(0, 1.57, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0.3) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(-0.1, 0, -0.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(-0.2, 0, 0.1), 0.3)
      end
      RecentEnemy.Value = nil
      drakesplode = false
      drakepart = dprt1
      thdrake = model2
      if drakes > 2 then
        drakepart = d3prt1
        thdrake = model4
      else
        if drakes > 1 then
          drakepart = d2prt1
          thdrake = model3
        else
          if drakes > 0 then
            drakepart = dprt1
            thdrake = model2
          end
        end
      end
      local oldCF = drakepart.CFrame
      so("338594594", drakepart, 1, 0.9)
      for i = 0, 1, 0.15 do
        swait()
        if RecentEnemy.Value == nil then
          if drakes > 2 then
            drakepart = d3prt1
            thdrake = model4
            d3wld1.C0 = clerp(d3wld1.C0, euler(1, 0, 0) * cf(0, -1, 7) * euler(0.5, 0, -1.2), 0.35)
            dwld1.C0 = clerp(dwld1.C0, euler(0, 0, 1.2) * cf(0, -4, -2.5) * euler(0, 0, -1.2), 0.45)
            d2wld1.C0 = clerp(d2wld1.C0, euler(0, 0, -1.2) * cf(0, -4, -2.5) * euler(0, 0, 1.2), 0.45)
          elseif drakes > 1 then
              drakepart = d2prt1
              thdrake = model3
              d2wld1.C0 = clerp(d2wld1.C0, euler(1, 0, 0) * cf(0, -1, 7) * euler(0.5, 0, -1.2), 0.35)
              dwld1.C0 = clerp(dwld1.C0, euler(0, 0, -1.2) * cf(0, -4, -2.5) * euler(0, 0, 1.2), 0.45)
              d3wld1.C0 = clerp(d3wld1.C0, euler(0, 0, 1.2) * cf(0, -4, -2.5) * euler(0, 0, -1.2), 0.45)
            elseif drakes > 0 then
                drakepart = dprt1
                thdrake = model2
                dwld1.C0 = clerp(dwld1.C0, euler(1, 0, 0) * cf(0, -1, 7) * euler(0.5, 0, -1.2), 0.35)
                d2wld1.C0 = clerp(d2wld1.C0, cf(-3.8, -2.2, 0.5) * euler(0.2, 0, 0.4) * euler(0, -0.3, 0), 0.35)
                d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4, 0.5) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.35)
          end
          effect2("Pastel light blue", 0, drakepart.CFrame, oldCF, nil, 3, 1)
          oldCF = drakepart.CFrame
          MagniDamage(drakepart, 3, 5, 6, 0, "Knockdown2", drakepart, 0, 1, (math.random(2, 4)), nil, true)
        else
          if drakesplode == false then
            drakesplode = true
            drakes = drakes - 1
            thdrake.Parent = nil
            local ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
            ref.Anchored = true
            ref.CFrame = cf(drakepart.Position)
            game:GetService("Debris"):AddItem(ref, 1)
            MagicCircle(BrickColor.new(NewCol2), cf(ref.Position), 30, 30, 30, 2, 2, 2, 0.05)
            MagicBlock(BrickColor.new(NewCol2), cf(ref.Position), 5, 5, 5, 5, 5, 5, 0.1, 1)
            breakfreeze = true
            so("338594648", ref, 1, 1)
            MagniDamage(drakepart, 6, 6, 8, 0, "Knockdown2", drakepart, 0, 1, (math.random(3, 5)), nil, nil, true, "Damage", 0.2, 200)
            breakfreeze = false
            for i = 1, 10 do
              BreakEffect(BrickColor.new(NewCol2), ref.CFrame * cf(math.random(-400, 400) / 100, math.random(-400, 400) / 100, math.random(-400, 400) / 100), math.random(40, 80) / 100, math.random(2, 6), math.random(40, 80) / 100)
            end
          end
        end
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.6) * euler(0.1, 0, 0), 0.45)
          RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(-0.2, 0, 0.7) * euler(0, -1, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -2) * euler(0, 1, 0) * euler(0, 0, 2), 0.45)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(-0.05, 0, 0.1), 0.45)
      end
      for i = 0, 1, 0.13 do
        swait()
        if RecentEnemy.Value == nil then
          if drakes > 2 then
            d3wld1.C0 = clerp(d3wld1.C0, euler(1, 0, 0) * cf(0, -1, 7) * euler(0.5, 0, -1.2, 0.2), 0.2)
          elseif drakes > 1 then
              d2wld1.C0 = clerp(d2wld1.C0, euler(1, 0, 0) * cf(0, -1, 7) * euler(0.5, 0, -1.2, 0.2), 0.2)
            elseif drakes > 0 then
                dwld1.C0 = clerp(dwld1.C0, euler(1, 0, 0) * cf(0, -1, 7) * euler(0.5, 0, -1.2), 0.2)
                d2wld1.C0 = clerp(d2wld1.C0, cf(-3.8, -2.2, 0.5) * euler(0.2, 0, 0.4) * euler(0, -0.3, 0), 0.3)
                d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4, 0.5) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.3)
          end
        end
      end
    else
        if Mode == "Monarch" then
          for i = 0, 1, 0.15 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.3, 0, 0) * euler(0, 0, -0.4), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(0.6, 0, 0.2) * euler(0, -1.2, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), 0.4)
            RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.5), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1.1, -0.5, -0.4) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(0, 0, -0.3), 0.4)
          end
          so("338586318", RightArm, 1, 1.05)
          so("92597369", RightArm, 1, 1)
          hitbox.Parent = modelzorz
          hitbox.Anchored = true
          hitbox.Size = vt(0.2, 0.2, 0.2)
          hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
          local oldCF = RightArm.CFrame * cf(0, -2, 0.5)
          local oldCF2 = RightArm.CFrame * cf(0, -2, -0.5)
          move = 150
          for i = 0, 1, 0.1 do
            swait()
            move = move - 10
            if Rooted.Value == false then
              Torso.Velocity = RootPart.CFrame.lookVector * move
            end
            Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, -0.4) * euler(-0.2, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.2, 0, 0) * euler(0, 0, 0.4), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.2, 0.8, -0.6) * euler(0.6, 0, 0.2) * euler(0, -2, 0) * euler(0, 0, -2.4), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8), 0.3)
            RH.C0 = clerp(RH.C0, cf(1.05, -0.8, -0.3) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(-0.1, 0, -0.2), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, 0.4), 0.3)
            if i < 0.8 then
              hitbox.CFrame = RightArm.CFrame * cf(0, -2, 0)
              breakfreeze = true
              MagniDamage(hitbox, 4, 6, 7, math.random(4, 8), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
              breakfreeze = false
              effect2("Pastel light blue", 0, RightArm.CFrame * cf(0.2, -3, 0.5), oldCF, nil, 1, 2)
              effect2("Pastel light blue", 0, RightArm.CFrame * cf(0.2, -3, -0.5), oldCF2, nil, 1, 2)
              oldCF = RightArm.CFrame * cf(0.2, -2.8, 0.5)
              oldCF2 = RightArm.CFrame * cf(0.2, -2.8, -0.5)
            end
          end
          hitbox.Parent = nil
        end
      end
  end
          dattack = false
          attack = false
end

do3 = function()
  if dryice == true then
    dryice = false
      attack = false
      dattack = false
    return 
  end
  if attack == true then
    return 
  end
    attack = true
      dattack = true
      dryice = true
    if Mode == "Drakes" then
      coroutine.resume(coroutine.create(function()
    for i = #Claw / 2, 1, -1 do
      swait()
      Claw[i].Transparency = 1
      Claw[i + 10].Transparency = 1
    end
  end
))
      sref.Parent = effects
      sref.Size = vt(20, 20, 20)
      local refaa = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
      refaa.Anchored = true
      refaa.CFrame = cf(sref.Position)
      game:GetService("Debris"):AddItem(refaa, 1)
      gsou:play()
      so("338601305", sref, 1, 0.8)
      raa = 0
      local drake = dprt1
      local targetd1, distanced1 = findNearestTorso(dprt1.Position, 60)
      local targetd2, distanced2 = findNearestTorso(d2prt1.Position, 60)
      local targetd3, distanced3 = findNearestTorso(d3prt1.Position, 60)
      while dryice do
          swait()
        if dryice == true then
          dattack = true
          raa = raa + 1
          refaa.CFrame = sref.CFrame * cf(math.random(-2000, 2000) / 100, 10, math.random(-2000, 2000) / 100)

          if raa % 6 ~= 0 or raa % 3 == 0 then
            hitfloor = rayCast(refaa.Position, CFrame.new(refaa.Position, refaa.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
            MagicBlock(BrickColor.new(NewCol3), cf(posfloor), 1, 1, 1, 1, 1, 1, 0.2, 1)
          end
          if raa % 21 == 0 then
            if raa % 63 == 0 then
              freeze = true
            end
            RecentEnemy.Value = nil
            MagniDamage(sref, 20, 3, 4, 0, "Normal", sref, 0, 1, (math.random(1, 3)), nil, nil, true)
            if RecentEnemy.Value ~= nil then
              Frost = Frost + math.random(2, 4)
            end
            freeze = false
          end
          if raa % 60 == 0 and drakes > 0 then
            thetarg = nil

if drakes > 0 and drakes < 2 then
if targetd1 ~= nil then
thetarg = targetd1.Position
drake = dprt1
end
elseif drakes > 1 and drakes < 3 then
xx = math.random(1,2)
if xx == 1 then
if targetd1 ~= nil then
thetarg = targetd1.Position
drake = dprt1
end
else
if targetd2 ~= nil then
thetarg = targetd2.Position
drake = d2prt1
end
end
elseif drakes > 2 then
xx = math.random(1,3)
if xx == 1 then
if targetd1 ~= nil then
thetarg = targetd1.Position
drake = dprt1
end
elseif xx == 2 then
if targetd2 ~= nil then
thetarg = targetd2.Position
drake = d2prt1
end
else
if targetd3 ~= nil then
thetarg = targetd3.Position
drake = d3prt1
end
end
end

            if thetarg ~= nil then
              local refd = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
              refd.Anchored = true
              refd.CFrame = drake.CFrame
              game:GetService("Debris"):AddItem(refd, 1)
              MagicBlock(BrickColor.new(NewCol3), cf(refd.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 7, 7, 7, 1, 1, 1, 0.08, 2)
            end
          end
            sref.CFrame = cf(RootPart.Position)
            dwld1.C0 = clerp(dwld1.C0, cf(0, -4, 5) * euler(0, 0, 0) * euler(0, mr(720) / 3, 0), 0.3)
            d2wld1.C0 = clerp(d2wld1.C0, cf(0, -4, 5) * euler(0, 0, 0) * euler(0, mr(720) / 3 * 2, 0), 0.3)
            d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4, 5) * euler(0, 0, 0) * euler(0, mr(720) / 3 * 3, 0), 0.3)
            targetd1 = findNearestTorso(dprt1.Position, 60)
            targetd2 = findNearestTorso(d2prt1.Position, 60)
            targetd3 = findNearestTorso(d3prt1.Position, 60)
				
			if targetd1 ~= nil then
              local cff = CFrame.new(dprt1.CFrame.p, targetd1.Position) * CFrame.Angles(math.pi / 2, 0, 0)
              local x, y, z = dprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
              dwld2.C0 = clerp(dwld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
			end
			if targetd2 ~= nil then
              local cff = CFrame.new(d2prt1.CFrame.p, targetd2.Position) * CFrame.Angles(math.pi / 2, 0, 0)
              local x, y, z = d2prt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
              d2wld2.C0 = clerp(d2wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
			end
			if targetd3 ~= nil then
              local cff = CFrame.new(d3prt1.CFrame.p, targetd3.Position) * CFrame.Angles(math.pi / 2, 0, 0)
              local x, y, z = d3prt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
              d3wld2.C0 = clerp(d3wld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.4)
			end

                        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.3, 0, 0), 0.3)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
                        RW.C0 = clerp(RW.C0, cf(1.2, 0.8, -0.3) * euler(2.8, 0, -0.6) * euler(0, 0, 0), 0.3)
                        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.3)
                        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.06, 0, 0.1), 0.3)
                        LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.06, 0, -0.1), 0.3)


        end
      end
      gsou:Stop()
      sref.Size = vt(1, 1, 1)
      dwld2.C0 = clerp(dwld2.C0, cf(0, 0, 0), 1)
      d2wld2.C0 = clerp(d2wld2.C0, cf(0, 0, 0), 1)
      d3wld2.C0 = clerp(d3wld2.C0, cf(0, 0, 0), 1)
      coroutine.resume(coroutine.create(function()
    swait(200)
    sref.Parent = nil
  end
))
      coroutine.resume(coroutine.create(function()
    for i = 1, #Claw / 2 do
      Claw[i].Transparency = 0
      Claw[i + 10].Transparency = 0
      swait()
    end
  end
))
end       
 if Mode == "Monarch" then
          for i = 0, 1, 0.1 do
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.2) * euler(0.8, 0, 0) * euler(0, 0, -0.6), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.8, 0, 1) * euler(0, -0.7, 0) * euler(0, 0, -0.5), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.1), 0.3)
            RH.C0 = clerp(RH.C0, cf(0.95, -0.7, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1.1, 0.4, -0.2) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, -0.6), 0.3)
          end
          sref.Parent = effects
          sref.CFrame = LeftArm.CFrame * cf(0, -1, 0)
          sref.CFrame = cf(sref.Position)
          gsou:play()
          so("338601305", sref, 1, 0.8)
          sref.Size = vt(40, 20, 40)
          local refaa = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
          refaa.Anchored = true
          refaa.CFrame = cf(sref.Position)
          game:GetService("Debris"):AddItem(refaa, 1)
	local ii = 0
          while dryice do
	ii = ii + 1
            swait()
            refaa.CFrame = sref.CFrame * cf(math.random(-4000, 4000) / 100, 10, math.random(-4000, 4000) / 100)

            if ii % 6 ~= 0 or ii % 3 == 0 then
              hitfloor = rayCast(refaa.Position, CFrame.new(refaa.Position, refaa.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
              MagicBlock(BrickColor.new(NewCol3), cf(posfloor), 1, 1, 1, 1, 1, 1, 0.2, 1)
            end
            if ii % 21 == 0 then
              if ii % 42 == 0 then
                freeze = true
              end
              MagniDamage(sref, 30, 3, 4, 0, "Normal", sref, 0, 1, (math.random(1, 3)), nil, nil, true)
              freeze = false
            end
          end
          sref.Size = vt(1, 1, 1)
          gsou:Stop()
          swait(100)
          sref.Parent = nil
        end
      dryice = false
      attack = false
      dattack = false
end

do4 = function()
  if attack == true then
    return 
  end
  if drakes > 0 then
    if Mode == "Monarch" then
      IcyMonarch()
    end
    attack = true
    dattack = true
    coroutine.resume(coroutine.create(function()
    for i = #Claw / 2, 1, -1 do
      swait()
      Claw[i].Transparency = 1
      Claw[i + 10].Transparency = 1
    end
  end
))
    local reft = part(3, effects, 0, 1, BrickColor.new("White"), "Reference", vt())
    reft.CFrame = cf(Torso.Position)
    reft.CanCollide = true
    local rtwld = weld(reft, RootPart, reft, cf(0, 0, 0) * euler(0, 0, 0))
    dwld1.Part1 = reft
    d2wld1.Part1 = reft
    d3wld1.Part1 = reft
    sizeseq = ns({nsk(0, 0), nsk(0.025, 2), nsk(0.192, 4), nsk(1, 5)})
    transseq = ns({nsk(0, 0.8), nsk(0.3, 1), nsk(1, 1)})
    sizeseq = ns({nsk(0, 0), nsk(0.054, 0.3), nsk(0.451, 0.2), nsk(1, 0.12)})
    transseq = ns({nsk(0, 1), nsk(0.03, 1), nsk(0.1, 0.137), nsk(0.232, 1), nsk(1, 1)})
    local cff = CFrame.new(RootPart.CFrame.p, Mouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
    local x, y, z = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
    for i = 0, 1, 0.1 do
      swait()
      cff = CFrame.new(RootPart.CFrame.p, Mouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
      x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
      rtwld.C0 = clerp(rtwld.C0, cf(0, 10, 0) * CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.45)
      if drakes > 2 then
        dwld1.C0 = clerp(dwld1.C0, cf(0, -2, 0) * euler(1, 0, mr(720) / 3), 0.45)
        d2wld1.C0 = clerp(d2wld1.C0, cf(0, -2, 0) * euler(1, 0, mr(720) / 3 * 2), 0.45)
        d3wld1.C0 = clerp(d3wld1.C0, cf(0, -2, 0) * euler(1, 0, mr(720) / 3 * 3), 0.45)
      else
        if drakes > 1 then
          dwld1.C0 = clerp(dwld1.C0, cf(0, -2, 0) * euler(1, 0, mr(720) / 2 * 0), 0.45)
          d2wld1.C0 = clerp(d2wld1.C0, cf(0, -2, 0) * euler(1, 0, mr(720) / 2 * 0.5), 0.45)
        else
          if drakes > 0 then
            dwld1.C0 = clerp(dwld1.C0, cf(0, -2, 0) * euler(1, 0, 0), 0.45)
          end
        end
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.6, 0, 0), 0.35)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.35)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, 0.2) * euler(0, 0, 0), 0.35)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3, 0, -0.2), 0.35)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, 0.1), 0.35)
      LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, -0.1), 0.35)
    end
    local deca = Instance.new("NumberValue", Stats)
    deca.Name = "DecreaseMvmt"
    deca.Value = 0.5
    local tpos = Mouse.Hit.p
gaster(reft, .9)
    --so("338594747", reft, 1, 0.6)
    for i = 0, 1, 0.02 do
      swait()
      if i < 0.7 then
        tpos = Mouse.Hit.p
      end
      sizeseq = ns({nsk(0, 0), nsk(0.025, 2 + 2 * i), nsk(0.192, 4 + 3 * i), nsk(1, 5 + 3 * i)})
      cff = CFrame.new(RootPart.CFrame.p, tpos) * CFrame.Angles(math.pi / 2, 0, 0)
      x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
      rtwld.C0 = clerp(rtwld.C0, cf(0, 10, 0) * CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.45)
      if drakes > 2 then
        dwld1.C0 = clerp(dwld1.C0, cf(0, -2 - 3 * i, 0) * euler(1 - 0.5 * i, 0, mr(720) / 3 + 6 * i), 0.45)
        d2wld1.C0 = clerp(d2wld1.C0, cf(0, -2 - 3 * i, 0) * euler(1 - 0.5 * i, 0, mr(720) / 3 * 2 + 6 * i), 0.45)
        d3wld1.C0 = clerp(d3wld1.C0, cf(0, -2 - 3 * i, 0) * euler(1 - 0.5 * i, 0, mr(720) / 3 * 3 + 6 * i), 0.45)
      else
        if drakes > 1 then
          dwld1.C0 = clerp(dwld1.C0, cf(0, -2 - 3 * i, 0) * euler(1 - 0.5 * i, 0, mr(720) / 2 * 0 + 6 * i), 0.45)
          d2wld1.C0 = clerp(d2wld1.C0, cf(0, -2 - 3 * i, 0) * euler(1 - 0.5 * i, 0, mr(720) / 2 * 0.5 + 6 * i), 0.45)
        else
          if drakes > 0 then
            dwld1.C0 = clerp(dwld1.C0, cf(0, -2 - 3 * i, 0) * euler(1 - 0.5 * i, 0, 12 * i), 0.45)
          end
        end
      end
      if i < 0.7 then
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.6, 0, 0), 0.35)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.8, 0, 1) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.8, 0, -1), 0.2)
      else
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.1, 0, 0), 0.35)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0) * euler(0, 0, 0), 0.35)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.6), 0.35)
      end
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.35)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, 0.1), 0.35)
      LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, -0.1), 0.35)
    end
    deca.Value = 10
    sizeseq = ns({nsk(0, 0), nsk(0.025, 4), nsk(0.192, 7), nsk(1, 8)})
    sizeseq = ns({nsk(0, 0), nsk(0.054, 1), nsk(0.451, 0.6), nsk(1, 0.1)})
    local fref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    fref.Anchored = true
    fref.CFrame = cf(RootPart.Position)
    game:GetService("Debris"):AddItem(fref, 1)
    --[[so("338594524", reft, 1, 0.4)
    so("338594626", fref, 1, 0.8)
    so("338594626", fref, 1, 1) ]]
    local da = 0
    for i = 0, 1, 0.01 do
      swait()
      da = da + 1
      cff = CFrame.new(RootPart.CFrame.p, tpos) * CFrame.Angles(math.pi / 2, 0, 0)
      x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
      rtwld.C0 = clerp(rtwld.C0, cf(0, 10, 0) * CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.45)
      if drakes > 2 then
        dwld1.C0 = clerp(dwld1.C0, cf(0, -5, 0) * euler(0.5, 0, mr(720) / 3 + 6 + 15 * i) * cf(0, 0, -1), 0.45)
        d2wld1.C0 = clerp(d2wld1.C0, cf(0, -5, 0) * euler(0.5, 0, mr(720) / 3 * 2 + 6 + 15 * i) * cf(0, 0, -1), 0.45)
        d3wld1.C0 = clerp(d3wld1.C0, cf(0, -5, 0) * euler(0.5, 0, mr(720) / 3 * 3 + 6 + 15 * i) * cf(0, 0, -1), 0.45)
      else
        if drakes > 1 then
          dwld1.C0 = clerp(dwld1.C0, cf(0, -5, 0) * euler(0.5, 0, mr(720) / 2 * 0 + 6 + 15 * i) * cf(0, 0, -1), 0.45)
          d2wld1.C0 = clerp(d2wld1.C0, cf(0, -5, 0) * euler(0.5, 0, mr(720) / 2 * 0.5 + 6 + 15 * i) * cf(0, 0, -1), 0.45)
        else
          if drakes > 0 then
            dwld1.C0 = clerp(dwld1.C0, cf(0, -5, 0) * euler(0.5, 0, 12 + 20 * i) * cf(0, 0, -1), 0.45)
          end
        end
      end
      local hit, pos = rayCast(reft.Position, cf(reft.Position, tpos).lookVector, 300, Character)
      local mag = (reft.Position - pos).magnitude
      MagicHead(BrickColor.new("White"), CFrame.new((reft.Position + pos) / 2, pos) * angles(1.57, 0, 0), 15, mag * 5, 15, 3, 1, 3, 0.1)
      if (da) % 5 == 0 then
        fref.CFrame = cf(pos) * cf(math.random(-1000, 1000) / 100, 5, math.random(-1000, 1000) / 100)
        local hitfloor, posfloor = rayCast(fref.Position, CFrame.new(fref.Position, fref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
        fref.CFrame = cf(pos)
        freeze = true
        dam1 = drakes * 1
        dam2 = drakes * 1.2
        MagniDamage(fref, 10, 5 + dam2, 7 + dam2, 0, "Knockdown2", fref, 0.5, 1, (math.random(6, 8)), nil, nil, true)
        freeze = false
      end
      do
        if (da) % 7 == 0 then
          fref.CFrame = cf(pos) * cf(math.random(-2000, 2000) / 100, 5, math.random(-2000, 2000) / 100)
          local hitfloor, posfloor = rayCast(fref.Position, CFrame.new(fref.Position, fref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
        end
        do
          if (da) % 10 == 0 then
            fref.CFrame = cf(pos)
            MagniDamage(fref, 20, 3, 4, 0, "Normal", fref, 0.2, 1, (math.random(1, 3)), nil, nil, true, "Movement", 0.02, 200)
          end
        end
      end
    end
    coroutine.resume(coroutine.create(function()
    for i = 1, #Claw / 2 do
      Claw[i].Transparency = 0
      Claw[i + 10].Transparency = 0
      swait()
    end
  end
))
    for i = 0, 1, 0.05 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.2) * euler(0.8, 0, 0) * euler(0, 0, -0.6), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.8, 0, 1) * euler(0, -0.7, 0) * euler(0, 0, -0.5), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.1), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.95, -0.7, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, 0.4, -0.2) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, -0.6), 0.3)
    end
    if drakes > 0 then
      for _,c in pairs(model2:children()) do
        c.Transparency = 1
      end
    end
    do
      if drakes > 1 then
        for _,c in pairs(model3:children()) do
          c.Transparency = 1
        end
      end
      do
        if drakes > 2 then
          for _,c in pairs(model4:children()) do
            c.Transparency = 1
          end
        end
        do
          drakes = 0
          deca.Parent = nil
          dwld1.Part1 = RootPart
          d2wld1.Part1 = RootPart
          d3wld1.Part1 = RootPart
          reft.Parent = nil
          dattack = false
          attack = false
          swait(20)
          if drakes < 1 then
            model2.Parent = nil
          end
          if drakes < 2 then
            model3.Parent = nil
          end
          if drakes < 3 then
            model4.Parent = nil
          end
        end
      end
    end
  end
end

findNearestTorso = function(pos, distance)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = distance
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    canfind = true
    if game.Players:GetPlayerFromCharacter(temp2) ~= nil and game.Players:GetPlayerFromCharacter(temp2).TeamColor == Player.TeamColor and Player.Neutral == false then
      canfind = false
    end
    canfind = true
    if temp2.className == "Model" and temp2 ~= Character and canfind == true then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        torso = temp
        dist = (temp.Position - pos).magnitude
      end
    end
  end
  return torso, dist
end

DecreaseStat = function(Model, Stat, Amount, Duration)
  if Model:findFirstChild("Stats") ~= nil and Model.Stats[Stat] ~= nil then
    Model.Stats[Stat].Value = Model.Stats[Stat].Value - Amount
    d = Instance.new("NumberValue", Model.Stats.Decrease)
    dur = Instance.new("NumberValue", d)
    dur.Name = "Duration"
    dur.Value = Duration
    game:GetService("Debris"):AddItem(d, 20)
    if Stat == "Damage" then
      d.Name = "DecreaseAtk"
    else
      if Stat == "Defense" then
        d.Name = "DecreaseDef"
      else
        if Stat == "Movement" then
          d.Name = "DecreaseMvmt"
        end
      end
    end
    if Model:findFirstChild("Torso") ~= nil then
      display = ""
      if Stat == "Damage" then
        if Amount > 0 then
          display = "-Damage"
        else
          display = "+Damage"
        end
      else
        if Stat == "Defense" then
          if Amount > 0 then
            display = "-Defense"
          else
            display = "+Defense"
          end
        else
          if Stat == "Movement" then
            if Amount > 0 then
              display = "-Movement"
            else
              display = "+Movement"
            end
          end
        end
      end
      Frost = math.floor(Frost + Amount * math.random(40, 60))
    end
    d.Value = Amount
  end
end

GetDist = function(Part1, Part2, magni)
  local targ = Part1.Position - Part2.Position
  local mag = targ.magnitude
  if mag <= magni then
    return true
  else
    return false
  end
end

MagniDamage = function(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = nil
      for _,d in pairs(c:children()) do
        if d.className == "Model" and ranged ~= true then
          head = d:findFirstChild("Hitbox")
          if d.Parent == Character then
            break
          end
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if mag <= magni and c.Name ~= Player.Name then
              ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
              ref.Anchored = true
              ref.CFrame = cf(head.Position)
              game:GetService("Debris"):AddItem(ref, 1)
              hitnum = math.random(1, 5)
              if hitnum == 1 then
                so("199148971", ref, 1, 1)
              else
                if hitnum == 2 then
                  so("199149025", ref, 1, 1)
                else
                  if hitnum == 3 then
                    so("199149072", ref, 1, 1)
                  else
                    if hitnum == 4 then
                      so("199149109", ref, 1, 1)
                    else
                      if hitnum == 5 then
                        so("199149119", ref, 1, 1)
                      end
                    end
                  end
                end
              end
            end
          end
        end
        do
          if d.className == "Part" then
            head = d
            if head ~= nil then
              local targ = head.Position - Part.Position
              local mag = targ.magnitude
              if mag <= magni and c.Name ~= Player.Name then
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
              end
            end
          end
          do
            -- DECOMPILER ERROR at PC183: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
  end
end

MagniBuff = function(Part, magni, Dec, DecAm, Dur)
  DecreaseStat(Character, Dec, DecAm, Dur)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        cando = true
        if mag <= magni then
          if Player.Neutral == false then
            if game.Players:GetPlayerFromCharacter(head.Parent) ~= nil then
              if game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
                cando = true
              else
                cando = false
              end
            else
              cando = false
            end
            if head.Parent:findFirstChild("Alignment") ~= nil and head.Parent.Alignment.Value == Player.TeamColor.Color then
              cando = true
            end
          else
            cando = false
          end
          if cando == true then
            DecreaseStat(head.Parent, Dec, DecAm, Dur)
          end
        end
      end
    end
  end
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
LastPoint = Point
effect = function(Color, Ref, LP, P1, returnn, size, thing1)
  if LP == nil or P1 == nil then
    return 
  end
  local effectsmsh = Instance.new("CylinderMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  effectsg.formFactor = 3
  effectsg.Material = Enum.Material.Neon
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = workspace
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = (LP.p - point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(size, 1, size)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  if not returnn then
    if thing1 == 1 then
Cylinder(effectsg, 0.05, 0.2, 0, 0.2, effectsmsh)
    else
      if thing1 == 2 then
Cylinder(effectsg, 0.2, 0.01, 0, 0.01, effectsmsh)
      else
        if thing1 == 3 then
Cylinder(effectsg, 0, 0, 0, 0.1, effectsmsh)
        end
      end
    end
  end
end

effect2 = function(Color, Ref, LP, P1, returnn, size, raa)
  if LP == nil or P1 == nil then
    return 
  end
  MshTypee = "CylinderMesh"
  if raa == 2 then
    MshTypee = "BlockMesh"
  end
  local effectsmsh = Instance.new(MshTypee)
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  if raa == 2 then
    effectsg.Material = "Neon"
  end
  effectsg.formFactor = 3
  effectsg.Material = Enum.Material.Neon
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = workspace
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = (LP.p - point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(size, 1, size)
  game:GetService("Debris"):AddItem(effectsg, 5)
  if returnn then
    return effectsg
  end
  if not returnn then
    if raa == 2 then
Cylinder(effectsg, 0.05, -0.05, 0, -0.05, effectsmsh)
    else
Cylinder(effectsg, 0.1, -0.2, 0, -0.2, effectsmsh)
    end
  end
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= (b - a).magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= (c - b).magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= (a - c).magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = (b - a).magnitude - len1
  local width = (a + b - a.unit * len1 - c).magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    w1.Name = "Triangle"
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "Neon"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Medium blue")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "Neon"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.05})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      w2.Name = "Triangle"
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "Neon"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new("Medium blue")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "Neon"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.05})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = Enum.Material.Neon
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
Block1(prt, delay, x3, y3, z3, msh)
  else
    if Type == 2 then
Block2(prt, delay, x3, y3, z3, msh)
    else
      if Type == 3 then
Block3(prt, delay, x3, y3, z3, msh, prt.CFrame)
      end
    end
  end
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = Enum.Material.Neon
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
Cylinder(prt, delay, x3, y3, z3, msh)
end

MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = Enum.Material.Neon
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
Cylinder(prt, delay, x3, y3, z3, msh)
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.Material = Enum.Material.Neon
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  game:GetService("Debris"):AddItem(prt, 10)
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
Shatter(prt, num, math.random() - math.random(), 0, math.random(50, 100) / 100)
end

Lightning = function(p0, p1, tym, ofs, col, th, tra, last)
  local magz = (p0 - p1).magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", workspace)
    li.TopSurface = 0
    li.BottomSurface = 0
    li.Anchored = true
    li.Transparency = tra or 0.4
    li.BrickColor = BrickColor.new(col)
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(th, th, magz / tym)
    local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
    local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
    if tym == i then
      local magz2 = (curpos - p1).magnitude
      li.Size = Vector3.new(th, th, magz2)
      li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
    else
      do
        do
          li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
          curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
          game.Debris:AddItem(li, 10)
          table.insert(Effects, {li, "Disappear", last})
          -- DECOMPILER ERROR at PC137: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC137: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC137: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  if hit.Parent == nil then
    return 
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    RecentEnemy.Value = hit.Parent
    game:GetService("Debris"):AddItem(c, 0.5)
    minim = minim
    maxim = maxim
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
Damage = Damage/5
h:TakeDamage(Damage)
if hit.Parent:FindFirstChild("Head") ~= nil then
ShowDamage(hit.Parent:FindFirstChild("Head").Position+vt(0,2,0), Damage)
end
    if breakfreeze == true then
      for i = 1, #FStacks do
        if tors == FStacks[i][1] and FStacks[i][3] == true then
          so("338594737", hit, 1, 1)
          Damage = Damage + math.random(FStacks[i][4].Value * 1.1, FStacks[i][4].Value * 1.3)
          incstun = incstun + math.random(FStacks[i][4].Value * 1.8, FStacks[i][4].Value * 2)
        end
      end
    end
    do
      blocked = false
      enblock = nil

  end
  end
end

function ShowDamage(Pos, Text)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Color = BrickColor.new("Medium blue")
	local EffectPart = part("Custom",modelzorz,0,1,Color,"Effect",Vector3.new(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color.Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (1.5 + 0.1))
	EffectPart.Parent = modelzorz
	delay(0, function()
		local Frames = (1.5 / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:remove()
		end
	end)
end

combo = 0
ob1d = function()
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if combo == 0 then
    combo = 1
    attackone()
  else
    if combo == 1 then
      combo = 2
      attacktwo()
    else
      if combo == 2 then
        combo = 3
        attackthree()
      else
        if combo == 3 then
          combo = 0
          attackfour()
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        swait()
      end
    end
    if attack == false then
      combo = 0
    end
  end
))
end

ob1u = function()
  hold = false
end

buttonhold = false
eul = 0
equipped = false
key = function(key)
  if key == "c" and dryice == true then
    do3()
    return 
  end
  if attack == true then
    return 
  end
  if key == "f" and Mode == "Drakes" then
    attack = true
    if equipped == false then
	
coroutine.resume(coroutine.create(function() 
local Old_W = Humanoid.WalkSpeed
local Old_J = Humanoid.JumpPower
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
repeat swait() until hitfloor ~= nil
swait(20)
Character.Animate.Disabled = true
Humanoid.WalkSpeed = Old_W
Humanoid.JumpPower = Old_J
end))

      equipped = true
      RSH = ch.Torso["Right Shoulder"]
      LSH = ch.Torso["Left Shoulder"]
      RSH.Parent = nil
      LSH.Parent = nil
      RW.Name = "Right Shoulder"
      RW.Part0 = ch.Torso
      RW.C0 = cf(1.5, 0.5, 0)
      RW.C1 = cf(0, 0.5, 0)
      RW.Part1 = ch["Right Arm"]
      RW.Parent = ch.Torso
      LW.Name = "Left Shoulder"
      LW.Part0 = ch.Torso
      LW.C0 = cf(-1.5, 0.5, 0)
      LW.C1 = cf(0, 0.5, 0)
      LW.Part1 = ch["Left Arm"]
      LW.Parent = ch.Torso
      equipanim()
    else

coroutine.resume(coroutine.create(function() 	
local Old_W = Humanoid.WalkSpeed
local Old_J = Humanoid.JumpPower
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
repeat swait() until hitfloor ~= nil
swait(20)
Character.Animate.Disabled = false
Humanoid.WalkSpeed = Old_W
Humanoid.JumpPower = Old_J
end))

      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      swait(0)
      RW.Parent = nil
      LW.Parent = nil
      RSH.Parent = player.Character.Torso
      LSH.Parent = player.Character.Torso
      swait(20)
      model2.Parent = nil
      model3.Parent = nil
      model4.Parent = nil
    end
    attack = false
  end
  if equipped == false then
    return 
  end
  if key == "e" and drakes > 0 then
    IcyMonarch()
  end
  if key == "z" then
    do1()
  end
  if key == "x" then
    do2()
  end
  if key == "c" then
    do3()
  end
  if key == "v" then
    do4()
  end
  if key == "q" and drakes < 3 and Mode ~= "Monarch" then
    IceDrake()
  end
end 

key2 = function(key)
end

s = function()
  Mouse.Button1Down:connect(function()
    ob1d()
  end
)
  Mouse.Button1Up:connect(function()
    ob1u()
  end
)
  Mouse.KeyDown:connect(key)
  Mouse.KeyUp:connect(key2)
  player = Player
  ch = Character
end

s()

local donum = 0
local walk = 0
local walkforw = true
while true do
  swait()
	if 0.5 <= donum then
        handidle = true
      else
        if donum <= 0 then
          handidle = false
        end
      end
      if handidle == false then
        donum = donum + 0.003
      else
        donum = donum - 0.003
      end
torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
      if equipped == true then
        if Anim == "Walk" then
          if walkforw == true then
            RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
            if attack == false then
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0.5, 0, 0), Mvmt.Value * 10 / 50)
            else
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            end
          else
            RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
            if attack == false then
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
            else
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            end
          end
        else
          RH.C1 = clerp(RH.C1, RHC1, 0.2)
          LH.C1 = clerp(LH.C1, LHC1, 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        end
        if 1 < RootPart.Velocity.y and hitfloor == nil then
          Anim = "Jump"
          if dattack == false then
            dwld1.C0 = clerp(dwld1.C0, cf(3.5, -1.8, -1.5) * euler(0.1, 0.5, 0) * euler(0.5, 0, 0), 0.3)
            d2wld1.C0 = clerp(d2wld1.C0, cf(-3.5, -1.8, -1.5) * euler(0.1, -0.5, 0) * euler(0.5, 0, 0), 0.3)
            d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4.5, -1.5) * euler(0.8, 0, 0) * euler(0, 0, 0), 0.3)
          end
          if attack == false then
            Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.2) * euler(0, -1.5, 0), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.2), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if dattack == false then
              dwld1.C0 = clerp(dwld1.C0, cf(3.5, -1.8, -1.5) * euler(0.1, 0.5, 0) * euler(0.5, 0, 0), 0.3)
              d2wld1.C0 = clerp(d2wld1.C0, cf(-3.5, -1.8, -1.5) * euler(0.1, -0.5, 0) * euler(0.5, 0, 0), 0.3)
              d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4.5, -1.5) * euler(0.8, 0, 0) * euler(0, 0, 0), 0.3)
            end
            if attack == false then
              Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
              Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8) * euler(0, -1.5, 0), 0.2)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.2)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
            end
          else
            if torvel < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if Mode == "Drakes" then
                if dattack == false then
                  dwld1.C0 = clerp(dwld1.C0, cf(3.8, -2.2 + (donum) / 3, 0.5) * euler(0.2 + (donum) / 4, 0, -0.4 + (donum) / 4) * euler(0, 0.3, 0), 0.3)
                  d2wld1.C0 = clerp(d2wld1.C0, cf(-3.8, -2.2 + (donum) / 3, 0.5) * euler(0.2 + (donum) / 4, 0, 0.4 - (donum) / 4) * euler(0, -0.3, 0), 0.3)
                  d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4 + (donum) / 3, 0.5) * euler(0.4 + (donum) / 4, 0, 0) * euler(0, 0, 0), 0.3)
                end
                if attack == false then
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.4) * euler(0.2 + (donum) / 4, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.6, 0, 0.7 - (donum) / 3) * euler(0, -1, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4 + (donum) / 3), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1 + (donum) / 4), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.05, 0, -0.15 - (donum) / 4), 0.2)
                end
              else
                if Mode == "Monarch" and attack == false then
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(-0.1 + (donum) / 2, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.4 + (donum) / 4, 0, 0) * euler(0, 0, -0.4), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.8, 0, 1 - (donum) / 3) * euler(0, -0.7, 0) * euler(0, 0, -0.5), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4 + (donum) / 3), 0.2)
                  RH.C0 = clerp(RH.C0, cf(0.95, -0.7, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1 + (donum) / 4), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1.1, -0.4, -0.5) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(0, 0, -0.4 - (donum) / 4), 0.2)
                end
              end
            else
              if 2 < torvel and torvel < 30 and hitfloor ~= nil then
                Anim = "Walk"
                walk = walk + 1
                if 15 - 5 * Mvmt.Value <= walk then
                  walk = 0
                  if walkforw == true then
                    walkforw = false
                  else
                    if walkforw == false then
                      walkforw = true
                    end
                  end
                end
                if Mode == "Drakes" then
Character.Humanoid.WalkSpeed="16"
                  if dattack == false then
                    dwld1.C0 = clerp(dwld1.C0, cf(4.5, -2 + (donum) / 3, 1.5) * euler(0.2 + (donum) / 3, 0, 0) * euler(0, 0, 0), 0.15)
                    d2wld1.C0 = clerp(d2wld1.C0, cf(-4.5, -2 + (donum) / 3, 1.5) * euler(0.2 + (donum) / 3, 0, 0) * euler(0, 0, 0), 0.15)
                    d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4 + (donum) / 3, 1.5) * euler(0.4 + (donum) / 3, 0, 0) * euler(0, 0, 0), 0.15)
                  end
                  if attack == false then
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                    RW.C0 = clerp(RW.C0, cf(1.2, 0.4, 0.3) * euler(0.4, 0, 1) * euler(0, -1, 0), 0.25)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.2), 0.25)
                    RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, 0.2), 0.25)
                    LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, -0.2), 0.25)
                  end
                else
                  if Mode == "Monarch" and attack == false then
Character.Humanoid.WalkSpeed="29"
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.25)
                    RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.1) * euler(0.8, 0, 1) * euler(0, -0.7, 0) * euler(0, 0, -0.5), 0.25)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4), 0.25)
                    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.2), 0.25)
                    LH.C0 = clerp(LH.C0, cf(-1, -0.4, -0.5) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.4), 0.25)
                  end
                end
              else
                if 30 <= torvel and hitfloor ~= nil then
                  Anim = "Run"
                  if dattack == false then
                    dwld1.C0 = clerp(dwld1.C0, cf(4.5, -2 + (donum) / 3, 1.5) * euler(0.2 + (donum) / 3, 0, 0) * euler(0, 0, 0), 0.15)
                    d2wld1.C0 = clerp(d2wld1.C0, cf(-4.5, -2 + (donum) / 3, 1.5) * euler(0.2 + (donum) / 3, 0, 0) * euler(0, 0, 0), 0.15)
                    d3wld1.C0 = clerp(d3wld1.C0, cf(0, -4 + (donum) / 3, 1.5) * euler(0.4 + (donum) / 3, 0, 0) * euler(0, 0, 0), 0.15)
                  end
                  if attack == false then
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.9) * euler(-0.2, 0, 0), 0.4)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.5, 0, 0) * euler(0, 0, 0.8), 0.4)
                    RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.2) * euler(0.5, 0, 1.2) * euler(0, 0.8, 0) * euler(0.5, 0, 0), 0.4)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8), 0.4)
                    RH.C0 = clerp(RH.C0, cf(1, 0.4, -0.4) * euler(0, 1.57, 0) * euler(0, -0.8, 0) * euler(-0.1, 0, 0.1), 0.4)
                    LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.2) * euler(0, -1.57, 0) * euler(0, -0.4, 0) * euler(-0.2, 0, 0.15), 0.4)
                  end
                end
              end
            end
          end
        end
      end
      if 0 < #Effects then
        for e = 1, #Effects do
          if Effects[e] ~= nil then
            local Thing = Effects[e]
            if Thing ~= nil then
              local Part = Thing[1]
              local Mode = Thing[2]
              local Delay = Thing[3]
              local IncX = Thing[4]
              local IncY = Thing[5]
              local IncZ = Thing[6]
              if Thing[2] == "ShootIce" then
                local Look = Thing[1]
                local hit, pos = rayCast(Thing[4], Look.lookVector, Thing[9], Character)
                local mag = (Thing[4] - pos).magnitude
                Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * euler(-1.57, 0, 0)
                Thing[4] = Thing[4] + Look.lookVector * Thing[9]
                Thing[3] = Thing[3] - 1
                if hit ~= nil or Thing[3] <= 0 then
                  Thing[3] = 0
                  ref = part(3, effects, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                  ref.Anchored = true
                  ref.CFrame = cf(pos)
                  game:GetService("Debris"):AddItem(ref, 1)
                  ref2 = part(3, effects, 0, 1, BrickColor.new("Really red"), "Reference", vt(5, 5, 5))
                  ref2.Anchored = true
                  ref2.CFrame = cf(pos)
                  game:GetService("Debris"):AddItem(ref2, 5)
                  size = 3
                  if Thing[10] == 2 then
                    freeze = true
                    size = 4
                    so("338594574", ref, 1, 1)
                  else
                    so("338594556", ref, 1, 1)
                  end
                  MagicCircle(BrickColor.new(NewCol3), cf(ref.Position), 20, 20, 20, 5, 5, 5, 0.1)
                  MagniDamage(ref, size, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(2, 3)), nil, nil, true)
                  freeze = false
                  for i = 1, 8 do
                    BreakEffect(BrickColor.new(NewCol3), ref.CFrame * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100), math.random(20, 50) / 100, math.random(1, 5), math.random(20, 50) / 100)
                  end
                  if Thing[10] == 2 then
                    for i = 1, 5 do
                      MagicBlock(BrickColor.new(NewCol3), cf(ref.Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, 0, 0, 0, 0.05, 3)
                    end
                  end
                end
                      if Thing[3] <= 0 then
                        Thing[8].Transparency = 1
                        if Thing[10] == 2 then
                          Thing[11].Enabled = false
                          Thing[12].Enabled = false
                        end
                        game:GetService("Debris"):AddItem(Thing[8], 5)
                        table.remove(Effects, e)
                      end
                        else
                          Part.Parent = nil
                          table.remove(Effects, e)
                    end
                  end
                end
              end
      end
end

