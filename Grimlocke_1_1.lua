Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Face = Head.face
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
MMouse = nil
combo = 0
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local BoundTarget = nil
local hitted = false
local HitTarget = nil
local isjugg = false
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local dashhit = nil
local doing1 = false
local doing2 = false
local doing4 = false
local move1 = "(Z)\nPhantom Dash"
local move2 = "(X)\nMiasma"
local move3 = "(C)\nVoid Travel"
local move4 = "(V)\nHaunting"
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
local cooldownadd1 = 0.4
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.35
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.3
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.25
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
local manualguardend = false
player = nil
RSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
rwld1 = RW
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
TorsoRed = TorsoColor.Color.r
TorsoGreen = TorsoColor.Color.g
TorsoBlue = TorsoColor.Color.b
NewCol = BrickColor.new("Black").Color
NewCol2 = BrickColor.new("Really black").Color
NewCol3 = BrickColor.new("Royal purple").Color
NewCol4 = BrickColor.new("Smoky grey").Color
NewCol5 = BrickColor.new("Fossil").Color
NewCol6 = BrickColor.new("Dark indigo").Color
NewCol7 = BrickColor.new("Institutional white").Color
NewCol8 = BrickColor.new("Plum").Color
NewCol9 = BrickColor.new("Navy blue").Color
print(BrickColor.new(NewCol))
local mdec = Instance.new("NumberValue", Decrease)
mdec.Name = "DecreaseDef"
mdec.Value = 0.4
local mdec2 = Instance.new("NumberValue", Decrease)
mdec2.Name = "DecreaseMvmt"
mdec2.Value = 0.1
local Animate = Character.Animate
local animation = Instance.new("Animation")
animation.AnimationId = "http://www.roblox.com/Asset?ID=180435571"
local animTrack = Humanoid:LoadAnimation(animation)
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
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end
if Character:findFirstChild("Kenos", true) ~= nil then
  Character:findFirstChild("Kenos", true).Parent = nil
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
local Decrease = Instance.new("BoolValue")
Decrease.Name = "Decrease"
Decrease.Parent = Stats
Decrease.Value = false
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
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 0
local passive1 = Instance.new("NumberValue", Decrease)
passive1.Name = "DecreaseAtk"
passive1.Value = 0
local passive2 = Instance.new("NumberValue", Decrease)
passive2.Name = "DecreaseDef"
passive2.Value = 0
local passive3 = Instance.new("NumberValue", Decrease)
passive3.Name = "DecreaseMvmt"
passive3.Value = 0
NoOutline = function(Part)
  Part.TopSurface = 10
end
part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size, material)
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
  if material then
    fp.Material = material
  else
    fp.Material = "SmoothPlastic"
  end
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
local lhandle = nil
local rhandle = nil
AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(lhandle, prt, wldpar, ceef)
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
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Kenos"
lhandle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle", vt())
local lhandlewld = weld(lhandle, lhandle, LeftArm, euler(0, mr(90), 0) * euler(mr(90), 0, 0) * cf(0, 1, 0))
lprt1 = AesthPart(modelzorz, lhandle, 0.025, 0, NewCol2, "Part01", "SmoothPlastic", "CylinderMesh", "nil", "nil", 0.7, 5.25, 0.7, cf(0, 0, 0))
local lwld1 = weld(lprt1, lprt1, lhandle, cf(0, 0, 0) * euler(0, 0, 0))
lprt2, lwld2 = AesthPart(modelzorz, lprt1, 0.025, 0, NewCol3, "Part02", "SmoothPlastic", "CylinderMesh", "nil", "nil", 0.75, 5.5, 0.65, cf(0, 0, 0))
lprt3, lwld3 = AesthPart(modelzorz, lprt1, 0.025, 0, NewCol2, "Part03", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 0.8, 0.8, 0.75, cf(0, -0.625, 0))
lprt4, lwld4 = AesthPart(modelzorz, lprt1, 0.025, 0, NewCol2, "Part04", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 0.9, 0.75, 0.25, cf(0, 0.525, 0))
lprt5, lwld5 = AesthPart(modelzorz, lprt1, 0.4, 0, NewCol4, "Part05", "SmoothPlastic", "BlockMesh", "nil", "nil", 1.25, 1.25, 0.8, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
lprt6, lwld6 = AesthPart(modelzorz, lprt1, 0.4, 0, NewCol5, "Part06", "SmoothPlastic", "BlockMesh", "nil", "nil", 1.1, 1.1, 0.9, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
lprt7, lwld7 = AesthPart(modelzorz, lprt1, 0, 0, NewCol2, "Part07", "Metal", "SpecialMesh", "Sphere", "nil", 1.25, 1.25, 1.15, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
lprt8, lwld8 = AesthPart(modelzorz, lprt1, 0, 0, NewCol6, "Part08", "Neon", "SpecialMesh", "Sphere", "nil", 1.15, 1.15, 1.18, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
lprt9, lwld9 = AesthPart(modelzorz, lprt1, 0, 0, NewCol7, "Part09", "Neon", "SpecialMesh", "Sphere", "nil", 1.06, 1.06, 1.21, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
lprt10, lwld10 = AesthPart(modelzorz, lprt1, 0, 0, NewCol6, "Part10", "Neon", "SpecialMesh", "Sphere", "nil", 1, 1, 1.231, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
lprt11, lwld11 = AesthPart(modelzorz, lprt1, 0, 0, NewCol2, "Part11", "Metal", "SpecialMesh", "Sphere", "nil", 0.9, 0.9, 1.27, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
lprt12, lwld12 = AesthPart(modelzorz, lprt1, 0.15, 0, NewCol8, "Part12", "SmoothPlastic", "BlockMesh", "nil", "nil", 3, 0.5, 0.5, euler(0, 0, 0) * cf(0, 0.65, 0))
for i = -1, 1, 2 do
  lprt13, lwld13 = AesthPart(modelzorz, lprt1, 0.15, 0, NewCol8, "Part13", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.25, 1.75, euler(0, mr(-90) * i, 0) * cf(0.125 * i, 0.575, 0))
  lprt14, lwld14 = AesthPart(modelzorz, lprt1, 0.15, 0, NewCol8, "Part14", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.125, 0.125, euler(0, mr(90) * i, mr(90) * i) * cf(0.287 * i, 0.713, 0))
  lprt15, lwld15 = AesthPart(modelzorz, lprt1, 0.15, 0, NewCol8, "Part15", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.25, 0.25, euler(0, mr(90) * i, mr(-90) * i) * cf(0.325 * i, 0.625, 0))
  lprt16, lwld16 = AesthPart(modelzorz, lprt1, 0.15, 0, NewCol8, "Part16", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.25, 1, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.325 * i, 0.75, 0))
  lprt17, lwld17 = AesthPart(modelzorz, lprt1, 0.2, 0, NewCol9, "Part17", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.25, 1.5, euler(0, mr(-90) * i, mr(90) * i) * cf(0.275 * i, 0.75, 0))
  lprt18, lwld18 = AesthPart(modelzorz, lprt1, 0.2, 0, NewCol9, "Part18", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.5, 1, euler(0, mr(90) * i, mr(-90) * i) * cf(0.35 * i, 0.7, 0))
  lprt19, lwld19 = AesthPart(modelzorz, lprt1, 0.2, 0, NewCol9, "Part19", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.25, 1.5, euler(0, mr(90) * i, mr(90) * i) * cf(0.275 * i, 1.05, 0))
  lprt20, lwld20 = AesthPart(modelzorz, lprt1, 0.2, 0, NewCol9, "Part20", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.5, 2, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.35 * i, 1, 0))
  lprt21, lwld21 = AesthPart(modelzorz, lprt1, 0.2, 0, NewCol9, "Part21", "Slate", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 2, euler(0, mr(-90) * i, mr(50) * i) * cf(0.293 * i, 0.495, 0))
  lprt22, lwld22 = AesthPart(modelzorz, lprt1, 0.4, 0, NewCol5, "Part22", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 1, euler(0, mr(-90) * i, mr(15) * i) * cf(0.069 * i, 0.647, 0))
  lprt23, lwld23 = AesthPart(modelzorz, lprt1, 0.4, 0, NewCol5, "Part23", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.75, 1.75, 1, euler(0, mr(90) * i, mr(195) * i) * cf(0.134 * i, 0.889, 0))
  lprt24, lwld24 = AesthPart(modelzorz, lprt1, 0.4, 0, NewCol3, "Part24", "Neon", "SpecialMesh", "Wedge", "nil", 0.25, 0.5, 10, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.05 * i, 1.745, 0))
  lprt25, lwld25 = AesthPart(modelzorz, lprt1, 0.4, 0.5, NewCol3, "Part25", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.75, 12.5, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.075 * i, 1.925, 0))
  lprt26, lwld26 = AesthPart(modelzorz, lprt1, 0.4, 0.5, NewCol6, "Part26", "Neon", "SpecialMesh", "Wedge", "nil", 0.26, 1, 15, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.1 * i, 2.15, 0))
end
rhandle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle", vt())
local rhandlewld = weld(rhandle, rhandle, RightArm, euler(0, mr(90), 0) * euler(mr(90), 0, 0) * cf(0, 1, 0))
rprt1 = AesthPart(modelzorz, rhandle, 0.025, 0, NewCol2, "Part01", "SmoothPlastic", "CylinderMesh", "nil", "nil", 0.7, 5.25, 0.7, cf(0, 0, 0))
local rwld1 = weld(rprt1, rprt1, rhandle, cf(0, 0, 0) * euler(0, 0, 0))
rprt2, rwld2 = AesthPart(modelzorz, rprt1, 0.025, 0, NewCol3, "Part02", "SmoothPlastic", "CylinderMesh", "nil", "nil", 0.75, 5.5, 0.65, cf(0, 0, 0))
rprt3, rwld3 = AesthPart(modelzorz, rprt1, 0.025, 0, NewCol2, "Part03", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 0.8, 0.8, 0.75, cf(0, -0.625, 0))
rprt4, rwld4 = AesthPart(modelzorz, rprt1, 0.025, 0, NewCol2, "Part04", "SmoothPlastic", "SpecialMesh", "Torso", "nil", 0.9, 0.75, 0.25, cf(0, 0.525, 0))
rprt5, rwld5 = AesthPart(modelzorz, rprt1, 0.4, 0, NewCol4, "Part05", "SmoothPlastic", "BlockMesh", "nil", "nil", 1.25, 1.25, 0.8, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
rprt6, rwld6 = AesthPart(modelzorz, rprt1, 0.4, 0, NewCol5, "Part06", "SmoothPlastic", "BlockMesh", "nil", "nil", 1.1, 1.1, 0.9, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
rprt7, rwld7 = AesthPart(modelzorz, rprt1, 0, 0, NewCol2, "Part07", "Metal", "SpecialMesh", "Sphere", "nil", 1.25, 1.25, 1.15, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
rprt8, rwld8 = AesthPart(modelzorz, rprt1, 0, 0, NewCol6, "Part08", "Neon", "SpecialMesh", "Sphere", "nil", 1.15, 1.15, 1.18, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
rprt9, rwld9 = AesthPart(modelzorz, rprt1, 0, 0, NewCol7, "Part09", "Neon", "SpecialMesh", "Sphere", "nil", 1.06, 1.06, 1.21, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
rprt10, rwld10 = AesthPart(modelzorz, rprt1, 0, 0, NewCol6, "Part10", "Neon", "SpecialMesh", "Sphere", "nil", 1, 1, 1.231, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
rprt11, rwld11 = AesthPart(modelzorz, rprt1, 0, 0, NewCol2, "Part11", "Metal", "SpecialMesh", "Sphere", "nil", 0.9, 0.9, 1.27, euler(0, 0, mr(45)) * cf(0, 0.65, 0))
rprt12, rwld12 = AesthPart(modelzorz, rprt1, 0.15, 0, NewCol8, "Part12", "SmoothPlastic", "BlockMesh", "nil", "nil", 3, 0.5, 0.5, euler(0, 0, 0) * cf(0, 0.65, 0))
for i = -1, 1, 2 do
  rprt13, rwld13 = AesthPart(modelzorz, rprt1, 0.15, 0, NewCol8, "Part13", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.25, 1.75, euler(0, mr(-90) * i, 0) * cf(0.125 * i, 0.575, 0))
  rprt14, rwld14 = AesthPart(modelzorz, rprt1, 0.15, 0, NewCol8, "Part14", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.125, 0.125, euler(0, mr(90) * i, mr(90) * i) * cf(0.287 * i, 0.713, 0))
  rprt15, rwld15 = AesthPart(modelzorz, rprt1, 0.15, 0, NewCol8, "Part15", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.25, 0.25, euler(0, mr(90) * i, mr(-90) * i) * cf(0.325 * i, 0.625, 0))
  rprt16, rwld16 = AesthPart(modelzorz, rprt1, 0.15, 0, NewCol8, "Part16", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 0.25, 1, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.325 * i, 0.75, 0))
  rprt17, rwld17 = AesthPart(modelzorz, rprt1, 0.2, 0, NewCol9, "Part17", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.25, 1.5, euler(0, mr(-90) * i, mr(90) * i) * cf(0.275 * i, 0.75, 0))
  rprt18, rwld18 = AesthPart(modelzorz, rprt1, 0.2, 0, NewCol9, "Part18", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.5, 1, euler(0, mr(90) * i, mr(-90) * i) * cf(0.35 * i, 0.7, 0))
  rprt19, rwld19 = AesthPart(modelzorz, rprt1, 0.2, 0, NewCol9, "Part19", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.25, 1.5, euler(0, mr(90) * i, mr(90) * i) * cf(0.275 * i, 1.05, 0))
  rprt20, rwld20 = AesthPart(modelzorz, rprt1, 0.2, 0, NewCol9, "Part20", "Slate", "SpecialMesh", "Wedge", "nil", 0.3, 0.5, 2, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.35 * i, 1, 0))
  rprt21, rwld21 = AesthPart(modelzorz, rprt1, 0.2, 0, NewCol9, "Part21", "Slate", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 2, euler(0, mr(-90) * i, mr(50) * i) * cf(0.293 * i, 0.495, 0))
  rprt22, rwld22 = AesthPart(modelzorz, rprt1, 0.4, 0, NewCol5, "Part22", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 1, euler(0, mr(-90) * i, mr(15) * i) * cf(0.069 * i, 0.647, 0))
  rprt23, rwld23 = AesthPart(modelzorz, rprt1, 0.4, 0, NewCol5, "Part23", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.75, 1.75, 1, euler(0, mr(90) * i, mr(195) * i) * cf(0.134 * i, 0.889, 0))
  rprt24, rwld24 = AesthPart(modelzorz, rprt1, 0.4, 0, NewCol3, "Part24", "Neon", "SpecialMesh", "Wedge", "nil", 0.25, 0.5, 10, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.05 * i, 1.745, 0))
  rprt25, rwld25 = AesthPart(modelzorz, rprt1, 0.4, 0.5, NewCol3, "Part25", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.75, 12.5, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.075 * i, 1.925, 0))
  rprt26, rwld26 = AesthPart(modelzorz, rprt1, 0.4, 0.5, NewCol6, "Part26", "Neon", "SpecialMesh", "Wedge", "nil", 0.26, 1, 15, euler(0, mr(-90) * i, mr(-90) * i) * cf(0.1 * i, 2.15, 0))
end
for _,c in pairs(lprt1:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(rprt1:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(lhandle:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
for _,c in pairs(rhandle:children()) do
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
hboxpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = RightArm
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Kenos"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Grimlocke" then
  Bin.Name = "Kenos"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  sou:play()
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
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    RH.C1 = clerp(RH.C1, RHC1, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
    LH.C1 = clerp(LH.C1, LHC1, 0.4)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  mdec2.Parent = Decrease
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.5, 0, -0.8), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.7, 0, 1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.6) * euler(2.8, 0, -0.8), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.6) * euler(3, 0, 0.6), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.3)
  end
  dec.Parent = nil
end
StaggerAnim = function()
  attack = true
  removeControl()
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.35 do
    swait()
    Torso.Velocity = RootPart.CFrame.lookVector * -40
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
    Torso.Velocity = RootPart.CFrame.lookVector * -40
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
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.2) * euler(0, -0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.2) * euler(0, 0.4, 0), 0.3)
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
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.9), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.6), 0.3)
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
  so("200632136", RightArm, 1, 1)
  for i = 0, 1, 0.15 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.05), 0.45)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.45), 0.45)
    rwld1.C0 = clerp(rwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    lwld1.C0 = clerp(lwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0) * euler(-1, 0.2, 0.15) * euler(0, 0, 0), 0.45)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.25, 0, -0.1) * euler(0, 0, 0), 0.45)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, -0.3, 0.2) * euler(0, 0, 0), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.25, 0.1), 0.45)
    if Stagger.Value ~= true and Stun.Value < 100 then
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
  hitbox.Size = vt(1.4, 2.8, 1.4)
  hitboxCF = rhandle.CFrame * CFrame.new(0, 2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.2 do
    swait()
    hitboxCF = rhandle.CFrame * CFrame.new(0, 2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 8, math.random(3, 6), "Normal", RootPart, 0.2, 1, (math.random(8, 10)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0.2), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.2), 0.5)
    rwld1.C0 = clerp(rwld1.C0, euler(0, 0, 1.2) * cf(-0.25, 0, 0) * euler(math.rad(180), 0, 0), 0.5)
    lwld1.C0 = clerp(lwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0) * euler(1.5, 0.2, -0.15) * euler(0, 0, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.1) * euler(0, 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0.3, 0.2) * euler(0, 0, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.25, 0.1), 0.5)
    if Stagger.Value ~= true and Stun.Value < 100 then
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
  hitbox.Size = vt(1.4, 2.8, 1.4)
  hitboxCF = lhandle.CFrame * CFrame.new(0, 2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.23 do
    swait()
    hitboxCF = lhandle.CFrame * CFrame.new(0, 2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 8, math.random(3, 6), "Normal", RootPart, 0.5, 1, (math.random(8, 10)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0.5), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.65), 0.5)
    rwld1.C0 = clerp(rwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.5)
    lwld1.C0 = clerp(lwld1.C0, euler(0, 0, 1.4) * cf(-0.25, 0, 0) * euler(math.rad(180), 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0) * euler(-0.5, 0.2, 0.15) * euler(0, 0, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, -0.6, -0.1) * euler(0, 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.2) * euler(0, 0, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, -0.25, 0.1), 0.5)
    if Stagger.Value ~= true and Stun.Value < 100 then
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
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.45)
    rwld1.C0 = clerp(rwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    lwld1.C0 = clerp(lwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    RW.C0 = clerp(RW.C0, cf(1.25, 0.5, 0) * euler(1.4, 0.5, -0.8) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.25, 0.5, 0) * euler(1.6, -0.5, 0.8) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.25, 0.1), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("200632136", RightArm, 1, .9)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(3.5, 4, 2.5)
  hitboxCF = RootPart.CFrame * CFrame.new(0, 0, -3)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = RootPart.CFrame * CFrame.new(0, 0, -3)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 7, 9, math.random(3, 6), "Normal", RootPart, 0.5, 1, (math.random(8, 10)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.45)
    rwld1.C0 = clerp(rwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    lwld1.C0 = clerp(lwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, -0.5, 0.5) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0.5, -0.5) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.25, 0.1), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
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
  for i = 0, 1, 0.15 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.25, 0, 0) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.45)
    rwld1.C0 = clerp(rwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    lwld1.C0 = clerp(lwld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.45)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, -0.3, 0.5) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0.3, -0.5) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.25, 0.1), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
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
  hitbox.Size = vt(3.5, 4, 2.5)
  hitboxCF = RootPart.CFrame * CFrame.new(0, 0, -3)
  hitbox.CFrame = hitboxCF
  so("200632136", LeftArm, 1, 1.1)
  for i = 0, 1, 0.17 do
    swait()
    hitboxCF = RootPart.CFrame * CFrame.new(0, 0, -3)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 7, 9, math.random(3, 6), "Normal", RootPart, 0.5, 1, (math.random(8, 10)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.45)
    rwld1.C0 = clerp(rwld1.C0, euler(0, 0, 0.65) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.5)
    lwld1.C0 = clerp(lwld1.C0, euler(0, 0, 0.45) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.25, 0.5, 0) * euler(1, 0.1, -0.5) * euler(0, 0, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(-1.25, 0.5, 0) * euler(0.8, -0.1, 0.5) * euler(0, 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.25, 0.1), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
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
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.3) * euler(1.7, 0, -0.2) * euler(0, 1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.3) * euler(1.7, 0, 0.2) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.2) * euler(0, 0, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.1), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  Torso.Velocity = RootPart.CFrame.lookVector * 50
  so("200632370", Torso, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.5, 2.5, 1.5)
  hitboxCF = LeftArm.CFrame
  hitbox.CFrame = hitboxCF
  hitboxCF = RightArm.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = LeftArm.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(10, 13)), nil, true)
    hitboxCF = RightArm.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(10, 13)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.7, 0, -0.2) * euler(0, 1.57, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7, 0, 0.2) * euler(0, -1.57, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.2) * euler(0, 0, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.1), 0.5)
    if Stagger.Value ~= true and Stun.Value < 100 then
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
Transposition = function()
  attack = true
  targ = nil
  hum = nil
  if MMouse.Target ~= nil and MMouse.Target.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent:findFirstChild("Torso") ~= nil then
    print(MMouse.Target.Parent)
    targ = MMouse.Target.Parent.Torso
    hum = MMouse.Target.Parent.Humanoid
    for i = 1, #BloodAllies do
      if BloodAllies[i][1] == targ.Parent then
        targ = nil
        hum = nil
        break
      end
    end
  end
  do
    do
      if targ ~= nil then
        local BodGy = Instance.new("BodyGyro", RootPart)
        BodGy.maxTorque = Vector3.new(0, math.huge, 0)
        BodGy.P = 2000
        BodGy.D = 100
        BodGy.cframe = cf(Torso.Position, targ.Position)
        for i = 0, 1, 0.1 do
          swait()
          BodGy.cframe = cf(Torso.Position, targ.Position)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.5)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.7, 0, -0.2) * euler(0, 1.57, 0), 0.5)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7, 0, 0.2) * euler(0, -1.57, 0), 0.5)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.2) * euler(0, 0, 0), 0.5)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.1), 0.5)
          if Stagger.Value ~= true and Stun.Value < 100 then
            do
              if StaggerHit.Value == true then
                break
              end
            end
          end
        end
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = cf(RootPart.Position)
        game:GetService("Debris"):AddItem(ref, 10)
        healthdam = math.floor(Humanoid.Health * 0.2)
        if isjugg == false then
          Humanoid:TakeDamage(healthdam)
          showDamage(Character, healthdam, "Damage")
        end
        so("206082357", RootPart, 1, 1)
        so("206082357", targ, 1, 1)
        if MMouse.Target ~= nil and game.Players:GetPlayerFromCharacter(MMouse.Target.Parent) ~= nil and Player.Neutral == false then
          if game.Players:GetPlayerFromCharacter(MMouse.Target.Parent).TeamColor == Player.TeamColor then
            hum.Health = hum.Health + healthdam
            showDamage(targ.Parent, healthdam, "Heal")
            DecreaseStat(targ.Parent, "Defense", -0.2, 1000)
          else
            hum.Health = hum.Health - healthdam
            showDamage(targ.Parent, healthdam, "Damage")
          end
        end
        table.insert(BloodAllies, {targ.Parent, hum.Health})
        for i = 0, 50 do
          swait()
          local mag = RootPart.Position - targ.Position.magnitude
          ref.CFrame = cf(RootPart.Position, targ.Position)
          BodGy.cframe = cf(Torso.Position, targ.Position)
          MagicBlock(BrickColor.new(NewCol), cf(targ.Position) * cf(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 1, 1, 1, 0.5, 0.5, 0.5, 0.05, 1)
          MagicCircle2(BrickColor.new(NewCol), ref.CFrame * euler(1.57, 0, 0) * cf(math.random(-400, 400) / 100, 0, math.random(-400, 400) / 100), 2, 10, 2, -0.1, mag / 20, -0.1, 0.05, -mag / 20)
          if Stagger.Value ~= true and Stun.Value < 100 then
            do
              if StaggerHit.Value == true then
                break
              end
            end
          end
        end
        ref.Parent = nil
        BodGy.Parent = nil
      end
      attack = false
    end
  end
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
      if temp ~= nil and human ~= nil and human.Health > 0 and temp.Position - pos.magnitude < dist then
        local dohit = true
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
          dohit = false
        end
        if dohit == true then
          torso = temp
          dist = temp.Position - pos.magnitude
        end
      end
    end
  end
  return torso, dist
end
Cloak = function()
  Face.Parent = nil
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 1
      v.CanCollide = false
    end
    if v.className == "Hat" then
      hatp = v.Handle
      hatp.Transparency = 1
    end
  end
  for _,v in pairs(modelzorz:children()) do
    if v.className == "Part" then
      v.Transparency = 1
    end
  end
end
UnCloak = function()
  Face.Parent = Head
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 0
      v.CanCollide = true
    end
    if v.className == "Hat" then
      hatp = v.Handle
      hatp.Transparency = 0
    end
  end
  for _,v in pairs(modelzorz:children()) do
    if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" and v.Name ~= "Parta01" then
      v.Transparency = 0
    end
  end
end
do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 20 then
    attack = true
    doing1 = true
    cooldowns[1] = 0
    mana.Value = mana.Value - 20
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0) * euler(2, 0.7, -0.5) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, 0) * euler(2, -0.7, 0.7) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.1), 0.3)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    for i = 0, 1, 0.12 do
      swait()
      rwld1.C0 = clerp(rwld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(0 - i * 10, 0, 0), 0.5)
      lwld1.C0 = clerp(lwld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(0 + i * 10, 0, 0), 0.5)
      MagicCircle(BrickColor.new("Dark indigo"), rprt1.CFrame * cf(0, -0.8, 0), 0.1, 0.1, 0.1, 1, 1, 1, 0.15, 1)
      MagicCircle(BrickColor.new("Dark indigo"), lprt1.CFrame * cf(0, -0.8, 0), 0.1, 0.1, 0.1, 1, 1, 1, 0.15, 1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1 + i) * euler(0, 0, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1 - i) * euler(0, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.1), 0.5)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    for i = 0, 1, 0.06 do
      swait()
      rwld1.C0 = clerp(rwld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(0 - i * 20, 0, 0), 0.5)
      lwld1.C0 = clerp(lwld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(0 + i * 20, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.45, 0, 0) * euler(0, 0, 0), 0.05)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(0.8, 0, 0) * euler(0, 0, 0), 0.05)
      MagicCircle(BrickColor.new("Mulberry"), RootPart.CFrame * cf(0, 0, 0), 10, 10, 10, 4, 4, 4, 0.15, 1)
      if i > 0.6 then
        MagicBlock(BrickColor.new("Mulberry"), Torso.CFrame * euler(math.random(-100, 100) / 50, math.random(-100, 100) / 50, math.random(-100, 100) / 50), 16, 16, 16, 4, 4, 4, 0.2, 1)
      end
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, -0.6, 2) * euler(0, 0, 0), 0.05)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0.6, -2) * euler(0, 0, 0), 0.05)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, 1, -0.6) * euler(0, 1.57, 0) * euler(-0.15, 0, 1) * euler(0, 0, 0), 0.05)
      LH.C0 = clerp(LH.C0, cf(-1, -0.2, -0.25) * euler(0, -1.57, 0) * euler(-0.15, 0, 1.2), 0.05)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    for i = 0, 1, 0.13 do
      swait()
      Torso.Velocity = RootPart.CFrame.lookVector * 150
      MagniDamage(rprt1, 5, 6, 8, math.random(20, 30), "Knockdown2", RootPart, 0.3, 1, (math.random(5, 6)), nil, nil, false, "Movement", 0.05, 300)
      MagniDamage(lprt1, 5, 6, 8, math.random(20, 30), "Knockdown2", RootPart, 0.3, 1, (math.random(5, 6)), nil, nil, false, "Movement", 0.05, 300)
      rwld1.C0 = clerp(rwld1.C0, cf(-0.25, 0, 0) * euler(0, -1.57, 0) * euler(0, 0, 1.5), 0.55)
      lwld1.C0 = clerp(lwld1.C0, cf(-0.25, 0, 0) * euler(0, 1.57, 0) * euler(0, 0, 1.5), 0.55)
      MagicCircle(BrickColor.new("Mulberry"), RootPart.CFrame * cf(0, 0, 0), 10, 10, 10, 3, 3, 3, 0.05, 1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.3, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0.45, 0, 0) * euler(0, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.4) * euler(2, 1.8, -0.2) * euler(0.4, 0, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, -0.4) * euler(2, -1.8, 0.2) * euler(0.4, 0, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.7) * euler(0, 1.57, 0) * euler(0, 0, -0.8) * euler(0, 0, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0.6), 0.4)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    Torso.Velocity = RootPart.CFrame.lookVector * 0
    MoveTo = RootPart.CFrame.lookVector * 100
    dec.Parent = nil
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    doing1 = false
    attack = false
  end
end
do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 25 then
    attack = true
    cooldowns[2] = 0
    mana.Value = mana.Value - 20
    for i = 0, 1, 0.12 do
      swait()
      rwld1.C0 = clerp(rwld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(0 - i * 10, 0, 0), 0.5)
      MagicCircle(BrickColor.new("Dark indigo"), rprt1.CFrame * cf(0, -2.5, 0), 0.1, 0.1, 0.1, 1, 1, 1, 0.15, 4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0.25, 0, 0.5), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, -1.2) * euler(0, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -0.2, -0.4) * euler(0, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.15, 0, -0.2) * euler(0, 0, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.15, 0, -0.1), 0.5)
      if Stagger.Value ~= true and Stun.Value < 100 then
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
    for i = 0, 1, 0.14 do
      swait()
      rwld1.C0 = clerp(rwld1.C0, cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.6)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, -0.8), 0.1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0.8) * euler(0, 0, 0), 0.1)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, 0) * euler(0, 0, 0), 0.35)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.35)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0.6, -0.8) * euler(0, 0, 0), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.35)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.15, 0, -0.2) * euler(0, 0, 0), 0.35)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.15, 0, -0.1), 0.35)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    local ref = Instance.new("Part", workspace)
    ref.Name = "Referance"
    ref.CFrame = RootPart.CFrame * CFrame.new(1, -3.2, -2.5)
    ref.Anchored = true
    ref.CanCollide = false
    ref.Transparency = 1
    for i = 0, 1, 0.55 do
      swait()
      rwld1.C0 = clerp(rwld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0) * euler(0, 0, -1.2), 0.35)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.3, 0) * euler(1.2, 0, 1) * euler(0, 0, 0), 0.35)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0.4, -1) * euler(0, 0, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, 0.5, -0.8) * euler(0, 1.57, 0) * euler(-0.15, -0.6, -0.2) * euler(0, 0, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -1) * euler(0, -1.57, 0) * euler(-0.15, -0.8, 1.5), 0.4)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    for i = 0, 1, 0.08 do
      swait()
      rwld1.C0 = clerp(rwld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.2)
      if i > 0.3 then
        MagicCircle(BrickColor.new("Dark indigo"), ref.CFrame * cf(0, 0, 0), 0.5, 20, 0.5, 12, -1, 12, 0.05, 3)
        MagniDamage(rprt1, 20, 8, 10, math.random(-25, -20), "Knockdown2", RootPart, 0.5, 1, (math.random(5, 6)), nil, nil, false, "Movement", 0.1, 400)
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0) * euler(0, 0, -1.2), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0, 0, 1) * euler(0, 0, 0), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.2, 0) * euler(1.4, 0, 1) * euler(0, 0, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0.2, -1) * euler(0, 0, 0), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, 0.5, -0.8) * euler(0, 1.57, 0) * euler(-0.15, -0.6, -0.2) * euler(0, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -1) * euler(0, -1.57, 0) * euler(-0.15, -0.8, 1.5), 0.2)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    Torso.Velocity = RootPart.CFrame.lookVector * 0
    MoveTo = RootPart.CFrame.lookVector * 100
    dec.Parent = nil
    hboxpos.Parent = nil
    ref.Parent = nil
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    attack = false
  end
end
do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and mana.Value >= 40 then
    doing4 = true
    attack = true
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.2) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.2), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 1) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -1.5) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1.2, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1.2, 0.1), 0.4)
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 0
    local dec2 = Instance.new("NumberValue")
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(3, 5, 3)
    hitboxCF = LeftArm.CFrame
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.05 do
      swait()
      hitboxCF = LeftArm.CFrame
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 5, 5, 10, 1, "Normal", RootPart, 0, 2, (math.random(5, 10)), nil, true, false, nil, nil, nil)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 1.2) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, 0.2) * euler(0, 0, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1.2) * euler(0, -1, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.2, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.6, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.3)
      if HitTarget ~= nil then
        break
      end
    end
    do
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      if HitTarget ~= nil then
        dec.Value = 10
        if HitTarget:findFirstChild("Stats") ~= nil then
          dec2.Parent = HitTarget.Stats.Decrease
          dec2.Name = "DecreaseMvmt"
          dec2.Value = 10
        end
        for i = 0, 1, 0.1 do
          swait()
          if HitTarget ~= nil then
            RootPart.CFrame = cf(RootPart.Position, HitTarget.HumanoidRootPart.Position)
          end
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.1, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 0, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1) * euler(0, 0, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0.2), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.5), 0.3)
        end
        for i = 0, 1, 0.3 do
          swait()
          if HitTarget ~= nil then
            RootPart.CFrame = cf(RootPart.Position, HitTarget.HumanoidRootPart.Position)
          end
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0), 0.5)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -2, 0) * euler(-1.57, 0, 0), 0.5)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1.57) * euler(0, 0, 0), 0.5)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1.57) * euler(0, 0, 0), 0.5)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 1), 0.5)
        end
        cooldowns[4] = 0
        mana.Value = mana.Value - 40
        dam = (Humanoid.MaxHealth - Humanoid.Health) / 5 + blood / 3
        dam2 = dam / 1.5
        print(dam2)
        print(dam)
        Damagefunc(HitTarget.Torso, dam2, dam, 50, "Knockdown2", RootPart, 1, 2, 50, nil, true, false)
        so("206082327", HitTarget.Torso, 1, 1)
        so("199145534", HitTarget.Torso, 1, 0.8)
        blood = 0
        for i = 1, 2 do
          MagicBlock(BrickColor.new("Really red"), cf(HitTarget.Torso.Position), 1, 1, 1, 5, 5, 5, 0.05, 1)
          MagicRing(BrickColor.new("Really red"), cf(HitTarget.Torso.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.01)
        end
        MagicCircle(BrickColor.new("Really red"), cf(HitTarget.Torso.Position), 1, 1, 1, 2, 2, 2, 0.02)
        local num = 0
        local eul = CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        for i = 1, 6 do
          MagicCircle2(BrickColor.new("Really red"), cf(HitTarget.Torso.Position) * eul * euler(num, 0, 0), 3, 20, 3, -0.02, 3, -0.02, 0.02, 1)
          MagicCircle2(BrickColor.new("Really red"), cf(HitTarget.Torso.Position) * eul * euler(0, 1.57, 0) * euler(num, 0, 0), 3, 20, 3, -0.02, 3, -0.02, 0.02, 1)
          num = num + 1.046
        end
        Torso.Velocity = RootPart.CFrame.lookVector * -50 + vt(0, 1, 0) * 100
        for i = 0, 1, 0.2 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(-4, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1.57) * euler(0, 0, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1.57) * euler(0, 0, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 1), 0.3)
        end
        Stagger.Value = false
        StaggerHit.Value = false
      else
        do
          cooldowns[4] = 80
          dec2.Parent = nil
          dec.Parent = nil
          HitTarget = nil
          doing4 = false
          attack = false
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
MagniDamage = function(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
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
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
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
    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
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
    w1.BrickColor = BrickColor.new("Medium blue")
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
      w2.BrickColor = BrickColor.new("Medium blue")
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
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
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
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicSpecial = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "24388358", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
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
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    if Player.Neutral == false and game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor == Player.TeamColor then
      return 
    end
    if doing1 then
      dashhit = hit.Parent
      table.insert(Effects, {dashhit, "BloodBind", 0, dashhit.Torso, cf(0, 0, 0)})
    end
    if doing4 == true and HitTarget == nil then
      HitTarget = hit.Parent
      MagicBlock(BrickColor.new(NewCol), cf(HitTarget.Torso.Position), 1, 1, 1, 3, 3, 3, 0.1, 1)
    end
    if Sound == "Impact" then
      so("200632875", hit, 1, 1)
    end
    hitted = true
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
        if Damage <= 3 and staghit == true then
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
    damageFunc:InvokeServer(h, Damage)
  end), h, Damage)
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
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
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
      animTrack:Play()
      equipanim()
    else
      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      animTrack:Stop()
      Animate.Parent = Character
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
    Transposition()
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
  if key == "h" and (Player.Name == "speedydude900" or Player.Name == "Fenrier" or Player.Name == "Player" or Player.Name == "Player1") then
    mana.Value = 100
    cooldowns[1] = 100
    cooldowns[2] = 100
    cooldowns[3] = 100
    cooldowns[4] = 100
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
print("Grimlocke loaded.")
local mananum = 0
local blocknum2 = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local oldhealth = Humanoid.Health
local walk = 0
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
        Welds[i].Parent = rprt1
      end
    end
  end
  do
    col = Player.TeamColor
    for _,c in pairs(game.Teams:children()) do
      if c.TeamColor == col and c.Name == "Juggernaut" then
        isjugg = true
      end
    end
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
    if Humanoid.Health < oldhealth then
      damage = oldhealth - Humanoid.Health
    end
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
    local stunnum2 = 20
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
        if walkforw == true then
          RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          rwld1.C0 = clerp(rwld1.C0, cf(0, 0, 0) * euler(math.rad(-180), 0, 0), 0.4)
          lwld1.C0 = clerp(lwld1.C0, cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.4)
        else
          RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          rwld1.C0 = clerp(rwld1.C0, cf(0, 0, 0) * euler(math.rad(-180), 0, 0), 0.4)
          lwld1.C0 = clerp(lwld1.C0, cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.4)
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
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.2), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.2), 0.2)
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
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 1), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -1), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0.25), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.25), 0.3)
              rwld1.C0 = clerp(rwld1.C0, euler(0, 0 - (donum) / 6, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.3)
              lwld1.C0 = clerp(lwld1.C0, euler(0, 0 + (donum) / 6, 0) * cf(0, 0, 0) * euler(math.rad(180), 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0) * euler(0.2 - (donum) / 5, 0.2, 0.15 + (donum) / 5) * euler(0, 0, 0), 0.3)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.25 - (donum) / 5, 0, -0.1 - (donum) / 5) * euler(0, 0, 0), 0.3)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1.1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.25, 0.1), 0.2)
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
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.2), 0.3)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.3), 0.3)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.2), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.8, 0, 0.2), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.2), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  RH.C0 = clerp(RH.C0, RHC0 * cf(1, 1, 0.2) * euler(0, -0.2, -0.5), 0.4)
                  LH.C0 = clerp(LH.C0, LHC0 * cf(-0.5, 1, 0) * euler(0.2, 0, -0.5), 0.4)
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
            if Thing[2] == "Transposition" then
              if 0 < Thing[3] or hitfloor == nil then
                Thing[3] = Thing[3] - 1
                Thing[4].CFrame = cf(Thing[1].Torso.Position, RootPart.Position)
                local mag = RootPart.Position - Thing[1].Torso.Position.magnitude
                MagicCircle2(BrickColor.new(NewCol), Thing[4].CFrame * euler(1.57, 0, 0) * cf(math.random(-400, 400) / 100, 0, math.random(-400, 400) / 100), 2, 10, 2, -0.1, mag / 20, -0.1, 0.05, -mag / 15)
              else
                do
                  CF1 = cf(Thing[1].Torso.Position) * cf(0, 3, 0)
                  CF2 = cf(RootPart.Position) * cf(0, 3, 0)
                  RootPart.CFrame = CF1
                  Thing[1].Torso.CFrame = CF2
                  RootPart.Velocity = vt(0, 0, 0)
                  Thing[1].Torso.Velocity = vt(0, 0, 0)
                  so("206082368", RootPart, 1, 1)
                  so("206082368", Thing[1].Torso, 1, 1)
                  MagicSpecial(BrickColor.new(NewCol), CF1, 3, 3, 3, 1, 1, 1, 0.05)
                  MagicSpecial(BrickColor.new(NewCol), CF2, 3, 3, 3, 1, 1, 1, 0.05)
                  local num = 0
                  do
                    do
                      local eul = CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                      for i = 1, 6 do
                        MagicCircle2(BrickColor.new(NewCol), CF1 * eul * euler(num, 0, 0), 3, 20, 3, -0.02, 0.5, -0.02, 0.02, 0.6)
                        MagicCircle2(BrickColor.new(NewCol), CF1 * eul * euler(0, 1.57, 0) * euler(num, 0, 0), 3, 20, 3, -0.02, 0.5, -0.02, 0.02, 0.6)
                        num = num + 1.046
                      end
                      table.remove(Effects, e)
                      if Thing[2] == "BloodBind" then
                        if Thing[4].Parent == nil or Thing[4] == nil or Thing[4].Parent.Parent == nil then
                          table.remove(Effects, e)
                          dashhit = nil
                        else
                          Thing[5] = Thing[5] * euler(0, 0.2, 0)
                          if 5 <= Thing[3] then
                            Thing[3] = 0
                            cooldownsadd[1] = 0.25
                            MagicCircle(BrickColor.new("Mulberry"), cf(Thing[4].Position) * Thing[5] * cf(math.random(-5, 5), math.random(-3, 3), math.random(-5, 5)), 1, 1, 1, 1, 1, 1, 0.1, 1)
                          end
                          Thing[3] = Thing[3] + 1
                          if cooldownmax < cooldowns[1] then
                            table.remove(Effects, e)
                            cooldownsadd[1] = 0.45
                            dashhit = nil
                          end
                        end
                      end
                      if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Transposition" and Thing[2] ~= "BloodBind" then
                        if Thing[1].Transparency <= 1 then
                          if Thing[2] == "Block1" then
                            Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                            Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Ice" then
                              if Thing[6] <= Thing[5] then
                                Thing[6] = Thing[6] + 0.3
                                Thing[1].CFrame = Thing[1].CFrame * cf(0, 1, 0)
                              else
                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                              end
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
    fenbarmana2:TweenSize((UDim2.new(0.4, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
    fenbarmana4.Text = "Mana(" .. mana.Value .. ")"
    fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
    fenbarhp2:TweenSize((UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
    fenbarmove1b:TweenSize((UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarmove2b:TweenSize((UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarmove2.Text = move2
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
      if mananum <= 9 then
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
  end
end
