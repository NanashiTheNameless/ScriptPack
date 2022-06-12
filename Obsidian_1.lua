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
local Obelisks = {}
local maxobelisks = 3
local manaregain = 8
local passivenum = 30
local move1 = "(Z)\nEnergy Ball"
local move2 = "(X)\nFissure"
local move3 = "(C)\nReinforce"
local move4 = "(V)\nObelisk Hop"
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
local cooldownadd2 = 0.25
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.17
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.12
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH ,LSH= nil, nil
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
NewCol = Color3.new(TorsoRed / 2, TorsoGreen / 2, 0.6)
NewCol2 = Color3.new(TorsoRed / 4, TorsoGreen / 4, 0.6)
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
end
if Player:findFirstChild("Color2") ~= nil then
  NewCol2 = Player.Color2.Value
end
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

if Character:findFirstChild("Hashira", true) ~= nil then
  Character:findFirstChild("Hashira", true).Parent = nil
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
local passive = Instance.new("NumberValue", Decrease)
passive.Name = "DecreaseDef"
passive.Value = -1
local passive2 = Instance.new("NumberValue", Decrease)
passive2.Name = "DecreaseMvmt"
passive2.Value = passive.Value * -0.3
local passive3 = Instance.new("NumberValue", Decrease)
passive3.Name = "DecreaseAtk"
passive3.Value = 0.1
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
local fenbaroblsk1 = gui("TextButton", fenframe2, "Obelisks", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(1.26, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Hashira"
local prt1 = part(3, modelzorz, 0, 0, TorsoColor, "Part01", vt())
local prt2 = part(3, modelzorz, 0.5, 0, BrickColor.new("Light stone grey"), "Part02", vt())
local prt3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part03", vt())
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part04", vt())
local prt5 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part05", vt())
local prt6 = part(3, modelzorz, 0.5, 0, BrickColor.new("Light stone grey"), "Part06", vt())
local prt7 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part07", vt())
local prt8 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part08", vt())
local prt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part09", vt())
local prt10 = part(3, modelzorz, 0.5, 0, BrickColor.new("Light stone grey"), "Part10", vt())
local prt11 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol), "Part11", vt())
local prt12 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part12", vt())
local prt13 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol), "Part13", vt())
local prt14 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part14", vt())
local prt15 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol), "Part15", vt())
local prt16 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part16", vt())
local prt17 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part17", vt())
local prt18 = part(3, modelzorz, 0.5, 0, BrickColor.new("Light stone grey"), "Part18", vt())
local prt19 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part19", vt())
local prt20 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part20", vt())
local msh1 = mesh("BlockMesh", prt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
local msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(2, 20, 2))
local msh3 = mesh("SpecialMesh", prt3, "FileMesh", "1778999", vt(0, 0, 0), vt(0.8, 0.8, 0.8))
local msh4 = mesh("CylinderMesh", prt4, "", "", vt(0, 0, 0), vt(5, 0.5, 5))
local msh5 = mesh("CylinderMesh", prt5, "", "", vt(0, 0, 0), vt(3, 10, 3))
local msh6 = mesh("CylinderMesh", prt6, "", "", vt(0, 0, 0), vt(4, 3, 4))
local msh7 = mesh("SpecialMesh", prt7, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 1, 0.8))
local msh8 = mesh("SpecialMesh", prt8, "FileMesh", "1778999", vt(0, 0, 0), vt(0.8, 0.8, 0.8))									
local msh9 = mesh("CylinderMesh", prt9, "", "", vt(0, 0, 0), vt(5.4, 2, 5.4))
local msh10 = mesh("CylinderMesh", prt10, "", "", vt(0, 0, 0), vt(4.5, 1, 4.5))
local msh11 = mesh("BlockMesh", prt11, "", "", vt(0, 0, 0), vt(10, 6, 6))
local msh12 = mesh("BlockMesh", prt12, "", "", vt(0, 0, 0), vt(10, 4, 7))
local msh13 = mesh("BlockMesh", prt13, "", "", vt(0, 0, 0), vt(15, 6, 5.9))
local msh14 = mesh("BlockMesh", prt14, "", "", vt(0, 0, 0), vt(13, 4, 6.9))
local msh15 = mesh("BlockMesh", prt15, "", "", vt(0, 0, 0), vt(15, 6, 5.9))
local msh16 = mesh("BlockMesh", prt16, "", "", vt(0, 0, 0), vt(13, 4, 6.9))
local msh17 = mesh("CylinderMesh", prt17, "", "", vt(0, 0, 0), vt(6, 2, 6))
local msh18 = mesh("SpecialMesh", prt18, "FileMesh", "1778999", vt(0, 0, 0), vt(0.9, 0.3, 0.9))
local msh19 = mesh("SpecialMesh", prt19, "FileMesh", "9756362", vt(0, 0, 0), vt(1.5, 1.2, 1.2))
local msh20 = mesh("SpecialMesh", prt20, "FileMesh", "9756362", vt(0, 0, 0), vt(1.5, 1.2, 1.2))
local wld1 = weld(prt1, prt1, Torso, euler(0, 0, -2.5) * cf(-1.4, -2, -0.6))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, 0, 0))
local wld3 = weld(prt1, prt3, prt2, euler(0, 0, 0) * cf(0, 2, 0))
local wld4 = weld(prt1, prt4, prt3, euler(0, 0, 0) * cf(0, 0.6, 0))
local wld5 = weld(prt1, prt5, prt2, euler(0, 0, 0) * cf(0, -1, 0))
local wld6 = weld(prt1, prt6, prt5, euler(0, 0, 0) * cf(0, -1, 0))
local wld7 = weld(prt1, prt7, prt6, euler(0, 0, 0) * cf(0, 0, 0))
local wld8 = weld(prt1, prt8, prt6, euler(3.14, 0, 0) * cf(0, 0, 0))
local wld9 = weld(prt1, prt9, prt8, euler(0, 0, 0) * cf(0, 0.85, 0))
local wld10 = weld(prt1, prt10, prt9, euler(0, 0, 0) * cf(0, 0.3, 0))
local wld11 = weld(prt1, prt11, prt10, euler(0, 0, 0) * cf(0, 0.7, 0))
local wld12 = weld(prt1, prt12, prt11, euler(0, 0, 0) * cf(0, 0, 0))
local wld13 = weld(prt1, prt13, prt11, cf(1.45, 0, 0) * euler(0, 0, 0.2) * cf(0.9, 0, 0))
local wld14 = weld(prt1, prt14, prt13, euler(0, 0, 0) * cf(-0.2, 0, 0))
local wld15 = weld(prt1, prt15, prt11, cf(-1.45, 0, 0) * euler(0, 0, -0.2) * cf(-0.9, 0, 0))
local wld16 = weld(prt1, prt16, prt15, euler(0, 0, 0) * cf(0.2, 0, 0))
local wld17 = weld(prt1, prt17, prt11, euler(0, 0, 0) * cf(0, 0.8, 0))
local wld18 = weld(prt1, prt18, prt17, euler(3.14, 0, 0) * cf(0, 0.45, 0))
local wld19 = weld(prt1, prt19, prt13, euler(0.785, 0, 0) * cf(1.5, 0, 0))
local wld20 = weld(prt1, prt20, prt15, euler(0.785, 0, 0) * cf(-1.5, 0, 0))
theprt = prt13
eul = -1.57
for i = 1, 2 do
  if i == 2 then
    theprt = prt15
  end
  eul1 = 0
  for b = 0.8, -1.6, -1.6 do
    num = -1
    for j = 1, 3 do
      local prt21 = part(3, modelzorz, 0.5, 0, BrickColor.new("Light stone grey"), "Part21", vt())
      local msh21 = mesh("SpecialMesh", prt21, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 2))
      local wld21 = weld(prt1, prt21, theprt, euler(1.57, eul, eul1) * cf(num, b, 0))
      num = num + 1
    end
    if i == 1 then
      eul1 = eul1 + 1.57
    else
      eul1 = eul1 - 1.57
    end
  end
  eul = eul + 3.14
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
  hbwld.Part1 = prt11
end

if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Hashira"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Obsidian" then
  Bin.Name = "Hashira"
end
Bin = Tool
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
    wld1.C0 = clerp(wld1.C0, euler(0.2, 0, 0) * cf(0, 1, 0.2) * euler(0, 0, -0.4), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 0.2, 0) * cf(0, -0.4, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.8, 0) * euler(3.3, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
  wld1.Part1 = Torso
  wld1.C0 = euler(0, 0, -2.5) * cf(-1.4, -2, -0.6)
  wld2.C0 = euler(0, 0, 0) * cf(0, 0, 0)
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.5)
  end
end

mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  mdec2.Parent = Decrease
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.8, 0) * euler(3.3, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
  end
  wld1.Part1 = RightArm
  wld1.C0 = euler(0.2, 0, 0) * cf(0, 1, 0.2) * euler(0, 0, -0.4)
  wld2.C0 = euler(0, 0.2, 0) * cf(0, -0.4, 0)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 2.74, 0) * cf(0, -1, 0), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.8) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1, 0), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1, 0), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1, 0), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1, 0), 0.3)
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
    wld1.C0 = clerp(wld1.C0, euler(0.3, 0, -0.2) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 1) * euler(0, -1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(0.2, 0.5, -0.5) * euler(0.8, 0, 2.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, -0.05), 0.3)
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
  so("203691447", prt11, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(9, 2.5, 1.5)
  hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.08 do
    swait()
    hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 8, 5, 8, math.random(2, 5), "Normal", RootPart, 0.5, 2, (math.random(3, 5)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(2.2, 0, -0.2) * cf(0, 1, 0), 0.25)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -0.6, 0), 0.25)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6), 0.25)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.25)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(1.4, 0, -1.2) * euler(0, -1.4, 0), 0.25)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.3) * euler(1.4, 0, 0.2), 0.25)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.25)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, 0), 0.25)
    LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0), 0.25)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC492: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC492: LeaveBlock: unexpected jumping out IF_STMT

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
  for i = 0, 1, 0.07 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(2.8, 0, -0.2) * cf(0, 1, 0), 0.2)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -0.6, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.2), 0.2)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(1, 0, -1.2) * euler(0, -1.4, 0), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, 0.4), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1.2, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.7, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1.2, 0), 0.2)
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
  so("203691467", prt11, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(9, 2.5, 1.5)
  hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.08 do
    swait()
    hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 8, 5, 8, math.random(2, 5), "Normal", RootPart, 0.5, 2, (math.random(3, 5)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(3.8, 0, -0.2) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -0.2, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 1.2) * euler(0, -2.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1, 0, 1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, -0.05), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC492: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC492: LeaveBlock: unexpected jumping out IF_STMT

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
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.3)
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
        -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("203691492", prt11, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(9, 2.5, 1.5)
  hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 8, 5, 8, math.random(2, 5), "Normal", RootPart, 0.5, 2, (math.random(3, 5)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * cf(0, 1, 0), 0.4)
    wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.4)
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
        -- DECOMPILER ERROR at PC480: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC480: LeaveBlock: unexpected jumping out IF_STMT

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
    wld1.C0 = clerp(wld1.C0, euler(2.2, 0, -0.2) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -0.6, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 0.2) * euler(0, -1.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.4, 0, 1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, -0.05), 0.3)
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
  so("203691447", prt11, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(9, 2.5, 1.5)
  hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
  hitbox.CFrame = hitboxCF
  CF = RootPart.CFrame.lookVector
  for i = 0, 1, 0.03 do
    swait()
    if i == 0.21 or i >= 0.48 and i <= 0.51 then
      so("203691447", prt11, 1, 1)
    end
    hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 8, 4, 6, math.random(2, 5), "Normal", RootPart, 0.4, 2, (math.random(3, 5)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(2.2, 0, -0.2) * cf(0, 1, 0), 0.3)
    wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -0.6, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6), 0.3)
    RootJoint.C0 = RootCF * euler(0, 0, -1 + 17 * i)
    RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(1.4, 0, -1.2) * euler(0, -1.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.3) * euler(1.4, 0, 0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC504: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC504: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end

Obelisk = function()
  attack = true
  if #Obelisks < maxobelisks then
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * cf(0, 1, 0), 0.3)
      wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.3)
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
          -- DECOMPILER ERROR at PC212: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC212: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(9, 2.5, 1.5)
    hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.15 do
      swait()
      hitboxCF = prt11.CFrame * cf(0, 0.5, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 8, 4, 6, math.random(2, 5), "Normal", RootPart, 0.5, 2, (math.random(5, 8)), nil, true)
      wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * cf(0, 1, 0), 0.4)
      wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.4)
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
          -- DECOMPILER ERROR at PC486: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC486: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    MagicCircle(BrickColor.new(NewCol2), cf(prt13.Position), 1, 1, 1, 5, 5, 5, 0.1)
    local MouseLook = cf((RootPart.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
    local hit, pos = rayCast(RootPart.Position, MouseLook.lookVector, 50, Character)
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(pos) * cf(0, 3, 0)
    game:GetService("Debris"):AddItem(ref, 1)
    hitfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
    if hitfloor ~= nil and mana.Value >= 15 then
      mana.Value = mana.Value - 15
      local refsate = part(3, workspace, 0, 1, BrickColor.new("White"), "Reference", vt())
      refsate.Anchored = true
      refsate.CFrame = cf(posfloor)
      game:GetService("Debris"):AddItem(refsate, 1)
      local obe = Instance.new("Model", workspace)
      obe.Name = "Obelisk"
      game:GetService("Debris"):AddItem(obe, 20)
      table.insert(Obelisks, obe)
      local oprt1 = part(3, obe, 0, 0, BrickColor.new(NewCol2), "Obelisk Part01", vt())
      local oprt2 = part(3, obe, 0, 0, BrickColor.new(NewCol2), "Obelisk Part02", vt())
      local oprt6 = part(3, obe, 0, 0, BrickColor.new(NewCol2), "Obelisk Part06", vt())
      local oprt7 = part(3, obe, 0, 0, BrickColor.new(NewCol2), "Obelisk Part07", vt())
      local omsh1 = mesh("BlockMesh", oprt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
      local omsh2 = mesh("BlockMesh", oprt2, "", "", vt(0, 0, 0), vt(7, 30, 7))
      local omsh6 = mesh("SpecialMesh", oprt6, "FileMesh", "9756362", vt(0, 0, 0), vt(1.4, 3, 1.4))
      local omsh7 = mesh("SpecialMesh", oprt7, "FileMesh", "9756362", vt(0, 0, 0), vt(2.2, 2, 2.2))
      local owld2 = weld(oprt2, oprt2, oprt1, euler(0, 0, 0) * cf(0, 0, 0))
      local owld6 = weld(oprt6, oprt6, oprt2, euler(0, 0.785, 0) * cf(0, -3, 0))
      local owld7 = weld(oprt7, oprt7, oprt2, euler(0, 0.785, 0) * cf(0, 3, 0))
      eul = 0
      for i = 1, 4 do
        local oprt3 = part(3, obe, 0, 0, BrickColor.new(NewCol2), "Obelisk Part03", vt())
        local omsh3 = mesh("SpecialMesh", oprt3, "Wedge", "nil", vt(0, 0, 0), vt(7, 30, 2))
        local owld3 = weld(oprt3, oprt3, oprt2, euler(0, 0, 0) * cf(0, 0, 0.9) * euler(0, eul, 0))
        local oprt4 = part(3, obe, 0, 0, BrickColor.new(NewCol2), "Obelisk Part03", vt())
        local omsh4 = mesh("SpecialMesh", oprt4, "FileMesh", "11294911", vt(0, 0, 0), vt(0.8, 12.2, 0.8))
        local owld4 = weld(oprt4, oprt4, oprt3, euler(0, 1.57, 0) * cf(0.9, -0.05, 0))
        local oprt5 = part(3, obe, 0, 0, BrickColor.new("Black"), "Obelisk Part05", vt())
        local omsh5 = mesh("SpecialMesh", oprt5, "Wedge", "nil", vt(0, 0, 0), vt(4, 25, 3))
        local owld5 = weld(oprt5, oprt5, oprt3, euler(0, 0, 0) * cf(0, -0.5, 0))
        eul = eul + 1.57
      end
      oprt1.CFrame = refsate.CFrame
      so("203691785", oprt1, 1, 1)
      so("183763487", oprt1, 1, 1)
      f = Instance.new("BodyPosition", oprt1)
      f.P = 2000
      f.D = 100
      f.maxForce = Vector3.new(545000, 545000, 545000)
      f.position = refsate.Position + vt(0, math.random(700, 900) / 100, 0)
      ogy = Instance.new("BodyGyro", oprt1)
      ogy.maxTorque = Vector3.new(0, 400000, 0)
      ogy.P = 2000
      ogy.D = 100
      ogy.cframe = cf(RootPart.Position, oprt1.Position)
      for i = 1, 10 do
        MagicObsidian(BrickColor.new(NewCol2), cf(refsate.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100), 1, 1, 1, 0, 0, 0, math.random(2, 10) / 100)
      end
      MagicBlock(BrickColor.new(NewCol2), cf(oprt1.Position) * cf(0, 1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 4, 4, 4, 0.05, 2)
      MagniDamage(oprt1, 20, 0, 0, math.random(-30, -20), "Knockdown2", RootPart, 0, 1, (math.random(5, 8)), nil, nil, true, "Defense", 0.05, 300)
      table.insert(Effects, {obe, "Obelisk", 0, 0, oprt1, 0, #Obelisks})
    end
    do
      do
        swait(10)
        dec.Parent = nil
        attack = false
      end
    end
  end
end

do1 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and #Obelisks * 5 <= mana.Value and #Obelisks > 0 then
    cooldowns[1] = 0
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.2) * cf(0, 1, 0.2), 0.3)
      wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1.4, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, 0, 0.8), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.8, 0, 1), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.2), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC256: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC256: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("2101137", LeftArm, 1, 1)
    for i = 1, 20 do
      swait()
      MagicBlock(BrickColor.new(NewCol2), LeftArm.CFrame * cf(0, -1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 2, 2, 2, 0.1, 2)
      for i = 1, #Obelisks do
        Part = Obelisks[i]:findFirstChild("Obelisk Part06")
        if Part ~= nil then
          MagicBlock(BrickColor.new(NewCol2), cf(Part.Position) * cf(0, 1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 2, 2, 2, 0.1, 2)
        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.2) * cf(0, 1, 0.2), 0.3)
      wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1.4, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, 0, 0.8), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, -0.2), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0), 0.3)
      MagicBlock(BrickColor.new(NewCol2), LeftArm.CFrame * cf(0, -1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 2, 2, 2, 0.1, 2)
      for i = 1, #Obelisks do
        Part = Obelisks[i]:findFirstChild("Obelisk Part06")
        if Part ~= nil then
          MagicBlock(BrickColor.new(NewCol2), cf(Part.Position) * cf(0, 1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 2, 2, 2, 0.1, 2)
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC675: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC675: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      if StaggerHit.Value == true then
        mana.Value = mana.Value - #Obelisks * 5
        for i = 1, #Obelisks do
          Part = Obelisks[i]:findFirstChild("Obelisk Part06")
          if Part ~= nil then
            so("203691562", Part, 1, 1)
            Orb(Part)
          end
        end
        do
        end
      end
    end
  end
          attack = false
end

do2 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 25 then
    cooldowns[2] = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * cf(0, 1, 0), 0.3)
      wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.3)
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
          -- DECOMPILER ERROR at PC244: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC244: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.15 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * cf(0, 1, 0), 0.4)
      wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.4, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0.5, 0, -0.8), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(0.5, 0, 0.8), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, -0.4), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC450: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC450: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
        mana.Value = mana.Value - 25
        poss = RootPart.CFrame * cf(0, 0, -5)
        refb = part(3, workspace, 0, 0, BrickColor.new("Black"), "Reference", vt())
        refb.Anchored = true
        refb.CFrame = poss
        game:GetService("Debris"):AddItem(refb, 10)
        for i = 1, 15 do
          swait()
          hit, pos = rayCast(refb.Position, CFrame.new(refb.Position, refb.Position - Vector3.new(0, 1, 0)).lookVector, 40, Character)
          if hit ~= nil then
            local ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
            ref2.Anchored = true
            ref2.CFrame = cf(pos)
            so("2691586", ref2, 0.4, 0.4)
            game:GetService("Debris"):AddItem(ref2, 1)
            for i = 1, #Obelisks do
              ThePrt = Obelisks[i]:findFirstChild("Obelisk Part07")
              if ThePrt ~= nil then
                local mag = (ref2.Position - ThePrt.Position).magnitude
                if mag <= 8 then
                  Prt1 = Obelisks[i]:findFirstChild("Obelisk Part01")
                  if Prt1 ~= nil then
                    local refd = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
                    refd.Anchored = true
                    refd.CFrame = cf(Prt1.Position)
                    game:GetService("Debris"):AddItem(refd, 1)
                    so("161006069", refd, 1, 0.8)
                    so("203691610", refd, 1, 1)
                    MagniDamage(Prt1, 15, 10, 15, math.random(20, 30), "Knockdown2", Prt1, 0.1, 1, (math.random(20, 30)), nil, nil, true, "Defense", 0.05, 300)
                    MagicBlock(BrickColor.new(NewCol2), cf(Prt1.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, 3, 3, 3, 0.05, 2)
                    for i = -5, 5, 2.5 do
                      MagicRing(BrickColor.new(NewCol2), cf(Prt1.Position) * euler(1.57, 0, 0) * cf(0, 0, i), 2, 2, 2, 1, 1, 0.5, 0.05)
                    end
                  end
                      Obelisks[i].Parent = nil
                end
              end
            end
            Col = hit.BrickColor
            MagicWave(Col, cf(pos), 1, 1, 1, 1, 1, 1, 0.1)
            MagicObsidian(BrickColor.new(NewCol2), cf(pos) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 3, -0.2, -0.2, -0.2, 0.05)
            MagniDamage(ref2, 5, 4, 6, math.random(10, 20), "Knockdown2", ref2, 0.1, 1, (math.random(4, 6)), nil, nil, true, "Obsidian", 0.1, 300)
            for i = 1, 5 do
              local groundpart = part(3, workspace, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
              groundpart.Anchored = true
              groundpart.Material = hit.Material
              groundpart.CanCollide = true
              groundpart.CFrame = cf(pos) * cf(math.random(-200, 200) / 100, 0, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              game:GetService("Debris"):AddItem(groundpart, 5)
            end
          end
              poss = poss * cf(0, 0, -3)
              refb.CFrame = poss
        end
        refb.Parent = nil
        dec.Parent = nil
    end
  end
        attack = false
end

do3 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 30 then
    cooldowns[3] = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    local dec2 = Instance.new("NumberValue", Decrease)
    dec2.Name = "DecreaseDef"
    dec2.Value = -10
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2, 0, 1), 0.5)
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.2) * cf(0, 1, 0.2), 0.3)
      wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1.4, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 0.8), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.8, 0, 0.8), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 0.6, -0.3), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC281: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC281: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("315746833", Torso, 1, 1)
    for i = 1, 50 do
      swait()
      MagicBlock(BrickColor.new(NewCol2), cf(RootPart.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, -8, 0), 3, 3, 3, -0.2, -0.2, -0.2, 0.05, 3)
    end
    do
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          mana.Value = mana.Value - 30
          passivenum = -30
          dec.Parent = nil
          dec2.Parent = nil
          passive.Value = -1
          so("87767777", Torso, 1, 1)
          MagicWave(BrickColor.new(NewCol2), cf(RootPart.Position) * cf(0, -2, 0), 1, 2, 1, 1, -0.02, 1, 0.05)
          MagicCircle(BrickColor.new(NewCol2), cf(Torso.Position), 1, 1, 1, 3, 3, 3, 0.02)
          MagniDamage(RootPart, 20, 4, 6, math.random(30, 50), "Knockdown2", RootPart, 0, 1, (math.random(4, 8)), nil, nil, false)
          for i = 0, 1, 0.1 do
            swait()
            wld1.C0 = clerp(wld1.C0, euler(0.2, 0, 0.2) * cf(0, 1, 0.2), 0.5)
            wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1.4, 0), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57), 0.5)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -0.3), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC648: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC648: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          dec.Parent = nil
          dec2.Parent = nil
        end
      end
  end
          attack = false
end

do4 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and #Obelisks * 10 <= mana.Value and #Obelisks > 0 then
    cooldowns[4] = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    mana.Value = mana.Value - #Obelisks * 10
    for b = 1, #Obelisks do
      for i = 0, 1, 0.1 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(-1.5, 0, 0) * cf(0, 1, 0), 0.3)
        wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1, 1.2, 0) * euler(3.6, 0, -0.8), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 1.2, 0) * euler(3.6, 0, 0.8), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.3)
      end
      for i = 0, 1, 0.15 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(-1.57, 0, 0) * cf(0, 1, 0), 0.3)
        wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.4, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(2, 0, -0.8), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(2, 0, 0.8), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0.2), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, -0.4), 0.4)
      end
      MagicCircle(BrickColor.new(NewCol2), cf(prt18.Position), 5, 5, 5, 5, 5, 5, 0.05)
      MagicBlock(BrickColor.new(NewCol2), cf(prt18.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, 6, 6, 6, 0.05, 1)
      MagicRing(BrickColor.new(NewCol2), cf(prt18.Position), 1, 1, 3, 2, 2, 0.1, 0.03)
      MagicRing(BrickColor.new(NewCol2), cf(prt18.Position) * euler(1.57, 0, 0), 1, 1, 3, 2, 2, 0.1, 0.03)
      MagicRing(BrickColor.new(NewCol2), cf(prt18.Position) * euler(0, 1.57, 0), 1, 1, 3, 2, 2, 0.1, 0.03)
      MagniDamage(prt18, 20, 5, 8, math.random(20, 40), "Knockdown2", prt18, 0, 1, (math.random(5, 10)), nil, nil, false, "Obsidian", 0.03, 400)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(Torso.Position)
      game:GetService("Debris"):AddItem(ref, 1)
      so("203691653", ref, 1, 1)
      so("203691699", Torso, 1, 1)
      if Obelisks[b] ~= nil then
        Part = Obelisks[b]:findFirstChild("Obelisk Part01")
        if Part ~= nil and Rooted.Value == false then
          Torso.CFrame = cf(Part.Position) * cf(math.random(-300, 300) / 100, math.random(50, 100) / 100, math.random(-300, 300) / 100) * euler(0, math.random(-50, 50), 0)
          Torso.Velocity = vt(0, 0, 0)
        end
      end
      wld1.C0 = euler(0.2, 0, -0.2) * cf(0, 1, 0.2)
      wld2.C0 = euler(0, 1.57, 0) * cf(0, -1.4, 0)
      Neck.C0 = necko * euler(0, 0, 0.6) * euler(0.2, 0, 0)
      RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6) * euler(0.1, 0, 0)
      RW.C0 = cf(1.5, 0.5, 0) * euler(1.2, 0, 0.8)
      RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
      LW.C0 = cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2)
      LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
      RH.C0 = cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 0.6, -0.3)
      LH.C0 = cf(-0.9, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1)
    end
    for i = 0, 1, 0.1 do
      swait()
      Torso.Velocity = vt(0, 0, 0)
      wld1.C0 = clerp(wld1.C0, euler(-1.5, 0, 0) * cf(0, 1, 0), 0.3)
      wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, -0.4, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 1.2, 0) * euler(3.6, 0, -0.8), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 1.2, 0) * euler(3.6, 0, 0.8), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -0.2), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.3)
    end
    for i = 0, 1, 0.15 do
      swait()
      Torso.Velocity = vt(0, 0, 0)
      wld1.C0 = clerp(wld1.C0, euler(-1.57, 0, 0) * cf(0, 1, 0), 0.3)
      wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.4, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(2, 0, -0.8), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(2, 0, 0.8), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, -0.4), 0.4)
    end
    MagicCircle(BrickColor.new(NewCol2), cf(prt18.Position), 5, 5, 5, 5, 5, 5, 0.05)
    MagicBlock(BrickColor.new(NewCol2), cf(prt18.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, 6, 6, 6, 0.05, 1)
    MagicRing(BrickColor.new(NewCol2), cf(prt18.Position), 1, 1, 3, 2, 2, 0.1, 0.03)
    MagicRing(BrickColor.new(NewCol2), cf(prt18.Position) * euler(1.57, 0, 0), 1, 1, 3, 2, 2, 0.1, 0.03)
    MagicRing(BrickColor.new(NewCol2), cf(prt18.Position) * euler(0, 1.57, 0), 1, 1, 3, 2, 2, 0.1, 0.03)
    MagniDamage(prt18, 30, 5, 8, math.random(20, 40), "Knockdown2", prt18, 0, 1, (math.random(5, 10)), nil, nil, false, "Obsidian", 0.1, 300)
    so("203691653", Torso, 1, 1)
    swait(10)
    dec.Parent = nil
  end
    attack = false
end

Orb = function(Part)
  spread = vt((math.random(-1, 0) + math.random()) * 3, (math.random(-1, 0) + math.random()) * 3, (math.random(-1, 0) + math.random()) * 3) * Part.Position - MMouse.Hit.p.magnitude / 100
  local MouseLook = cf((Part.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  table.insert(Effects, {MouseLook.lookVector, "Shoot", 100, Part.Position, 10, 15, math.random(10, 20)})
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
    w1.Name = "Triangle"
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Teal")
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
      w2.BrickColor = BrickColor.new("Teal")
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
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame, math.random(5, 20) / 100})
      end
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

MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh})
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

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicObsidian = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Obsidian", delay, x3, y3, z3, msh, math.random(80, 140) / 100, 0.1})
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
    damageFunc:InvokeServer(h, Damage)
  end
), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if DecreaseState ~= nil then
        if DecreaseState == "Obsidian" then
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
    Obelisk()
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
print("Obsidian loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local pnum = 0
local pnum2 = 0
local pref = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Effect", vt())
pref.Anchored = true
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
        Welds[i].Parent = prt1
      end
    end
  end
  do
    if bustTarget ~= nil and Humanoid.Health <= 0 and (bustTarget:findFirstChild("Humanoid")) ~= nil then
      bustTarget.Humanoid.PlatformStand = false
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
      passive.Value = passive.Value * 0.5
      passivenum = 0
    end
    oldhealth = Humanoid.Health
    if 3 <= pnum2 then
      pnum2 = 0
      if passivenum < 15 then
        pref.CFrame = cf(RootPart.Position) * cf(math.random(-1000, 1000) / 100, 0, math.random(-1000, 1000) / 100)
        hitfloor2, posfloor2 = rayCast(pref.Position, CFrame.new(pref.Position, pref.Position - Vector3.new(0, 1, 0)).lookVector, 30, Character)
        if hitfloor2 ~= nil then
          MagicObsidian(BrickColor.new(NewCol2), cf(posfloor2) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 3, -0.2, -0.2, -0.2, 0.05)
        end
        passivenum = passivenum + 1
      end
    end
    pnum = pnum + 1
    pnum2 = pnum2 + 1
    passive2.Value = (-0.1 + passive.Value * 0.2) * -1
    if passive.Value < -1 then
      passive.Value = -1
    end
    if 200 <= pnum then
      if -1 < passive.Value then
        passive.Value = passive.Value - 0.1
      end
      pnum = 0
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
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.5), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.8), 0.2)
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
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.2) * cf(0, 1, 0.2), 0.15)
              wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1.4, 0), 0.15)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6) * euler(0.1, 0, 0), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2 - (donum) / 5, 0, 0.8 - (donum) / 5), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4 + (donum) / 3, 0, -0.2 - (donum) / 5), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 0.6, -0.3), 0.2)
              LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.2)
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
                wld1.C0 = clerp(wld1.C0, euler(0.2, 0, 0) * cf(0, 1, 0.2), 0.2)
                wld2.C0 = clerp(wld2.C0, euler(0, 1.57, 0) * cf(0, -1.4, 0), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 0.6), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  wld1.C0 = clerp(wld1.C0, euler(-1.57, 0, 0) * cf(0, 1, 0), 0.3)
                  wld2.C0 = clerp(wld2.C0, euler(0, 2.37, 0) * cf(0, 1, 0), 0.3)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.4, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(2, 0, -0.8), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(2, 0, 0.8), 0.4)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0.2), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, -0.4), 0.4)
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
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            else
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
              else
                if Thing[2] == "Obelisk" then
                  if Thing[6] <= 800 and Thing[1].Parent ~= nil then
                    Thing[6] = Thing[6] + 1
                    if 10 <= Thing[3] then
                      Thing[3] = 0
                      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                      ref.Anchored = true
                      ref.CFrame = cf(Thing[5].Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
                      game:GetService("Debris"):AddItem(ref, 0.2)
                      hitfloor2, posfloor2 = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 30, Character)
                      MagicObsidian(BrickColor.new(NewCol2), cf(posfloor2), 1, 1, 1, 0, 0, 0, math.random(2, 10) / 100)
                    end
                    if 100 <= Thing[4] then
                      Thing[4] = 0
                      MagniBuff(Thing[5], 20, "Defense", -0.07, 100)
                      MagniDamage(Thing[5], 20, 2, 2, 0, "Normal", Thing[5], 0, 1, (math.random(1, 5)), nil, nil, true, "Defense", 0.02, 100)
                      MagicCircle(BrickColor.new(NewCol2), cf(Thing[5].Position) * cf(0, -8, 0), 1, 2, 1, 10, 1, 10, 0.05)
                    end
                    Thing[3] = Thing[3] + 1
                    Thing[4] = Thing[4] + 1
                  else
                    for i = 1, 3 do
                      MagicBlock(BrickColor.new(NewCol2), cf(Thing[5].Position) * cf(0, math.random(-300, 300) / 100, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, 2, 2, 2, 0.05, 2)
                    end
                    for i = 1, 10 do
                      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                      ref.Anchored = true
                      ref.CFrame = cf(Thing[5].Position) * cf(math.random(-900, 900) / 100, 0, math.random(-900, 900) / 100)
                      game:GetService("Debris"):AddItem(ref, 0.2)
                      hitfloor2, posfloor2 = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 30, Character)
                      MagicObsidian(BrickColor.new(NewCol2), cf(posfloor2), 1, 1, 1, 0, 0, 0, math.random(2, 10) / 100)
                    end
                    print("officialend")
                    Thing[1].Parent = nil
                    if Thing[5].Parent ~= nil then
                      Thing[5].Parent.Parent = nil
                    end
                    table.remove(Effects, e)
                    for i = 1, #Obelisks do
                      if Obelisks[i] == Thing[1] then
                        table.remove(Obelisks, i)
                      end
                    end
                  end
                else
                  do
                    if Thing[2] == "Shoot" then
                      local Look = Thing[1]
                      local hit, pos = rayCast(Thing[4], Look, 3, modelzorz)
                      local mag = Thing[4] - pos.magnitude
                      MagicCircle(BrickColor.new(NewCol), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 10, 10, 10, 0.5, 0.5, 0.5, 0.2)
                      Thing[4] = Thing[4] + Look * 3
                      Thing[3] = Thing[3] - 1
                      if hit ~= nil then
                        Thing[3] = 0
                        Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Knockdown2", RootPart, 0, 2, (math.random(3, 8)), nil, nil, true, "Obsidian", 0.05, 500)
                        ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                        ref.Anchored = true
                        ref.CFrame = cf(pos)
                        game:GetService("Debris"):AddItem(ref, 1)
                        so("183763506", ref, 1, 1)
                        so("203691510", ref, 1, 1)
                        MagicCircle(BrickColor.new(NewCol2), cf(pos), 10, 10, 10, 2, 2, 2, 0.07)
                        MagicBlock(BrickColor.new(NewCol2), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
                        MagicRing(BrickColor.new(NewCol2), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
                        MagniDamage(ref, 15, Thing[5] / 1.2, Thing[6] / 1.2, 0, "Normal", ref, 0, 1, (math.random(3, 8)), nil, nil, true, "Obsidian", 0.05, 300)
                      end
                      if Thing[3] <= 0 then
                        table.remove(Effects, e)
                      end
                    end
                    do
                      do
                        if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Obelisk" and Thing[2] ~= "Shoot" then
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
                                  Thing[8] = Thing[8] * cf(0, math.random(50, 80) / 100, 0)
                                  Thing[1].CFrame = Thing[8] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                  Mesh = Thing[7]
                                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                else
                                  if Thing[2] == "Obsidian" then
                                    Thing[1].CFrame = cf(Thing[1].Position) * cf(0, Thing[8], 0)
                                    Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                    Thing[8] = Thing[8] - Thing[9]
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
                                        Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.4, 0)
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
                            Thing[1].Parent = nil
                            table.remove(Effects, e)
                          end
                        end
                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC5781: LeaveBlock: unexpected jumping out IF_STMT

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
    fenbaroblsk1.Text = "Obelisks\n" .. #Obelisks .. "/" .. maxobelisks
    if StunT.Value <= Stun.Value then
      fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
    else
      fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
    end
    fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
    if 100 <= mana.Value then
      mana.Value = 100
    else
      if mananum <= manaregain then
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
    -- DECOMPILER ERROR at PC6146: LeaveBlock: unexpected jumping out DO_STMT

  end
end
