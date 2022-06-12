
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
Face = Head.face
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
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local equipped = false
local manainc = 9
local triangparent = workspace
local dynamomove = true
local Mode = "Classic"
local overload = 0
local defending = false
local choosemode = false
local move1 = "(Z)\n[MORPH SHIELD]\nVital Stab"
local move2 = "(X)\n[DYNAMIC BLADE]\nKinetic Strike"
local move3 = "(C)\n[ENERGY REACTOR]\nLaser Barrage"
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
local cooldownadd1 = 0.48
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.34
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.45
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH,LSH = nil,nil
RW,LW = Instance.new("Motor"),Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
TorsoRed = TorsoColor.Color.r
TorsoGreen = TorsoColor.Color.g
TorsoBlue = TorsoColor.Color.b
NewCol = BrickColor.new("Dark green").Color
NewCol2 = BrickColor.new("Bright blue").Color
NewCol3 = BrickColor.new("Bright blue").Color
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

createpassgui = function(parent)
  print("makegui111")
  local g = Instance.new("ScreenGui", parent)
  local f = Instance.new("Frame", g)
  f.Position = UDim2.new(0.3, 0, 0.25, 0)
  f.Size = UDim2.new(0.4, 0, 0.4, 0)
  f.Style = "DropShadow"
  local t = Instance.new("TextBox", f)
  t.BackgroundColor3 = Color3.new(0, 0, 0)
  t.BackgroundTransparency = 0.5
  t.BorderSizePixel = 0
  t.Position = UDim2.new(0.15, 0, 0.2, 0)
  t.Size = UDim2.new(0.7, 0, 0.2, 0)
  t.Font = "SourceSansLight"
  t.Text = "Enter Access Code."
  t.TextScaled = true
  t.TextColor3 = Color3.new(1, 1, 1)
  t.TextStrokeTransparency = 0
  local t2 = Instance.new("TextButton", f)
  t2.BackgroundColor3 = Color3.new(0, 0, 0)
  t2.BackgroundTransparency = 0.5
  t2.BorderSizePixel = 0
  t2.Position = UDim2.new(0.3, 0, 0.5, 0)
  t2.Size = UDim2.new(0.4, 0, 0.15, 0)
  t2.TextScaled = true
  t2.Font = "SourceSansLight"
  t2.Text = "Submit"
  t2.TextColor3 = Color3.new(1, 1, 1)
  t2.TextStrokeTransparency = 0
  print("done1")
  return t2
end

if Character:findFirstChild("Permanence", true) ~= nil then
  Character:findFirstChild("Permanence", true).Parent = nil
end
if Character:findFirstChild("Dynamo", true) ~= nil then
  Character:findFirstChild("Dynamo", true).Parent = nil
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
local passive1 = Instance.new("NumberValue", Decrease)
passive1.Name = "DecreaseAtk"
passive1.Value = 0
local passive2 = Instance.new("NumberValue", Decrease)
passive2.Name = "DecreaseDef"
passive2.Value = 0
local passive3 = Instance.new("NumberValue", Decrease)
passive3.Name = "DecreaseMvmt"
passive3.Value = 0
passive1.Value = 0.1
passive2.Value = -0.05
passive3.Value = -0.1
local passive4 = Instance.new("NumberValue", nil)
passive4.Name = "DecreaseDef"
passive4.Value = -0.4
local passive5 = Instance.new("NumberValue", nil)
passive5.Name = "DecreaseMvmt"
passive5.Value = 0.6
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
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol3).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarblock1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarblock2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("White").Color, UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarblock3 = gui("TextLabel", fenframe, "Overload(" .. overload .. ")", 1, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
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
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new(NewCol3).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new(NewCol3).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol3).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol3).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Permanence"
local modelzorz2 = Instance.new("Model")
modelzorz2.Parent = Character
modelzorz2.Name = "Dynamo"
prt1 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Part01", vt())
prt2 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part02", vt())
prt3 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part03", vt())
prt4 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part04", vt())
prt5 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part05", vt())
prt6 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part06", vt())
prt7 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part07", vt())
prt8 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part08", vt())
prt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part09", vt())
prt10 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part10", vt())
prt11 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part11", vt())
prt13 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part13", vt())
prt14 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part14", vt())
prt15 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part15", vt())
prt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part16", vt())
prt17 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part17", vt())
prt18 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part18", vt())
prt19 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part19", vt())
prt20 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part20", vt())
prt21 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part21", vt())
prt23 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part23", vt())
prt29 = part(3, modelzorz, 0.3, 0.05, BrickColor.new(NewCol2), "Part29", vt())
prt31 = part(3, modelzorz, 0.2, 0.5, BrickColor.new(NewCol2), "Part31", vt())
msh1 = mesh("BlockMesh", prt1, "", "", vt(0, 0, 0), vt(1, 4.99, 1))
msh2 = mesh("SpecialMesh", prt2, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 2, 1.1))
msh3 = mesh("BlockMesh", prt3, "", "", vt(0, 0, 0), vt(1.1, 1, 1.1))
msh4 = mesh("SpecialMesh", prt4, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 1, 1.1))
msh5 = mesh("BlockMesh", prt5, "", "", vt(0, 0, 0), vt(1.1, 1, 1.1))
msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(1.1, 1, 2))
msh7 = mesh("SpecialMesh", prt7, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 2))
msh8 = mesh("SpecialMesh", prt8, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 2))
msh9 = mesh("CylinderMesh", prt9, "", "", vt(0, 0, 0), vt(3, 2, 3))
msh10 = mesh("BlockMesh", prt10, "", "", vt(0, 0, 0), vt(2, 4, 2))
msh11 = mesh("CylinderMesh", prt11, "", "", vt(0, 0, 0), vt(2, 2, 2))
msh13 = mesh("BlockMesh", prt13, "", "", vt(0, 0, 0), vt(2, 2, 2))
msh14 = mesh("CylinderMesh", prt14, "", "", vt(0, 0, 0), vt(2, 1.99, 2))
msh15 = mesh("BlockMesh", prt15, "", "", vt(0, 0, 0), vt(0.5, 1, 3))
msh16 = mesh("SpecialMesh", prt16, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1, 2))
msh17 = mesh("BlockMesh", prt17, "", "", vt(0, 0, 0), vt(0.5, 1, 3))
msh18 = mesh("SpecialMesh", prt18, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1, 2))
msh19 = mesh("BlockMesh", prt19, "", "", vt(0, 0, 0), vt(1.5, 2, 1.5))
msh20 = mesh("SpecialMesh", prt20, "FileMesh", "1778999", vt(0, 0, 0), vt(0.3, 0.3, 0.3))
msh21 = mesh("CylinderMesh", prt21, "", "", vt(0, 0, 0), vt(2.5, 3, 2.5))
msh23 = mesh("SpecialMesh", prt23, "FileMesh", "1778999", vt(0, 0, 0), vt(0.375, 0.4, 0.375))
msh29 = mesh("BlockMesh", prt29, "", "", vt(0, 0, 0), vt(0.5, 15, 2))
msh31 = mesh("BlockMesh", prt31, "", "", vt(0, 0, 0), vt(0.2, 16, 3))
local wld1 = weld(prt1, prt1, Torso, euler(-1.2, 0, -0.5) * euler(0, 0, 3.14) * cf(-0.8, 1, 1.5))
local wld2 = weld(prt2, prt2, prt1, euler(0, 0, 0) * cf(0, 0.1, 0))
local wld3 = weld(prt3, prt3, prt2, euler(0, 0, 0) * cf(0, 0.3, 0))
local wld4 = weld(prt4, prt4, prt1, euler(0, 0, 3.14) * cf(0, -0.2, 0))
local wld5 = weld(prt5, prt5, prt4, euler(0, 0, 0) * cf(0, 0.2, 0))
local wld6 = weld(prt6, prt6, prt1, euler(0, 0, 0) * cf(0, -0.6, 0))
local wld7 = weld(prt7, prt7, prt6, euler(1.1, 0, 0) * cf(0, 0.08, 0.2))
local wld8 = weld(prt8, prt8, prt6, euler(1.1, 0, 0) * cf(0, 0.08, 0.2) * euler(0, 3.14, 0))
local wld9 = weld(prt9, prt9, prt6, euler(0, 0, 1.57) * cf(0, -0.3, 0))
local wld10 = weld(prt10, prt10, prt9, euler(0, 0, 1.57) * cf(0.6, 0, 0) * euler(0, -1.6, 0))
local wld11 = weld(prt11, prt11, prt10, euler(0, 0, 1.57) * cf(0, 0.4, 0))
local wld13 = weld(prt13, prt13, prt9, euler(0, 0, 1.57) * cf(0.4, 0, 0) * euler(0, 2.4, 0))
local wld14 = weld(prt14, prt14, prt13, euler(0, 0, 1.57) * cf(0, 0.2, 0))
local wld15 = weld(prt15, prt15, prt14, euler(0, 0, 1.57) * cf(0, 0.1, 0.4) * euler(0, 1, 0))
local wld16 = weld(prt16, prt16, prt15, euler(0, 0, 0) * cf(0, 0, 0.5))
local wld17 = weld(prt17, prt17, prt14, euler(0, 0, 1.57) * cf(0, -0.1, 0.4) * euler(0, 1, 0))
local wld18 = weld(prt18, prt18, prt17, euler(0, 0, 0) * cf(0, 0, 0.5))
local wld19 = weld(prt19, prt19, prt9, euler(0, 0, 1.57) * cf(0.3, 0, 0))
local wld20 = weld(prt20, prt20, prt19, euler(0, 0, 0) * cf(0, 0, 0))
local wld21 = weld(prt21, prt21, prt19, euler(0, 0, 0) * cf(0, 0.5, 0))
local wld23 = weld(prt23, prt23, prt21, euler(3.14, 0, 0) * cf(0, 0.62, 0))
local wld29 = weld(prt29, prt29, prt23, euler(0, 0, 0) * cf(0, -1.2, 0))
local wld31 = weld(prt31, prt31, prt23, euler(0, 0, 0) * cf(0, -1.3, 0))
for i = -0.2, 0.2, 0.4 do
  local prt12 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part12", vt())
  msh12 = mesh("SpecialMesh", prt12, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
  local wld12 = weld(prt12, prt12, prt10, euler(0, 0, 0) * cf(0, i, 0.3))
end
for i = 1.57, 6.28 do
  local prt22 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part22", vt())
  msh22 = mesh("SpecialMesh", prt22, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 1))
  local wld22 = weld(prt22, prt22, prt19, euler(0.2, 0, 0) * cf(0, 0.1, 0.22) * euler(0, i, 0))
end
for i = 0, 3.14, 3.14 do
  local prt24 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part24", vt())
  local prt25 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part25", vt())
  local prt26 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part26", vt())
  local prt27 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part27", vt())
  local prt28 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Part28", vt())
  msh24 = mesh("BlockMesh", prt24, "", "", vt(0, 0, 0), vt(1, 2, 0.5))
  msh25 = mesh("BlockMesh", prt25, "", "", vt(0, 0, 0), vt(1, 7, 0.5))
  msh26 = mesh("SpecialMesh", prt26, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
  msh27 = mesh("SpecialMesh", prt27, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 0.5))
  msh28 = mesh("SpecialMesh", prt28, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 0.5))
  local wld24 = weld(prt24, prt24, prt21, euler(0, 0, 0) * cf(0, 0.1, 0.25) * euler(0, i, 0))
  local wld25 = weld(prt25, prt25, prt24, euler(0, 0, 0) * cf(0, 0.5, 0.1))
  local wld26 = weld(prt26, prt26, prt24, euler(0, 0, 0) * cf(0, -0.3, 0.05))
  local wld27 = weld(prt27, prt27, prt24, euler(3.14, 0, 0) * cf(0, 0.3, 0))
  local wld28 = weld(prt28, prt28, prt25, euler(3.14, 3.14, 0) * cf(0, 0.8, 0))
end
local prt30 = part(3, modelzorz, 0.3, 0.05, BrickColor.new(NewCol2), "Part30", vt())
msh30 = mesh("SpecialMesh", prt30, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 1))
local wld30 = weld(prt30, prt30, prt29, euler(0, 0, 0) * cf(0, -1.8, 0.1) * euler(0, 0, 0))
local prt30b = part(3, modelzorz, 0.3, 0.05, BrickColor.new(NewCol2), "Part30B", vt())
msh30b = mesh("SpecialMesh", prt30b, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 1))
local wld30b = weld(prt30b, prt30b, prt29, euler(0, 0, 0) * cf(0, -1.8, 0.1) * euler(0, 3.14, 0))
local prt32 = part(3, modelzorz, 0.2, 0.5, BrickColor.new(NewCol2), "Part32", vt())
msh32 = mesh("SpecialMesh", prt32, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 5, 1.5))
local wld32 = weld(prt32, prt32, prt31, euler(0, 0, 0) * cf(0, -2.1, 0.15) * euler(0, 0, 0))
local prt32b = part(3, modelzorz, 0.2, 0.5, BrickColor.new(NewCol2), "Part32B", vt())
msh32b = mesh("SpecialMesh", prt32b, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 5, 1.5))
local wld32b = weld(prt32b, prt32b, prt31, euler(0, 0, 0) * cf(0, -2.1, 0.15) * euler(0, 3.14, 0))
local prt33 = part(3, modelzorz, 0.3, 1.1, BrickColor.new(NewCol2), "Part33", vt())
local prt34 = part(3, modelzorz, 0.3, 1.1, BrickColor.new(NewCol2), "Part34", vt())
local prt35 = part(3, modelzorz, 0.3, 1.1, BrickColor.new(NewCol2), "Part35", vt())
local prt36 = part(3, modelzorz, 0.5, 1.5, BrickColor.new(NewCol2), "Part36", vt())
local prt37 = part(3, modelzorz, 0.5, 1.5, BrickColor.new(NewCol2), "Part37", vt())
local prt38 = part(3, modelzorz, 0.5, 1.5, BrickColor.new(NewCol2), "Part38", vt())
local prt39 = part(3, modelzorz, 0.5, 1.5, BrickColor.new(NewCol2), "Part39", vt())
msh33 = mesh("BlockMesh", prt33, "", "", vt(0, 0, 0), vt(0.5, 23, 3))
msh34 = mesh("SpecialMesh", prt34, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 5, 1.5))
msh35 = mesh("SpecialMesh", prt35, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 5, 1.5))
msh36 = mesh("SpecialMesh", prt36, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 30, 9))
msh37 = mesh("SpecialMesh", prt37, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 30, 9))
msh38 = mesh("SpecialMesh", prt38, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 9))
msh39 = mesh("SpecialMesh", prt39, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 9))
local wld33 = weld(prt33, prt33, prt23, euler(0, 0, 0) * cf(0, -2, 0))
local wld34 = weld(prt34, prt34, prt33, euler(0, 0, 0) * cf(0, -2.8, 0.15) * euler(0, 0, 0))
local wld35 = weld(prt35, prt35, prt33, euler(0, 0, 0) * cf(0, -2.8, 0.15) * euler(0, 3.14, 0))
local wld36 = weld(prt36, prt36, prt23, euler(0, 0, 0) * cf(0, -2.7, 0.9) * euler(0, 0, 0))
local wld37 = weld(prt37, prt37, prt23, euler(0, 0, 0) * cf(0, -2.7, 0.9) * euler(0, 3.14, 0))
local wld38 = weld(prt38, prt38, prt23, euler(0, 0, 3.14) * cf(0, 0.5, 0.9) * euler(0, 0, 0))
local wld39 = weld(prt39, prt39, prt23, euler(0, 0, 3.14) * cf(0, 0.5, 0.9) * euler(0, 3.14, 0))
handle = part(3, modelzorz2, 0, 1, BrickColor.new("Black"), "Handle", vt())
dprt1 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part01", vt())
dprt2 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part02", vt())
dprt3 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part03", vt())
dprt4 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part04", vt())
dprt5 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part05", vt())
dprt6 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part06", vt())
dprt7 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part07", vt())
dprt8 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part08", vt())
dprt9 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part09", vt())
dprt10 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part10", vt())
dprt11 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part11", vt())
dprt12 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part12", vt())
dprt13 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part13", vt())
dprt14 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part14", vt())
dprt15 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "Part15", vt())
dprt16 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part16", vt())
dprt17 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part17", vt())
dprt18 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part18", vt())
dprt19 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part19", vt())
dprt20 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part20", vt())
dprt21 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part21", vt())
dprt22 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "Part22", vt())
dprtb1 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB01", vt())
dprtb2 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB02", vt())
dprtb3 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB03", vt())
dprtb4 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB04", vt())
dprtb5 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB05", vt())
dprtb6 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB06", vt())
dprtb7 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB07", vt())
dprtb8 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB08", vt())
dprtb9 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB09", vt())
dprtb10 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB10", vt())
dprtb11 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB11", vt())
dprtb12 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB12", vt())
dprtb13 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB13", vt())
dprtb14 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB14", vt())
dprtb15 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol), "PartB15", vt())
dprtb16 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB16", vt())
dprtb17 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB17", vt())
dprtb18 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB18", vt())
dprtb19 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB19", vt())
dprtb20 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB20", vt())
dprtb21 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB21", vt())
dprtb22 = part(3, modelzorz2, 0.4, 0.5, BrickColor.new(NewCol2), "PartB22", vt())
dmsh1 = mesh("BlockMesh", dprt1, "", "", vt(0, 0, 0), vt(1.5, 6, 1))
dmsh2 = mesh("SpecialMesh", dprt2, "Wedge", "nil", vt(0, 0, 0), vt(1, 1.5, 1))
dmsh3 = mesh("SpecialMesh", dprt3, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmsh4 = mesh("SpecialMesh", dprt4, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 10, 3))
dmsh5 = mesh("SpecialMesh", dprt5, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 1.5))
dmsh6 = mesh("BlockMesh", dprt6, "", "", vt(0, 0, 0), vt(1.5, 3, 1))
dmsh7 = mesh("SpecialMesh", dprt7, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmsh8 = mesh("SpecialMesh", dprt8, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmsh9 = mesh("SpecialMesh", dprt9, "Torso", "nil", vt(0, 0, 0), vt(7, 1, 1))
dmsh10 = mesh("BlockMesh", dprt10, "", "", vt(0, 0, 0), vt(2, 4, 1))
dmsh11 = mesh("SpecialMesh", dprt11, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmsh12 = mesh("SpecialMesh", dprt12, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 0.5))
dmsh13 = mesh("BlockMesh", dprt13, "", "", vt(0, 0, 0), vt(1, 4, 1))
dmsh14 = mesh("SpecialMesh", dprt14, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
dmsh15 = mesh("SpecialMesh", dprt15, "Wedge", "nil", vt(0, 0, 0), vt(1, 4, 1))
dmsh16 = mesh("BlockMesh", dprt16, "", "", vt(0, 0, 0), vt(0.5, 7, 3))
dmsh17 = mesh("SpecialMesh", dprt17, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2.5, 3))
dmsh18 = mesh("SpecialMesh", dprt18, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 12, 3))
dmsh19 = mesh("BlockMesh", dprt19, "", "", vt(0, 0, 0), vt(0.5, 5, 1))
dmsh20 = mesh("SpecialMesh", dprt20, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 1))
dmsh21 = mesh("SpecialMesh", dprt21, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 1))
dmsh22 = mesh("SpecialMesh", dprt22, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 11, 3))
dmshb1 = mesh("BlockMesh", dprtb1, "", "", vt(0, 0, 0), vt(1.5, 6, 1))
dmshb2 = mesh("SpecialMesh", dprtb2, "Wedge", "nil", vt(0, 0, 0), vt(1, 1.5, 1))
dmshb3 = mesh("SpecialMesh", dprtb3, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmshb4 = mesh("SpecialMesh", dprtb4, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 10, 3))
dmshb5 = mesh("SpecialMesh", dprtb5, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 1.5))
dmshb6 = mesh("BlockMesh", dprtb6, "", "", vt(0, 0, 0), vt(1.5, 3, 1))
dmshb7 = mesh("SpecialMesh", dprtb7, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmshb8 = mesh("SpecialMesh", dprtb8, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmshb9 = mesh("SpecialMesh", dprtb9, "Torso", "nil", vt(0, 0, 0), vt(7, 1, 1))
dmshb10 = mesh("BlockMesh", dprtb10, "", "", vt(0, 0, 0), vt(2, 4, 1))
dmshb11 = mesh("SpecialMesh", dprtb11, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1.5))
dmshb12 = mesh("SpecialMesh", dprtb12, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 0.5))
dmshb13 = mesh("BlockMesh", dprtb13, "", "", vt(0, 0, 0), vt(1, 4, 1))
dmshb14 = mesh("SpecialMesh", dprtb14, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
dmshb15 = mesh("SpecialMesh", dprtb15, "Wedge", "nil", vt(0, 0, 0), vt(1, 4, 1))
dmshb16 = mesh("BlockMesh", dprtb16, "", "", vt(0, 0, 0), vt(0.5, 7, 3))
dmshb17 = mesh("SpecialMesh", dprtb17, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2.5, 3))
dmshb18 = mesh("SpecialMesh", dprtb18, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 12, 3))
dmshb19 = mesh("BlockMesh", dprtb19, "", "", vt(0, 0, 0), vt(0.5, 5, 1))
dmshb20 = mesh("SpecialMesh", dprtb20, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 1))
dmshb21 = mesh("SpecialMesh", dprtb21, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 1))
dmshb22 = mesh("SpecialMesh", dprtb22, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 11, 3))
hwld = weld(handle, handle, RightArm, euler(0, 0, 0) * cf(0, 0, 0))
dwld1 = weld(dprt1, dprt1, handle, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4))
dwld2 = weld(dprt2, dprt2, dprt1, euler(1.57, -1.57, 0) * cf(0, 0.7, 0))
dwld3 = weld(dprt3, dprt3, dprt1, euler(0, 1.57, 0) * cf(0, -0.7, 0))
dwld4 = weld(dprt4, dprt4, dprt1, euler(0, 1.57, 0) * cf(-0.15, -0.5, 0))
dwld5 = weld(dprt5, dprt5, dprt1, euler(0, -1.57, 3.14) * cf(-0.3, 0.65, 0))
dwld6 = weld(dprt6, dprt6, handle, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35))
dwld7 = weld(dprt7, dprt7, dprt6, euler(0, 1.57, 0) * cf(0, -0.4, 0))
dwld8 = weld(dprt8, dprt8, dprt6, euler(3.14, -1.57, 0) * cf(0, 0.4, 0))
dwld9 = weld(dprt9, dprt9, dprt6, euler(0, 0, -1.57) * cf(0.25, -0.2, 0))
dwld10 = weld(dprt10, dprt10, handle, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45))
dwld11 = weld(dprt11, dprt11, dprt10, euler(0, -1.57, 0) * cf(0.05, -0.5, 0))
dwld12 = weld(dprt12, dprt12, dprt10, euler(0, 1.57, 0) * cf(-0.15, -0.5, 0))
dwld13 = weld(dprt13, dprt13, dprt10, euler(0, 0, 0) * cf(0.1, 0.8, 0))
dwld14 = weld(dprt14, dprt14, dprt10, euler(3.14, -1.57, 0) * cf(-0.1, 0.5, 0))
dwld15 = weld(dprt15, dprt15, dprt13, euler(3.14, -1.57, 0) * cf(0, 0.8, 0))
dwld16 = weld(dprt16, dprt16, dprt10, euler(0, 1.57, 0) * cf(-0.1, -0.3, 0))
dwld17 = weld(dprt17, dprt17, dprt10, euler(0, -1.57, 0) * cf(-0.1, -1.25, 0))
dwld18 = weld(dprt18, dprt18, dprt10, euler(0, -1.57, 3.14) * cf(-0.1, 1.6, 0))
dwld19 = weld(dprt19, dprt19, dprt16, euler(0, 0, 0) * cf(0, -0.1, 0.4))
dwld20 = weld(dprt20, dprt20, dprt19, euler(0, 0, 0) * cf(0, -0.8, 0))
dwld21 = weld(dprt21, dprt21, dprt19, euler(0, 0, 3.14) * cf(0, 0.65, 0))
dwld22 = weld(dprt22, dprt22, dprt9, euler(0, -1.57, 1.57) * cf(-0.4, -0.2, 0))
dwldb1 = weld(dprtb1, dprtb1, handle, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4))
dwldb2 = weld(dprtb2, dprtb2, dprtb1, euler(1.57, -1.57, 0) * cf(0, 0.7, 0))
dwldb3 = weld(dprtb3, dprtb3, dprtb1, euler(0, 1.57, 0) * cf(0, -0.7, 0))
dwldb4 = weld(dprtb4, dprtb4, dprtb1, euler(0, 1.57, 0) * cf(-0.15, -0.5, 0))
dwldb5 = weld(dprtb5, dprtb5, dprtb1, euler(0, -1.57, 3.14) * cf(-0.3, 0.65, 0))
dwldb6 = weld(dprtb6, dprtb6, handle, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35))
dwldb7 = weld(dprtb7, dprtb7, dprtb6, euler(0, 1.57, 0) * cf(0, -0.4, 0))
dwldb8 = weld(dprtb8, dprtb8, dprtb6, euler(3.14, -1.57, 0) * cf(0, 0.4, 0))
dwldb9 = weld(dprtb9, dprtb9, dprtb6, euler(0, 0, -1.57) * cf(0.25, -0.2, 0))
dwldb10 = weld(dprtb10, dprtb10, handle, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45))
dwldb11 = weld(dprtb11, dprtb11, dprtb10, euler(0, -1.57, 0) * cf(0.05, -0.5, 0))
dwldb12 = weld(dprtb12, dprtb12, dprtb10, euler(0, 1.57, 0) * cf(-0.15, -0.5, 0))
dwldb13 = weld(dprtb13, dprtb13, dprtb10, euler(0, 0, 0) * cf(0.1, 0.8, 0))
dwldb14 = weld(dprtb14, dprtb14, dprtb10, euler(3.14, -1.57, 0) * cf(-0.1, 0.5, 0))
dwldb15 = weld(dprtb15, dprtb15, dprtb13, euler(3.14, -1.57, 0) * cf(0, 0.8, 0))
dwldb16 = weld(dprtb16, dprtb16, dprtb10, euler(0, 1.57, 0) * cf(-0.1, -0.3, 0))
dwldb17 = weld(dprtb17, dprtb17, dprtb10, euler(0, -1.57, 0) * cf(-0.1, -1.25, 0))
dwldb18 = weld(dprtb18, dprtb18, dprtb10, euler(0, -1.57, 3.14) * cf(-0.1, 1.6, 0))
dwldb19 = weld(dprtb19, dprtb19, dprtb16, euler(0, 0, 0) * cf(0, -0.1, 0.4))
dwldb20 = weld(dprtb20, dprtb20, dprtb19, euler(0, 0, 0) * cf(0, -0.8, 0))
dwldb21 = weld(dprtb21, dprtb21, dprtb19, euler(0, 0, 3.14) * cf(0, 0.65, 0))
dwldb22 = weld(dprtb22, dprtb22, dprtb9, euler(0, -1.57, 1.57) * cf(-0.4, -0.2, 0))
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
local DemTable = {}
table.insert(DemTable, {prt29, 0.05})
table.insert(DemTable, {prt30, 0.05})
table.insert(DemTable, {prt30b, 0.05})
table.insert(DemTable, {prt31, 0.5})
table.insert(DemTable, {prt32, 0.5})
table.insert(DemTable, {prt32b, 0.5})
table.insert(DemTable, {dprt4, 0.5})
table.insert(DemTable, {dprt5, 0.5})
table.insert(DemTable, {dprt16, 0.5})
table.insert(DemTable, {dprt17, 0.5})
table.insert(DemTable, {dprt18, 0.5})
table.insert(DemTable, {dprt19, 0.5})
table.insert(DemTable, {dprt20, 0.5})
table.insert(DemTable, {dprt21, 0.5})
table.insert(DemTable, {dprt22, 0.5})
table.insert(DemTable, {dprtb4, 0.5})
table.insert(DemTable, {dprtb5, 0.5})
table.insert(DemTable, {dprtb16, 0.5})
table.insert(DemTable, {dprtb17, 0.5})
table.insert(DemTable, {dprtb18, 0.5})
table.insert(DemTable, {dprtb19, 0.5})
table.insert(DemTable, {dprtb20, 0.5})
table.insert(DemTable, {dprtb21, 0.5})
table.insert(DemTable, {dprtb22, 0.5})
local DynamPrt = {}
table.insert(DynamPrt, dprt1)
table.insert(DynamPrt, dprt6)
table.insert(DynamPrt, dprt10)
table.insert(DynamPrt, dprtb1)
table.insert(DynamPrt, dprtb6)
table.insert(DynamPrt, dprtb10)
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = prt6
end

if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Dynamo & Permanence"
  script.Parent = Tool
end
Bin = Tool
if Bin.Name == "Dynamence" then
  Bin.Name = "Dynamo & Permanence"
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

so2 = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = id
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
  for i = 0, 1, 0.2 do
    swait()
    if Mode == "Classic" then
      hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.4)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.4)
      dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.4)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.4)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.4)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.4)
    else
      if Mode == "Dynamic Blade" then
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(0.2, -2.5, -0.4), 0.4)
        dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(0.2, -1.4, -0.35), 0.4)
        dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(0.2, -0.5, -0.45), 0.4)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(0.2, -2.5, 0.4), 0.4)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(0.2, -1.4, 0.35), 0.4)
        dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(0.2, -0.5, 0.45), 0.4)
      else
        if Mode == "Energy Reactor" then
          hwld.Part1 = Torso
          hwld.C0 = clerp(hwld.C0, euler(0, 1.57, 1) * cf(0, 0, 0), 0.4)
          dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.4)
          dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.4)
          dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.4)
          dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.4)
          dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.4)
          dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.4)
        end
      end
    end
    wld1.C0 = clerp(wld1.C0, euler(1.7, 0, 0) * cf(0, 1, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(0, 0.2, -1) * euler(0.2, 0, 0.6) * euler(0, -3, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    RH.C1 = clerp(RH.C1, RHC1, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
    LH.C1 = clerp(LH.C1, LHC1, 0.4)
  end
  wld1.Part1 = Torso
  wld1.C0 = euler(-1.2, 0, -0.5) * euler(0, 0, 3.14) * cf(-0.8, 1, 1.5)
  mdec2.Parent = nil
  mdec.Parent = Decrease
  for i = 0, 1, 0.1 do
    swait()
    if Mode == "Classic" then
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.4)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.4)
      dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.4)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.4)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.4)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.4)
    else
      if Mode == "Dynamic Blade" then
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(0.2, -2.5, -0.4), 0.4)
        dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(0.2, -1.4, -0.35), 0.4)
        dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(0.2, -0.5, -0.45), 0.4)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(0.2, -2.5, 0.4), 0.4)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(0.2, -1.4, 0.35), 0.4)
        dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(0.2, -0.5, 0.45), 0.4)
      else
        if Mode == "Energy Reactor" then
          hwld.C0 = clerp(hwld.C0, euler(0, 1.57, 1) * cf(0, 0, 0), 0.4)
          dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.4)
          dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.4)
          dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.4)
          dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.4)
          dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.4)
          dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.4)
        end
      end
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
end

mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(0, 0.2, -1) * euler(0.2, 0, 0.6) * euler(0, -3, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
  end
  wld1.Part1 = LeftArm
  wld1.C0 = euler(1.7, 0, 0) * cf(0, 1, 0)
  mdec2.Parent = Decrease
end

StaggerAnim = function()
  attack = true
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
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
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
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
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
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        for i = 1, 50 do
          swait()
          if StunT.Value <= Stun.Value then
            break
          end
        end
        do
          combo = 0
          attack = false
        end
      end
    end
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
  gairost.maxTorque = Vector3.new(400000, 0, 400000) * 1000
  gairost.P = 20000
  gairost.cframe = cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
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
  dynamove = true
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
    if Mode == "Classic" then
      hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.5)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.5)
      dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.5)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.5)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.5)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.5)
    end
    if Mode == "Dynamic Blade" then
      hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.6)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -6.5, -0.15), 0.6)
      dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -5, -0.4), 0.6)
      dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * cf(0, -4, -0.5), 0.6)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -6.5, 0.15), 0.6)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -5, 0.4), 0.6)
      dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * cf(0, -4, 0.5), 0.6)
    end
    wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 1, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(2, 0, 1) * euler(0, -1, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC477: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC477: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  num = 1
  dam1 = 6
  dam2 = 8
  knock = math.random(5, 10)
  stun = math.random(5, 7)
  typ = "Normal"
  if Mode == "Dynamic Blade" then
    num = 2
    dam1 = 7
    dam2 = 9
    knock = math.random(10, 15)
    stun = math.random(6, 8)
    typ = "Normal"
  end
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 5.4, 1)
  local size = 5
  if Mode == "Dynamic Blade" then
    hitbox.Size = vt(1, 8, 2)
    size = 7
  end
  hitboxCF = prt31.CFrame * cf(0, 0, 0)
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  so("200633281", prt31, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt31.CFrame * cf(0, 0, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, size, dam1, dam2, knock, typ, RootPart, 0.5, num, stun, nil, true)
    wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * cf(0, 1, 0), 0.2)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.8) * euler(0.2, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.4), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1) * euler(0, -0.6, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.5)
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
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end

attacktwo = function()
  attack = true
  if Mode == "Classic" then
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.8), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.7), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1.4) * euler(0, 0, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.4) * euler(0, 0, 0), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.7, 0) * euler(0, 0, -0.4), 0.2)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.7, 0) * euler(0, 0, 0.1), 0.2)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0.24, 3.14, 0) * cf(-0.6, 0, 0.3), 0.3)
      dwld6.C0 = clerp(dwld6.C0, euler(3.14, 1.57, 0) * euler(-0.24, 0, 0) * cf(-0.6, 1.4, 0.3), 0.3)
      dwld10.C0 = clerp(dwld10.C0, euler(0, -1.57, 0) * euler(2.9, 0, 0) * cf(-0.6, 0.6, -0.1), 0.3)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, 0) * euler(0.24, 3.14, 0) * cf(-0.9, 0, 0.3), 0.3)
      dwldb6.C0 = clerp(dwldb6.C0, euler(3.14, 1.57, 0) * euler(-0.24, 0, 0) * cf(-0.9, 1.4, 0.3), 0.3)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * euler(2.9, 0, 0) * cf(-0.9, 0.6, -0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC354: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC354: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(0.8, 5.4, 1.3)
    size = 5
    hitboxCF = handle.CFrame * euler(0.14, 0, 0) * cf(0.75, -1, 0)
    hitbox.CFrame = hitboxCF
    blcf = nil
    scfr = nil
    so("200633108", handle, 1, 1.1)
    so("200633148", handle, 1, 1.1)
    for i = 0, 1, 0.1 do
      swait()
      hitboxCF = handle.CFrame * euler(0.14, 0, 0) * cf(0.75, -1, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, size, 5, 6, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(10, 12)), nil, true)
      wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 1, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, -0.7), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0.7), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -0.6) * euler(0, 1.6, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.6) * euler(0, 0, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.7, 0) * euler(0, 0, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.7, 0) * euler(0, 0, 0.2), 0.4)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0.24, 3.14, 0) * cf(-0.6, 0.4, 0.3), 0.6)
      dwld6.C0 = clerp(dwld6.C0, euler(3.14, 1.57, 0) * euler(-0.24, 0, 0) * cf(-0.6, 1.8, 0.3), 0.6)
      dwld10.C0 = clerp(dwld10.C0, euler(0, -1.57, 0) * euler(2.9, 0, 0) * cf(-0.6, 1, -0.1), 0.6)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, 0) * euler(0.24, 3.14, 0) * cf(-0.9, 0.4, 0.3), 0.6)
      dwldb6.C0 = clerp(dwldb6.C0, euler(3.14, 1.57, 0) * euler(-0.24, 0, 0) * cf(-0.9, 1.8, 0.3), 0.6)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * euler(2.9, 0, 0) * cf(-0.9, 1, -0.1), 0.6)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC813: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC813: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
  else
    for i = 0, 1, 0.15 do
      swait()
      if Mode == "Dynamic Blade" then
        hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.6)
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(0, -5.5, -0.2), 0.6)
        dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * euler(-3.64, 0, 0) * cf(0, -3.4, -0.7), 0.6)
        dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * euler(0.2, 0, 0) * cf(0, -5, -0.8), 0.6)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(0, -5.5, 0.2), 0.6)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * euler(3.64, 0, 0) * cf(0, -3.4, 0.7), 0.6)
        dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * euler(-0.2, 0, 0) * cf(0, -5, 0.8), 0.6)
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.4)
      RW.C0 = clerp(RW.C0, cf(-0.5, 0.7, -0.5) * euler(2.2, 0, -1), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2, 0, -0.4) * euler(0, 1, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC1154: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1154: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    num = 1
    dam1 = 6
    dam2 = 8
    knock = math.random(5, 10)
    stun = math.random(5, 7)
    typ = "Normal"
    if Mode == "Dynamic Blade" then
      num = 2
      dam1 = 7
      dam2 = 9
      knock = math.random(15, 20)
      stun = math.random(6, 8)
      typ = "Normal"
    end
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(0.5, 5.4, 1)
    size = 5
    so("200633148", prt31, 1, 0.9)
    if Mode == "Dynamic Blade" then
      hitbox.Size = vt(1, 8, 2)
      size = 7
    end
    hitboxCF = prt31.CFrame * cf(0, 0, 0)
    hitbox.CFrame = hitboxCF
    blcf = nil
    scfr = nil
    for i = 0, 1, 0.1 do
      swait()
      hitboxCF = prt31.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, size, dam1, dam2, knock, typ, RootPart, 0.5, num, stun, nil, true)
      wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * cf(0, 1, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.4)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.3, -0.2) * euler(0.2, 0, -0.3), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.2) * euler(0.3, 0, 0.5) * euler(0, 0.5, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC1474: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1474: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
  end
  attack = false
end

attackthree = function()
  attack = true
  if Mode == "Energy Reactor" then
    dynamomove = false
    for i = 0, 1, 0.15 do
      swait()
      hwld.Part1 = RootPart
      wld1.C0 = clerp(wld1.C0, euler(1.4, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -0.5), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.5, 0, 0.5) * euler(0, 1.57, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.4), 0.3)
      hwld.C0 = clerp(hwld.C0, euler(0, 0, -2.5) * cf(0, 0, 2), 0.6)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0.5) * cf(2, -1, 0) * euler(0, 0, 0) * euler(1.57, 0, 0), 0.6)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, 0.5) * cf(2, -1, 0) * euler(0, 1.046, 0) * euler(1.57, 0, 0), 0.6)
      dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0.5) * cf(2, -1, 0) * euler(0, 2.092, 0) * euler(1.57, 0, 0), 0.6)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, 0.5) * cf(2, -1, 0) * euler(0, 3.138, 0) * euler(1.57, 0, 0), 0.6)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, 0.5) * cf(2, -1, 0) * euler(0, 4.184, 0) * euler(1.57, 0, 0), 0.6)
      dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, 0.5) * cf(2, -1, 0) * euler(0, 5.23, 0) * euler(1.57, 0, 0), 0.6)
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
    eulmov = 0
    damov = -2
    ai = 4
    for i = 0, 1, 0.1 do
      swait()
      CF = handle.CFrame * cf(0, 0, damov)
      damov = damov - 3
      if ai % 4 == 0 then
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = CF
        game:GetService("Debris"):AddItem(ref, 1)
        so("300916105", ref, 1, 2)
        MagicCircle(BrickColor.new(NewCol2), CF, 5, 5, 5, 2, 2, 2, 0.1)
        MagicCircle(BrickColor.new(NewCol2), CF, 1, 1, 1, 3, 3, 3, 0.05)
        MagicRing(BrickColor.new(NewCol2), CF, 1, 1, 1, 0.8, 0.8, 0.2, 0.03)
        MagniDamage(ref, 8, 5, 7, 0, "Normal", RootPart, 0, 1, (math.random(3, 5)), nil, true, true)
      end
      ai = ai + 1
      eulmov = eulmov - 0.4
      wld1.C0 = clerp(wld1.C0, euler(1.4, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -0.5), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.5, 0, 0.5) * euler(0, 1.57, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.4), 0.3)
      hwld.C0 = clerp(hwld.C0, euler(0, 0, -2.5 - eulmov) * cf(0, 0, 0), 0.3)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0.5) * cf(3, -1, 0) * euler(0, 0, 0) * euler(1.57, 0, 0), 0.2)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, 0.2) * cf(3, -1.5, 0) * euler(0, 1.046, 0) * euler(1.57, 0, 0), 0.2)
      dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0.2) * cf(3, -1.5, 0) * euler(0, 2.092, 0) * euler(1.57, 0, 0), 0.2)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, 0.2) * cf(3, -1.5, 0) * euler(0, 3.138, 0) * euler(1.57, 0, 0), 0.2)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, 0.2) * cf(3, -1.5, 0) * euler(0, 4.184, 0) * euler(1.57, 0, 0), 0.2)
      dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, 0.2) * cf(3, -1.5, 0) * euler(0, 5.23, 0) * euler(1.57, 0, 0), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC976: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC976: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    dynamomove = true
  else
    for i = 0, 1, 0.15 do
      swait()
      if Mode == "Classic" then
        hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.5)
        dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.5)
        dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.5)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.5)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.5)
        dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.5)
      end
      if Mode == "Dynamic Blade" then
        hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.6)
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -6.5, -0.15), 0.6)
        dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -5, -0.4), 0.6)
        dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * cf(0, -4, -0.5), 0.6)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -6.5, 0.15), 0.6)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -5, 0.4), 0.6)
        dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * cf(0, -4, 0.5), 0.6)
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.2), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.57, 0, 1) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC1455: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1455: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    num = 1
    dam1 = 4
    dam2 = 6
    knock = math.random(5, 10)
    stun = math.random(5, 7)
    typ = "Normal"
    if Mode == "Dynamic Blade" then
      num = 2
      dam1 = 5
      dam2 = 7
      knock = math.random(10, 15)
      stun = math.random(6, 8)
      typ = "Normal"
    end
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(0.5, 5.4, 1)
    size = 5
    so("200633108", prt31, 1, 1.1)
    if Mode == "Dynamic Blade" then
      hitbox.Size = vt(1, 8, 2)
      size = 7
    end
    hitboxCF = prt31.CFrame * cf(0, 0, 0)
    hitbox.CFrame = hitboxCF
    blcf = nil
    scfr = nil
    for i = 0, 1, 0.15 do
      swait()
      hitboxCF = prt31.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, size, dam1, dam2, knock, typ, RootPart, 0.2, num, stun, nil, true)
      wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
      RootJoint.C0 = RootCF * euler(0, 0, -0.5 + 6.28 * i)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC1765: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1765: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.2 do
      swait()
      hitboxCF = prt31.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, size, dam1, dam2, knock, typ, RootPart, 0.2, num, stun, nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.4), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * cf(0, 1, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.3, 0, -1.57) * euler(0, -1.2, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC1937: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1937: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
  end
  attack = false
end

attackfour = function()
  attack = true
  if Mode == "Energy Reactor" then
    dynamomove = false
    for i = 0, 1, 0.1 do
      swait()
      hwld.Part1 = RootPart
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(-0.6, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.5, 0, 0.5) * euler(0, 1.57, 0) * euler(0, 0, 1), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.4), 0.3)
      hwld.C0 = clerp(hwld.C0, euler(0, 0, 1) * euler(1.2, 0, 0) * cf(0, -8, 0), 0.3)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 0, 0) * euler(1.57, 0, 0), 0.3)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, -1) * cf(1, -0.5, 0) * euler(0, 1.046, 0) * euler(1.57, 0, 0), 0.3)
      dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 2.092, 0) * euler(1.57, 0, 0), 0.3)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 3.138, 0) * euler(1.57, 0, 0), 0.3)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, -1) * cf(1, -0.5, 0) * euler(0, 4.184, 0) * euler(1.57, 0, 0), 0.3)
      dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 5.23, 0) * euler(1.57, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC443: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC443: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    eul = 0
    dov = 0
    doi = 0
    for i = 0, 1, 0.05 do
      swait()
      eul = eul + 0.4
      dov = dov + 0.05
      doi = doi + 1
      hwld.Part1 = RootPart
      if doi % 2 == 0 then
        lhit,lpos = rayCast(handle.Position, handle.CFrame.lookVector, 100, Character)
        local mag = (handle.Position - lpos).magnitude
        MagicHead2(BrickColor.new(NewCol2), CFrame.new((handle.Position + lpos) / 2, lpos) * angles(1.57, 0, 0), 12, mag * 5, 12, 0.4, 1, 0.4, 0.2)
        if lhit ~= nil then
          so("301031757", handle, 0.6, 1.5)
          ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          ref.CFrame = cf(lpos)
          game:GetService("Debris"):AddItem(ref, 1)
          MagniDamage(ref, 8, 4, 6, 0, "Normal", RootPart, 0.4, 1, (math.random(3, 5)), nil, true, true)
          MagicRing(BrickColor.new(NewCol2), cf(lpos) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 1, 0.8, 0.8, 0.2, 0.1)
          MagicCircle(BrickColor.new(NewCol2), cf(lpos), 20, 20, 20, 3, 3, 3, 0.1)
        end
      end
      do
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.5, 0, 0.5) * euler(0, 1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, -0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.4), 0.3)
        hwld.C0 = clerp(hwld.C0, euler(1.2 - dov, 0, 0) * cf(0, -8, eul) * euler(0, 0, 0), 0.3)
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 0 + eul, 0) * euler(1.57, 0, 0), 0.3)
        dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, -1) * cf(1, -0.5, 0) * euler(0, 1.046 + eul, 0) * euler(1.57, 0, 0), 0.3)
        dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 2.092 + eul, 0) * euler(1.57, 0, 0), 0.3)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 3.138 + eul, 0) * euler(1.57, 0, 0), 0.3)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, -1) * cf(1, -0.5, 0) * euler(0, 4.184 + eul, 0) * euler(1.57, 0, 0), 0.3)
        dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, -1) * cf(1, -0.5, 0) * euler(0, 5.23 + eul, 0) * euler(1.57, 0, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1051: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1051: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC1051: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
    dynamomove = true
  else
    if Mode == "Classic" then
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.5), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.3), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 0.4) * euler(0, 0, 0), 0.2)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.2) * euler(0, 0, 0), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, -0.4), 0.2)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, 0.1), 0.2)
        dwld1.C0 = clerp(dwld1.C0, euler(3.14, 1.57, 0) * euler(-0.23, 0, 0) * cf(-0.6, 2.1, -0.5), 0.4)
        dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(-1, 0, 0) * cf(-0.6, 0.8, -1.1), 0.4)
        dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.6, -0.2), 0.4)
        dwldb1.C0 = clerp(dwldb1.C0, euler(3.14, -1.57, 0) * euler(0.23, 0, 0) * cf(-0.6, 2.1, 0.5), 0.4)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(1, 0, 0) * cf(-0.6, 0.8, 1.1), 0.4)
        dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.6, 0.2), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1395: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1395: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(0.8, 4.5, 2.5)
      hitboxCF = handle.CFrame * cf(0.75, -1.9, 0)
      hitbox.CFrame = hitboxCF
      blcf = nil
      scfr = nil
      so("200633196", handle, 1, 0.8)
      for i = 0, 1, 0.1 do
        swait()
        hitboxCF = handle.CFrame * cf(0.75, -1.9, 0)
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 4, 7, 8, math.random(10, 20), "Normal", RootPart, 0.5, 1, (math.random(10, 12)), nil, true)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -0.5), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.5, 0, -0.2) * euler(0, 1, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, -0.1), 0.4)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.4), 0.4)
        dwld1.C0 = clerp(dwld1.C0, euler(3.14, 1.57, 0) * euler(-0.23, 0, 0) * cf(-0.6, 2.5, -0.5), 0.4)
        dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(-1, 0, 0) * cf(-0.6, 1.2, -1.1), 0.4)
        dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 1, -0.2), 0.4)
        dwldb1.C0 = clerp(dwldb1.C0, euler(3.14, -1.57, 0) * euler(0.23, 0, 0) * cf(-0.6, 2.5, 0.5), 0.4)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(1, 0, 0) * cf(-0.6, 1.2, 1.1), 0.4)
        dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 1, 0.2), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1804: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1804: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
    else
      for i = 0, 1, 0.15 do
        swait()
        if Mode == "Dynamic Blade" then
          hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.6)
          dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -4.5, -0.45), 0.3)
          dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -2.2, -0.55), 0.3)
          dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * cf(0, -7.2, -0.2), 0.3)
          dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -4.5, 0.45), 0.3)
          dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -2.2, 0.55), 0.3)
          dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * cf(0, -7.2, 0.2), 0.3)
        end
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0.8) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1, 1, -0.5) * euler(2.8, 0, -0.8) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 1, -0.5) * euler(2.8, 0, 0.8), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC2163: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC2163: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      num = 1
      dam1 = 6
      dam2 = 8
      knock = math.random(5, 10)
      stun = math.random(5, 7)
      typ = "Normal"
      if Mode == "Dynamic Blade" then
        num = 2
        dam1 = 7
        dam2 = 9
        knock = math.random(15, 20)
        stun = math.random(6, 8)
        typ = "Normal"
      end
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(0.5, 5.4, 1)
      size = 5
      if Mode == "Dynamic Blade" then
        hitbox.Size = vt(1, 10, 3)
        size = 8
      end
      hitboxCF = prt31.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      blcf = nil
      scfr = nil
      so("200633196", prt31, 1, 1)
      for i = 0, 1, 0.1 do
        swait()
        if Mode == "Dynamic Blade" then
          hitboxCF = prt31.CFrame * cf(0, 1, 0)
          hitbox.CFrame = hitboxCF
        else
          hitboxCF = prt31.CFrame * cf(0, 1, 0)
          hitbox.CFrame = hitboxCF
        end
        MagniDamage(hitbox, size, dam1, dam2, knock, typ, RootPart, 0.5, num, stun, nil, true)
        if Mode == "Dynamic Blade" then
          hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.6)
          dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -4.5, -0.45), 0.3)
          dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -2.2, -0.55), 0.3)
          dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * cf(0, -7.2, -0.2), 0.3)
          dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -4.5, 0.45), 0.3)
          dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -2.2, 0.55), 0.3)
          dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * cf(0, -7.2, 0.2), 0.3)
        end
        wld1.C0 = clerp(wld1.C0, euler(2, 0, 0.8) * cf(0, 1, 0), 0.6)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.1, -0.5) * euler(0.2, 0, -0.8) * euler(0, 0, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.1, -0.5) * euler(0.2, 0, 0.8), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC2646: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC2646: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
    end
  end
  attack = false
  if Mode == "Classic" then
    for i = 0, 1, 0.1 do
      swait()
      dwld1.C0 = clerp(dwld1.C0, euler(3.14, 1.57, 0) * euler(-0.23, 0, 0) * cf(-0.6, 1.6, -0.5), 0.4)
      dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(-1, 0, 0) * cf(-0.6, 0.3, -1.1), 0.4)
      dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.1, -0.2), 0.4)
      dwldb1.C0 = clerp(dwldb1.C0, euler(3.14, -1.57, 0) * euler(0.23, 0, 0) * cf(-0.6, 1.6, 0.5), 0.4)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(1, 0, 0) * cf(-0.6, 0.3, 1.1), 0.4)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.1, 0.2), 0.4)
      if Mode ~= "Classic" then
        break
      end
    end
  end
end

ModeChange = function()
  attack = true
  Mode = "Changing"
  passive1.Value = 0
  passive2.Value = 0
  passive3.Value = 0
  hwld.Part1 = RootPart
  if Mode == "Classic" then
    hwld.C0 = euler(0, 0, 0) * cf(-2, 0, 0)
  else
    if Mode == "Dynamic Blade" then
      hwld.C0 = euler(1.57, 0, 0) * cf(2, 0, 0)
    end
  end
  randangle = math.random(-50, 50)
  for i = 0, 1, 0.1 do
    swait()
    hwld.C0 = clerp(hwld.C0, euler(0, randangle, 0) * cf(0, 0, 0), 0.3)
    dwld1.C0 = clerp(dwld1.C0, euler(0, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 0, 0), 0.3)
    dwld6.C0 = clerp(dwld6.C0, euler(0, 3.14, -0.5) * cf(4, 1.5, 0) * euler(0, 1.046, 0), 0.3)
    dwld10.C0 = clerp(dwld10.C0, euler(3.14, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 2.092, 0), 0.3)
    dwldb1.C0 = clerp(dwldb1.C0, euler(0, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 3.138, 0), 0.3)
    dwldb6.C0 = clerp(dwldb6.C0, euler(0, 3.14, -0.5) * cf(4, 1.5, 0) * euler(0, 4.184, 0), 0.3)
    dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 5.23, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC395: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC395: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  round = 0
  choosemode = true
  while choosemode == true do
    swait()
    hwld.C0 = euler(0, randangle, 0) * euler(0, round, 0)
    dwld1.C0 = clerp(dwld1.C0, euler(0, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 0, 0), 0.3)
    dwld6.C0 = clerp(dwld6.C0, euler(0, 3.14, -0.5) * cf(4, 1.5, 0) * euler(0, 1.046, 0), 0.3)
    dwld10.C0 = clerp(dwld10.C0, euler(3.14, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 2.092, 0), 0.3)
    dwldb1.C0 = clerp(dwldb1.C0, euler(0, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 3.138, 0), 0.3)
    dwldb6.C0 = clerp(dwldb6.C0, euler(0, 3.14, -0.5) * cf(4, 1.5, 0) * euler(0, 4.184, 0), 0.3)
    dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 0, -0.5) * cf(4, 1.5, 0) * euler(0, 5.23, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
    round = round + 0.01
    if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
      choosemode = false
      dynamove = false
      Mode = "Classic"
      break
    end
  end
  attack = false
end

Defend = function()
  attack = true
  defending = true
  passive4.Parent = Decrease
  passive5.Parent = Decrease
  local eulmove = 0
      while defending == true do
          swait()
          if Mode == "Classic" then
            hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 0, 0), 0.3)
            dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, 1, -0.15), 0.3)
            dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(2.2, 0, 0) * cf(-0.6, 0, 1.2), 0.3)
            dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * euler(0, 3.14, 0) * cf(-0.6, -0.8, -0.6), 0.3)
            dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, 1, 0.15), 0.3)
            dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(-2.2, 0, 0) * cf(-0.6, 0, -1.2), 0.3)
            dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * euler(0, 3.14, 0) * cf(-0.6, -0.8, 0.6), 0.3)
            wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, -0.2), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.8), 0.3)
            RW.C0 = clerp(RW.C0, cf(1, 0.45, -0.5) * euler(1.57, 0, -0.8) * euler(0, 0, 0), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.6) * euler(0, -0.2, 0), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1.2, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.8, 0) * euler(0, 0, -0.1), 0.3)
            LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -0.5, 0) * euler(0, 0, 0.6), 0.3)
            -- DECOMPILER ERROR at PC371: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC371: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC371: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC371: LeaveBlock: unexpected jumping out IF_STMT

          end
      if Mode == "Dynamic Blade" then
        hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(0, -4.5, -0.45), 0.3)
        dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * euler(-3.34, 0, 0) * cf(0, -3.2, -0.6), 0.3)
        dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * euler(0.3, 0, 0) * cf(0, -4.8, -0.85), 0.3)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(0, -4.5, 0.45), 0.3)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * euler(3.34, 0, 0) * cf(0, -3.2, 0.6), 0.3)
        dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * euler(-0.3, 0, 0) * cf(0, -4.8, 0.85), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, -1.57) * euler(-0.8, 0, 0) * euler(0, 0, -0.4) * cf(0, 1.2, -0.2), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, -0.2), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.8), 0.3)
        RW.C0 = clerp(RW.C0, cf(0.5, 0.6, -0.5) * euler(0, 0, -2.2) * euler(0.2, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 0.6, -0.5) * euler(2.5, 0, 0.2) * euler(0, 0, -0.5) * euler(0, -2.2, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.2, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.8, 0) * euler(0, 0, -0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -0.5, 0) * euler(0, 0, 0.6), 0.3)
        -- DECOMPILER ERROR at PC745: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC745: LeaveBlock: unexpected jumping out IF_STMT

      end
    if Mode == "Energy Reactor" then
      eulmove = eulmove + 0.2
      dynamomove = false
      hwld.Part1 = RootPart
      wld1.C0 = clerp(wld1.C0, euler(1.8, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(1.4, 0, 0) * euler(0, 0, -1.3), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(2, 0, 0) * euler(0, 0, 1.3) * euler(0, -1.5, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.4), 0.3)
      hwld.C0 = clerp(hwld.C0, euler(0, 0, -2.5 - (eulmove)) * cf(0, -0.5, 1), 0.3)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 1.4) * cf(2, -1, 0) * euler(0, 0, 0) * euler(1.57, 0, 0), 0.3)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, 1.4) * cf(2, -1, 0) * euler(0, 1.046, 0) * euler(1.57, 0, 0), 0.3)
      dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 1.4) * cf(2, -1, 0) * euler(0, 2.092, 0) * euler(1.57, 0, 0), 0.3)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, 1.4) * cf(2, -1, 0) * euler(0, 3.138, 0) * euler(1.57, 0, 0), 0.3)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, 1.4) * cf(2, -1, 0) * euler(0, 4.184, 0) * euler(1.57, 0, 0), 0.3)
      dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, 1.4) * cf(2, -1, 0) * euler(0, 5.23, 0) * euler(1.57, 0, 0), 0.3)
    end
  end
  defending = false
  dynamomove = true
  passive4.Parent = nil
  passive5.Parent = nil
  attack = false
end

do1 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 15 then
    Mode = "Classic"
    manainc = 13
    choosemode = false
    passive1.Value = 0.1
    passive2.Value = -0.05
    passive3.Value = -0.1
    cooldowns[1] = 0
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = RightArm.CFrame * cf(0.6, 1, 0)
    game:GetService("Debris"):AddItem(ref, 10)
    dul = 0
    dulinc = 0
    so("203691326", handle, 0.6, 1.8)
    for i = 0, 1, 0.1 do
      swait()
      dul = dul + dulinc
      dulinc = dulinc + 0.08
      ref.CFrame = RightArm.CFrame * cf(0.6, -1 - dulinc * 2, 0)
      hwld.Part1 = RightArm
      hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0, 1.57, -3.14) * cf(-1.5, 0.5, 0) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.5)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * euler(0, 0, 3.14) * cf(0, 0.5, 1.5) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.5)
      dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0, -0.2), 0.5)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(0, 1.57, -3.14) * cf(1.5, 0.5, 0) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.5)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * euler(0, 0, 3.14) * cf(0, 0.5, -1.5) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.5)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0, 0.2), 0.5)
      wld1.C0 = clerp(wld1.C0, euler(1.4, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, -0.4), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.2), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.45, 0.2) * euler(1.4, 0, 0.8) * euler(0, 1, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2) * euler(0, 0.5, 0), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, 0.1), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.3), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    mana.Value = mana.Value - 15
    RecentEnemy.Value = nil
    da = 0
    so("200633281", handle, 0.6, 1.2)
    so("200633108", handle, 0.6, 1)
    for i = 0, 1, 0.1 do
      swait()
      dul = dul + 0.5
      if i <= 0.5 then
        da = da + 0.9
      end
      ref.CFrame = RightArm.CFrame * cf(0.6, -1 - da, 0)
      MagniDamage(ref, 5, 6, 8, math.random(40, 60), "Knockdown2", RootPart, 0.6, 1, (math.random(6, 8)), nil, true, false, "Damage", 0.4, 300)
      hwld.Part1 = RightArm
      hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
      dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0, 1.57, -2.84) * cf(-1, 6, 0) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.3)
      dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * euler(-0.3, 0, 3.14) * cf(0, 6, 1) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.3)
      dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0, -0.35), 0.3)
      dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(0, 1.57, -3.44) * cf(1, 6, 0) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.3)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * euler(0.3, 0, 3.14) * cf(0, 6, -1) * euler(0, dul, 0) * cf(-0.6, 0, 0), 0.3)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0, 0.35), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(1.4, 0, 0) * cf(0, 1, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, -0.6), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.5)
      RW.C0 = clerp(RW.C0, cf(1, 0.45, -0.6) * euler(1.4, 0, 0.4) * euler(0, 1, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.4) * euler(0, 0.5, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(0, 0, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.3), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC1010: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1010: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if overload >= 50 and RecentEnemy.Value ~= nil then
      for i = 0, 1, 0.1 do
        swait()
        hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.4)
        dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.4)
        dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.4)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.4)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.4)
        dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.4)
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(1.4, 0, 0) * euler(0, 0, -1.3) * euler(0, 1.5, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.2, 0, 0) * euler(0, 0, 1) * euler(0, -1.5, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, -0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.4), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1379: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1379: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          overload = overload - 50
          MagicWave(BrickColor.new(NewCol2), cf(RootPart.Position) * cf(0, -2, 0), 1, 5, 1, 1, -0.2, 1, 0.07)
          --[[dec = Stats:FindFirstChild("Decrease")
          if dec ~= nil then
            for _,c in pairs(dec:children()) do
              if c.className == "NumberValue" and c.Value > 0 and c:findFirstChild("Duration") ~= nil then
                c.Parent = nil
              end
            end
          end--]]
          do
            DecreaseStat(Character, "Damage", -0.4, 350)
            DecreaseStat(Character, "Defense", -0.4, 350)
            for i = 0, 1, 0.1 do
              swait()
              hwld.C0 = clerp(hwld.C0, euler(-0.5, 0, 0) * cf(0, 1, 0), 0.4)
              dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), 0.4)
              dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), 0.4)
              dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), 0.4)
              dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), 0.4)
              dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), 0.4)
              dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), 0.4)
              wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.5, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.5, 0), 0.3)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.5, 0), 0.3)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC1810: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC1810: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 20 then
    Mode = "Dynamic Blade"
    manainc = 18
    choosemode = false
    passive1.Value = -0.1
    passive2.Value = 0.1
    passive3.Value = 0.1
    cooldowns[2] = 0
    for i = 0, 1, 0.2 do
      swait()
      hwld.Part1 = prt1
      hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
      dwld1.C0 = clerp(dwld1.C0, euler(3.14, 1.57, 0) * euler(-0.28, 0, 0) * euler(0, 0, 3.14) * cf(0, -6, -0.6), 0.7)
      dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(0.4, 0, 0) * euler(0, 0, 0) * cf(0, -5, -1.2), 0.7)
      dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * euler(0, 0, 3.14) * cf(0, -4, -0.5), 0.7)
      dwldb1.C0 = clerp(dwldb1.C0, euler(3.14, -1.57, 0) * euler(0.28, 0, 0) * euler(0, 0, 3.14) * cf(0, -6, 0.6), 0.7)
      dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(-0.4, 0, 0) * euler(0, 0, 0) * cf(0, -5, 1.2), 0.7)
      dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * euler(0, 0, 3.14) * cf(0, -4, 0.5), 0.7)
      wld1.C0 = clerp(wld1.C0, euler(0.6, 0, 0) * cf(0, 1.1, 0.2), 0.7)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, -0.8), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.5)
      RW.C0 = clerp(RW.C0, cf(-0.1, 0.5, -0.5) * euler(1.5, 0, -1) * euler(0, -1.5, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.57, 0, -1.7) * euler(0, -1.57, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC432: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC432: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    MagicWave(BrickColor.new(NewCol2), handle.CFrame * euler(3.14, 0, 0) * cf(0, -6, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
    mana.Value = mana.Value - 20
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(1, 8, 2)
    RecentEnemy.Value = nil
    da = 0
    so("200633148", handle, 1, 0.8)
    so("199145327", handle, 0.6, 1)
    for i = 0, 1, 0.1 do
      swait()
      da = da + 1
      if da % 3 == 0 then
        MagicWave(BrickColor.new(NewCol2), handle.CFrame * euler(3.14, math.random(-50, 50), 0) * cf(0, -6, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.2)
      end
      hitboxCF = prt31.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 5, 7, math.random(20, 30), "Normal", RootPart, 0.2, 2, (math.random(4, 7)), nil, true)
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * 80
      end
      wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * euler(0, 0, 0.2) * cf(0, 1, -0.2), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.4), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(0, 0.4, -0.5) * euler(1.45, 0, -0.6) * euler(0, -1.5, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.2) * euler(1.4, 0, 0.1) * euler(0, -1.4, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value ~= true then
        do
          if RecentEnemy.Value ~= nil then
            break
          end
          -- DECOMPILER ERROR at PC793: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC793: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if RecentEnemy.Value ~= nil and hitfloor ~= nil and Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 120
    end
    if overload >= 50 and RecentEnemy.Value ~= nil then
      for i = 0, 1, 0.15 do
        swait()
        hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 0, 0), 0.6)
        dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(2.34, 0, 0) * cf(0, 1.8, -4), 0.6)
        dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(2.94, 3.14, 0) * cf(0, 1.2, -5.4), 0.6)
        dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * euler(4.64, 0, 0) * cf(0, 0.5, -4), 0.6)
        dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(0.8, 0, 0) * cf(0, -1.8, -4), 0.6)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(0.2, 3.14, 0) * cf(0, -1.2, -5.4), 0.6)
        dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * euler(-1.5, 0, 0) * cf(0, -0.5, -4), 0.6)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, -0.4), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.57, 0, 1) * euler(0, -1.57, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, -0.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1173: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1173: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          overload = overload - 50
          ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          game:GetService("Debris"):AddItem(ref, 1)
          for i = 0, 1, 0.15 do
            swait()
            for i = 1, 2 do
              so("300916014", prt31, 0.5, 1)
            end
            for i = 1, 3 do
              MagicBlock(BrickColor.new(NewCol2), prt31.CFrame * cf(math.random(-500, 500) / 100, 6 + math.random(-500, 500) / 100, math.random(-500, 500) / 100), 1, 1, 1, 1, 1, 1, 0.08, 1, workspace)
            end
            for i = 2, 6, 2 do
              MagicCircle(BrickColor.new(NewCol2), prt31.CFrame * cf(0, 6, 0), 3, 3, 3, i, i, i, 0.1)
            end
            ref.CFrame = prt31.CFrame * cf(0, 6, 0)
            MagniDamage(ref, 6, 6, 8, math.random(-60, -40), "Knockdown2", RootPart, 0.5, 2, (math.random(5, 8)), nil, true, true)
            wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * cf(0, 1, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
            RootJoint.C0 = RootCF * euler(0, 0, -0.2 + 6.28 * i)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC1519: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1519: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          ref.Parent = nil
          for i = 0, 1, 0.1 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.4), 0.3)
            wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * cf(0, 1, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.3, 0, -1.57) * euler(0, -1.2, 0), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC1667: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1667: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          hitbox.Parent = modelzorz
          hitbox.Size = vt()
          hitboxweld()
          hboxpos.Parent = nil
      end
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
  if cooldownmax <= cooldowns[3] and mana.Value >= 15 then
    doextra = false
    da = 0
    if overload >= 50 then
      doextra = true
    end
    Mode = "Energy Reactor"
    manainc = 10
    choosemode = false
    passive1.Value = 0.1
    passive2.Value = -0.15
    passive3.Value = 0.05
    if Mode == "Classic" then
      for i = 0, 1, 0.2 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -0.5), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.5, 0, 0.5) * euler(0, 1.57, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, -0.1), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.4), 0.5)
        dwld1.C0 = clerp(dwld1.C0, euler(3.14, 1.57, 0) * euler(0, 0, 0) * cf(-1, 1, -1), 0.5)
        dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(3.14, 0, 0) * cf(0.3, 0.7, -1.5), 0.5)
        dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.5, 0.5, -0.4), 0.5)
        dwldb1.C0 = clerp(dwldb1.C0, euler(3.14, -1.57, 0) * euler(0, 0, 0) * cf(-1, 1, 1), 0.5)
        dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(3.14, 0, 0) * cf(0.3, 0.7, 1.5), 0.5)
        dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.5, 0.5, 0.4), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC409: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC409: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    else
      if Mode == "Dynamic Blade" then
        for i = 0, 1, 0.2 do
          swait()
          dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(1, -4.5, -1), 0.6)
          dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -3.4, -1), 0.6)
          dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * euler(0, 0, 0) * cf(-1, -3, -1.5), 0.6)
          dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(1, -4.5, 1), 0.6)
          dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -3.4, 1), 0.6)
          dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * euler(0, 0, 0) * cf(-1, -3, 1.5), 0.6)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, -0.8), 0.5)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.5)
          RW.C0 = clerp(RW.C0, cf(-0.8, 0.5, -0.5) * euler(1.8, 0, -1) * euler(0, 1, 0), 0.5)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -0.8) * euler(0, -1.57, 0), 0.5)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.5)
          LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.5)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC727: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC727: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      else
        if Mode == "Energy Reactor" then
          dynamomove = false
          for i = 0, 1, 0.1 do
            swait()
            if doextra == true then
              da = da + 0.3
            end
            bb = -4
            if doextra == true then
              bb = -6
            end
            hwld.Part1 = RootPart
            wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, -0.5), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.5, 0, 0.5) * euler(0, 1.57, 0), 0.5)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, -0.1), 0.5)
            LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.3, 0) * euler(0, 0, 0.4), 0.5)
            hwld.C0 = clerp(hwld.C0, euler(0, 0, -2) * euler(0, 0, -da) * cf(0, bb, 0), 0.6)
            dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(2, -1, 0) * euler(0, 0, 0) * euler(1.57, 0, 0), 0.6)
            dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, 0) * cf(2, -1, 0) * euler(0, 1.046, 0) * euler(1.57, 0, 0), 0.6)
            dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * cf(2, -1, 0) * euler(0, 2.092, 0) * euler(1.57, 0, 0), 0.6)
            dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, 0) * cf(2, -1, 0) * euler(0, 3.138, 0) * euler(1.57, 0, 0), 0.6)
            dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, 0) * cf(2, -1, 0) * euler(0, 4.184, 0) * euler(1.57, 0, 0), 0.6)
            dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, 0) * cf(2, -1, 0) * euler(0, 5.23, 0) * euler(1.57, 0, 0), 0.6)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC1178: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1178: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
    mana.Value = mana.Value - 15
    cooldowns[3] = 0
    for i = 1, #DynamPrt do
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          for d = 1, 2 do
            swait()
            da = da + 0.6
            if doextra == true then
              MagicCircle(BrickColor.new(NewCol2), handle.CFrame * cf(0, 0, -3), 1, 1, 1, 3, 3, 3, 0.1)
              dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0.5) * cf(3, -1, 0) * euler(0, 0, 0) * euler(1.57, 0, 0), 0.2)
              dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, 0.5) * cf(3, -1, 0) * euler(0, 1.046, 0) * euler(1.57, 0, 0), 0.2)
              dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0.5) * cf(3, -1, 0) * euler(0, 2.092, 0) * euler(1.57, 0, 0), 0.2)
              dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, 0.5) * cf(3, -1, 0) * euler(0, 3.138, 0) * euler(1.57, 0, 0), 0.2)
              dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, 0.5) * cf(3, -1, 0) * euler(0, 4.184, 0) * euler(1.57, 0, 0), 0.2)
              dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, 0.5) * cf(3, -1, 0) * euler(0, 5.23, 0) * euler(1.57, 0, 0), 0.2)
              hwld.C0 = clerp(hwld.C0, euler(0, 0, -2) * euler(0, 0, -da) * cf(0, -6, 0), 0.6)
            end
          end
          so("300916038", DynamPrt[i], 1, 2)
          Shoot(DynamPrt[i].Position)
          -- DECOMPILER ERROR at PC1457: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1457: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if doextra == true then
      overload = overload - 50
      so("300916038", handle, 1, 1.5)
      Shoot2(handle.Position)
    end
  end
    attack = false
end

do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
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
            -- DECOMPILER ERROR at PC183: LeaveBlock: unexpected jumping out DO_STMT

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
  local width = a + b - a.unit * (len1 - c).magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(NewCol2)
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
    w1.Parent = triangparent
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
      w2.BrickColor = BrickColor.new(NewCol2)
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
      w2.Parent = triangparent
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

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent, prt2)
  local prt = (part(3, parent, 0, 0, brickcolor, "Effect", vt()))
  local wld = nil
  prt.CFrame = cframe
  if Type ~= 3 then
    prt.Anchored = true
  else
    prt.Anchored = false
    wld = weld(prt, prt, prt2, cframe)
  end
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, wld, cframe})
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

MagicCylinder3 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, modelzorz, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
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
  local prt = part(3, Character, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicHead2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, 0, 0, brickcolor, "Effect", vt())
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

MagicRing2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, prt2)
  local prt = part(3, modelzorz, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = false
  wld = weld(prt, prt, prt2, cframe)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, wld, cframe})
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

Shoot = function(orgpos)
  rand = 1.5
  if Mode == "Energy Reactor" then
    rand = 0
  else
    if Mode == "Dynamic Blade" then
      rand = 2
    end
  end
  spread = vt((math.random(-1, 0) + math.random()) * rand, (math.random(-1, 0) + math.random()) * rand, (math.random(-1, 0) + math.random()) * rand) * (orgpos - MMouse.Hit.p).magnitude / 100
  local MouseLook = cf((orgpos + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  MagicCircle(BrickColor.new(NewCol2), cf(orgpos), 5, 5, 5, 1, 1, 1, 0.1)
  table.insert(Effects, {MouseLook.lookVector, "Shoot", 50, orgpos, 5, 7, 0, 1, 2})
end

Shoot2 = function(orgpos)
  local MouseLook = cf((orgpos + MMouse.Hit.p) / 2, MMouse.Hit.p)
  MagicCircle(BrickColor.new(NewCol2), cf(orgpos), 5, 5, 5, 3, 3, 3, 0.1)
  table.insert(Effects, {MouseLook.lookVector, "Shoot2", 50, orgpos, 5, 7, 0, 1, 2})
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  if hit.Parent == nil then
    return 
  end
  if hit == MovePart then
    Fly = false
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
        --[[if Stats.Stun.Value < Stats.StunThreshold.Value then
          Stats.Stun.Value = Stats.Stun.Value + incstun
        end--]]
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
  end
), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if prechit == true then
        eul = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        MagicCircle(BrickColor.new("White"), cf(hit.Position) * eul, 5, 5, 5, -0.1, 5, -0.1, 0.02)
        MagicCircle(BrickColor.new("White"), cf(hit.Position) * eul * euler(1.57, 0, 0), 5, 5, 5, -0.1, 5, -0.1, 0.02)
      end
      if DecreaseState ~= nil then
        DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
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
            bodvol.P = 500
            bodvol.maxForce = Vector3.new(3000, 3000, 3000)
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
  dynamomove = false
  if Mode == "Energy Reactor" then
    dynamomove = true
  end
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
      dynamomove = true
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
  if key == "e" and defending == true then
    defending = false
  end
  if key == "z" and choosemode == true then
    Mode = "Classic"
    manainc = 9
    choosemode = false
    passive1.Value = 0.1
    passive2.Value = -0.05
    passive3.Value = -0.1
  else
    if key == "x" and choosemode == true then
      Mode = "Dynamic Blade"
      manainc = 15
      choosemode = false
      passive1.Value = -0.1
      passive2.Value = 0.1
      passive3.Value = 0.1
    else
      if key == "c" and choosemode == true then
        Mode = "Energy Reactor"
        manainc = 5
        choosemode = false
        passive1.Value = 0.1
        passive2.Value = -0.15
        passive3.Value = 0.05
      end
    end
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
  if key == "e" then
    Defend()
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
  if key == "e" or key == "z" or key == "x" or key == "c" or key == "v" then
    dynamomove = true
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
print("Dynamo & Permanence loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local handef = 0
local flick = 0
local reactlightn = 0
local walk = 0
local walkforw = true
local ovloadn = 0
local oldhealth = Humanoid.Health
local oldstun = Stun.Value
while 1 do
  swait()
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
  if mdec2.Parent == nil then
    for i = 1, #DemTable do
      if DemTable[i][1].Transparency < 1 then
        DemTable[i][1].Transparency = DemTable[i][1].Transparency + 0.1
      end
    end
  else
    do
      for i = 1, #DemTable do
        if DemTable[i][2] < DemTable[i][1].Transparency then
          DemTable[i][1].Transparency = DemTable[i][1].Transparency - 0.05
        end
        if 4 <= flick then
          DemTable[i][1].Transparency = DemTable[i][1].Transparency + 0.1
        end
      end
      do
        if 4 <= flick then
          flick = 0
        end
        flick = flick + 1
        ovloadn = ovloadn + 1
        if 20 <= ovloadn then
          ovloadn = 0
          if overload < 100 then
            overload = overload + 1
          end
        end
        if 100 <= overload then
          overload = 100
        end
        if 50 <= overload then
          prt29.Material = "Neon"
          prt30.Material = "Neon"
          prt30b.Material = "Neon"
          prt31.Material = "Neon"
          prt32.Material = "Neon"
          prt32b.Material = "Neon"
          dprt4.Material = "Neon"
          dprt5.Material = "Neon"
          dprt16.Material = "Neon"
          dprt17.Material = "Neon"
          dprt18.Material = "Neon"
          dprt19.Material = "Neon"
          dprt20.Material = "Neon"
          dprt21.Material = "Neon"
          dprt22.Material = "Neon"
          dprtb4.Material = "Neon"
          dprtb5.Material = "Neon"
          dprtb16.Material = "Neon"
          dprtb17.Material = "Neon"
          dprtb18.Material = "Neon"
          dprtb19.Material = "Neon"
          dprtb20.Material = "Neon"
          dprtb21.Material = "Neon"
          dprtb22.Material = "Neon"
        else
          prt29.Material = "SmoothPlastic"
          prt30.Material = "SmoothPlastic"
          prt30b.Material = "SmoothPlastic"
          prt31.Material = "SmoothPlastic"
          prt32.Material = "SmoothPlastic"
          prt32b.Material = "SmoothPlastic"
          dprt4.Material = "SmoothPlastic"
          dprt5.Material = "SmoothPlastic"
          dprt16.Material = "SmoothPlastic"
          dprt17.Material = "SmoothPlastic"
          dprt18.Material = "SmoothPlastic"
          dprt19.Material = "SmoothPlastic"
          dprt20.Material = "SmoothPlastic"
          dprt21.Material = "SmoothPlastic"
          dprt22.Material = "SmoothPlastic"
          dprtb4.Material = "SmoothPlastic"
          dprtb5.Material = "SmoothPlastic"
          dprtb16.Material = "SmoothPlastic"
          dprtb17.Material = "SmoothPlastic"
          dprtb18.Material = "SmoothPlastic"
          dprtb19.Material = "SmoothPlastic"
          dprtb20.Material = "SmoothPlastic"
          dprtb21.Material = "SmoothPlastic"
          dprtb22.Material = "SmoothPlastic"
        end
        if defending == true and Humanoid.Health < oldhealth then
          overload = overload + (oldhealth - Humanoid.Health)
          if Mode == "Classic" then
            MagicCircle(BrickColor.new(NewCol2), handle.CFrame * cf(0.6, math.random(-100, 100) / 100, math.random(-100, 100) / 100), 1, 1, 1, 0, 5, 5, 0.1)
          else
            if Mode == "Dynamic Blade" then
              MagicCircle(BrickColor.new(NewCol2), prt31.CFrame * cf(0, math.random(-200, 200) / 100, math.random(-90, 90) / 100), 1, 1, 1, 0, 5, 5, 0.1)
            else
              if Mode == "Energy Reactor" then
                MagicCircle(BrickColor.new(NewCol2), handle.CFrame * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, -1), 1, 1, 1, 5, 5, 0, 0.1)
              end
            end
          end
        end
        if Stagger.Value == true and staggeranim == false and defending == false then
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
        if StaggerHit.Value == true and staggeranim == false and defending == false then
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
        oldhealth = Humanoid.Health
        if defending == true then
          if oldstun <= 60 and StunT.Value <= Stun.Value then
            Stun.Value = 60
            defending = false
            if Mode == "Classic" then
              MagicCircle(BrickColor.new(NewCol2), handle.CFrame * cf(0.6, 0, 0), 1, 1, 1, 0, 5, 5, 0.05)
            else
              if Mode == "Dynamic Blade" then
                MagicCircle(BrickColor.new(NewCol2), prt31.CFrame, 1, 1, 1, 0, 5, 5, 0.05)
              else
                if Mode == "Energy Reactor" then
                  MagicCircle(BrickColor.new(NewCol2), handle.CFrame * cf(0, 0, -1), 1, 1, 1, 5, 5, 0, 0.05)
                end
              end
            end
          else
            if StunT.Value <= Stun.Value then
              Stun.Value = 99
              defending = false
            end
          end
          oldstun = tonumber(Stun.Value)
          if Stagger.Value == true then
            Stagger.Value = false
            if Mode == "Classic" then
              MagicCircle(BrickColor.new(NewCol2), handle.CFrame * cf(0.6, 0, 0), 1, 1, 1, 0, 5, 5, 0.05)
            else
              if Mode == "Dynamic Blade" then
                MagicCircle(BrickColor.new(NewCol2), prt31.CFrame, 1, 1, 1, 0, 5, 5, 0.05)
              else
                if Mode == "Energy Reactor" then
                  MagicCircle(BrickColor.new(NewCol2), handle.CFrame * cf(0, 0, -1), 1, 1, 1, 5, 5, 0, 0.05)
                end
              end
            end
          end
          if StaggerHit.Value == true then
            StaggerHit.Value = false
          end
        end
        if Mvmt.Value < 0 or Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true or Rooted.Value == true then
          Humanoid.WalkSpeed = 0
        else
          Humanoid.WalkSpeed = 16 * Mvmt.Value
        end
        if StunT.Value <= Stun.Value and stunanim == false and defending == false then
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
          donum = donum + 0.003
        else
          donum = donum - 0.003
        end
        local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
        local velderp = RootPart.Velocity.y
        hitfloor,posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
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
          if Mode == "Classic" and attack == false and dynamomove == true then
            hwld.Part1 = RightArm
            hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), math.random(30, 200) / 1000)
            dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * cf(-0.6, -1.5, -0.4), math.random(30, 200) / 1000)
            dwld6.C0 = clerp(dwld6.C0, euler(0, 1.57, 0) * cf(-0.6, -0.4, -0.35), math.random(30, 200) / 1000)
            dwld10.C0 = clerp(dwld10.C0, euler(0, 1.57, 0) * cf(-0.6, 0.5, -0.45), math.random(30, 200) / 1000)
            dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * cf(-0.6, -1.5, 0.4), math.random(30, 200) / 1000)
            dwldb6.C0 = clerp(dwldb6.C0, euler(0, -1.57, 0) * cf(-0.6, -0.4, 0.35), math.random(30, 200) / 1000)
            dwldb10.C0 = clerp(dwldb10.C0, euler(0, -1.57, 0) * cf(-0.6, 0.5, 0.45), math.random(30, 200) / 1000)
          else
            if Mode == "Dynamic Blade" and attack == false and dynamomove == true then
              hwld.Part1 = prt1
              hwld.C0 = clerp(hwld.C0, euler(0, 0, 0) * cf(0, 0, 0), math.random(30, 200) / 1000)
              dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, 0) * euler(0.1, 0, 0) * cf(0, -5.5, -0.3), math.random(30, 200) / 1000)
              dwld6.C0 = clerp(dwld6.C0, euler(0, -1.57, 0) * euler(0, 0, 0) * cf(0, -4, -0.65), math.random(30, 200) / 1000)
              dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, 0) * cf(0, -3, -0.5), math.random(30, 200) / 1000)
              dwldb1.C0 = clerp(dwldb1.C0, euler(0, -1.57, 0) * euler(-0.1, 0, 0) * cf(0, -5.5, 0.3), math.random(30, 200) / 1000)
              dwldb6.C0 = clerp(dwldb6.C0, euler(0, 1.57, 0) * euler(0, 0, 0) * cf(0, -4, 0.65), math.random(30, 200) / 1000)
              dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, -1.57, 0) * cf(0, -3, 0.5), math.random(30, 200) / 1000)
            else
              if Mode == "Energy Reactor" and dynamomove == true then
                hwld.Part1 = RootPart
                hwld.C0 = clerp(hwld.C0, euler(0, 0, -0.5) * cf(0, -2, 0), math.random(30, 200) / 1000)
                dwld1.C0 = clerp(dwld1.C0, euler(0, 1.57, -1.57) * cf(3, 3, 0) * euler(0, 0, 0) * euler(1.57, 0, 0), math.random(30, 200) / 1000)
                dwld6.C0 = clerp(dwld6.C0, euler(0, 4.71, -1.57) * cf(3, 3, 0) * euler(0, 1.046, 0) * euler(1.57, 0, 0), math.random(30, 200) / 1000)
                dwld10.C0 = clerp(dwld10.C0, euler(3.14, 1.57, -1.57) * cf(3, 3, 0) * euler(0, 2.092, 0) * euler(1.57, 0, 0), math.random(30, 200) / 1000)
                dwldb1.C0 = clerp(dwldb1.C0, euler(0, 1.57, -1.57) * cf(3, 3, 0) * euler(0, 3.138, 0) * euler(1.57, 0, 0), math.random(30, 200) / 1000)
                dwldb6.C0 = clerp(dwldb6.C0, euler(0, 4.71, -1.57) * cf(3, 3, 0) * euler(0, 4.184, 0) * euler(1.57, 0, 0), math.random(30, 200) / 1000)
                dwldb10.C0 = clerp(dwldb10.C0, euler(3.14, 1.57, -1.57) * cf(3, 3, 0) * euler(0, 5.23, 0) * euler(1.57, 0, 0), math.random(30, 200) / 1000)
              end
            end
          end
          if Mode == "Energy Reactor" and 8 <= reactlightn then
            reactlightn = 0
            num = math.random(1, 3)
            efprt1 = dprt1
            efprt2 = dprtb1
            if num == 2 then
              efprt1 = dprt6
              efprt2 = dprtb6
            else
              if num == 3 then
                efprt1 = dprt10
                efprt2 = dprtb10
              end
            end
            Lightning(efprt1.Position, efprt2.Position, 5, 1, NewCol2, 0.01, 0.5, 0.2)
          end
          reactlightn = reactlightn + 1
          if 1 < RootPart.Velocity.y and hitfloor == nil then
            Anim = "Jump"
            if attack == false then
              if Mode == "Dynamic Blade" then
                wld1.C0 = clerp(wld1.C0, euler(1.6, 0, 0) * cf(0, 1.1, 0.2), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(0.6, 0.4, -0.6) * euler(0.3 + (donum) / 4, 0, -0.4 - (donum) / 4) * euler(0, -1, 0), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-0.8, 0.4, -0.5) * euler(0.4 + (donum) / 4, 0, 0.3 - (donum) / 4) * euler(0, -1.3, 0), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
              else
                wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.2), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
              end
            end
          else
            if RootPart.Velocity.y < -1 and hitfloor == nil then
              Anim = "Fall"
              if attack == false then
                if Mode == "Dynamic Blade" then
                  wld1.C0 = clerp(wld1.C0, euler(1.6, 0, 0) * cf(0, 1.1, 0.2), 0.2)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(0.6, 0.4, -0.6) * euler(0.3 + (donum) / 4, 0, -0.4 - (donum) / 4) * euler(0, -1, 0), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-0.8, 0.4, -0.5) * euler(0.4 + (donum) / 4, 0, 0.3 - (donum) / 4) * euler(0, -1.3, 0), 0.2)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                else
                  wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2), 0.2)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                end
              end
            else
              if torvel < 1 and hitfloor ~= nil then
                Anim = "Idle"
                if attack == false then
                  if Mode == "Dynamic Blade" then
                    wld1.C0 = clerp(wld1.C0, euler(1.6, 0, 0) * cf(0, 1.1, 0.2), 0.2)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, -0.5), 0.2)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.2)
                    RW.C0 = clerp(RW.C0, cf(0.6, 0.5, -0.6) * euler(1.2 + (donum) / 4, 0, -0.6 - (donum) / 4) * euler(0, -1, 0), 0.2)
                    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1 + (donum) / 4, 0, 0.4 - (donum) / 4) * euler(0, -0.8, 0), 0.2)
                    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, 0.1) * euler(0, 1.57, 0) * euler(0, -0.5, 0) * euler(0, 0, 0.1), 0.2)
                    LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.2), 0.2)
                  else
                    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0.5), 0.2)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.2)
                    if Mode == "Classic" then
                      RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(1 - (donum) / 4, 0, 0.6 - (donum) / 4) * euler(0, 0.5, 0), 0.2)
                      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    else
                      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2 + (donum) / 4, 0, 0.4 + (donum) / 4) * euler(0, 0, 0), 0.2)
                      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    end
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6 + (donum) / 4, 0, -0.2 - (donum) / 4) * euler(0, -0.5, 0), 0.2)
                    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.4), 0.2)
                    LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0.1), 0.2)
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
                    if Mode == "Dynamic Blade" then
                      wld1.C0 = clerp(wld1.C0, euler(1.6, 0, 0) * cf(0, 1.1, 0.2), 0.2)
                      Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0) * euler(0, 0, 0), 0.2)
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.2)
                      RW.C0 = clerp(RW.C0, cf(0.6, 0.4, -0.6) * euler(0.5 + (donum) / 4, 0, -0.4 - (donum) / 4) * euler(0, -1, 0), 0.2)
                      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                      LW.C0 = clerp(LW.C0, cf(-0.8, 0.4, -0.5) * euler(0.6 + (donum) / 4, 0, 0.3 - (donum) / 4) * euler(0, -1.3, 0), 0.2)
                      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
                    else
                      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                      Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0), 0.2)
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                      if Mode == "Classic" then
                        RW.C0 = clerp(RW.C0, cf(1.45, 0.5, 0.2) * euler(0.8 - (donum) / 4, 0, 0.2 - (donum) / 4) * euler(0, 0, 0), 0.2)
                        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                      else
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2 + (donum) / 5, 0, 0.2) * euler(0, 0, 0), 0.2)
                        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                      end
                      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4 + (donum) / 3, 0, -0.4 + (donum) / 3), 0.2)
                      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
                    end
                  end
                else
                  if 30 <= torvel and hitfloor ~= nil then
                    Anim = "Run"
                    if attack == false then
                      if Mode == "Dynamic Blade" then
                        wld1.C0 = clerp(wld1.C0, euler(1.6, 0, 0) * cf(0, 1.1, 0.2), 0.2)
                        Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0) * euler(0, 0, 0), 0.2)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.2)
                        RW.C0 = clerp(RW.C0, cf(0.6, 0.4, -0.6) * euler(0.5 + (donum) / 4, 0, -0.4 - (donum) / 4) * euler(0, -1, 0), 0.2)
                        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                        LW.C0 = clerp(LW.C0, cf(-0.8, 0.4, -0.5) * euler(0.6 + (donum) / 4, 0, 0.3 - (donum) / 4) * euler(0, -1.3, 0), 0.2)
                        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
                      else
                        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                        Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0), 0.2)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2 + (donum) / 3, 0, 0.5 - (donum) / 3), 0.2)
                        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4 + (donum) / 3, 0, -0.4 + (donum) / 3), 0.2)
                        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
                      end
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
                  local Look = Thing[1]
                  local hit, pos = rayCast(Thing[4], Look, 15, Character)
                  local mag = (Thing[4] - pos).magnitude
                  Thing[9] = Thing[9] + 0.5
                  Thing[5] = Thing[5] + 0.2
                  Thing[6] = Thing[6] + 0.2
                  MagicHead(BrickColor.new(NewCol2), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), Thing[9], mag * 5, Thing[9], -0.2, 0, -0.2, 0.1)
                  Thing[4] = Thing[4] + Look * 15
                  Thing[3] = Thing[3] - 1
                  if hit ~= nil then
                    Thing[3] = 0
                    Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 5)), nil, nil, true)
                    ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                    ref.Anchored = true
                    ref.CFrame = cf(pos)
                    MagicCircle(BrickColor.new(NewCol2), cf(pos), 5, 5, 5, 1, 1, 1, 0.07)
                    so("300916057", ref, 1, 2)
                    game:GetService("Debris"):AddItem(ref, 1)
                  end
                  if Thing[3] <= 0 then
                    table.remove(Effects, e)
                  end
                end
                do
                  if Thing[2] == "Shoot2" then
                    local Look = Thing[1]
                    local hit, pos = rayCast(Thing[4], Look, 3, Character)
                    local mag = (Thing[4] - pos).magnitude
                    Thing[9] = Thing[9] + 0.5
                    Thing[5] = Thing[5] + 0.2
                    Thing[6] = Thing[6] + 0.2
                    MagicCircle(BrickColor.new(NewCol2), CFrame.new((Thing[4] + pos) / 2, pos), 25, 25, 25, -5, -5, -5, 0.2)
                    Thing[4] = Thing[4] + Look * 3
                    Thing[3] = Thing[3] - 1
                    if hit ~= nil then
                      Thing[3] = 0
                      ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                      ref.Anchored = true
                      ref.CFrame = cf(pos)
                      MagniDamage(ref, 10, 6, 8, math.random(15, 20), "Knockdown2", ref, 0, 1, (math.random(4, 6)), nil, nil, true)
                      MagicCircle(BrickColor.new(NewCol2), cf(pos), 25, 25, 25, 5, 5, 5, 0.1)
                      MagicCircle(BrickColor.new(NewCol2), cf(pos), 10, 10, 10, 15, 15, 15, 0.08)
                      so("300916057", ref, 1, 1.5)
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
                      if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Shoot2" then
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
                                Thing[8].C0 = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * Thing[9]
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
                        else
                          Part.Parent = nil
                          table.remove(Effects, e)
                        end
                      end
                      -- DECOMPILER ERROR at PC11212: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC11212: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC11212: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC11212: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC11212: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC11212: LeaveBlock: unexpected jumping out IF_STMT

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
        fenbarblock2:TweenSize((UDim2.new(0.4, 0, -4 * (overload) / 100, 0)), nil, 1, 0.4, true)
        fenbarblock3.Text = "Overload(" .. overload .. ")"
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
          if mananum <= manainc then
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
        -- DECOMPILER ERROR at PC11594: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC11594: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC11594: LeaveBlock: unexpected jumping out IF_ELSE_STMT

        -- DECOMPILER ERROR at PC11594: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
