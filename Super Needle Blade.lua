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
MMouse = nil
combo = 0
apierce = false
doing2s = false
msprintnum = 0
sprint = false
stopwalk = false
sprinthit = false
lastskill = nil
iscombo = false
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local GuardStance = false
local Target = nil
local manualguardend = false
local lastcombo = nil
local prop = Instance.new("RocketPropulsion")
local move1 = "(Z)\nHonor"
local move2 = "(X)\nAssault Pierce"
local move3 = "(C)\nSwipe"
local move4 = "(V)\nNeedle Storm"
local cooldowns = {}
local cooldown1 = 0
table.insert(cooldowns, cooldown1)
local cooldown2 = 0
table.insert(cooldowns, cooldown2)
local cooldown3 = 0
table.insert(cooldowns, cooldown3)
local cooldown4 = 0
table.insert(cooldowns, cooldown4)
local cooldownsadd = {}
local cooldownadd1 = 0.35
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.26
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.17
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.06
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
TorsoRed = TorsoColor.Color.r
TorsoGreen = TorsoColor.Color.g
NewCol = Color3.new(1, 1, 1)
NewCol2 = Color3.new(1, 1, 1)
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
end
if Player:findFirstChild("Color2") ~= nil then
  NewCol2 = Player.Color2.Value
end
print(BrickColor.new(NewCol))
local mdec = Instance.new("NumberValue", Decrease)
mdec.Name = "DecreaseDef"
mdec.Value = 0.4
local mdec2 = Instance.new("NumberValue", Decrease)
mdec2.Name = "DecreaseMvmt"
mdec2.Value = 0.1
local Animate = Humanoid.Animator
local canjump = true
removeControl = function()
  canjump = false
end

resumeControl = function()
  canjump = true
end

Player.Character.Humanoid.Changed:connect(function()
  if canjump == false then
    Player.Character.Humanoid.Jump = false
  end
end
)
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 40
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

if Character:findFirstChild("Gavlonius Wheel", true) ~= nil then
  Character:findFirstChild("Gavlonius Wheel", true).Parent = nil
end
if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
  Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
end
if Character:findFirstChild("Stats", true) ~= nil then
  Character:findFirstChild("Stats", true).Parent = nil
end
local Stats = Instance.new("BoolValue")
Stats.Name = "Stats"
Stats.Parent = Character
local Atk = Instance.new("NumberValue")
Atk.Name = "Damage"
Atk.Parent = Stats
Atk.Value = 1
local Def = Instance.new("NumberValue")
Def.Name = "Defense"
Def.Parent = Stats
Def.Value = 1
local Mvmt = Instance.new("NumberValue")
Mvmt.Name = "Movement"
Mvmt.Parent = Stats
Mvmt.Value = 1
local Block = Instance.new("BoolValue")
Block.Name = "Block"
Block.Parent = Stats
Block.Value = false
local Stun = Instance.new("NumberValue")
Stun.Name = "Stun"
Stun.Parent = Stats
Stun.Value = 0
local StunT = Instance.new("NumberValue")
StunT.Name = "StunThreshold"
StunT.Parent = Stats
StunT.Value = 100
local Rooted = Instance.new("BoolValue")
Rooted.Name = "Rooted"
Rooted.Parent = Stats
Rooted.Value = false
local Stunned = Instance.new("BoolValue")
Stunned.Name = "Stunned"
Stunned.Parent = Stats
Stunned.Value = false
local Stagger = Instance.new("BoolValue")
Stagger.Name = "Stagger"
Stagger.Parent = Stats
Stagger.Value = false
local StaggerHit = Instance.new("BoolValue")
StaggerHit.Name = "StaggerHit"
StaggerHit.Parent = Stats
StaggerHit.Value = false
local RecentEnemy = Instance.new("ObjectValue")
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Parent = Stats
RecentEnemy.Value = nil
local Decrease = Instance.new("BoolValue")
Decrease.Name = "Decrease"
Decrease.Parent = Stats
Decrease.Value = false
local passive = Instance.new("NumberValue", Decrease)
passive.Name = "DecreaseMvmt"
passive.Value = 0
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 0
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

gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end

local Color1 = Torso.BrickColor
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.1, 0, 0.1, 0)
fenframe.Position = UDim2.new(0.95, 0, 0.7, 0)
local fenframe2 = it("Frame")
fenframe2.Parent = fengui
fenframe2.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe2.BackgroundTransparency = 1
fenframe2.BorderColor3 = Color3.new(17, 17, 17)
fenframe2.Size = UDim2.new(0.2, 0, 0.1, 0)
fenframe2.Position = UDim2.new(0.4, 0, 0.85, 0)
local fenframe3 = it("Frame")
fenframe3.Parent = fengui
fenframe3.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe3.BackgroundTransparency = 1
fenframe3.BorderColor3 = Color3.new(17, 17, 17)
fenframe3.Size = UDim2.new(0.2, 0, 0.2, 0)
fenframe3.Position = UDim2.new(0.8, 0, 0.8, 0)
local fenframe4 = it("Frame")
fenframe4.Parent = fengui
fenframe4.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe4.BackgroundTransparency = 1
fenframe4.BorderColor3 = Color3.new(17, 17, 17)
fenframe4.Size = UDim2.new(0.1, 0, 0.1, 0)
fenframe4.Position = UDim2.new(0, 0, 0.7, 0)
local pressedf = false
local fenframe5 = it("Frame")
fenframe5.Parent = fengui
fenframe5.BackgroundColor3 = Color3.new(0, 0, 0)
fenframe5.BackgroundTransparency = 1
fenframe5.BorderColor3 = Color3.new(0, 0, 0)
fenframe5.Size = UDim2.new(1, 0, 1, 0)
fenframe5.Position = UDim2.new(0, 0, 0, 0)
fenframe5.ZIndex = 2
local tellbar = gui("TextLabel", fenframe5, "Press \'F\' to equip your weapon.", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
tellbar.Font = "Arial"
tellbar.TextScaled = true
tellbar.TextTransparency = 1
tellbar.TextStrokeTransparency = 1
tellbar.ZIndex = 2
fnumb = 0
fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
fenbardamage = gui("TextLabel", fenframe2, "Damage", 0.55, Color3.new(0.6078431372549, 0, 0), UDim2.new(-0.23, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
fenbardef = gui("TextLabel", fenframe2, "Defense", 0.55, Color3.new(0, 0, 0.6078431372549), UDim2.new(-0.46, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
fenbarmove = gui("TextLabel", fenframe2, "Walkspeed", 0.55, Color3.new(0, 0.6078431372549, 0), UDim2.new(1.03, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
fenbarhp1 = gui("TextLabel", fenframe2, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.46, 0, 1, 0), UDim2.new(1.92, 0, 0.4, 0))
fenbarhp2 = gui("TextLabel", fenbarhp1, "", 0, Color3.new(1, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
fenbarhp3 = gui("TextLabel", fenbarhp1, "(100)", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
fenbarstun1 = gui("TextLabel", fenframe4, "", 0, Color3.new(0, 0, 0), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
fenbarstun2 = gui("TextLabel", fenframe4, "", 0, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
fenbarstun3 = gui("TextLabel", fenframe4, "Stun(" .. Stun.Value .. ")", 1, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
fenbarmove1 = gui("TextButton", fenframe3, move1, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove1.ZIndex = 2
fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Needle"
local handle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol2), "Handle", vt())
local prt1 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol2), "Part01", vt(0.2, 1.4, 0.2))
local prt2 = part(3, modelzorz, 0, 1, BrickColor.new("Medium stone grey"), "Part02", vt(0.2, 1.6, 0.2))
local prt3 = part(3, modelzorz, 0, 1, BrickColor.new("Medium stone grey"), "Part03", vt())
local prt4 = part(3, modelzorz, 0, 1, BrickColor.new("Medium stone grey"), "Part04", vt())
local prt5 = part(3, modelzorz, 0, 1, BrickColor.new("Medium stone grey"), "Part05", vt(0.2, 0.6, 0.6))
local prt6 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part06", vt())
local prt7 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part07", vt())
local prt8 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part08", vt(0.6, 0.6, 0.2))
local prt9 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part09", vt(0.6, 0.6, 0.2))
local prt10 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part10", vt())
local prt11 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part11", vt())
local prt12 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part12", vt())
local prt13 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part13", vt())
local prt14 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part14", vt())
local prt15 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part15", vt())
local prt16 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part16", vt())
local prt17 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part17", vt())
local prt18 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part18", vt())
local prt19 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part19", vt())
local prt20 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part20", vt())
local prt21 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part21", vt())
local prt22 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part22", vt())
local prt23 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part23", vt())
local prt24 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part24", vt())
local prt25 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part25", vt())
local prt26 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part26", vt())
local prt27 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part27", vt())
local prt28 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part28", vt())
local wld1 = weld(prt1, prt1, handle, cf(0, 0, 0) * euler(0, 0, 0))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, 0.1, 0))
local wld3 = weld(prt1, prt3, prt1, euler(0, 0, 0) * cf(0, 0.9, 0))
local wld4 = weld(prt1, prt4, prt3, euler(0, 0, 0) * cf(0, 0.2, 0))
local wld5 = weld(prt1, prt5, prt1, euler(0, 0, 0) * cf(0, -0.7, 0))
local wld6 = weld(prt1, prt6, prt1, euler(0, 0, 0) * cf(0, -3.2, 0))
local wld7 = weld(prt1, prt7, prt1, euler(0, 0, 0) * cf(0, -3.5, 0))
local wld8 = weld(prt1, prt8, prt1, euler(0, math.rad(-90), 0) * cf(0, -0.76, 0))
local wld9 = weld(prt1, prt9, prt1, euler(0, math.rad(90), 0) * cf(0, -0.76, 0))
local wld10 = weld(prt1, prt10, prt1, euler(math.rad(-180), math.rad(0), math.rad(-90)) * cf(0, -0.9, 0))
local wld11 = weld(prt1, prt11, prt1, euler(math.rad(90), math.rad(0), math.rad(-90)) * cf(0, -0.9, 0))
local wld12 = weld(prt1, prt12, prt1, euler(0, 0, 0) * cf(0, -0.7, 0))
local wld13 = weld(prt1, prt13, prt1, euler(math.rad(-90), 0, 1.57) * cf(0, -0.7, -0.225))
local wld14 = weld(prt1, prt14, prt1, euler(math.rad(90), 0, -1.57) * cf(0, -0.7, 0.225))
local wld15 = weld(prt1, prt15, prt1, euler(math.rad(-90), 0, 1.57) * cf(0, -0.7, -0.525))
local wld16 = weld(prt1, prt16, prt1, euler(math.rad(90), 0, -1.57) * cf(0, -0.7, 0.525))
local wld17 = weld(prt1, prt17, prt1, euler(math.rad(90), math.rad(45), math.rad(0)) * cf(-0.105, -0.7, 0.105))
local wld18 = weld(prt1, prt18, prt1, euler(math.rad(-90), math.rad(-45), math.rad(0)) * cf(-0.105, -0.7, -0.105))
local wld19 = weld(prt1, prt19, prt1, euler(math.rad(90), math.rad(-45), math.rad(0)) * cf(0.105, -0.7, 0.105))
local wld20 = weld(prt1, prt20, prt1, euler(math.rad(-90), math.rad(45), math.rad(0)) * cf(0.105, -0.7, -0.105))
local wld21 = weld(prt1, prt21, prt1, euler(math.rad(90), math.rad(135), math.rad(0)) * cf(-0.3, -0.7, -0.3))
local wld22 = weld(prt1, prt22, prt1, euler(math.rad(90), math.rad(45), math.rad(0)) * cf(-0.3, -0.7, 0.3))
local wld23 = weld(prt1, prt23, prt1, euler(math.rad(90), math.rad(-45), math.rad(0)) * cf(0.3, -0.7, 0.3))
local wld24 = weld(prt1, prt24, prt1, euler(math.rad(90), math.rad(-135), math.rad(0)) * cf(0.3, -0.7, -0.3))
local wld25 = weld(prt1, prt25, prt1, euler(math.rad(180), math.rad(-135), math.rad(180)) * cf(0.3, -0.775, 0.3))
local wld26 = weld(prt1, prt26, prt1, euler(math.rad(180), math.rad(45), math.rad(-180)) * cf(-0.3, -0.775, -0.3))
local wld27 = weld(prt1, prt27, prt1, euler(math.rad(180), math.rad(135), math.rad(-180)) * cf(-0.3, -0.775, 0.3))
local wld28 = weld(prt1, prt28, prt1, euler(math.rad(-180), math.rad(-45), math.rad(-180)) * cf(0.3, -0.775, -0.3))
num = 0
num2 = 0
num3 = 0
num4 = 0
num5 = 2
function stickk(x, y) local weldd=Instance.new'Weld' weldd.Part0=x weldd.Part1=y local hit=x.Position local CJ=CFrame.new(hit) local C0=x.CFrame:inverse()*CJ local C1 =y.CFrame:inverse()*CJ weldd.C0=C0 weldd.C1=C1 weldd.Parent = x return weldd end it=Instance.new function nooutlinee(partt) partt.TopSurface,partt.BottomSurface,partt.LeftSurface,partt.RightSurface,partt.FrontSurface,partt.BackSurface = 10,10,10,10,10,10 end function partt(formfactor,parent,material,Shape,transparency,brickcolor,name,size) local fp=it("Part") fp.formFactor=formfactor fp.Parent=parent fp.Shape=Shape fp.Transparency=transparency fp.CanCollide=false fp.Locked=true fp.BrickColor=BrickColor.new(tostring(brickcolor)) fp.Name=name fp.Size=size nooutlinee(fp) fp.Material=material fp:BreakJoints() return fp end function meshh(Mesh,partt,meshtype,meshid,offset,scale) local meshh=it(Mesh) meshh.Parent=partt if Mesh=="SpecialMesh" then meshh.MeshType=meshtype meshh.MeshId=meshid end meshh.Offset=offset meshh.Scale=scale return meshh end function weldd(parent,part0,part1,c0,c1) local weldd=it("Weld") weldd.Parent=parent weldd.Part0=part0 weldd.Part1=part1 weldd.C0=c0 weldd.C1=c1 return weldd end function wpartt(formfactor,parent,material,reflectance,transparency,brickcolor,name,size) local fp=it("WedgePart") fp.formFactor=formfactor fp.Parent=parent fp.Transparency=transparency fp.Reflectance = reflectance fp.CanCollide=false fp.Locked=true fp.BrickColor=BrickColor.new(tostring(brickcolor)) fp.Name=name fp.Size=size nooutlinee(fp) fp.Material=material fp:BreakJoints() return fp end 
HANDLE=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,1,"Dusty Rose","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
HANDLEweldd=weldd(modelzorz,Character["Left Arm"],HANDLE,CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(0.0217590332, -0.691162109, 0.110282898, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000610351563, 0.000335693359, -4.14966583, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.150000006, 3.5))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Dusty Rose","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(0.000244140625, -0.000122070313, -7.62939453e-006, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=122202439",Vector3.new(0, 0, 0),Vector3.new(10, 0.150000006, 0.150000006))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(0.000549316406, -0.000198364258, -2.00000763, -0.0292334612, 0.984271407, 0.174228504, -0.998629391, -0.0363291018, 0.0376763828, 0.0434133634, -0.172888324, 0.983984411))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.Neon,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000457763672, 0.000205993652, -2.19982147, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 2))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000732421875, 0.000289916992, -3.19946289, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.25, 3))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Dusty Rose","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-1.04981232, -0.000305175781, 2.28881836e-005, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=122202439",Vector3.new(0, 0, 0),Vector3.new(5, 0.25, 0.25))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000427246094, 0.000259399414, -4.74980927, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.150000006, 3.5))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(0.000610351563, -2.00000763, 7.62939453e-005, -0.0292217657, 0.98427701, 0.174198776, 0.0433556251, -0.172861159, 0.983991742, 0.998632252, 0.0363064595, -0.0376226157))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000793457031, 0.000274658203, -3.34963989, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.25, 3))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Dusty Rose","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-1.04981232, -0.000305175781, 2.28881836e-005, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=122202439",Vector3.new(0, 0, 0),Vector3.new(10, 0.200000003, 0.200000003))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000701904297, 0.000297546387, -4.34965515, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.150000006, 3.5))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Dusty Rose","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(0.999977112, -0.000152587891, -6.86645508e-005, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=122202439",Vector3.new(0, 0, 0),Vector3.new(1, 0.200000003, 0.200000003))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-2, -0.000228881836, -0.000671386719, 0.0434253477, -0.172819018, 0.983996212, -0.99862808, -0.0363551639, 0.0376860276, 0.0292604789, -0.984282613, -0.1741606))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000610351563, 0.000381469727, -4.54944611, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.150000006, 3.5))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000366210938, 0.000274658203, -2.44970703, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.75, 0.349999994, 2.5))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000427246094, 0.00023651123, -3.99962616, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.150000006, 3.5))
Part=partt(Enum.FormFactor.Brick,modelzorz,Enum.Material.SmoothPlastic,Enum.PartType.Block,0,"Bright red","Part",Vector3.new(1, 1, 1))
Partweldd=weldd(modelzorz,HANDLE,Part,CFrame.new(0, 0, 0, 0.043416772, -0.17276606, 0.984005868, 0.0291769188, -0.98429507, -0.174104139, 0.998630822, 0.0362692773, -0.0376941077),CFrame.new(-0.000579833984, 0.000205993652, -3.0497818, 0.029236082, -0.984281838, -0.174168929, 0.998629391, 0.0363290943, -0.0376763903, 0.0434115939, -0.172828749, 0.983994961))
meshh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.25, 3))
local handlewld = weld(handle, handle, Torso, euler(-1.8, 0, 0) * cf(-1.1, 1, 0.65))
local wing1 = part(3, nil, 0, 1, BrickColor.new(NewCol), "Wing", vt())
local wmsh1 = mesh("SpecialMesh", wing1, "FileMesh", "92135508", vt(0, 0, 0), vt(0.8, 0.8, 0.8))
local wing2 = part(3, nil, 0, 1, BrickColor.new(NewCol), "Wing", vt())
local wmsh2 = mesh("SpecialMesh", wing2, "FileMesh", "92135524", vt(0, 0, 0), vt(0.8, 0.8, 0.8))
local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
local parti = it("ParticleEmitter")
parti.Color = cs(NewCol, NewCol)
parti.LightEmission = 0
parti.Size = ns(1)
parti.Texture = "http://www.roblox.com/asset/?id=242842525"
sizeseq = ns({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0.2)})
transseq = ns({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 1)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.Acceleration = vt(0, -0.5, 0)
parti.Lifetime = nr(5, 7)
parti.Rate = 1
parti.RotSpeed = nr(30)
parti.Speed = nr(2)
parti.VelocitySpread = 90
parti.Enabled = true
parti.Parent = wing1
parti2 = parti:Clone()
parti2.Parent = wing2
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(prt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox2", vt())
hitbox.Anchored = false
local hbwld = weld(hitbox, hitbox, RootPart, euler(0, 0, 0) * cf(0, 0, 0))
local hitbox2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
hitbox2.Anchored = true
local hitboxCF = cf(0, 0, 0)
hboxpos = Instance.new("BodyPosition", nil)
hboxpos.P = 2000
hboxpos.D = 100
hboxpos.maxForce = Vector3.new(545000, 545000, 545000)
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = prt5
end
parti.Parent = hitbox
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Needle"
  script.Parent = Tool
  Bin = Tool
end
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

hideanim = function()
  equipped = false
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.5, 1.4, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, cf(0, -1, 0) * euler(0, -1.2, 0) * euler(-0.25, -1.2, -0.4), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.25, 0, -0.3), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.3), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(0.1, 0.3, -0.5) * euler(0, 0, 0.1) * euler(0, -1, 0) * euler(1, -1.2, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  mdec.Parent = nil
  handlewld.Part1 = Torso
  handlewld.C0 = euler(-1.8, 0, 0) * cf(-1.1, 1, 0.65)
  wld1.C0 = cf(0, 0, 0) * euler(0, 0, 0)
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  mdec.Parent = Decrease
  mdec2.Parent = nil
end

mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  for i = 0, 1, 0.11 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.25, 0, -0.3), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.7, 0) * euler(0, 0, 1), 0.1)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(0, 0.3, -0.5) * euler(0, 0, 0.1) * euler(0, -1, 0) * euler(0.8, -1.2, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
  end
  handlewld.Part1 = LeftArm
  handlewld.C0 = euler(1.5, 0.8, 0) * euler(0, 0, -1) * cf(-0.8, 1, 0)
  wld1.C0 = cf(0, -1, 0) * euler(0, 0, 0)
  so("356423194", prt5, 1, 1)
  for i = 0, 1, 0.17 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.5, 1.4, 0) * euler(0, 0, 0) * cf(0.7, 1, 0), 0.25)
    wld1.C0 = clerp(wld1.C0, cf(0, -1, 0) * euler(0, -1.2, 0) * euler(-0.25, -1.2, -0.4), 0.25)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, -0.05), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.7, 0) * euler(0, 0, 1), 0.1)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.6, 0.5, -1.2) * euler(0, 0, 0.1) * euler(0, -1, 0) * euler(2, -1.2, 0), 0.15)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  mdec2.Parent = Decrease
end

StaggerAnim = function()
  attack = true
  removeControl()
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.35 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -40
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, 0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.9) * euler(0, 0.7, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.4, -0.2, 0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -40
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.4, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, 0.6) * euler(0, 0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.9) * euler(0, 0.7, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.5, -0.2, 0.5), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0) * euler(0.1, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, 0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, -0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.3, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.2, 0) * euler(-0.4, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.8) * euler(0, -1.57, 0) * euler(0, 0.2, -0.1), 0.3)
  end
  for i = 1, 40 do
    swait()
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    resumeControl()
    combo = 0
    attack = false
  end
end

StaggerHitt = function()
  attack = true
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.9) * euler(0, 0.7, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.2, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.3)
  end
  attack = false
end

StunAnim = function()
  attack = true
  removeControl()
  Stunned.Value = true
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1, 0, 0.4) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.3), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.8, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1.2, 0, 0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(0.1, 0, 0.7), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -1), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1.57, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, -0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.3), 0.25)
  end
  local gairost = Instance.new("BodyGyro")
  gairost.Parent = RootPart
  gairost.maxTorque = Vector3.new(400000, 0, 400000) * math.huge
  gairost.P = 20000
  gairost.cframe = cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * euler(1.57, 0, -3.14), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1.5) * euler(0.2, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1.57) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0), 0.3)
  end
  for i = 1, 70 do
    swait()
    gairost.cframe = RootPart.CFrame
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
  end
  for i = 0, 1, 0.2 do
    swait()
    Stun.Value = 0
    gairost.cframe = RootPart.CFrame
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1, 0, -4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1) * euler(0.2, -1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, 0.2) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 1), 0.3)
  end
  resumeControl()
  gairost.Parent = nil
  dec.Parent = nil
  Stun.Value = 0
  combo = 0
  Stunned.Value = false
  attack = false
  for i = 1, 10 do
    swait()
    Stun.Value = 0
  end
end

dattackone = function()
  if sprint then
    Sprint()
  end
  attack = true
  iscombo = true
  for i = 0, 1, 0.16 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(-0.5, 0, 0), 0.45)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.1), 0.45)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.45)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2), 0.45)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1, 0, 1) * euler(0, -1, 0), 0.45)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.45)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("356430004", prt5, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.2, 5, 1.2)
  hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.22 do
    swait()
    hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
    hitbox.CFrame = hitboxCF
	MagniDamage(hitbox, 5, 4, 6, math.random(3, 5), "Normal", RootPart, 0.5, 1, (math.random(2, 4)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0.5, 0, 0), 0.45)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.1), 0.45)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.45)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.4), 0.45)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1) * euler(0, -0.6, 0), 0.45)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.45)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  iscombo = false
  attack = false
end

dattacktwo = function()
  if sprint then
    Sprint()
  end
  attack = true
  iscombo = true
  for i = 0, 1, 0.2 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(-0.75, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.1), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 0.5), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.8) * euler(0, -0.5, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.4) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145146", prt5, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.2, 5, 1.2)
  hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.15 do
    swait()
    hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
    hitbox.CFrame = hitboxCF
	MagniDamage(hitbox, 5, 4, 6, math.random(3, 5), "Normal", RootPart, 0.5, 1, (math.random(2, 4)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0.75, 0, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.2), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.3) * euler(1, 0, -0.1) * euler(0, 0.5, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0.4), 0.5)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  iscombo = false
  attack = false
end

dattackthree = function()
  if sprint then
    Sprint()
  end
  attack = true
  iscombo = true
  for i = 0, 1, 0.2 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.25, 0) * euler(-1, 0, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.1), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 0.5), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -1) * euler(0, -0.5, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.4) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145204", prt5, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.2, 5, 1.2)
  hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.15 do
    swait()
    hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
    hitbox.CFrame = hitboxCF
	MagniDamage(hitbox, 5, 4, 6, math.random(3, 5), "Normal", RootPart, 0.5, 1, (math.random(2, 4)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0.7, 0, -0.25), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.2), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.3) * euler(1, 0, 0.2) * euler(0, 0.5, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0.4), 0.5)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  iscombo = false
  attack = false
end

dattackfour = function()
  if sprint then
    Sprint()
  end
  attack = true
  iscombo = true
  so("199145327", prt5, 1, 1)
  for i = 0, 1, 0.12 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -1.5) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.2, -4.5), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 4.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(-40), 0) * euler(math.rad(90), 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 0, 0.3) * euler(0, 0, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC238: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC238: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.2, 5, 1.2)
  hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.14 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 45
    end
    hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
    hitbox.CFrame = hitboxCF
	MagniDamage(hitbox, 5, 4, 6, math.random(3, 5), "Normal", RootPart, 0.5, 1, (math.random(2, 4)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -3.2) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0.2, -4.5), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 4.5), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(100), 0) * euler(math.rad(90), 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 0, 0.8) * euler(0, 0, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC527: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC527: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  iscombo = false
  attack = false
end

Sprint = function()
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if mana.Value >= 0 then
    if sprint then
      sprint = false
    else
      sprint = true
    end
    local dbf = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = -0.35 - Humanoid.Health / (Humanoid.MaxHealth + 400)
    local dec2 = Instance.new("NumberValue", Decrease)
    dec2.Name = "DecreaseDef"
    dec2.Value = 0.25
    repeat
      swait()
      if msprintnum < 7 then
        msprintnum = msprintnum + 1
        dbf = dbf + 1
      else
        msprintnum = 0
        mana.Value = mana.Value - math.floor(1 / (Humanoid.Health / Humanoid.MaxHealth))
        if dbf >= 25 then
          MagniDebuff(Torso, 25, "Movement", 0.05, 70)
          dbf = 0
        end
      end
    until mana.Value <= 0 or sprint == false
    dec.Parent = nil
    dec2.Parent = nil
    sprint = false
  end
end

do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] then
    if sprint == false and mana.Value >= 15 then
      attack = true
      lastskill = 1
      cooldowns[1] = 0
      mana.Value = mana.Value - 15
      for i = 0, 1, 0.12 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0.6, 0, -1), 0.2)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, 0, -0.5), 0.2)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.7, 0, 0) * euler(0, 0, 0.9), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC253: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC253: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      for i = 0, 1, 0.4 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.7)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(-0.3, 0, 0.5), 0.7)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.7)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.7)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 0.5), 0.7)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.7)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0) * euler(0, 0, 0.9), 0.7)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.7)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC417: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC417: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      for i = 0, 1, 0.35 do
        swait()
      end
      so("356427062", prt5, 1, 1)
      MagicCircle(BrickColor.new("White"), "Neon", cf(Torso.Position), 3, 3, 3, 8, 8, 8, 0.1, 1)
      if Humanoid.Health > 30 then
        DecreaseStat(Character, "Damage", -0.2, 350)
        DecreaseStat(Character, "Movement", -0.1, 330)
      else
        DecreaseStat(Character, "Damage", -0.1, 330)
        DecreaseStat(Character, "Movement", -0.2, 350)
      end
      for i = 0, 1, 0.2 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(1.5, 0, 0.5), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 0.5), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0) * euler(0, 0, -0.9), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC642: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC642: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    else
      if sprint and mana.Value >= 10 then
        if sprint then
          Sprint()
        end
        lastskill = 1
        cooldowns[1] = 0
        mana.Value = mana.Value - 10
        attack = true
        stopwalk = true
        Humanoid.Jump = true
        MagicWave(BrickColor.new("Institutional white"), RootPart.CFrame * euler(1.57, 0, 0), 1, 1, 1, 1, 1, 1, 0.1)
        MagicRing(BrickColor.new("Institutional white"), RootPart.CFrame * cf(0, 0, -1) * euler(0, 0, 0), 1, 1, 1, 1, 1, 1, 0.1)
        for i = 0, 1, 0.18 do
          swait()
          Torso.Velocity = RootPart.CFrame.lookVector * 90
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
          wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.5, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.5, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.6) * euler(0, 0.45, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.7) * euler(0, 1.57, 0) * euler(0, 0, -0.5), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.4), 0.4)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC936: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC936: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
    stopwalk = false
    attack = false
  end
end

do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] then
    if sprint == false and mana.Value >= 20 then
      cooldowns[2] = 0
      lastskill = 2
      apierce = true
      dashhit = false
      dashing = false
      dhits = 0
      dbuffs = 0
      attack = true
      mana.Value = mana.Value - 20
      for i = 0, 1, 0.15 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -1.5) * cf(0, 1, 0), 0.2)
        wld1.C0 = clerp(wld1.C0, cf(0.15, 0, 0) * euler(0, 0, 0.5), 0.2)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -4.5), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, -0.25, 4.5), 0.2)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, 0) * euler(0, 0, -1.6) * euler(0.8, 0.5, 0), 0.2)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(-50), 0) * euler(math.rad(90), 0, 0), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, -4.7, 0) * euler(-0.15, 0, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 4.7, 0) * euler(-0.25, 0, -0.35), 0.2)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC277: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC277: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 0.75
      for i = 0, 1, 0.35 do
        swait()
      end
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(1.8, 10.2, 1.8)
      hitboxCF = prt5.CFrame * cf(0, 10, 0)
      hitbox.CFrame = hitboxCF
      dashing = true
      so("199145327", prt5, 1, 0.8)
      for i = 0, 1, 0.1 do
        swait()
        if Rooted.Value == false then
          Torso.Velocity = RootPart.CFrame.lookVector * 100
        end
        MagicWave(BrickColor.new(NewCol2), prt7.CFrame * euler(0, i, math.rad(180)) * cf(0, -4.5, 0), 0.15, 1, 0.15, 0.75, 0.15, 0.75, 0.15, 1)
        MagicSpike(BrickColor.new(NewCol2), prt7.CFrame * euler(0, i, math.rad(0)) * cf(0, 8, 0), 0.18, 7, 0.18, 0.35, 0.01, 0.35, 0.15, 1)
        hitboxCF = prt5.CFrame * cf(0, 4.8, 0)
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 6, 5, 9, math.random(45, 65), "Normal", RootPart, 0.2, 2, (math.random(3, 5)), nil, true, false, "Defense", 0.05, 400)
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -3) * cf(0, 1, 0), 0.5)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0.35), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0.3, -4.5), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 4.5), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(70), 0) * euler(math.rad(90), 0, 0), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 0, 0.8) * euler(0, 0, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.5)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC650: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC650: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      Torso.Velocity = RootPart.CFrame.lookVector * 0
      if dashhit then
        cooldowns[2] = cooldowns[2] + dhits * 15
        DecreaseStat(Character, "Movement", -dbuffs, 200)
      end
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      apierce = false
      dashing = false
      dashhit = false
      dec.Parent = nil
      attack = false
    else
      do
        if sprint and mana.Value >= 10 then
          attack = true
          cooldowns[2] = 0
          lastskill = 2
          doing2s = true
          sprinthit = false
          mana.Value = mana.Value - 10
          for i = 0, 1, 0.3 do
            swait()
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.7, 0) * euler(0, 0, 0.5), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.3, -0.5) * euler(0, 0, -0.5), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.2)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC920: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC920: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          for i = 0, 1, 0.14 do
            swait()
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.25)
            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.25)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.25)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.25)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.7, 0) * euler(0, 0, 1), 0.25)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
            LW.C0 = clerp(LW.C0, cf(0, 0.3, -0.5) * euler(0, 0, -0.5) * euler(0, -1, 0) * euler(0.8, -1.4, 0), 0.25)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.25)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.25)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC1138: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1138: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          so("356430004", prt5, 1, 1)
          hbwld.Parent = nil
          hboxpos.Parent = hitbox
          hitbox.Parent = modelzorz
          hitbox.Size = vt(1.2, 5, 1.2)
          hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
          hitbox.CFrame = hitboxCF
          local oldCF = RightArm.CFrame * cf(0, -2, 0.5)
          for i = 0, 1, 0.15 do
            swait()
            hitboxCF = prt5.CFrame * cf(0, 2.8, 0)
            hitbox.CFrame = hitboxCF
            MagniDamage(hitbox, 5, 6, 10, math.random(20, 23), "Normal", RootPart, 0.5, 1, (math.random(5, 6)), nil, true, false, "Defense", 0.1, 400)
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0.5, 0, 0), 0.4)
            Neck.C0 = clerp(Neck.C0, necko * euler(-0.25, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.7, 0) * euler(0, 0, 1), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 1, 0) * euler(0, 0, -1.25) * euler(0, -1, 0) * euler(-0.8, 1.4, 0), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
            if i > 0.15 then
              effect2(NewCol, 0, prt7.CFrame * cf(0, 0, 6), oldCF, nil, 0.4, 2)
              oldCF = prt7.CFrame * cf(0, 0, 6)
            end
            if Stagger.Value ~= true then
              do
                if StunT.Value <= Stun.Value then
                  break
                end
                -- DECOMPILER ERROR at PC1457: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1457: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          if sprint then
            Sprint()
          end
          hitbox.Parent = modelzorz
          hitbox.Size = vt()
          hitboxweld()
          hboxpos.Parent = nil
          if sprinthit then
            mana.Value = mana.Value + 15
            DecreaseStat(Character, "Damage", -0.15, 400)
            cooldowns[2] = cooldowns[2] + 60
          end
        end
        do
          attack = false
        end
      end
    end
  end
end

do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] then
    if sprint == false and mana.Value >= 25 then
      cooldowns[3] = 0
      lastskill = 3
      attack = true
      chit = false
      doing3 = true
      mana.Value = mana.Value - 25
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 10
      for i = 0, 1, 0.2 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.45)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.45)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(1, 0, 0.2) * cf(0, -2, 0), 0.45)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0.5), 0.45)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
        LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(2.5, 0, 0.7) * euler(0, -1, 0), 0.45)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
        RH.C0 = clerp(RH.C0, cf(1, 0.8, 0.15) * euler(0, 1.57, 0) * euler(-0.45, 0, 0.8), 0.45)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0.45), 0.45)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC266: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC266: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(2, 6.5, 2)
      hitboxCF = prt7.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      so("356221198", prt5, 1, 1)
	  MagniDamage(hitbox, 4, 6, 9, math.random(10, 15), "Normal", RootPart, 0.5, 2, math.random(12, 15), true, true, false, "Movement", 0.15, 500)
      for i = 0, 1, 0.17 do
        swait()
        hitboxCF = prt7.CFrame * cf(0, 0, 0)
        hitbox.CFrame = hitboxCF
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(1, 0, 0), 0.45)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.5, 0, 0.5), 0.45)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(1, 0, 0.2) * cf(0, -2, 0), 0.45)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.47, 0, 0.4), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, -1.6) * euler(0, -1.8, 0), 0.45)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
        RH.C0 = clerp(RH.C0, cf(1, 0.8, 0.15) * euler(0, 1.57, 0) * euler(-0.45, 0, 0.8), 0.45)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0.45), 0.45)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC551: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC551: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      if chit then
        cooldowns[3] = cooldowns[3] + 15
      end
      dec.Parent = nil
      attack = false
    else
      do
        if sprint and mana.Value >= 15 then
          cooldowns[3] = 0
          lastskill = 3
          chit = false
          doing3 = true
          mana.Value = mana.Value - 15
          attack = true
          stopwalk = true
          removeControl()
          for i = 0, 1, 0.18 do
            swait()
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.6) * euler(0, 0.45, 0), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.7) * euler(0, 1.57, 0) * euler(0, 0, -0.3), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 1), 0.3)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC816: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC816: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          resumeControl()
          Humanoid.Jump = true
          Torso.Velocity = RootPart.CFrame.lookVector * 75 + vt(0, 1.5, 0) * 5
          hbwld.Parent = nil
          hboxpos.Parent = hitbox
          hitbox.Parent = modelzorz
          hitbox.Size = vt(2, 6.5, 2)
          hitboxCF = prt7.CFrame * cf(0, 0, 0)
          hitbox.CFrame = hitboxCF
          for i = 0, 1, 0.08 do
            swait()
            -- DECOMPILER ERROR at PC884: Unhandled construct in 'MakeBoolean' P3

            if (i > 0.16 and i < 0.25) or i <= 0.72 or i > 0.96 and i < 1 then
              so("356221198", prt5, 1, 1)
            end
            hitboxCF = prt7.CFrame * cf(0, 0, 0)
            hitbox.CFrame = hitboxCF
            MagniDamage(hitbox, 6, 7, 9, math.random(3, 5), "Normal", RootPart, 0.15, 2, math.random(3, 5), false, true, false, "Damage", 0.1, 350)
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
            Neck.C0 = clerp(Neck.C0, necko * euler(-0.5, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(1.57 + i * 12, -1.57, 1.57), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -1 + i, -1.57) * euler(0, 0, 0), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.7) * euler(0, 1.57, 0) * euler(0, 0, -0.5), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 1), 0.4)
            if Stagger.Value ~= true then
              do
                if StunT.Value <= Stun.Value then
                  break
                end
                -- DECOMPILER ERROR at PC1125: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1125: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          hitbox.Parent = modelzorz
          hitbox.Size = vt()
          hitboxweld()
          hboxpos.Parent = nil
          if chit == false and sprint then
            Sprint()
          end
          stopwalk = false
        end
        attack = false
      end
    end
  end
end

do4 = function()
  if attack == true then
    return 
  end
  if sprint then
    Sprint()
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and mana.Value >= 50 then
    cooldowns[4] = 0
    lastskill = 4
    attack = true
    mana.Value = mana.Value - 50
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0.6, 0, -1), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, 0, -0.5), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.7, 0, 0) * euler(0, 0, 0.9), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC251: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC251: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("356425259", prt5, 1, 1)
    for i = 0, 1, 0.3 do
      swait()
      MagicCircle(BrickColor.new("Buttermilk"), "Neon", cf(prt7.Position) * cf(0, 0, 0), 30, 30, 30, -3, 0.5, -3, 0.1, 1)
    end
    for i = 0, 1, 0.4 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.7)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(-0.3, 0, 0.5), 0.7)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.7)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.7)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 0.5), 0.7)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.7)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0) * euler(0, 0, 0.9), 0.7)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.7)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC449: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC449: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -1.5) * cf(0, 1, 0), 0.2)
      wld1.C0 = clerp(wld1.C0, cf(0.15, 0, 0) * euler(0, 0, 0.5), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -4.5), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, -0.25, 4.5), 0.2)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0) * euler(0, 0, -1.6) * euler(0.8, 0.5, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(-50), 0) * euler(math.rad(90), 0, 0), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, -4.7, 0) * euler(-0.15, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 4.7, 0) * euler(-0.25, 0, -0.35), 0.2)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC675: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC675: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 0.25
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(2, 8.7, 2)
    hitboxCF = prt5.CFrame * cf(0, 10, 0)
    hitbox.CFrame = hitboxCF
    prt7.Transparency = 1
    prt6.Transparency = 1
    local sndtab = {"356215636", "356215754", "356215880", "356215987"}
    for i = 0, 1, 0.22 do
      swait()
      hitboxCF = prt5.CFrame * cf(0, 4.7, 0)
      hitbox.CFrame = hitboxCF
      MagicCircle(BrickColor.new("Institutional white"), "SmoothPlastic", cf(prt7.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.rad(prt7.Rotation.X), 0, math.rad(prt7.Rotation.Z)) * euler(math.rad(math.random(-15, 15)), math.rad(math.random(-15, 15)), math.rad(math.random(-15, 15))), 2, 30, 2, -0.5, 1, -0.5, 0.15, 1)
      MagniDamage(hitbox, 7, 4, 5, 0, "Normal", RootPart, 0.25, 2, 1, nil, true, false, "Defense", 0.025, 350)
      so(sndtab[math.random(1, #sndtab)], prt5, 0.8, math.random(9, 11) / 10)
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -3) * cf(0, 1, 0), 0.5)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0.35), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0.3, -4.5), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 4.5), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(70), 0) * euler(math.rad(90), 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.8, 0) * euler(0, 0, 0.4) * euler(0, -4.7, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.15) * euler(0, 4.7, 0), 0.5)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      for i = 1, 6 do
        for i = 0, 1, 0.23 do
          swait()
          StaggerHit.Value = false
          hitboxCF = prt5.CFrame * cf(0, 4.5, 0)
          hitbox.CFrame = hitboxCF
          MagniDamage(hitbox, 7, 4, 5, 0, "Normal", RootPart, 0.2, 2, 1, nil, true, false, "Defense", 0.025, 350)
          MagicCircle(BrickColor.new("Institutional white"), "SmoothPlastic", cf(prt7.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.rad(prt7.Rotation.X), 0, math.rad(prt7.Rotation.Z)) * euler(math.rad(math.random(-15, 15)), math.rad(math.random(-15, 15)), math.rad(math.random(-15, 15))), 2, 30, 2, -0.5, 1, -0.5, 0.15, 1)
          so(sndtab[math.random(1, #sndtab)], prt5, 0.8, math.random(9, 11) / 10)
          handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -3) * cf(0, 1, 0), 0.5)
          wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0.35), 0.5)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0.25, -4.5), 0.5)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 4.5), 0.5)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1) * euler(0, 0, 0), 0.5)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(math.random(30, 90)), 0) * euler(math.rad(math.random(70, 110)), 0, math.rad(math.random(-10, 10))), 0.5)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          RH.C0 = clerp(RH.C0, cf(1.1, -0.8, 0) * euler(0, 0, 0.4) * euler(0, -4.7, 0), 0.5)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.15) * euler(0, 4.7, 0), 0.5)
        end
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        prt7.Transparency = 0
        prt6.Transparency = 0
        for i = 0, 1, 0.12 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -1.5) * cf(0, 1, 0), 0.25)
          wld1.C0 = clerp(wld1.C0, cf(0.15, 0, 0) * euler(0, 0, 0.5), 0.25)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -4.5), 0.25)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, -0.25, 4.5), 0.25)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1), 0.25)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(-50), 0) * euler(math.rad(90), 0, 0), 0.25)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.25)
          RH.C0 = clerp(RH.C0, cf(1.1, -0.8, 0) * euler(0, 0, 0.4) * euler(0, -4.7, 0), 0.25)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 4.7, 0) * euler(-0.25, 0, -0.35), 0.25)
          if StunT.Value <= Stun.Value then
            break
          end
        end
        do
          hbwld.Parent = nil
          hboxpos.Parent = hitbox
          hitbox.Parent = modelzorz
          hitbox.Size = vt(2, 8.5, 2)
          hitboxCF = prt5.CFrame * cf(0, 10, 0)
          hitbox.CFrame = hitboxCF
          apierce = true
          so("356422588", prt5, 1, 1)
          for i = 0, 1, 0.24 do
            swait()
            Torso.Velocity = RootPart.CFrame.lookVector * 180
            hitboxCF = prt5.CFrame * cf(0, 4.5, 0)
            hitbox.CFrame = hitboxCF
            if i > 0.6 and i < 0.8 then
              MagicCircle(BrickColor.new("Institutional white"), "Neon", prt7.CFrame * cf(0, 2, 0), 3.25, 55, 3.25, -0.1, 2, -0.1, 0.05, 1)
              MagicWave(BrickColor.new("Institutional white"), prt7.CFrame * euler(0, i, math.rad(180)) * cf(0, 2, 0), 0.65, 2.5, 0.65, -0.01, 0.5, -0.01, 0.05, 1)
              MagicWave(BrickColor.new("Institutional white"), prt7.CFrame * euler(0, i, math.rad(180)) * cf(0, 6, 0), 2.5, 0.8, 2.5, -0.05, 0.25, -0.05, 0.05, 1)
              MagicCrown(BrickColor.new("Institutional white"), prt7.CFrame * euler(0, i, math.rad(180)) * cf(0, 9, 0), 2.45, 4, 2.45, -0.1, 0.1, -0.1, 0.05, 1)
            end
            MagniDamage(hitbox, 7, 10, 15, math.random(62, 66), "Normal", RootPart, 0.5, 2, (math.random(10, 14)), nil, true, false, "Defense", 0.15, 450)
            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -3.2) * cf(0, 1, 0), 0.7)
            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0.35), 0.7)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0.05, 1.25), 0.7)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, -1.25), 0.7)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, 0, 1), 0.7)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.7)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, math.rad(48), 0) * euler(math.rad(100), 0, 0), 0.7)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.7)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.8, 0) * euler(0, 0, 0.4) * euler(0, -4.7, 0), 0.7)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, 0.15) * euler(0, 4.7, 0), 0.7)
            if StunT.Value <= Stun.Value then
              break
            end
          end
          do
            apierce = false
            Torso.Velocity = RootPart.CFrame.lookVector * 0
            hitbox.Parent = modelzorz
            hitbox.Size = vt()
            hitboxweld()
            hboxpos.Parent = nil
            dec.Parent = nil
            stabbing = false
            attack = false
          end
        end
      end
    end
  end
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
      showDamage(Model, display, "Debuff")
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
              ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
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
              StaggerHit.Value = true
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
                if stun == nil then
                  stun = math.random(5, 10)
                end
                local Rang = nil
                if Ranged == false then
                  Rang = true
                end
                local stag = nil
                if shbash == true then
                  stag = true
                end
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

MagniBuff = function(Part, magni, Dec, DecAm, Dur, others)
  if Player.Neutral == true then
    DecreaseStat(Character, Dec, DecAm / 2, Dur)
  end
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        -- DECOMPILER ERROR at PC67: Unhandled construct in 'MakeBoolean' P1

        if others == nil and mag <= magni and Player.Neutral == false and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
          DecreaseStat(head.Parent, Dec, DecAm, Dur)
        end
      end
    end
    if Player.Neutral == false and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and mag <= magni and head.Parent ~= Character and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
      DecreaseStat(head.Parent, Dec, DecAm, Dur)
    end
  end
end

MagniDebuff = function(Part, magni, Dec, DecAm, Dur)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and (game.Players:GetPlayerFromCharacter(head.Parent).TeamColor ~= Player.TeamColor or Player.Neutral == true) then
          DecreaseStat(head.Parent, Dec, DecAm, Dur)
        end
      end
    end
    --DecreaseStat(head.Parent, Dec, DecAm, Dur)
  end
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
LastPoint = Point
effect = function(Color, Ref, LP, P1, returnn)
  if LP == nil or P1 == nil then
    return 
  end
  local effectsmsh = Instance.new("CylinderMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  effectsg.formFactor = 3
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
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  if not returnn then
    table.insert(Effects, {effectsg, "Cylinder", 0.2, 0.01, 0, 0.01, effectsmsh})
  end
end

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicCrown = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "1323306", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicSpike = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "1033714", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
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
      table.insert(Effects, {effectsg, "Cylinder", 0.05, -0.02, 0, -0.02, effectsmsh})
    else
      table.insert(Effects, {effectsg, "Cylinder", 0.1, -0.2, 0, -0.2, effectsmsh})
    end
  end
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

MagicCircle = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.Material = material
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

ClangEffect = function(brickcolor, cframe, duration, decrease, size, power)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "CylinderClang", duration, decrease, size, power, prt.CFrame, nil})
end

MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  if hit.Parent == nil then
    return 
  end
  if hit.Name == "Hitbox" and hit.Parent ~= modelzorz and ranged ~= true then
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(hit.Position)
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
    StaggerHit.Value = true
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    if Player.Neutral == false then
      if hit.Parent:findFirstChild("Alignment") ~= nil and hit.Parent.Alignment.Value == Player.TeamColor.Color then
        return 
      end
      if game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor == Player.TeamColor then
        return 
      end
    end
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    RecentEnemy.Value = hit.Parent
    game:GetService("Debris"):AddItem(c, 0.5)
    minim = minim * Atk.Value
    maxim = maxim * Atk.Value
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
    blocked = false
    enblock = nil
    Stats = hit.Parent:findFirstChild("Stats")
    if Stats ~= nil then
      invis = Stats:findFirstChild("Invisibility")
      isinvis = Stats:findFirstChild("IsInvisible")
      if (ranged == false or ranged == nil) and invis ~= nil and isinvis.Value == true then
        invis.Value = 0
      end
      enblock = Stats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if Stats:findFirstChild("Defense") ~= nil then
        Damage = Damage / Stats.Defense.Value
        if Damage <= 3 and (ranged == false or ranged == nil) and blocked ~= true then
          hitnum = math.random(1, 5)
          if hitnum == 1 then
            so("199149321", hit, 1, 1)
          else
            if hitnum == 2 then
              so("199149338", hit, 1, 1)
            else
              if hitnum == 3 then
                so("199149367", hit, 1, 1)
              else
                if hitnum == 4 then
                  so("199149409", hit, 1, 1)
                else
                  if hitnum == 5 then
                    so("199149452", hit, 1, 1)
                  end
                end
              end
            end
          end
        else
          if ranged == false or ranged == nil and blocked ~= true then
            hitnum = math.random(1, 6)
            if hitnum == 1 then
              so("199149137", hit, 1, 1)
            else
              if hitnum == 2 then
                so("199149186", hit, 1, 1)
              else
                if hitnum == 3 then
                  so("199149221", hit, 1, 1)
                else
                  if hitnum == 4 then
                    so("199149235", hit, 1, 1)
                  else
                    if hitnum == 5 then
                      so("199149269", hit, 1, 1)
                    else
                      if hitnum == 6 then
                        so("199149297", hit, 1, 1)
                      end
                    end
                  end
                end
              end
            end
          end
        end
        if Damage <= 3 and staghit == true and ranged ~= true then
          StaggerHit.Value = true
        end
      end
      if Stats:findFirstChild("Stun") ~= nil then
        if blocked == true then
          incstun = incstun / 2
        end
        if Stats.Stun.Value < Stats.StunThreshold.Value then
          Stats.Stun.Value = Stats.Stun.Value + incstun
        end
      end
      if Stats:findFirstChild("Stagger") ~= nil and stagger == true then
        Stats.Stagger.Value = true
      end
    end
    if blocked == true then
      showDamage(hit.Parent, "Block", "Damage")
      if ranged ~= true then
        enblock.Value = false
        Stagger.Value = true
        hitnum = math.random(1, 2)
        if hitnum == 1 then
          so("199148933", hit, 1, 1)
        else
          if hitnum == 2 then
            so("199148947", hit, 1, 1)
          end
        end
      end
    else
      Damage = math.floor(Damage)
      coroutine.resume(coroutine.create(function(Hum, Dam)
    CurrentHealth = Hum.Health
    h:TakeDamage(Damage)
  end), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if DecreaseState ~= nil then
        if DecreaseState == "Temporal" then
          DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
          DecreaseStat(hit.Parent, "Defense", DecreaseAmount, Duration)
        else
          if DecreaseState == "Temporal2" then
            DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
            DecreaseStat(hit.Parent, "Movement", DecreaseAmount, Duration)
          else
            DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
          end
        end
      end
      if smite == true then
        so("178452217", hit, 1, 1)
        smtarget = hit.Parent
        if smtarget:findFirstChild("Stats") ~= nil then
          d1 = Instance.new("NumberValue", smtarget.Stats.Decrease)
          d1.Name = "DecreaseAtk"
          d1.Value = 10
          dur1 = Instance.new("NumberValue", d1)
          dur1.Name = "Duration"
          dur1.Value = 9999
          d2 = Instance.new("NumberValue", smtarget.Stats.Decrease)
          d2.Name = "DecreaseDef"
          d2.Value = -9
          dur2 = Instance.new("NumberValue", d2)
          dur2.Name = "Duration"
          dur2.Value = 9999
          d3 = Instance.new("NumberValue", smtarget.Stats.Decrease)
          d3.Name = "DecreaseMvmt"
          d3.Value = 10
          dur3 = Instance.new("NumberValue", d3)
          dur3.Name = "Duration"
          dur3.Value = 9999
          ref2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref2.Anchored = true
          table.insert(Effects, {smtarget, "Smite", 500, d1, d2, d3, dur1, dur2, dur3, smtarget.Stats.Decrease, smtarget.Torso, ref2})
        end
      end
      if Type == "Knockdown" then
        hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Instance.new("BodyVelocity")
        bodvol.velocity = angle * knockback
        bodvol.P = 5000
        bodvol.maxForce = Vector3.new(8000, 8000, 8000)
        bodvol.Parent = hit
        rl = Instance.new("BodyAngularVelocity")
        rl.P = 3000
        rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        rl.Parent = hit
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      else
        do
          if Type == "Knockdown2" then
            hum = hit.Parent.Humanoid
            local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * knockback
            bodvol.P = 5000
            bodvol.maxForce = Vector3.new(8000, 8000, 8000)
            bodvol.Parent = hit
            game:GetService("Debris"):AddItem(bodvol, 0.5)
          else
            do
              if Type == "Normal" or Type == "NormalDecreaseMvmt1" then
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * knockback
                  end
                end
                game:GetService("Debris"):AddItem(vp, 0.5)
                if knockback > 0 then
                  vp.Parent = hit.Parent.Torso
                end
              end
              debounce = Instance.new("BoolValue")
              debounce.Name = "DebounceHit"
              debounce.Parent = hit.Parent
              debounce.Value = true
              game:GetService("Debris"):AddItem(debounce, Delay)
              c = Instance.new("ObjectValue")
              c.Name = "creator"
              c.Value = Player
              c.Parent = h
              game:GetService("Debris"):AddItem(c, 0.5)
              CRIT = false
            end
          end
        end
      end
    end
  end
end

showDamage = function(Char, Dealt, Type)
  m = Instance.new("Model")
  m.Name = "Effect"
  c = Instance.new("Part")
  c.Transparency = 1
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.formFactor = "Plate"
  c.Size = Vector3.new(1, 0.4, 1)
  b = Instance.new("BillboardGui", c)
  b.Size = UDim2.new(5, 0, 5, 0)
  b.AlwaysOnTop = true
  damgui = gui("TextLabel", b, tostring(Dealt), 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  if Type == "Damage" then
    damgui.Font = "SourceSans"
    if Dealt == "Block" then
      damgui.TextColor3 = BrickColor.new("Bright blue").Color
    else
      if Dealt < 3 then
        damgui.TextColor3 = BrickColor.new("White").Color
      else
        if Dealt >= 3 and Dealt < 20 then
          damgui.TextColor3 = BrickColor.new("Bright yellow").Color
        else
          damgui.TextColor3 = BrickColor.new("Really red").Color
          damgui.Font = "SourceSansBold"
        end
      end
    end
  else
    if Type == "Debuff" then
      damgui.TextColor3 = BrickColor.new("White").Color
    else
      if Type == "Interrupt" then
        damgui.TextColor3 = BrickColor.new("New Yeller").Color
      else
        if Type == "Heal" then
          damgui.TextColor3 = BrickColor.new("Bright green").Color
        end
      end
    end
  end
  damgui.TextScaled = true
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = cf(Char.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = cf(Char.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
    end
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(545000, 545000, 545000)
  if Type == "Damage" or Type == "Heal" then
    f.position = c.Position + Vector3.new(0, 3, 0)
  else
    if Type == "Debuff" or Type == "Interrupt" then
      f.position = c.Position + Vector3.new(0, 5, 0)
    end
  end
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 5)
  table.insert(Effects, {m, "showDamage", damgui, f, 10, 1, 15, 50, 100})
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
end

combo = 0
ob1d = function(mouse)
  if GuardStance == true and MMouse.Target ~= nil then
    if MMouse.Target.Parent.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent.Parent:findFirstChild("Torso") ~= nil then
      Target = MMouse.Target.Parent.Parent
      GuardStance = false
    end
    if MMouse.Target.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent:findFirstChild("Torso") ~= nil then
      Target = MMouse.Target.Parent
      GuardStance = false
    end
  end
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if combo == 0 then
    combo = 1
    dattackone()
  else
    if combo == 1 then
      combo = 2
      dattacktwo()
    else
      if combo == 2 then
        combo = 3
        dattackthree()
      else
        if combo == 3 then
          combo = 0
          dattackfour()
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

ob1u = function(mouse)
  hold = false
end

buttonhold = false
fenbarmove1.MouseButton1Click:connect(do1)
fenbarmove2.MouseButton1Click:connect(do2)
fenbarmove3.MouseButton1Click:connect(do3)
fenbarmove4.MouseButton1Click:connect(do4)
eul = 0
equipped = false
key = function(key)
  if attack == true then
    return 
  end
  if key == "f" then
    pressedf = true
    fnumb = 0
    attack = true
    if equipped == false then
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
      Animate.Parent = nil
      equipanim()
    else
      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      Animate.Parent = Humanoid
      swait(0)
      RW.Parent = nil
      LW.Parent = nil
      RSH.Parent = player.Character.Torso
      LSH.Parent = player.Character.Torso
    end
    attack = false
  end
  if equipped == false then
    return 
  end
  if key == "e" then
    Sprint()
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
  if key == "h" and (Player.Name == "speedydude900" or Player.Name == "Player" or Player.Name == "Player1") then
    mana.Value = 100
    cooldowns[1] = 100
    cooldowns[2] = 100
    cooldowns[3] = 100
    cooldowns[4] = 100
  end
  if attack == false then
    RecentEnemy.Value = nil
  end
end

key2 = function(key)
end

s = function(mouse)
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  player = Player
  ch = Character
  MMouse = mouse
end

ds = function(mouse)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Sievert loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local passivenum = 0
local walk = 0
local floornum = 0
local walkforw = true
while 1 do
  swait()
  if Humanoid.Health <= 0 then
    attack = true
    resumeControl()
    modelzorz.Parent = workspace
    game:GetService("Debris"):AddItem(modelzorz, 30)
    for i = 1, #Weapon do
      Weapon[i].Parent = modelzorz
      Weapon[i].CanCollide = true
    end
    for i = 1, #Welds do
      if Welds[i].Part0.Parent == Character or Welds[i].Part1.Parent == Character then
        Welds[i].Parent = nil
      else
        Welds[i].Parent = prt1
      end
    end
  end
  do
    if fnumb < 21 then
      fnumb = fnumb + 1
      if pressedf == false then
        fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency - 0.025
        tellbar.TextTransparency = tellbar.TextTransparency - 0.05
        tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency - 0.05
      else
        if fnumb == 20 then
          fenframe5.Parent = nil
          print("daigui")
        end
        fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency + 0.025
        tellbar.TextTransparency = tellbar.TextTransparency + 0.05
        tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency + 0.05
      end
    end
    if hbwld.Parent == nil then
      hitbox2.Name = "Hitbox"
    else
      hitbox2.Name = "Hitbox2"
    end
    hitbox2.Parent = hitbox.Parent
    hitbox2.Size = hitbox.Size
    hitbox2.CFrame = hitboxCF
    hboxpos.position = hitbox2.Position + vt(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100)
    passivenum = passivenum + 1
    if 80 <= passivenum then
      passivenum = 0
      if passive.Value < 0 then
        passive.Value = passive.Value / 2
        if 0 < passive.Value then
          passive.Value = 0
        end
      end
    end
    if Stagger.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerAnim()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end
))
    end
    if StaggerHit.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerHitt()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end
))
    end
    if Mvmt.Value < 0 or Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true or Rooted.Value == true then
      Humanoid.WalkSpeed = 0
    else
      Humanoid.WalkSpeed = 16 * Mvmt.Value
    end
    if StunT.Value <= Stun.Value and stunanim == false then
      coroutine.resume(coroutine.create(function()
  stunanim = true
  while attack == true do
    swait()
  end
  StunAnim()
  Stun.Value = 0
  stunanim = false
end
))
    end
    local stunnum2 = 30
    if stunnum2 <= stunnum then
      if 0 < Stun.Value then
        Stun.Value = Stun.Value - 1
      end
      stunnum = 0
    end
    stunnum = stunnum + 1
    if 0.5 <= donum then
      handidle = true
    else
      if donum <= 0 then
        handidle = false
      end
    end
    if handidle == false then
      donum = donum + 0.006
    else
      donum = donum - 0.006
    end
    local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y
    hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if equipped == true then
      if attack == false then
        idle = idle + 1
      else
        idle = 0
      end
      if (500 <= idle and attack ~= false) or Anim == "Walk" then
        if walkforw == true and stopwalk == false then
          RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
        else
          RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
        end
      else
        RH.C1 = clerp(RH.C1, RHC1, 0.2)
        LH.C1 = clerp(LH.C1, LHC1, 0.2)
      end
      if 1 < RootPart.Velocity.y and hitfloor == nil then
        Anim = "Jump"
        if attack == false then
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
          wld1.C0 = clerp(wld1.C0, cf(0, 0, 0), 0.2)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0), 0.2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.15)
              wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.15)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.4), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0.1, 0.1 + (donum) / 2), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.2 - (donum) / 2) * euler(0, 0 + (donum) / -2, 0), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0.1), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0.2), 0.2)
            end
          else
            if 2 < torvel and torvel < 65 and hitfloor ~= nil then
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
              if attack == false and sprint then
                hitfloor2 = rayCast(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
                floornum = floornum + 1
                if 5 <= floornum then
                  floornum = 0
                  if hitfloor2 ~= nil then
                    MagicBlock(hitfloor2.BrickColor, cf(RightLeg.Position) * cf(0, -0.6, 0), 4, 4, 4, 1, 1, 1, 0.05, 1, workspace)
                    MagicBlock(hitfloor2.BrickColor, cf(LeftLeg.Position) * cf(0, -0.6, 0), 4, 4, 4, 1, 1, 1, 0.05, 1, workspace)
                  end
                end
              end
              if attack == false then
                handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                wld1.C0 = clerp(wld1.C0, cf(0, 0, 0), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, -0.35), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0.35), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.25, 0, 0.2), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0.75, -0.35), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.35, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.35, 0), 0.2)
              end
            else
              if 95 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  handlewld.C0 = clerp(handlewld.C0, euler(-1.57, 0, 0) * cf(0, 1, 0), 0.4)
                  wld1.C0 = clerp(wld1.C0, cf(0, 1.5, 0), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.3, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.87, 0, -0.8) * euler(0, 0, 0), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.87, 0, 0.8) * euler(0, 0, 0), 0.4)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.2), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.7, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.2), 0.4)
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
            if Thing[2] == "CylinderClang" then
              if Thing[3] <= 1 then
                Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                Thing[7] = Thing[1].CFrame
                effect("New Yeller", 0, Thing[8], Thing[7])
                Thing[8] = Thing[7]
                Thing[3] = Thing[3] + Thing[4]
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "showDamage" then
              if Thing[6] < Thing[5] then
                Thing[6] = Thing[6] + 1
              else
                if Thing[6] < Thing[7] then
                  Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                  Thing[6] = Thing[6] + 1
                else
                  if Thing[6] < Thing[8] then
                    Thing[6] = Thing[6] + 1
                  else
                    if Thing[6] < Thing[9] then
                      Thing[6] = Thing[6] + 1
                      Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                      Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                      Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
                    else
                      Thing[1].Parent = nil
                      table.remove(Effects, e)
                    end
                  end
                end
              end
            end
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" then
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Block2" then
                    Thing[1].CFrame = Thing[1].CFrame
                    Mesh = Thing[7]
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Cylinder" then
                      Mesh = Thing[7]
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Blood" then
                        Mesh = Thing[7]
                        Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                        Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Elec" then
                          Mesh = Thing[7]
                          Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Disappear" then
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          end
                        end
                      end
                    end
                  end
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
    do
      fenbarmana2:TweenSize((UDim2.new(0.4, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
      fenbarmana4.Text = "Mana(" .. mana.Value .. ")"
      fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
      fenbarhp2:TweenSize((UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
      fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
      fenbarmove1b:TweenSize((UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
      fenbarmove2b:TweenSize((UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
      fenbarmove3b:TweenSize((UDim2.new(1 * cooldowns[3] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
      fenbarmove4b:TweenSize((UDim2.new(1 * cooldowns[4] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
      for _,c in pairs(Decrease:children()) do
        if (c:findFirstChild("Duration")) ~= nil then
          c.Duration.Value = c.Duration.Value - 1
          if c.Duration.Value <= 0 then
            c.Parent = nil
          end
        end
        if c.Name == "DecreaseAtk" then
          decreaseatk = decreaseatk + c.Value
        else
          if c.Name == "DecreaseDef" then
            decreasedef = decreasedef + c.Value
          else
            if c.Name == "DecreaseMvmt" then
              decreasemvmt = decreasemvmt + c.Value
            end
          end
        end
      end
      Atk.Value = 1 - (decreaseatk)
      if Atk.Value <= 0 then
        Atk.Value = 0
      end
      Def.Value = 1 - (decreasedef)
      if Def.Value <= 0 then
        Def.Value = 0.01
      end
      Mvmt.Value = 1 - (decreasemvmt)
      if Mvmt.Value <= 0 then
        Mvmt.Value = 0
      end
      decreaseatk = 0
      decreasedef = 0
      decreasemvmt = 0
      AtkVal = Atk.Value * 100
      AtkVal = math.floor(AtkVal)
      AtkVal = AtkVal / 100
      fenbardamage.Text = "Damage\n(" .. AtkVal .. ")"
      DefVal = Def.Value * 100
      DefVal = math.floor(DefVal)
      DefVal = DefVal / 100
      fenbardef.Text = "Defense\n(" .. DefVal .. ")"
      MvmtVal = Mvmt.Value * 100
      MvmtVal = math.floor(MvmtVal)
      MvmtVal = MvmtVal / 100
      if Rooted.Value == true then
        MvmtVal = 0
      end
      fenbarmove.Text = "Walkspeed\n(" .. MvmtVal .. ")"
      if StunT.Value <= Stun.Value then
        fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
      else
        fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
      end
      fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
      if 100 <= mana.Value then
        mana.Value = 100
      else
        if mananum <= 8 and sprint == false then
          mananum = mananum + 1
        else
          if 8 <= mananum then
            mananum = 0
            mana.Value = mana.Value + 1
          end
        end
      end
      for i = 1, #cooldowns do
        if cooldownmax <= cooldowns[i] then
          cooldowns[i] = cooldownmax
        else
          cooldowns[i] = cooldowns[i] + cooldownsadd[i]
        end
      end
      -- DECOMPILER ERROR at PC5997: LeaveBlock: unexpected jumping out DO_STMT

      -- DECOMPILER ERROR at PC5997: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end