Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
--Face = Head.face
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
local invisible = false
local doing1 = false
local doing2 = false
local doing4 = false
local deathmark = false
local Marked = {}
local MarkedGUI = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local mtype = "Skull"
local move1 = "(Z)\nTerror"
local move2 = "(X)\nGash"
local move3 = "(C)\nTrauma"
local move4 = "(V)\nExecution"
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
local cooldownadd1 = 0.42
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.3
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.2
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 550.1
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
NewCol = Color3.new(0.5, 0, 0)
NewCol2 = Color3.new(0.5, 0, 0)
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
if Character:findFirstChild("Carnufico", true) ~= nil then
  Character:findFirstChild("Carnufico", true).Parent = nil
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
local invisnum = Instance.new("NumberValue")
invisnum.Name = "Invisibility"
invisnum.Parent = Stats
invisnum.Value = 100
local isinvis = Instance.new("BoolValue")
isinvis.Name = "IsInvisible"
isinvis.Parent = Stats
isinvis.Value = false
local passive = Instance.new("NumberValue", Decrease)
passive.Name = "DecreaseAtk"
passive.Value = 0
local passive2 = Instance.new("NumberValue", nil)
passive2.Name = "DecreaseDef"
passive2.Value = 0.2
local passive3 = Instance.new("NumberValue", nil)
passive3.Name = "DecreaseMvmt"
passive3.Value = -0.4
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
local tellbar = gui("TextLabel", fenframe5, "-Fixed and modded by kent911t, took a lot of effort, please don't take credit (+)\n-Renegade can use Invisibility at 70 (+)\n-If Renegade is invisible, then reaping stacks change to death stacks. Death stacks will only be used up if Renegade uses Terror (+)\n-If Terror is used while invisible, then Terror changes to a dash attack that will trigger death stacks that will deal x1.4 damage and debuff defense (+)\n-Execution changed such that no more initial dark field, but Renegade slowly winds up Carnufico for a wide ranged dashing execution slash (+/-)\n-Using combo attack while invisible removes invisibility but does an attack that dashes a short distance. If Renegade hits an enemy, then Renegade enters invisibility again, gains a bit of invisibility, and gains a short movement buff (+/-)\n-Instead of dealing double damage when an enemy has full stacks, Renegade will deal a damage debuff (+/-)\n-While invisible, Renegade no longer has movement buff (-)\n-Terror overall effectiveness decreased (-)\n-Renegade combo attack is slightly slower (-)", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
tellbar.Font = "Arial"
tellbar.TextScaled = true
tellbar.TextTransparency = 1
tellbar.TextStrokeTransparency = 1
tellbar.ZIndex = 2
local fnumb = 0
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarblock1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarblock2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Black").Color, UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarblock3 = gui("TextLabel", fenframe, "Invisibility(" .. invisnum.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
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
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new("Black").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
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
modelzorz.Name = "Carnufico"
local handle = part(3, modelzorz, 0, 0.5, BrickColor.new(NewCol), "Handle", vt())
local prt1 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol2), "Part01", vt())
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part02", vt())
local prt3 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Part03", vt())
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part04", vt())
local prt5 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part05", vt())
local prt6 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part06", vt())
local prt7 = part(3, modelzorz, 0.5, 0, BrickColor.new("Really black"), "Part07", vt())
local prt8 = part(3, modelzorz, 0.5, 0, BrickColor.new(NewCol), "Part07", vt())
local prt9 = part(3, modelzorz, 0.5, 0, BrickColor.new("Really black"), "Part09", vt())
local prt10 = part(3, modelzorz, 0.5, 0, BrickColor.new(NewCol), "Part10", vt())
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(2, 30, 2))
msh2 = mesh("SpecialMesh", prt2, "FileMesh", "4770583", vt(0, 0, 0), vt(1, 1, 1))
msh3 = mesh("CylinderMesh", prt3, "", "", vt(0, 0, 0), vt(3, 3, 3))
msh4 = mesh("SpecialMesh", prt4, "FileMesh", "15158080", vt(0, 0, 0), vt(1, 1, 1))
msh5 = mesh("SpecialMesh", prt5, "FileMesh", "15158080", vt(0, 0, 0), vt(1, 1, 1))
msh6 = mesh("SpecialMesh", prt6, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 1, 0.5))
msh7 = mesh("BlockMesh", prt7, "", "", vt(0, 0, 0), vt(1, 2, 2))
msh8 = mesh("BlockMesh", prt8, "", "", vt(0, 0, 0), vt(1, 1, 2))
msh9 = mesh("SpecialMesh", prt9, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 4))
msh10 = mesh("SpecialMesh", prt10, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 4))
local handlewld = weld(handle, handle, Torso, euler(-2, 1.57, 0) * cf(-1, -0.5, -0.6))
local wld1 = weld(prt1, prt1, handle, euler(0, 0, 0) * cf(0, 0, 0))
local wld2 = weld(prt1, prt2, prt1, euler(3.14, 0, 0) * cf(0, 3, 0))
local wld3 = weld(prt1, prt3, prt1, euler(0, 0, 0) * cf(0, -3.2, 0))
local wld4 = weld(prt1, prt4, prt3, euler(-1.57, 0, 1.57) * euler(0, -0.7, 0) * cf(-0.16, -0.2, -0.1))
local wld5 = weld(prt1, prt5, prt3, euler(-1.57, 0, -1.57) * euler(0, 0.7, 0) * cf(0.16, -0.2, -0.1))
local wld6 = weld(prt1, prt6, prt3, euler(0, 0, 0) * cf(0, -0.2, 0.1))
local wld7 = weld(prt1, prt7, prt6, euler(0, 0, 0) * cf(0, 0.2, 0.2))
local wld8 = weld(prt1, prt8, prt6, euler(0, 0, 0) * cf(0, -0.1, 0.2))
local wld9 = weld(prt1, prt9, prt7, euler(0, 0, 0) * cf(0, 0, 0.7))
local wld10 = weld(prt1, prt10, prt8, euler(0, 0, 0) * cf(0, -0.1, 0.7))
for i = 0, 2.355, 0.785 do
  local prt4 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part04", vt())
  msh4 = mesh("SpecialMesh", prt4, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 0.2, 0.2))
  local wld4 = weld(prt1, prt4, prt3, euler(0, i, 0) * cf(0, 0.6, 0))
end
oldprt = prt9
oldprt2 = prt10
cff = 0.1
eul = 0.02
siz = 0.99
for i = 1, 6 do
  local prt11 = part(3, modelzorz, 0.5, 0, BrickColor.new("Really black"), "Part11", vt())
  msh11 = mesh("SpecialMesh", prt11, "Wedge", "nil", vt(0, 0, 0), vt(siz, 2, 6))
  local wld11 = weld(prt1, prt11, oldprt, euler(0, 0, 0) * cf(0, 0, cff) * euler(eul, 0, 0))
  if i < 4 then
    num = 6
    if i == 3 then
      num = 6.8
    end
    local prt12 = part(3, modelzorz, 0.5, 0, BrickColor.new("Black"), "Part12", vt())
    msh12 = mesh("BlockMesh", prt12, "", "", vt(0, 0, 0), vt(siz / 2, 2, num))
    local wld12 = weld(prt1, prt12, prt11, euler(0, 0, 0) * cf(0, 0, cff) * euler(eul, 0, 0))
  end
  do
    do
      oldprt = prt11
      cff = 0.6
      eul = 0.15
      siz = siz - 0.1
      -- DECOMPILER ERROR at PC2070: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
oldprt2 = prt10
cff = 0.1
eul = 0.02
siz = 0.99
for i = 1, 7 do
  local prt13 = part(3, modelzorz, 0.5, 0, BrickColor.new(NewCol), "Part13", vt())
  msh13 = mesh("SpecialMesh", prt13, "Wedge", "nil", vt(0, 0, 0), vt(siz, 2, 6))
  local wld13 = weld(prt1, prt13, oldprt2, euler(0, 0, 0) * cf(0, 0, cff) * euler(eul, 0, 0))
  oldprt2 = prt13
  cff = 0.6
  eul = 0.14
  siz = siz - 0.1
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
  hbwld.Part1 = prt6
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Carnufico"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Renegade: Thanatos" then
  Bin.Name = "Carnufico"
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
    handlewld.C0 = clerp(handlewld.C0, euler(0, -1.57, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, -1.5, 0) * euler(0.2, 0, 0.4), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, -1.57, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, -1.5, 0) * euler(0.2, 0, 0.4), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(4, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  mdec2.Parent = nil
  handlewld.Part1 = Torso
  handlewld.C0 = euler(-2, 1.57, 0) * cf(-1, -0.5, -0.6)
  wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
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
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(4, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  mdec2.Parent = Decrease
  handlewld.Part1 = RightArm
  handlewld.C0 = euler(0, -1.57, 0) * cf(0, 1, 0)
  wld1.C0 = cf(0, -1.5, 0) * euler(0.2, 0, 0.4)
end
StaggerAnim = function()
  attack = true
  removeControl()
  if invisible == true then
    Clone(0.1)
  end
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
  if invisible == true then
    Clone(0.1)
  end
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
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(1.57, 0, 0), 0.3)
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
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(1.57, 0, 0), 0.3)
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
  gairost.maxTorque = Vector3.new(40, 0, 40)
  gairost.P = 20
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
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, -0.4, 0) * cf(0, -2, 0) * euler(1.8, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.4, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.4), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -0.5) * euler(0, 1.8, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.9, 0, -0.3) * euler(0, 1.57, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * euler(0, 1.57, 0) * euler(0, -1.4, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.5) * euler(0, -1.57, 0) * euler(0, -1.4, 0.3), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("92597369", prt6, 1, 0.6)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(3, 2, 7)
  hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.08 do
    swait()
    hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
    hitbox.CFrame = hitboxCF
if i == 0.16 then
MagniDamage(hitbox, 4, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
end
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.25)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, -2, 0) * euler(2.5, 0, 0), 0.25)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.25)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.25)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.4) * euler(0, 1.8, 0), 0.25)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1), 0.25)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.3), 0.25)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.25)
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
  for i = 0, 1, 0.15 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 1, 0) * euler(2.2, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 1), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.8, 0, 0.5) * euler(0, -1, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.4, 0, 0.8) * euler(0, -1, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.3), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("92597369", prt6, 1, 0.8)
  so("92597296", prt6, 1, 0.8)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 2, 7)
  hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.08 do
    swait()
    hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
if i == 0.32 then
    MagniDamage(hitbox, 4, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
end
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, -2, 0) * euler(2.2, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -1), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 0, -0.5) * euler(0, -0.5, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, 0.6) * euler(0, 1, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0.3), 0.4)
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
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -0.4, 0) * cf(0, -2, 0) * euler(1.8, 0, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.4, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.4), 0.5)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -0.5) * euler(0, 1.8, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.9, 0, -0.3) * euler(0.1, 57, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * euler(0, 1.57, 0) * euler(0, -1.4, -0.1), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.5) * euler(0, -1.57, 0) * euler(0, -1.4, 0.3), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("92597369", prt6, 1, 0.5)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 2, 7)
  hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.05 do
    swait()
    if i >= 0.7 and i <= 0.73 then
      so("92597369", prt6, 1, 0.5)
    end
    hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 4, 5, 8, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, -2, 0) * euler(2.5, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.4 - 9.28 * i)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.4) * euler(0, 1.8, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.3), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC552: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC552: LeaveBlock: unexpected jumping out IF_STMT

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
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0.8, 0) * cf(0, -2, 0) * euler(1.57, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 1.2, 0) * euler(3.6, 0, -0.8), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 1.2, 0) * euler(3.6, 0, 0.8), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("28144425", prt6, 1, 1)
  so("92597369", prt6, 1, 0.6)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 2, 7)
  hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0.8, 0) * cf(0, -2, 0) * euler(1.57, 0, 0), 0.3)
    hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
    hitbox.CFrame = hitboxCF
if i == 0.5 then
    MagniDamage(hitbox, 4, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(5, 8)), nil, true)
end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.4, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0.5, 0, -0.8), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(0.5, 0, 0.8), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.3), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.7), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC514: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC514: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
InvisSlash = function()
  attack = true
  islash = true
  for i = 0, 1, 0.15 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, -0.4, 0) * cf(0, 1, 0) * euler(2.4, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 1), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.8, 0, 0.5) * euler(0, -1, 0) * euler(0, 0.8, 1.4), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-0.6, 0.5, -0.8) * euler(2.4, 0, 0.8) * euler(0, -1, 0) * euler(0, 0, 0.8), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.3), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
    if Stagger.Value ~= true then
      do
        if StunT.Value <= Stun.Value then
          break
        end
        -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  RecentEnemy.Value = nil
  so("92597369", prt6, 1, 0.8)
  so("92597296", prt6, 1, 0.8)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 2, 7)
  hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 1, 0, -0.08 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 150 * i
    end
    hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
    MagniDamage(hitbox, 7, 5, 7, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(5, 7)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 1, 0) * euler(2, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -1), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 2), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.8, 0, 0.5) * euler(0, -1, 0) * euler(0, 0.6, 1.4) * euler(-1, 0.4, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.4, 0, 0.4) * euler(0, -1, 0) * euler(0, 0, 1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0.3), 0.4)
    if Stagger.Value ~= true then
      do
        if StunT.Value <= Stun.Value then
          break
        end
        -- DECOMPILER ERROR at PC596: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC596: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  if RecentEnemy.Value ~= nil then
    Invisibility()
    invisnum.Value = invisnum.Value + 30
    for _,c in pairs(Decrease:children()) do
      if c.Name == "DecreaseMvmt" and c:findFirstChild("Renegade") ~= nil then
        c.Parent = nil
      end
    end
    d = Instance.new("NumberValue", Decrease)
    d.Name = "DecreaseMvmt"
    d.Value = -0.5
    dur = Instance.new("NumberValue", d)
    dur.Name = "Duration"
    dur.Value = 100
    display = "+Movement"
    da = Instance.new("BoolValue", d)
    da.Name = "Renegade"
  else
    invisnum.Value = invisnum.Value - 20
  end
  StaggerHit.Value = false
  islash = false
  attack = false
end
Invisibility = function()
  if invisible == false then
    invisnum.Value = invisnum.Value - 20
    invisible = true
    isinvis.Value = true
    Cloak()
    passive2.Parent = Decrease
  else
    invisible = false
    isinvis.Value = false
    UnCloak()
    passive2.Parent = nil
  end
end
do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 7 then
    attack = true
    cooldowns[1] = 0
    doing1 = true
    local doinvisatk = false
    if invisible == true then
      doinvisatk = true
    end
    if doinvisatk == false then
      for i = 0, 1, 0.1 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(1.57, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 1.5, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1.57, -0.3), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1.57, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      --[[if Stagger.Value ~= true and StunT.Value > Stun.Value then
        if StaggerHit.Value == true then--]]
          mana.Value = mana.Value - 7
          CF = LeftArm.CFrame * cf(0, -2, 0)
          ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          ref.CFrame = CF
          game:GetService("Debris"):AddItem(ref, 2)
          so("160772554", ref, 1, 1)
          hbwld.Parent = nil
          hboxpos.Parent = hitbox
          hitbox.Parent = modelzorz
          hitbox.Size = vt(2, 2, 2)
          MagicSkull(BrickColor.new("Black"), CF * euler(-1.57, 0, 0), 1, 1, 1, 1, 1, 1, 0.05, 0.1)
          MagicCylinder2(BrickColor.new("Really black"), CF, 5, 5, 5, 2, -0.05, 2, 0.02, 0.1)
          hitboxCF = CF
          hitbox.CFrame = hitboxCF
          for i = 0, 1, 0.05 do
            swait()
            MagicBlock(BrickColor.new("Really black"), CF, 0.5, 0.5, 0.5, 0.2, 0.2, 0.2, 0.05, 3)
            CF = CF * cf(0, -0.4, 0)
            hitboxCF = CF
            hitbox.CFrame = hitboxCF
            hitbox.Size = hitbox.Size + vt(0.6, 0.6, 0.6)
if i == 0.6 then
            MagniDamage(hitbox, hitbox.Size.Y, 7, 10, math.random(10, 20), "Knockdown2", ref, 1, 2, (math.random(5, 8)), nil, false, true, "Movement", 0.4, 200)
end
end
          hitbox.Parent = modelzorz
          hitbox.Size = vt()
          hitboxweld()
          hboxpos.Parent = nil
attack = false
elseif doinvisatk == true then
          for i = 0, 1, 0.1 do
            swait()
            for i = 1, 2 do
              MagicBlock(BrickColor.new("Really black"), cf(RootPart.Position), 0.5, 0.5, 0.5, 0.2, 0.2, 0.2, 0.05, 3)
            end
            MagniDamage(RootPart, 4, 7, 10, math.random(10, 20), "Knockdown2", RootPart, 1, 2, (math.random(5, 8)), nil, false, true)
            MagicCylinder2(BrickColor.new("Really black"), RootPart.CFrame * euler(1.57, 0, 0), 8, 5, 8, 1, -0.05, 1, 0.04, 0.1)
            if Rooted.Value == false then
              Torso.Velocity = RootPart.CFrame.lookVector * 80
            end
            theCF = RootPart.CFrame * euler(1.57, 0, 0) * euler(math.random(-100, 100) / 100, 0, math.random(-100, 100) / 100) * cf(0, math.random(-400, -200) / 100, 0)
            ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
            ref.Anchored = true
            ref.CFrame = theCF
            game:GetService("Debris"):AddItem(ref, 1)
            so("160772554", ref, 0.4, 1.1)
            MagicSkull(BrickColor.new("Black"), theCF * euler(-1.57, 0, 0), 2, 2, 2, 1, 1, 1, 0.1, 0.1)
          end
          swait(10)
          doing1 = false
          attack = false
        end
      end
    end
  --[[end
end--]]
do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 25 then
    attack = true
    cooldowns[2] = 0
    doing2 = true
    local doinvisatk = false
    if invisible == true then
      doinvisatk = true
      Invisibility()
    end
    for i = 0, 1, 0.2 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.5)
      wld1.C0 = clerp(wld1.C0, euler(0, -0.4, 0) * cf(0, 0, 0) * euler(1.8, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.4, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -0.5) * euler(0, 1.8, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.9, 0, -0.3) * euler(0.1, 57, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * euler(0, 1.57, 0) * euler(0, -1.4, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.5) * euler(0, -1.57, 0) * euler(0, -1.4, 0.3), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    mana.Value = mana.Value - 25
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(1, 5, 7)
    hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
    hitbox.CFrame = hitboxCF
    blcf = nil
    scfr = nil
    so("28144425", prt6, 1, 1)
    for i = 0, 1, 0.02 do
      swait()
      if (i >= 0.2 and i <= 0.23) or i < 0.5 or i >= 0.8 and i <= 0.81 then
        so("28144425", prt6, 1, 1)
      end
      hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 4, 5, 9, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(3, 6)), nil, nil--[[true]], false, nil, nil, nil, true, true)
      MagicBlock(BrickColor.new("Really red"), cf(hitbox.Position), 1, 1, 1, 1, 1, 1, 0.1, 1)
      MagicBlock(BrickColor.new("Really black"), cf(hitbox.Position), 0.5, 0.5, 0.5, 0.2, 0.2, 0.2, 0.05, 3)
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(2.5, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.4 - 21 * i)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.4) * euler(0, 1.8, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.3), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      Stagger.Value = false
      StaggerHit.Value = false
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      doing2 = false
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
  if cooldownmax <= cooldowns[3] and mana.Value >= 30 then
    attack = true
    cooldowns[3] = 0
    local doinvisatk = false
    if invisible == true then
      doinvisatk = true
      Invisibility()
    end
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 0.8, 0) * cf(0, -2, 0) * euler(1.57, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 1.2, 0) * euler(3.6, 0, -0.8), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 1.2, 0) * euler(3.6, 0, 0.8), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -0.2), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    so("92597369", prt6, 0.6, 1)
    blcf = nil
    scfr = nil
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 0.8, 0) * cf(0, -2, 0) * euler(1.57, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.4, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0.5, 0, -0.8), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(0.5, 0, 0.8), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.3), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.7), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    attack = false
  --[[end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
    if StaggerHit.Value == true then--]]
      CF = RootPart.CFrame * cf(0, 0, -30)
      ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref2.Anchored = true
      ref2.CFrame = CF
      game:GetService("Debris"):AddItem(ref2, 5)
      so("161006069", ref2, 1, 0.5)
      hitfloor2, posfloor2 = rayCast(ref2.Position, CFrame.new(ref2.Position, ref2.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
      if hitfloor2 ~= nil then
        mana.Value = mana.Value - 30
        ref2.CFrame = cf(posfloor2)
        MagicCircle(BrickColor.new("Really black"), cf(posfloor2), 200, 1, 200, 0, 0, 0, 0.05)
        for i = 0, 1, 0.05 do
          swait()
          MagicBlock(BrickColor.new("Bright red"), cf(posfloor2) * cf(math.random(-2000, 2000) / 100, math.random(0, 300) / 100, math.random(-2000, 2000) / 100), 15, 15, 15, -3, -3, -3, 0.1, 1)
          MagicBlock(BrickColor.new("Black"), cf(posfloor2) * cf(math.random(-2000, 2000) / 100, math.random(0, 300) / 100, math.random(-2000, 2000) / 100), 3, 3, 3, 1, 1, 1, 0.1, 3)
        end
        so("161006069", ref2, 1, 1)
        if doinvisatk == false then
          MagniDamage(ref2, 20, 5, 15, math.random(-50, -30), "Knockdown2", RootPart, 0, 1, (math.random(5, 10)), nil, nil, true)
        else
          MagniDamage(ref2, 20, 5, 15, math.random(-50, -30), "Knockdown2", RootPart, 0, 1, (math.random(5, 10)), nil, nil, true, "Movement", 0.2, 200, ignoredef, fixeddam)
        end
        MagicBlock(BrickColor.new("Bright red"), cf(posfloor2), 200, 200, 200, -10, -10, -10, 0.05, 1)
        MagicCircle(BrickColor.new("Really black"), cf(posfloor2), 200, 1, 200, 10, 0, 10, 0.05)
      end
    end
end
  --end
--end
do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and mana.Value >= 50 then
    attack = true
    cooldowns[4] = 0
    if invisible == true then
      Invisibility()
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    doing4 = true
    Humanoid.AutoRotate = false
    local de = 11
    for i = 0, 13, 0.6 do
      swait()
      de = de + 1
      if (de) % 12 == 0 then
        so("92597369", prt6, 1, 0.6)
        so("92597296", prt6, 1, 0.8)
      end
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 1, 0) * euler(1.57, 0, 0) * euler(0, i, 0) * euler(0.8, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 1), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1.2) * euler(0, -1, 0) * euler(0, 0, 0), 0.1)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-0.6, 0.5, -0.8) * euler(1.5, 0, 0.8) * euler(0, -1, 0) * euler(0, 0, 0.8), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.3), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
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
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, -0.4, 0) * cf(0, 1, 0) * euler(2.4, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 1), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.8, 0, 0.5) * euler(0, -1, 0) * euler(0, 0.8, 0.6), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-0.4, 0.5, -0.8) * euler(2.4, 0, 0.8) * euler(0, -1, 0) * euler(0, 0.6, 0.8) * euler(-0.2, 0, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.3), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    mana.Value = mana.Value - 50
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(1, 2, 7)
    hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
    hitbox.CFrame = hitboxCF
    so("28144425", prt6, 1, 0.6)
    local da = 0
    for i = 1, 0, -0.08 do
      swait()
      da = da + 1
      if da == 5 then
        MagicCircle(BrickColor.new("Really red"), hitbox2.CFrame * euler(-0.6, 0, 0), 5, 5, 5, -0.05, 10, -0.05, 0.01)
      end
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * 200 * i
      end
      if da <= 5 then
        hitboxCF = prt6.CFrame * euler(-0.3, 0, 0) * cf(0, 0, -2.2)
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 6, 20, 20, math.random(30, 50), "Knockdown2", RootPart, 1, 1, (math.random(30, 40)), nil, nil, false, nil, nil, nil, true, true)
	  end
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.25)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 1, 0) * euler(2, 0, 0), 0.25)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -1), 0.25)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 2), 0.25)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.8, 0, 0.5) * euler(0, -1, 0) * euler(0, 0.6, 1.4) * euler(-1, 0.4, 0), 0.25)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.4, 0, 0.4) * euler(0, -1, 0) * euler(0, 0, 1), 0.25)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
      RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.25)
      LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0.3), 0.25)
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
    swait(50)
    Humanoid.AutoRotate = true
    dec.Parent = nil
    doing4 = false
    attack = false
  end
end
DecreaseStat = function(Model, Stat, Amount, Duration, cangui)
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
      if cangui ~= true then
        showDamage(Model, display, "Debuff")
      end
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
          if d.className == "Part" and d.Name=="Torso" then
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
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0})
      end
    end
  end
end
MagicSkull = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "4770583", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Skull", delay, x3, y3, z3, msh, goe})
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
MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder2", delay, x3, y3, z3, msh, goe})
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
CloneBody = function()
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local c = part(3, workspace, 0, 0.5, BrickColor.new("Really black"), "Effect", v.Size)
      c.Anchored = true
      c.CFrame = v.CFrame
      game:GetService("Debris"):AddItem(c, 5)
      if v.Name == "Head" then
        cmsh = mesh("SpecialMesh", c, "Head", "nil", vt(0, 0, 0), v.Mesh.Scale)
      end
      table.insert(Effects, {c, "Disappear", 0.05})
    end
  end
end
Clone = function(duration)
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local c = part(3, workspace, 0, 0, BrickColor.new("Really black"), "Effect", v.Size)
      c.Anchored = true
      c.CFrame = v.CFrame
      game:GetService("Debris"):AddItem(c, 5)
      if v.Name == "Head" then
        cmsh = mesh("SpecialMesh", c, "Head", "nil", vt(0, 0, 0), v.Mesh.Scale)
      end
      table.insert(Effects, {c, "Disappear", duration})
    else
      do
        do
          if v.className == "Hat" then
            n = v.Handle:clone()
            n:BreakJoints()
            n.archivable = true
            n.Anchored = true
            n.CanCollide = false
            n.Name = "Effect"
            n.BrickColor = BrickColor.new("Really black")
            n.Parent = workspace
            n.CFrame = v.Handle.CFrame
            n.Transparency = 0
            n:BreakJoints()
            table.insert(Effects, {n, "Disappear", duration})
          end
        end
      end
    end
  end
--[[for _,v in pairs(LeftArm.LeftArm:children()) do
	coroutine.resume(coroutine.create(function()
		if v.Size ~= Vector3.new(0.200000003, 0.200000048, 0.599999964) and v.Size ~= Vector3.new(0.200000003, 0.200000048, 0.399999976) then
    n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
end
  end))
end
for _,v in pairs(RightArm.RightArm:children()) do
	coroutine.resume(coroutine.create(function()
    n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
  end))
end
for _,v in pairs(Torso.Torso:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
end
  end))
end
for _,v in pairs(Torso.Amulet:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
end
  end))
end
for _,v in pairs(Head:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
end
  end))
end
for _,v in pairs(Torso.Cloak:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" or v.ClassName=="WedgePart" then
    n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
end
  end))
end
for _,v in pairs(Character["Left Leg"].LeftLeg:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
			n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
    end
  end))
end
for _,v in pairs(Character["Right Leg"].RightLeg:children()) do
	coroutine.resume(coroutine.create(function()
if v.ClassName=="Part" then
    n = v:clone()
for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
end
  end))
	end--]]
  for _,v in pairs(modelzorz:children()) do
    if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" then
      n = v:clone()
      for _,b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {n, "Disappear", duration})
    end
  end
end
Cloak = function()
  so("2767090", Torso, 1, 1)
  --Face.Parent = nil
  Clone(0.06)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
     swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    for i = 0, 1, 0.2 do
      swait()
      derp.Transparency = derp.Transparency + 0.2
    end
    derp.Transparency = 1
  end), hatp)
          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
for _,v in pairs(LeftArm.LeftArm:children()) do
	coroutine.resume(coroutine.create(function()
		if v.Size ~= Vector3.new(0.200000003, 0.200000048, 0.599999964) and v.Size ~= Vector3.new(0.200000003, 0.200000048, 0.399999976) then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
end
  end))
end
for _,v in pairs(RightArm.RightArm:children()) do
	coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
  end))
end
for _,v in pairs(Torso.Torso:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
end
  end))
end
for _,v in pairs(Torso.Amulet:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
end
  end))
end
for _,v in pairs(Head:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
end
  end))
end
for _,v in pairs(Torso.Cloak:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" or v.ClassName=="WedgePart" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
end
  end))
end
for _,v in pairs(Character["Left Leg"].LeftLeg:children()) do
	coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
if v.ClassName=="Part" then
      v.Transparency = v.Transparency + 0.2
end
    end
    v.Transparency = 1
  end))
end
for _,v in pairs(Character["Right Leg"].RightLeg:children()) do
	coroutine.resume(coroutine.create(function()
if v.ClassName=="Part" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
end
    v.Transparency = 1
end
  end))
	end
  for _,v in pairs(modelzorz:children()) do
    if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency + 0.2
    end
    v.Transparency = 1
  end))
    end
  end
end
UnCloak = function()
  so("2767090", Torso, 1, 1.1)
  --Face.Parent = Head
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
    end
    v.Transparency = 0
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    for i = 0, 1, 0.2 do
      swait()
      derp.Transparency = derp.Transparency - 0.2
    end
    derp.Transparency = 0
  end), hatp)
        end
      end
    end
  end
for _,v in pairs(LeftArm.LeftArm:children()) do
	coroutine.resume(coroutine.create(function()
		if v.Size ~= Vector3.new(0.200000003, 0.200000048, 0.599999964) and v.Size ~= Vector3.new(0.200000003, 0.200000048, 0.399999976) then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
end
    v.Transparency = 0
end
  end))
end
for _,v in pairs(RightArm.RightArm:children()) do
	coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
    end
    v.Transparency = 0
  end))
end
for _,v in pairs(Torso.Torso:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
    end
    v.Transparency = 0
end
  end))
end
for _,v in pairs(Torso.Amulet:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" and v.Name ~= "Thingy" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
    end
    v.Transparency = 0
end
  end))
end
for _,v in pairs(Head:children()) do
	coroutine.resume(coroutine.create(function()
		if v.ClassName=="Part" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
    end
    v.Transparency = 0
end
  end))
end
for _,v in pairs(Torso.Cloak:children()) do
	coroutine.resume(coroutine.create(function()
		if v.Name ~= "Thingy" and v.ClassName=="Part" or v.ClassName=="WedgePart"  then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
    end
    v.Transparency = 0
end
  end))
end
for _,v in pairs(Character["Left Leg"].LeftLeg:children()) do
	coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
if v.ClassName=="Part" then
      v.Transparency = v.Transparency - 0.2
end
    end
    v.Transparency = 0
  end))
end
for _,v in pairs(Character["Right Leg"].RightLeg:children()) do
	coroutine.resume(coroutine.create(function()
if v.ClassName=="Part" then
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
end
    v.Transparency = 0
end
  end))
	end
  for _,v in pairs(modelzorz:children()) do
    if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      v.Transparency = v.Transparency - 0.2
    end
    for i = 0, 1, 0.3 do
      wait()
      v.Transparency = 0
    end
  end))
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
    if doing4 == false then
      minim = minim * Atk.Value
      maxim = maxim * Atk.Value
    end
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
    blocked = false
    enblock = nil
    Stats = hit.Parent:findFirstChild("Stats")
if Stats == nil then
	Character.Stats:Clone().Parent=hit.Parent
end
    if Stats ~= nil then
	Stats.Defense.Value=1
      invis = Stats:findFirstChild("Invisibility")
      if (ranged == false or ranged == nil) and invis ~= nil then
        invis.Value = 0
      end
      enblock = Stats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if Stats:findFirstChild("Defense") ~= nil then
        --if doing2 ~= true and doing4 ~= true then
          local divide = Stats.Defense.Value
          do
            do
              if hit.Parent:findFirstChild("Mark") ~= nil then
                local mark = hit.Parent.Mark
                if mark:findFirstChild("MarkValue") ~= nil and mark.MarkValue.Value > 4 and divide > 1 then
                  divide = 1
                end
              end
              Damage = Damage / divide
              Damage = Damage
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
				do
                Damage = math.floor(Damage)
                if h.Health <= 30 and doing4 == true then
                  Damage = 9999
                  h.Parent:BreakJoints()
                end
                if hit.Parent:findFirstChild("Mark") == nil then
                  d = it("BoolValue", hit.Parent)
                  d.Name = "Mark"
                  b = it("NumberValue", d)
                  b.Name = "MarkTime"
                  b.Value = 200
                  v = it("NumberValue", d)
                  v.Name = "MarkValue"
                  v.Value = 0
                  sz = it("NumberValue", d)
                  sz.Name = "MarkSize"
                  sz.Value = 5
                  st = it("StringValue", d)
                  st.Name = "MarkType"
                  st.Value = "Thanatos"
                  local tehpart = hit.Parent:findFirstChild("HumanoidRootPart")
                  if tehpart == nil then
                    tehpart = hit.Parent:findFirstChild("Torso")
                  end
                  if hit.Parent.Name == "Neflhelm" then
                    tehpart = hit
                  end
                  if tehpart ~= nil then
                    markgui = it("BillboardGui", tehpart)
                    markgui.Name = "Mark Gui"
                    markgui.Size = UDim2.new(7, 0, 7, 0)
                    markgui.StudsOffset = vt(0, 10, 0)
                    markgui.AlwaysOnTop = true
                    markscy = it("ImageLabel", markgui)
                    markscy.Name = "Scythe"
                    markscy.BackgroundTransparency = 1
                    markscy.Image = "rbxassetid://258857647"
                    markscy.ImageColor3 = Color3.new(1, 0, 0)
                    markscy.Size = UDim2.new(1, 0, 1, 0)
                    table.insert(MarkedGUI, {markgui, markscy})
                  end
                  table.insert(Marked, {d, b, v, sz})
                else
                    mark = hit.Parent:findFirstChild("Mark")
                    if mark:findFirstChild("MarkTime") ~= nil then
                      mark.MarkTime.Value = 500
                    end
                    if mark:findFirstChild("MarkValue") ~= nil then
                      if mark.MarkType.Value == "Thanatos" and mtype == "Death" and doing1 == true then
                        print("deeeth")
                        Damage = math.floor(Damage * 1.4)
                        mark.Parent = nil
                        teh = mark.MarkValue.Value * 0.03
                        DecreaseStat(hit.Parent, "Defense", teh, 300)
                      end
                      if mark.MarkValue.Value >= 10 then
                        if mark:findFirstChild("MarkTime") ~= nil then
                          mark.MarkTime.Value = 400
						end
                        if mark.MarkType.Value == "Classic" then
                          mark.Parent = nil
                          Damage = Damage * 2
                          print("double damage")
                          if hit.Parent:findFirstChild("HumanoidRootPart") ~= nil then
                            ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                            ref.Anchored = true
                            ref.CFrame = hit.Parent.HumanoidRootPart.CFrame
                            game:GetService("Debris"):AddItem(ref, 5)
                            local nr = NumberRange.new
                            local ns = NumberSequence.new
                            local cs = ColorSequence.new
                            local parti = it("ParticleEmitter")
                            parti.Color = cs(NewCol, Color3.new(0, 0, 0))
                            parti.LightEmission = 0
                            parti.Size = ns(10)
                            parti.Texture = "http://www.roblox.com/asset/?id=243660364"
                            transseq = ns({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
                            parti.Transparency = transseq
                            parti.ZOffset = 1
                            parti.Acceleration = vt(0, 0, 0)
                            parti.Lifetime = nr(1)
                            parti.Rate = 20
                            parti.Rotation = nr(0, 360)
                            parti.Speed = nr(0)
                            parti.VelocitySpread = 0
                            parti.Parent = ref
                            parti.Enabled = true
                            table.insert(Effects, {parti, "PartiEmi", 20})
                          end
                        elseif mark.MarkType.Value == "Adjudicator" and hit.Parent:findFirstChild("HumanoidRootPart") ~= nil then
                              da = math.random(1, 4)
                              if da == 1 then
                                DecreaseStat(Character, "Damage", -math.random(6, 10) / 100, 150, true)
                                DecreaseStat(Character, "Movement", -math.random(2, 6) / 100, 200, true)
                              elseif da == 2 then
                                  DecreaseStat(Character, "Defense", -math.random(2, 6) / 100, 150, true)
                                  DecreaseStat(Character, "Movement", -math.random(2, 6) / 100, 200, true)
                                elseif da == 3 then
                                    DecreaseStat(hit.Parent, "Damage", math.random(6, 10) / 100, 150, true)
                                    DecreaseStat(hit.Parent, "Movement", math.random(1, 3) / 100, 200, true)
                                  elseif da == 4 then
                                      DecreaseStat(hit.Parent, "Defense", math.random(2, 6) / 100, 150, true)
                                      DecreaseStat(hit.Parent, "Movement", math.random(1, 3) / 100, 200, true)
                                    end
                              ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                              ref.Anchored = true
                              ref.CFrame = hit.Parent.HumanoidRootPart.CFrame
                              game:GetService("Debris"):AddItem(ref, 5)
                              markgui = it("BillboardGui", ref)
                              markgui.Name = "Mark Gui"
                              markgui.Size = UDim2.new(7, 0, 7, 0)
                              markgui.StudsOffset = vt(0, 10, 0)
                              markgui.AlwaysOnTop = true
                              markscy = it("ImageLabel", markgui)
                              markscy.Name = "Scythe"
                              markscy.BackgroundTransparency = 1
                              markscy.Image = "rbxassetid://278007453"
                              markscy.ImageColor3 = Color3.new(1, 0, 0)
                              markscy.Size = UDim2.new(1, 0, 1, 0)
                              table.insert(Effects, {markgui, "AdjuEff", 10, markscy})
                            elseif mark.MarkType.Value == "Thanatos" then
                              print("rara")
                              if mtype == "Skull" then
                                mark.Parent = nil
                                DecreaseStat(hit.Parent, "Damage", 0.4, 400)
                                print("no moar damage")
                                if hit.Parent:findFirstChild("HumanoidRootPart") ~= nil then
                                  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                  ref.Anchored = true
                                  ref.CFrame = hit.Parent.HumanoidRootPart.CFrame
                                  game:GetService("Debris"):AddItem(ref, 5)
                                  local nr = NumberRange.new
                                  local ns = NumberSequence.new
                                  local cs = ColorSequence.new
                                  local parti = it("ParticleEmitter")
                                  parti.Color = cs(NewCol, Color3.new(0, 0, 0))
                                  parti.LightEmission = 0
                                  parti.Size = ns(10)
                                  parti.Texture = "http://www.roblox.com/asset/?id=243660364"
                                  transseq = ns({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
                                  parti.Transparency = transseq
                                  parti.ZOffset = 1
                                  parti.Acceleration = vt(0, 0, 0)
                                  parti.Lifetime = nr(1)
                                  parti.Rate = 20
                                  parti.Rotation = nr(0, 360)
                                  parti.Speed = nr(0)
                                  parti.VelocitySpread = 0
                                  parti.Parent = ref
                                  parti.Enabled = true
                                  table.insert(Effects, {parti, "PartiEmi", 20})
                                  markgui = it("BillboardGui", ref)
                                  markgui.Name = "Mark Gui"
                                  markgui.Size = UDim2.new(7, 0, 7, 0)
                                  markgui.StudsOffset = vt(0, 10, 0)
                                  markgui.AlwaysOnTop = true
                                  markscy = it("ImageLabel", markgui)
                                  markscy.Name = "Scythe"
                                  markscy.BackgroundTransparency = 1
                                  markscy.Image = "rbxassetid://316113987"
                                  markscy.ImageColor3 = Color3.new(1, 0, 0)
                                  markscy.Size = UDim2.new(1, 0, 1, 0)
                                  table.insert(Effects, {markgui, "AdjuEff", 10, markscy})
                                end
                              end
                            end
end
end
                              mark.MarkValue.Value = mark.MarkValue.Value + 1
                              if mark:findFirstChild("MarkSize") ~= nil then
                                mark.MarkSize.Value = 5
                              coroutine.resume(coroutine.create(function(Hum, Dam)
    hit.Parent.Humanoid:TakeDamage(Damage)
  end), h, Damage)
                              showDamage(hit.Parent, Damage, "Damage")
                              if DecreaseState ~= nil then
                                DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
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
  end), hum)
                                local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
                                local bodvol = Instance.new("BodyVelocity")
                                bodvol.velocity = angle * knockback
                                bodvol.P = 500
                                bodvol.maxForce = Vector3.new(2000, 2000, 2000)
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
                                    bodvol.P = 500
                                    bodvol.maxForce = Vector3.new(2000, 2000, 2000)
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
                      end
                    end
                  end
                end
              end
            end
         end
        --end
      --end
    --end
  --end
--end
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
  if invisible == true then
    Invisibility()
    InvisSlash()
  else
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
if key == "h" then
	mana.Value = 100
	cooldowns[1] = 100
	cooldowns[2] = 100
	cooldowns[3] = 100
	cooldowns[4] = 100
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
  if key == "e" and (invisnum.Value >= 70 or invisible == true) then
    Invisibility()
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
  MMouse = mouse
end
ds = function(mouse)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Renegade loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local passivenum = 0
local pnum2 = 0
local walk = 0
local walkforw = true
local addpassive = 0
local p = game.Players.LocalPlayer--300899323
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local rj = root.RootJoint
local deb = false
local shot = 0
local stanceToggle = "Idle1"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
local Stepped = game:GetService("RunService").Stepped
math.randomseed(os.time())
hed.face:Remove()
----------------------------------------------------
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
}
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function NewPart(prnt,siz,cf,trans,anc,mat,col)
	local prt=Instance.new("Part")
	prt.Parent=prnt
	prt.Name="Part"
	prt.Size=siz
	prt.CanCollide=false
	prt.Anchored=anc
	prt.Locked=true
	prt.Transparency = trans
	prt.TopSurface=10
	prt.BottomSurface=10
	prt.FrontSurface=10
	prt.BackSurface=10
	prt.LeftSurface=10
	prt.RightSurface=10
	prt:BreakJoints()
	prt.CFrame=cf or CFrame.new(30,10,30)
	prt.Material=mat
	prt.BrickColor=BrickColor.new(col)
	m=Instance.new("SpecialMesh",prt)
	m.MeshType=6
	return prt
end
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
	return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
	end
end
 
function matrixInterpolate(a, b, t)
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
	local t = v1:Dot(v2)
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
	v0.x, v0.y, v0.z,
	v1.x, v1.y, v1.z,
	v2.x, v2.y, v2.z,
	v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
--[[newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)--]]
----------------------------------------------------
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
----------------------------------------------------
pr = Instance.new("Part",hed)
pr.BrickColor = BrickColor.new("Black")
pr.Material = "Metal"
pr.Reflectance = 0.04
pr.Anchored = false
pr.CanCollide = false
pr.Archivable = false
pr.Locked = true
pr.Size = Vector3.new(2,0.8,1)
prm = Instance.new("SpecialMesh",pr)
prm.MeshType = "FileMesh"
prm.MeshId = "rbxassetid://16952952"
prm.Scale = Vector3.new(1,1,1)
newWeld(hed, pr, 0, 0.35, 0)
pr.Weld.C1 = CFrame.new(0,0,0)
--Left Arm
m = Instance.new("Model")
m.Name = "LeftArm"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really red")
p1.Material = Enum.Material.Granite
p1.CFrame = CFrame.new(-1.5, 5.73969078, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Size = Vector3.new(1, 0.200000048, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really red")
p2.Material = Enum.Material.Granite
p2.CFrame = CFrame.new(-1.5, 6.03969383, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Size = Vector3.new(1, 0.200000048, 1)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really red")
p3.Material = Enum.Material.Granite
p3.CFrame = CFrame.new(-1.5, 6.63968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Size = Vector3.new(1, 0.200000048, 1)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.SmoothPlastic
p4.Name = "LeftArmPlate"
p4.Size = Vector3.new(1, 2, 1)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really red")
p5.Material = Enum.Material.Granite
p5.CFrame = CFrame.new(-1.5, 6.33969307, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p5.Size = Vector3.new(1, 0.200000048, 1)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really red")
p6.Material = Enum.Material.Granite
p6.CFrame = CFrame.new(-1.5, 5.73969078, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.Size = Vector3.new(1, 0.200000048, 1)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really red")
p7.Material = Enum.Material.Granite
p7.CFrame = CFrame.new(-1.5, 6.03969383, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 0.200000048, 1)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really red")
p8.Material = Enum.Material.Granite
p8.CFrame = CFrame.new(-1.5, 6.33969307, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 0.200000048, 1)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really red")
p9.Material = Enum.Material.Granite
p9.CFrame = CFrame.new(-1.5, 6.63968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 0.200000048, 1)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Black")
p10.Material = Enum.Material.SmoothPlastic
p10.CFrame = CFrame.new(-1.5, 6.78969193, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 0.349999994, 1)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1.12, 1.01999998, 1.12)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(-1.5, 6.48969078, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 0.25, 1)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Black")
p12.Material = Enum.Material.Metal
p12.CFrame = CFrame.new(-1.5, 6.18969154, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 0.25, 1)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Black")
p13.Material = Enum.Material.Metal
p13.CFrame = CFrame.new(-1.5, 5.88968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 0.25, 1)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(-1.5, 5.58969307, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 0.25, 1)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p14)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really red")
p15.Material = Enum.Material.Granite
p15.CFrame = CFrame.new(-1.5, 6.63968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 1, 1)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p15)
b15.MeshType = Enum.MeshType.Sphere
b15.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.Transparency = 1
p16.BrickColor = BrickColor.new("Black")
p16.Material = Enum.Material.Metal
p16.CFrame = CFrame.new(-1.49142194, 4.80968094, 21.7695732, 1, 1.67448022e-007, -1.06342185e-007, -2.04123751e-007, 0.500000119, -0.866025269, -6.57511308e-008, 0.866025329, 0.5)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p16)
b16.MeshType = Enum.MeshType.Brick
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Black")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-1.50000083, 5.33968592, 22.4999943, 1, -9.44388034e-009, 5.2184074e-008, -7.54702114e-008, 0.999999881, 2.38418579e-007, 2.60919535e-008, 1.1920929e-007, 0.999999881)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.01999998, 0.300000012, 1.01999998)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Brick
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(-1.50000072, 5.33968782, 22.4999962, 1, -3.77485776e-008, 7.82760807e-008, -1.03774902e-007, 0.999999881, 3.57627869e-007, 5.21839532e-008, 2.38418565e-007, 0.999999881)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(1.00999999, 0.400000036, 1.00999999)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Brick
b18.Name = "Mesh"
b18.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Black")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(-1.5000006, 5.33968973, 22.4999981, 1, -6.60532748e-008, 1.04368084e-007, -1.32079592e-007, 0.999999881, 4.76837158e-007, 7.82759457e-008, 3.5762784e-007, 0.999999881)
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Brick
b19.Name = "Mesh"
b19.Scale = Vector3.new(1.02999997, 0.50999999, 1.02999997)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.SmoothPlastic
p20.CFrame = CFrame.new(-1.50000048, 5.33969164, 22.5, 1, -9.4357965e-008, 1.3046008e-007, -1.60384275e-007, 0.999999881, 5.96046448e-007, 1.04367942e-007, 4.76837101e-007, 0.999999881)
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p20)
b20.MeshType = Enum.MeshType.Brick
b20.Name = "Mesh"
b20.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Black")
p21.Transparency = 1
p21.Material = Enum.Material.Metal
p21.CFrame = CFrame.new(-1.93255413, 4.43040705, 22.5000057, -1.61368675e-007, -0.707106769, -0.707106769, -4.62050195e-007, -0.707106471, 0.707106948, -0.999999881, -5.86611463e-007, 4.45824725e-007)
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000003, 0.200000048, 0.399999976)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "LeftArmPlate_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(1.49142683, -27.338007, 3.81166649, 1, -2.04123751e-007, -6.57511308e-008, 1.67448022e-007, 0.500000119, 0.866025329, -1.06342185e-007, -0.866025269, 0.5)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(1.49142683, -27.338007, 3.81166649, 1, -2.04123751e-007, -6.57511308e-008, 1.67448022e-007, 0.500000119, 0.866025329, -1.06342185e-007, -0.866025269, 0.5)
w16.Part1 = p17
w16.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w19.Part1 = p20
w19.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w20.Part1 = p21
w20.C1 = CFrame.new(22.4999943, 10.3648901, -13.0979404, -3.09086232e-008, 1.63798575e-007, -1, -0.707106888, -0.70710665, -9.39673512e-008, -0.70710665, 0.707106888, 1.37678796e-007)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(22.4999943, 10.3648901, -13.0979404, -3.09086232e-008, 1.63798575e-007, -1, -0.707106888, -0.70710665, -9.39673512e-008, -0.70710665, 0.707106888, 1.37678796e-007)
w21.Part1 = p22
w21.C1 = CFrame.new(22.4999981, -6.56083632, 15.8073826, 6.53831052e-008, -1.56958208e-007, -1, 0.866025388, 0.5, -2.18557226e-008, 0.5, -0.866025388, 1.68621398e-007)
m.Parent = larm
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", larm.LeftArm)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 1, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", larm.LeftArm)
weld1.Part0 = cor
weld1.Part1 = larm.LeftArm.LeftArmPlate
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Right Arm
m2 = Instance.new("Model")
m2.Name = "RightArm"
p1 = Instance.new("Part", m2)
p1.BrickColor = BrickColor.new("Really red")
p1.Material = Enum.Material.Granite
p1.CFrame = CFrame.new(3.5, -9.44201183, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 0.200000048, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p2 = Instance.new("Part", m2)
p2.BrickColor = BrickColor.new("Really red")
p2.Material = Enum.Material.Granite
p2.CFrame = CFrame.new(3.5, -9.74201393, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 0.200000048, 1)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p3 = Instance.new("Part", m2)
p3.BrickColor = BrickColor.new("Really red")
p3.Material = Enum.Material.Granite
p3.CFrame = CFrame.new(3.5, -9.14201164, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 0.200000048, 1)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p4 = Instance.new("Part", m2)
p4.BrickColor = BrickColor.new("Really red")
p4.Material = Enum.Material.Granite
p4.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 0.200000048, 1)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p5 = Instance.new("Part", m2)
p5.BrickColor = BrickColor.new("Really red")
p5.Material = Enum.Material.Granite
p5.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 0.200000048, 1)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p6 = Instance.new("Part", m2)
p6.BrickColor = BrickColor.new("Really red")
p6.Material = Enum.Material.Granite
p6.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1, 1)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "RightArmPlate"
p7.CFrame = CFrame.new(3.5, -9.54201603, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 2, 1)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p8 = Instance.new("Part", m2)
p8.BrickColor = BrickColor.new("Really red")
p8.Material = Enum.Material.Granite
p8.CFrame = CFrame.new(3.5, -9.14201164, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 0.200000048, 1)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Black")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(3.5, -8.69201183, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 0.349999994, 1)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1.12, 1.01999998, 1.12)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Black")
p10.Material = Enum.Material.Metal
p10.CFrame = CFrame.new(3.5, -8.99201584, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 0.25, 1)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(3.5, -9.29201508, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 0.25, 1)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Black")
p12.Material = Enum.Material.Metal
p12.CFrame = CFrame.new(3.5, -9.59201431, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 0.25, 1)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Really red")
p13.Material = Enum.Material.Granite
p13.CFrame = CFrame.new(3.5, -9.44201088, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 0.200000048, 1)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(3.5, -9.89201069, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 0.25, 1)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p14)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Really red")
p15.Material = Enum.Material.Granite
p15.CFrame = CFrame.new(3.5, -9.74201298, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 0.200000048, 1)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p15)
b15.MeshType = Enum.MeshType.Brick
b15.Name = "Mesh"
b15.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Black")
p16.Material = Enum.Material.SmoothPlastic
p16.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1.01999998, 0.300000012, 1.01999998)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p16)
b16.MeshType = Enum.MeshType.Brick
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p17 = Instance.new("Part", m2)
p17.BrickColor = BrickColor.new("Black")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.00999999, 0.400000036, 1.00999999)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Brick
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p18 = Instance.new("Part", m2)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Brick
b18.Name = "Mesh"
b18.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p19 = Instance.new("Part", m2)
p19.BrickColor = BrickColor.new("Black")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Brick
b19.Name = "Mesh"
b19.Scale = Vector3.new(1.02999997, 0.50999999, 1.02999997)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "RightArmPlate_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p17
w16.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m2.Parent = rarm
m2:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", rarm.RightArm)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(1, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = rarm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", rarm.RightArm)
weld2.Part0 = cor2
weld2.Part1 = rarm.RightArm.RightArmPlate
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Torso
m3 = Instance.new("Model")
m3.Name = "Torso"
p1 = Instance.new("Part", m3)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Metal
p1.Name = "TorsoPlate"
p1.CFrame = CFrame.new(0, 3.10002589, 0.50000006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(2, 2, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p2 = Instance.new("Part", m3)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.CFrame = CFrame.new(-0.450000942, 4.05002356, -0.100002818, -0.685070276, 0.686094284, 0.244853854, 0.616745472, 0.367372453, 0.696177125, 0.387690574, 0.627942622, -0.674821496)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=3270017"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p3 = Instance.new("Part", m3)
p3.BrickColor = BrickColor.new("Black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(0, 3.10002589, 0.970001996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(2, 2, 0.200000018)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p4 = Instance.new("Part", m3)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(0, 4.00002623, 0.529999971, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(2, 1.04000008, 0.239999995)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m3)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(-0.499999821, 3.15002489, 0.0999978557, 7.54979084e-008, 1, 0, 4.37113918e-008, 0, 1, 1, -7.54978942e-008, -4.37113883e-008)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.300000012, 1, 1.89999998)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p6 = Instance.new("Part", m3)
p6.BrickColor = BrickColor.new("Black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(0.500000179, 3.15002489, 0.0999980345, -4.37113918e-008, -1, 0, -4.37113812e-008, 0, 1, -1, 4.37113847e-008, -4.37113883e-008)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.300000012, 0.99999994, 1.89999998)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p7 = Instance.new("Part", m3)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(1.63912773e-007, 3.20002794, 0.0999980569, -3.09086197e-008, -0.707106829, -0.707106769, -7.46200044e-008, -0.707106769, 0.707106829, -1, 7.46200044e-008, -3.09086197e-008)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.300000012, 1.20000005, 1.20000005)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
p8 = Instance.new("Part", m3)
p8.BrickColor = BrickColor.new("Black")
p8.Material = Enum.Material.Metal
p8.CFrame = CFrame.new(-1, 3.10002613, 0.520000935, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 2, 0.200000018)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p9 = Instance.new("Part", m3)
p9.BrickColor = BrickColor.new("Black")
p9.Material = Enum.Material.Metal
p9.CFrame = CFrame.new(1, 3.10002613, 0.520001054, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 2, 0.200000018)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p10 = Instance.new("Part", m3)
p10.BrickColor = BrickColor.new("Black")
p10.Material = Enum.Material.Metal
p10.CFrame = CFrame.new(0, 2.05002642, 0.539999843, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(2, 1.0200001, 0.239999995)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p11 = Instance.new("Part", m3)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(0.499999523, 4.05002451, -0.0499982014, 1.00000024, -8.94069672e-008, -1.78813934e-007, -2.98023224e-008, 0.906307817, -0.422618449, -2.23517418e-007, 0.42261821, 0.906307697)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=3270017"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p12 = Instance.new("Part", m3)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Metal
p12.Transparency = 1
p12.Name = "Chain2Torso"
p12.CFrame = CFrame.new(0.0500000007, 3.35002589, 0.0200020671, -4.37113883e-008, -1, 0, -4.37113883e-008, 1.91068547e-015, -1, 1, -4.37113883e-008, -4.37113883e-008)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.699999988, 0.300000012, 0.300000012)
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p13 = Instance.new("Part", m3)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Metal
p13.CFrame = CFrame.new(-0.700000763, 4.25002289, 0.349998087, -0.606457233, -0.374239564, 0.70153743, -0.641863465, -0.290311694, -0.709739804, 0.469277143, -0.880717754, -0.0641489923)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p14 = Instance.new("Part", m3)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(-0.0500002243, 3.50002766, -0.150001988, -0.331867754, 0.457445055, -0.824989557, 0.877285957, -0.171802372, -0.448166817, -0.346746802, -0.87248385, -0.344294399)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=3270017"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p15 = Instance.new("Part", m3)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Metal
p15.CFrame = CFrame.new(0.199999034, 3.55002332, -0.150001839, -0.0627828911, -0.802308202, -0.593599737, 0.678633273, -0.470427632, 0.564052343, -0.731789052, -0.367423117, 0.57400763)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p16 = Instance.new("Part", m3)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.Metal
p16.CFrame = CFrame.new(0.349999189, 3.70002842, -0.150001973, 0.994292557, 0.0709807873, 0.0796526894, -0.0587368309, 0.987431884, -0.146726117, -0.0890666768, 0.141209915, 0.985964835)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=3270017"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p17 = Instance.new("Part", m3)
p17.BrickColor = BrickColor.new("Really black")
p17.Material = Enum.Material.Metal
p17.CFrame = CFrame.new(-0.200000346, 3.70002747, -0.150002211, 0.964791715, 0.0184034109, -0.262370646, -0.0587368906, 0.987431884, -0.146726027, 0.256372869, 0.156970888, 0.953746974)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=3270017"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p18 = Instance.new("Part", m3)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.Metal
p18.CFrame = CFrame.new(-0.35000062, 3.85002661, -0.150002271, 0.407530367, -0.427938014, 0.806714416, 0.0989350602, 0.898891687, 0.426855773, -0.907816589, -0.0941444039, 0.40866372)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=3270017"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p19 = Instance.new("Part", m3)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.Metal
p19.CFrame = CFrame.new(0.599999547, 4.25002337, 1.49011612e-008, 0.450589776, 0.596651912, -0.664060116, 0.322663993, 0.584720135, 0.744305372, 0.832379937, -0.549644768, 0.0709509254)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p20 = Instance.new("Part", m3)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.Metal
p20.CFrame = CFrame.new(0.449999154, 3.90002728, -0.150000244, 0.148452312, 0.508259773, -0.848312676, -0.212012291, 0.85422945, 0.474703223, 0.965925753, 0.109381542, 0.234569833)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b20 = Instance.new("SpecialMesh", p20)
b20.MeshId = "http://www.roblox.com/asset/?id=3270017"
b20.TextureId = ""
b20.MeshType = Enum.MeshType.FileMesh
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p21 = Instance.new("Part", m3)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.Metal
p21.CFrame = CFrame.new(0.699999869, 4.25002337, 0.200001985, -0.0996009707, 0.981125295, 0.165750414, -0.142243966, -0.178907469, 0.973529041, 0.98480773, 0.0733870864, 0.157378286)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b21 = Instance.new("SpecialMesh", p21)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p22 = Instance.new("Part", m3)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.Metal
p22.CFrame = CFrame.new(0.69999975, 4.25002289, 0.450001955, -0.167731196, 0.167446673, 0.971508265, 0.0449438766, -0.983146012, 0.17721194, 0.984807789, 0.0733873621, 0.157378122)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/asset/?id=3270017"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p23 = Instance.new("Part", m3)
p23.BrickColor = BrickColor.new("Really black")
p23.Material = Enum.Material.Metal
p23.CFrame = CFrame.new(0.699999511, 4.25002289, 0.700001478, 0.0593914539, -0.993999004, 0.0918651819, 0.163175613, -0.0811224878, -0.98325628, 0.984807849, 0.0733875483, 0.157378405)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p24 = Instance.new("Part", m3)
p24.BrickColor = BrickColor.new("Really black")
p24.Material = Enum.Material.Metal
p24.CFrame = CFrame.new(0.699999452, 4.25002289, 0.900001347, -0.197025463, -0.431517303, 0.880326331, 0.133022487, -0.90138948, -0.412070453, 0.971332312, 0.0359149873, 0.234997824)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b24 = Instance.new("SpecialMesh", p24)
b24.MeshId = "http://www.roblox.com/asset/?id=3270017"
b24.TextureId = ""
b24.MeshType = Enum.MeshType.FileMesh
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p25 = Instance.new("Part", m3)
p25.BrickColor = BrickColor.new("Really black")
p25.Material = Enum.Material.Metal
p25.CFrame = CFrame.new(0.599999249, 4.25002289, 1.05000341, -0.793593884, -0.433597952, 0.42685172, 0.426002622, 0.104941569, 0.898615122, -0.434431762, 0.894975305, 0.101432741)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p26 = Instance.new("Part", m3)
p26.BrickColor = BrickColor.new("Really black")
p26.Material = Enum.Material.Metal
p26.CFrame = CFrame.new(0.399999261, 4.25002289, 1.09999716, 0.474074066, -0.73934859, 0.478140384, 0.876810074, 0.445984155, -0.17972827, -0.0803612769, 0.504442811, 0.859697402)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b26 = Instance.new("SpecialMesh", p26)
b26.MeshId = "http://www.roblox.com/asset/?id=3270017"
b26.TextureId = ""
b26.MeshType = Enum.MeshType.FileMesh
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p27 = Instance.new("Part", m3)
p27.BrickColor = BrickColor.new("Really black")
p27.Material = Enum.Material.Metal
p27.CFrame = CFrame.new(0.249999076, 4.25002289, 1.20000076, 0.524626255, -0.838181257, 0.149064019, -0.503709316, -0.446768612, -0.739374638, 0.686326742, 0.31281051, -0.656585932)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b27 = Instance.new("SpecialMesh", p27)
b27.MeshId = "http://www.roblox.com/asset/?id=3270017"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p28 = Instance.new("Part", m3)
p28.BrickColor = BrickColor.new("Really black")
p28.Material = Enum.Material.Metal
p28.CFrame = CFrame.new(0.0499990731, 4.25002289, 1.20000088, 0.524626136, -0.838181317, 0.149063885, 0.588431716, 0.230477661, -0.775002301, 0.615236104, 0.494300276, 0.614126861)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p29 = Instance.new("Part", m3)
p29.BrickColor = BrickColor.new("Really black")
p29.Material = Enum.Material.Metal
p29.CFrame = CFrame.new(-0.200000852, 4.25002289, 1.20000088, 0.524626195, -0.838181257, 0.149063647, 0.664180398, 0.512506962, 0.544243872, -0.532571197, -0.186519295, 0.825577736)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b29 = Instance.new("SpecialMesh", p29)
b29.MeshId = "http://www.roblox.com/asset/?id=3270017"
b29.TextureId = ""
b29.MeshType = Enum.MeshType.FileMesh
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p30 = Instance.new("Part", m3)
p30.BrickColor = BrickColor.new("Really black")
p30.Material = Enum.Material.Metal
p30.CFrame = CFrame.new(-0.400000989, 4.25002289, 1.15000105, -0.205189675, -0.942334533, -0.264392197, 0.472657442, 0.141141802, -0.869870245, 0.857025325, -0.303455055, 0.416440606)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/asset/?id=3270017"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p31 = Instance.new("Part", m3)
p31.BrickColor = BrickColor.new("Really black")
p31.Material = Enum.Material.Metal
p31.CFrame = CFrame.new(-0.550001025, 4.25002337, 0.999999702, 0.151335806, -0.651350021, -0.743532896, 0.979139984, 0.201951638, 0.022377044, 0.135582238, -0.731408894, 0.668325186)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b31 = Instance.new("SpecialMesh", p31)
b31.MeshId = "http://www.roblox.com/asset/?id=3270017"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p32 = Instance.new("Part", m3)
p32.BrickColor = BrickColor.new("Really black")
p32.Material = Enum.Material.Metal
p32.CFrame = CFrame.new(-0.700000763, 4.25002337, 0.800000489, -0.804778874, -0.593520701, 0.0080409348, 0.142058611, -0.205740049, -0.968240976, 0.576325178, -0.778077364, 0.249890015)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b32 = Instance.new("SpecialMesh", p32)
b32.MeshId = "http://www.roblox.com/asset/?id=3270017"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p33 = Instance.new("Part", m3)
p33.BrickColor = BrickColor.new("Really black")
p33.Material = Enum.Material.Metal
p33.CFrame = CFrame.new(-0.700000942, 4.25002289, 0.549999833, -0.526802063, -0.220915288, -0.820777893, 0.708702326, 0.418966174, -0.567634225, 0.469277024, -0.880717933, -0.0641489923)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b33 = Instance.new("SpecialMesh", p33)
b33.MeshId = "http://www.roblox.com/asset/?id=3270017"
b33.TextureId = ""
b33.MeshType = Enum.MeshType.FileMesh
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p34 = Instance.new("Part", m3)
p34.BrickColor = BrickColor.new("Really black")
p34.Material = Enum.Material.Metal
p34.Name = "Connection"
p34.CFrame = CFrame.new(0.0551848896, 3.35002589, -0.131655902, 0.635109425, -0.765570045, -0.102657467, -0.766416311, -0.641122162, 0.0396047123, -0.0961361453, 0.0535250306, -0.993928015)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b34 = Instance.new("SpecialMesh", p34)
b34.MeshId = "http://www.roblox.com/asset/?id=3270017"
b34.TextureId = ""
b34.MeshType = Enum.MeshType.FileMesh
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p35 = Instance.new("Part", m3)
p35.BrickColor = BrickColor.new("Really black")
p35.Material = Enum.Material.Metal
p35.CFrame = CFrame.new(-0.600001037, 4.25002289, 0.149997264, 0.493824095, 0.604460001, 0.62511301, -0.565569818, -0.322785676, 0.758907318, 0.660506427, -0.728311539, 0.182464883)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b35 = Instance.new("SpecialMesh", p35)
b35.MeshId = "http://www.roblox.com/asset/?id=3270017"
b35.TextureId = ""
b35.MeshType = Enum.MeshType.FileMesh
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p36 = Instance.new("Part", m3)
p36.BrickColor = BrickColor.new("Really black")
p36.Material = Enum.Material.Metal
p36.CFrame = CFrame.new(-0.500000834, 4.2000227, -2.52574682e-006, -0.285961747, 0.418113738, -0.862210572, 0.191904813, 0.906544387, 0.375965416, 0.93882823, -0.0579507053, -0.339474916)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b36 = Instance.new("SpecialMesh", p36)
b36.MeshId = "http://www.roblox.com/asset/?id=3270017"
b36.TextureId = ""
b36.MeshType = Enum.MeshType.FileMesh
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
w1 = Instance.new("Weld", p2)
w1.Name = "Joint"
w1.Part0 = p2
w1.C0 = CFrame.new(-0.211238861, -0.0362606049, -0.0810072422, -0.57012105, 0.811055779, -0.130959615, -0.254106343, -0.022495009, 0.966914535, 0.781275749, 0.584536016, 0.218919396)
w1.Part1 = p18
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p3)
w2.Name = "Joint"
w2.Part0 = p3
w2.C0 = CFrame.new(0, 0, -0.470001936, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p1
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p4)
w3.Name = "Joint"
w3.Part0 = p4
w3.C0 = CFrame.new(0, 0.0299999714, -0.900000334, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p5)
w4.Name = "Joint"
w4.Part0 = p5
w4.C0 = CFrame.new(2.38418579e-007, 0.5, 0.0500030518, -1, -9.67369829e-009, -5.33850759e-008, 4.45892816e-008, -0.707106829, -0.707106769, -3.09086161e-008, -0.707106769, 0.707106829)
w4.Part1 = p7
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p6)
w5.Name = "Joint"
w5.Part0 = p6
w5.C0 = CFrame.new(0, 0.5, 0.0500030518, 1, -1.28027651e-008, 3.09086197e-008, -1.28027686e-008, 0.707106829, 0.707106769, -3.09086161e-008, -0.707106769, 0.707106829)
w5.Part1 = p7
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Name = "Joint"
w6.Part0 = p7
w6.C0 = CFrame.new(-0.400002003, 0.070712328, -0.0707120895, -3.09086197e-008, -7.46200044e-008, -1, -0.707106829, -0.707106769, 7.46200044e-008, -0.707106769, 0.707106829, -3.09086197e-008)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p8)
w7.Name = "Joint"
w7.Part0 = p8
w7.C0 = CFrame.new(-0.0200009346, -2.38418579e-007, -1, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w7.Part1 = p1
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p9)
w8.Name = "Joint"
w8.Part0 = p9
w8.C0 = CFrame.new(-0.0200009346, -2.38418579e-007, 1, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w8.Part1 = p1
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p10)
w9.Name = "Joint"
w9.Part0 = p10
w9.C0 = CFrame.new(0, 0.0399997234, 1.04999948, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w9.Part1 = p1
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p11)
w10.Name = "Joint"
w10.Part0 = p11
w10.C0 = CFrame.new(0.100000024, 0.202390671, -0.0392093658, 0.450589836, 0.596651673, -0.664059937, 0.644212067, 0.297646403, 0.704554796, 0.618028879, -0.745260656, -0.250253737)
w10.Part1 = p19
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p12)
w11.Name = "Joint"
w11.Part0 = p12
w11.C0 = CFrame.new(0.479997993, 0.0499999784, 0.25, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
w11.Part1 = p1
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p13)
w12.Name = "Joint"
w12.Part0 = p13
w12.C0 = CFrame.new(-0.1545012, 0.138720512, 0.0829834938, 0.373496056, -0.501174688, -0.780592561, -0.602336764, 0.50893271, -0.614961803, 0.70547235, 0.699865282, -0.111791633)
w12.Part1 = p35
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p14)
w13.Name = "Joint"
w13.Part0 = p14
w13.C0 = CFrame.new(-0.172863483, 0.0578804016, -0.0258672237, -0.849803627, -0.326939017, 0.413454711, 0.506076992, -0.286759645, 0.813421786, -0.147377193, 0.900488615, 0.409145683)
w13.Part1 = p34
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p15)
w14.Name = "Joint"
w14.Part0 = p15
w14.C0 = CFrame.new(0.0923810005, -0.190912724, -0.00442934036, -0.0371075198, 0.56231159, -0.826092422, -0.73737216, -0.573347449, -0.357148677, -0.674466848, 0.595884562, 0.435908347)
w14.Part1 = p16
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p16)
w15.Name = "Joint"
w15.Part0 = p16
w15.C0 = CFrame.new(0.0876817107, 0.204583645, -0.0213780403, 0.074026458, 0.445441723, -0.892245352, -0.0624118894, 0.895015597, 0.441646636, 0.995301366, 0.022993207, 0.0940556675)
w15.Part1 = p20
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p17)
w16.Name = "Joint"
w16.Part0 = p17
w16.C0 = CFrame.new(0.156466246, -0.194725513, -0.0100102425, -0.460608691, 0.227749109, -0.85788697, 0.80572325, -0.29817903, -0.51176101, -0.372357011, -0.926941037, -0.0461589098)
w16.Part1 = p14
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p18)
w17.Name = "Joint"
w17.Part0 = p18
w17.C0 = CFrame.new(0.046289444, -0.199023724, 0.0569794178, 0.154631272, -0.0373091251, -0.987267554, -0.489805043, 0.864940584, -0.109402351, 0.858009458, 0.500485599, 0.115472674)
w17.Part1 = p17
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p19)
w18.Name = "Joint"
w18.Part0 = p19
w18.C0 = CFrame.new(0.211536884, -0.0502645969, -0.0522158146, 0.728958309, 0.445444137, 0.519806981, -0.683894217, 0.440442294, 0.581635118, 0.0301409438, -0.779480696, 0.625700712)
w18.Part1 = p21
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p20)
w19.Name = "Joint"
w19.Part0 = p20
w19.C0 = CFrame.new(0.0722160339, 0.164483547, 0.0522456169, 0.148452476, 0.216069669, 0.965026319, 0.508259654, 0.820421398, -0.261879444, -0.848312438, 0.529360592, 0.0119740963)
w19.Part1 = p11
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p21)
w20.Name = "Joint"
w20.Part0 = p21
w20.C0 = CFrame.new(0.246201992, 0.0183468163, 0.0393443108, 0.980159461, 0.195441127, 0.0330170989, -0.100333519, 0.345563769, 0.933016002, 0.170940176, -0.917817175, 0.358316928)
w20.Part1 = p22
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p22)
w21.Name = "Joint"
w21.Part0 = p22
w21.C0 = CFrame.new(0.246201515, 0.0183467865, 0.0393443108, 0.96721822, 0.235350817, 0.0953874439, -0.0782081187, -0.0813006833, 0.993616521, 0.241603509, -0.968504071, -0.060229145)
w21.Part1 = p23
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p23)
w22.Name = "Joint"
w22.Part0 = p23
w22.C0 = CFrame.new(0.196961403, 0.014677465, 0.031475544, 0.966579735, -0.137344033, 0.21647194, 0.256335169, 0.504686236, -0.824368834, 0.0039717555, 0.852307677, 0.523025632)
w22.Part1 = p24
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p24)
w23.Name = "Joint"
w23.Part0 = p24
w23.C0 = CFrame.new(0.16540432, 0.0485391617, -0.0527825356, -0.208951756, 0.968707323, 0.133960381, -0.0571475253, 0.124654606, -0.990553021, -0.976254702, -0.214633241, 0.0293123852)
w23.Part1 = p25
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p25)
w24.Name = "Joint"
w24.Part0 = p25
w24.C0 = CFrame.new(0.136999726, 0.131462574, -0.0802993774, 0.0322127938, 0.557586372, -0.829493642, -0.185464859, 0.81884563, 0.543226421, 0.982122838, 0.136343077, 0.129789978)
w24.Part1 = p26
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p26)
w25.Name = "Joint"
w25.Part0 = p26
w25.C0 = CFrame.new(-0.0791475773, 0.161348343, 0.014251709, -0.2480997, -0.814228892, -0.524859786, -0.266315132, 0.578250885, -0.771169424, 0.931409001, -0.0515488982, -0.360305429)
w25.Part1 = p27
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p27)
w26.Name = "Joint"
w26.Part0 = p27
w26.C0 = CFrame.new(-0.104925156, 0.167636156, -0.0298128128, 0.401087224, -0.216573805, 0.890070021, -0.510172248, 0.754199564, 0.413409412, -0.760824084, -0.619902253, 0.192009777)
w26.Part1 = p28
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p28)
w27.Name = "Joint"
w27.Part0 = p28
w27.C0 = CFrame.new(-0.131156445, 0.209545135, -0.037266016, 0.338400394, -0.252909899, 0.906378388, -0.549903035, 0.728472173, 0.408576787, -0.763604522, -0.636682749, 0.10743928)
w27.Part1 = p29
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p29)
w28.Name = "Joint"
w28.Part0 = p29
w28.C0 = CFrame.new(-0.0782968998, 0.176962137, -0.0710916519, -0.250144869, -0.239018306, -0.938241899, 0.254374206, 0.918783069, -0.301879942, 0.934195518, -0.314178288, -0.169028759)
w28.Part1 = p30
w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p30)
w29.Name = "Joint"
w29.Part0 = p30
w29.C0 = CFrame.new(-0.097776413, 0.186868906, -0.022808075, 0.547942579, -0.39773193, 0.735913277, -0.0455548018, 0.864242792, 0.501007974, -0.835274637, -0.30804801, 0.455436885)
w29.Part1 = p31
w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p31)
w30.Name = "Joint"
w30.Part0 = p31
w30.C0 = CFrame.new(-0.0498166084, 0.243983507, -0.0221347809, 0.0954426825, -0.396762908, -0.912945747, 0.131352007, 0.914132595, -0.38354671, 0.986730695, -0.0833105743, 0.139362901)
w30.Part1 = p32
w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31 = Instance.new("Weld", p32)
w31.Name = "Joint"
w31.Part0 = p32
w31.C0 = CFrame.new(-0.144081593, 0.194519997, -0.0624723434, 0.795092285, -0.270274341, 0.542936563, -0.198274553, 0.730186164, 0.653846622, -0.573162735, -0.627518892, 0.526976764)
w31.Part1 = p33
w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32 = Instance.new("Weld", p33)
w32.Name = "Joint"
w32.Part0 = p33
w32.C0 = CFrame.new(-0.0938563347, 0.176145077, 0.0128297806, 0.0848137587, -0.421895206, -0.902668893, -0.548244178, 0.736708403, -0.39583993, 0.832006574, 0.528455555, -0.168818489)
w32.Part1 = p13
w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33 = Instance.new("Weld", p34)
w33.Name = "Joint"
w33.Part0 = p34
w33.C0 = CFrame.new(-0.0178728104, 0.0120868683, -0.150204837, -0.0961361453, -0.635109425, 0.766416311, 0.0535250939, 0.765570045, 0.641122162, -0.993928015, 0.102657512, -0.0396046676)
w33.Part1 = p12
w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34 = Instance.new("Weld", p35)
w34.Name = "Joint"
w34.Part0 = p35
w34.C0 = CFrame.new(-0.0214147568, 0.185832024, -0.00280380249, 0.370351821, -0.344516218, -0.862640202, -0.918555975, 0.00231964141, -0.395284295, 0.138182849, 0.938777506, -0.315598398)
w34.Part1 = p36
w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35 = Instance.new("Weld", p36)
w35.Name = "Joint"
w35.Part0 = p36
w35.C0 = CFrame.new(-0.136966705, -0.109280109, -0.0655572414, 0.678235054, 0.463834167, -0.569960475, 0.250202835, 0.583515286, 0.772598565, 0.690938354, -0.666609228, 0.279707849)
w35.Part1 = p2
w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m3.Parent = torso
m3:MakeJoints()
----------------------------------------------------
local cor3 = Instance.new("Part", torso.Torso)
cor3.Name = "Thingy"
cor3.Locked = true
cor3.BottomSurface = 0
cor3.CanCollide = false
cor3.Size = Vector3.new(1, 1, 1)
cor3.Transparency = 1
cor3.TopSurface = 0
corw3 = Instance.new("Weld", cor3)
corw3.Part0 = torso
corw3.Part1 = cor3
corw3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw3.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld3 = Instance.new("Weld", torso.Torso)
weld3.Part0 = cor3
weld3.Part1 = torso.Torso.TorsoPlate
weld3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Left Leg
m4 = Instance.new("Model")
m4.Name = "LeftLeg"
p1 = Instance.new("Part", m4)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Metal
p1.Name = "LeftLegPlate"
p1.CFrame = CFrame.new(-1.5, 4.74442291, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Anchored = false
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 2, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p2 = Instance.new("Part", m4)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.CFrame = CFrame.new(-2.0999999, 5.44442606, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Anchored = false
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.239999995, 0.300000012, 0.899999976)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p3 = Instance.new("Part", m4)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(-2.0999999, 5.04442501, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Anchored = false
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.600000024, 0.800000012)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p4 = Instance.new("Part", m4)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(-1.5, 4.74442291, -7.02999783, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.Anchored = false
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 2, 0.200000018)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m4)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(-2, 4.74442291, -7.47999907, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p5.Anchored = false
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 2, 0.200000018)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p6 = Instance.new("Part", m4)
p6.BrickColor = BrickColor.new("Black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(-1.50999999, 3.74442887, -7.5, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p6.Anchored = false
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 0.200000048, 0.980000019)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p7 = Instance.new("Part", m4)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(-1.5, 5.74442291, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.Anchored = false
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 0.200000048, 0.99000001)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1, 1.01999998, 1.01999998)
w1 = Instance.new("Weld", p2)
w1.Name = "Joint"
w1.Part0 = p2
w1.C0 = CFrame.new(0, -0.40000093, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p3
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p3)
w2.Name = "Joint"
w2.Part0 = p3
w2.C0 = CFrame.new(0.0999999046, -0.300002098, 0.0200009346, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
w2.Part1 = p5
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p4)
w3.Name = "Joint"
w3.Part0 = p4
w3.C0 = CFrame.new(0, 0, -0.470002174, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p5)
w4.Name = "Joint"
w4.Part0 = p5
w4.C0 = CFrame.new(-0.0200009346, 0, -0.5, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w4.Part1 = p1
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p6)
w5.Name = "Joint"
w5.Part0 = p6
w5.C0 = CFrame.new(0, 0.99999404, -0.00999999046, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w5.Part1 = p1
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Name = "Joint"
w6.Part0 = p7
w6.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m4.Parent = lleg
m4:MakeJoints()
----------------------------------------------------
local cor4 = Instance.new("Part", lleg.LeftLeg)
cor4.Name = "Thingy"
cor4.Locked = true
cor4.BottomSurface = 0
cor4.CanCollide = false
cor4.Size = Vector3.new(1, 1, 1)
cor4.Transparency = 1
cor4.TopSurface = 0
corw4 = Instance.new("Weld", cor4)
corw4.Part0 = lleg
corw4.Part1 = cor4
corw4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw4.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld4 = Instance.new("Weld", lleg.LeftLeg)
weld4.Part0 = cor4
weld4.Part1 = lleg.LeftLeg.LeftLegPlate
weld4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Right Leg
m5 = Instance.new("Model")
m5.Name = "RightLeg"
p1 = Instance.new("Part", m5)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Metal
p1.Name = "RightLegPlate"
p1.CFrame = CFrame.new(1.5, 4.74441528, -7.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Anchored = false
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 2, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p2 = Instance.new("Part", m5)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.CFrame = CFrame.new(2.05000019, 5.44441557, -7.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Anchored = false
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.239999995, 0.300000012, 0.899999976)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p3 = Instance.new("Part", m5)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(2.05000019, 5.04441547, -7.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Anchored = false
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.600000024, 0.800000012)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p4 = Instance.new("Part", m5)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(1.5, 4.74441528, -7.0299983, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.Anchored = false
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 2, 0.200000018)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m5)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(2, 4.74441528, -7.47999907, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p5.Anchored = false
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 2, 0.200000018)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p6 = Instance.new("Part", m5)
p6.BrickColor = BrickColor.new("Black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(1.505, 3.74442124, -7.49999952, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p6.Anchored = false
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 0.200000048, 0.99000001)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p7 = Instance.new("Part", m5)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(1.505, 5.69442129, -7.49999952, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p7.Anchored = false
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 0.200000048, 0.99000001)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1, 1.01999998, 1.01999998)
w1 = Instance.new("Weld", p2)
w1.Name = "Joint"
w1.Part0 = p2
w1.C0 = CFrame.new(0, -0.400000095, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p3
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p3)
w2.Name = "Joint"
w2.Part0 = p3
w2.C0 = CFrame.new(-0.0500001907, -0.300000191, 0.0200004578, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
w2.Part1 = p5
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p4)
w3.Name = "Joint"
w3.Part0 = p4
w3.C0 = CFrame.new(0, 0, -0.470001221, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p5)
w4.Name = "Joint"
w4.Part0 = p5
w4.C0 = CFrame.new(-0.0200004578, 0, 0.5, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w4.Part1 = p1
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p6)
w5.Name = "Joint"
w5.Part0 = p6
w5.C0 = CFrame.new(0, 0.99999404, 0.00499999523, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w5.Part1 = p1
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Name = "Joint"
w6.Part0 = p7
w6.C0 = CFrame.new(0, -0.950006008, 0.00499999523, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m5.Parent = rleg
m5:MakeJoints()
----------------------------------------------------
local cor5 = Instance.new("Part", rleg.RightLeg)
cor5.Name = "Thingy"
cor5.Locked = true
cor5.BottomSurface = 0
cor5.CanCollide = false
cor5.Size = Vector3.new(1, 1, 1)
cor5.Transparency = 1
cor5.TopSurface = 0
corw5 = Instance.new("Weld", cor5)
corw5.Part0 = rleg
corw5.Part1 = cor5
corw5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw5.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
wld5 = Instance.new("Weld", rleg.RightLeg)
wld5.Part0 = cor5
wld5.Part1 = rleg.RightLeg.RightLegPlate
wld5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Cape
m6 = Instance.new("Model")
m6.Name = "Cloak"
p1 = Instance.new("WedgePart", m6)
p1.BrickColor = BrickColor.new("Really red")
p1.Material = Enum.Material.SmoothPlastic
p1.Name = "Wedge"
p1.CFrame = CFrame.new(0.959278464, 4.40979004, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p2 = Instance.new("WedgePart", m6)
p2.BrickColor = BrickColor.new("Black")
p2.Material = Enum.Material.SmoothPlastic
p2.Name = "Wedge"
p2.CFrame = CFrame.new(-1.27945054, 2.10108781, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p3 = Instance.new("Part", m6)
p3.BrickColor = BrickColor.new("Black")
p3.Material = Enum.Material.SmoothPlastic
p3.Name = "CapeLevel2"
p3.CFrame = CFrame.new(-0.300008506, 3.78014231, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(2.09881067, 0.559682727, 0.232357636)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 1, 0.602178097)
p4 = Instance.new("Part", m6)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.SmoothPlastic
p4.CFrame = CFrame.new(-1.8391341, 2.73073244, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p5 = Instance.new("Part", m6)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.SmoothPlastic
p5.CFrame = CFrame.new(-1.69921267, 2.73073244, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p6 = Instance.new("Part", m6)
p6.BrickColor = BrickColor.new("Black")
p6.Material = Enum.Material.SmoothPlastic
p6.Name = "CapeLevel1"
p6.CFrame = CFrame.new(-0.300008506, 4.6896286, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.25928628, 0.232357651, 0.232357636)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p7 = Instance.new("Part", m6)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.SmoothPlastic
p7.CFrame = CFrame.new(1.23912418, 2.73073268, 4.03967333, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p8 = Instance.new("Part", m6)
p8.BrickColor = BrickColor.new("Black")
p8.Material = Enum.Material.SmoothPlastic
p8.CFrame = CFrame.new(0.539517641, 2.10109043, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p9 = Instance.new("Part", m6)
p9.BrickColor = BrickColor.new("Black")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(-0.300009966, 2.03112936, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.419762105, 0.419762105, 0.232357636)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 1, 0.602178097)
p10 = Instance.new("Part", m6)
p10.BrickColor = BrickColor.new("Black")
p10.Material = Enum.Material.SmoothPlastic
p10.CFrame = CFrame.new(1.09920263, 2.73073268, 4.03967333, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p11 = Instance.new("Part", m6)
p11.BrickColor = BrickColor.new("Black")
p11.Material = Enum.Material.SmoothPlastic
p11.CFrame = CFrame.new(-1.13953161, 2.10109043, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p12 = Instance.new("Part", m6)
p12.BrickColor = BrickColor.new("Black")
p12.Material = Enum.Material.SmoothPlastic
p12.CFrame = CFrame.new(-1.6992135, 3.29041815, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p13 = Instance.new("Part", m6)
p13.BrickColor = BrickColor.new("Black")
p13.Material = Enum.Material.SmoothPlastic
p13.Name = "BottomLeftFlap"
p13.CFrame = CFrame.new(-1.13953161, 2.31097221, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.419762105, 0.232357651, 0.232357636)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p14 = Instance.new("Part", m6)
p14.BrickColor = BrickColor.new("Black")
p14.Material = Enum.Material.SmoothPlastic
p14.Transparency = 1
p14.Name = "Rotater"
p14.CFrame = CFrame.new(-0.300001532, 4.82954979, 4.03967381, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1.25928617, 0.232357651, 0.232357636)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(1, 0.632287025, 0.632287025)
p15 = Instance.new("Part", m6)
p15.BrickColor = BrickColor.new("Black")
p15.Material = Enum.Material.SmoothPlastic
p15.CFrame = CFrame.new(-1.41937125, 4.40979004, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p16 = Instance.new("Part", m6)
p16.BrickColor = BrickColor.new("Black")
p16.Material = Enum.Material.SmoothPlastic
p16.Name = "BottomCenterFlap"
p16.CFrame = CFrame.new(-0.300009966, 2.31097221, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.699603498, 0.232357651, 0.232357636)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p17 = Instance.new("Part", m6)
p17.BrickColor = BrickColor.new("Black")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-1.27945054, 4.26986647, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p18 = Instance.new("Part", m6)
p18.BrickColor = BrickColor.new("Black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(0.679436207, 4.26986647, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p19 = Instance.new("WedgePart", m6)
p19.BrickColor = BrickColor.new("Really red")
p19.Name = "Wedge"
p19.CFrame = CFrame.new(-0.265017539, 1.47144794, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p20 = Instance.new("Part", m6)
p20.BrickColor = BrickColor.new("Black")
p20.Material = Enum.Material.SmoothPlastic
p20.CFrame = CFrame.new(1.09919691, 3.29041815, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p21 = Instance.new("Part", m6)
p21.BrickColor = BrickColor.new("Black")
p21.Material = Enum.Material.SmoothPlastic
p21.CFrame = CFrame.new(0.959275484, 3.1504972, 4.03967381, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p22 = Instance.new("WedgePart", m6)
p22.BrickColor = BrickColor.new("Really red")
p22.Name = "Wedge"
p22.CFrame = CFrame.new(0.50454706, 1.89121199, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p22)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p23 = Instance.new("WedgePart", m6)
p23.BrickColor = BrickColor.new("Really red")
p23.Material = Enum.Material.SmoothPlastic
p23.Name = "Wedge"
p23.CFrame = CFrame.new(1.09919691, 3.85010386, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p23)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p24 = Instance.new("WedgePart", m6)
p24.BrickColor = BrickColor.new("Black")
p24.Material = Enum.Material.SmoothPlastic
p24.Name = "Wedge"
p24.CFrame = CFrame.new(0.959281087, 2.45089102, 4.03967333, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p24)
b24.MeshType = Enum.MeshType.Wedge
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p25 = Instance.new("WedgePart", m6)
p25.BrickColor = BrickColor.new("Really red")
p25.Name = "Wedge"
p25.CFrame = CFrame.new(0.574507415, 1.89121199, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("SpecialMesh", p25)
b25.MeshType = Enum.MeshType.Wedge
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p26 = Instance.new("WedgePart", m6)
p26.BrickColor = BrickColor.new("Black")
p26.Material = Enum.Material.SmoothPlastic
p26.Name = "Wedge"
p26.CFrame = CFrame.new(-1.06957662, 4.68963194, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("SpecialMesh", p26)
b26.MeshType = Enum.MeshType.Wedge
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p27 = Instance.new("Part", m6)
p27.BrickColor = BrickColor.new("Black")
p27.Material = Enum.Material.SmoothPlastic
p27.CFrame = CFrame.new(-1.55929208, 2.73073244, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("BlockMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p28 = Instance.new("WedgePart", m6)
p28.BrickColor = BrickColor.new("Black")
p28.Material = Enum.Material.SmoothPlastic
p28.Name = "Wedge"
p28.CFrame = CFrame.new(0.959275484, 3.71018291, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p28)
b28.MeshType = Enum.MeshType.Wedge
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p29 = Instance.new("Part", m6)
p29.BrickColor = BrickColor.new("Black")
p29.Material = Enum.Material.SmoothPlastic
p29.CFrame = CFrame.new(-1.55929208, 3.15049648, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p30 = Instance.new("WedgePart", m6)
p30.BrickColor = BrickColor.new("Black")
p30.Material = Enum.Material.SmoothPlastic
p30.Name = "Wedge"
p30.CFrame = CFrame.new(1.09919691, 3.15049744, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p30)
b30.MeshType = Enum.MeshType.Wedge
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p31 = Instance.new("WedgePart", m6)
p31.BrickColor = BrickColor.new("Black")
p31.Material = Enum.Material.SmoothPlastic
p31.Name = "Wedge"
p31.CFrame = CFrame.new(0.119759142, 2.31096911, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p31)
b31.MeshType = Enum.MeshType.Wedge
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p32 = Instance.new("Part", m6)
p32.BrickColor = BrickColor.new("Black")
p32.Material = Enum.Material.SmoothPlastic
p32.Name = "BottomRightFlap"
p32.CFrame = CFrame.new(0.539517641, 2.31097221, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.419762105, 0.232357651, 0.232357636)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("BlockMesh", p32)
b32.Name = "Mesh"
b32.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p33 = Instance.new("WedgePart", m6)
p33.BrickColor = BrickColor.new("Black")
p33.Material = Enum.Material.SmoothPlastic
p33.Name = "Wedge"
p33.CFrame = CFrame.new(1.02923799, 3.43033957, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Wedge
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p34 = Instance.new("WedgePart", m6)
p34.BrickColor = BrickColor.new("Black")
p34.Material = Enum.Material.SmoothPlastic
p34.Name = "Wedge"
p34.CFrame = CFrame.new(-1.55929208, 2.45089054, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("SpecialMesh", p34)
b34.MeshType = Enum.MeshType.Wedge
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p35 = Instance.new("Part", m6)
p35.BrickColor = BrickColor.new("Black")
p35.Material = Enum.Material.SmoothPlastic
p35.CFrame = CFrame.new(0.959275484, 3.85010386, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p36 = Instance.new("WedgePart", m6)
p36.BrickColor = BrickColor.new("Black")
p36.Material = Enum.Material.SmoothPlastic
p36.Name = "Wedge"
p36.CFrame = CFrame.new(-1.62925327, 3.43033957, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("SpecialMesh", p36)
b36.MeshType = Enum.MeshType.Wedge
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p37 = Instance.new("Part", m6)
p37.BrickColor = BrickColor.new("Black")
p37.Material = Enum.Material.SmoothPlastic
p37.Name = "CapeLevel3"
p37.CFrame = CFrame.new(-0.300008506, 3.22045994, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p37.CanCollide = false
p37.Locked = true
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(2.3786521, 0.559682727, 0.232357636)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("BlockMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(1, 1, 0.602178097)
p38 = Instance.new("WedgePart", m6)
p38.BrickColor = BrickColor.new("Really red")
p38.Material = Enum.Material.SmoothPlastic
p38.Name = "Wedge"
p38.CFrame = CFrame.new(-1.97905517, 2.73073244, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p38.CanCollide = false
p38.Locked = true
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Wedge
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p39 = Instance.new("WedgePart", m6)
p39.BrickColor = BrickColor.new("Really red")
p39.Material = Enum.Material.SmoothPlastic
p39.Name = "Wedge"
p39.CFrame = CFrame.new(-1.83913493, 3.29041815, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p39.CanCollide = false
p39.Locked = true
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("SpecialMesh", p39)
b39.MeshType = Enum.MeshType.Wedge
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p40 = Instance.new("WedgePart", m6)
p40.BrickColor = BrickColor.new("Black")
p40.Material = Enum.Material.SmoothPlastic
p40.Name = "Wedge"
p40.CFrame = CFrame.new(-1.48933268, 3.99002528, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p40.CanCollide = false
p40.Locked = true
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("SpecialMesh", p40)
b40.MeshType = Enum.MeshType.Wedge
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p41 = Instance.new("WedgePart", m6)
p41.BrickColor = BrickColor.new("Black")
p41.Material = Enum.Material.SmoothPlastic
p41.Name = "Wedge"
p41.CFrame = CFrame.new(-1.76917338, 2.59081101, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p41.CanCollide = false
p41.Locked = true
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("SpecialMesh", p41)
b41.MeshType = Enum.MeshType.Wedge
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p42 = Instance.new("WedgePart", m6)
p42.BrickColor = BrickColor.new("Black")
p42.Material = Enum.Material.SmoothPlastic
p42.Name = "Wedge"
p42.CFrame = CFrame.new(0.679442644, 2.10108781, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p42.CanCollide = false
p42.Locked = true
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("SpecialMesh", p42)
b42.MeshType = Enum.MeshType.Wedge
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p43 = Instance.new("WedgePart", m6)
p43.BrickColor = BrickColor.new("Black")
p43.Material = Enum.Material.SmoothPlastic
p43.Name = "Wedge"
p43.CFrame = CFrame.new(-1.76917338, 2.87065363, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p43.CanCollide = false
p43.Locked = true
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("SpecialMesh", p43)
b43.MeshType = Enum.MeshType.Wedge
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p44 = Instance.new("WedgePart", m6)
p44.BrickColor = BrickColor.new("Black")
p44.Material = Enum.Material.SmoothPlastic
p44.Name = "Wedge"
p44.CFrame = CFrame.new(-1.41937125, 4.26986837, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p44.CanCollide = false
p44.Locked = true
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("SpecialMesh", p44)
b44.MeshType = Enum.MeshType.Wedge
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p45 = Instance.new("WedgePart", m6)
p45.BrickColor = BrickColor.new("Black")
p45.Material = Enum.Material.SmoothPlastic
p45.Name = "Wedge"
p45.CFrame = CFrame.new(-0.999610066, 2.10108781, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p45.CanCollide = false
p45.Locked = true
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("SpecialMesh", p45)
b45.MeshType = Enum.MeshType.Wedge
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p46 = Instance.new("WedgePart", m6)
p46.BrickColor = BrickColor.new("Black")
p46.Material = Enum.Material.SmoothPlastic
p46.Name = "Wedge"
p46.CFrame = CFrame.new(0.46955356, 4.68963194, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p46.CanCollide = false
p46.Locked = true
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("SpecialMesh", p46)
b46.MeshType = Enum.MeshType.Wedge
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p47 = Instance.new("Part", m6)
p47.BrickColor = BrickColor.new("Black")
p47.Material = Enum.Material.SmoothPlastic
p47.CFrame = CFrame.new(0.819356859, 4.40979004, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p47.CanCollide = false
p47.Locked = true
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("BlockMesh", p47)
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p48 = Instance.new("Part", m6)
p48.BrickColor = BrickColor.new("Black")
p48.Material = Enum.Material.SmoothPlastic
p48.Name = "CapeLevel4"
p48.CFrame = CFrame.new(-0.300008506, 2.66077495, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p48.CanCollide = false
p48.Locked = true
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(2.3786521, 0.559682727, 0.232357636)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("BlockMesh", p48)
b48.Name = "Mesh"
b48.Scale = Vector3.new(1, 1, 0.602178097)
p49 = Instance.new("WedgePart", m6)
p49.BrickColor = BrickColor.new("Black")
p49.Material = Enum.Material.SmoothPlastic
p49.Name = "Wedge"
p49.CFrame = CFrame.new(0.819356859, 4.26986837, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p49.CanCollide = false
p49.Locked = true
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("SpecialMesh", p49)
b49.MeshType = Enum.MeshType.Wedge
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p50 = Instance.new("Part", m6)
p50.BrickColor = BrickColor.new("Black")
p50.Material = Enum.Material.SmoothPlastic
p50.Name = "CapeLevel1SubPart"
p50.CFrame = CFrame.new(-0.300008506, 4.33982658, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p50.CanCollide = false
p50.Locked = true
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(1.81896901, 0.559682727, 0.232357636)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("BlockMesh", p50)
b50.Name = "Mesh"
b50.Scale = Vector3.new(1, 1, 0.602178097)
p51 = Instance.new("Part", m6)
p51.BrickColor = BrickColor.new("Black")
p51.Material = Enum.Material.SmoothPlastic
p51.CFrame = CFrame.new(-1.55929291, 3.85010386, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p51.CanCollide = false
p51.Locked = true
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("BlockMesh", p51)
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p52 = Instance.new("Part", m6)
p52.BrickColor = BrickColor.new("Black")
p52.Material = Enum.Material.SmoothPlastic
p52.CFrame = CFrame.new(-1.41937149, 3.71018171, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p52.CanCollide = false
p52.Locked = true
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("BlockMesh", p52)
b52.Name = "Mesh"
b52.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p53 = Instance.new("WedgePart", m6)
p53.BrickColor = BrickColor.new("Black")
p53.Material = Enum.Material.SmoothPlastic
p53.Name = "Wedge"
p53.CFrame = CFrame.new(-0.0201580226, 2.03113341, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p53.CanCollide = false
p53.Locked = true
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b53 = Instance.new("SpecialMesh", p53)
b53.MeshType = Enum.MeshType.Wedge
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p54 = Instance.new("Part", m6)
p54.BrickColor = BrickColor.new("Black")
p54.Material = Enum.Material.SmoothPlastic
p54.CFrame = CFrame.new(-0.300009966, 1.68132639, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p54.CanCollide = false
p54.Locked = true
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.232357651, 0.279841423, 0.232357636)
p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b54 = Instance.new("BlockMesh", p54)
b54.Name = "Mesh"
b54.Scale = Vector3.new(0.602178395, 1, 0.602178097)
p55 = Instance.new("WedgePart", m6)
p55.BrickColor = BrickColor.new("Black")
p55.Material = Enum.Material.SmoothPlastic
p55.Name = "Wedge"
p55.CFrame = CFrame.new(0.39960131, 2.10108781, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p55.CanCollide = false
p55.Locked = true
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b55 = Instance.new("SpecialMesh", p55)
b55.MeshType = Enum.MeshType.Wedge
b55.Name = "Mesh"
b55.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p56 = Instance.new("WedgePart", m6)
p56.BrickColor = BrickColor.new("Really red")
p56.Material = Enum.Material.SmoothPlastic
p56.Name = "Wedge"
p56.CFrame = CFrame.new(1.23911822, 3.29041815, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p56.CanCollide = false
p56.Locked = true
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b56 = Instance.new("SpecialMesh", p56)
b56.MeshType = Enum.MeshType.Wedge
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p57 = Instance.new("WedgePart", m6)
p57.BrickColor = BrickColor.new("Black")
p57.Material = Enum.Material.SmoothPlastic
p57.Name = "Wedge"
p57.CFrame = CFrame.new(0.749394774, 4.54971123, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p57.CanCollide = false
p57.Locked = true
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b57 = Instance.new("SpecialMesh", p57)
b57.MeshType = Enum.MeshType.Wedge
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p58 = Instance.new("Part", m6)
p58.BrickColor = BrickColor.new("Black")
p58.Material = Enum.Material.SmoothPlastic
p58.CFrame = CFrame.new(0.819354892, 3.71018171, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p58.CanCollide = false
p58.Locked = true
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b58 = Instance.new("BlockMesh", p58)
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p59 = Instance.new("WedgePart", m6)
p59.BrickColor = BrickColor.new("Black")
p59.Material = Enum.Material.SmoothPlastic
p59.Name = "Wedge"
p59.CFrame = CFrame.new(0.259678036, 2.31096983, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p59.CanCollide = false
p59.Locked = true
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b59 = Instance.new("SpecialMesh", p59)
b59.MeshType = Enum.MeshType.Wedge
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p60 = Instance.new("Part", m6)
p60.BrickColor = BrickColor.new("Black")
p60.Material = Enum.Material.SmoothPlastic
p60.Name = "NeckPart"
p60.CFrame = CFrame.new(-0.300008506, 4.82955122, 3.8997519, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p60.CanCollide = false
p60.Locked = true
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(1.25928628, 0.232357651, 0.419762105)
p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b60 = Instance.new("BlockMesh", p60)
b60.Name = "Mesh"
b60.Scale = Vector3.new(1, 0.602178097, 1)
p61 = Instance.new("Part", m6)
p61.BrickColor = BrickColor.new("Black")
p61.Material = Enum.Material.SmoothPlastic
p61.CFrame = CFrame.new(0.959281087, 2.73073363, 4.03967333, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p61.CanCollide = false
p61.Locked = true
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b61 = Instance.new("BlockMesh", p61)
b61.Name = "Mesh"
b61.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p62 = Instance.new("WedgePart", m6)
p62.BrickColor = BrickColor.new("Black")
p62.Material = Enum.Material.SmoothPlastic
p62.Name = "Wedge"
p62.CFrame = CFrame.new(1.16916382, 2.87065434, 4.03967333, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p62.CanCollide = false
p62.Locked = true
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b62 = Instance.new("SpecialMesh", p62)
b62.MeshType = Enum.MeshType.Wedge
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p63 = Instance.new("WedgePart", m6)
p63.BrickColor = BrickColor.new("Really red")
p63.Material = Enum.Material.SmoothPlastic
p63.Name = "Wedge"
p63.CFrame = CFrame.new(1.37904489, 2.73073268, 4.03967333, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p63.CanCollide = false
p63.Locked = true
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b63 = Instance.new("SpecialMesh", p63)
b63.MeshType = Enum.MeshType.Wedge
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p64 = Instance.new("WedgePart", m6)
p64.BrickColor = BrickColor.new("Black")
p64.Material = Enum.Material.SmoothPlastic
p64.Name = "Wedge"
p64.CFrame = CFrame.new(-0.439923674, 1.68132377, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p64.CanCollide = false
p64.Locked = true
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.232357651, 0.279841423, 0.232357636)
p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b64 = Instance.new("SpecialMesh", p64)
b64.MeshType = Enum.MeshType.Wedge
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p65 = Instance.new("WedgePart", m6)
p65.BrickColor = BrickColor.new("Black")
p65.Material = Enum.Material.SmoothPlastic
p65.Name = "Wedge"
p65.CFrame = CFrame.new(-0.859687686, 2.31096983, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p65.CanCollide = false
p65.Locked = true
p65.FormFactor = Enum.FormFactor.Custom
p65.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b65 = Instance.new("SpecialMesh", p65)
b65.MeshType = Enum.MeshType.Wedge
b65.Name = "Mesh"
b65.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p66 = Instance.new("WedgePart", m6)
p66.BrickColor = BrickColor.new("Black")
p66.Material = Enum.Material.SmoothPlastic
p66.Name = "Wedge"
p66.CFrame = CFrame.new(-1.55929291, 3.71018267, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p66.CanCollide = false
p66.Locked = true
p66.FormFactor = Enum.FormFactor.Custom
p66.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b66 = Instance.new("SpecialMesh", p66)
b66.MeshType = Enum.MeshType.Wedge
b66.Name = "Mesh"
b66.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p67 = Instance.new("WedgePart", m6)
p67.BrickColor = BrickColor.new("Black")
p67.Material = Enum.Material.SmoothPlastic
p67.Name = "Wedge"
p67.CFrame = CFrame.new(-0.719767809, 2.31096911, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p67.CanCollide = false
p67.Locked = true
p67.FormFactor = Enum.FormFactor.Custom
p67.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b67 = Instance.new("SpecialMesh", p67)
b67.MeshType = Enum.MeshType.Wedge
b67.Name = "Mesh"
b67.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p68 = Instance.new("WedgePart", m6)
p68.BrickColor = BrickColor.new("Really red")
p68.Name = "Wedge"
p68.CFrame = CFrame.new(-1.17450571, 1.89121199, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p68.CanCollide = false
p68.Locked = true
p68.FormFactor = Enum.FormFactor.Custom
p68.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b68 = Instance.new("SpecialMesh", p68)
b68.MeshType = Enum.MeshType.Wedge
b68.Name = "Mesh"
b68.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p69 = Instance.new("WedgePart", m6)
p69.BrickColor = BrickColor.new("Really red")
p69.Name = "Wedge"
p69.CFrame = CFrame.new(-1.10454547, 1.89121199, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p69.CanCollide = false
p69.Locked = true
p69.FormFactor = Enum.FormFactor.Custom
p69.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b69 = Instance.new("SpecialMesh", p69)
b69.MeshType = Enum.MeshType.Wedge
b69.Name = "Mesh"
b69.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p70 = Instance.new("WedgePart", m6)
p70.BrickColor = BrickColor.new("Black")
p70.Material = Enum.Material.SmoothPlastic
p70.Name = "Wedge"
p70.CFrame = CFrame.new(0.889316559, 3.99002528, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p70.CanCollide = false
p70.Locked = true
p70.FormFactor = Enum.FormFactor.Custom
p70.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b70 = Instance.new("SpecialMesh", p70)
b70.MeshType = Enum.MeshType.Wedge
b70.Name = "Mesh"
b70.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p71 = Instance.new("WedgePart", m6)
p71.BrickColor = BrickColor.new("Really red")
p71.Name = "Wedge"
p71.CFrame = CFrame.new(-0.334977895, 1.47144794, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p71.CanCollide = false
p71.Locked = true
p71.FormFactor = Enum.FormFactor.Custom
p71.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b71 = Instance.new("SpecialMesh", p71)
b71.MeshType = Enum.MeshType.Wedge
b71.Name = "Mesh"
b71.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p72 = Instance.new("WedgePart", m6)
p72.BrickColor = BrickColor.new("Black")
p72.Material = Enum.Material.SmoothPlastic
p72.Name = "Wedge"
p72.CFrame = CFrame.new(-0.579845786, 2.03112626, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p72.CanCollide = false
p72.Locked = true
p72.FormFactor = Enum.FormFactor.Custom
p72.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b72 = Instance.new("SpecialMesh", p72)
b72.MeshType = Enum.MeshType.Wedge
b72.Name = "Mesh"
b72.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p73 = Instance.new("WedgePart", m6)
p73.BrickColor = BrickColor.new("Black")
p73.Material = Enum.Material.SmoothPlastic
p73.Name = "Wedge"
p73.CFrame = CFrame.new(-1.41937125, 2.31096983, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p73.CanCollide = false
p73.Locked = true
p73.FormFactor = Enum.FormFactor.Custom
p73.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b73 = Instance.new("SpecialMesh", p73)
b73.MeshType = Enum.MeshType.Wedge
b73.Name = "Mesh"
b73.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p74 = Instance.new("WedgePart", m6)
p74.BrickColor = BrickColor.new("Black")
p74.Material = Enum.Material.SmoothPlastic
p74.Name = "Wedge"
p74.CFrame = CFrame.new(1.16916382, 2.59081125, 4.03967333, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p74.CanCollide = false
p74.Locked = true
p74.FormFactor = Enum.FormFactor.Custom
p74.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b74 = Instance.new("SpecialMesh", p74)
b74.MeshType = Enum.MeshType.Wedge
b74.Name = "Mesh"
b74.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p75 = Instance.new("WedgePart", m6)
p75.BrickColor = BrickColor.new("Black")
p75.Material = Enum.Material.SmoothPlastic
p75.Name = "Wedge"
p75.CFrame = CFrame.new(-0.160081401, 1.68132377, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p75.CanCollide = false
p75.Locked = true
p75.FormFactor = Enum.FormFactor.Custom
p75.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b75 = Instance.new("SpecialMesh", p75)
b75.MeshType = Enum.MeshType.Wedge
b75.Name = "Mesh"
b75.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p76 = Instance.new("WedgePart", m6)
p76.BrickColor = BrickColor.new("Black")
p76.Material = Enum.Material.SmoothPlastic
p76.Name = "Wedge"
p76.CFrame = CFrame.new(0.819362521, 2.31096983, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p76.CanCollide = false
p76.Locked = true
p76.FormFactor = Enum.FormFactor.Custom
p76.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b76 = Instance.new("SpecialMesh", p76)
b76.MeshType = Enum.MeshType.Wedge
b76.Name = "Mesh"
b76.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p77 = Instance.new("WedgePart", m6)
p77.BrickColor = BrickColor.new("Really red")
p77.Material = Enum.Material.SmoothPlastic
p77.Name = "Wedge"
p77.CFrame = CFrame.new(-1.55929291, 4.40979004, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p77.CanCollide = false
p77.Locked = true
p77.FormFactor = Enum.FormFactor.Custom
p77.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b77 = Instance.new("SpecialMesh", p77)
b77.MeshType = Enum.MeshType.Wedge
b77.Name = "Mesh"
b77.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p78 = Instance.new("WedgePart", m6)
p78.BrickColor = BrickColor.new("Black")
p78.Material = Enum.Material.SmoothPlastic
p78.Name = "Wedge"
p78.CFrame = CFrame.new(-1.34941173, 4.54971123, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p78.CanCollide = false
p78.Locked = true
p78.FormFactor = Enum.FormFactor.Custom
p78.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b78 = Instance.new("SpecialMesh", p78)
b78.MeshType = Enum.MeshType.Wedge
b78.Name = "Mesh"
b78.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p79 = Instance.new("WedgePart", m6)
p79.BrickColor = BrickColor.new("Really red")
p79.Material = Enum.Material.SmoothPlastic
p79.Name = "Wedge"
p79.CFrame = CFrame.new(-1.6992141, 3.85010386, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p79.CanCollide = false
p79.Locked = true
p79.FormFactor = Enum.FormFactor.Custom
p79.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b79 = Instance.new("SpecialMesh", p79)
b79.MeshType = Enum.MeshType.Wedge
b79.Name = "Mesh"
b79.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p80 = Instance.new("WedgePart", m6)
p80.BrickColor = BrickColor.new("Black")
p80.Material = Enum.Material.SmoothPlastic
p80.Name = "Wedge"
p80.CFrame = CFrame.new(-1.6992135, 3.1504972, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p80.CanCollide = false
p80.Locked = true
p80.FormFactor = Enum.FormFactor.Custom
p80.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b80 = Instance.new("SpecialMesh", p80)
b80.MeshType = Enum.MeshType.Wedge
b80.Name = "Mesh"
b80.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
w1 = Instance.new("Weld", p1)
w1.Name = "Joint"
w1.Part0 = p1
w1.C0 = CFrame.new(0, 0, 0.139921591, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w1.Part1 = p47
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Joint"
w2.Part0 = p2
w2.C0 = CFrame.new(0, -2.7097974e-006, 0.139918938, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w2.Part1 = p11
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Joint"
w3.Part0 = p3
w3.C0 = CFrame.new(0, 0.559684455, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p50
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Joint"
w4.Part0 = p4
w4.C0 = CFrame.new(-0.139921427, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Joint"
w5.Part0 = p5
w5.C0 = CFrame.new(-0.139920607, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p27
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Joint"
w6.Part0 = p6
w6.C0 = CFrame.new(6.98293934e-006, 0.13992101, 1.35489881e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p14
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Joint"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.139921531, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p10
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Joint"
w8.Part0 = p8
w8.C0 = CFrame.new(0, 0.209881723, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p32
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Joint"
w9.Part0 = p9
w9.C0 = CFrame.new(0, 0.279842764, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p16
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Joint"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.139921531, 1.04222977e-006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p61
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Joint"
w11.Part0 = p11
w11.C0 = CFrame.new(0, 0.209881723, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p13
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Joint"
w12.Part0 = p12
w12.C0 = CFrame.new(-0.139921427, -0.139921635, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p29
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Joint"
w13.Part0 = p13
w13.C0 = CFrame.new(0.839523137, 0.349802732, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p48
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Joint"
w14.Part0 = p14
w14.C0 = CFrame.new(-6.98293934e-006, 1.25067584e-006, -0.139921844, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p60
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Joint"
w15.Part0 = p15
w15.C0 = CFrame.new(-0.139920712, -0.139923528, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p17
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p16)
w16.Name = "Joint"
w16.Part0 = p16
w16.C0 = CFrame.new(1.45912168e-006, 0.349802852, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p48
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Joint"
w17.Part0 = p17
w17.C0 = CFrame.new(-0.97944206, 0.0699603036, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w17.Part1 = p50
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Joint"
w18.Part0 = p18
w18.C0 = CFrame.new(-0.979444683, 0.0699603036, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p50
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p19)
w19.Name = "Joint"
w19.Part0 = p19
w19.C0 = CFrame.new(0, -0.2098784, 0.0349924229, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w19.Part1 = p54
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p20)
w20.Name = "Joint"
w20.Part0 = p20
w20.C0 = CFrame.new(-0.139921427, -0.13992101, 1.35489881e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20.Part1 = p21
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p21)
w21.Name = "Joint"
w21.Part0 = p21
w21.C0 = CFrame.new(-1.25928402, 0.0699627995, -1.35489881e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21.Part1 = p37
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p22)
w22.Name = "Joint"
w22.Part0 = p22
w22.C0 = CFrame.new(0, -0.209878504, 0.0349705629, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w22.Part1 = p8
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p23)
w23.Name = "Joint"
w23.Part0 = p23
w23.C0 = CFrame.new(0, 0, 0.139921427, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w23.Part1 = p35
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p24)
w24.Name = "Joint"
w24.Part0 = p24
w24.C0 = CFrame.new(8.33783815e-007, -0.209883824, 1.25928962, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w24.Part1 = p48
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p25)
w25.Name = "Joint"
w25.Part0 = p25
w25.C0 = CFrame.new(0, -0.209878504, 0.0349897929, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w25.Part1 = p8
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p26)
w26.Name = "Joint"
w26.Part0 = p26
w26.C0 = CFrame.new(0, -3.33513526e-006, 0.769568086, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w26.Part1 = p6
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p27)
w27.Name = "Joint"
w27.Part0 = p27
w27.C0 = CFrame.new(-1.25928354, -0.0699575916, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w27.Part1 = p48
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p28)
w28.Name = "Joint"
w28.Part0 = p28
w28.C0 = CFrame.new(0, -0.13992101, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w28.Part1 = p35
w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p29)
w29.Name = "Joint"
w29.Part0 = p29
w29.C0 = CFrame.new(-1.25928354, 0.0699634254, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w29.Part1 = p37
w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p30)
w30.Name = "Joint"
w30.Part0 = p30
w30.C0 = CFrame.new(0, -0.139920816, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w30.Part1 = p20
w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31 = Instance.new("Weld", p31)
w31.Name = "Joint"
w31.Part0 = p31
w31.C0 = CFrame.new(0, -3.02246644e-006, 0.419769108, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w31.Part1 = p16
w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32 = Instance.new("Weld", p32)
w32.Name = "Joint"
w32.Part0 = p32
w32.C0 = CFrame.new(-0.839526176, 0.349802852, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32.Part1 = p48
w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33 = Instance.new("Weld", p33)
w33.Name = "Joint"
w33.Part0 = p33
w33.C0 = CFrame.new(1.3548987e-006, -0.279842436, 0.0699624866, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w33.Part1 = p21
w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34 = Instance.new("Weld", p34)
w34.Name = "Joint"
w34.Part0 = p34
w34.C0 = CFrame.new(0, -0.279842019, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w34.Part1 = p27
w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35 = Instance.new("Weld", p35)
w35.Name = "Joint"
w35.Part0 = p35
w35.C0 = CFrame.new(-0.139920607, -0.139922053, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35.Part1 = p58
w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w36 = Instance.new("Weld", p36)
w36.Name = "Joint"
w36.Part0 = p36
w36.C0 = CFrame.new(0, -0.279843062, 0.0699611381, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w36.Part1 = p29
w36.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37 = Instance.new("Weld", p37)
w37.Name = "Joint"
w37.Part0 = p37
w37.C0 = CFrame.new(0, 0.559682429, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37.Part1 = p3
w37.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w38 = Instance.new("Weld", p38)
w38.Name = "Joint"
w38.Part0 = p38
w38.C0 = CFrame.new(0, 0, 0.13992101, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w38.Part1 = p4
w38.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w39 = Instance.new("Weld", p39)
w39.Name = "Joint"
w39.Part0 = p39
w39.C0 = CFrame.new(0, 0, 0.139921427, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w39.Part1 = p12
w39.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w40 = Instance.new("Weld", p40)
w40.Name = "Joint"
w40.Part0 = p40
w40.C0 = CFrame.new(0, -0.279843479, 0.0699611381, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w40.Part1 = p52
w40.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w41 = Instance.new("Weld", p41)
w41.Name = "Joint"
w41.Part0 = p41
w41.C0 = CFrame.new(0, -0.139921427, 0.0699607134, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w41.Part1 = p5
w41.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w42 = Instance.new("Weld", p42)
w42.Name = "Joint"
w42.Part0 = p42
w42.C0 = CFrame.new(0, -2.7097974e-006, 0.139925033, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w42.Part1 = p8
w42.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w43 = Instance.new("Weld", p43)
w43.Name = "Joint"
w43.Part0 = p43
w43.C0 = CFrame.new(0, -0.139921218, 0.0699607134, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w43.Part1 = p5
w43.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w44 = Instance.new("Weld", p44)
w44.Name = "Joint"
w44.Part0 = p44
w44.C0 = CFrame.new(0, -0.139921844, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w44.Part1 = p15
w44.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w45 = Instance.new("Weld", p45)
w45.Name = "Joint"
w45.Part0 = p45
w45.C0 = CFrame.new(0, -2.7097974e-006, 0.139921531, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w45.Part1 = p11
w45.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w46 = Instance.new("Weld", p46)
w46.Name = "Joint"
w46.Part0 = p46
w46.C0 = CFrame.new(0, -3.33513526e-006, 0.769562066, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w46.Part1 = p6
w46.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w47 = Instance.new("Weld", p47)
w47.Name = "Joint"
w47.Part0 = p47
w47.C0 = CFrame.new(-0.139920652, -0.139923528, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w47.Part1 = p18
w47.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w48 = Instance.new("Weld", p48)
w48.Name = "Joint"
w48.Part0 = p48
w48.C0 = CFrame.new(0, 0.559684873, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w48.Part1 = p37
w48.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w49 = Instance.new("Weld", p49)
w49.Name = "Joint"
w49.Part0 = p49
w49.C0 = CFrame.new(0, -0.139921844, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w49.Part1 = p47
w49.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w50 = Instance.new("Weld", p50)
w50.Name = "Joint"
w50.Part0 = p50
w50.C0 = CFrame.new(0, 0.349801898, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w50.Part1 = p6
w50.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w51 = Instance.new("Weld", p51)
w51.Name = "Joint"
w51.Part0 = p51
w51.C0 = CFrame.new(-0.139921427, -0.139922053, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w51.Part1 = p52
w51.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w52 = Instance.new("Weld", p52)
w52.Name = "Joint"
w52.Part0 = p52
w52.C0 = CFrame.new(-1.11936295, 0.0699607134, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w52.Part1 = p3
w52.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w53 = Instance.new("Weld", p53)
w53.Name = "Joint"
w53.Part0 = p53
w53.C0 = CFrame.new(0, 3.9604729e-006, 0.279851943, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w53.Part1 = p9
w53.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w54 = Instance.new("Weld", p54)
w54.Name = "Joint"
w54.Part0 = p54
w54.C0 = CFrame.new(0, 0.349802941, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w54.Part1 = p9
w54.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w55 = Instance.new("Weld", p55)
w55.Name = "Joint"
w55.Part0 = p55
w55.C0 = CFrame.new(0, -2.7097974e-006, 0.139916331, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w55.Part1 = p8
w55.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w56 = Instance.new("Weld", p56)
w56.Name = "Joint"
w56.Part0 = p56
w56.C0 = CFrame.new(0, 0, 0.139921322, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w56.Part1 = p20
w56.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w57 = Instance.new("Weld", p57)
w57.Name = "Joint"
w57.Part0 = p57
w57.C0 = CFrame.new(0, -0.139921427, -0.0699620694, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w57.Part1 = p47
w57.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w58 = Instance.new("Weld", p58)
w58.Name = "Joint"
w58.Part0 = p58
w58.C0 = CFrame.new(-1.11936343, 0.0699607134, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w58.Part1 = p3
w58.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w59 = Instance.new("Weld", p59)
w59.Name = "Joint"
w59.Part0 = p59
w59.C0 = CFrame.new(0, -2.50135167e-006, 0.279839605, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w59.Part1 = p32
w59.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w60 = Instance.new("Weld", p61)
w60.Name = "Joint"
w60.Part0 = p61
w60.C0 = CFrame.new(-1.25928962, -0.0699586272, -8.33783815e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w60.Part1 = p48
w60.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w61 = Instance.new("Weld", p62)
w61.Name = "Joint"
w61.Part0 = p62
w61.C0 = CFrame.new(0, -0.139921635, 0.0699612424, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w61.Part1 = p10
w61.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w62 = Instance.new("Weld", p63)
w62.Name = "Joint"
w62.Part0 = p63
w62.C0 = CFrame.new(0, 0, 0.139920712, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w62.Part1 = p7
w62.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w63 = Instance.new("Weld", p64)
w63.Name = "Joint"
w63.Part0 = p64
w63.C0 = CFrame.new(0, -2.60557431e-006, 0.139913708, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w63.Part1 = p54
w63.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w64 = Instance.new("Weld", p65)
w64.Name = "Joint"
w64.Part0 = p65
w64.C0 = CFrame.new(0, -2.50135167e-006, 0.279843956, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w64.Part1 = p13
w64.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w65 = Instance.new("Weld", p66)
w65.Name = "Joint"
w65.Part0 = p66
w65.C0 = CFrame.new(0, 1.04222977e-006, 0.139921427, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w65.Part1 = p52
w65.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w66 = Instance.new("Weld", p67)
w66.Name = "Joint"
w66.Part0 = p67
w66.C0 = CFrame.new(0, -3.02246644e-006, 0.419757843, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w66.Part1 = p16
w66.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w67 = Instance.new("Weld", p68)
w67.Name = "Joint"
w67.Part0 = p68
w67.C0 = CFrame.new(0, -0.209878504, 0.0349741057, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w67.Part1 = p11
w67.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w68 = Instance.new("Weld", p69)
w68.Name = "Joint"
w68.Part0 = p69
w68.C0 = CFrame.new(0, -0.209878504, 0.0349861942, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w68.Part1 = p11
w68.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w69 = Instance.new("Weld", p70)
w69.Name = "Joint"
w69.Part0 = p70
w69.C0 = CFrame.new(0, -0.279843479, 0.0699616596, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w69.Part1 = p58
w69.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w70 = Instance.new("Weld", p71)
w70.Name = "Joint"
w70.Part0 = p71
w70.C0 = CFrame.new(0, -0.2098784, 0.0349679329, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w70.Part1 = p54
w70.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w71 = Instance.new("Weld", p72)
w71.Name = "Joint"
w71.Part0 = p72
w71.C0 = CFrame.new(0, -3.02246644e-006, 0.27983579, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w71.Part1 = p9
w71.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w72 = Instance.new("Weld", p73)
w72.Name = "Joint"
w72.Part0 = p73
w72.C0 = CFrame.new(0, -2.50135167e-006, 0.279839605, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w72.Part1 = p13
w72.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w73 = Instance.new("Weld", p74)
w73.Name = "Joint"
w73.Part0 = p74
w73.C0 = CFrame.new(0, -0.139921427, 0.0699612424, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w73.Part1 = p10
w73.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w74 = Instance.new("Weld", p75)
w74.Name = "Joint"
w74.Part0 = p75
w74.C0 = CFrame.new(0, -2.60557431e-006, 0.139928564, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w74.Part1 = p54
w74.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w75 = Instance.new("Weld", p76)
w75.Name = "Joint"
w75.Part0 = p76
w75.C0 = CFrame.new(0, -2.50135167e-006, 0.27984485, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w75.Part1 = p32
w75.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w76 = Instance.new("Weld", p77)
w76.Name = "Joint"
w76.Part0 = p77
w76.C0 = CFrame.new(0, 0, 0.139921635, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w76.Part1 = p15
w76.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w77 = Instance.new("Weld", p78)
w77.Name = "Joint"
w77.Part0 = p78
w77.C0 = CFrame.new(0, -0.139921427, -0.0699594691, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w77.Part1 = p15
w77.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w78 = Instance.new("Weld", p79)
w78.Name = "Joint"
w78.Part0 = p79
w78.C0 = CFrame.new(0, 0, 0.139921218, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w78.Part1 = p51
w78.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w79 = Instance.new("Weld", p80)
w79.Name = "Joint"
w79.Part0 = p80
w79.C0 = CFrame.new(0, -0.13992101, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w79.Part1 = p12
w79.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m6.Parent = torso
m6:MakeJoints()
----------------------------------------------------
local cor6 = Instance.new("Part", torso.Cloak)
cor6.Name = "Thingy"
cor6.Locked = true
cor6.BottomSurface = 0
cor6.CanCollide = false
cor6.Size = Vector3.new(1,1,1)
cor6.Transparency = 1
cor6.TopSurface = 0
corw6 = Instance.new("Weld", cor6)
corw6.Part0 = torso
corw6.Part1 = cor6
corw6.C0 = CFrame.new(0, 1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld6 = Instance.new("Weld", torso.Cloak.NeckPart)
weld6.Part0 = cor6
weld6.Part1 = torso.Cloak.NeckPart
weld6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Amulet
m7 = Instance.new("Model")
m7.Name = "Amulet"
p1 = Instance.new("Part", m7)
p1.BrickColor = BrickColor.new("Really red")
p1.Material = Enum.Material.Neon
p1.Name = "Center"
p1.CFrame = CFrame.new(-1.0658141e-014, 14.4125643, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Shape = Enum.PartType.Cylinder
p1.Size = Vector3.new(0.5, 0.5, 0.5)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p2 = Instance.new("Part", m7)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.Name = "Bottom"
p2.CFrame = CFrame.new(1.19209318e-007, 14.1625719, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.649999976, 0.649999976)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p2)
b1.MeshType = Enum.MeshType.Cylinder
b1.Name = "Mesh"
p3 = Instance.new("Part", m7)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(1.23580463e-007, 14.4625673, -0.280000001, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p3)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p4 = Instance.new("Part", m7)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(1.19209318e-007, 14.4625673, 0.280000001, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p4)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p5 = Instance.new("Part", m7)
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(0.14000012, 14.4625673, -0.242487118, -3.78551732e-008, -0.866025388, -0.5, 1, -4.37113883e-008, 0, -2.18556941e-008, -0.5, 0.866025388)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p5)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p6 = Instance.new("Part", m7)
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(-0.139999881, 14.4625673, 0.242487103, -3.78551732e-008, -0.866025388, -0.5, 1, -4.37113883e-008, 0, -2.18556941e-008, -0.5, 0.866025388)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p6)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p7 = Instance.new("Part", m7)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(-0.242486984, 14.4625673, 0.139999986, -2.18556924e-008, -0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551732e-008, -0.866025388, 0.5)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p7)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p8 = Instance.new("Part", m7)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Metal
p8.CFrame = CFrame.new(0.242487192, 14.4625673, -0.139999971, -2.18556924e-008, -0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551732e-008, -0.866025388, 0.5)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p8)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p9 = Instance.new("Part", m7)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Metal
p9.CFrame = CFrame.new(0.280000091, 14.4625673, -1.64313008e-014, 0, 0, -1, 1, -4.37113847e-008, 0, -4.37113847e-008, -1, 0)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p9)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p10 = Instance.new("Part", m7)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.Metal
p10.CFrame = CFrame.new(-0.279999852, 14.4625673, -1.49011772e-008, 0, 0, -1, 1, -4.37113847e-008, 0, -4.37113847e-008, -1, 0)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p10)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p11 = Instance.new("Part", m7)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(-0.242486984, 14.4625673, -0.139999986, 2.18556906e-008, 0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551697e-008, -0.866025388, -0.5)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p11)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p12 = Instance.new("Part", m7)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Metal
p12.CFrame = CFrame.new(0.242487192, 14.4625673, 0.139999971, 2.18556906e-008, 0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551697e-008, -0.866025388, -0.5)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p12)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p13 = Instance.new("Part", m7)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Metal
p13.CFrame = CFrame.new(-0.139999866, 14.4625673, -0.242487073, 3.78551732e-008, 0.866025388, -0.5, 1, -4.37113812e-008, 1.77635684e-015, -2.18556924e-008, -0.5, -0.866025388)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p13)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p14 = Instance.new("Part", m7)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(0.14000012, 14.4625673, 0.242487073, 3.78551732e-008, 0.866025388, -0.5, 1, -4.37113812e-008, 1.77635684e-015, -2.18556924e-008, -0.5, -0.866025388)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p14)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p15 = Instance.new("Part", m7)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Metal
p15.Name = "Top"
p15.CFrame = CFrame.new(0, 14.7125645, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.649999976, 0.649999976)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p15)
b14.MeshType = Enum.MeshType.Cylinder
b14.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Joint"
w1.Part0 = p1
w1.C0 = CFrame.new(0.300000191, -1.31134357e-008, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p15
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Joint"
w2.Part0 = p2
w2.C0 = CFrame.new(0.249992371, 1.08281824e-007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p1
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Joint"
w3.Part0 = p3
w3.C0 = CFrame.new(-0.0500030518, 1.25766178e-007, 0.280000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Joint"
w4.Part0 = p4
w4.C0 = CFrame.new(-0.0500030518, 1.21395033e-007, -0.280000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p1
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Joint"
w5.Part0 = p5
w5.C0 = CFrame.new(-0.0500030518, 1.00163732e-007, 0.280000061, 1, -5.85621507e-009, -2.18556941e-008, -5.85621507e-009, 0.866025388, -0.5, 2.18556941e-008, 0.5, 0.866025388)
w5.Part1 = p1
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Joint"
w6.Part0 = p6
w6.C0 = CFrame.new(-0.0500030518, 1.00163732e-007, -0.279999942, 1, -5.85621507e-009, -2.18556941e-008, -5.85621507e-009, 0.866025388, -0.5, 2.18556941e-008, 0.5, 0.866025388)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Joint"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.0500030518, 5.54602479e-008, -0.279999882, 1, -2.18556959e-008, -3.78551732e-008, -2.18556906e-008, 0.5, -0.866025388, 3.78551732e-008, 0.866025388, 0.5)
w7.Part1 = p1
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Joint"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.0500030518, 7.03614091e-008, 0.280000061, 1, -2.18556959e-008, -3.78551732e-008, -2.18556906e-008, 0.5, -0.866025388, 3.78551732e-008, 0.866025388, 0.5)
w8.Part1 = p1
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Joint"
w9.Part0 = p9
w9.C0 = CFrame.new(-0.0500030518, 2.1856863e-009, 0.280000091, 1, -4.37113883e-008, -4.37113847e-008, -4.37113847e-008, 1.91068525e-015, -1, 4.37113883e-008, 1, 0)
w9.Part1 = p1
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Joint"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.0500030518, -1.27154749e-008, -0.279999852, 1, -4.37113883e-008, -4.37113847e-008, -4.37113847e-008, 1.91068525e-015, -1, 4.37113883e-008, 1, 0)
w10.Part1 = p1
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Joint"
w11.Part0 = p11
w11.C0 = CFrame.new(-0.0500030518, -5.6298461e-008, -0.279999882, 1, -6.55670789e-008, -3.78551697e-008, -6.55670789e-008, -0.5, -0.866025388, 3.78551732e-008, 0.866025388, -0.5)
w11.Part1 = p1
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Joint"
w12.Part0 = p12
w12.C0 = CFrame.new(-0.0500030518, -6.37490416e-008, 0.280000061, 1, -6.55670789e-008, -3.78551697e-008, -6.55670789e-008, -0.5, -0.866025388, 3.78551732e-008, 0.866025388, -0.5)
w12.Part1 = p1
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Joint"
w13.Part0 = p13
w13.C0 = CFrame.new(-0.0500030518, -1.01001945e-007, -0.279999912, 1, -8.15665615e-008, -2.18556924e-008, -8.15665544e-008, -0.866025388, -0.5, 2.18556959e-008, 0.5, -0.866025388)
w13.Part1 = p1
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Joint"
w14.Part0 = p14
w14.C0 = CFrame.new(-0.0500030518, -1.08452525e-007, 0.280000031, 1, -8.15665615e-008, -2.18556924e-008, -8.15665544e-008, -0.866025388, -0.5, 2.18556959e-008, 0.5, -0.866025388)
w14.Part1 = p1
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m7.Parent = torso
m7:MakeJoints()
----------------------------------------------------
local cor7 = Instance.new("Part", torso.Amulet)
cor7.Name = "Thingy"
cor7.Locked = true
cor7.BottomSurface = 0
cor7.CanCollide = false
cor7.Size = Vector3.new(1, 1, 1)
cor7.Transparency = 1
cor7.TopSurface = 0
corw7 = Instance.new("Weld", cor7)
corw7.Part0 = torso.Torso.Connection
corw7.Part1 = cor7
corw7.C0 = CFrame.new(0, 0.26, 0.1) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0))
corw7.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(140))
weld7 = Instance.new("Weld", torso.Amulet)
weld7.Part0 = cor7
weld7.Part1 = torso.Amulet.Top
weld7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))


Amulite = Instance.new("PointLight",m7.Center)
Amulite.Brightness = 0
Amulite.Color = Color3.new(1,0,0)

models = {m,m2,m3,m4,m5,m6,m7}
parts = {}
Stepped:connect(function()
	for i,v in pairs(models) do
		for _, a in pairs(v:GetChildren()) do
			if v:IsA("Part") and v.Name ~= "Thingy" then
				table.insert(parts, a)
				for i,v in pairs(parts) do
					v.CanCollide = false
				end
			end
		end
	end
end)

coroutine.resume(coroutine.create(function()
while wait() do
	wait(5)
	for i=1,100 do wait()
		if invisible == false then
		Amulite.Brightness=Amulite.Brightness+0.02
		elseif invisible == true then
		Amulite.Brightness = 0
		end
	end
	for i=1,100 do wait()
		if invisible == false then
		Amulite.Brightness=Amulite.Brightness-0.02
		elseif invisible == true then
		Amulite.Brightness = 0
		end
	end
end
end))
while true do
  swait()
local grab = false
local Smooth = 1
local sine = 0
local change = 1
local val = 0
local ffing = false
CR = torso.Cloak.Rotater
CR2 = torso.Cloak.CapeLevel1
CR3 = torso.Cloak.CapeLevel2
CR4 = torso.Cloak.CapeLevel3
CR5 = torso.Cloak.CapeLevel4
jump = false
	if char.Humanoid.Jump == true then
		jump = true
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		if f then
			ffing = true
		else
			ffing = false
		end
	end)
	sine = sine + change
	if jump == true then
		animpose = "Jumping"
	elseif ffing == true then
		animpose = "Freefalling"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
		animpose = "Running"
	end
	RightLeg = CFrame.new(0.5,-1,0)
	LeftLeg = CFrame.new(-0.5,-1,0)

	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2+2*math.cos(sine/22)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(5), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(-5), math.rad(5)), 0.2)
			--]]elseif stanceToggle == "Idle2" then
				--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-22-4*math.cos(sine/12)),math.rad(-40-2*math.cos(sine/12)),math.rad(24+2*math.cos(sine/12))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.6,-0.6)*CFrame.Angles(math.rad(90+4*math.cos(sine/12)),math.rad(0),math.rad(50-2*math.cos(sine/12))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-6+2.5*math.cos(sine/12)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20+2*math.cos(sine/12)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-7-2*math.cos(sine/12)), math.rad(7), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.2) * CFrame.Angles(math.rad(-30-2*math.cos(sine/12)), math.rad(-9), math.rad(5)), 0.2)
			--]]end
			swait()
		end
		else
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.5
			if stanceToggle == "Idle1" then
				--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1.05+0.03*math.cos(sine/5), 0-0.1*math.cos(sine/10)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				--corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+8*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.3)
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-4-2*math.cos(sine/10)),0,0),0.1)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(8+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-8-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
			--]]elseif stanceToggle == "Idle2" then
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-6),0,0),0.1)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-7-1*math.cos(sine/6)),0,0),0.1)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-7-1*math.cos(sine/6)),0,0),0.1)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-7-1*math.cos(sine/6)),0,0),0.1)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-8-1*math.cos(sine/6)),0,0),0.1)
				--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65-0.1*math.cos(sine/3),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20-2*math.cos(sine/3))), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.23, 0.5, -.56) * CFrame.Angles(math.rad(88+4*math.cos(sine/3)), 0, math.rad(45)), 0.6)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(-10+2*math.cos(sine/6)), 0, 0), 0.8)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
				--hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-5-10*math.cos(sine/18)), math.sin(sine/36)/3, 0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.15) * CFrame.Angles(math.rad(-9-2*math.cos(sine/6)), 0, 0), 0.8)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1-0.1*math.cos(sine/3), 0+0.04*math.cos(sine/6)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56-2*math.cos(sine/6)), 0, 0), 0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.8)
			--]]elseif stanceToggle == "Grabbed" then
				--[[grab = true
				--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				--corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),-.5)*CFrame.Angles(math.rad(90+4*math.cos(sine/14)),math.rad(0),math.rad(-80+4*math.cos(sine/14))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(sine/14)),math.rad(70-4*math.cos(sine/14)),0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			--]]end
		elseif animpose == "Walking" then
			if stanceToggle == "Grabbed" then
				--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				--corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120+4*math.cos(sine/2)),math.rad(0),math.rad(-30+4*math.cos(sine/4))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			--]]elseif stanceToggle ~= "Grabbed" then
				--change = 1
				--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				--corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-22-2*math.cos(sine/2)),0,0),0.2)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-3*math.cos(sine/2)),0,0),0.2)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-4*math.cos(sine/2)),0,0),0.2)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-5*math.cos(sine/2)),0,0),0.2)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-6*math.cos(sine/2)),0,0),0.2)
				--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				--lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.9-0.24*math.cos(sine/4)/2.8, -0.05 + math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)-math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				--rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.9+0.24*math.cos(sine/4)/2.8, -0.05 + -math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)+math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			--]]end
		elseif animpose == "Running" then
			change = 1
			--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			--corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-56-10*math.cos(sine/2)),0,0),0.2)
			CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		--]]elseif animpose == "Jumping" then
			CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),0.2)
			CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			--corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		--]]elseif animpose == "Freefalling" then
			CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-110),0,0),0.2)
			CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			--corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			--corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-40),math.rad(20),math.rad(50)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(110),math.rad(-20),math.rad(-30)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, 0.2) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.6) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		--]]end
	end
  if Humanoid.Health <= 0 then
    attack = true
    for i = 1, #Marked do
      if MarkedGUI[i] ~= nil and MarkedGUI[i][1] ~= nil then
        MarkedGUI[i][1].Parent = nil
      end
      table.remove(MarkedGUI, i)
      table.remove(Marked, i)
    end
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
    hitbox.Transparency = 1
    hitbox2.Transparency = 1
    if invisible == true then
      mtype = "Death"
    else
      if invisible == false and attack == false then
        mtype = "Skull"
      end
    end
    for i = 1, #Marked do
      if Marked[i] ~= nil then
        if Marked[i][1].Parent == nil then
          MarkedGUI[i][1].Parent = nil
          table.remove(MarkedGUI, i)
          table.remove(Marked, i)
        else
          if MarkedGUI[i][1].Parent ~= nil then
            MarkedGUI[i][1].Size = UDim2.new(7 + Marked[i][4].Value, 0, 7 + Marked[i][4].Value, 0)
            if 0 < Marked[i][4].Value then
              Marked[i][4].Value = Marked[i][4].Value - 1
            end
            if MarkedGUI[i][2].Parent ~= nil then
              if mtype == "Skull" then
                if Marked[i][3].Value == 0 then
                  MarkedGUI[i][2].Image = "rbxassetid://316113987"
                else
                  if Marked[i][3].Value == 1 then
                    MarkedGUI[i][2].Image = "rbxassetid://316113979"
                  else
                    if Marked[i][3].Value == 2 then
                      MarkedGUI[i][2].Image = "rbxassetid://316113977"
                    else
                      if Marked[i][3].Value == 3 then
                        MarkedGUI[i][2].Image = "rbxassetid://316113966"
                      else
                        if Marked[i][3].Value == 4 then
                          MarkedGUI[i][2].Image = "rbxassetid://316113955"
                        else
                          if Marked[i][3].Value == 5 then
                            MarkedGUI[i][2].Image = "rbxassetid://316113955"
                          else
                            if Marked[i][3].Value == 6 then
                              MarkedGUI[i][2].Image = "rbxassetid://316113923"
                            else
                              if Marked[i][3].Value == 7 then
                                MarkedGUI[i][2].Image = "rbxassetid://316113904"
                              else
                                if Marked[i][3].Value == 8 then
                                  MarkedGUI[i][2].Image = "rbxassetid://316113892"
                                else
                                  if Marked[i][3].Value == 9 then
                                    MarkedGUI[i][2].Image = "rbxassetid://316113885"
                                  else
                                    if Marked[i][3].Value == 10 then
                                      MarkedGUI[i][2].Image = "rbxassetid://316113872"
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
              else
                if mtype == "Death" then
                  if Marked[i][3].Value == 0 then
                    MarkedGUI[i][2].Image = "rbxassetid://316642802"
                  else
                    if Marked[i][3].Value == 1 then
                      MarkedGUI[i][2].Image = "rbxassetid://316642791"
                    else
                      if Marked[i][3].Value == 2 then
                        MarkedGUI[i][2].Image = "rbxassetid://316642778"
                      else
                        if Marked[i][3].Value == 3 then
                          MarkedGUI[i][2].Image = "rbxassetid://316642761"
                        else
                          if Marked[i][3].Value == 4 then
                            MarkedGUI[i][2].Image = "rbxassetid://316642739"
                          else
                            if Marked[i][3].Value == 5 then
                              MarkedGUI[i][2].Image = "rbxassetid://316642716"
                            else
                              if Marked[i][3].Value == 6 then
                                MarkedGUI[i][2].Image = "rbxassetid://316642678"
                              else
                                if Marked[i][3].Value == 7 then
                                  MarkedGUI[i][2].Image = "rbxassetid://316642655"
                                else
                                  if Marked[i][3].Value == 8 then
                                    MarkedGUI[i][2].Image = "rbxassetid://316642632"
                                  else
                                    if Marked[i][3].Value == 9 then
                                      MarkedGUI[i][2].Image = "rbxassetid://316642585"
                                    else
                                      if Marked[i][3].Value == 10 then
                                        MarkedGUI[i][2].Image = "rbxassetid://316642541"
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
          if Marked[i][2] ~= nil then
            Marked[i][2].Value = Marked[i][2].Value - 1
            if Marked[i][2].Value <= 0 then
              Marked[i][1].Parent = nil
              MarkedGUI[i][1].Parent = nil
              table.remove(MarkedGUI, i)
              table.remove(Marked, i)
            end
          end
        end
      end
    end
if invisible == true then
      addpassive = addpassive + 1
      if 50 <= addpassive then
        addpassive = 0
        for _,c in pairs(workspace:children()) do
          local hum = (c:findFirstChild("Humanoid"))
          if hum ~= nil then
            local head = nil
            for _,d in pairs(c:children()) do
              if d.Name == "HumanoidRootPart" then
                local targ = d.Position - RootPart.Position
                local mag = targ.magnitude
                if mag <= 60 and c.Name ~= Player.Name then
                  mark = d.Parent:findFirstChild("Mark")
                  if mark ~= nil then
                    if (mark:findFirstChild("MarkTime")) ~= nil then
                      mark.MarkTime.Value = 500
                    end
                    if (mark:findFirstChild("MarkValue")) ~= nil then
                      if (mark:findFirstChild("MarkSize")) ~= nil then
                        mark.MarkSize.Value = 5
                      end
                      if mark.MarkValue.Value < 10 then
                        mark.MarkValue.Value = mark.MarkValue.Value + 1
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      do
        if 60 <= pnum2 then
          Clone(0.1)
          pnum2 = 0
        end
end
end
        pnum2 = pnum2 + 1
        if 6 <= passivenum and invisible == true then
            invisnum.Value = invisnum.Value - 1
            passivenum = 0
       elseif 5 <= passivenum and invisible == false then
          invisnum.Value = invisnum.Value + 1
          passivenum = 0
end
        if 100 <= invisnum.Value then
          invisnum.Value = 100
        end
        if invisible == true and invisnum.Value <= 0 then
          Invisibility()
        end
        passivenum = passivenum + 1
        if Stagger.Value == true and staggeranim == false and islash == false then
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
              handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
              wld1.C0 = clerp(wld1.C0, cf(0, -2, 0) * euler(0.3, 0, -0.1), 0.2)
              Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, 0, 0.5), 0.2)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.2), 0.2)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
            end
          else
            if RootPart.Velocity.y < -1 and hitfloor == nil then
              Anim = "Fall"
              if attack == false then
                handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
                wld1.C0 = clerp(wld1.C0, cf(0, -2, 0) * euler(0.3, 0, -0.1), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1), 0.2)
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
                  handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
                  wld1.C0 = clerp(wld1.C0, euler(0, -0.4 - (donum) / 2, 0) * cf(0, -2, 0) * euler(1, 0, 0), 0.2)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.15)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.15)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2 + (donum) / 3, 0, 0.5 - (donum) / 3) * euler(0, 2.1, 0), 0.15)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                  LW.C0 = clerp(LW.C0, cf(-1.3 - (donum) / 3, 0.5, -0.4 + (donum) / 3) * euler(0.7 + (donum) / 6, 0, 0.4 + (donum) / 6) * euler(0, -1.57, 0), 0.15)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                  RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0.3), 0.2)
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
                    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
                    wld1.C0 = clerp(wld1.C0, cf(0, -2, 0) * euler(0.3, 0, -0.3), 0.2)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0), 0.2)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3 + (donum) / 3, 0, 0.5 - (donum) / 3), 0.2)
                    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2 + (donum) / 3, 0, -0.4 + (donum) / 3), 0.2)
                    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
                  end
                else
                  if 30 <= torvel and hitfloor ~= nil then
                    Anim = "Run"
                    if attack == false then
                      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
                      wld1.C0 = clerp(wld1.C0, euler(0, 0.8, 0) * cf(0, -1, 0) * euler(1.57, 0, 0) * euler(0, 1.8, 0), 0.4)
                      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.4, 0, 0), 0.4)
                      RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(2, 0, -0.8), 0.4)
                      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                      LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(2, 0, 0.8), 0.4)
                      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.7), 0.4)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.7), 0.4)
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
                if Thing[2] == "PartiEmi" then
                  Thing[3] = Thing[3] - 1
                  if Thing[3] <= 0 then
                    Thing[1].Enabled = false
                    table.remove(Effects, e)
                  end
                end
                if Thing[2] == "AdjuEff" then
                  if 0 < Thing[3] then
                    Thing[3] = Thing[3] - 1
                    Thing[1].Size = Thing[1].Size + UDim2.new(1, 0, 1, 0)
                    Thing[4].ImageTransparency = Thing[4].ImageTransparency + 0.1
                  else
                    Thing[1].Parent = nil
                    table.remove(Effects, e)
                  end
                end
                if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" and Thing[2] ~= "showDamage" and Thing[2] ~= "PartiEmi" and Thing[2] ~= "AdjuEff" then
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
                          Thing[9] = Thing[9] + 0.5
                          Thing[1].CFrame = Thing[8] * cf(0, Thing[9], 0)
                          Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                          Mesh = Thing[7]
                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Skull" then
                            Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8] / 2, -Thing[8])
                            Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Cylinder" then
                              Mesh = Thing[7]
                              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            else
                              if Thing[2] == "Cylinder2" then
                                Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8], 0)
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
          fenbarblock2:TweenSize((UDim2.new(0.4, 0, -4 * invisnum.Value / 100, 0)), nil, 1, 0.4, true)
          fenbarblock3.Text = "Invisibility(" .. invisnum.Value .. ")"
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
            if mananum <= 12 then
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
        end
      end
    end
--end