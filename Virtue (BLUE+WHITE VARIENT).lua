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
MMouse = Player:GetMouse()
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
local TopStaff = {}
local TSCF = cf(0, 0, 0)
local BotStaff = {}
local BSCF = cf(0, 0, 0)
local Orbs = {}
local OOrbs = {}
local Protected = {}
local O1 = false
local O2 = false
local O3 = false
local O4 = false
local eCharge = false
local energ = 0
local smite = false
local smtarget = nil
local move1 = "(Z)\nOverload"
local move2 = "(X)\nDischarge"
local move3 = "(C)\nSmite"
local move4 = "(V)\nUnleashed Diety"
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
local cooldownadd2 = 0.16
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.1
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.08
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
TorsoBlue = TorsoColor.Color.b
NewCol = BrickColor.new("White").Color
NewCol2 = BrickColor.new("Lapis").Color
NewCol3 = BrickColor.new("Navy blue").Color
NewCol4 = BrickColor.new("Bright blue").Color
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
if Character:findFirstChild("Effects", true) ~= nil then
  Character:findFirstChild("Effects", true).Parent = nil
end
local effects = it("Model", Character)
effects.Name = "Effects"
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

frame = 1 / 60
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
if Character:findFirstChild("Ezelle", true) ~= nil then
  Character:findFirstChild("Ezelle", true).Parent = nil
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
      if meshid == "rbxasset://fonts/leftarm.mesh" then
        mesh.MeshId = meshid
      else
        mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
      end
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
local handle = nil
AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(handle, prt, wldpar, ceef)
  v = it("NumberValue", prt)
  v.Value = trans
  v.Name = "MainTransparency"
  return prt, msh, wld
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
fenframe5.Parent = nil
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
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
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
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarammo1 = gui("TextButton", fenframe2, "Orbs", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(1.26, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Ezelle"
handle = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Handle", vt())
local prt1 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part01", vt())
msh1h = mesh("BlockMesh", handle, "", "", vt(0, 0, 0), vt(2, 2, 2))
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(1.8, 7, 1.8))
local handlewld = weld(handle, handle, Torso, euler(0, 0, -0.8) * cf(0, 0, -0.7))
local wld1 = weld(handle, prt1, handle, euler(0, 0, 0) * cf(0, 0, 0))
prt2 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part02", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2.8, 1, 2.8, euler(0, 0, 0) * cf(0, 0.8, 0))
prt3 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part03", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2, 1, 2, euler(0, 0, 0) * cf(0, 1, 0))
prt4 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part04", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2.1, 3, 2.1, euler(0, 0, 0) * cf(0, 1.4, 0))
prt5 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part05", "Neon", "CylinderMesh", "nil", "nil", 2.1, 0.9, 2.1, euler(0, 0, 0) * cf(0, 1, 0))
prt6 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part06", "SmoothPlastic", "BlockMesh", "nil", "nil", 2.3, 1, 2.3, euler(0, 0, 0) * cf(0, 1.8, 0))
prt7 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part07", "SmoothPlastic", "BlockMesh", "nil", "nil", 1, 3, 2, euler(0, 0, 0) * cf(0, 2.2, 0))
prt10 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part10", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2.4, 2.1, 2.4, euler(1.57, 0, 0) * cf(0, 2.7, 0))
prt11 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part11", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2.2, 2.15, 2.2, euler(1.57, 0, 0) * cf(0, 2.7, 0))
prt12 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part12", "Neon", "CylinderMesh", "nil", "nil", 2, 2.2, 2, euler(1.57, 0, 0) * cf(0, 2.7, 0))
prt13 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part13", "SmoothPlastic", "CylinderMesh", "nil", "nil", 3, 1.5, 3, euler(1.57, 0, 0) * cf(0, 2.7, 0))
prt14 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part14", "SmoothPlastic", "SpecialMesh", "Sphere", "nil", 1.5, 2.5, 2, euler(0, 0, 0) * cf(0, 2.9, 0))
prt15 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part15", "SmoothPlastic", "CylinderMesh", "nil", "nil", 1.4, 0.7, 1.4, euler(0, 0, 0) * cf(0, 3.1, 0))
prt16 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part16", "SmoothPlastic", "CylinderMesh", "nil", "nil", 1.3, 0.9, 1.3, euler(0, 0, 0) * cf(0, 3.26, 0))
prt17 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part17", "Neon", "CylinderMesh", "nil", "nil", 1.35, 0.5, 1.35, euler(0, 0, 0) * cf(0, 3.26, 0))
prt18 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part18", "Neon", "CylinderMesh", "nil", "nil", 1.4, 0.3, 1.4, euler(0, 0, 0) * cf(0, 3.38, 0))
prt23,msh23, wld23  = AesthPart(modelzorz, prt10, 0, 1, NewCol3, "Part23", "SmoothPlastic", "BlockMesh", "nil", "nil", 2, 2, 2, euler(0, math.rad(0), 0) * cf(-0.045, 0, 0))
prt24 = AesthPart(modelzorz, prt23, 0, 0, NewCol, "Part24", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.5, 2, 4, euler(0, 0, 0) * cf(0, 0, 0.5))
prt25 = AesthPart(modelzorz, prt24, 0, 0, NewCol, "Part25", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 2, 1, 1.5, euler(3.14, 0, -1.57) * cf(-0.15, 0, -0.25))
prt26 = AesthPart(modelzorz, prt24, 0, 0, NewCol, "Part26", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 2, 1, 2.5, euler(3.14, 0, -1.57) * euler(3.14, 0, 0) * cf(-0.15, 0, 0.15))
prt27,msh27, wld27 = AesthPart(modelzorz, prt10, 0, 1, NewCol3, "Part27", "SmoothPlastic", "BlockMesh", "nil", "nil", 2, 2, 2, euler(0, math.rad(0), 3.14) * cf(0.045, 0, 0))
prt28 = AesthPart(modelzorz, prt27, 0, 0, NewCol, "Part28", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.5, 2, 4, euler(0, 0, 0) * cf(0, 0, 0.5))
prt29 = AesthPart(modelzorz, prt28, 0, 0, NewCol, "Part29", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 2, 1, 1.5, euler(3.14, 0, -1.57) * cf(-0.15, 0, -0.25))
prt30 = AesthPart(modelzorz, prt28, 0, 0, NewCol, "Part30", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 2, 1, 2.5, euler(3.14, 0, -1.57) * euler(3.14, 0, 0) * cf(-0.15, 0, 0.15))
prt31 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part31", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.8, 2, 2.35, euler(0, 0, 0) * cf(0, 2, 0))
prt32 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part32", "Neon", "BlockMesh", "nil", "nil", 0.6, 1.8, 2.4, euler(0, 0, 0) * cf(0, 2, 0))
prt33 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part33", "SmoothPlastic", "CylinderMesh", "nil", "nil", 1.7, 2, 1.7, euler(0, 0, 0) * cf(0, -0.9, 0))
prt34 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part34", "Neon", "CylinderMesh", "nil", "nil", 1.75, 1.5, 1.75, euler(0, 0, 0) * cf(0, -0.9, 0))
prt35 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part35", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2.2, 2.4, 2.2, euler(0, 0, 0) * cf(0, -1.34, 0))
prt36 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part36", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2.2, 1, 2.2, euler(0, 0, 0) * cf(0, -1.68, 0))
prt37 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part37", "Neon", "CylinderMesh", "nil", "nil", 2.25, 0.8, 2.25, euler(0, 0, 0) * cf(0, -1.68, 0))
prt38 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part38", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2.3, 0.5, 2.3, euler(0, 0, 0) * cf(0, -1.83, 0))
prt39 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part39", "SmoothPlastic", "SpecialMesh", "FileMesh", "1778999", 0.47, 0.5, 0.47, euler(3.14, 0, 0) * cf(0, -1.7, 0))
prt40 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part40", "SmoothPlastic", "CylinderMesh", "nil", "nil", 3.2, 0.5, 3.2, euler(0, 0, 0) * cf(0, -2.15, 0))
prt41 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part41", "SmoothPlastic", "CylinderMesh", "nil", "nil", 1.8, 3, 1.8, euler(0, 0, 0) * cf(0, -2.5, 0))
prt42 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part42", "SmoothPlastic", "CylinderMesh", "nil", "nil", 4, 0.5, 4, euler(0, 0, 0) * cf(0, -2.8, 0))
prt54 = AesthPart(modelzorz, prt1, 0, 0.5, "Really blue", "Part54", "Neon", "SpecialMesh", "FileMesh", "1185246", -1.8, -1.8, -1.8, cf(0, -3.5, 0))
prt55 = AesthPart(modelzorz, prt1, 0, 0.3, NewCol2, "Part55", "Neon", "SpecialMesh", "Sphere", "nil", 4.5, 4.5, 4.5, cf(0, -3.5, 0))
prt56 = AesthPart(modelzorz, prt1, 0, 0, "Institutional white", "Part56", "Neon", "SpecialMesh", "Sphere", "nil", 3, 3, 3, cf(0, -3.5, 0))
prt54.Transparency = 1
prt55.Transparency = 1
prt56.Transparency = 1
for i = -1, 1, 2 do
  prt8 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part08", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 2, 3.5, 1, euler(0, -1.57 * i, 0) * cf(0.2 * i, 1.9, 0))
  prt9 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part09", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 2, 1.5, 1, euler(3.14, 1.57 * i, 0) * cf(0.2 * i, 2.4, 0))
end
for i = -1, 1, 2 do
  prt19 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part19", "SmoothPlastic", "BlockMesh", "nil", "nil", 0.3, 2, 1.6, euler(0, 0, 0) * cf(-0.12 * i, 3.11, 0))
  prt20 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part20", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1.6, 1, 0.5, euler(0, 1.57 * i, 0) * cf(-0.2 * i, 2.99, 0))
  prt21 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part21", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1.6, 1.1, 0.5, euler(3.14, -1.57 * i, 0) * cf(-0.2 * i, 3.2, 0))
end
for i = 1.57, 6.28 do
  prt42 = AesthPart(modelzorz, prt1, 0, 0, NewCol3, "Part42", "SmoothPlastic", "CylinderMesh", "nil", "nil", 3, 1, 3, euler(1.57, 0, 0) * cf(0.35, -2.5, 0) * euler(0, i, 0))
  prt43 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part43", "SmoothPlastic", "CylinderMesh", "nil", "nil", 1.5, 1.1, 1.5, euler(1.57, 0, 0) * cf(0.35, -2.5, 0) * euler(0, i, 0))
  prt44 = AesthPart(modelzorz, prt1, 0, 0, NewCol2, "Part44", "Neon", "SpecialMesh", "Sphere", "nil", 1.8, 1.5, 1.8, euler(1.57, 0, 0) * cf(0.35, -2.5, 0) * euler(0, i, 0))
  prt45 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part45", "SmoothPlastic", "BlockMesh", "nil", "nil", 2, 1.1, 1, euler(1.57, 0, 0) * cf(0.5, -2.5, 0) * euler(0, i, 0))
  prt46 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part46", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 2.5, 1, 1.1, euler(0, 0, -1.57) * cf(0.3, 0, 0) * euler(0, 0, -0.8) * cf(0.35, -2.5, 0) * euler(0, i, 0))
  prt47 = AesthPart(modelzorz, prt1, 0, 0, NewCol, "Part47", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 2.5, 1.5, 1.1, euler(0, 0, -1.57) * cf(0.35, 0, 0) * euler(0, 0, 0.8) * cf(0.35, -2.5, 0) * euler(0, i, 0))
  prt48 = AesthPart(modelzorz, prt1, 0, 1, NewCol3, "Part48", "SmoothPlastic", "BlockMesh", "nil", "nil", 1, 1, 1, euler(0, 0, -1.57) * cf(0.7, -2.8, 0) * euler(0, i, 0))
  prt49 = AesthPart(modelzorz, prt48, 0, 0, NewCol2, "Part49", "Neon", "BlockMesh", "nil", "nil", 2.5, 0.4, 0.4, euler(0, 0, 0) * cf(-0.25, 0, 0) * euler(0, 0, -0.2))
  prt50 = AesthPart(modelzorz, prt49, 0, 0, NewCol3, "Part50", "SmoothPlastic", "SpecialMesh", "FileMesh", "rbxasset://fonts/leftarm.mesh", -0.2, -0.25, -0.2, euler(0, 0, 1.57) * cf(0, 0, 0))
  prt51 = AesthPart(modelzorz, prt49, 0, 0, NewCol, "Part51", "SmoothPlastic", "BlockMesh", "nil", "nil", 2, 0.6, 0.8, euler(0, 0, 0) * cf(-0.35, 0, 0) * euler(0, 0, 0.2))
  prt52 = AesthPart(modelzorz, prt51, 0, 0, NewCol, "Part52", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.8, 0.6, 0.6, euler(0, -1.57, 0) * cf(0.14, -0.12, 0))
  prt53 = AesthPart(modelzorz, prt51, 0, 0, NewCol, "Part53", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.8, 0.6, 1.4, euler(0, 1.57, 0) * cf(-0.06, -0.12, 0))
  table.insert(TopStaff, wld49)
end
TSCF = cf(0.2, 0.05, 0) * euler(0, 0, -1.2)
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(handle:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox2", vt())
hitbox.Anchored = false
local hitboxCF = cf(0, 0, 0)
hboxpos = Instance.new("BodyPosition", nil)
hboxpos.P = 2000
hboxpos.D = 100
hboxpos.maxForce = Vector3.new(545000, 545000, 545000)
local shieldref = part(3, nil, 0, 1, BrickColor.new("Bright blue"), "Shield1", vt(40, 40, 40))
shieldref.Anchored = true
shieldref.CFrame = cf(Torso.Position)
shieldref.Shape = "Ball"
local shieldref2 = part(3, nil, 0, 0.5, BrickColor.new("Bright blue"), "Shield2", vt())
shieldref2.Anchored = true
srefmsh = mesh("SpecialMesh", shieldref2, "FileMesh", "90782182", vt(0, 0, 0), vt(4, 5, 4))
srefmsh.TextureId = "http://www.roblox.com/asset/?id=90782359"
srefmsh.VertexColor = vt(0.2, 0.2, 1)
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = prt12
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Zellar"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Virtue" then
  Bin.Name = "Zellar"
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
  TSCF = cf(0.2, 0.05, 0) * euler(0, 0, -1.2)
  for i = 0, 1, 0.05 do
    swait()
    prt54.Transparency = prt54.MainTransparency.Value + (1 - prt54.MainTransparency.Value) * i
    prt55.Transparency = prt55.MainTransparency.Value + (1 - prt55.MainTransparency.Value) * i
    prt56.Transparency = prt56.MainTransparency.Value + (1 - prt56.MainTransparency.Value) * i
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.7, 0, -0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.4)
  end
  prt54.Transparency = 1
  prt55.Transparency = 1
  prt56.Transparency = 1
  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2, 0, -0.4), 0.3)
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * euler(0, 0, 0.4) * euler(0.2, 0, 0) * cf(-1, -1.2, 0.5), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.5, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  handlewld.Part1 = Torso
  handlewld.C0 = euler(0, 0, -0.8) * cf(0, 0, -0.7)
  wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2, 0, -0.4), 0.3)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.5, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  handlewld.Part1 = LeftArm
  handlewld.C0 = euler(3.14, 0, 0) * euler(0, 0, 0.4) * euler(0.2, 0, 0) * cf(-1, -1.2, 0.5)
  wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
  d = 2
  for i = 0, 1, 0.08 do
    swait()
    d = d + 1
    if d >= 4 then
      d = 0
      so("199145146", handle, 1, 1.4)
    end
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    handlewld.C1 = handlewld.C1 * euler(0, -0.6, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -0.8), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.3) * euler(1.5, 0, 0.8), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  TSCF = euler(0, 0, 0) * cf(-0.25, 0, 0) * euler(0, 0, -0.2)
  for i = 0, 1, 0.05 do
    swait()
    prt54.Transparency = 1 - (1 - prt54.MainTransparency.Value) * i
    prt55.Transparency = 1 - (1 - prt55.MainTransparency.Value) * i
    prt56.Transparency = 1 - (1 - prt56.MainTransparency.Value) * i
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
    handlewld.C1 = clerp(handlewld.C1, cf(0, 0, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -0.8), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  prt54.Transparency = prt54.MainTransparency.Value
  prt55.Transparency = prt55.MainTransparency.Value
  prt56.Transparency = prt56.MainTransparency.Value
  mdec.Parent = nil
  mdec2.Parent = Decrease
  handlewld.C1 = cf(0, 0, 0)
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
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, -0.5, 0) * euler(-0.5, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.7, 0, 1) * euler(0, -1, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.2) * euler(0, 1.57, 0) * euler(-0.1, 0.2, -0.05), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.05), 0.3)
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
  so("199145095", prt56, 1, 1.1)
  hitbox.Parent = modelzorz
  hitbox.CFrame = prt1.CFrame * cf(0, 3, 0)
  for i = 0, 1, 0.1 do
    swait()
    hitbox.CFrame = prt1.CFrame * cf(0, 3, 0)
    MagniDamage(hitbox, 3, 5, 6, math.random(20, 25), "Normal", RootPart, 0.3, 2, (math.random(3, 5)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, -0.5, 0) * euler(0.5, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.2), 0.4)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.3) * euler(1.4, 0, 1) * euler(0, -1.5, 0) * euler(-2.5, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.3) * euler(0, 1.57, 0) * euler(-0.1, -0.2, -0.05), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.2, 0.05), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC458: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC458: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = nil
  attack = false
end
attacktwo = function()
  attack = true
  local d = 2
  for i = 0, 1, 0.1 do
    swait()
    d = d + 1
    if d >= 4 then
      d = 0
      so("199145146", handle, 1, 1.55)
    end
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.3)
    handlewld.C1 = handlewld.C1 * euler(0, 0.67, 0)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.3) * euler(1.4, 0, 1) * euler(0, -1.5, 0) * euler(-2.5, 0, 0) * euler(0, 2, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.3) * euler(0, 1.57, 0) * euler(-0.1, -0.4, -0.05), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.4, 0.05), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC228: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC228: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  local lnum = 0
  ref2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref2.Anchored = true
  for i = 0, 1, 0.2 do
    swait()
    lnum = lnum + 1
    ref2.CFrame = cf(prt18.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
    hitfloor2, posfloor2 = rayCast(ref2.Position, CFrame.new(ref2.Position, ref2.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
    if hitfloor2 ~= nil and (lnum) % 2 == 0 then
      Lightning(prt18.Position, posfloor2, 5, 1, NewCol2, 0.05, 0.4, 0.1)
    end
    MagicCircle(BrickColor.new(NewCol2), cf(prt18.Position), 6, 6, 6, -1, -1, -1, 0.05, 1, nil, nil, 0.5)
    MagicBlock(BrickColor.new(NewCol2), cf(prt18.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 2)
    wld23.C0 = clerp(wld23.C0, euler(0, math.rad(60), 0) * cf(-0.045, 0, 0), 0.45)
    wld27.C0 = clerp(wld27.C0, euler(0, math.rad(60), 3.14) * cf(0.045, 0, 0), 0.45)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.45)
    handlewld.C1 = clerp(handlewld.C1, cf(0, 0, 0), 0.45)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * euler(0, 0, -3) * cf(0, 0, 0), 0.45)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.2, 0, 0), 0.45)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.4), 0.45)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.3) * euler(1.4, 0, 1) * euler(0, -1.5, 0) * euler(-2.5, 0, 0) * euler(0, 0.4, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.3) * euler(0, 1.57, 0) * euler(-0.1, -0.4, -0.05), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.4, 0.05), 0.45)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC651: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC651: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145204", prt18, 0.8, 1.3)
  so("315743331", prt18, 1, 2)
  hitbox.Parent = modelzorz
  hitbox.CFrame = prt1.CFrame * cf(0, -3, 0)
  for i = 0, 1, 0.1 do
    swait()
    lnum = lnum + 1
    ref2.CFrame = cf(prt18.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
    hitfloor2 = rayCast(ref2.Position, CFrame.new(ref2.Position, ref2.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
    if hitfloor2 ~= nil and (lnum) % 2 == 0 then
      Lightning(prt18.Position, posfloor2, 5, 1, NewCol2, 0.05, 0.4, 0.1)
    end
    hitbox.CFrame = prt1.CFrame * cf(0, -3, 0)
    MagniDamage(hitbox, 3, 5, 6, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(3, 5)), nil, true)
    MagicCircle(BrickColor.new(NewCol2), cf(prt18.Position), 6, 6, 6, -1, -1, -1, 0.05, 1, nil, nil, 0.5)
    MagicBlock(BrickColor.new(NewCol2), cf(prt18.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 2)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.45)
    handlewld.C1 = clerp(handlewld.C1, cf(0, 0, 0), 0.45)
    wld1.C0 = clerp(wld1.C0, cf(0, 0.4, 0) * euler(-1, 0, 0) * euler(0, 0, -3), 0.45)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.05, 0, 0), 0.45)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.4), 0.45)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.8, 0, -1) * euler(0, -0.4, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.2) * euler(1.4, 0, -0.8) * euler(0, -1.3, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0.2, -0.2), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.2) * euler(0, -1.57, 0) * euler(0, 0.2, 0.05), 0.45)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC1060: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC1060: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  handlewld.C1 = cf(0, 0, 0)
  hitbox.Parent = nil
  attack = false
  for i = 0, 1, 0.1 do
    swait()
    wld23.C0 = clerp(wld23.C0, euler(0, math.rad(0), 0) * cf(-0.045, 0, 0), 0.45)
    wld27.C0 = clerp(wld27.C0, euler(0, math.rad(0), 3.14) * cf(0.045, 0, 0), 0.45)
  end
  wld23.C0 = clerp(wld23.C0, euler(0, math.rad(0), 0) * cf(-0.045, 0, 0), 1)
  wld27.C0 = clerp(wld27.C0, euler(0, math.rad(0), 3.14) * cf(0.045, 0, 0), 1)
end
attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, 1.57) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0) * euler(0, 0, -1), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(-0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3, 0, -0.6) * euler(0, -0.4, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.4) * euler(0, 1.57, 0) * euler(-0.1, -0.8, -0.05), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.2, 0.05), 0.3)
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
  so("199145095", prt56, 1, 0.9)
  hitbox.Parent = modelzorz
  hitbox.CFrame = prt1.CFrame * cf(0, 3, 0)
  for i = 0, 1, 0.1 do
    swait()
    hitbox.CFrame = prt1.CFrame * cf(0, 3, 0)
    MagniDamage(hitbox, 3, 5, 6, math.random(10, 15), "Normal", RootPart, 0.3, 2, (math.random(3, 5)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, 1.57) * cf(0, 1, 0), 0.45)
    wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0) * euler(0, 0, 0.8), 0.45)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(-0.1, 0, 0), 0.45)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.4) * euler(0.2, 0, 0) * euler(0, 0, -0.4), 0.45)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.8, 0, -1) * euler(0, -0.4, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.2) * euler(0.6, 0, -0.2) * euler(0, 0.3, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.4) * euler(0, 1.57, 0) * euler(-0.1, -0.4, -0.2), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * euler(0, -1.57, 0) * euler(0, 0.4, -0.25), 0.45)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC458: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC458: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = nil
  attack = false
end
attackfour = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, -1, 0) * euler(0.5, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.3) * euler(1.4, 0, 1) * euler(0, 1.5, 0) * euler(2, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.3) * euler(0, 1.57, 0) * euler(-0.1, -0.2, -0.05), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.2, 0.05), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145204", prt56, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    if i < 0.5 then
      refd = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      refd.Anchored = true
      refd.CFrame = prt56.CFrame
      game:GetService("Debris"):AddItem(refd, 1)
      so("315748999", refd, 0.4, 0.6)
      MagicCircle(BrickColor.new(NewCol2), prt56.CFrame, 6, 6, 6, 1, 1, 1, 0.1, 1, nil, nil, 0)
      table.insert(Effects, {prt56.CFrame, "Orb", math.random(40, 70)})
    end
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, -1, 0) * euler(0.8, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.1) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.3, 0, 1) * euler(0, 1.5, 0) * euler(-0.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0.2, -0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0.05), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC487: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC487: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end
EnergyCharge = function()
  attack = true
  eCharge = true
  energ = 0
  local deca = Instance.new("NumberValue", Decrease)
  deca.Name = "DecreaseDef"
  deca.Value = 0.1
  local summonorb = false
  while eCharge == true do
    swait()
    energ = energ + 1
    if energ >= 100 then
      eCharge = false
      summonorb = true
    end
    MagicCircle2(BrickColor.new(NewCol2), cf(prt56.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, 2, 0), 1, 4, 1, -0.01, 1, -0.01, 0.1, -0.4)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, 0, 0) * euler(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.4), 0.4)
    RW.C0 = clerp(RW.C0, cf(0.9, 0.4, 0.4) * euler(-0.5, 0, -1) * euler(0, -0.4, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.6) * euler(0, 1.2, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.4, -0.05), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0.15), 0.4)
  end
  if summonorb == true then
    MagicCircle(BrickColor.new(NewCol2), prt56.CFrame, 10, 10, 10, 1, 1, 1, 0.05, 1, nil, nil, 0)
    omain, omsh, owld = AesthPart(modelzorz, prt56, 0, 1, NewCol2, "OrbRef", "SmoothPlastic", "SpecialMesh", "Sphere", "nil", 1, 1, 1, cf(0, 0, 0))
    oprt1, omsh1, owld1 = AesthPart(omain, omain, 0, 0.5, NewCol3, "Orb1", "Neon", "SpecialMesh", "FileMesh", "rbxasset://fonts/leftarm.mesh", -0.8, -0.4, -0.8, cf(0, 0, 0))
    oprt2, omsh2, owld2 = AesthPart(oprt1, oprt1, 0, 0.3, NewCol2, "Orb2", "Neon", "SpecialMesh", "Sphere", "nil", 3, 3, 3, cf(0, 0, 0))
    oprt3, omsh3, owld3 = AesthPart(oprt1, oprt1, 0, 0, NewCol, "Orb3", "Neon", "SpecialMesh", "Sphere", "nil", 2, 2, 2, cf(0, 0, 0))
    owld1.Parent = nil
    oprt1.CFrame = omain.CFrame
    prop = Instance.new("RocketPropulsion")
    prop.Parent = oprt1
    prop.Target = omain
    prop.TargetRadius = 3
    prop.MaxSpeed = 500
    prop.CartoonFactor = 1
    prop.MaxThrust = 10
    prop.ThrustD = 30
    prop.ThrustP = 500
    prop.MaxTorque = vt(5, 5, 5)
    prop.TurnD = 5
    prop.TurnP = 500
    prop:Fire()
    table.insert(Orbs, {omain, owld, oprt1, prop})
  end
  deca.Parent = nil
  attack = false
end
ShootOrb = function()
  attack = true
  for i = 1, #Orbs do
    Orbs[i][2].Parent = nil
    Orbs[i][1].Anchored = true
    Orbs[i][1].CFrame = cf(RootPart.Position) * cf(0, 5, 0)
    Orbs[i][4].MaxSpeed = 200
    Orbs[i][4].ThrustD = 100
    Orbs[i][4].ThrustP = 800
    Orbs[i][4].MaxTorque = vt(50, 50, 50)
    Orbs[i][4].TurnD = 40
  end
  if #Orbs % 2 == 0 then
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, 0, 0) * euler(0.5, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.2), 0.3)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, 0.2) * euler(1.8, 0, -1) * euler(0, 0.7, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.3) * euler(0, 1.57, 0) * euler(-0.1, -0.2, -0.05), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.2, 0.05), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC265: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC265: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("377357731", Orbs[#Orbs][3], 1, 1)
    Orbs[#Orbs][4].Parent = nil
    Orbs[#Orbs][3].Anchored = true
    local MouseLook = cf((Orbs[#Orbs][3].Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
    table.insert(Effects, {MouseLook.lookVector, "Shoot", 30, Orbs[#Orbs][3].Position, 7, 9, Orbs[#Orbs][3], Orbs[#Orbs][1]})
    table.remove(Orbs, #Orbs)
    for i = 0, 1, 0.4 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.5)
      wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, 0, 0) * euler(0.5, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.1, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.6), 0.5)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, -0.4) * euler(0, -0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 0.6, 0.1), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC542: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC542: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.15 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.45)
      wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, 0, 0) * euler(0.5, 0, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.1, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.6), 0.45)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-0.6, 0.5, -0.5) * euler(0.8, 0, 0.4) * euler(0, -0.5, 0) * euler(0, 0, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 0.6, 0.1), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC748: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC748: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
attack=false
  else
    do
      for i = 0, 1, 0.1 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, -0.5, 0) * euler(-0.2, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.3), 0.3)
        RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.7, 0, 1) * euler(0, -1, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.2) * euler(0, 1.57, 0) * euler(-0.1, 0.2, -0.05), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.05), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC949: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC949: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      so("377357731", Orbs[#Orbs][3], 1, 1)
      Orbs[#Orbs][4].Parent = nil
      Orbs[#Orbs][3].Anchored = true
      do
        local MouseLook = cf((Orbs[#Orbs][3].Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
        table.insert(Effects, {MouseLook.lookVector, "Shoot", 30, Orbs[#Orbs][3].Position, 7, 9, Orbs[#Orbs][3], Orbs[#Orbs][1]})
        table.remove(Orbs, #Orbs)
        for i = 0, 1, 0.1 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.4)
          wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, -0.5, 0) * euler(0.8, 0, 0), 0.4)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.2), 0.4)
          RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.2) * euler(1.7, 0, 1) * euler(0, -1, 0) * euler(-2.4, 0, -0.5), 0.4)
          RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.3) * euler(0, 1.57, 0) * euler(-0.1, -0.2, -0.05), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.2, 0.05), 0.4)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC1226: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1226: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        for i = 1, #Orbs do
          Orbs[i][1].Anchored = false
          Orbs[i][2].Parent = Orbs[i][1]
          Orbs[i][4].MaxSpeed = 500
          Orbs[i][4].ThrustD = 30
          Orbs[i][4].ThrustP = 500
          Orbs[i][4].MaxTorque = vt(5, 5, 5)
          Orbs[i][4].TurnD = 5
        end
        attack = false
      end
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
  mnum = #Orbs * 5
  if cooldownmax <= cooldowns[1] and mnum <= mana.Value then
    attack = true
    if mnum > 0 then
      cooldowns[1] = 0
    end
    mana.Value = mana.Value - mnum
    print(#Orbs)
    so("2101137", prt56, 1, 1)
    for i = 0, 1, 0.05 do
      swait()
      MagicCircle2(BrickColor.new(NewCol2), cf(prt56.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 4, 1, -0.01, 1, -0.01, 0.1, 0.6)
      for i = 1, #Orbs do
        MagicBlock(BrickColor.new(NewCol4), cf(Orbs[i][3].Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1.5, 1.5, 1.5, -0.2, -0.2, -0.2, 0.2, 1)
      end
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * euler(1, 0, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.2) * euler(1.57, 0, -1) * euler(0.2, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC356: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC356: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if #Orbs == 1 and O1 == false then
      O1 = true
      for i = 0, 1, 0.1 do
        swait()
        MagicCircle2(BrickColor.new(NewCol2), cf(prt56.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 4, 1, -0.01, 1, -0.01, 0.1, 0.6)
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * euler(0.6, 0, 0) * cf(0, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(-0.6, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.3)
        RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.2) * euler(1.57, 0, -1) * euler(1, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC601: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC601: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      MagicCircle(BrickColor.new(NewCol2), prt56.CFrame, 10, 10, 10, 1, 1, 1, 0.05, 1, nil, nil, 0)
      dar = #OOrbs
      table.insert(OOrbs, Orbs[1])
      for i = 1, #Orbs do
        table.remove(Orbs, 1)
      end
      for i = dar + 1, dar + 1 do
        OOrbs[i][2].Parent = nil
        OOrbs[i][1].Anchored = true
        OOrbs[i][4].MaxSpeed = 100
        OOrbs[i][1].CFrame = RootPart.CFrame * cf(0, 5, 0)
        table.insert(Effects, {OOrbs[i][1], "Sentry", OOrbs[i][3], 0, 50})
      end
      for i = 0, 1, 0.1 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
        wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * euler(0.2, 0, 0) * cf(0, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.4)
        RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.2) * euler(-0.8, 0, -0.6) * euler(0, 1.8, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC891: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC891: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    else
      if #Orbs == 2 and O2 == false then
        O2 = true
        for i = 0, 1, 0.1 do
          swait()
          MagicCircle2(BrickColor.new(NewCol2), cf(prt56.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 4, 1, -0.01, 1, -0.01, 0.1, 0.6)
          for i = 1, #Orbs do
            MagicBlock(BrickColor.new(NewCol4), cf(Orbs[i][3].Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1.5, 1.5, 1.5, -0.2, -0.2, -0.2, 0.2, 1)
          end
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
          wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(0.6, 0, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.4) * euler(0.1, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(2, 0, -1.5) * euler(0.2, 0, 0) * euler(0, -0.2, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.3)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC1208: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1208: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        MagicCircle(BrickColor.new(NewCol2), prt56.CFrame, 10, 10, 10, 1, 1, 1, 0.05, 1, nil, nil, 0)
        dar = #OOrbs
        table.insert(OOrbs, Orbs[1])
        table.insert(OOrbs, Orbs[2])
        for i = 1, #Orbs do
          table.remove(Orbs, 1)
        end
        for i = dar + 1, dar + 2 do
          OOrbs[i][4].MaxSpeed = 500
          tar1 = findNearestAlly2(RootPart.Position)
          if tar1 == nil then
            tar1 = Torso
            for i = 1, #Protected do
              if Protected[i] == tar1 then
                tar1 = nil
              end
            end
          end
          do
            do
              if tar1 ~= nil then
                table.insert(Protected, tar1)
                OOrbs[i][2].Part1 = tar1
                OOrbs[i][2].C0 = cf(0, 0, 0)
                table.insert(Effects, {OOrbs[i][1], "Protect", OOrbs[i][3], 0, 50, tar1, tar1.Parent})
              else
                MagicCircle(BrickColor.new(NewCol2), cf(OOrbs[i][3].Position), 5, 5, 5, -0.5, -0.5, -0.5, 0.05, 1, nil, nil, 0)
                OOrbs[i][1].Parent = nil
                OOrbs[i][3].Parent = nil
                table.remove(OOrbs, i)
              end
              -- DECOMPILER ERROR at PC1363: LeaveBlock: unexpected jumping out DO_STMT

            end
          end
        end
        for i = 0, 1, 0.13 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
          wld1.C0 = clerp(wld1.C0, cf(0, 0.5, 0) * euler(0, 1.57, 0) * euler(0.8, 0, 0), 0.45)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.45)
          RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(0.9, 0, -0.8) * euler(0.2, 0, 0) * euler(0, -1, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.45)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC1569: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1569: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      else
        if #Orbs == 3 and O3 == false then
          O3 = true
          for i = 0, 1, 0.1 do
            swait()
            MagicCircle2(BrickColor.new(NewCol2), cf(prt56.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 4, 1, -0.01, 1, -0.01, 0.1, 0.6)
            for i = 1, #Orbs do
              MagicBlock(BrickColor.new(NewCol4), cf(Orbs[i][3].Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1.5, 1.5, 1.5, -0.2, -0.2, -0.2, 0.2, 1)
            end
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
            wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * euler(0.4, 0, 0) * cf(0, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.3)
            RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.1, 0.5, -0.5) * euler(1.57, 0, 0.6) * euler(0.2, 0, 0) * euler(0, -1.4, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.3)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC1886: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1886: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          dar = #OOrbs
          table.insert(OOrbs, Orbs[1])
          table.insert(OOrbs, Orbs[2])
          table.insert(OOrbs, Orbs[3])
          for i = 1, #Orbs do
            table.remove(Orbs, 1)
          end
          for i = dar + 1, dar + 3 do
            OOrbs[i][1].Anchored = true
            OOrbs[i][2].Parent = nil
            OOrbs[i][3].Anchored = true
            OOrbs[i][4].MaxSpeed = 500
            OOrbs[i][4].Parent = nil
            bleh = MMouse.Hit.p + vt(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100)
            local MouseLook = cf((OOrbs[i][3].Position + bleh) / 2, bleh)
            local targ = OOrbs[i][3].Position - bleh
            local mag = targ.magnitude / 5 * math.random(80, 120) / 100
            if mag > 50 then
              mag = 50
            end
            so("377357731", OOrbs[i][1], 1, 1.4)
            table.insert(Effects, {MouseLook.lookVector, "ShootSeek", mag, OOrbs[i][1], OOrbs[i][2], OOrbs[i][3], OOrbs[i][4], OOrbs[i][3].Position, 4, 6})
          end
          for i = 0, 1, 0.05 do
            swait()
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
            wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0) * euler(0, 1.57, 0) * euler(1, 0, 0), 0.4)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.05, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.2), 0.4)
            if i < 0.4 then
              RootJoint.C1 = clerp(RootJoint.C1, RootCF * euler(0, 0, -15 * i), 0.4)
            else
              RootJoint.C1 = clerp(RootJoint.C1, RootCF, 0.4)
            end
            RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.3) * euler(-0.2, 0, 0) * euler(0, -1.4, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.2, 0.1), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.2) * euler(0, -1.57, 0) * euler(-0.1, -0.2, 0.1), 0.4)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC2264: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC2264: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        else
          if #Orbs == 4 and O4 == false then
            O4 = true
            for i = 0, 1, 0.1 do
              swait()
              MagicCircle2(BrickColor.new(NewCol2), cf(prt56.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 4, 1, -0.01, 1, -0.01, 0.1, 0.6)
              for i = 1, #Orbs do
                MagicBlock(BrickColor.new(NewCol4), cf(Orbs[i][3].Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1.5, 1.5, 1.5, -0.2, -0.2, -0.2, 0.2, 1)
              end
              handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
              wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * euler(-0.2, 0, 0) * cf(0, 0, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.3)
              RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.2) * euler(1.57, 0, -1) * euler(1, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.3)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC2575: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC2575: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            for i = 0, 1, 0.13 do
              swait()
              MagicCircle2(BrickColor.new(NewCol2), cf(prt56.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 4, 1, -0.01, 1, -0.01, 0.1, 0.6)
              for i = 1, #Orbs do
                MagicBlock(BrickColor.new(NewCol4), cf(Orbs[i][3].Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1.5, 1.5, 1.5, -0.2, -0.2, -0.2, 0.2, 1)
              end
              handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
              wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * euler(-0.1, 0, 0) * cf(0, 0, 0), 0.5)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.5)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.5)
              RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.5)
              LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.2) * euler(1.57, 0, -1) * euler(-0.1, 0, 0), 0.5)
              RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.6) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.05), 0.5)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.6) * euler(0, -1.57, 0) * euler(0, 1, 0.05), 0.5)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC2876: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC2876: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            MagicCircle(BrickColor.new(NewCol2), prt56.CFrame, 10, 10, 10, 1, 1, 1, 0.05, 1, nil, nil, 0)
            shieldref.Parent = workspace
            shieldref.Transparency = 1
            shieldref.CFrame = cf(RootPart.Position) * cf(0, -1, 0)
            shieldref2.Parent = workspace
            shieldref2.Transparency = 1
            shieldref2.CFrame = cf(shieldref.Position) * cf(0, 2.5, 0)
            table.insert(Effects, {shieldref2, "ShieldEf"})
            srefmsh.Scale = vt(4, 5, 4)
            dar = #OOrbs
            table.insert(OOrbs, Orbs[1])
            table.insert(OOrbs, Orbs[2])
            table.insert(OOrbs, Orbs[3])
            table.insert(OOrbs, Orbs[4])
            for i = 1, #Orbs do
              table.remove(Orbs, 1)
            end
            teh = 0
            for i = dar + 1, dar + 4 do
              OOrbs[i][1].Anchored = true
              OOrbs[i][2].Parent = nil
              OOrbs[i][4].MaxSpeed = 100
              OOrbs[i][1].CFrame = shieldref.CFrame * euler(0, teh, 0) * cf(0, 0, 20)
              teh = teh + 1.57
            end
            table.insert(Effects, {shieldref, "Shield", 50, shieldref2})
          end
        end
      end
    end
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 20 then
    attack = true
    cooldowns[2] = 0
    mana.Value = mana.Value - 20
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    ref2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref2.Anchored = true
    for i = 0, 1, 0.1 do
      swait()
      ref2.CFrame = cf(prt18.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
      hitfloor2 = rayCast(ref2.Position, CFrame.new(ref2.Position, ref2.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
      if hitfloor2 ~= nil then
        Lightning(prt18.Position, posfloor2, 5, 1, NewCol2, 0.1, 0.4, 0.1)
      end
      MagicCircle(BrickColor.new(NewCol2), cf(prt18.Position), 6, 6, 6, -1, -1, -1, 0.05, 1, nil, nil, 0.5)
      MagicBlock(BrickColor.new(NewCol2), cf(prt18.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 2)
      wld23.C0 = clerp(wld23.C0, euler(0, math.rad(60), 0) * cf(-0.045, 0, 0), 0.45)
      wld27.C0 = clerp(wld27.C0, euler(0, math.rad(60), 3.14) * cf(0.045, 0, 0), 0.45)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * euler(0.6, 0, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.2), 0.3)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, -0.2), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.4, -0.05), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.05), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC431: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC431: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("315743331", prt18, 1, 2)
    for i = 0, 1, 0.2 do
      swait()
      ref2.CFrame = cf(prt18.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
      hitfloor2 = rayCast(ref2.Position, CFrame.new(ref2.Position, ref2.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
      if hitfloor2 ~= nil then
        Lightning(prt18.Position, posfloor2, 5, 1, NewCol2, 0.1, 0.4, 0.1)
      end
      MagicCircle(BrickColor.new(NewCol2), cf(prt18.Position), 6, 6, 6, -1, -1, -1, 0.05, 1, nil, nil, 0.5)
      MagicBlock(BrickColor.new(NewCol2), cf(prt18.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 2)
      wld23.C0 = clerp(wld23.C0, euler(0, math.rad(60), 0) * cf(-0.045, 0, 0), 0.45)
      wld27.C0 = clerp(wld27.C0, euler(0, math.rad(60), 3.14) * cf(0.045, 0, 0), 0.45)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.7, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.3, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0, 0, -0.2), 0.45)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -0.2), 0.45)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.2, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.4, -0.3), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.2) * euler(0, -1.57, 0) * euler(0, 0.2, 0.1), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC809: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC809: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    shieldref.Parent = nil
    table.insert(Effects, {shieldref2, "Cylinder", 0.05, 0.1, 0.1, 0.1, srefmsh})
    O1 = false
    O2 = false
    O3 = false
    O4 = false
    for i = 1, #OOrbs do
      ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(OOrbs[1][3].Position)
      so("161006093", ref, 1, 1.8)
      game:GetService("Debris"):AddItem(ref, 0.2)
      MagicCircle(BrickColor.new(NewCol2), cf(OOrbs[1][3].Position), 10, 10, 10, 5, 5, 5, 0.07)
      dra = math.random(-50, 50)
      for i = 0.785, 6.28, 0.785 do
        MagicCircle2(BrickColor.new(NewCol2), cf(OOrbs[1][3].Position) * euler(dra, 0, i), 4, 5, 4, -0.02, 2, -0.02, 0.05, 0.8)
      end
      MagniDamage(ref, 15, 10, 12, 0, "Normal", ref, 0, 1, (math.random(3, 5)), nil, nil, true)
      MagniHeal(ref, 10, 4, 6)
      OOrbs[1][1].Parent = nil
      OOrbs[1][3].Parent = nil
      table.remove(OOrbs, 1)
    end
    for i = 1, #Protected do
      table.remove(Protected, 1)
    end
    for i = 0, 1, 0.15 do
      swait()
      ref2.CFrame = cf(prt18.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
      hitfloor2 = rayCast(ref2.Position, CFrame.new(ref2.Position, ref2.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
      if hitfloor2 ~= nil then
        Lightning(prt18.Position, posfloor2, 5, 1, NewCol2, 0.1, 0.4, 0.1)
      end
      MagicCircle(BrickColor.new(NewCol2), cf(prt18.Position), 6, 6, 6, -1, -1, -1, 0.05, 1, nil, nil, 0.5)
      MagicBlock(BrickColor.new(NewCol2), cf(prt18.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 2)
      wld23.C0 = clerp(wld23.C0, euler(0, math.rad(60), 0) * cf(-0.045, 0, 0), 0.45)
      wld27.C0 = clerp(wld27.C0, euler(0, math.rad(60), 3.14) * cf(0.045, 0, 0), 0.45)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.7, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.3, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0, 0, -0.2), 0.45)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.4, 0.2) * euler(-0.6, 0, -0.9) * euler(0, -0.2, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -0.2), 0.45)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.2, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.4, -0.3), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.2) * euler(0, -1.57, 0) * euler(0, 0.2, 0.1), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC1352: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1352: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    dec.Parent = nil
    attack = false
    for i = 0, 1, 0.1 do
      swait()
      wld23.C0 = clerp(wld23.C0, euler(0, math.rad(0), 0) * cf(-0.045, 0, 0), 0.45)
      wld27.C0 = clerp(wld27.C0, euler(0, math.rad(0), 3.14) * cf(0.045, 0, 0), 0.45)
    end
    wld23.C0 = clerp(wld23.C0, euler(0, math.rad(0), 0) * cf(-0.045, 0, 0), 1)
    wld27.C0 = clerp(wld27.C0, euler(0, math.rad(0), 3.14) * cf(0.045, 0, 0), 1)
  end
end
do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 20 then
    attack = true
    cooldowns[3] = 0
    mana.Value = mana.Value - 20
    for i = 0, 1, 0.1 do
      swait()
      MagicBlock(BrickColor.new(NewCol2), RightArm.CFrame * cf(0, -1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, -2, 0), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 3)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.8), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.2) * euler(1.2, 0, -0.6) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -0.8) * euler(0, 0.4, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0.2, -0.05), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 0.8, 0.05), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC276: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC276: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("315743331", RightArm, 1, 1.6)
    so("315743350", RightArm, 1, 1.6)
    for i = 1, 0, -0.05 do
      swait()
      hitbox.CFrame = RightArm.CFrame * cf(0, -1, 0)
      smite = true
      MagniDamage(hitbox, 3, 7, 9, 0, "Normal", RootPart, 1, 2, (math.random(3, 5)), nil, true)
      smite = false
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * 80 * i
      end
      MagicCircle(BrickColor.new(NewCol2), RightArm.CFrame * cf(0, -1, 0), 15, 15, 15, -2, -2, -2, 0.05, 1, nil, nil, 0.5)
      MagicBlock(BrickColor.new(NewCol2), RightArm.CFrame * cf(0, -1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, -2, 0), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 3)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
      wld1.C0 = clerp(wld1.C0, euler(-0.4, 0, 0) * cf(0, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.8) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.8), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.2) * euler(1.5, 0, 0.8) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.8) * euler(0, 0.2, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.4) * euler(0, 1.57, 0) * euler(-0.1, -1, 0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.8, 0.1), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value ~= true then
        do
          if smtarget ~= nil then
            break
          end
          -- DECOMPILER ERROR at PC598: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC598: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if smtarget ~= nil then
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * -80
      end
      for i = 0, 1, 0.1 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.2, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.8), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.2) * euler(1, 0, 1) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -0.8) * euler(0, 0.4, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0.2, -0.05), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 0.8, 0.05), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC805: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC805: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    smite = false
    smtarget = nil
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
  attack = true
  cooldowns[4] = 0
  attack = false
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
MagniBuff = function(Part, magni, Dec, DecAm, Dur)
  if Player.Neutral == true then
    DecreaseStat(Character, Dec, DecAm, Dur)
  end
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
MagniDebuff = function(Part, magni, Dec, DecAm, Dur)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        -- DECOMPILER ERROR at PC53: Unhandled construct in 'MakeBoolean' P1

        -- DECOMPILER ERROR at PC53: Unhandled construct in 'MakeBoolean' P1

        if mag <= magni and c.Name ~= Player.Name and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and (game.Players:GetPlayerFromCharacter(head.Parent).TeamColor ~= Player.TeamColor or Player.Neutral == true) then
          DecreaseStat(head.Parent, Dec, DecAm, Dur)
        end
      end
    end
    DecreaseStat(head.Parent, Dec, DecAm, Dur)
  end
end
MagniHeal = function(Part, magni, mindam, maxdam)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        local cando = true
        if mag <= magni then
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
          if cando == true then
            Heal = math.random(mindam, maxdam)
            if c.Parent == Character then
              Heal = math.floor(math.random(mindam / 2, maxdam / 2))
            end
            hum.Health = hum.Health + Heal
            showDamage(c, Heal, "Heal")
          end
        end
      end
    end
  end
end
rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
findNearestTorso = function(pos)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = 1000
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    if temp2.className == "Model" and temp2.Name ~= Character.Name then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        local dohit = true
        if temp2:findFirstChild("Alive") == nil then
          dohit = false
        end
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
          dohit = false
        end
        if Player.Neutral == false and temp2:findFirstChild("Alignment") ~= nil and temp2.Alignment.Value == Player.TeamColor.Color then
          dohit = false
        end
        if dohit == true then
          torso = temp
          dist = (temp.Position - pos).magnitude
        end
      end
    end
  end
  return torso, dist
end
findNearestAlly = function(pos)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = 1000
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    if temp2.className == "Model" and temp2.Name ~= Character.Name then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        local dohit = false
        if temp2:findFirstChild("Alive") == nil then
          dohit = false
        end
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
          dohit = true
        end
        if Player.Neutral == false and temp2:findFirstChild("Alignment") ~= nil and temp2.Alignment.Value == Player.TeamColor.Color then
          dohit = true
        end
        if dohit == true then
          torso = temp
          dist = (temp.Position - pos).magnitude
        end
      end
    end
  end
  return torso, dist
end
findNearestAlly2 = function(pos)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = 1000
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    if temp2.className == "Model" and temp2.Name ~= Character.Name then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        local dohit = false
        if temp2:findFirstChild("Alive") == nil then
          dohit = false
        end
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
          dohit = true
        end
        if Player.Neutral == false and temp2:findFirstChild("Alignment") ~= nil and temp2.Alignment.Value == Player.TeamColor.Color then
          dohit = true
        end
        for i = 1, #Protected do
          if Protected[i] == temp then
            dohit = false
          end
        end
        if dohit == true then
          torso = temp
          dist = (temp.Position - pos).magnitude
        end
      end
    end
  end
  return torso, dist
end
local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
LastPoint = Point
effect = function(Color, Ref, LP, P1, returnn, size, thing1)
  if LP == nil or P1 == nil then
    return 
  end
  local effectsmsh = Instance.new("SpecialMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.MeshType = "Head"
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = effects
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = LP.p - (point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(size, 1, size)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  if not returnn then
    if thing1 == 1 then
      table.insert(Effects, {effectsg, "Cylinder", 0.05, 0.2, 0, 0.2, effectsmsh})
    else
      table.insert(Effects, {effectsg, "Cylinder", 0.2, 0.01, 0, 0.01, effectsmsh})
    end
  end
end
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame, math.random(10, 50) / 100})
      end
    end
  end
end
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, prt2, par, trans)
  local prt = (part(3, effects, 0, trans, brickcolor, "Effect", vt()))
  local wld = nil
  prt.Anchored = true
  prt.CFrame = cframe
  if par ~= nil then
    prt.Parent = par
  end
  if Type ~= 3 then
    prt.Anchored = true
  else
    prt.Anchored = false
    wld = weld(prt, prt, prt2, cframe)
  end
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type ~= 3 then
    table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
  else
    table.insert(Effects, {prt, "Block4", delay, x3, y3, z3, msh, wld, cframe})
  end
end
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end
MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
ClangEffect = function(brickcolor, cframe, duration, decrease, size, power)
  local prt = part(3, effects, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "CylinderClang", duration, decrease, size, power, prt.CFrame, nil})
end
MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, par)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  if par ~= nil then
    prt.Parent = par
  end
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicSpecial = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "24388358", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
Lightning = function(p0, p1, tym, ofs, col, th, tra, last)
  local magz = (p0 - p1).magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", effects)
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
    li.Material = "Neon"
    if tym == i then
      local magz2 = (curpos - p1).magnitude
      li.Size = Vector3.new(th, th, magz2)
      li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
          table.insert(Effects, {li, "Disappear", last})
    else
      do
        do
          li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
          curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
          game.Debris:AddItem(li, 10)
          table.insert(Effects, {li, "Disappear", last})
        end
      end
    end
  end
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
  if eCharge == true and mana.Value >= 10 then
    energ = 100
    mana.Value = mana.Value - 10
    eCharge = false
    return 
  end
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if #Orbs < 1 then
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
  else
    ShootOrb()
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
asc = Character.Animate
key = function(key)
  if key == "e" and eCharge == true then
    eCharge = false
    return 
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
      asc.Parent = nil
      equipanim()
    else
      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      Animate.Parent = Humanoid
      asc.Parent = Character
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
  if key == "q" then
    table.remove(Orbs, 1)
    print(#Orbs)
  end
  if key == "e" and #Orbs < 4 then
    EnergyCharge()
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
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  player = Player
  ch = Character
end
ds = function(mouse)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Virtue loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local cursnum = 0
local staggeranim = false
local stunanim = false
local walk = 0
local walkforw = true
local disabledhealth = false
  while 1 do
    swait()
  swait()
  for i = 1, #TopStaff do
    TopStaff[i].C0 = clerp(TopStaff[i].C0, TSCF, 0.1)
  end
  for i = 1, #OOrbs do
    MagicBlock(BrickColor.new(NewCol4), cf(OOrbs[i][3].Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, -0.5, -0.5, -0.5, 0.2, 2)
  end
  if 100 < Humanoid.Health then
    Humanoid.Health = 100
  end
  if Humanoid.Health <= 0 then
    shieldref.Parent = nil
    shieldref2.Parent = nil
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
      hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
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
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.8, 0, -1) * euler(0, -0.2, 0), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.6) * euler(0, 0.5, 0), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.1, 0, -1.2) * euler(0, 0.1, 0), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              if #Orbs < 1 then
                handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.15)
                wld1.C0 = clerp(wld1.C0, euler(-((donum) / 3), 0, 0) * cf(0, 0, 0), 0.15)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.1, 0, 0), 0.15)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.2), 0.15)
                RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.3, 0, -1) * euler(0, -0.2, 0), 0.15)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57 - (donum) / 3, (donum) / 2, -0.2 - (donum) / 2), 0.15)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.4, -0.05), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.05), 0.2)
              else
                handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.15)
                wld1.C0 = clerp(wld1.C0, euler(0, 1.57, 0) * cf(0, 0.4, 0) * euler(0.8, 0, 0), 0.15)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.15)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.4), 0.15)
                RW.C0 = clerp(RW.C0, cf(0.9, 0.4, 0.4) * euler(-0.5, 0, -1) * euler(0, -0.4, 0), 0.15)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5 - (donum) / 3, 0, -0.4 - (donum) / 2) * euler(0, 0.2, 0), 0.15)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.4, -0.05), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0.15), 0.2)
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
              if attack == false then
                handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.8, 0, -1) * euler(0, -0.2, 0), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.2) * euler(0, 0.5, 0), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                  wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1, 0.4, 0.2) * euler(-0.8, 0, -1) * euler(0, -0.2, 0), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.2) * euler(0, 0.5, 0), 0.2)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
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
    fenbarammo1.Text = "Orbs\n" .. #Orbs .. "/" .. #OOrbs .. ""
    if StunT.Value <= Stun.Value then
      fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
    else
      fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
    end
    fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
    if 100 <= mana.Value then
      mana.Value = 100
    else
      if mananum <= 15 then
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
    -- DECOMPILER ERROR at PC8831: LeaveBlock: unexpected jumping out DO_STMT

  end

if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
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
                              effect("New Yeller", 0, Thing[8], Thing[7], nil, 0.1, 2)
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
                          if Thing[2] == "CloneEf" then
                            if Thing[3] <= 500 then
                              Thing[3] = Thing[3] + 1
                              if 10 <= Thing[4] then
                                Thing[4] = 0
                              end
                              Thing[4] = Thing[4] + 1
                            else
                              table.remove(Effects, e)
                            end
                          end
                          if Thing[2] == "SatelliteStrike" then
                            if Thing[5] < 100 then
                              Thing[5] = Thing[5] + 2
                              Thing[6] = Thing[6] + 1
                              if 2 < Thing[6] then
                                Thing[6] = 0
                                if Thing[3].BrickColor == BrickColor.new("New Yeller") then
                                  Thing[3].Transparency = 0.8
                                  Thing[3].BrickColor = BrickColor.new("Really red")
                                else
                                  Thing[3].Transparency = 0.8
                                  Thing[3].BrickColor = BrickColor.new("New Yeller")
                                end
                              end
                            else
                              refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                              refda.Anchored = true
                              refda.CFrame = cf(Thing[1].Position) * cf(0, 500, 0)
                              game:GetService("Debris"):AddItem(refda, 1)
                              local mag = (refda.Position - Thing[1].Position).magnitude
                              MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + Thing[1].Position) / 2, Thing[1].Position) * angles(1.57, 0, 0), 40, mag * 5, 40, 0, 0, 0, 0.3)
                              Lightning(refda.Position, Thing[1].Position, 15, 5, "Bright yellow", 3.5, 0.2, 0.05)
                              MagicBlock2(BrickColor.new("Bright yellow"), cf(Thing[1].Position), 40, 40, 40, -1, -1, -1, 0.08, 1)
                              refda.CFrame = cf(Thing[1].Position)
                              MagniDamage(refda, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                              refda.CFrame = cf(Thing[1].Position) * cf(0, 3, 0)
                              MagniDamage(refda, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                              refda.CFrame = cf(Thing[1].Position)
                              so("341336446", refda, 1, math.random(100, 120) / 100)
                              so("341336459", refda, 1, math.random(100, 120) / 100)
                              Thing[1].Parent = nil
                              table.remove(Effects, e)
                            end
                          end
                          do
                            if Thing[2] == "SatelliteStrike2" then
                              if Thing[5] < 100 then
                                Thing[5] = Thing[5] + 2
                                Thing[6] = Thing[6] + 1
                                if 2 < Thing[6] then
                                  Thing[6] = 0
                                  if Thing[3].BrickColor == BrickColor.new("New Yeller") then
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("Really red")
                                  else
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("New Yeller")
                                  end
                                end
                              else
                                refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                refda.Anchored = true
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 500, 0)
                                game:GetService("Debris"):AddItem(refda, 1)
                                local mag = (refda.Position - Thing[1].Position).magnitude
                                MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + Thing[1].Position) / 2, Thing[1].Position) * angles(1.57, 0, 0), 60, mag * 5, 60, 0, 0, 0, 0.1)
                                Lightning(refda.Position, Thing[1].Position, 25, 5, "Bright yellow", 5, 0.2, 0.03)
                                MagicBlock2(BrickColor.new("Bright yellow"), cf(Thing[1].Position), 80, 80, 80, -1, -1, -1, 0.06, 1)
                                refda.CFrame = cf(Thing[1].Position)
                                MagniDamage(refda, 6, 8, 12, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 3, 0)
                                MagniDamage(refda, 6, 8, 12, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                                refda.CFrame = cf(Thing[1].Position)
                                so("341336446", refda, 1, math.random(70, 90) / 100)
                                so("341336459", refda, 1, math.random(50, 80) / 100)
                                Thing[1].Parent = nil
                                table.remove(Effects, e)
                              end
                            end
                            do
            if Thing[2] == "Shoot" then
              local Look = Thing[1]
              local hit, pos = rayCast(Thing[4], Look, 5, Character)
              local mag = (Thing[4] - pos).magnitude
              Thing[7].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              MagicHead(BrickColor.new(NewCol2), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
              Thing[4] = Thing[4] + Look * 5
              Thing[3] = Thing[3] - 1
              if hit ~= nil then
                Thing[3] = 0
              end
              if Thing[3] <= 0 then
                ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                ref.Anchored = true
                ref.CFrame = cf(pos)
                so("161006093", ref, 1, 2)
                so("377357774", ref, 1, 1.5)
                game:GetService("Debris"):AddItem(ref, 0.2)
                MagicCircle(BrickColor.new(NewCol2), cf(pos), 10, 10, 10, 5, 5, 5, 0.07)
                dra = math.random(-50, 50)
                for i = 0.785, 6.28, 0.785 do
                  MagicCircle2(BrickColor.new(NewCol2), cf(pos) * euler(dra, 0, i), 4, 5, 4, -0.05, 2, -0.05, 0.07, 0.8)
                end
                MagniDamage(ref, 10, Thing[5], Thing[6], 0, "Normal", ref, 0, 1, (math.random(3, 8)), nil, nil, true)
                MagniHeal(ref, 10, 3, 5)
                Thing[7].Parent = nil
                Thing[8].Parent = nil
                table.remove(Effects, e)
              end
            end
                              do
              if Thing[2] == "ShootSeek" then
                local Look = Thing[1]
                local hit, pos = rayCast(Thing[8], Look, 5, Character)
                local mag = (Thing[8] - pos).magnitude
                Thing[6].CFrame = CFrame.new((Thing[8] + pos) / 2, pos) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                MagicHead(BrickColor.new(NewCol2), CFrame.new((Thing[8] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
                Thing[8] = Thing[8] + Look * 5
                Thing[3] = Thing[3] - 1
                if hit ~= nil then
                  Thing[3] = 0
                end
                if Thing[4].Parent == nil then
                  Thing[3] = 0
                end
                if Thing[3] <= 0 and Thing[4].Parent ~= nil then
                  ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                  ref.Anchored = true
                  ref.CFrame = cf(pos)
                  so("161006093", ref, 1, 2)
                  so("315748970", ref, 1, 1.5)
                  game:GetService("Debris"):AddItem(ref, 0.2)
                  MagicCircle(BrickColor.new(NewCol2), cf(pos), 10, 10, 10, 5, 5, 5, 0.07)
                  dra = math.random(-50, 50)
                  for i = 0.785, 6.28, 0.785 do
                    MagicCircle2(BrickColor.new(NewCol2), cf(pos) * euler(dra, 0, i), 4, 5, 4, -0.05, 2, -0.05, 0.07, 0.8)
                  end
                  MagniDamage(ref, 10, Thing[9], Thing[10], math.random(-10, -5), "Knockdown2", ref, 0, 1, (math.random(3, 8)), nil, nil, true, "Damage", 0.1, 100)
                  Thing[4].Anchored = true
                  Thing[4].CFrame = ref.CFrame
                  table.insert(Effects, {10, "DoSeek", math.random(200, 400), Thing[4], Thing[5], Thing[6], Thing[7]})
                  table.remove(Effects, e)
                end
              end
                                do
                                    if Thing[2] == "Shoot2" then
                                      local Look = Thing[1]
                                      local hit, pos = rayCast(Thing[4], Look, 5, Character)
                                      local mag = (Thing[4] - pos).magnitude
                                      MagicHead(BrickColor.new(NewCol2), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
                                      Thing[4] = Thing[4] + Look * 5
                                      Thing[3] = Thing[3] - 1
                                      if hit ~= nil then
                                        Thing[3] = 0
                                      end
                                      if Thing[3] <= 0 then
                                        ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                                        ref.Anchored = true
                                        ref.CFrame = cf(pos)
                                        so("161006093", ref, 0.5, 2.5)
                                        game:GetService("Debris"):AddItem(ref, 0.2)
                                        MagicCircle(BrickColor.new(NewCol2), cf(pos), 10, 10, 10, 3, 3, 3, 0.07)
                                        dra = math.random(-50, 50)
                                        for i = 0.785, 6.28, 0.785 do
                                          MagicCircle2(BrickColor.new(NewCol2), cf(pos) * euler(dra, 0, i), 2, 2.5, 2, -0.025, 1, -0.025, 0.08, 0.7)
                                        end
                                        MagniDamage(ref, 7, Thing[5], Thing[6], 0, "Normal", ref, 0, 1, (math.random(3, 8)), nil, nil, true)
                                        table.remove(Effects, e)
                                      end
                                    end
                                  do

                                                          if Thing[2] == "Smite" then
                                                            if 0 <= Thing[3] then
                                                              MagicCircle(BrickColor.new(NewCol2), cf(Thing[11].Position), 50, 50, 50, -10, -10, -10, 0.2, 1, nil, nil, 0.5)
                                                              MagicBlock(BrickColor.new(NewCol2), cf(Thing[11].Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, -10, 0), 2, 2, 2, -0.5, -0.5, -0.5, 0.1, 3)
                                                              if Thing[3] % 3 == 0 then
                                                                Thing[12].CFrame = cf(Thing[11].Position) * cf(math.random(-1000, 1000) / 100, 0, math.random(-1000, 1000) / 100)
                                                                hitfloor2a, posfloor2a = rayCast(Thing[12].Position, CFrame.new(Thing[12].Position, Thing[12].Position - Vector3.new(0, 1, 0)).lookVector, 50, Thing[1])
                                                                if hitfloor2a ~= nil then
                                                                  Lightning(Thing[11].Position, posfloor2a, 5, 0.5, NewCol2, 0.5, 0.4, 0.1)
                                                                end
                                                              end
                                                              Thing[3] = Thing[3] - 1
                                                              Thing[4].Parent = Thing[10]
                                                              Thing[5].Parent = Thing[10]
                                                              Thing[6].Parent = Thing[10]
                                                              Thing[7].Value = 9999
                                                              Thing[8].Value = 9999
                                                              Thing[9].Value = 9999
                                                            else
                                                              Thing[4].Parent = nil
                                                              Thing[5].Parent = nil
                                                              Thing[6].Parent = nil
                                                              table.remove(Effects, e)
                                                            end
                                                          end
                                    do
                                      do
                                                          if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Orb" and Thing[2] ~= "Shoot" and Thing[2] ~= "Sentry" and Thing[2] ~= "Shoot2" and Thing[2] ~= "ShootBuff" and Thing[2] ~= "BuffEff" and Thing[2] ~= "Protect" and Thing[2] ~= "BuffEff2" and Thing[2] ~= "BuffEff3" and Thing[2] ~= "ShootSeek" and Thing[2] ~= "DoSeek" and Thing[2] ~= "Shield" and Thing[2] ~= "ShieldEf" and Thing[2] ~= "Smite" then
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
                                                if Thing[2] == "Block3" then
                                                  Thing[8] = Thing[8] * cf(0, 1, 0)
                                                  Thing[1].CFrame = Thing[8] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                  Mesh = Thing[7]
                                                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                else
                                                  if Thing[2] == "Block4" then
                                                    if #Neons - 1 < Thing[8] then
                                                      Thing[8] = 1
                                                    else
                                                      Thing[8] = Thing[8] + 1
                                                    end
                                                    Thing[1].BrickColor = Neons[Thing[8]]
                                                    Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                    Mesh = Thing[7]
                                                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                  else
                                                    if Thing[2] == "Cylinder" then
                                                      Mesh = Thing[7]
                                                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                    else
                                                      if Thing[2] == "Shatter" then
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        Thing[4] = Thing[4] * cf(0, Thing[7], 0)
                                                        Thing[1].CFrame = Thing[4] * euler(Thing[6], 0, 0)
                                                        Thing[6] = Thing[6] + Thing[5]
                                                      else
                                                        if Thing[2] == "Blood" then
                                                          Mesh = Thing[7]
                                                          Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8], 0)
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
                              end
                            end
                          end
                        end
                      end
                    end
                  end
            end
              end