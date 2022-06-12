--~Pix
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
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local guard = false
local blocknum = 0
local shbash = false
local move1 = "(Z)\nIcicle"
local move2 = "(X)\nShatter Sword"
local move3 = "(C)\nGlacier Shield"
local move4 = "(V)\nAbsolute Zero"
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
local cooldownadd1 = 0.2
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.35
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.15
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
local manualguardend = false
player = nil
RSH = nil
RW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW = Instance.new("Motor")
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
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

if Character:findFirstChild("Glaciem", true) ~= nil then
  Character:findFirstChild("Glaciem", true).Parent = nil
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
local Decrease = Instance.new("BoolValue")
Decrease.Name = "Decrease"
Decrease.Parent = Stats
Decrease.Value = false
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 0
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
local Rooted = Instance.new("BoolValue")
Rooted.Name = "Rooted"
Rooted.Parent = Stats
Rooted.Value = false
local RecentEnemy = Instance.new("ObjectValue")
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Parent = Stats
RecentEnemy.Value = nil
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
fenframe3.Name = "MoveFrame"
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
local fnumb = 0
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Bright blue").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarblock1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.6, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarblock2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Cyan").Color, UDim2.new(-0.6, 0, 0, 0), UDim2.new(0.4, 0, -2, 0))
local fenbarblock3 = gui("TextLabel", fenframe, "Block(" .. blocknum .. ")", 1, Color3.new(0, 0, 0), UDim2.new(-0.6, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbardamage = gui("TextLabel", fenframe2, "Damage", 0.55, Color3.new(0.6078431372549, 0, 0), UDim2.new(-0.23, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbardef = gui("TextLabel", fenframe2, "Defense", 0.55, Color3.new(0, 0, 0.6078431372549), UDim2.new(-0.46, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbarmove = gui("TextLabel", fenframe2, "Walkspeed", 0.55, Color3.new(0, 0.6078431372549, 0), UDim2.new(1.03, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbarhp1 = gui("TextLabel", fenframe2, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.46, 0, 1, 0), UDim2.new(1.92, 0, 0.4, 0))
local fenbarhp2 = gui("TextLabel", fenbarhp1, "", 0, Color3.new(1, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarhp3 = gui("TextLabel", fenbarhp1, "(100)", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
local fenbarstun1 = gui("TextLabel", fenframe4, "", 0, Color3.new(0, 0, 0), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarstun2 = gui("TextLabel", fenframe4, "", 0, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarstun3 = gui("TextLabel", fenframe4, "Stun(" .. Stun.Value .. ")", 1, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarmove1 = gui("TextButton", fenframe3, move1, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove1.ZIndex = 2
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new("Cyan").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new("Cyan").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new("Cyan").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new("Cyan").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Glaciem"
local prt1 = part(3, modelzorz, 0, 0, TorsoColor, "Part01", vt())
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part02", vt())
local prt3 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Part03", vt())
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Part04", vt())
local prt5 = part(3, modelzorz, 0, 0, BrickColor.new("Cyan"), "Part05", vt())
local prt6 = part(3, modelzorz, 0, 0, BrickColor.new("Cyan"), "Part06", vt())
local prt7 = part(3, modelzorz, 0, 0, BrickColor.new("Cyan"), "Part07", vt())
local prtt = part(3, modelzorz, 0.8, 0, BrickColor.new("Medium blue"), "Part09", vt())
local sprt1 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Shield Part01", vt())
local sprt2 = part(3, modelzorz, 0.5, 0, BrickColor.new("Cyan"), "Shield Part02", vt())
local sprt3 = part(3, modelzorz, 0.5, 0, BrickColor.new("Cyan"), "Shield Part03", vt())
local sprt4 = part(3, modelzorz, 0.5, 0, BrickColor.new("Cyan"), "Shield Part04", vt())
local sprt5 = part(3, modelzorz, 0.5, 0, BrickColor.new("Cyan"), "Shield Part05", vt())
local sprt6 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Shield Part06", vt())
local sprt7 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Shield Part07", vt())
local sprt8 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Shield Part08", vt())
local sprt9 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Shield Part09", vt())
local sprt10 = part(3, modelzorz, 0, 0, BrickColor.new("Medium blue"), "Shield Part10", vt())
local msh1 = mesh("SpecialMesh", prt1, "Head", "nil", vt(0, 0, 0), vt(2, 6, 2))
local msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(1.5, 8, 1.5))
local msh3 = mesh("SpecialMesh", prt3, "FileMesh", "9756362", vt(0, 0, 0), vt(0.6, 0.5, 0.6))
local msh4 = mesh("SpecialMesh", prt4, "FileMesh", "9756362", vt(0, 0, 0), vt(1.35, 0.35, 0.7))
local msh5 = mesh("BlockMesh", prt5, "", "", vt(0, 0, 0), vt(10, 1, 3))
local msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(3, 1.2, 3.1))
local msh7 = mesh("BlockMesh", prt7, "", "", vt(0, 0, 0), vt(3, 1.2, 3.1))
local msht = mesh("SpecialMesh", prtt, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 1.4, 0.31))
local smsh1 = mesh("BlockMesh", sprt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
local smsh2 = mesh("SpecialMesh", sprt2, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 6, 10))
local smsh3 = mesh("SpecialMesh", sprt3, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 6, 10))
local smsh4 = mesh("SpecialMesh", sprt4, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 6, 5))
local smsh5 = mesh("SpecialMesh", sprt5, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 6, 5))
local smsh6 = mesh("SpecialMesh", sprt6, "Wedge", "nil", vt(0, 0, 0), vt(1.2, 8, 12))
local smsh7 = mesh("SpecialMesh", sprt7, "Wedge", "nil", vt(0, 0, 0), vt(1.2, 8, 12))
local smsh8 = mesh("SpecialMesh", sprt8, "Wedge", "nil", vt(0, 0, 0), vt(1.2, 8, 7))
local smsh9 = mesh("SpecialMesh", sprt9, "Wedge", "nil", vt(0, 0, 0), vt(1.2, 8, 7))
local smsh10 = mesh("SpecialMesh", sprt10, "FileMesh", "187687193", vt(0, 0, 0), vt(3, 1, 3))
local wld1 = weld(prt1, prt1, sprt1, euler(0, 0, 0) * cf(0, 2.5, 0))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, 0, 0))
local wld3 = weld(prt1, prt3, prt2, euler(0, 0, 0) * cf(0, 0.8, 0))
local wld4 = weld(prt1, prt4, prt2, euler(0, 1.57, 0) * cf(0, -0.9, 0))
local wld5 = weld(prt1, prt5, prt4, euler(0, 0, 0) * cf(0, -0.05, 0))
local wld6 = weld(prt1, prt6, prt5, euler(0, 0, -1.4) * cf(-1, -0.2, 0))
local wld7 = weld(prt1, prt7, prt5, euler(0, 0, 1.4) * cf(1, -0.2, 0))
local wldt = weld(prt1, prtt, prt4, euler(0, 0, 0) * cf(0, -3.45, 0))
local swld1 = weld(prt1, sprt1, LeftArm, euler(-1.57, 0, 0) * cf(0.5, 0.5, 0))
local swld2 = weld(prt1, sprt2, sprt1, euler(-1.57, 0, 0) * cf(0.1, -0.8, -0.6))
local swld3 = weld(prt1, sprt3, sprt1, euler(-1.57, 3.14, 0) * cf(0.1, -0.8, 0.6))
local swld4 = weld(prt1, sprt4, sprt1, euler(-1.57, 0, 3.14) * cf(0.1, 0.7, -0.6))
local swld5 = weld(prt1, sprt5, sprt1, euler(-1.57, 3.14, 3.14) * cf(0.1, 0.7, 0.6))
local swld6 = weld(prt1, sprt6, sprt1, euler(-1.57, 0, 0) * cf(0.1, -1, -0.8))
local swld7 = weld(prt1, sprt7, sprt1, euler(-1.57, 3.14, 0) * cf(0.1, -1, 0.8))
local swld8 = weld(prt1, sprt8, sprt1, euler(-1.57, 0, 3.14) * cf(0.1, 0.9, -0.8))
local swld9 = weld(prt1, sprt9, sprt1, euler(-1.57, 3.14, 3.14) * cf(0.1, 0.9, 0.8))
local swld10 = weld(prt1, sprt10, sprt1, euler(0, 0, 1.57) * cf(0.25, 0, 0))
for i = 0, 180, 180 do
  for x = -20, 20, 40 do
    local lol = i - 90
    local lol2 = math.abs(lol / 480)
    local lol3 = x / 90
    local prt8 = part(3, modelzorz, 0.8, 0, BrickColor.new("Medium blue"), "Part08", vt())
    local msh8 = mesh("BlockMesh", prt8, "", "", vt(0, 0, 0), vt(0.2, 17.5, 2.97))
    local wld8 = weld(prt1, prt4, prt8, cf(0, 1.7, 0) * euler(0, math.rad(i + x) + 1.57, 0))
    wld8.C1 = cf(lol2, 0, -lol3) * euler(0, 0, 0)
  end
end
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
  hbwld.Part1 = prtt
end

if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Glaciem"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Frigost" then
  Bin.Name = "Glaciem"
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
  for i = 0, 1, 0.2 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.7, -0.2, 0.5) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -0.5) * euler(0, 1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, -1.2, -0.5), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  mdec2.Parent = nil
  wld1.Part1 = sprt1
  wld1.C0 = euler(0, 0, 0) * cf(0, 2.5, 0)
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
end

mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  for i = 0, 1, 0.2 do
    swait(1)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -0.5) * euler(0, 1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, -1.2, -0.5), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  mdec2.Parent = Decrease
  wld1.Part1 = RightArm
  wld1.C0 = euler(1.7, -0.2, 0.5) * cf(0, 1, 0)
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
  do
    if hit ~= nil then
      local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(ref, 1)
      MagicWave(BrickColor.new("Medium blue"), cf(ref.Position), 1, 1, 1, 1, 0.5, 1, 0.1)
    end
    for i = 0, 1, 0.1 do
      swait(1)
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, -0.2), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 1, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -1.4) * euler(0, -0.2, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    end
  end
end

IdleAnim = function()
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.1), 0.15)
    end
    for i = 0, 1, 0.2 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1), 0.15)
    end
  end
))
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -40
    end
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(-0.5, 0, -0.4), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.5), 0.4)
  end
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.4) * euler(0, -0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.9) * euler(0, -0.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  attack = false
end

StunAnim = function()
  attack = true
  Stunned.Value = true
  removeControl()
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
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

attackone = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait(1)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.3), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1.2) * euler(0, -2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.7, 0, 0.1) * euler(0, -0.4, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.3, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.3, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("199145841", prtt, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.1, 4, 0.5)
  hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait(1)
    hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 4, 5, 6, math.random(5, 10), "Normal", false, nil, nil, nil, math.random(2, 8), RootPart, 0.5, 1)
    wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 0) * cf(0, 0.8, -0.2), 0.25)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.3), 0.25)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.3), 0.25)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.2, 0, -1) * euler(0, -1, 0), 0.25)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.7, 0, -0.7) * euler(0, 0, 0), 0.25)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.3, 0), 0.25)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait(1)
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(-0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.2), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.2, 0, -0.8) * euler(0, 1, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.5, 0, -0.5), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.2, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.2, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("199145887", prtt, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.1, 4, 0.5)
  hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.15 do
    swait(1)
    hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 4, 5, 6, math.random(5, 10), "Normal", false, nil, nil, nil, math.random(2, 8), RootPart, 0.5, 1)
    wld1.C0 = clerp(wld1.C0, euler(2.2, 0, 0) * cf(0, 0.8, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.4, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.3) * euler(0, 0.2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(-0.5, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait(1)
    wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * cf(0, 0.8, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(-0.4, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.4), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.9, 0, -0.6) * euler(0, 0.2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.4) * euler(3, 0, 0.8) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.4, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.4, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("199145913", prtt, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.1, 4, 0.5)
  hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait(1)
    hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 4, 5, 6, math.random(5, 10), "Normal", false, nil, nil, nil, math.random(4, 10), RootPart, 0.5, 1)
    wld1.C0 = clerp(wld1.C0, euler(2.4, 0, 0) * cf(0, 0.8, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.4, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 0, 0) * euler(0, -1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.6, 0.5, -0.5) * euler(0.2, 0, 0.6) * euler(0, -1, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait(1)
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1.57, 0, 1.2) * euler(0, 0.2, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.25)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("199145935", sprt1, 1, 1)
  if Rooted.Value == false then
    Torso.Velocity = RootPart.CFrame.lookVector * 50
  end
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 3.5, 3)
  hitboxCF = sprt1.CFrame * cf(0, 0.3, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait(1)
    hitboxCF = sprt1.CFrame * cf(0, 0.3, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 7, 10, math.random(20, 30), "Knockdown2", false, nil, nil, nil, math.random(5, 15), RootPart, 1, 1)
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.6), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, 0, 1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  for i = 1, 5 do
    swait()
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  attack = false
end

Guard = function()
  attack = true
  manualguardend = false
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 0.4
  guard = true
  blocknum = blocknum - 20
  for i = 0, 1, 0.15 do
    swait(1)
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, 0, 1.27), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.3, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.3, 0), 0.3)
  end
  Block.Value = true
  while guard == true and Block.Value == true and blocknum > 1 do
    swait(1)
    blocknum = blocknum - 0.4
  end
  guard = false
  Block.Value = false
  if manualguardend == false and blocknum > 1 then
    so("199145967", prtt, 1, 1)
    blocknum = 0
    MagicCircle(BrickColor.new("Cyan"), cf(sprt1.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 80, 80, 80, 1, 1, 1, 0.02)
    MagicBlock(BrickColor.new("Cyan"), cf(sprt1.Position), 10, 10, 10, 2, 2, 2, 0.02, 1)
    MagniDamage(sprt1, 15, 10, 15, math.random(20, 40), "Knockdown2", true, "Movement", 0.2, 400, math.random(10, 20), RootPart, 0.2, 1)
    for i = 0, 1, 0.1 do
      swait(1)
      for i = 1, 2 do
        MagicSnowflake(BrickColor.new("White"), cf(sprt1.Position) * cf(math.random(-1000, 1000) / 100, math.random(-400, 1000) / 100, math.random(-1000, 1000) / 100), euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 0.02)
      end
    end
  end
  do
    dec.Parent = nil
    attack = false
  end
end

ShieldSlam = function()
  attack = true
  local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
  ref.Anchored = true
  ref.CFrame = RootPart.CFrame * cf(0, 0, -2)
  game:GetService("Debris"):AddItem(ref, 1)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("HumanoidRootPart")
      if head ~= nil and GetDist(head, ref, 3) == true and head.Parent:findFirstChild("Stats") ~= nil and head.Parent.Stats.Stunned.Value == true then
        Humanoid.WalkSpeed = 0
        for i = 0, 1, 0.2 do
          swait()
          wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.3)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1, 1, -0.5) * euler(2.5, 0, 1.3) * euler(0, 0, 0), 0.3)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        end
        hbwld.Parent = nil
        hboxpos.Parent = hitbox
        hitbox.Parent = modelzorz
        hitbox.Size = vt(1, 3.5, 3)
        hitboxCF = sprt1.CFrame * cf(0, 0.3, 0)
        hitbox.CFrame = hitboxCF
        con1 = hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 20, 25, math.random(5, 10), "Normal", RootPart, 1, 1, (math.random(5, 15)), nil, false)
  end
)
        for i = 0, 1, 0.15 do
          swait()
          hitboxCF = sprt1.CFrame * cf(0, 0.3, 0)
          hitbox.CFrame = hitboxCF
          wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0.6), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(0, 0, -0.6), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.3)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.2, -0.5) * euler(1.3, 0, 1) * euler(0, 0, 0), 0.3)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, 0.2, -0.4) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.2), 0.3)
        end
        con1:disconnect()
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        Humanoid.WalkSpeed = 16
      end
    end
  end
  attack = false
end

do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 25 then
    attack = true
    mana.Value = mana.Value - 25
    cooldowns[1] = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 1
    for i = 0, 1, 0.15 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * cf(0, 1, 0), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 1.3), 0.2)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -1.2) * euler(0, 1.3, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, 0.1) * euler(0, -0.7, 0), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(0, 1.3, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.3, 0), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 1.9) * euler(0, 1.57, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.5) * euler(0, -0.4, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(0, 1.57, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.57, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    num = -9
    for i = 1, 3 do
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        if StaggerHit.Value == true then
          break
        end
        cff = RootPart.CFrame * cf(0, -1, num)
        do
          local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
          ref.Anchored = true
          ref.CFrame = cff
          game:GetService("Debris"):AddItem(ref, 1)
          icehitfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
          if icehitfloor ~= nil then
            swait(1)
            so("199146035", ref, 1, 1)
            ref.CFrame = cff
            MagniDamage(ref, 10, 10, 15, 0, "Normal", true, "Movement", 0.1, 300, math.random(10, 20), ref, 0.5, 1)
            MagicIcicle(BrickColor.new("Cyan"), cff * cf(0, -4, 0), 6, 8, 6, 0.02)
          end
          swait(5)
          num = num - 10
        end
      end
    end
    dec.Parent = nil
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 15 then
    attack = true
    mana.Value = mana.Value - 15
    cooldowns[2] = 0
    so("199146109", prtt, 1, 1)
    for i = 0, 1, 0.3 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(-0.6, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2, 0, -1) * euler(0, 1.4, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.5, 0, -0.5), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(1.1, 4, 0.5)
    hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.1 do
      swait()
      hitboxCF = prtt.CFrame * cf(0, -1.2, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 4, 10, 15, math.random(5, 10), "Shatter", false, "Shatter", 0.2, 200, math.random(10, 20), RootPart, 0.5, 1)
      wld1.C0 = clerp(wld1.C0, euler(2.2, 0, 0) * cf(0, 0.8, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1.3) * euler(0, -0.3, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(-0.5, 0, -0.2), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    for i = 1, 10 do
      swait()
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    attack = false
  end
end

do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 30 then
    attack = true
    mana.Value = mana.Value - 30
    cooldowns[3] = 0
    for i = 0, 1, 0.2 do
      swait(1)
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 1, -0.5) * euler(2.5, 0, 1.3) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    for i = 0, 1, 0.15 do
      swait(1)
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0.6), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(0, 0, -0.6), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.4), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.2, -0.5) * euler(1.3, 0, 1) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.6, 0) * euler(0, 1.57, 0) * euler(0, 0, -1.3), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, 0.2, -0.4) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    if Stagger.Value ~= true then
      if StaggerHit.Value ~= true then
        so("199146181", sprt1, 1, 1)
        MagniDamage(Torso, 20, 6, 8, 0, "Normal", true, "Movement", 0.2, 100, math.random(5, 10), Torso, 0, 1)
        MagicCircle(BrickColor.new("Cyan"), cf(Torso.Position) * cf(0, -2, 0), 1, 1, 1, 5, 1, 5, 0.02)
        DecreaseStat(Character, "Defense", -0.3, 500)
        for i = 1, 20 do
          MagicSnowflake(BrickColor.new("White"), cf(Torso.Position) * cf(math.random(-1500, 1500) / 100, math.random(-100, 100) / 100, math.random(-1500, 1500) / 100), euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 0.01)
        end
        for i = 1, 10 do
          swait(1)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
            end
          end
        end
        for i = 0, 1, 0.2 do
          swait(1)
          wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.5), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.3)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1.57, 0, 1.2) * euler(0, 0.2, 0), 0.3)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.25)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.25)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
            end
          end
        end
        shbash = true
        so("199145327", sprt1, 1, 1)
        dist = 150
        if hitfloor == nil then
          dist = 100
        else
          if hitfloor.CanCollide == false then
            dist = 100
          end
        end
        if Rooted.Value == false then
          Torso.Velocity = RootPart.CFrame.lookVector * dist
        end
        hbwld.Parent = nil
        hboxpos.Parent = hitbox
        hitbox.Parent = modelzorz
        hitbox.Size = vt(1, 3.5, 3)
        hitboxCF = sprt1.CFrame * cf(0, 0.3, 0)
        hitbox.CFrame = hitboxCF
        for i = 0, 1, 0.05 do
          swait(1)
          hitboxCF = sprt1.CFrame * cf(0, 0.3, 0)
          hitbox.CFrame = hitboxCF
          MagniDamage(hitbox, 3, 10, 15, math.random(20, 30), "Knockdown2", false, nil, nil, nil, math.random(5, 15), RootPart, 0.5, 1)
          wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.1)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.1)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.6), 0.3)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, 0, 1), 0.1)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              if i >= 0.7 then
                Torso.Velocity = vt(0, 0, 0)
              end
            end
          end
        end
        Torso.Velocity = vt(0, 0, 0)
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        dec.Parent = nil
        shbash = false
        attack = false
      end
    end
  end
end

do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and mana.Value >= 50 then
    attack = true
    mana.Value = mana.Value - 50
    cooldowns[4] = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    so("199145761", Torso, 1, 1)
    so("199145793", Torso, 1, 1)
    MagniDamage(Torso, 20, 1, 4, math.random(-40, -20), "Knockdown2", true, "Movement", 0.2, 50, math.random(5, 7), Torso, 0, 1)
    for i = 0, 1, 0.1 do
      swait(1)
      MagicBlock(BrickColor.new("Cyan"), cf(Torso.Position) * cf(math.random(-1500, 1500) / 100, -3, math.random(-1500, 1500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
      for i = 1, 2 do
        MagicSnowflake(BrickColor.new("White"), cf(Torso.Position) * cf(math.random(-1500, 1500) / 100, math.random(-200, 1500) / 100, math.random(-1500, 1500) / 100), euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 0.02)
      end
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, 0, -1.2), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.3, 0, 1.4), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      for i = 0, 50 do
        swait(1)
        if i % 10 == 0 then
          MagniDamage(Torso, 20, 1, 4, 0, "Normal", true, nil, nil, nil, 1, Torso, 0, 1)
          print("derp")
        end
        MagicBlock(BrickColor.new("Cyan"), cf(Torso.Position) * cf(math.random(-1500, 1500) / 100, -3, math.random(-1500, 1500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
        for i = 1, 2 do
          MagicSnowflake(BrickColor.new("White"), cf(Torso.Position) * cf(math.random(-1500, 1500) / 100, math.random(-200, 500) / 100, math.random(-1500, 1500) / 100), euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 0.05)
        end
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        for i = 0, 1, 0.05 do
          swait(1)
          MagicBlock(BrickColor.new("Cyan"), cf(Torso.Position) * cf(math.random(-1500, 1500) / 100, -3, math.random(-1500, 1500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
          for i = 1, 2 do
            MagicSnowflake(BrickColor.new("White"), cf(Torso.Position) * cf(math.random(-1500, 1500) / 100, math.random(-200, 1500) / 100, math.random(-1500, 1500) / 100), euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 0.02)
          end
          wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.1)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.1)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.1)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 1.2), 0.1)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1.4), 0.1)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
          if StunT.Value <= Stun.Value then
            break
          end
        end
        do
          if StunT.Value ~= Stun.Value then
            so("199145739", Torso, 1, 1)
            MagniDamage(Torso, 25, 20, 30, math.random(40, 60), "Knockdown2", false, "Movement", 0.1, 9999, 100, Torso, 0, 1)
            MagicCircle(BrickColor.new("Cyan"), cf(Torso.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.02)
            MagicBlock(BrickColor.new("Cyan"), cf(Torso.Position), 10, 10, 10, 5, 5, 5, 0.02, 1)
            for i = 0, 1, 0.05 do
              swait(1)
              for i = 1, 2 do
                MagicSnowflake(BrickColor.new("White"), cf(Torso.Position) * cf(math.random(-2000, 2000) / 100, math.random(-200, 2000) / 100, math.random(-2000, 2000) / 100), euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 4, 4, 4, 0.02)
              end
              if StunT.Value == Stun.Value then
                break
              end
            end
            do
              for i = 1, 10 do
                swait()
                if StunT.Value <= Stun.Value then
                  break
                end
              end
              do
                dec.Parent = nil
                attack = false
              end
            end
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

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type, Ranged, Dec, DecAm, Dur, stun, KnockP, Deb, KnockType)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = nil
      for _,d in pairs(c:children()) do
        if d.className == "Model" and Ranged == false then
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
                Sou = nil
                if Type == "Shatter" then
                  Sou = "Shatter"
                end
                Damagefunc(head, mindam, maxdam, knock, Type, KnockP, Deb, KnockType, stun, stag, Rang, Ranged, Dec, DecAm, Dur, Sou)
              end
            end
          end
          do
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
  local mg = LP.p - point1.p.magnitude
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

MagicSnowflake = function(brickcolor, cframe, eul, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe * eul
  ID = ""
  rand = math.random(1, 3)
  if rand == 1 then
    ID = "187687161"
  else
    if rand == 2 then
      ID = "187687175"
    else
      ID = "187687193"
    end
  end
  msh = mesh("SpecialMesh", prt, "FileMesh", ID, vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Snowflake", delay, cframe, msh})
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
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

MagicIcicle = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "1778999", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  for i = 1, 5 do
    BreakEffect(BrickColor.new("Cyan"), prt.CFrame * cf(0, 4, 0), math.random(20, 80) / 100, math.random(2, 10), math.random(20, 80) / 100)
  end
  for i = 1, 15 do
    local freezepart = part(3, workspace, 0.5, 0.5, BrickColor.new("Bright blue"), "Ice Part", vt(math.random(1, 2) + math.random(), math.random(1, 2) + math.random(), math.random(1, 2) + math.random()))
    freezepart.Anchored = true
    freezepart.CanCollide = true
    freezepart.CFrame = cframe * cf(math.random(-300, 300) / 100, 4, math.random(-300, 300) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(freezepart, 10)
  end
  table.insert(Effects, {prt, "Ice", delay, msh, 1, 0.2})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  game:GetService("Debris"):AddItem(prt, 10)
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
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
    if Sound == "Shatter" then
      so("199146069", hit, 1, 1)
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
        if Sound ~= "Shatter" then
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
        end
        if Damage <= 3 and staghit == true then
          StaggerHit.Value = true
        end
      end
      if Stats:findFirstChild("Stun") ~= nil and Stats:findFirstChild("StunThreshold") ~= nil then
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
    damageFunc:InvokeServer(h, Damage)
  end
), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if DecreaseState ~= nil then
        if DecreaseState == "Shatter" then
          DecreaseStat(hit.Parent, "Movement", DecreaseAmount, Duration)
          DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
        else
          DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
        end
      end
      if Type == "Knockdown" then
        hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
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
          if Type == "Shatter" then
            for i = 1, 10 do
              BreakEffect(BrickColor.new("Cyan"), hit.CFrame, math.random(20, 80) / 100, math.random(2, 10), math.random(20, 80) / 100)
            end
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
                  if Type == "Normal" then
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
  if Type == "Damage" then
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
  if key == "e" and guard == true then
    guard = false
    manualguardend = true
  end
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
  if key == "e" and guard == false and blocknum == 100 then
    Guard()
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
print("Frigost loaded.")
local mananum = 0
local blocknum2 = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local walk = 0
local walkforw = true
local oldhealth = Humanoid.Health
while 1 do
  swait()
  col = Player.TeamColor
  for _,c in pairs(game.Teams:children()) do
    if c.TeamColor == col and c.Name == "Juggernaut" then
      isjugg = true
    end
  end
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
        Welds[i].Parent = cprt1
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
    if Humanoid.Health < oldhealth then
      damage = oldhealth - Humanoid.Health
      ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(Torso.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
      game:GetService("Debris"):AddItem(ref, 5)
      hitfloorsno = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloorsno ~= nil then
        local snow = part(3, effects, 0, 0, BrickColor.new("White"), "Snow", vt())
        snow.Anchored = true
        snow.Material = "Ice"
        snow.CFrame = cf(posfloorsno)
        smsh = mesh("CylinderMesh", snow, "", "", vt(0, 0, 0), vt(1, 2, 1))
        table.insert(Effects, {snow, "LeakSnow", smsh, math.random(300, 600), 50, math.random(3000, 9000) / 100})
      end
    end
    do
      oldhealth = Humanoid.Health
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
      local stunnum2 = 40
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
        donum = donum + 0.003
      else
        donum = donum - 0.003
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
            if walkforw == true then
              RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
              LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
            else
              RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
              LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
            end
          else
            RH.C1 = clerp(RH.C1, RHC1, 0.2)
            LH.C1 = clerp(LH.C1, LHC1, 0.2)
          end
          if 1 < RootPart.Velocity.y and hitfloor == nil then
            Anim = "Jump"
            if attack == false then
swait()
              Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
              Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5), 0.2)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1, 0, 0.8) * euler(0, -0.7, 0), 0.2)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
            end
          else
            if RootPart.Velocity.y < -1 and hitfloor == nil then
              Anim = "Fall"
              if attack == false then
swait()
                Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.2), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
              end
            else
              if torvel < 1 and hitfloor ~= nil then
                Anim = "Idle"
                if attack == false then
swait()
                  wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.15)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.15)
                  Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.15)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.15)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2 + (donum) / 5, 0, 0.4 - (donum) / 3), 0.15)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                  LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(0.7 + (donum) / 3, 0, 0.4 + (donum) / 3) * euler(0, -0.4, 0), 0.15)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                  RH.C0 = clerp(RH.C0, RHC0, 0.2)
                  LH.C0 = clerp(LH.C0, LHC0, 0.2)
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
                  if attack == false then
swait()
                    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.2)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, -0.5), 0.2)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4 + (donum) / 2, 0, 0.6 - (donum) / 1), 0.2)
                    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(0.5 + (donum) / 3, 0, 0.8 + (donum) / 3) * euler(0, -0.7, 0), 0.2)
                    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.6, 0), 0.2)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.2)
                  end
                else
                  if 30 < torvel and hitfloor ~= nil then
                    Anim = "Run"
                    if attack == false then
swait()
                      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.3, 0, 0), 0.4)
                      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.87, 0, -0.8) * euler(0, 3.14, 0), 0.4)
                      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.97, 0, 0.8) * euler(0, 0, 0), 0.4)
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
                      if Thing[2] == "Ice" then
                        if Thing[6] <= Thing[5] then
                          Thing[6] = Thing[6] + 0.05
                          Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.4, 0)
                        else
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        end
                      else
                        if Thing[2] == "Snowflake" then
                          Thing[1].CFrame = Thing[1].CFrame
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Shatter" then
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            Thing[4] = Thing[4] * cf(0, Thing[7], 0)
                            Thing[1].CFrame = Thing[4] * euler(Thing[6], 0, 0)
                            Thing[6] = Thing[6] + Thing[5]
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
          fenbarblock2:TweenSize((UDim2.new(0.4, 0, -4 * blocknum / 100, 0)), nil, 1, 0.4, true)
          fenbarblock3.Text = "Block(" .. math.floor(blocknum) .. ")"
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
            if mananum <= 8 then
              mananum = mananum + 1
            else
              mananum = 0
              mana.Value = mana.Value + 1
            end
          end
          if 100 <= blocknum then
            blocknum = 100
          else
            if blocknum2 <= 8 then
              blocknum2 = blocknum2 + 1
            else
              blocknum2 = 0
              blocknum = blocknum + 1
            end
          end
          for i = 1, #cooldowns do
            if cooldownmax <= cooldowns[i] then
              cooldowns[i] = cooldownmax
            else
              cooldowns[i] = cooldowns[i] + cooldownsadd[i]
            end
          end
          if 100 <= blocknum then
            blocknum = 100
          end
        end
      end
    end
    if blocknum2 <= 3 then
      blocknum2 = blocknum2 + 1
    end
  end
  blocknum2 = 0
  if guard == false then
    blocknum = blocknum + 1
  end

