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
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local gun = false
local shoot = false
local perfaim = false
local redimbue = false
local move1 = "(Z)\nFiery Wave"
local move2 = "(X)\nRed Field"
local move3 = "(C)\nRed Imbue"
local move4 = "(V)\nPower of Red"
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
local cooldownadd1 = 0.55
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.15
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.2
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.04
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 0
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
end)
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 40
tf = 0
allowframeloss = true
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
if Character:findFirstChild("Ignis", true) ~= nil then
  Character:findFirstChild("Ignis", true).Parent = nil
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
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 100
local passive = Instance.new("NumberValue", Decrease)
passive.Name = "DecreaseAtk"
passive.Value = 0
local passive2 = Instance.new("NumberValue", Decrease)
passive2.Name = "DecreaseMvmt"
passive2.Value = 0
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
local tellbar = gui("TextLabel", fenframe5, "-Damage buffs are slightly increased (+)\n-Fiery Wave moves slightly faster and lasts slightly longer (+)\n-Red Imbue mana cost slightly reduced (+)\n-Red Imbue does not buff damage anymore, but instead, all of Vulca\'s sword combo attacks creates a red wave (+/-)\n-Fiery Wave cooldown is slightly shorter but deals less damage (-)\n-Mana regain decreased and ability cooldowns also increased (-)\n-Defense debuffs are increased (-)", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
tellbar.Font = "Arial"
tellbar.TextScaled = true
tellbar.TextTransparency = 1
tellbar.TextStrokeTransparency = 1
tellbar.ZIndex = 2
local fnumb = 0
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Really red").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
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
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new("Bright red").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new("Bright red").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new("Bright red").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new("Bright red").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Ignis"
local prt1 = part(3, modelzorz, 0, 0, TorsoColor, "Part01", vt())
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part02", vt())
local prt3 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part03", vt())
local prt4 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part04", vt())
local prt8 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part08", vt())
local prt9 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part09", vt())
local prt10 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part10", vt())
local prt11 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part11", vt())
local prt12 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part12", vt())
local prt13 = part(3, modelzorz, 0.3, 0.5, BrickColor.new("Really red"), "Part13", vt())
local prt14 = part(3, modelzorz, 0.3, 0.5, BrickColor.new("Really red"), "Part14", vt())
local gprt1 = part(3, modelzorz, 0, 0.9, BrickColor.new("Dusty Rose"), "Gun Part01", vt())
local gprt2 = part(3, modelzorz, 0.2, 0, BrickColor.new("Dusty Rose"), "Gun Part02", vt())
local gprt3 = part(3, modelzorz, 0.2, 0, BrickColor.new("Dusty Rose"), "Gun Part03", vt())
local gprt4 = part(3, modelzorz, 0.2, 0, BrickColor.new("Dusty Rose"), "Gun Part04", vt())
local gprt5 = part(3, modelzorz, 0.2, 0, BrickColor.new("Dusty Rose"), "Gun Part05", vt())
local gprt6 = part(3, modelzorz, 0.2, 0, BrickColor.new("Dusty Rose"), "Gun Part06", vt())
local gprt7 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Gun Part07", vt())
local gprt8 = part(3, modelzorz, 0.2, 0, BrickColor.new("Dusty Rose"), "Gun Part08", vt())
local gprt9 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Gun Part09", vt())
local gprt10 = part(3, modelzorz, 0.2, 0, BrickColor.new("Dusty Rose"), "Gun Part10", vt())
local gprt11 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Gun Part11", vt())
local gprt12 = part(3, modelzorz, 0, 0, BrickColor.new("Really red"), "Gun Part12", vt())
local gprt13 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Gun Part13", vt())
local gprt14 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Gun Part14", vt())
local gprt15 = part(3, modelzorz, 0, 0, BrickColor.new("Really red"), "Gun Part15", vt())
local gprt16 = part(3, modelzorz, 0, 0.2, BrickColor.new("Really red"), "Gun Part16", vt())
msh1 = mesh("SpecialMesh", prt1, "Head", "nil", vt(0, 0, 0), vt(2.5, 6, 2.5))
msh2 = mesh("BlockMesh", prt2, "", "", vt(0, 0, 0), vt(1.5, 7, 1.5))
msh3 = mesh("BlockMesh", prt3, "", "", vt(0, 0, 0), vt(1.6, 3, 1.6))
msh4 = mesh("BlockMesh", prt4, "", "", vt(0, 0, 0), vt(1.6, 9, 1))
msh8 = mesh("BlockMesh", prt8, "", "", vt(0, 0, 0), vt(1.6, 4, 1))
msh9 = mesh("BlockMesh", prt9, "", "", vt(0, 0, 0), vt(1.6, 20, 2))
msh10 = mesh("SpecialMesh", prt10, "Wedge", "nil", vt(0, 0, 0), vt(1.6, 3, 2))
msh11 = mesh("BlockMesh", prt11, "", "", vt(0, 0, 0), vt(1.6, 17.5, 1.5))
msh12 = mesh("SpecialMesh", prt12, "Wedge", "nil", vt(0, 0, 0), vt(1.6, 2.1, 1.5))
msh13 = mesh("BlockMesh", prt13, "", "", vt(0, 0, 0), vt(1, 17.5, 5))
msh14 = mesh("SpecialMesh", prt14, "Wedge", "nil", vt(0, 0, 0), vt(1, 7, 5))
gmsh1 = mesh("BlockMesh", gprt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
gmsh2 = mesh("BlockMesh", gprt2, "", "", vt(0, 0, 0), vt(2, 4, 2))
gmsh3 = mesh("SpecialMesh", gprt3, "Wedge", "nil", vt(0, 0, 0), vt(2, 2, 1))
gmsh4 = mesh("BlockMesh", gprt4, "", "", vt(0, 0, 0), vt(1.99, 6, 2))
gmsh5 = mesh("SpecialMesh", gprt5, "Wedge", "nil", vt(0, 0, 0), vt(1.99, 2, 2))
gmsh6 = mesh("BlockMesh", gprt6, "", "", vt(0, 0, 0), vt(2.1, 8.6, 2))
gmsh7 = mesh("BlockMesh", gprt7, "", "", vt(0, 0, 0), vt(2, 8.5, 1.99))
gmsh8 = mesh("CylinderMesh", gprt8, "", "", vt(0, 0, 0), vt(2, 2, 2))
gmsh9 = mesh("CylinderMesh", gprt9, "", "", vt(0, 0, 0), vt(1.5, 2.01, 1.5))
gmsh10 = mesh("SpecialMesh", gprt10, "Wedge", "nil", vt(0, 0, 0), vt(2, 2, 2))
gmsh11 = mesh("BlockMesh", gprt11, "", "", vt(0, 0, 0), vt(2.2, 2, 1))
gmsh12 = mesh("BlockMesh", gprt12, "", "", vt(0, 0, 0), vt(2.21, 1.8, 0.8))
gmsh13 = mesh("BlockMesh", gprt13, "", "", vt(0, 0, 0), vt(2.22, 0.5, 1))
gmsh14 = mesh("BlockMesh", gprt14, "", "", vt(0, 0, 0), vt(2.2, 6, 1))
gmsh15 = mesh("BlockMesh", gprt15, "", "", vt(0, 0, 0), vt(2.21, 5, 0.9))
local wld1 = weld(prt1, prt1, Torso, euler(0, 1.57, -2.1) * cf(-1.8, -1.7, -0.5))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, 0, 0))
local wld3 = weld(prt1, prt3, prt2, euler(0, 0, 0) * cf(0, -1, 0))
local wld4 = weld(prt1, prt4, prt3, euler(0, 0, 0) * cf(0, -1.2, -0.1))
local wld8 = weld(prt1, prt8, prt4, euler(1.57, 0, 0) * cf(0, 0, -0.5))
local wld9 = weld(prt1, prt9, prt4, euler(0, 0, 0) * cf(0, -3, 0))
local wld10 = weld(prt1, prt10, prt9, euler(0, 3.14, 0) * cf(0, -2.3, 0))
local wld11 = weld(prt1, prt11, prt4, euler(0, 0, 0) * cf(0, -2.85, -0.36))
local wld12 = weld(prt1, prt12, prt11, euler(0, 3.14, 0) * cf(0, -1.95, 0))
local wld13 = weld(prt1, prt13, prt9, euler(0, 0, 0) * cf(0, 0.4, -0.3))
local wld14 = weld(prt1, prt14, prt13, euler(0, 3.14, 0) * cf(0, -2.45, 0))
local gwld1 = weld(gprt1, gprt1, LeftLeg, euler(2.3, 0, 0) * cf(0.6, -0.8, 0.3))
local gwld2 = weld(prt1, gprt2, gprt1, euler(0.7, 0, 0) * cf(0, 0, 0))
local gwld3 = weld(prt1, gprt3, gprt2, euler(1.57, 3.14, 0) * cf(0, 0.5, 0))
local gwld4 = weld(prt1, gprt4, gprt2, euler(0.87, 0, 0) * cf(0, -0.6, 0.3))
local gwld5 = weld(prt1, gprt5, gprt4, euler(0, 3.14, 0) * cf(0, -0.8, 0))
local gwld6 = weld(prt1, gprt6, gprt4, euler(0, 0, 0) * cf(0, -0.25, -0.1))
local gwld7 = weld(prt1, gprt7, gprt4, euler(0, 0, 0) * cf(0, -0.25, -0.1))
local gwld8 = weld(prt1, gprt8, gprt7, euler(0, 0, 0) * cf(0, -0.9, 0))
local gwld9 = weld(prt1, gprt9, gprt8, euler(0, 0, 0) * cf(0, 0, 0))
local gwld10 = weld(prt1, gprt10, gprt6, euler(0, 0, 3.14) * cf(0, 1.05, 0))
local gwld11 = weld(prt1, gprt11, gprt6, euler(0, 0, 0) * cf(0, 0.5, 0.1))
local gwld12 = weld(prt1, gprt12, gprt11, euler(0, 0, 0) * cf(0, 0, 0))
local gwld13 = weld(prt1, gprt13, gprt11, euler(0, 0, 0) * cf(0, 0, 0))
local gwld14 = weld(prt1, gprt14, gprt6, euler(0, 0, 0) * cf(0, -0.1, -0.11))
local gwld15 = weld(prt1, gprt15, gprt14, euler(0, 0, 0) * cf(0, 0.05, 0))
local gwld16 = weld(prt1, gprt16, gprt11, euler(-1.57, 0, 0) * cf(0, 0, 0))
num = 0
num2 = 0
for i = 1, 10 do
  local prt5 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part05", vt())
  local msh5 = mesh("BlockMesh", prt5, "", "", vt(0, 0, 0), vt(1.61, 2, 1.61))
  local wld5 = weld(prt1, prt5, prt4, cf(0, 0, 1.05) * euler(1.57 + num, 0, 0))
  if 3 <= i and i <= 9 then
    local prt6 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part06", vt())
    local msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(1.6, 1.5, 2))
    local wld6 = weld(prt1, prt6, prt5, cf(0, 0.1, 0.3))
    local prt7 = part(3, modelzorz, 0.5, 0, BrickColor.new("Reddish brown"), "Part07", vt())
    local msh7 = mesh("SpecialMesh", prt7, "FileMesh", "9756362", vt(0, 0, 0), vt(0.3, 0.3, 0.6))
    local wld7 = weld(prt1, prt7, prt6, euler(0, 0, 0.785) * cf(0, 0, 0.2))
  end
  do
    do
      num = num + 0.348
      -- DECOMPILER ERROR at PC2592: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
num = 0
for i = 1, 4 do
  local gprt11 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Gun Part11", vt())
  local gmsh11 = mesh("CylinderMesh", gprt11, "", "", vt(0, 0, 0), vt(0.6, 2.2, 0.6))
  local gwld11 = weld(prt1, gprt11, gprt6, euler(0, 0, 1.57) * cf(0, -0.5 - num, 0.1))
  num = num - 0.2
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
local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
nsk = NumberSequenceKeypoint.new
local parti = it("ParticleEmitter")
parti.Color = cs(Color3.new(0.88627450980392, 0.47450980392157, 0), Color3.new(0.49411764705882, 0, 0))
parti.LightEmission = 0.5
parti.Size = ns(0.2)
parti.Texture = "http://www.roblox.com/asset/?id=248625108"
sizeseq = ns({nsk(0, 1.62), nsk(0.123, 1.5), nsk(0.154, 1.44), nsk(0.357, 1.31), nsk(0.555, 1.25), nsk(0.725, 0.875), nsk(1, 0.125)})
transseq = ns({nsk(0, 0), nsk(0.133, 0.544), nsk(0.321, 0.737), nsk(0.388, 0), nsk(0.469, 0.725), nsk(0.522, 0.456), nsk(0.616, 0.637), nsk(0.64, 0), nsk(0.745, 0.525), nsk(1, 0)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.ZOffset = 0
parti.Acceleration = vt(0, 10, 0)
parti.LockedToPart = false
parti.EmissionDirection = "Front"
parti.Lifetime = nr(0, 1)
parti.Rate = 200
parti.Rotation = nr(4, 9)
parti.RotSpeed = nr(5, 9)
parti.Speed = nr(2, 4)
parti.VelocitySpread = 28
parti.Parent = nil
parti.Parent = hitbox
parti.Enabled = false
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = prt9
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Ignis"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Vulca: Wave Burster" then
  Bin.Name = "Ignis"
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
  end), sou)
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
  for i = 0, 1, 0.5 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, -1) * euler(0.4, 0, 0) * cf(0, 1, 0), 0.4)
    gwld1.C0 = clerp(gwld1.C0, euler(2, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, 0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, -1) * euler(0.4, 0, 0) * cf(0, 1, 0), 0.4)
    gwld1.C0 = clerp(gwld1.C0, euler(2, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.4, 0, 0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, 0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  mdec2.Parent = nil
  wld1.Part1 = Torso
  wld1.C0 = euler(0, 1.57, -2.1) * cf(-1.8, -1.7, -0.5)
  gwld1.Part1 = LeftLeg
  gwld1.C0 = euler(2.3, 0, 0) * cf(0.6, -0.8, 0.3)
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
  for i = 0, 1, 0.5 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, 0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.4, 0, 0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, 0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  mdec2.Parent = Decrease
  wld1.Part1 = RightArm
  wld1.C0 = euler(0, -1.57, -1) * euler(0.4, 0, 0) * cf(0, 1, 0)
  gwld1.Part1 = LeftArm
  gwld1.C0 = euler(2, 0, 0) * cf(0, 1, 0)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.4) * euler(0, -0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  for i = 1, 50 do
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
  removeControl()
  Stunned.Value = true
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.3)
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
    swait()
    wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 3.14) * cf(0, 1, 0.2), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.5), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.3) * euler(0.4, 0, 0.2) * euler(0, -0.2, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199150686", prt9, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 7, 1)
  hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.3 do
    swait()
    hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(1.2, 0, 3.14) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0.2, 0, -0.2) * euler(0, -0.5, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC466: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC466: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value and (StaggerHit.Value ~= true or redimbue == true) then
    so("199144160", prt9, 1, math.random(80, 130) / 100)
    CF = RootPart.CFrame
    ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "FireWave", vt(10, 1, 5))
    ref.Anchored = true
    ref.CFrame = CF * cf(0, 0, -2) * euler(0, 0, 0.6)
    local parti2 = parti:Clone()
    parti2.Rate = 20
    parti2.Parent = ref
    parti2.Enabled = true
    game:GetService("Debris"):AddItem(ref, 5)
    rmsh = mesh("BlockMesh", ref, "", "", vt(0, 0, 0), vt(1, 1, 1))
    d = Instance.new("Decal")
    d.Parent = ref
    d.Texture = "http://www.roblox.com/asset/?id=182703461"
    d.Face = "Top"
    d2 = Instance.new("Decal")
    d2.Parent = ref
    d2.Texture = "http://www.roblox.com/asset/?id=182703461"
    d2.Face = "Bottom"
    table.insert(Effects, {ref, "Wave", 2, 1.3, 30, d, d2, parti2})
  end
  do
    for i = 0, 1, 0.2 do
      swait()
      hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 4, 6, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 8)), nil, true)
      wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 3.14) * euler(0, 0, 0.3) * cf(0, 1, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, -1) * euler(0, -0.7, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC842: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC842: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    attack = false
  end
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 3.14) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.7), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1) * euler(0, 1.2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.4), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.7, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, -0.7, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC201: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC201: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199146359", prt9, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 7, 1)
  hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.3 do
    swait()
    hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(0.5, 0, 3.14) * cf(0, 1, 0.2), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 1) * euler(0, 1.6, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC472: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC472: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value and (StaggerHit.Value ~= true or redimbue == true) then
    so("199144160", prt9, 1, math.random(80, 130) / 100)
    CF = RootPart.CFrame
    ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "FireWave", vt(10, 1, 5))
    ref.Anchored = true
    ref.CFrame = CF * cf(0, 0, -2) * euler(0, 0, -0.2)
    local parti2 = parti:Clone()
    parti2.Rate = 20
    parti2.Parent = ref
    parti2.Enabled = true
    game:GetService("Debris"):AddItem(ref, 5)
    rmsh = mesh("BlockMesh", ref, "", "", vt(0, 0, 0), vt(1, 1, 1))
    d = Instance.new("Decal")
    d.Parent = ref
    d.Texture = "http://www.roblox.com/asset/?id=182703461"
    d.Face = "Top"
    d2 = Instance.new("Decal")
    d2.Parent = ref
    d2.Texture = "http://www.roblox.com/asset/?id=182703461"
    d2.Face = "Bottom"
    table.insert(Effects, {ref, "Wave", 2, 1.3, 30, d, d2, parti2})
  end
  do
    for i = 0, 1, 0.2 do
      swait()
      hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 4, 6, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 8)), nil, true)
      wld1.C0 = clerp(wld1.C0, euler(0.3, 0, 3.14) * cf(0, 1, 0.2), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.8) * euler(0, 1.3, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC842: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC842: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    attack = false
  end
end
attackthree = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 3.14) * cf(0, 1, 0.2), 0.4)
    gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 0.5), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC213: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC213: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 1, 2 do
    so("199144089", gprt8, 1, 1)
    LW.C0 = cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57)
    Shootcombo()
    for i = 0, 1, 0.3 do
      swait()
      gwld6.C0 = clerp(gwld6.C0, euler(0, 0, 0) * cf(0, 0.5, -0.1), 0.6)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0.5, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC320: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC320: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.2 do
      swait()
      gwld6.C0 = clerp(gwld6.C0, euler(0, 0, 0) * cf(0, -0.25, -0.1), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC396: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC396: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC412: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC412: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end
attackfour = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 3.14) * cf(0, 1, 0.2), 0.4)
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
        -- DECOMPILER ERROR at PC201: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC201: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199146359", prt9, 1, 0.8)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 7, 1)
  hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    if i == 0.2 and Stagger.Value ~= true and StunT.Value > Stun.Value and (StaggerHit.Value ~= true or redimbue == true) then
      so("199144160", prt9, 1, math.random(80, 130) / 100)
      CF = RootPart.CFrame
      ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "FireWave", vt(10, 1, 5))
      ref.Anchored = true
      ref.CFrame = CF * cf(0, 0, -2) * euler(0, 0, 0.2)
      local parti2 = parti:Clone()
      parti2.Rate = 20
      parti2.Parent = ref
      parti2.Enabled = true
      game:GetService("Debris"):AddItem(ref, 5)
      rmsh = mesh("BlockMesh", ref, "", "", vt(0, 0, 0), vt(1, 1, 1))
      d = Instance.new("Decal")
      d.Parent = ref
      d.Texture = "http://www.roblox.com/asset/?id=182703461"
      d.Face = "Top"
      d2 = Instance.new("Decal")
      d2.Parent = ref
      d2.Texture = "http://www.roblox.com/asset/?id=182703461"
      d2.Face = "Bottom"
      table.insert(Effects, {ref, "Wave", 2, 1.3, 30, d, d2, parti2})
    end
    do
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * 40
      end
      hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 10, 15, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(5, 10)), nil, true)
      wld1.C0 = clerp(wld1.C0, euler(0.5, 0, 3.14) * cf(0, 1, 0.2), 0.35)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.35)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.35)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.2, 0, -1.2) * euler(0, -1.2, 0), 0.35)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.35)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(-0.4, 0, -0.7) * euler(0, 0, 0), 0.35)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.35)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.35)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.35)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC620: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC620: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC620: LeaveBlock: unexpected jumping out DO_STMT

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
Punishment = function()
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
        Mvmt.Value = Mvmt.Value - 1
        for i = 0, 1, 0.3 do
          swait()
          wld1.C0 = clerp(wld1.C0, euler(-2, 0, 3.14) * cf(0, 1, 0.2), 0.4)
          gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.2, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(2, 0, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(0.5, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -1.57, 0), 0.4)
          LH.C0 = clerp(LH.C0, cf(-0.5, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -1.57, 0), 0.4)
        end
        for i = 0, 1, 0.18 do
          swait()
          wld1.C0 = clerp(wld1.C0, euler(-1.57, 0, 3.14) * cf(0, 1, 0.2), 0.4)
          gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.2, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(0.5, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -1.57, 0), 0.4)
          LH.C0 = clerp(LH.C0, cf(-0.5, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -1.57, 0), 0.4)
        end
        DecreaseStat(head.Parent, "Defense", 0.3, 300)
        Damagefunc(head, 10, 20, math.random(5, 10), "Normal", RootPart, 0.2, 2, 0, nil, nil, false)
        for i = 0, 1, 0.05 do
          swait()
          MagicBlock(BrickColor.new("Really red"), cf(head.Parent.Torso.Position), 1, 1, 1, 2, 2, 2, 0.1, 1)
          wld1.C0 = clerp(wld1.C0, euler(-1.17, 0, 3.14) * cf(0, 1, 0.2), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(-0.4, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
          RH.C0 = clerp(RH.C0, cf(0.5, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -1.57, 0), 0.4)
          LH.C0 = clerp(LH.C0, cf(-0.5, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -1.57, 0), 0.4)
        end
        Neck.C0 = necko * euler(0, 0, -1.57) * euler(0.2, 0, 0)
        swait(10)
        Mvmt.Value = Mvmt.Value + 1
      end
    end
  end
  attack = false
end
GunStance = function()
  attack = true
  gun = true
  perfaim = false
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 0.4
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 3.14) * cf(0, 1, 0.2), 0.2)
    gwld6.C0 = clerp(gwld6.C0, euler(0, 0, 0) * cf(0, -0.25, -0.1), 0.4)
    gwld1.C0 = euler(1.57 - 8 * i, 0, 0) * cf(0, 1, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(-0.4, 0, 0), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 1), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(1, 0, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.2)
  end
  RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57)
  LW.C0 = cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57)
  gairo = Instance.new("BodyGyro")
  gairo.Parent = RootPart
  gairo.maxTorque = Vector3.new(400000, 400000, 400000) * math.huge
  gairo.P = 20000
  gairo.cframe = RootPart.CFrame
  local offset = nil
  while gun == true do
    swait()
    perfaim = true
    local gunpos = vt(MMouse.Hit.p.x, Head.Position.Y, MMouse.Hit.p.z)
    offset = (gprt8.Position.y - MMouse.Hit.p.y) / 60
    mag = (gprt8.Position.y - MMouse.Hit.p.magnitude) / 66
    offset = offset / mag
    gairo.cframe = cf(Head.Position, gunpos)
    gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.2)
  end
  do
    dec.Parent = nil
    if shoot == true then
      so("199144089", gprt8, 1, 1)
      for i = 0, 1, 0.1 do
        swait()
        gwld6.C0 = clerp(gwld6.C0, euler(0, 0, 0) * cf(0, 0.5, -0.1), 0.6)
        gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(1, 0, 0), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      end
    end
    do
      gairo.Parent = nil
      shoot = false
      attack = false
    end
  end
end
do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 20 then
    attack = true
    mana.Value = mana.Value - 0
    cooldowns[1] = 0
    for i = 0, 1, 0.2 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 3.14) * cf(0, 1, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.7), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1) * euler(0, 1.2, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.4), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.7, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, -0.7, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC236: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC236: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("199144160", prt9, 1, math.random(80, 130) / 100)
    for i = 0, 1, 0.4 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(0.5, 0, 3.14) * cf(0, 1, 0.2), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 1) * euler(0, 1.6, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC447: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC447: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
        DecreaseStat(Character, "Damage", -0.25, 300)
        DecreaseStat(Character, "Defense", 0.2, 300)
          CF = RootPart.CFrame
          ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "FireWave", vt(10, 1, 5))
          ref.Anchored = true
          ref.CFrame = CF * cf(0, 0, -2) * euler(0, 0, -0.2)
          local parti2 = parti:Clone()
          parti2.Rate = 20
          parti2.Parent = ref
          parti2.Enabled = true
          game:GetService("Debris"):AddItem(ref, 5)
          rmsh = mesh("BlockMesh", ref, "", "", vt(0, 0, 0), vt(1, 1, 1))
          d = Instance.new("Decal")
          d.Parent = ref
          d.Texture = "http://www.roblox.com/asset/?id=182703461"
          d.Face = "Top"
          d2 = Instance.new("Decal")
          d2.Parent = ref
          d2.Texture = "http://www.roblox.com/asset/?id=182703461"
          d2.Face = "Bottom"
          table.insert(Effects, {ref, "Wave", 1.5, 1.3, 70, d, d2, parti2})
            for i = -0.785, 0.785, 0.785 do
              CF = RootPart.CFrame
              ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "FireWave", vt(10, 1, 5))
              ref.Anchored = true
              ref.CFrame = CF * cf(0, 0, -2) * euler(0, i, 0) * euler(0, 0, -0.2)
              local parti2 = parti:Clone()
              parti2.Rate = 20
              parti2.Parent = ref
              parti2.Enabled = true
              game:GetService("Debris"):AddItem(ref, 5)
              rmsh = mesh("BlockMesh", ref, "", "", vt(0, 0, 0), vt(1, 1, 1))
              d = Instance.new("Decal")
              d.Parent = ref
              d.Texture = "http://www.roblox.com/asset/?id=182703461"
              d.Face = "Top"
              d2 = Instance.new("Decal")
              d2.Parent = ref
              d2.Texture = "http://www.roblox.com/asset/?id=182703461"
              d2.Face = "Bottom"
              table.insert(Effects, {ref, "Wave", 2, 1.3, 100, d, d2, parti2})
              for i = 0, 1, 0.3 do
                swait()
                wld1.C0 = clerp(wld1.C0, euler(0.3, 0, 3.14) * cf(0, 1, 0.2), 0.4)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 1.3, 0), 0.4)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
                if Stagger.Value ~= true and StunT.Value > Stun.Value then
                  do
                    if StaggerHit.Value == true then
                      break
                    end
                    -- DECOMPILER ERROR at PC903: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC903: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
              attack = false
            end
          end
        end
do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 30 then
    attack = true
    cooldowns[2] = 0
    mana.Value = mana.Value - 0
    Humanoid.Jump = true
    so("199144226", prt9, 1, 1)
    blcf = nil
    scfr = nil
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = RootCF * cf(0, 0, 1 * i) * euler(6.28 * i, 0, 0)
      wld1.C0 = clerp(wld1.C0, euler(-1.8, 0, 3.14) * cf(0, 1, 0.2), 0.2)
      gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.2)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.57, 0, -1) * euler(1, 0, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC261: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC261: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.15 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(-1.57, 0, 3.14) * cf(0, 1, 0.2), 0.4)
      gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, -0.5), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.57, 0, 0.7) * euler(0, 0, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC473: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC473: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("199144529", prt9, 1, 1)
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 1
        DecreaseStat(Character, "Damage", -0.35, 400)
        DecreaseStat(Character, "Defense", 0.2, 400)
        if redimbue == true then
          so("199144160", prt9, 1, math.random(80, 130) / 100)
          for i = 0.785, 6.28, 0.785 do
            CF = Torso.CFrame
            ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "FireWave", vt(10, 1, 5))
            ref.Anchored = true
            ref.CFrame = CF * cf(0, 0, 0) * euler(0, i, 0)
            local parti2 = parti:Clone()
            parti2.Rate = 20
            parti2.Parent = ref
            parti2.Enabled = true
            game:GetService("Debris"):AddItem(ref, 5)
            rmsh = mesh("BlockMesh", ref, "", "", vt(0, 0, 0), vt(1, 1, 1))
            d = Instance.new("Decal")
            d.Parent = ref
            d.Texture = "http://www.roblox.com/asset/?id=182703461"
            d.Face = "Top"
            d2 = Instance.new("Decal")
            d2.Parent = ref
            d2.Texture = "http://www.roblox.com/asset/?id=182703461"
            d2.Face = "Bottom"
            table.insert(Effects, {ref, "Wave", 2.5, 1.3, 40, d, d2, parti2})
            --MagicCircle(BrickColor.new("Bright red"), cf(prt9.Position) * cf(0, -2, 0), 3, 1, 3, -0.5, 3, -0.5, 0.05)
          end
        end
        do
          MagniDamage(RootPart, 30, 7, 12, math.random(-50, -30), "Knockdown2", RootPart, 0, 1, (math.random(5, 15)), nil, nil, false)
          MagicCircle(BrickColor.new("Bright red"), cf(prt9.Position) * cf(0, -2, 0), 1, 2, 1, 10, 1, 10, 0.03)
          for i = 1, 10 do
            swait()
            for i = 1, 2 do
              MagicCircle(BrickColor.new("Bright red"), cf(prt9.Position) * cf(0, -2, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.5, 12, 0.5, 0.05)
            end
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC773: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC773: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          for i = 1, 10 do
            swait()
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC795: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC795: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          dec.Parent = nil
          attack = false
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
  if cooldownmax <= cooldowns[3] and mana.Value >= 15 then
    attack = true
    mana.Value = mana.Value - 0
    cooldowns[3] = 0
    redimbue = true
    so("199144561", prt9, 1, 1)
    MagicCircle(BrickColor.new("Bright red"), prt9.CFrame, 0.1, 8, 0.2, 0.5, 2, 1, 0.05)
    MagicCircle(BrickColor.new("Bright red"), gprt6.CFrame, 2, 2, 2, 1, 1, 1, 0.05)
    DecreaseStat(Character, "Damage", -0.2, 500)
    DecreaseStat(Character, "Movement", -0.05, 500)
    DecreaseStat(Character, "Defense", 0.15 , 600)
    attack = false
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
    parti.Enabled = true
    mana.Value = mana.Value - 0
    cooldowns[4] = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = -0.4
    DecreaseStat(Character, "Damage", -0.3, 300)
    DecreaseStat(Character, "Defense", 0.25, 300)
    so("199144608", prt9, 1, 1)
    for i = 1, 4 do
      for i = 0, 1, 0.2 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 3.14) * cf(0, 1, 0.2), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.5), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5) * euler(0.1, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.3) * euler(0.4, 0, 0.2) * euler(0, -0.2, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, -0.4), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0.2), 0.4)
        Stagger.Value = false
        StaggerHit.Value = false
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        so("199144647", prt9, 1, 1)
        hbwld.Parent = nil
        hboxpos.Parent = hitbox
        hitbox.Parent = modelzorz
        hitbox.Size = vt(1, 7.5, 1.5)
        hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
        hitbox.CFrame = hitboxCF
        blcf = nil
        scfr = nil
        for i = 0, 1, 0.15 do
          swait()
          hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
          hitbox.CFrame = hitboxCF
          MagniDamage(hitbox, 6, 10, 15, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(5, 10)), nil, true)
          wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 3.14) * euler(0, 0, 0.3) * cf(0, 1, 0), 0.4)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, -1) * euler(0, -0.7, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, -0.2), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0.4), 0.4)
          Stagger.Value = false
          StaggerHit.Value = false
          if StunT.Value <= Stun.Value then
            break
          end
        end
        do
          for i = 0, 1, 0.2 do
            swait()
            hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
            hitbox.CFrame = hitboxCF
            wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 3.14) * cf(0, 1, 0), 0.4)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.2, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.7) * euler(0.1, 0, 0), 0.4)
            RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1) * euler(0, 1.2, 0), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.4), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.7, -0.2), 0.4)
            LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, -0.7, 0.4), 0.4)
            Stagger.Value = false
            StaggerHit.Value = false
            if StunT.Value <= Stun.Value then
              break
            end
          end
          do
            blcf = nil
            scfr = nil
            so("199144678", prt9, 1, 1)
            for i = 0, 1, 0.2 do
              swait()
              hitboxCF = prt9.CFrame * cf(0, -1, 0.4)
              hitbox.CFrame = hitboxCF
              MagniDamage(hitbox, 6, 10, 15, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(5, 10)), nil, true)
              wld1.C0 = clerp(wld1.C0, euler(0.3, 0, 3.14) * cf(0, 1, 0.2), 0.4)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5) * euler(0.1, 0, 0), 0.4)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.8) * euler(0, 1.3, 0), 0.4)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, -0.4), 0.4)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0.2), 0.4)
              Stagger.Value = false
              StaggerHit.Value = false
              if StunT.Value <= Stun.Value then
                break
              end
            end
            do
              do
                hitbox.Parent = modelzorz
                hitbox.Size = vt()
                hitboxweld()
                hboxpos.Parent = nil
                -- DECOMPILER ERROR at PC1010: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC1010: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC1010: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC1010: LeaveBlock: unexpected jumping out DO_STMT

              end
            end
          end
        end
      end
    end
    dec.Parent = nil
    parti.Enabled = false
    attack = false
  end
end
Shootcombo = function()
  table.insert(Effects, {gprt16.CFrame.lookVector, "Shoot", 30, gprt8.Position, 3, 5, 0, 1})
end
Shoot1 = function()
  table.insert(Effects, {gprt16.CFrame.lookVector, "Shoot", 100, gprt8.Position, 8, 12, math.random(10, 20), 2})
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
MagniDamage = function(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, Sound)
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
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, Sound)
              end
            end
          end
          do
            -- DECOMPILER ERROR at PC181: LeaveBlock: unexpected jumping out DO_STMT

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
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Bright red")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
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
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new("Bright red")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
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
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
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
MagicFire = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Fire", delay, 1, 1, 1, msh})
end
MagicFireWave = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Top"
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Bottom"
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "FireWave", 1, 30, math.random(400, 600) / 100, msh})
end
ElecEffect = function(cff, x, y, z)
  local prt = part(3, workspace, 0, 0, BrickColor.new("Bright red"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 10)
  xval = math.random() / 3
  yval = math.random() / 3
  zval = math.random() / 3
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {prt, "Elec", 0.2, x, y, z, xval, yval, zval, msh}
end
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, Sound)
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
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    hit = hit.Parent.Parent:findFirstChild("Torso")
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
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
    if Sound == "Gun" then
      so("199144144", hit, 1, 1)
    else
      if Sound == "FireWave" then
        so("199144588", hit, 1, math.random(70, 110) / 100)
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
    local dist = (RootPart.Position - hit.Position).magnitude / 200
    if dist >= 1 then
      Damage = Damage / dist
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
    hit.Parent.Humanoid:TakeDamage(Damage)
  end), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if Type == "NormalDecreaseMvmt1" then
        DecreaseStat(hit.Parent, "Movement", 0.1, 200)
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
          if Type == "Knockdown2" or Type == "Fire" then
            hum = hit.Parent.Humanoid
            local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * knockback
            bodvol.P = 5000
            bodvol.maxForce = Vector3.new(8000, 8000, 8000)
            bodvol.Parent = hit
            if knockback <= 0 then
              bodvol.Parent = nil
            end
            game:GetService("Debris"):AddItem(bodvol, 0.5)
            if Type == "Fire" then
              MagicFireWave(BrickColor.new("Bright red"), hit.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1)
            end
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
  if gun == true and mana.Value >= 10 then
    mana.Value = mana.Value - 10
    shoot = true
    Shoot1()
    gun = false
  end
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
        if redimbue == false then
          attackthree()
        else
          combo = 0
          attackfour()
        end
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
  end))
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
  if key == "e" and gun == true then
    gun = false
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
  if key == "e" and gun == false then
    GunStance()
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
  -- DECOMPILER ERROR at PC162: Unhandled construct in 'MakeBoolean' P1

  if key ~= "h" or attack == false then
    RecentEnemy.Value = nil
  end
end
key2 = function(key)
end
s = function(mouse)
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
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
print("Vulca loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local walk = 0
local walkforw = true
local elecnum = 0
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
    if Humanoid.Health <= 20 then
      passive.Value = -0.3
      passive2.Value = -0.4
      prt13.Transparency = 0.3
      prt14.Transparency = 0.3
    else
      if Humanoid.Health <= 50 then
        passive.Value = -0.2
        passive2.Value = -0.2
        prt13.Transparency = 0.5
        prt14.Transparency = 0.5
      else
        passive.Value = 0
        passive2.Value = 0
        prt13.Transparency = 1
        prt14.Transparency = 1
      end
    end
    if 70 <= cooldowns[3] then
      redimbue = false
    else
      if redimbue == true then
        if 4 <= elecnum then
          elecnum = 0
          ElecEffect(prt9.CFrame, 1, 4, 2)
        end
        elecnum = elecnum + 1
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
end))
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
end))
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
end))
    end
    local stunnum2 = 50
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
          wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 3.14) * cf(0, 1, 0.2), 0.2)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.5), 0.2)
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
            wld1.C0 = clerp(wld1.C0, euler(2.9, 0, 3.14) * cf(0, 1, 0.2), 0.2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1), 0.2)
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
              wld1.C0 = clerp(wld1.C0, euler(2.9 + (donum) / 3, 0, 3.14) * cf(0, 1, 0.2), 0.15)
              gwld6.C0 = clerp(gwld6.C0, euler(0, 0, 0) * cf(0, -0.25, -0.1), 0.15)
              gwld1.C0 = clerp(gwld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.15)
              Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3 + (donum) / 3, 0, 0.5 - (donum) / 3), 0.15)
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
                gwld6.C0 = clerp(gwld6.C0, euler(0, 0, 0) * cf(0, -0.25, -0.1), 0.2)
                wld1.C0 = clerp(wld1.C0, euler(2.9 + (donum) / 3, 0, 3.14) * euler(0, 0.5, 0) * cf(0, 1, 0.2), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, -0.5), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1 - (donum) / 3, 0, 0.8 - (donum) / 3), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(0.5 + (donum) / 3, 0, 0.8 + (donum) / 3) * euler(0, -0.7, 0), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.6, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  gwld6.C0 = clerp(gwld6.C0, euler(0, 0, 0) * cf(0, -0.25, -0.1), 0.4)
                  wld1.C0 = clerp(wld1.C0, euler(-1.57, 0, 3.14) * cf(0, 1, 0), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.1, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.67, 0, -0.8), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.4) * euler(0, 0, 0), 0.4)
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
            if Thing[2] == "Shoot" then
              Look = Thing[1]
              local hit, pos = rayCast(Thing[4], Look, 20, modelzorz)
              local mag = (Thing[4] - pos).magnitude
              MagicHead(BrickColor.new("Really red"), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.1)
              Thing[4] = Thing[4] + Look * 20
              Thing[3] = Thing[3] - 1
              if hit ~= nil then
                Thing[3] = 0
                if Thing[8] == 1 then
                  Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 5)), nil, nil, true, "Gun")
                else
                  if Thing[8] == 2 then
                    Damagefunc(hit, Thing[5], Thing[6], Thing[7], "NormalDecreaseMvmt1", RootPart, 0, 2, (math.random(1, 5)), nil, nil, true, "Gun")
                  end
                end
                ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                ref.Anchored = true
                ref.CFrame = cf(pos)
                MagicCircle(BrickColor.new("Really red"), cf(pos), 5, 5, 5, 1, 1, 1, 0.03)
                game:GetService("Debris"):AddItem(ref, 1)
              end
              if Thing[3] <= 0 then
                table.remove(Effects, e)
              end
            end
            do
              do
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
                if Thing[2] == "Wave" then
                  if Thing[4] <= Thing[5] then
                    Thing[1].CFrame = Thing[1].CFrame * cf(0, 0, -Thing[3])
                    Thing[4] = Thing[4] + 1
                    MagniDamage(Thing[1], 7, 4, 7, 0, "Normal", RootPart, 0.5, 1, (math.random(7, 8)), nil, nil, true)
                  else
                    Thing[6].Parent = nil
                    Thing[7].Parent = nil
                    Thing[8].Enabled = false
                    Part.Transparency = 1
                    table.remove(Effects, e)
                  end
                end
                if Thing[2] == "FireWave" then
                  if Thing[3] <= Thing[4] then
                    Thing[1].CFrame = Thing[1].CFrame * euler(0, 1, 0)
                    Thing[3] = Thing[3] + 1
                    Thing[6].Scale = Thing[6].Scale + vt(Thing[5], 0, Thing[5])
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
                if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" and Thing[2] ~= "showDamage" then
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
                        if Thing[2] == "Fire" then
                          Thing[1].CFrame = cf(Thing[1].Position) + vt(0, 0.2, 0)
                          Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
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
                                Mesh = Thing[10]
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
                  else
                    Part.Parent = nil
                    table.remove(Effects, e)
                  end
                end
                -- DECOMPILER ERROR at PC5807: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC5807: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC5807: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC5807: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC5807: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
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
    gmsh15.Scale = vt(2.21, 5 * mana.Value / 100, 0.9)
    gwld15.C0 = euler(0, 0, 0) * cf(0, 0, 0) * cf(0, 0.5 / (100 / (100 - mana.Value)), 0)
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
    for i = 1, #cooldowns do
      if cooldownmax <= cooldowns[i] then
        cooldowns[i] = cooldownmax
      else
        cooldowns[i] = cooldowns[i] + cooldownsadd[i]
      end
    end
    -- DECOMPILER ERROR at PC6204: LeaveBlock: unexpected jumping out DO_STMT

  end
end

