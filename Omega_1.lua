-- Majora <3
-- Rolly Polly Simulator.

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
local idle = 0
local Anim = "Idle"
local Effects = {}
local shieldroll = false
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local guard = false
local blocknum = 50
local move1 = "(Z)\nTortoise Shell"
local move2 = "(X)\nCrystalize"
local move3 = "(C)\nStomp"
local move4 = "(V)\nOmega Buster"
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
local cooldownadd1 = 0.3
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.2
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.25
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.09
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
local manualguardend = false
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
NewCol = Color3.new(TorsoRed, 0.2, 0.2)
NewCol2 = Color3.new(TorsoRed, TorsoGreen, TorsoBlue)
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
local bustTarget = nil
local Animate = Humanoid.Animator
local canjump = true

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
if Character:findFirstChild("Tortoise Shell", true) ~= nil then
  Character:findFirstChild("Tortoise Shell", true).Parent = nil
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
fenframe2.Position = UDim2.new(0.4, 0, 0.9, 0)
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
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Dark green").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarblock1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.6, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarblock2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(-0.6, 0, 0, 0), UDim2.new(0.4, 0, -2, 0))
local fenbarblock3 = gui("TextLabel", fenframe, "Block(" .. blocknum .. ")", 1, Color3.new(0, 0, 0), UDim2.new(-0.6, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbardamage = gui("TextLabel", fenframe2, "Damage", 0.55, Color3.new(0.6078431372549, 0, 0), UDim2.new(-0.23, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbardef = gui("TextLabel", fenframe2, "Defense", 0.55, Color3.new(0, 0, 0.6078431372549), UDim2.new(-0.46, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbarmove = gui("TextLabel", fenframe2, "Walkspeed", 0.55, Color3.new(0, 0.6078431372549, 0), UDim2.new(1.03, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
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
modelzorz.Name = "Tortoise Shell"
local rprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part01", vt())
local rprt2 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part02", vt())
local rprt3 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part03", vt())
local rprt4 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part04", vt())
local rprt5 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part05", vt())
local rprt6 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Right Part06", vt())
local rprt7 = part(3, modelzorz, 0, 0, BrickColor.new("Dark green"), "Right Part07", vt())
local rprt8 = part(3, modelzorz, 0, 0, BrickColor.new("Bright green"), "Right Part08", vt())
local rprt9 = part(3, modelzorz, 0, 0, BrickColor.new("Bright green"), "Right Part09", vt())
local rprt10 = part(3, modelzorz, 0, 0, BrickColor.new("Bright green"), "Right Part10", vt())
local rprt11 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Right Part11", vt())
local rprt12 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part12", vt())
local rprt13 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Right Part13", vt())
local rprt14 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Right Part14", vt())
local rprt15 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part15", vt())
local rprt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part16", vt())
local rprt17 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Right Part17", vt())
local rprt18 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part18", vt())
local rprt19 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part19", vt())
local rprt20 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part20", vt())
local rprt21 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part21", vt())
local lprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part01", vt())
local lprt2 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part02", vt())
local lprt3 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part03", vt())
local lprt4 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part04", vt())
local lprt5 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part05", vt())
local lprt6 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Left Part06", vt())
local lprt7 = part(3, modelzorz, 0, 0, BrickColor.new("Dark green"), "Left Part07", vt())
local lprt8 = part(3, modelzorz, 0, 0, BrickColor.new("Bright green"), "Left Part08", vt())
local lprt9 = part(3, modelzorz, 0, 0, BrickColor.new("Bright green"), "Left Part09", vt())
local lprt10 = part(3, modelzorz, 0, 0, BrickColor.new("Bright green"), "Left Part10", vt())
local lprt11 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Left Part11", vt())
local lprt12 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part12", vt())
local lprt13 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Left Part13", vt())
local lprt14 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Left Part14", vt())
local lprt15 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part15", vt())
local lprt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part16", vt())
local lprt17 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Left Part17", vt())
local lprt18 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part18", vt())
local lprt19 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part19", vt())
local lprt20 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part20", vt())
local lprt21 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part21", vt())
rmsh1 = mesh("SpecialMesh", rprt1, "Head", "nil", vt(0, 0, 0), vt(2, 6, 2))
rmsh2 = mesh("SpecialMesh", rprt2, "Sphere", "nil", vt(0, 0, 0), vt(2, 2, 2))
rmsh3 = mesh("SpecialMesh", rprt3, "Sphere", "nil", vt(0, 0, 0), vt(2, 2, 2))
rmsh4 = mesh("SpecialMesh", rprt4, "Head", "nil", vt(0, 0, 0), vt(2, 2, 2))
rmsh5 = mesh("SpecialMesh", rprt5, "Head", "nil", vt(0, 0, 0), vt(2, 2, 2))
rmsh6 = mesh("CylinderMesh", rprt6, "", "", vt(0, 0, 0), vt(8, 1, 8))
rmsh7 = mesh("CylinderMesh", rprt7, "", "", vt(0, 0, 0), vt(3, 1, 3))
rmsh8 = mesh("CylinderMesh", rprt8, "", "", vt(0, 0, 0), vt(7.5, 2, 7.5))
rmsh9 = mesh("SpecialMesh", rprt9, "FileMesh", "3270017", vt(0, 0, 0), vt(1.4, 1.4, 3))
rmsh10 = mesh("CylinderMesh", rprt10, "", "", vt(0, 0, 0), vt(7, 2, 7))
rmsh11 = mesh("CylinderMesh", rprt11, "", "", vt(0, 0, 0), vt(5, 2.1, 5))
rmsh12 = mesh("SpecialMesh", rprt12, "Sphere", "nil", vt(0, 0, 0), vt(4, 3, 4))
rmsh13 = mesh("SpecialMesh", rprt13, "Wedge", "nil", vt(0, 0, 0), vt(5, 4, 4))
rmsh14 = mesh("BlockMesh", rprt14, "", "", vt(0, 0, 0), vt(5, 8, 1))
rmsh15 = mesh("SpecialMesh", rprt15, "FileMesh", "3270017", vt(0, 0, 0), vt(1.3, 1.3, 2))
rmsh16 = mesh("CylinderMesh", rprt16, "", "", vt(0, 0, 0), vt(4, 1, 4))
rmsh17 = mesh("CylinderMesh", rprt17, "", "", vt(0, 0, 0), vt(3.5, 1, 3.5))
rmsh18 = mesh("CylinderMesh", rprt18, "", "", vt(0, 0, 0), vt(2, 1, 2))
rmsh19 = mesh("BlockMesh", rprt19, "", "", vt(0, 0, 0), vt(0.5, 5, 1))
rmsh20 = mesh("BlockMesh", rprt20, "", "", vt(0, 0, 0), vt(0.5, 8, 1))
rmsh21 = mesh("BlockMesh", rprt21, "", "", vt(0, 0, 0), vt(0.5, 8, 1))
lmsh1 = mesh("SpecialMesh", lprt1, "Head", "nil", vt(0, 0, 0), vt(2, 6, 2))
lmsh2 = mesh("SpecialMesh", lprt2, "Sphere", "nil", vt(0, 0, 0), vt(2, 2, 2))
lmsh3 = mesh("SpecialMesh", lprt3, "Sphere", "nil", vt(0, 0, 0), vt(2, 2, 2))
lmsh4 = mesh("SpecialMesh", lprt4, "Head", "nil", vt(0, 0, 0), vt(2, 2, 2))
lmsh5 = mesh("SpecialMesh", lprt5, "Head", "nil", vt(0, 0, 0), vt(2, 2, 2))
lmsh6 = mesh("CylinderMesh", lprt6, "", "", vt(0, 0, 0), vt(8, 1, 8))
lmsh7 = mesh("CylinderMesh", lprt7, "", "", vt(0, 0, 0), vt(3, 1, 3))
lmsh8 = mesh("CylinderMesh", lprt8, "", "", vt(0, 0, 0), vt(7.5, 2, 7.5))
lmsh9 = mesh("SpecialMesh", lprt9, "FileMesh", "3270017", vt(0, 0, 0), vt(1.4, 1.4, 3))
lmsh10 = mesh("CylinderMesh", lprt10, "", "", vt(0, 0, 0), vt(7, 2, 7))
lmsh11 = mesh("CylinderMesh", lprt11, "", "", vt(0, 0, 0), vt(5, 2.1, 5))
lmsh12 = mesh("SpecialMesh", lprt12, "Sphere", "nil", vt(0, 0, 0), vt(4, 3, 4))
lmsh13 = mesh("SpecialMesh", lprt13, "Wedge", "nil", vt(0, 0, 0), vt(5, 4, 4))
lmsh14 = mesh("BlockMesh", lprt14, "", "", vt(0, 0, 0), vt(5, 8, 1))
lmsh15 = mesh("SpecialMesh", lprt15, "FileMesh", "3270017", vt(0, 0, 0), vt(1.3, 1.3, 2))
lmsh16 = mesh("CylinderMesh", lprt16, "", "", vt(0, 0, 0), vt(4, 1, 4))
lmsh17 = mesh("CylinderMesh", lprt17, "", "", vt(0, 0, 0), vt(3.5, 1, 3.5))
lmsh18 = mesh("CylinderMesh", lprt18, "", "", vt(0, 0, 0), vt(2, 1, 2))
lmsh19 = mesh("BlockMesh", lprt19, "", "", vt(0, 0, 0), vt(0.5, 5, 1))
lmsh20 = mesh("BlockMesh", lprt20, "", "", vt(0, 0, 0), vt(0.5, 8, 1))
lmsh21 = mesh("BlockMesh", lprt21, "", "", vt(0, 0, 0), vt(0.5, 8, 1))
local rwld1 = weld(rprt1, rprt1, RightArm, euler(1.57, 0, 0) * cf(0, 1, 0))
local rwld2 = weld(rprt2, rprt2, rprt1, euler(0, 0, 0) * cf(0, 0.6, 0))
local rwld3 = weld(rprt3, rprt3, rprt1, euler(0, 0, 0) * cf(0, -0.6, 0))
local rwld4 = weld(rprt4, rprt4, rprt2, euler(1.57, 0, 0) * cf(0, 0, 0.2))
local rwld5 = weld(rprt5, rprt5, rprt3, euler(1.57, 0, 0) * cf(0, 0, 0.2))
local rwld6 = weld(rprt6, rprt6, rprt1, euler(-1.57, 0, 0) * cf(0, 0, 0.3))
local rwld7 = weld(rprt7, rprt7, rprt6, euler(0, 0, 0) * cf(0, 0.1, 0))
local rwld8 = weld(rprt8, rprt8, rprt7, euler(0, 0, 0) * cf(0, 0.25, 0))
local rwld9 = weld(rprt9, rprt9, rprt8, euler(1.57, 0, 0) * cf(0, 0.05, 0))
local rwld10 = weld(rprt10, rprt10, rprt8, euler(0, 0, 0) * cf(0, 0.1, 0))
local rwld11 = weld(rprt11, rprt11, rprt10, euler(0, 0, 0) * cf(0, 0, 0))
local rwld12 = weld(rprt12, rprt12, rprt11, euler(0, 0, 0) * cf(0, 0.1, 0))
local rwld13 = weld(rprt13, rprt13, rprt6, cf(0, -0.3, -0.4) * euler(0, -1.57, 0))
local rwld14 = weld(rprt14, rprt14, rprt13, euler(0, 0, 0) * cf(0, -0.8, -0.29))
local rwld15 = weld(rprt15, rprt15, rprt14, euler(1.57, 0, 0) * cf(0, 0, 0.7))
local rwld16 = weld(rprt16, rprt16, rprt14, euler(1.57, 0, 0) * cf(0, 0.6, -0.02))
local rwld17 = weld(rprt17, rprt17, rprt14, euler(1.57, 0, 0) * cf(0, 0.6, -0.03))
local rwld18 = weld(rprt18, rprt18, rprt14, euler(1.57, 0, 0) * cf(0, 0.6, -0.04))
local rwld19 = weld(rprt19, rprt19, rprt14, euler(0, 0, 0) * cf(0, -0.29, -0.02))
local rwld20 = weld(rprt20, rprt20, rprt14, euler(0, 0, 0) * cf(0.3, 0.01, -0.02))
local rwld21 = weld(rprt21, rprt21, rprt14, euler(0, 0, 0) * cf(-0.3, 0.01, -0.02))
local lwld1 = weld(lprt1, lprt1, LeftArm, euler(1.57, 3.14, 0) * cf(0, 1, 0))
local lwld2 = weld(lprt2, lprt2, lprt1, euler(0, 0, 0) * cf(0, 0.6, 0))
local lwld3 = weld(lprt3, lprt3, lprt1, euler(0, 0, 0) * cf(0, -0.6, 0))
local lwld4 = weld(lprt4, lprt4, lprt2, euler(1.57, 0, 0) * cf(0, 0, 0.2))
local lwld5 = weld(lprt5, lprt5, lprt3, euler(1.57, 0, 0) * cf(0, 0, 0.2))
local lwld6 = weld(lprt6, lprt6, lprt1, euler(-1.57, 0, 0) * cf(0, 0, 0.3))
local lwld7 = weld(lprt7, lprt7, lprt6, euler(0, 0, 0) * cf(0, 0.1, 0))
local lwld8 = weld(lprt8, lprt8, lprt7, euler(0, 0, 0) * cf(0, 0.25, 0))
local lwld9 = weld(lprt9, lprt9, lprt8, euler(1.57, 0, 0) * cf(0, 0.05, 0))
local lwld10 = weld(lprt10, lprt10, lprt8, euler(0, 0, 0) * cf(0, 0.1, 0))
local lwld11 = weld(lprt11, lprt11, lprt10, euler(0, 0, 0) * cf(0, 0, 0))
local lwld12 = weld(lprt12, lprt12, lprt11, euler(0, 0, 0) * cf(0, 0.1, 0))
local lwld13 = weld(lprt13, lprt13, lprt6, cf(0, -0.3, -0.4) * euler(0, -1.57, 0))
local lwld14 = weld(lprt14, lprt14, lprt13, euler(0, 0, 0) * cf(0, -0.8, -0.29))
local lwld15 = weld(lprt15, lprt15, lprt14, euler(1.57, 0, 0) * cf(0, 0, 0.7))
local lwld16 = weld(lprt16, lprt16, lprt14, euler(1.57, 0, 0) * cf(0, 0.6, -0.02))
local lwld17 = weld(lprt17, lprt17, lprt14, euler(1.57, 0, 0) * cf(0, 0.6, -0.03))
local lwld18 = weld(lprt18, lprt18, lprt14, euler(1.57, 0, 0) * cf(0, 0.6, -0.04))
local lwld19 = weld(lprt19, lprt19, lprt14, euler(0, 0, 0) * cf(0, -0.29, -0.02))
local lwld20 = weld(lprt20, lprt20, lprt14, euler(0, 0, 0) * cf(0.3, 0.01, -0.02))
local lwld21 = weld(lprt21, lprt21, lprt14, euler(0, 0, 0) * cf(-0.3, 0.01, -0.02))
num = 0
for i = 1, 3 do
  local rprts = part(3, modelzorz, 0.5, 0, BrickColor.new("Dark stone grey"), "Right PartS", vt())
  rmshs = mesh("SpecialMesh", rprts, "Wedge", "nil", vt(0, 0, 0), vt(2, 1.5, 2.5))
  local rwlds = weld(rprts, rprts, rprt10, euler(1.4, 0, 0) * cf(0, 0.25, 0.7) * euler(0, num, 0))
  num = num + 2.093
end
num = -0.9
for i = 1, 2 do
  local rprte1 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Right PartE1", vt())
  local rprte2 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Right PartE2", vt())
  local rprte3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right PartE3", vt())
  local rprte4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right PartE4", vt())
  rmshe1 = mesh("SpecialMesh", rprte1, "Wedge", "nil", vt(0, 0, 0), vt(3, 4, 4))
  rmshe2 = mesh("BlockMesh", rprte2, "", "", vt(0, 0, 0), vt(3, 8, 1))
  rmshe3 = mesh("BlockMesh", rprte3, "", "", vt(0, 0, 0), vt(0.25, 9.99, 1))
  rmshe4 = mesh("BlockMesh", rprte4, "", "", vt(0, 0, 0), vt(0.25, 9.99, 1))
  local rwlde1 = weld(rprte1, rprte1, rprt6, cf(0, -0.3, -0.5) * euler(0, -1.57 - num, 0))
  local rwlde2 = weld(rprte2, rprte2, rprte1, euler(0, 0, 0) * cf(0, -0.8, -0.29))
  local rwlde3 = weld(rprte3, rprte3, rprte2, euler(0, 0, 0) * cf(0.125, 0.2, -0.02))
  local rwlde4 = weld(rprte4, rprte4, rprte2, euler(0, 0, 0) * cf(-0.125, 0.2, -0.02))
  num = num + 1.8
end
num = 0
for i = 1, 3 do
  local lprts = part(3, modelzorz, 0.5, 0, BrickColor.new("Dark stone grey"), "Left PartS", vt())
  local lmshs = mesh("SpecialMesh", lprts, "Wedge", "nil", vt(0, 0, 0), vt(2, 1.5, 2.5))
  local lwlds = weld(lprts, lprts, lprt10, euler(1.4, 0, 0) * cf(0, 0.25, 0.7) * euler(0, num, 0))
  num = num + 2.093
end
num = -0.9
for i = 1, 2 do
  local lprte1 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Left PartE1", vt())
  local lprte2 = part(3, modelzorz, 0.3, 0, BrickColor.new("Dark stone grey"), "Left PartE2", vt())
  local lprte3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left PartE3", vt())
  local lprte4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left PartE4", vt())
  local lmshe1 = mesh("SpecialMesh", lprte1, "Wedge", "nil", vt(0, 0, 0), vt(3, 4, 4))
  local lmshe2 = mesh("BlockMesh", lprte2, "", "", vt(0, 0, 0), vt(3, 8, 1))
  local lmshe3 = mesh("BlockMesh", lprte3, "", "", vt(0, 0, 0), vt(0.25, 9.99, 1))
  local lmshe4 = mesh("BlockMesh", lprte4, "", "", vt(0, 0, 0), vt(0.25, 9.99, 1))
  local lwlde1 = weld(lprte1, lprte1, lprt6, cf(0, -0.3, -0.5) * euler(0, -1.57 - num, 0))
  local lwlde2 = weld(lprte2, lprte2, lprte1, euler(0, 0, 0) * cf(0, -0.8, -0.29))
  local lwlde3 = weld(lprte3, lprte3, lprte2, euler(0, 0, 0) * cf(0.125, 0.2, -0.02))
  local lwlde4 = weld(lprte4, lprte4, lprte2, euler(0, 0, 0) * cf(-0.125, 0.2, -0.02))
  num = num + 1.8
end
local shield = part(3, nil, 0, 1, BrickColor.new("Bright green"), "Shield", vt())
shield.Anchored = true
smsh = mesh("SpecialMesh", shield, "FileMesh", "90782182", vt(0, 0, 0), vt(0.7, 1, 0.7))
smsh.TextureId = "http://www.roblox.com/asset/?id=90782359"
smsh.VertexColor = vt(0.29, 0.5, 0.29)
local shield1 = part(3, nil, 0, 0.25, BrickColor.new("White"), "Shield", vt())
smsh = mesh("SpecialMesh", shield1, "FileMesh", "90782182", vt(0, 0, 0), vt(0.7, 0.7, 0.7))
smsh.TextureId = "http://www.roblox.com/asset/?id=90782359"
smsh.VertexColor = vt(0.29, 0.5, 0.29)
swld = weld(shield1, shield1, Torso, euler(0, 0, 0) * cf(0, -2, 0))
local shield2 = part(3, nil, 0, 0.25, BrickColor.new("White"), "Shield", vt())
smsh = mesh("SpecialMesh", shield2, "FileMesh", "90782182", vt(0, 0, 0), vt(0.7, 0.7, 0.7))
smsh.TextureId = "http://www.roblox.com/asset/?id=90782359"
smsh.VertexColor = vt(0.29, 0.5, 0.29)
swld = weld(shield2, shield2, Torso, euler(3.14, 0, 0) * cf(0, 2, 0))
local ball = part(3, nil, 0, 1, BrickColor.new("White"), "Ball", vt(6, 6, 6))
ball.CanCollide = true
ball.Shape = "Ball"
ballw = weld(ball, ball, Torso, euler(0, 0, 0) * cf(0, 0, 0))
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
  hbwld.Part1 = lprt7
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Tortoise Shell"
  script.Parent = Tool
end
Bin = Instance.new("HopperBin", Player.Backpack)
if Bin.Name == "Classic Omega" then
  Bin.Name = "Tortoise Shell"
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
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  mdec2.Parent = Decrease
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2, 0, -1.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.3, 0, 1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
end
StaggerAnim = function()
  attack = true
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
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.8) * euler(0, -0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.6) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  swait(40)
  combo = 0
  attack = false
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
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.5) * euler(0.8, 0, 0.5), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.6, 0, 1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 0.87, -0.1), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.27, 0.4), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC169: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC169: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("200632136", lprt7, 1, 1)
  con1 = hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(10, 15)), nil, true)
  end)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.5, 2, 1.5)
  hitboxCF = lprt7.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.4 do
    swait()
    hitboxCF = lprt7.CFrame
    hitbox.CFrame = hitboxCF
    lwld8.C0 = lwld8.C0 * euler(0, 0.4, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0.7) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.7), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, -0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.7, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(0, 0.7, 0.1), 0.4)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = lprt7.CFrame
    hitbox.CFrame = hitboxCF
    lwld8.C0 = lwld8.C0 * euler(0, 0.4, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 1.2) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, 0.6), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0.3) * euler(0, -0.5, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.2, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.6, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.4)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC600: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC600: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  con1:disconnect()
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.12 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 1) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -1) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC187: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC187: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("200632211", rprt7, 1, 1)
  con1 = hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(10, 15)), nil, true)
  end)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.5, 2, 1.5)
  hitboxCF = rprt7.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = rprt7.CFrame
    hitbox.CFrame = hitboxCF
    rwld8.C0 = rwld8.C0 * euler(0, 0.4, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -1.57) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.8, 0, 1.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC416: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC416: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  con1:disconnect()
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
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, 0.6), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.4)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC175: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC175: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("200632136", lprt7, 1, 0.8)
  con1 = hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(10, 15)), nil, true)
  end)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.5, 2, 1.5)
  hitboxCF = lprt7.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.35 do
    swait()
    hitboxCF = lprt7.CFrame
    hitbox.CFrame = hitboxCF
    lwld8.C0 = lwld8.C0 * euler(0, 0.4, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 0, -1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 3.14, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC410: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC410: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = lprt7.CFrame
    hitbox.CFrame = hitboxCF
    lwld8.C0 = lwld8.C0 * euler(0, 0.4, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 0, -1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 3.14, 1.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC612: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC612: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  con1:disconnect()
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
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC181: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC181: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("200632370", rprt7, 1, 1)
  con1 = hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 8, math.random(10, 10), "Normal", RootPart, 0.2, 2, (math.random(5, 8)), nil, true)
  end)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1.5, 2, 1.5)
  hitboxCF = rprt7.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.03 do
    swait()
    hitboxCF = rprt7.CFrame
    hitbox.CFrame = hitboxCF
    rwld8.C0 = rwld8.C0 * euler(0, 0.5, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.2)
    if Stagger.Value ~= true and Stun.Value < 100 then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC416: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC416: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  con1:disconnect()
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
Guard = function()
  attack = true
  manualguardend = false
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 0.4
  shield.Transparency = 1
  shield.Parent = modelzorz
  for i = 1, 0.5, -0.05 do
    swait()
    shield.Transparency = i
    shield.CFrame = cf(Torso.Position)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0, -1) * euler(3, 0, 0) * euler(0, -1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0, -1) * euler(2.9, 0, 0) * euler(0, 1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0), 0.2)
  end
  guard = true
  repeat
    Block.Value = true
    swait()
    while guard == true and Block.Value == true and blocknum > 1 do
      swait()
      shield.CFrame = cf(Torso.Position)
      blocknum = blocknum - 0.4
    end
    if manualguardend == false and blocknum > 1 then
      blocknum = blocknum - 40
    else
      guard = false
    end
    if Stagger.Value ~= true and Stun.Value < 100 then
      if StaggerHit.Value == true then
        break
      end
    end
  until blocknum <= 0 or guard == false
  if blocknum < 0 then
    blocknum = 0
  end
  MagicCircle(BrickColor.new("Bright green"), cf(Torso.Position) * cf(0, -2.5, 0), 40, 50, 40, 1, 1, 1, 0.05)
  shield.Parent = nil
  guard = false
  Block.Value = false
  dec.Parent = nil
  attack = false
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
    mana.Value = mana.Value - 25
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(1.2, 0, -0.1) * euler(0, 1, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.2) * euler(1.2, 0, 0.1) * euler(0, -1, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.07, -0.1), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.07, 0.4), 0.2)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC208: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC208: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 5
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.2) * euler(0.3, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, 0) * euler(0, 1, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.5, 0, 0.1) * euler(0, -0.7, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.1, -0.5) * euler(0, 1.57, -0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.07, 0.8), 0.4)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC389: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC389: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    cf1 = -5
    num1 = 500
    for i = 1, 5 do
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
          for i = 1, 2 do
            cff = RootPart.CFrame * cf(math.random(-num1, num1) / 100, 0, cf1 + math.random(-400, 400) / 100)
            local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
            ref.Anchored = true
            ref.CFrame = cff
            game:GetService("Debris"):AddItem(ref, 1)
            cryshitfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
            if cryshitfloor ~= nil then
              so("199146035", ref, 1, 1.2)
              ref.CFrame = cf(0, 3, 0)
              MagniDamage(ref, 10, 5, 10, math.random(20, 40), "Knockdown2", true, "Damage", 0.2, 400, math.random(10, 20))
              MagicIcicle(BrickColor.new("Bright green"), cf(math.random(-50, 50) / 100, 0, math.random(-50, 50) / 100), 2, 6, 2, 0.02)
            end
          end
          cf1 = cf1 - 5
          num1 = num1 + 200
          swait(2)
          -- DECOMPILER ERROR at PC560: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC560: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 1, 10 do
      swait()
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC580: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC580: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    dec.Parent = nil
    attack = false
  end
end
do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 20 then
    attack = true
    cooldowns[3] = 0
    mana.Value = mana.Value - 20
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 5
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, -0.2), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 0.4), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -0.4), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.1, -0.4) * euler(0, 1.57, 0.1), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0), 0.2)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC203: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC203: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, -0.1), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.7), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.7), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, -0.2) * euler(0, 1.57, 0.3), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0), 0.2)
      if Stagger.Value ~= true and Stun.Value < 100 then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    while 1 do
      if hitfloor == nil then
        swait()
      end
      if Stagger.Value ~= true and Stun.Value < 100 and StaggerHit.Value == true then
        break
      end
    end
    if Stagger.Value ~= true and Stun.Value < 100 then
      if StaggerHit.Value == true then
        so("200632561", RightLeg, 1, 1)
        DecreaseStat(Character, "Defense", -0.2, 200)
        MagicCircle(BrickColor.new("Bright green"), cf(RightLeg.Position) * cf(0, -1, 0), 1, 1, 1, 6, 6, 6, 0.1)
        MagicRing(BrickColor.new("Bright green"), cf(RightLeg.Position) * cf(0, -1, 0) * euler(1.57, 0, 0), 1, 1, 1, 3, 3, 1, 0.05)
        MagniDamage(Torso, 30, 10, 15, math.random(30, 60), "Knockdown2", true, "Movement", 0.2, 200, math.random(15, 30))
        for i = 1, 10 do
          swait()
          if Stagger.Value ~= true and Stun.Value < 100 then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC502: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC502: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        dec.Parent = nil
        attack = false
      end
    end
  end
end
do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and mana.Value >= 70 then
    attack = true
    mana.Value = mana.Value - 70
    so("199145433", RootPart, 1, 1)
    local busterhit = false
    do
      bustTarget = nil
      con1 = hitbox.Touched:connect(function(hit)
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
      so("200632821", rprt7, 1, 1)
      busterhit = true
      bustTarget = hit.Parent
    end
  end)
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(4, 5, 4)
      hitboxCF = rprt7.CFrame
      hitbox.CFrame = hitboxCF
      clonenum = 0
      for i = 0, 1, 0.02 do
        swait()
        hitboxCF = rprt7.CFrame
        hitbox.CFrame = hitboxCF
        Torso.Velocity = RootPart.CFrame.lookVector * 60
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.2)
        if clonenum >= 5 then
          clonenum = 0
          Clone()
        else
          clonenum = clonenum + 1
        end
        if busterhit == true then
          break
        end
      end
      do
        con1:disconnect()
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        if busterhit == true then
          bustTarget.Humanoid.PlatformStand = true
          local dec = Instance.new("NumberValue", Decrease)
          dec.Name = "DecreaseDef"
          dec.Value = -10
          for i = 0, 1, 0.1 do
            swait()
            bustTarget.Torso.CFrame = Torso.CFrame * cf(0, 0, -2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, 0), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
          end
          do
            do
              while hitfloor == nil do
                swait()
                bustTarget.Torso.CFrame = Torso.CFrame * cf(0, 0, -2)
              end
              MagicWave(BrickColor.new("Bright green"), cf(RootPart.Position) * cf(0, -1, 0), 1, 1, 1, 5, 1, 5, 0.05)
              for i = 0, 1, 0.04 do
                swait()
                bustTarget.Torso.CFrame = Torso.CFrame * cf(0, 5, 0) * euler(1.57, 0, 0)
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, 0), 0.3)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.14, 0, 0), 0.3)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.14, 0, 0), 0.3)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
              end
              for i = 0, 1, 0.2 do
                swait()
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(3.14, 0, 0), 0.5)
              end
              hitfloor2 = nil
              while hitfloor2 == nil do
                swait()
                hitfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, bustTarget)
                bustTarget.Torso.CFrame = Torso.CFrame * cf(0, 5, 0) * euler(1.57, 0, 0)
              end
              dec.Parent = nil
              bustTarget.Torso.CFrame = Torso.CFrame * cf(0, 2, 0) * euler(1.57, 0, 0)
              Torso.Velocity = vt(0, 0, 0)
              so("200632875", RootPart, 1, 1)
              so("199145534", RootPart, 1, 0.8)
              bustTarget.Humanoid.PlatformStand = false
              MagicWave(BrickColor.new("Bright green"), cf(bustTarget.Torso.Position), 1, 1, 1, 3, 1, 3, 0.02)
              MagniDamage(bustTarget.Torso, 40, 15, 20, math.random(30, 50), "Knockdown2", false, "Defense", 0.2, 300, 100)
              cooldowns[4] = 0
              attack = false
              for i = 1, 10 do
                swait()
                Torso.Velocity = vt(0, 0, 0)
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
MagniDamage = function(Part, magni, mindam, maxdam, knock, Type, Ranged, Dec, DecAm, Dur, stun)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          if stun == nil then
            stun = math.random(5, 10)
          end
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, stun, nil, nil, Ranged, Dec, DecAm, Dur)
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
  local mg = point1.p.magnitude
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
MagicIcicle = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "9756362", vt(0, 0, 0), vt(x1, y1, z1))
  for i = 1, 2 do
    BreakEffect(brickcolor, prt.CFrame * cf(0, 4, 0), math.random(20, 80) / 100, math.random(2, 10), math.random(20, 80) / 100)
  end
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Ice", delay, msh, 1, 0.2})
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
Clone = function()
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local c = part(3, workspace, 0, 0.5, v.BrickColor, "Effect", v.Size)
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
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
  if hit.Parent == nil then
    return 
  end
  if hit.Name == "Hitbox" and hit.Parent ~= modelzorz and ranged ~= true and hit ~= hitbox and hit ~= hitbox2 then
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
        if Stats.Stun.Value < 100 then
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
    swait()
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
  end))
end
ob1u = function(mouse)
  hold = false
end
buttonhold = false
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
  if key == "z" and shieldroll == true then
    shieldroll = false
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
  if key == "e" and guard == false and blocknum >= 50 then
    Guard()
  end
  -- DECOMPILER ERROR at PC157: Unhandled construct in 'MakeBoolean' P1

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
print("Omega loaded.")
local mananum = 0
local blocknum2 = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local walk = 0
local walkforw = true
while 1 do
  while 1 do
    while 1 do
      swait()
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
      if Mvmt.Value < 0 or Stagger.Value == true or 100 <= Stun.Value or StaggerHit.Value == true then
        Humanoid.WalkSpeed = 0
      else
        Humanoid.WalkSpeed = 16 * Mvmt.Value
      end
      if 100 <= Stun.Value and stunanim == false then
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
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1, 0, 0.8), 0.2)
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
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.2), 0.2)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.2) * euler(0.7, 0, 0.2), 0.2)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
            end
          else
            if torvel < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if attack == false then
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5), 0.3)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.3)
                RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.5) * euler(1.3 - (donum) / 5, 0, 0.5 + (donum) / 5), 0.3)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.8 - (donum) / 5, 0, 0.8 - (donum) / 5), 0.3)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.07, -0.1), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.07, 0.4), 0.2)
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
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 0.2), 0.3)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0.3), 0.3)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
                end
              else
                if 30 <= torvel and hitfloor ~= nil then
                  Anim = "Run"
                  if attack == false then
                    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.2), 0.4)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.8, 0, 0.2), 0.4)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.2), 0.4)
                    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, -0.2) * euler(1, 0, 0.2), 0.4)
                    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                    RH.C0 = clerp(RH.C0, RHC0 * cf(1, 1, 0.2) * euler(0, -0.2, -0.2), 0.4)
                    LH.C0 = clerp(LH.C0, LHC0 * cf(-0.5, 1, 0) * euler(0.2, 0, -1), 0.4)
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
        fenbarmove.Text = "Walkspeed\n(" .. MvmtVal .. ")"
        if 100 <= Stun.Value then
          fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
        else
          fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / 100, 0)), nil, 1, 0.4, true)
        end
        fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
        if 100 <= mana.Value then
          mana.Value = 100
        else
          if mananum <= 8 and shieldroll == false then
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
        if 100 <= blocknum then
          blocknum = 100
          -- DECOMPILER ERROR at PC6485: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC6485: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC6485: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    if blocknum2 <= 6 then
      blocknum2 = blocknum2 + 1
      -- DECOMPILER ERROR at PC6491: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC6491: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  blocknum2 = 0
  if guard == false then
    blocknum = blocknum + 1
  end
end

