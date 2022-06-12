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
local Mode = "None"
local manucancel = false
local firebar = 50
local icebar = 50
local acidbar = 50
local shattersord = false
local poisonatk = false
local Poisoned = {}
local move1 = "(Z)\n"
local move2 = "(X)\n"
local move3 = "(C)\n"
local move4 = "(V)\n"
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
local cooldownadd1 = 0.1
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.1
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.1
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
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
NewCol = BrickColor.new("Fossil").Color
NewCol2 = BrickColor.new("Smoky grey").Color
NewCol3 = BrickColor.new("Quill grey").Color
NewCol4 = BrickColor.new("Dark stone grey").Color
EleCol1 = BrickColor.new("Toothpaste").Color
FirCol = BrickColor.new("Really red").Color
IceCol = BrickColor.new("Toothpaste").Color
AcdCol = BrickColor.new("Lime green").Color
print(BrickColor.new(NewCol2))
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
if Character:findFirstChild("Uloe", true) ~= nil then
  Character:findFirstChild("Uloe", true).Parent = nil
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
local eleref = part(3, nil, 0, 1, BrickColor.new("Black"), "Element Ref", vt())
AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  if neon == true then
    prt.Material = "Neon"
  end
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(wldpar, prt, eleref, ceef)
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
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.25, 0, 0, 0), UDim2.new(0.2, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(FirCol).Color, UDim2.new(-0.25, 0, 0, 0), UDim2.new(0.2, 0, 0, 0))
local fenbarmana1b = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.2, 0, -4, 0))
local fenbarmana2b = gui("TextLabel", fenframe, "", 0, BrickColor.new(IceCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.2, 0, 0, 0))
local fenbarmana1c = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0, 0), UDim2.new(0.2, 0, -4, 0))
local fenbarmana2c = gui("TextLabel", fenframe, "", 0, BrickColor.new(AcdCol).Color, UDim2.new(0.25, 0, 0, 0), UDim2.new(0.2, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", nil, "Elements", 1, Color3.new(0, 0, 0), UDim2.new(-0.1, 0, 0.2, 0), UDim2.new(0.3, 0, 0.2, 0))
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
local fenbarammo1 = gui("TextLabel", fenframe2, "Element(" .. mana.Value .. ")", 0.55, BrickColor.new(NewCol4).Color, UDim2.new(1.26, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Uloe"
local fsword = it("Model", modelzorz)
fsword.Name = "Fire Blade"
local isword = it("Model", modelzorz)
isword.Name = "Ice Blade"
local asword = it("Model", modelzorz)
asword.Name = "Acid Blade"
local FWeapon = {}
local FWelds = {}
local IWeapon = {}
local IWelds = {}
local AWeapon = {}
local AWelds = {}
handle = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Handle", vt())
prt1 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol), "Part01", vt())
prt2 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part02", vt())
prt3 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part03", vt())
prt4 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part04", vt())
prt5 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part05", vt())
prt6 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part06", vt())
prt9 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part09", vt())
prt16 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part16", vt())
prt17 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part17", vt())
prt18 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol3), "Part18", vt())
prt19 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol3), "Part19", vt())
prt21 = part(3, modelzorz, 0.1, 0, BrickColor.new(NewCol2), "Part21", vt())
prt22 = part(3, modelzorz, 0.1, 0, BrickColor.new(NewCol2), "Part22", vt())
prt23 = part(3, modelzorz, 0.1, 1, BrickColor.new(EleCol1), "Part23", vt())
prt24 = part(3, modelzorz, 0.1, 1, BrickColor.new(EleCol1), "Part24", vt())
shandle = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "SHandle", vt(0.5, 0.5, 0.5))
sprt1 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart01", vt())
sprt4 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "SPart04", vt())
sprt5 = part(3, modelzorz, 0, 0.8, BrickColor.new("Really red"), "SPart05", vt())
sprt5.Material = "Neon"
sprt6 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "SPart06", vt())
sprt7 = part(3, modelzorz, 0, 0.8, BrickColor.new("Toothpaste"), "SPart07", vt())
sprt7.Material = "Neon"
sprt8 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "SPart08", vt())
sprt9 = part(3, modelzorz, 0, 0.8, BrickColor.new("Lime green"), "SPart09", vt())
sprt9.Material = "Neon"
sprt10 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart10", vt())
sprt11 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart11", vt())
sprt12 = part(3, modelzorz, 0, 0.4, BrickColor.new("Pastel light blue"), "SPart12", vt())
sprt13 = part(3, modelzorz, 0, 1, BrickColor.new(EleCol1), "SPart13", vt())
sprt13.Material = "Neon"
sprt14 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart14", vt())
sprt15 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart15", vt())
sprt16 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart16", vt())
sprt17 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "SPart17", vt())
sprt18 = part(3, modelzorz, 0, 0, BrickColor.new("Toothpaste"), "SPart18", vt())
sprt18.Material = "Neon"
eleref.Parent = modelzorz
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(1, 6.5, 0.7))
msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(1, 1.25, 0.8))
msh3 = mesh("SpecialMesh", prt3, "FileMesh", "18430887", vt(0, 0, 0), vt(0.08, 0.08, 1))
msh4 = mesh("SpecialMesh", prt4, "Sphere", "nil", vt(0, 0, 0), vt(0.8, 0.8, 0.8))
msh5 = mesh("SpecialMesh", prt5, "FileMesh", "18430887", vt(0, 0, 0), vt(0.08, 0.08, 1))
msh6 = mesh("CylinderMesh", prt6, "", "", vt(0, 0, 0), vt(1, 1.25, 0.8))
msh9 = mesh("BlockMesh", prt9, "", "", vt(0, 0, 0), vt(0.8, 0.3, 0.35))
msh16 = mesh("BlockMesh", prt16, "", "", vt(0, 0, 0), vt(1.25, 0.3, 0.25))
msh17 = mesh("BlockMesh", prt17, "", "", vt(0, 0, 0), vt(1.25, 0.275, 0.25))
msh18 = mesh("BlockMesh", prt18, "", "", vt(0, 0, 0), vt(0.75, 15, 0.3))
msh19 = mesh("SpecialMesh", prt19, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 1, 0.75))
msh21 = mesh("SpecialMesh", prt21, "FileMesh", "9756362", vt(0, 0, 0), vt(0.1, 0.2, 0.025))
msh22 = mesh("SpecialMesh", prt22, "FileMesh", "9756362", vt(0, 0, 0), vt(0.1, 0.2, 0.025))
msh23 = mesh("SpecialMesh", prt23, "FileMesh", "9756362", vt(0, 0, 0), vt(0.09, 0.18, 0.03))
msh24 = mesh("SpecialMesh", prt24, "FileMesh", "9756362", vt(0, 0, 0), vt(0.09, 0.18, 0.03))
smsh1 = mesh("BlockMesh", sprt1, "", "", vt(0, 0, 0), vt(1.25, 16, 0.25))
smsh4 = mesh("BlockMesh", sprt4, "", "", vt(0, 0, 0), vt(0.625, 0.15, 0.775))
smsh5 = mesh("BlockMesh", sprt5, "", "", vt(0, 0, 0), vt(0.587, 0.125, 0.78))
smsh6 = mesh("BlockMesh", sprt6, "", "", vt(0, 0, 0), vt(0.625, 0.15, 0.775))
smsh7 = mesh("BlockMesh", sprt7, "", "", vt(0, 0, 0), vt(0.587, 0.125, 0.78))
smsh8 = mesh("BlockMesh", sprt8, "", "", vt(0, 0, 0), vt(0.625, 0.15, 0.775))
smsh9 = mesh("BlockMesh", sprt9, "", "", vt(0, 0, 0), vt(0.587, 0.125, 0.78))
smsh10 = mesh("BlockMesh", sprt10, "", "", vt(0, 0, 0), vt(0.75, 0.75, 0.25))
smsh11 = mesh("BlockMesh", sprt11, "", "", vt(0, 0, 0), vt(0.75, 0.75, 0.25))
smsh12 = mesh("CylinderMesh", sprt12, "", "", vt(0, 0, 0), vt(1, 2.15, 0.2))
smsh13 = mesh("CylinderMesh", sprt13, "", "", vt(0, 0, 0), vt(1, 2.15, 0.125))
smsh14 = mesh("CylinderMesh", sprt14, "", "", vt(0, 0, 0), vt(1, 1, 0.75))
smsh15 = mesh("SpecialMesh", sprt15, "FileMesh", "156292343", vt(0, 0, 0), vt(0.15, 0.15, 0.5))
smsh16 = mesh("SpecialMesh", sprt16, "FileMesh", "156292343", vt(0, 0, 0), vt(0.15, 0.15, 0.5))
smsh17 = mesh("BlockMesh", sprt17, "", "", vt(0, 0, 0), vt(0.5, 0.25, 0.25))
smsh18 = mesh("BlockMesh", sprt18, "", "", vt(0, 0, 0), vt(0.51, 0.22, 0.22))
local handlewld = weld(handle, handle, sprt1, euler(0, 0, 0) * cf(0, 2.3, 0))
local wld1 = weld(prt1, prt1, handle, cf(0, 0, 0) * euler(0, 0, 0))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, 0.7, 0))
local wld3 = weld(prt1, prt3, prt1, euler(1.57, 0, 0) * cf(0, 0.575, 0))
local wld4 = weld(prt1, prt4, prt1, euler(0, 0, 0) * cf(0, 0.825, 0))
local wld5 = weld(prt1, prt5, prt1, euler(1.57, 0, -3.14) * cf(0, -0.3499, 0))
local wld6 = weld(prt1, prt6, prt1, euler(0, 0, 0) * cf(0, -0.47499, 0))
local wld9 = weld(prt1, prt9, prt1, euler(0, 0, 0) * cf(0, -0.675, 0))
local wld16 = weld(prt1, prt16, prt1, euler(0, 0, 0) * cf(0, -0.6499, 0))
local wld17 = weld(prt1, prt17, prt1, euler(-3.14, -1.57, 0) * cf(0, -0.6499, 0))
local wld18 = weld(prt1, prt18, prt1, euler(0, 0, 0) * cf(0, -2.125, 0))
local wld19 = weld(prt1, prt19, prt1, euler(0, -1.57, 0) * cf(0, -3.725, 0))
local wld21 = weld(prt1, prt21, prt1, euler(0, 0, 0) * cf(0, -0.9, -0.025))
local wld22 = weld(prt1, prt22, prt1, euler(0, 0, 0) * cf(0, -0.9, 0.025))
local wld23 = weld(prt1, prt23, prt1, euler(0, 0, 0) * cf(0, -0.9, -0.025))
local wld24 = weld(prt1, prt24, prt1, euler(0, 0, 0) * cf(0, -0.9, 0.025))
local shanwld = weld(shandle, shandle, Torso, euler(0, -1.57, 0) * cf(0.6, 0.8, -0.4))
local swld1 = weld(prt1, sprt1, shandle, euler(0, 0.5, 0) * cf(0, -0.2, 0.1) * euler(-1.5, 0, -2))
local swld4 = weld(prt1, sprt4, sprt1, euler(0, 0, 0) * cf(0, 1.525, 0))
local swld5 = weld(prt1, sprt5, sprt1, euler(0, 0, 0) * cf(0, 1.525, 0))
local swld6 = weld(prt1, sprt6, sprt1, euler(0, 0, 0) * cf(0, 1.475, 0))
local swld7 = weld(prt1, sprt7, sprt1, euler(0, 0, 0) * cf(0, 1.475, 0))
local swld8 = weld(prt1, sprt8, sprt1, euler(0, 0, 0) * cf(0, 1.425, 0))
local swld9 = weld(prt1, sprt9, sprt1, euler(0, 0, 0) * cf(0, 1.425, 0))
local swld10 = weld(prt1, sprt10, sprt1, euler(0, 0, mr(-45)) * cf(-0.1, 1.5, 0))
local swld11 = weld(prt1, sprt11, sprt1, euler(0, 0, mr(-45)) * cf(-0.1, 1.075, 0))
local swld12 = weld(prt1, sprt12, sprt1, euler(0, 0, 0) * cf(-0.175, 1.287, 0))
local swld13 = weld(prt1, sprt13, sprt1, euler(0, 0, 0) * cf(-0.175, 1.287, 0))
local swld14 = weld(prt1, sprt14, sprt13, euler(0, 0, 0) * cf(0, 0, 0))
local swld15 = weld(prt1, sprt15, sprt14, euler(mr(90), 0, 0) * cf(0, -0.099, 0))
local swld16 = weld(prt1, sprt16, sprt14, euler(mr(90), 0, 0) * cf(0, 0.099, 0))
local swld17 = weld(prt1, sprt17, sprt14, euler(mr(-45), 0, 0) * cf(-0.025, 0.05, 0))
local swld18 = weld(prt1, sprt18, sprt14, euler(mr(-45), 0, 0) * cf(-0.025, 0.05, 0))
local epwld = weld(prt1, eleref, prt18, euler(0, 0, 0) * cf(0, 0, 0))
ul = 0
for i = 1, 3 do
  col = "Deep blue"
  if i == 1 then
    col = "Deep blue"
  else
    if i == 2 then
      col = "Bright red"
    else
      if i == 3 then
        col = "Forest green"
      end
    end
  end
  local prt7 = part(3, modelzorz, 0.2, 0, BrickColor.new(col), "Part07", vt())
  local prt8 = part(3, modelzorz, 0.2, 0, BrickColor.new(col), "Part08", vt())
  msh7 = mesh("SpecialMesh", prt7, "Torso", "nil", vt(0, 0, 0), vt(0.5, 0.5, 0.2))
  msh8 = mesh("SpecialMesh", prt8, "Torso", "nil", vt(0, 0, 0), vt(0.75, 0.4, 0.2))
  local wld7 = weld(prt1, prt7, prt6, euler(0, 1.57, 0) * cf(0, 0.075, 0.05) * euler(0, ul, 0))
  local wld8 = weld(prt1, prt8, prt6, euler(1.57, 0, 1.57) * cf(0, -0.025, 0.05) * euler(0, ul, 0))
  ul = ul - 2.0933333333333
end
for na = 1, -1, -2 do
  local prt10 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part10", vt())
  local prt12 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part12", vt())
  msh10 = mesh("BlockMesh", prt10, "", "", vt(0, 0, 0), vt(0.75, 0.3, 0.25))
  msh12 = mesh("BlockMesh", prt12, "", "", vt(0, 0, 0), vt(1.25, 0.3, 0.25))
  local wld10 = weld(prt1, prt10, prt9, euler(3.14, 0, 0) * cf(0, 0.025, -0.05 * na))
  local wld12 = weld(prt1, prt12, prt9, euler(-3.14, 0, -3.14) * cf(0, 0.025, -0.15 * na))
  for d = -1, 1, 2 do
    local prt11 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part11", vt())
    msh11 = mesh("SpecialMesh", prt11, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 0.25, 0.25))
    du = 0
    if na == -1 then
      du = 3.14
    end
    local wld11 = weld(prt1, prt11, prt9, euler(-1.57, du, -1.57 * d) * cf(0.1 * d, 0.025, -0.05 * na))
  end
  for d = -1, 1, 2 do
    local prt13 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part13", vt())
    local prt14 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part14", vt())
    local prt15 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part15", vt())
    msh13 = mesh("SpecialMesh", prt13, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 0.25, 0.25))
    msh14 = mesh("SpecialMesh", prt14, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 0.25, 0.25))
    msh15 = mesh("SpecialMesh", prt15, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 0.25, 0.25))
    du = 0
    if na == -1 then
      du = 3.14
    end
    local wld13 = weld(prt1, prt13, prt9, euler(du, 3.14, 1.57 * d * na) * cf(-0.15 * d, 0.025, -0.15 * na))
    local wld14 = weld(prt1, prt14, prt9, euler(3.14 + du, 3.14, 1.57 * d * na) * cf(-0.15 * d, 0.025, -0.1 * na))
    local wld15 = weld(prt1, prt15, prt9, euler(du, 3.14, 1.57 * d * na) * cf(-0.2 * d, 0.025, -0.1 * na))
  end
end
for i = -1, 1, 2 do
  local prt20 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol3), "Part20", vt())
  msh20 = mesh("SpecialMesh", prt20, "Torso", "nil", vt(0, 0, 0), vt(1, 0.125, 0.3))
  local wld20 = weld(prt1, prt20, prt1, euler(-3.14, 0, -1.57 * i) * cf(-0.088 * i, -0.9, 0))
end
for i = -1, 1, 2 do
  local sprt2 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart02", vt())
  smsh2 = mesh("BlockMesh", sprt2, "", "", vt(0, 0, 0), vt(0.75, 16, 0.25))
  local swld2 = weld(prt1, sprt2, sprt1, euler(0, 0, 0) * cf(0, 0, -0.05 * i))
  for d = -1, 1, 2 do
    du = 0
    if d == -1 then
      du = math.rad(90)
    end
    anger = 0
    if i == -1 then
      anger = math.rad(180)
    end
    local sprt3 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "SPart03", vt())
    smsh3 = mesh("SpecialMesh", sprt3, "Wedge", "nil", vt(0, 0, 0), vt(16, 0.25, 0.25))
    local swld3 = weld(prt1, sprt3, sprt1, euler(du, math.rad(180), math.rad(90)) * euler(0, anger, anger) * cf(-0.1 * d, 0, -0.05 * i))
  end
end
da = 0
for i = 1, 3 do
  col = "Toothpaste"
  if i == 2 then
    col = "Lime green"
  else
    if i == 3 then
      col = "Really red"
    end
  end
  local sprt19 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "SPart19", vt())
  local sprt20 = part(3, modelzorz, 0, 0, BrickColor.new(col), "SPart18", vt())
  sprt20.Material = "Neon"
  smsh19 = mesh("BlockMesh", sprt19, "", "", vt(0, 0, 0), vt(0.5, 0.65, 0.2))
  smsh20 = mesh("BlockMesh", sprt20, "", "", vt(0, 0, 0), vt(0.51, 0.625, 0.175))
  local swld19 = weld(prt1, sprt19, sprt14, euler(0, 0, 0) * cf(-0.025, 0, 0) * euler(0, da, 0))
  local swld20 = weld(prt1, sprt20, sprt14, euler(0, 0, 0) * cf(-0.025, 0, 0) * euler(0, da, 0))
  da = da + mr(120)
end
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(prt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local fprt1, fmsh1, fwld1 = AesthPart(fsword, eleref, 0.4, 0.9, FirCol, "[FIRE] Part01", true, "BlockMesh", "", "", 0.801, 15, 0.351, euler(0, 0, 0) * cf(0, 0, 0))
fprt2 = AesthPart(fsword, eleref, 0.4, 0.9, FirCol, "[FIRE] Part02", true, "SpecialMesh", "Wedge", "nil", 0.351, 1, 0.801, euler(0, -1.57, 0) * cf(0, -1.6, 0))
fprt3 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part03", true, "BlockMesh", "", "", 0.874, 14.5, 0.125, euler(0, 0, 0) * cf(0.013, -0.3249, 0))
fprt4 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part04", true, "SpecialMesh", "Wedge", "nil", 0.15, 2, 0.874, euler(0, -1.57, 0) * cf(0.013, -1.975, 0))
fprt5 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part05", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.75, euler(mr(-180), mr(-90), 0) * cf(0.075, 1.15, 0))
fprt6 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part06", true, "SpecialMesh", "Wedge", "nil", 0.15, 1.5, 0.25, euler(0, mr(-90), 0) * cf(0.225, 0.875, 0))
fprt7 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part07", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.5, euler(0, mr(90), 0) * cf(0.15, 1, 0))
fprt8 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part08", true, "SpecialMesh", "Wedge", "nil", 0.15, 2, 0.5, euler(mr(180), mr(90), 0) * cf(0.2, 1.225, 0))
fprt9 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part09", true, "BlockMesh", "", "", 0.75, 11.75, 0.125, euler(0, 0, 0) * cf(0.075, -0.0749, 0))
eleref0 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part10", true, "SpecialMesh", "Wedge", "nil", 0.15, 2.625, 0.25, euler(0, mr(-90), 0) * cf(0.125, -1.512, 0))
fprt11 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part11", true, "SpecialMesh", "Wedge", "nil", 0.15, 2, 0.5, euler(0, mr(-90), 0) * cf(0.2, 0.225, 0))
fprt12 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part12", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.5, euler(mr(180), mr(-90), 0) * cf(0.15, 0.525, 0))
fprt13 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part13", true, "SpecialMesh", "Wedge", "nil", 0.15, 1.25, 0.25, euler(mr(180), mr(90), 0) * cf(0.225, 0.55, 0))
fprt14 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part14", true, "SpecialMesh", "Wedge", "nil", 0.15, 2, 0.5, euler(0, mr(-90), 0) * cf(0.175, -0.425, 0))
fprt15 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part15", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.5, euler(mr(180), mr(-90), 0) * cf(0.125, -0.125, 0))
fprt16 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part16", true, "SpecialMesh", "Wedge", "nil", 0.15, 1.25, 0.25, euler(mr(180), mr(90), 0) * cf(0.2, -0.099, 0))
fprt17 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part17", true, "SpecialMesh", "Wedge", "nil", 0.15, 2, 0.5, euler(0, mr(-90), 0) * cf(0.15, -1.075, 0))
fprt18 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part18", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.5, euler(mr(180), mr(-90), 0) * cf(0.1, -0.7749, 0))
fprt19 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part19", true, "SpecialMesh", "Wedge", "nil", 0.15, 1.25, 0.25, euler(mr(180), mr(90), 0) * cf(0.175, -0.75, 0))
fprt20 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part20", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.5, 0.25, euler(mr(-90), mr(-90), mr(-90)) * euler(0, 0, mr(-60)) * cf(-0.149, 1.02, 0))
fprt21 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part21", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(90), mr(-90)) * euler(0, 0, mr(-60)) * cf(-0.195, 0.989, 0))
fprt22 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part22", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.25, euler(mr(90), mr(-90), mr(90)) * euler(0, 0, mr(120)) * cf(-0.347, 1.077, 0))
fprt23 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part23", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(120)) * cf(-0.257, 1.083, 0))
fprt24 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part24", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.5, 0.25, euler(mr(-90), mr(-90), mr(-90)) * euler(0, 0, mr(-50)) * cf(-0.178, 1.154, 0))
fprt25 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part25", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(90), mr(-90)) * euler(0, 0, mr(-50)) * cf(-0.229, 1.131, 0))
fprt26 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part26", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.25, euler(mr(90), mr(-90), mr(90)) * euler(0, 0, mr(130)) * cf(-0.363, 1.244, 0))
fprt27 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part27", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(130)) * cf(-0.274, 1.234, 0))
fprt28 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part28", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.5, 0.25, euler(mr(-90), mr(-90), mr(-90)) * euler(0, 0, mr(-35)) * cf(-0.192, 1.306, 0))
fprt29 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part29", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(90), mr(-90)) * euler(0, 0, mr(-35)) * cf(-0.247, 1.298, 0))
fprt30 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part30", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.25, euler(mr(90), mr(-90), mr(90)) * euler(0, 0, mr(145)) * cf(-0.348, 1.441, 0))
fprt31 = AesthPart(fsword, eleref, 0.4, 0, FirCol, "[FIRE] Part31", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(145)) * cf(-0.264, 1.409, 0))
for _,c in pairs(fsword:children()) do
  table.insert(FWeapon, c)
end
for _,c in pairs(eleref:children()) do
  if c.className == "Motor" then
    table.insert(FWelds, c)
  end
end
for i = 1, #FWeapon do
  FWeapon[i].Parent = nil
end
for i = 1, #FWelds do
  FWelds[i].Parent = nil
end
iprt1 = AesthPart(isword, eleref, 0.4, 0.9, IceCol, "[ICE] Part01", true, "BlockMesh", "", "", 0.801, 15, 0.351, euler(0, 0, 0) * cf(0, 0, 0))
iprt2 = AesthPart(isword, eleref, 0.4, 0.9, IceCol, "[ICE] Part02", true, "SpecialMesh", "Wedge", "nil", 0.351, 1, 0.801, euler(0, -1.57, 0) * cf(0, -1.6, 0))
iprt3 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part03", true, "BlockMesh", "", "", 0.874, 14.5, 0.125, euler(0, 0, 0) * cf(0.013, -0.325, 0))
iprt4 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part04", true, "SpecialMesh", "Wedge", "nil", 0.15, 2, 0.874, euler(0, -1.57, 0) * cf(0.013, -1.975, 0))
iprt5 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part05", true, "BlockMesh", "", "", 0.75, 11.75, 0.125, euler(0, 0, 0) * cf(0.075, -0.075, 0))
iprt6 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part06", true, "SpecialMesh", "Wedge", "nil", 0.15, 10, 0.25, euler(0, mr(-90), 0) * cf(0.175, -0.25, 0))
iprt7 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part07", true, "SpecialMesh", "Wedge", "nil", 0.15, 2.625, 0.25, euler(0, mr(-90), 0) * cf(0.125, -1.513, 0))
iprt8 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part08", true, "SpecialMesh", "Wedge", "nil", 0.15, 2.5, 0.25, euler(mr(180), mr(90), 0) * cf(0.175, 1, 0))
iprt9 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part09", true, "SpecialMesh", "Wedge", "nil", 0.15, 1, 0.5, euler(mr(-180), mr(-90), 0) * cf(0.1, 1.15, 0))
iprt10 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part10", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(-90), mr(-90)) * euler(0, 0, mr(-100)) * cf(-0.18, 1.063, 0))
iprt11 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part11", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(90), mr(-90)) * euler(0, 0, mr(-100)) * cf(-0.172, 1.013, 0))
iprt12 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part12", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(-90), mr(90)) * euler(0, 0, mr(80)) * cf(-0.32, 0.9869, 0))
iprt13 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part13", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(80)) * cf(-0.328, 1.037, 0))
iprt14 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part14", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(-90), mr(-90)) * euler(0, 0, mr(-80)) * cf(-0.222, 1.212, 0))
iprt15 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part15", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(90), mr(-90)) * euler(0, 0, mr(-80)) * cf(-0.23, 1.162, 0))
iprt16 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part16", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(-90), mr(90)) * euler(0, 0, mr(100)) * cf(-0.378, 1.188, 0))
iprt17 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part17", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(100)) * cf(-0.37, 1.238, 0))
iprt18 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part18", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(-90), mr(-90)) * euler(0, 0, mr(-60)) * cf(-0.223, 1.359, 0))
iprt19 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part19", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(90), mr(-90)) * euler(0, 0, mr(-60)) * cf(-0.248, 1.316, 0))
iprt20 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part20", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(90), mr(-90), mr(90)) * euler(0, 0, mr(120)) * cf(-0.377, 1.391, 0))
iprt21 = AesthPart(isword, eleref, 0.4, 0, IceCol, "[ICE] Part21", true, "SpecialMesh", "Wedge", "nil", 0.15, 0.75, 0.25, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(120)) * cf(-0.352, 1.434, 0))
for _,c in pairs(isword:children()) do
  table.insert(IWeapon, c)
end
for _,c in pairs(eleref:children()) do
  if c.className == "Motor" then
    table.insert(IWelds, c)
  end
end
for i = 1, #IWeapon do
  IWeapon[i].Parent = nil
end
for i = 1, #IWelds do
  IWelds[i].Parent = nil
end
aprt1 = AesthPart(asword, eleref, 0.4, 0.9, AcdCol, "[ACID] Part01", true, "BlockMesh", "", "", 0.801, 15, 0.351, euler(0, 0, 0) * cf(0, 0, 0))
aprt2 = AesthPart(asword, eleref, 0.4, 0.9, AcdCol, "[ACID] Part02", true, "SpecialMesh", "Wedge", "nil", 0.351, 1, 0.801, euler(0, -1.57, 0) * cf(0, -1.6, 0))
aprt3 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part03", true, "BlockMesh", "", "", 0.874, 14, 0.125, euler(0, 0, 0) * cf(0.013, -0.135, 0))
aprt4 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part04", true, "SpecialMesh", "Wedge", "nil", 0.15, 1.25, 0.874, euler(0, -1.57, 0) * cf(0.013, -1.66, 0))
aprt5 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part05", true, "CylinderMesh", "", "", 1, 0.125, 1, euler(mr(90), 0, 0) * cf(0.05, 1.14, 0))
aprt6 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part06", true, "CylinderMesh", "", "", 1, 0.125, 1, euler(mr(90), 0, 0) * cf(0.125, 1.015, 0))
aprt7 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part07", true, "CylinderMesh", "", "", 1, 0.125, 1, euler(mr(90), 0, 0) * cf(0.075, 0.8649, 0))
aprt8 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part08", true, "CylinderMesh", "", "", 1, 0.125, 1, euler(mr(90), 0, 0) * cf(0.025, 0.715, 0))
aprt9 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part09", true, "SpecialMesh", "Sphere", "nil", 0.2, 1.25, 0.3, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(130)) * cf(-0.198, 1.031, 0))
aprt10 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part10", true, "SpecialMesh", "Sphere", "nil", 0.2, 1.25, 0.3, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(140)) * cf(-0.198, 1.181, 0))
aprt11 = AesthPart(asword, eleref, 0.4, 0, AcdCol, "[ACID] Part11", true, "SpecialMesh", "Sphere", "nil", 0.2, 1.25, 0.3, euler(mr(-90), mr(90), mr(90)) * euler(0, 0, mr(150)) * cf(-0.198, 1.331, 0))
for _,c in pairs(asword:children()) do
  table.insert(AWeapon, c)
end
for _,c in pairs(eleref:children()) do
  if c.className == "Motor" then
    table.insert(AWelds, c)
  end
end
for i = 1, #AWeapon do
  AWeapon[i].Parent = nil
end
for i = 1, #AWelds do
  AWelds[i].Parent = nil
end
local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox", vt())
hitbox.Anchored = false
local hitboxCF = cf(0, 0, 0)
hboxpos = Instance.new("BodyPosition", nil)
hboxpos.P = 2000
hboxpos.D = 100
hboxpos.maxForce = Vector3.new(545000, 545000, 545000)
local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
local nsk = NumberSequenceKeypoint.new
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
parti.Acceleration = vt(8, 6, 6)
parti.LockedToPart = false
parti.EmissionDirection = "Front"
parti.Lifetime = nr(0, 1)
parti.Rate = 200
parti.Rotation = nr(4, 9)
parti.RotSpeed = nr(5, 9)
parti.Speed = nr(5, 7)
parti.VelocitySpread = 28
parti.Parent = nil
parti.Enabled = false
local partipoi = parti:Clone()
partipoi.Color = cs(Color3.new(0.88627450980392, 0.47450980392157, 0), Color3.new(0.49411764705882, 0, 0))
partipoi.LightEmission = 0.2
sizeseq = ns({nsk(0, 0.188), nsk(0.202, 0.8), nsk(0.33, 0.1), nsk(0.519, 0.7), nsk(0.741, 0.3), nsk(1, 0)})
partipoi.Size = sizeseq
partipoi.Texture = "http://www.roblox.com/asset/?id=144580273"
partipoi.Acceleration = vt(0, 10, 0)
partipoi.EmissionDirection = "Bottom"
partipoi.Rate = 50
partipoi.Speed = nr(2, 3)
partipoi.VelocitySpread = 90
local partipoi2 = parti:Clone()
partipoi2.Color = cs(Color3.new(0.69019607843137, 0.82745098039216, 0), Color3.new(0.23137254901961, 0.35294117647059, 0))
partipoi2.LightEmission = 0.5
sizeseq = ns({nsk(0, 0), nsk(0.153, 0.6), nsk(0.246, 0.6), nsk(0.3, 0), nsk(0.358, 0.75), nsk(0.544, 0.5), nsk(0.6, 0), nsk(0.643, 0.6), nsk(0.787, 0.5), nsk(0.9, 1.44), nsk(1, 1.3)})
transseq = ns({nsk(0, 1), nsk(0.307, 0.65), nsk(0.67, 0.719), nsk(1, 1)})
partipoi2.Size = sizeseq
partipoi2.Transparency = transseq
partipoi2.Texture = "http://www.roblox.com/asset/?id=253188763"
partipoi2.ZOffset = 1
partipoi2.Acceleration = vt(0, 0.5, 0)
partipoi2.EmissionDirection = "Top"
partipoi2.Lifetime = nr(4, 5)
partipoi2.Rate = 10
partipoi2.Rotation = nr(0, 0)
partipoi2.RotSpeed = nr(50, 300)
partipoi2.Speed = nr(0.5, 0.5)
partipoi2.VelocitySpread = 90
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Uloe"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Dominus" then
  Bin.Name = "Uloe"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  if id == "unsheath" then
    sou.SoundId = "rbxasset://sounds\\unsheath.wav"
  else
    sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  end
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
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 2.3, 0), 0.4)
    shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * cf(0.6, 0.8, -0.4), 0.4)
    swld1.C0 = clerp(swld1.C0, euler(0, 0.5, 0) * cf(0, -0.2, 0.1) * euler(-1.5, 0, -2), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4) * euler(0, 1.57, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
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
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  mdec2.Parent = Decrease
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4) * euler(0, 1.57, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
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
  for i = 0, 1, 0.15 do
    swait()
    if Mode == "Fire" then
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -1) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.4) * euler(2, 0, -1) * euler(0, 1, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.5) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.95, 0.2) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 0.3), 0.3)
    else
      if Mode == "Ice" then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.15, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0.5, -0.2) * euler(0, 0, 1), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.6) * euler(0, -1.2, 0) * euler(-1, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, 0.1) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.2, -0.9, 0.1) * euler(0, 1.57, 0) * euler(0.1, -1, 0) * euler(0, 0, 0.3), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(0.2, -0.6, 0) * euler(0, 0, -0.1), 0.3)
      else
        if Mode == "Acid" then
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
          wld1.C0 = clerp(wld1.C0, cf(0, -0.1, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.8) * euler(0.1, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0, 0, -0.8) * euler(0.1, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 1.2) * euler(0, 1.2, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-0.9, 0.5, -0.8) * euler(1.7, 0, 1) * euler(0, -1.57, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(0.9, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0.4, 0) * euler(0, 0, -0.3), 0.3)
          LH.C0 = clerp(LH.C0, cf(-0.9, -0.6, 0.4) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(0, 0, -0.1), 0.3)
        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC634: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC634: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("320557413", prt18, 1, 1)
  hitbox.Parent = modelzorz
  hitbox.Anchored = true
  hitbox.Size = vt(1, 1, 1)
  hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
    MagniDamage(hitbox, 3, 4, 6, math.random(5, 8), "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    if Mode == "Fire" then
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.45)
      wld1.C0 = clerp(wld1.C0, cf(0, 0.1, 0) * euler(0, 0, -0.6) * euler(0, 0, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 1) * euler(0.1, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.4, 0) * euler(1, 0, 1) * euler(0, 1, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8) * euler(0, 0, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0.5, 0) * euler(0, 0, -0.1), 0.45)
      LH.C0 = clerp(LH.C0, cf(-0.95, -0.9, 0.2) * euler(0, -1.57, 0) * euler(-0.1, 1, 0) * euler(0, 0, -0.1), 0.45)
    else
      if Mode == "Ice" then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.5)
        wld1.C0 = clerp(wld1.C0, cf(0, 0.2, 0) * euler(0, 0, -1) * euler(0, 0, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.15, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.2, -0.2) * euler(0, 0, 1), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 1.2) * euler(0, -1.2, 0) * euler(0, 0, -0.4), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.1), 0.5)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(0, -1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, 0.2), 0.5)
      else
        if Mode == "Acid" then
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.5)
          wld1.C0 = clerp(wld1.C0, cf(0, 0.2, 0) * euler(0, 0, -1.2) * euler(0, 0, 0), 0.5)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.8) * euler(0, 0, 0), 0.5)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.8) * euler(0, 0, 0), 0.5)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 0.8) * euler(0, 1.4, 0), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4) * euler(0, 0, 0), 0.5)
          RH.C0 = clerp(RH.C0, cf(0.9, -0.95, 0.4) * euler(0, 1.57, 0) * euler(-0.2, -0.8, 0) * euler(0, 0, -0.3), 0.5)
          LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -0.8, 0) * euler(0, 0, 0.3), 0.5)
        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC1327: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC1327: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = nil
  attack = false
end
attacktwo = function()
  attack = true
  if Mode == "Fire" then
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.4) * euler(0, -1, 0), 0.3)
  end
  for i = 0, 1, 0.15 do
    swait()
    if Mode == "Fire" then
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * euler(0, 0, -0.8) * euler(0.1, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 0.4) * euler(0, -1, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.5) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.8, -0.2, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0.8, 0) * euler(0, 0, 0.2), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.95, -0.9, 0.2) * euler(0, -1.57, 0) * euler(-0.3, 0.8, 0) * euler(0, 0, 0.2), 0.3)
    else
      if Mode == "Ice" then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
        na = 3
        ba = 0.5
        dd = 0.3
        if i > 0.5 then
          na = 0.4
          ba = 0
          dd = 0.6
        end
        RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.8) * euler(0.4, 0, 0.6) * euler(0, -1, 0) * euler(-6 * i, 0, -0.4 + ba) * euler(0, na, 0), dd)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.6) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, 0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, 0.1), 0.3)
      else
        if Mode == "Acid" then
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
          wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -1) * euler(0.1, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1 - mr(400) * i), 0.5)
          RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.4) * euler(2, 0, -1) * euler(0, 1, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.5) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.95, 0.2) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 0.3), 0.3)
        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC686: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC686: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("320557487", prt18, 1, 1.2)
  hitbox.Parent = modelzorz
  hitbox.Anchored = true
  hitbox.Size = vt(1, 1, 1)
  hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
    MagniDamage(hitbox, 3, 4, 6, math.random(5, 8), "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    if Mode == "Fire" then
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.5)
      wld1.C0 = clerp(wld1.C0, cf(0, 0.1, 0) * euler(0, 0, -0.6) * euler(0, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -1) * euler(0, 0, 1) * euler(0.1, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.4, 0) * euler(0.5, 0, 0.4) * euler(0, -0.8, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -1) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.8, -0.2, -0.4) * euler(0, 1.57, 0) * euler(0.1, -1, 0) * euler(0, 0, -0.2), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.7, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -1, 0) * euler(0, 0, 1), 0.5)
    else
      if Mode == "Ice" then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.5)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, -0.2) * euler(0, 0, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.3, -0.6) * euler(0, 0, 1), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.3, 0.4, 0.2) * euler(-0.6, 0, 0.6) * euler(0, -1, 0) * euler(-0.5, 0, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -1) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1, -0.6, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.1), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.8, -0.8, -0.3) * euler(0, -1.57, 0) * euler(-0.3, -0.6, 0) * euler(0, 0, 0.1), 0.5)
      else
        if Mode == "Acid" then
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.45)
          wld1.C0 = clerp(wld1.C0, cf(0, 0.1, 0) * euler(0, 0, -0.6) * euler(0, 0, 0), 0.45)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 1) * euler(0.1, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.45)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.4, 0) * euler(1, 0, 1) * euler(0, 1, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8) * euler(0, 0, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0.5, 0) * euler(0, 0, -0.1), 0.45)
          LH.C0 = clerp(LH.C0, cf(-0.95, -0.9, 0.2) * euler(0, -1.57, 0) * euler(-0.1, 1, 0) * euler(0, 0, -0.1), 0.45)
        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC1385: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC1385: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = nil
  attack = false
end
attackthree = function()
  attack = true
  if Mode == "Ice" then
    RW.C0 = clerp(RW.C0, cf(1.2, 0.6, 0.2) * euler(0.2, 0, 0.6) * euler(0, -1, 0) * euler(0.8, 0, 0.8) * euler(0, -1, 0), 0.3)
  end
  for i = 0, 1, 0.15 do
    swait()
    if Mode == "Fire" then
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.8), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0.4) * euler(0, -1.5, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.1, 0, -0.5) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.8, -0.9, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0.8, 0) * euler(0, 0, -0.2), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, 0.2) * euler(0, -1.57, 0) * euler(-0.2, 0.8, 0) * euler(0, 0, 0.2), 0.3)
    else
      if Mode == "Ice" then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.4) * euler(0, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.2) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.6, 0.2) * euler(0.2, 0, 0.6) * euler(0, -1, 0) * euler(1.2, 0, 0.8) * euler(0, -1, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.2) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, 0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, 0.1), 0.3)
      else
        if Mode == "Acid" then
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
          wld1.C0 = clerp(wld1.C0, cf(0, 0.1, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -1) * euler(0.1, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
          RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.4) * euler(2, 0, -1) * euler(0, 0.5, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -0.5) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.95, 0.2) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 0.3), 0.3)
        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC673: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC673: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("320557537", prt18, 1, 1.2)
  hitbox.Parent = modelzorz
  hitbox.Anchored = true
  hitbox.Size = vt(1, 1, 1)
  hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
    MagniDamage(hitbox, 3, 4, 6, math.random(5, 6), "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    if Mode == "Fire" then
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.4)
      if i < 0.3 then
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.4) * euler(0, 0, 0), 0.4)
      else
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.4)
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -1) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.4)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(2, 0, -1) * euler(0, -2, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.4) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.2, 0.1, 0) * euler(0, 0, 0.3), 0.4)
    else
      if Mode == "Ice" then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.5)
        wld1.C0 = clerp(wld1.C0, cf(0, 0.2, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0, 0, 1.2), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.6, -0.3) * euler(0.2, 0, 0.6) * euler(0, -1, 0) * euler(1.2, 0, 0.8) * euler(0, -1, 0) * euler(-2.5, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.8) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.8, -0.85, 0.1) * euler(0, 1.57, 0) * euler(-0.3, -1.2, 0) * euler(0, 0, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.6, -0.7) * euler(0, -1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.5)
      else
        if Mode == "Acid" then
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.45)
          wld1.C0 = clerp(wld1.C0, cf(0, 0.1, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.45)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.45)
          RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(-0.5, 0, 1) * euler(0, -0.5, 0) * euler(0, 0, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.8) * euler(0, 0, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(1.2, -0.95, 0.2) * euler(0, 1.57, 0) * euler(0.1, -0.6, 0) * euler(0, 0, -0.1), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1, -0.85, -0.1) * euler(0, -1.57, 0) * euler(-0.1, -0.4, 0) * euler(0, 0, 0.3), 0.45)
        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC1405: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC1405: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = nil
  attack = false
end
attackfour = function()
  attack = true
  if Mode == "Fire" then
    for i = 0, 1, 0.15 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.4) * euler(2, 0, -1) * euler(0, 1, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.5) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.95, 0.2) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 0.3), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC222: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC222: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    canfire = false
    if mana.Value >= 5 then
      mana.Value = mana.Value - 5
      canfire = true
      so("199144678", prt18, 1, 0.8)
    end
    so("320557563", prt18, 1, 1)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
    ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt(1.3, 6, 1.3))
    ref.Anchored = true
    ref.CFrame = hitbox.CFrame
    game:GetService("Debris"):AddItem(ref, 5)
    if canfire == false then
      ref.Parent = nil
    end
    parti2 = parti:Clone()
    parti2.Parent = ref
    parti2.Enabled = true
    parti2.Acceleration = vt(math.random(-800, 800) / 100, math.random(500, 800) / 100, math.random(-800, 800) / 100)
    magn = 5
    dam1 = 5
    dam2 = 7
    debo = 0.4
    if canfire == false then
      magn = 3
      dam1 = 4
      dam2 = 6
      debo = 0.5
    end
    for i = 0, 1, 0.05 do
      swait()
      hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
      MagniDamage(hitbox, magn, dam1, dam2, math.random(3, 6), "Normal", RootPart, debo, 1, (math.random(3, 6)), nil, true)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.2)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, -0.8) * euler(0, 0, 0), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.2)
      if i > 0.7 then
        parti2.Enabled = false
      end
      if i < 0.5 then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1 * mr(-720) * i), 0.3)
      else
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
      end
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 1) * euler(0, 1.5, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -1.2) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -0.2), 0.2)
      LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, 0.1) * euler(0, -1.57, 0) * euler(-0.1, 1, 0) * euler(0, 0, 0.1), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          ref.CFrame = prt18.CFrame * cf(0, 1.5, 0)
          -- DECOMPILER ERROR at PC646: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC646: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    parti2.Enabled = false
    hitbox.Parent = nil
attack=false
  else
    if Mode == "Ice" then
      for i = 0, 1, 0.15 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.15, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0.6, 0, 0.6) * euler(0, -1.6, 0) * euler(-1.4, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.4) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, 0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC878: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC878: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 10
      so("320557453", prt18, 1, 1)
      for i = 0, 1, 0.22 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.5)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, -1) * euler(0, 0, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.2) * euler(0.1, 0, 0) * euler(0, 0.2, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.6) * euler(0, 0, 1.2) * euler(0, -0.2, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.3, -0.3) * euler(0.6, 0, 0.6) * euler(0, -1.6, 0) * euler(-1.4, 0, 0) * euler(1.5, 0, 0) * euler(0, 0.5, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -1) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.4, 0.1) * euler(0, 1.57, 0) * euler(-0.2, -1, 0) * euler(0, 0, 0.2), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.6, -0.8, -0.4) * euler(0, -1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, 0.4), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1139: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1139: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt(1, 1, 1))
      ref.Anchored = true
      ref.CFrame = prt18.CFrame * cf(0, 1.8, 0)
      ref.CFrame = cf(ref.Position) * cf(0, 2, 0)
      game:GetService("Debris"):AddItem(ref, 5)
      hitfloor2, posfloor2 = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
      if hitfloor2 ~= nil and mana.Value >= 5 then
        mana.Value = mana.Value - 5
        ref.CFrame = cf(posfloor2)
        so("199146035", ref, 0.6, 1.2)
        MagicIcicle(BrickColor.new("Bright blue"), cf(ref.Position) * cf(0, -4, 0), 4, 7, 4, 0.07)
        ref.CFrame = cf(posfloor2) * cf(0, 2, 0)
        MagniDamage(ref, 4, 6, 8, 0, "Normal", ref, 0, 1, (math.random(4, 6)), nil, nil, true, "Movement", 0.1, 100)
      end
      for i = 1, 10 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.5)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, -1) * euler(0, 0, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.2) * euler(0.1, 0, 0) * euler(0, 0.2, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.6) * euler(0, 0, 1.2) * euler(0, -0.2, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.3, -0.3) * euler(0.6, 0, 0.6) * euler(0, -1.6, 0) * euler(-1.4, 0, 0) * euler(1.5, 0, 0) * euler(0, 0.5, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -1) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.4, 0.1) * euler(0, 1.57, 0) * euler(-0.2, -1, 0) * euler(0, 0, 0.2), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.6, -0.8, -0.4) * euler(0, -1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, 0.4), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1534: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1534: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      ref.Parent = nil
      dec.Parent = nil
attack=false
    else
      do
        if Mode == "Acid" then
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.4) * euler(0, -1.5, 0), 0.3)
          for i = 0, 1, 0.15 do
            swait()
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
            wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.8), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0.4) * euler(0, -1.5, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.1, 0, -0.5) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(0.8, -0.9, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0.8, 0) * euler(0, 0, -0.2), 0.3)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, 0.2) * euler(0, -1.57, 0) * euler(-0.2, 0.8, 0) * euler(0, 0, 0.2), 0.3)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC1783: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1783: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          so("320557563", prt18, 1, 1)
          canpoison = false
          if mana.Value >= 5 then
            mana.Value = mana.Value - 5
            canpoison = true
            poisonatk = true
          end
          hitbox.Parent = modelzorz
          hitbox.Anchored = true
          hitbox.Size = vt(1, 1, 1)
          hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
          ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt(1.3, 6, 1.3))
          ref.Anchored = true
          ref.CFrame = prt18.CFrame * cf(0, 1.5, 0)
          game:GetService("Debris"):AddItem(ref, 5)
          if canpoison == false then
            ref.Parent = nil
          end
          magn = 5
          dam1 = 5
          dam2 = 6
          if canpoison == false then
            magn = 3
            dam1 = 3
            dam2 = 5
          end
          parti2 = partipoi:Clone()
          parti2.Parent = ref
          parti2.Enabled = true
          for i = 0, 1, 0.1 do
            swait()
            hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
            MagniDamage(hitbox, magn, dam1, dam2, math.random(3, 6), "Normal", RootPart, 1, 1, (math.random(3, 6)), nil, true, nil, "Damage", 0.2, 250)
            ref.CFrame = prt18.CFrame * cf(0, 1.5, 0)
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.2)
            wld1.C0 = clerp(wld1.C0, cf(0, 0.2, 0) * euler(0, 0, -1) * euler(0, 0, 0), 0.2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6) * euler(0.1, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.2)
            RW.C0 = clerp(RW.C0, cf(0, 0.5, -0.5) * euler(1.5, 0, -1) * euler(0, -1.5, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.4) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.2), 0.2)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.2, 0.1, 0) * euler(0, 0, 0.3), 0.2)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC2156: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC2156: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          poisonatk = false
          canpoison = false
          parti2.Enabled = false
          hitbox.Parent = nil
        end
        attack = false
      end
    end
  end
end
Uncharge = function()
  attack = true
  combo = 0
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 0.6
  game:GetService("Debris"):AddItem(dec, 10)
  print(mana.Value)
  if Mode == "Fire" then
    firebar = mana.Value
  else
    if Mode == "Ice" then
      icebar = mana.Value
    else
      if Mode == "Acid" then
        acidbar = mana.Value
      end
    end
  end
  mana.Value = 0
  Mode = "None"
  for i = 0, 1, 0.2 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, -0.2) * euler(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.2) * euler(0.2, 0, -0.4) * euler(0, 1.3, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.1) * euler(0.1, 0, 0.2) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.2, 0) * euler(0, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0) * euler(0, 0, 0.1), 0.3)
  end
  so("unsheath", prt18, 0.8, 1)
  for i = 0, 1, 0.15 do
    swait()
    if i <= 0.4 then
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(0.5, 0, 0.8) * euler(0, 1.5, 0), 0.3)
    else
      if i > 0.4 and i <= 1 then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0.1, 0.8, 0.8), 0.4)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, -1.2, 0) * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, 0) * euler(0, 0, 0.1) * euler(0, 2.2, 0), 0.4)
      end
    end
    shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1.2, 1, -0.2), 0.3)
    swld1.C0 = clerp(swld1.C0, cf(0, -0.2, 0.1) * euler(0.7, 0, 0) * euler(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.2), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.1) * euler(0.2, 0, 0.3) * euler(0, -0.5, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.2, 0) * euler(0, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0) * euler(0, 0, 0.1), 0.3)
  end
  handlewld.Part1 = sprt1
  handlewld.C0 = euler(0, 0, 0) * cf(0, 3.5, 0)
  wld1.C0 = cf(0, 0, 0) * euler(0, 0, 0)
  fenbarmove1b.BackgroundColor3 = BrickColor.new(NewCol4).Color
  fenbarmove2b.BackgroundColor3 = BrickColor.new(NewCol4).Color
  fenbarmove3b.BackgroundColor3 = BrickColor.new(NewCol4).Color
  fenbarmove4b.BackgroundColor3 = BrickColor.new(NewCol4).Color
  fenbarammo1.BackgroundColor3 = BrickColor.new(NewCol4).Color
  dec.Parent = nil
  attack = false
  for i = 0, 1, 0.1 do
    swait()
    if sprt5.Transparency < 0.8 then
      sprt5.Transparency = sprt5.Transparency + 0.1
    end
    if sprt7.Transparency < 0.8 then
      sprt7.Transparency = sprt7.Transparency + 0.1
    end
    if sprt9.Transparency < 0.8 then
      sprt9.Transparency = sprt9.Transparency + 0.1
    end
  end
  sprt5.Transparency = 0.8
  sprt7.Transparency = 0.8
  sprt9.Transparency = 0.8
end
UnSheath = function(SMode)
  attack = true
  eul1 = mr(-600)
  eul2 = mr(120)
  col = FirCol
  modd = "Fire"
  part1 = sprt5
  if SMode == "Ice" then
    eul1 = mr(-720)
    eul2 = mr(0)
    col = IceCol
    modd = "Ice"
    part1 = sprt7
  else
    if SMode == "Acid" then
      eul1 = mr(-480)
      eul2 = mr(240)
      col = AcdCol
      modd = "Acid"
      part1 = sprt9
    end
  end
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 0.6
  game:GetService("Debris"):AddItem(dec, 10)
  local dec2 = Instance.new("NumberValue", Decrease)
  dec2.Name = "DecreaseDef"
  dec2.Value = 0.2
  game:GetService("Debris"):AddItem(dec2, 10)
  manucancel = false
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 2.3, 0), 0.4)
    shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1, 1.2, -0.2), 0.4)
    swld1.C0 = clerp(swld1.C0, cf(0, 0.2, 0.1) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(0.5, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.3), 0.4)
    RW.C0 = clerp(RW.C0, cf(0.6, 0.4, -0.8) * euler(1, 0, -0.6) * euler(0, 2.8, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.1) * euler(0.6, 0, 0.5), 0.4)
    so("28445431", sprt14, 1, 21)
    swld14.C0 = swld14.C0 * euler(0, 0.4, 0)
  end
  swld14.C0 = euler(0, eul2, 0)
  fenbarmove1b.BackgroundColor3 = BrickColor.new(col).Color
  fenbarmove2b.BackgroundColor3 = BrickColor.new(col).Color
  fenbarmove3b.BackgroundColor3 = BrickColor.new(col).Color
  fenbarmove4b.BackgroundColor3 = BrickColor.new(col).Color
  fenbarammo1.BackgroundColor3 = BrickColor.new(col).Color
  Mode = modd
  if Mode == "Fire" then
    mana.Value = firebar
  else
    if Mode == "Ice" then
      mana.Value = icebar
    else
      if Mode == "Acid" then
        mana.Value = acidbar
      end
    end
  end
  for i = 1, 0.2, -0.3 do
    swait()
    part1.Transparency = i
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 3.5, 0), 0.4)
    shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1.2, 1.2, -0.2), 0.4)
    swld1.C0 = clerp(swld1.C0, cf(0, -0.2, 0.1) * euler(0.5, 0, 0) * euler(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.4)
    RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -1) * euler(1.2, 0, -0.1) * euler(0, 2.8, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, -0.1) * euler(0.3, 0, 0.4) * euler(0, -0.5, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0.1), 0.4)
  end
  dec.Parent = nil
  dec2.Parent = nil
  part1.Transparency = 0
  handlewld.Part1 = RightArm
  handlewld.C0 = euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0)
  wld1.C0 = cf(0, 0, 0) * euler(0.35, 0, 0) * euler(0, 0, 0.6)
  so("320557563", prt18, 1, 1)
  if modd == "Fire" then
    so("199144647", prt18, 1, 1.1)
  else
    if modd == "Ice" then
      so("199146109", prt18, 0.6, 1.2)
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Anchored = true
  hitbox.Size = vt(1, 1, 1)
  hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
  ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt(1.3, 6, 1.3))
  ref.Anchored = true
  ref.CFrame = hitbox.CFrame
  game:GetService("Debris"):AddItem(ref, 5)
  parti2 = parti:Clone()
  parti2.Parent = ref
  parti2.Enabled = true
  parti2.Acceleration = vt(math.random(-800, 800) / 100, math.random(500, 800) / 100, math.random(-800, 800) / 100)
  if modd ~= "Fire" then
    parti2.Parent = nil
  end
  for i = 0, 1, 0.1 do
    swait()
    ref.CFrame = prt18.CFrame * cf(0, 1.5, 0)
    hitbox.CFrame = prt18.CFrame * cf(0, 0, 0)
    if modd == "Ice" then
      shattersord = true
    end
    MagniDamage(hitbox, 5, 5, 7, math.random(5, 8), "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    shattersord = false
    shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1, 1.2, -0.2), 0.3)
    swld1.C0 = clerp(swld1.C0, cf(0, -0.2, 0.1) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.3)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, -1) * euler(0, 0, 0), 0.4)
    if i < 0.2 then
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.1, 0.5, -0.4) * euler(1.7, 0, 0.8) * euler(0, 2, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.2) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0.1), 0.4)
    else
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.2), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, 1.2) * euler(0, 1.6, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.2) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.2, 0) * euler(0, 0, 0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0) * euler(0, 0, 0.1), 0.4)
    end
  end
  shattersord = false
  parti2.Enabled = false
  hitbox.Parent = nil
  for i = 0, 1, 0.2 do
    swait()
    shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1, 1.2, -0.2), 0.3)
    swld1.C0 = clerp(swld1.C0, cf(0, -0.2, 0.1) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.3)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, -1) * euler(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.2), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, 1.2) * euler(0, 1.6, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.2) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.2, 0) * euler(0, 0, 0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0) * euler(0, 0, 0.1), 0.4)
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
  if Mode == "None" then
    UnSheath("Fire")
    return 
  end
  attack = true
  cooldowns[1] = 0
  attack = false
end
do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if Mode == "None" then
    UnSheath("Ice")
    return 
  end
  attack = true
  cooldowns[2] = 0
  attack = false
end
do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if Mode == "None" then
    UnSheath("Acid")
    return 
  end
  attack = true
  cooldowns[3] = 0
  attack = false
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
findNearestTorso = function(pos, distance)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = distance
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    canfind = true
    -- DECOMPILER ERROR at PC36: Unhandled construct in 'MakeBoolean' P1

    if game.Players:GetPlayerFromCharacter(temp2) ~= nil and game.Players:GetPlayerFromCharacter(temp2).TeamColor == Player.TeamColor and Player.Neutral == false then
      canfind = false
    end
    canfind = true
    if temp2.className == "Model" and temp2 ~= Character and canfind == true then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and temp.Position - pos.magnitude < dist then
        torso = temp
        dist = temp.Position - pos.magnitude
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
      table.insert(Effects, {effectsg, "Cylinder", 0.05, 0.2, 0, 0.2, effectsmsh})
    else
      table.insert(Effects, {effectsg, "Cylinder", 0.2, 0.01, 0, 0.01, effectsmsh})
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
    w1.Name = "Triangle"
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
      w2.Name = "Triangle"
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
MagicSpecial = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "24388358", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicIcicle = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
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
    game:GetService("Debris"):AddItem(freezepart, 4)
  end
  table.insert(Effects, {prt, "Ice", delay, msh, 1, 0.5})
end
BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  game:GetService("Debris"):AddItem(prt, 10)
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
Lightning = function(p0, p1, tym, ofs, col, th, tra, last)
  local magz = p0 - p1.magnitude
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
      local magz2 = curpos - p1.magnitude
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
  if hit.Name == "Hitbox" and hit.Parent ~= modelzorz and ranged ~= true then
    ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
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
    if hit.Parent:findFirstChild("DebounceHit") ~= nil then
      return 
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
    local EStats = hit.Parent:findFirstChild("Stats")
    if EStats ~= nil then
      invis = EStats:findFirstChild("Invisibility")
      isinvis = EStats:findFirstChild("IsInvisible")
      if (ranged == false or ranged == nil) and invis ~= nil and isinvis.Value == true then
        invis.Value = 0
      end
      enblock = EStats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if EStats:findFirstChild("Defense") ~= nil then
        Damage = Damage / EStats.Defense.Value
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
      if EStats:findFirstChild("Stun") ~= nil then
        if blocked == true then
          incstun = incstun / 2
        end
        if EStats.Stun.Value < EStats.StunThreshold.Value then
          EStats.Stun.Value = EStats.Stun.Value + incstun
        end
      end
      if EStats:findFirstChild("Stagger") ~= nil and stagger == true then
        EStats.Stagger.Value = true
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
  end
), h, Damage)
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
      if Type == "NormalDecreaseMvmt1" then
        DecreaseStat(hit.Parent, "Movement", 0.1, 200)
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
showDamage = function(Char, Dealt, Type, poison)
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
  if poison == true then
    damgui.TextColor3 = BrickColor.new("Lime green").Color
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
  manucancel = true
  if attack == true or equipped == false or Mode == "None" then
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
          if Mode == "Ice" and mana.Value < 5 then
            combo = 1
            attackone()
            return 
          end
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
  if key == "r" then
    firebar = 0
    icebar = 0
    acidbar = 0
  end
  if key == "q" then
    print(#Poisoned)
    for i = 1, #Poisoned do
      print(Poisoned[i][1].Parent.Name .. "\'s poison: " .. tostring(Poisoned[i][3]))
    end
  end
    if key == "e" then
      Uncharge()
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
print("Dominus loaded.")
local mananum = 0
local mnummax = 5
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local walk = 0
local walkforw = true
local fparent = 20
local fdo = true
local iparent = 20
local ido = true
local aparent = 20
local ado = true
local barinc = 8
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
    if Mode == "Fire" then
      prt23.BrickColor = BrickColor.new(FirCol)
      prt24.BrickColor = BrickColor.new(FirCol)
      if 0 < prt23.Transparency then
        prt23.Transparency = prt23.Transparency - 0.1
      end
      if 0 < prt24.Transparency then
        prt24.Transparency = prt24.Transparency - 0.1
      end
      if fparent ~= 20 then
        fsword.Parent = modelzorz
        for i = 1, #FWeapon do
          FWeapon[i].Parent = fsword
        end
        for i = 1, #FWelds do
          FWelds[i].Parent = eleref
        end
      end
        fparent = 20
        fdo = true
        for i = 1, #FWeapon do
          FWeapon[i].Parent = fsword
          transp = FWeapon[i].MainTransparency.Value
          if transp < FWeapon[i].Transparency and 50 <= mana.Value then
            FWeapon[i].Transparency = FWeapon[i].Transparency - 0.05
          end
        end
          if Mode == "Ice" then
            prt23.BrickColor = BrickColor.new(IceCol)
            prt24.BrickColor = BrickColor.new(IceCol)
            if 0 < prt23.Transparency then
              prt23.Transparency = prt23.Transparency - 0.1
            end
            if 0 < prt24.Transparency then
              prt24.Transparency = prt24.Transparency - 0.1
            end
            if iparent ~= 20 then
              isword.Parent = modelzorz
              for i = 1, #IWeapon do
                IWeapon[i].Parent = isword
              end
              for i = 1, #IWelds do
                IWelds[i].Parent = eleref
              end
            end
              iparent = 20
              ido = true
              for i = 1, #IWeapon do
                IWeapon[i].Parent = fsword
                transp = IWeapon[i].MainTransparency.Value
                if transp < IWeapon[i].Transparency and 50 <= mana.Value then
                  IWeapon[i].Transparency = IWeapon[i].Transparency - 0.05
                end
              end
                if Mode == "Acid" then
                  prt23.BrickColor = BrickColor.new(AcdCol)
                  prt24.BrickColor = BrickColor.new(AcdCol)
                  if 0 < prt23.Transparency then
                    prt23.Transparency = prt23.Transparency - 0.1
                  end
                  if 0 < prt24.Transparency then
                    prt24.Transparency = prt24.Transparency - 0.1
                  end
                  if aparent ~= 20 then
                    asword.Parent = modelzorz
                    for i = 1, #AWeapon do
                      AWeapon[i].Parent = asword
                    end
                    for i = 1, #AWelds do
                      AWelds[i].Parent = eleref
                    end
                  end
                    aparent = 20
                    ado = true
                    for i = 1, #AWeapon do
                      AWeapon[i].Parent = asword
                      transp = AWeapon[i].MainTransparency.Value
                      if transp < AWeapon[i].Transparency and 50 <= mana.Value then
                        AWeapon[i].Transparency = AWeapon[i].Transparency - 0.05
                      end
                    end
                      if Mode == "None" then
                        if prt23.Transparency < 1 then
                          prt23.Transparency = prt23.Transparency + 0.05
                        end
                        if prt24.Transparency < 1 then
                          prt24.Transparency = prt24.Transparency + 0.05
                        end
                        fparent = fparent - 1
                        if fdo == true then
                          if 0 <= fparent then
                            for i = 1, #FWeapon do
                              if FWeapon[i].Transparency < 1 then
                                FWeapon[i].Transparency = FWeapon[i].Transparency + 0.05
                              end
                            end
                          else
                              fdo = false
                              for i = 1, #FWeapon do
                                FWeapon[i].Parent = nil
                              end
                                iparent = iparent - 1
                                if ido == true then
                                  if 0 <= iparent then
                                    for i = 1, #IWeapon do
                                      if IWeapon[i].Transparency < 1 then
                                        IWeapon[i].Transparency = IWeapon[i].Transparency + 0.05
                                      end
                                    end
                                  else
                                      ido = false
                                      for i = 1, #IWeapon do
                                        IWeapon[i].Parent = nil
                                      end
                                        aparent = aparent - 1
                                        if ado == true then
                                          if 0 <= aparent then
                                            for i = 1, #AWeapon do
                                              if AWeapon[i].Transparency < 1 then
                                                AWeapon[i].Transparency = AWeapon[i].Transparency + 0.05
                                              end
                                            end
                                          else
                                              ado = false
                                              for i = 1, #AWeapon do
                                                AWeapon[i].Parent = nil
                                              end
                                                numd = 20 / mana.Value - 0.2
                                                if mana.Value < 10 then
                                                  numd = 1
                                                end
                                                if mana.Value <= 50 then
                                                  maintable = FWeapon
                                                  if Mode == "Ice" then
                                                    maintable = IWeapon
                                                  else
                                                    if Mode == "Acid" then
                                                      maintable = AWeapon
                                                    end
                                                  end
                                                  for i = 1, #maintable do
                                                    transp = maintable[i].MainTransparency.Value
                                                    if transp + numd < maintable[i].Transparency then
                                                      maintable[i].Transparency = maintable[i].Transparency - 0.05
                                                    else
                                                      if maintable[i].Transparency < transp + numd then
                                                        maintable[i].Transparency = maintable[i].Transparency + 0.05
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
    if Stagger.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
  if mode == "Unsheathed" then
    Stagger.Value = false
    Stun.Value = Stun.Value + math.random(4, 6)
    return 
  end
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
    local stunnum2 = 40
    if stunnum2 <= stunnum and (0 < Stun.Value) then
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
                                                      if Anim == "Walk" then
                                                        if walkforw == true then
                                                          if attack == false then
                                                            if Mode == "None" then
                                                              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
                                                              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                            else
                                                              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(-0.2, 0, 0), Mvmt.Value * 10 / 50)
                                                              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(1, 0, 0), Mvmt.Value * 10 / 50)
                                                              wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0), Mvmt.Value * 10 / 50)
                                                            end
                                                          else
                                                            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                          end
                                                          RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
                                                          LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
                                                        else
                                                          if attack == false then
                                                            if Mode == "None" then
                                                              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(1, 0, 0), Mvmt.Value * 10 / 50)
                                                              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                            else
                                                              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0.2, 0, 0), Mvmt.Value * 10 / 50)
                                                              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
                                                              wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0.2), Mvmt.Value * 10 / 50)
                                                            end
                                                          else
                                                            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                          end
                                                          RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
                                                          LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
                                                        end
                                                      else
                                                        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                        RH.C1 = clerp(RH.C1, RHC1, 0.2)
                                                        LH.C1 = clerp(LH.C1, LHC1, 0.2)
        end
      else
        RH.C1 = clerp(RH.C1, RHC1, 0.2)
        LH.C1 = clerp(LH.C1, LHC1, 0.2)
        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      end
if equipped == true then
      if 1 < RootPart.Velocity.y and hitfloor == nil then
                                                        Anim = "Jump"
                                                        if attack == false then
                                                          if Mode == "None" then
                                                            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 2.3, 0), 0.2)
                                                            shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1, 1.3, -0.2), 0.2)
                                                            swld1.C0 = clerp(swld1.C0, cf(0, -0.2, 0.1) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.2)
                                                            Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                                                            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                                                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                                                            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.2), 0.2)
                                                            LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.1) * euler(0.4, 0, 0.4), 0.2)
                                                            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                                            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                                          else
                                                            wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.2)
                                                            Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                                                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                                                            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.2), 0.2)
                                                            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.4), 0.2)
                                                            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                                            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                                          end
                                                        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
                                                          if attack == false then
                                                            if Mode == "None" then
                                                              handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 2.3, 0), 0.2)
                                                              shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1, 1.3, -0.2), 0.2)
                                                              swld1.C0 = clerp(swld1.C0, cf(0, -0.2, 0.1) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.2)
                                                              Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                                                              Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                                                              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                                                              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8), 0.2)
                                                              LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.1) * euler(0.4, 0, 0.4), 0.2)
                                                              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                                                              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                                                            else
                                                              wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.2)
                                                              Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                                                              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                                                              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.2)
                                                              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -1), 0.2)
                                                              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                                                              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                                                            end
                                                          end
        else
          if torvel < 1 and hitfloor ~= nil then
                                                            Anim = "Idle"
                                                            if attack == false then
                                                              if Mode == "None" then
                                                                handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 2.3, 0), 0.2)
                                                                shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-2, 0, 0) * cf(1, 1.2, -0.2), 0.2)
                                                                swld1.C0 = clerp(swld1.C0, cf(0, 0.2, 0.1) * euler(0.4, 0, 0) * euler(0, 0, 0), 0.2)
                                                                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.3) * euler(0.1, 0, 0), 0.2)
                                                                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.3), 0.2)
                                                                RW.C0 = clerp(RW.C0, cf(0.6, 0.4, -0.8) * euler(1, 0, -0.6) * euler(0, 2.8, 0), 0.2)
                                                                LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.1) * euler(0.4, 0, 0.5), 0.2)
                                                                RH.C0 = clerp(RH.C0, cf(1.1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.1), 0.2)
                                                                LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0.1), 0.2)
                                                              else
                                                                if Mode == "Fire" then
                                                                  handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.2)
                                                                  wld1.C0 = clerp(wld1.C0, cf(0, -0.1, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.2)
                                                                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.2)
                                                                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4), 0.2)
                                                                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8 - (donum) / 5, 0, 0.2 + (donum) / 5) * euler(0, 0.6, 0), 0.2)
                                                                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.1 + (donum) / 3, 0, -0.3 - (donum) / 3) * euler(0, 0, 0), 0.2)
                                                                  RH.C0 = clerp(RH.C0, cf(1, -0.95, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.4, 0) * euler(0, 0, 0.1), 0.2)
                                                                  LH.C0 = clerp(LH.C0, cf(-0.95, -0.85, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 0.1), 0.2)
                                                                else
                                                                  if Mode == "Ice" then
                                                                    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.2)
                                                                    wld1.C0 = clerp(wld1.C0, cf(0, -0.2, 0) * euler(0, 0, -0.2) * euler(0, 0, 0), 0.2)
                                                                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.15, 0, 0), 0.2)
                                                                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.2)
                                                                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2 - (donum) / 5, 0, 0.6 - (donum) / 5) * euler(0, -1, 0), 0.2)
                                                                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1 - (donum) / 3, 0, -0.4 + (donum) / 3) * euler(0, 0, 0), 0.2)
                                                                    RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, 0.1), 0.2)
                                                                    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.4, 0) * euler(0, 0, 0.1), 0.2)
                                                                  else
                                                                    if Mode == "Acid" then
                                                                      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.2)
                                                                      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 0, 0.2) * euler(0, 0, 0), 0.2)
                                                                      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0, 0, 0), 0.2)
                                                                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.2)
                                                                      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4 - (donum) / 5, 0, 0.8 + (donum) / 5) * euler(0, 1.2, 0), 0.2)
                                                                      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1 - (donum) / 3, 0, -0.2 - (donum) / 3) * euler(0, 0, 0), 0.2)
                                                                      RH.C0 = clerp(RH.C0, cf(1, -0.95, 0) * euler(0, 1.57, 0) * euler(-0.1, -0.2, 0) * euler(0, 0, -0.3), 0.2)
                                                                      LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0.4, 0) * euler(0, 0, -0.1), 0.2)
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
          else
            if 2 < torvel and hitfloor ~= nil then
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
                                                                if Mode == "None" then
                                                                  handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 2.3, 0), 0.2)
                                                                  shanwld.C0 = clerp(shanwld.C0, euler(0, -1.57, 0) * euler(-1.8, 0, 0) * cf(1, 1.2, -0.2), 0.2)
                                                                  swld1.C0 = clerp(swld1.C0, cf(0, -0.2, 0.1) * euler(-0.4, 0, 0) * euler(0, 0, 0), 0.2)
                                                                  Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                                                                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                                                                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.1) * euler(0, 0, 0), 0.2)
                                                                  LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.1) * euler(0.2, 0, -0.1) * euler(0, 0.5, 0), 0.2)
                                                                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                                                                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
                                                                else
                                                                  handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * euler(0, 0, -1.57) * cf(0, 1, 0), 0.2)
                                                                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.2)
                                                                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.2)
                                                                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.1) * euler(0, 0, 0), 0.2)
                                                                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.2)
                                                                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                                                                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
                                                                end
              end
            else
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
            if Thing[2] == "Sound" then
              if 1 <= Thing[4] and 0 < Thing[1].Pitch then
                Thing[4] = Thing[4] - 1
                Thing[1].Pitch = Thing[1].Pitch + Thing[3]
              else
                Thing[1].Volume = 0
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "PunchEf" then
              if 0 <= Thing[4] then
                Thing[4] = Thing[4] - 1
                Thing[3].ImageTransparency = Thing[3].ImageTransparency + 0.15
                Thing[1].Size = Thing[1].Size + UDim2.new(Thing[5], 0, Thing[5], 0)
              else
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "Shockwave" then
              if 0 <= Thing[3] then
                Thing[3] = Thing[3] - 2
                if Thing[3] % 10 == 0 then
                  Thing[5] = Thing[5] + 12
                  hitfloor2 = rayCast(Thing[1].Position, CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
                  if hitfloor2 ~= nil then
                    Thing[1].CFrame = cf(posfloor2)
                    MagicWave(hitfloor2.BrickColor, cf(posfloor2), 1, 1, 1, 1, 0.2, 1, 0.05)
                    MagicWave2(BrickColor.new(NewCol2), cf(posfloor2), 1, 1, 1, 1.2, 2, 1.2, 0.05)
                    MagniDamage(Thing[1], 10, 10, 14, math.random(15, 20), "Knockdown2", RootPart, 0.5, 1, (math.random(10, 12)), nil, true)
                    for i = 1, 4 do
                      cf2 = cf(posfloor2) * cf(math.random(-800, 800) / 100, 1, math.random(-800, 800) / 100)
                      Thing[1].CFrame = cf2
                      ghitfloor = rayCast(Thing[1].Position, CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
                      if ghitfloor ~= nil then
                        Col = ghitfloor.BrickColor
                        local groundpart = part(3, workspace, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
                        groundpart.Anchored = true
                        groundpart.Material = ghitfloor.Material
                        groundpart.CanCollide = true
                        groundpart.CFrame = cf(gposfloor) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                        game:GetService("Debris"):AddItem(groundpart, 5)
                      end
                    end
                    ref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                    ref2.Anchored = true
                    ref2.CFrame = Thing[4] * cf(0, 0, -Thing[5])
                    game:GetService("Debris"):AddItem(ref2, 1)
                    Thing[1].CFrame = ref2.CFrame * cf(0, 5, 0)
                    so("178452221", ref2, 0.6, 0.6)
                  end
                end
              else
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "CloneEf" and Thing[2] ~= "Sound" and Thing[2] ~= "PunchEf" and Thing[2] ~= "Shockwave" then
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
                                          else
                                            Part.Parent = nil
                                            table.remove(Effects, e)
                                          end
            end
          end
        end
      end
    end
                                                      if Mode == "Fire" then
                                                        fenbarmana2:TweenSize((UDim2.new(0.2, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
                                                      else
                                                        fenbarmana2:TweenSize((UDim2.new(0.2, 0, -4 * firebar / 100, 0)), nil, 1, 0.4, true)
                                                      end
                                                      if Mode == "Ice" then
                                                        fenbarmana2b:TweenSize((UDim2.new(0.2, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
                                                      else
                                                        fenbarmana2b:TweenSize((UDim2.new(0.2, 0, -4 * icebar / 100, 0)), nil, 1, 0.4, true)
                                                      end
                                                      if Mode == "Acid" then
                                                        fenbarmana2c:TweenSize((UDim2.new(0.2, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
                                                      else
                                                        fenbarmana2c:TweenSize((UDim2.new(0.2, 0, -4 * acidbar / 100, 0)), nil, 1, 0.4, true)
                                                      end
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
                                                      fenbarammo1.Text = "Element\n" .. mana.Value .. "/100"
                                                      if StunT.Value <= Stun.Value then
                                                        fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
                                                      else
                                                        fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
                                                      end
                                                      fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
                                                      barinc = barinc + 1
                                                      barincmax = 8
                                                      if Mode ~= "None" then
                                                        barincmax = 20
                                                      end
                                                      if barincmax < barinc then
                                                        barinc = 0
                                                        if Mode ~= "Fire" then
                                                          if firebar < 100 then
                                                            firebar = firebar + 1
                                                          else
                                                            firebar = 100
                                                          end
                                                        end
                                                        if Mode ~= "Ice" then
                                                          if icebar < 100 then
                                                            icebar = icebar + 1
                                                          else
                                                            icebar = 100
                                                          end
                                                        end
                                                        if Mode ~= "Acid" then
                                                          if acidbar < 100 then
                                                            acidbar = acidbar + 1
                                                          else
                                                            acidbar = 100
                                                          end
                                                        end
                                                      end
                                                      if mananum <= mnummax then
                                                        mananum = mananum + 1
                                                      else
                                                        mananum = 0
                                                        if Mode ~= "None" then
                                                          if 100 < mana.Value then
                                                            mana.Value = 100
                                                          end
                                                          if 0 < mana.Value then
                                                            mana.Value = mana.Value - 1
                                                          else
                                                            mana.Value = 0
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

