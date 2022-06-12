--succ it hard
print("Hello world!")
wait()
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
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local RailgunTarget, CannonTarget, BladesTarget = nil, nil, nil
local railgunattack = false
local cannonattack = false
local tribladesattack = false
local givingarmor = false
local givingrailgun = false
local givingplasma = false
local givingblades = false
local Target = nil
local move1 = "(Z)\nRailgun Armor"
local move2 = "(X)\nPlasma Cannon Armor"
local move3 = "(C)\nTri-Blades Armor"
local move4 = "(V)\nIon Cannon Strike"
local cooldowns = {}
local cooldown1 = 100
table.insert(cooldowns, cooldown1)
local cooldown2 = 100
table.insert(cooldowns, cooldown2)
local cooldown3 = 100
table.insert(cooldowns, cooldown3)
local cooldown4 = 100
table.insert(cooldowns, cooldown4)
local cooldownsadd = {}
local cooldownadd1 = 0.3
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.4
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.25
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.0475
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
NewCol = Color3.new(0.3, TorsoGreen, 0.3)
NewCol2 = Color3.new(TorsoRed, TorsoGreen, TorsoBlue)
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
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
end
if Player:findFirstChild("Color2") ~= nil then
  NewCol2 = Player.Color2.Value
end
if Character.Name == "DahNoob" then
  NewCol = BrickColor.new("Bright blue").Color
end
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

if Character:findFirstChild("Gear Gauntlet", true) ~= nil then
  Character:findFirstChild("Gear Gauntlet", true).Parent = nil
end
if Character:findFirstChild("Railgun", true) ~= nil then
  Character:findFirstChild("Railgun", true).Parent = nil
end
if Character:findFirstChild("Plasma Cannon", true) ~= nil then
  Character:findFirstChild("Plasma Cannon", true).Parent = nil
end
if Character:findFirstChild("Tri-Blades", true) ~= nil then
  Character:findFirstChild("Tri-Blades", true).Parent = nil
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
mana.Value = 30
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
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Dark green").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
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
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new("Really red").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Gear Gauntlet"
RightArm.Transparency = 1
local handle = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Handle", vt())
local prt1 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part01", vt())
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part02", vt())
local prt3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part03", vt())
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part04", vt())
local prt5 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part05", vt())
local prt6 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Part06", vt())
local prt7 = part(3, modelzorz, 0, 0, Torso.BrickColor, "Part07", vt())
local prt8 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part08", vt())
local prt9 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Part09", vt())
local prt10 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part10", vt())
local prt11 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part11", vt())
local prt12 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part12", vt())
local prt13 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part13", vt())
local prt14 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Part14", vt())
local prt15 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part15", vt())
local prt16 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol), "Part16", vt())
hmsh = mesh("BlockMesh", handle, "", "", vt(0, 0, 0), vt(5.1, 10.1, 5.1))
msh1 = mesh("BlockMesh", prt1, "", "", vt(0, 0, 0), vt(6, 3, 6))
msh2 = mesh("BlockMesh", prt2, "", "", vt(0, 0, 0), vt(1, 3.5, 5.25))
msh3 = mesh("BlockMesh", prt3, "", "", vt(0, 0, 0), vt(5.25, 3.5, 1))
msh4 = mesh("BlockMesh", prt4, "", "", vt(0, 0, 0), vt(8, 8.1, 1))
msh5 = mesh("BlockMesh", prt5, "", "", vt(0, 0, 0), vt(8, 8.1, 1))
msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(3, 0.5, 3))
msh7 = mesh("SpecialMesh", prt7, "Sphere", "nil", vt(0, 0, 0), vt(2.5, 2.5, 2.5))
msh8 = mesh("CylinderMesh", prt8, "", "", vt(0, 0, 0), vt(3, 0.5, 0.3))
msh9 = mesh("CylinderMesh", prt9, "", "", vt(0, 0, 0), vt(1.5, 0.5, 1.5))
msh10 = mesh("CylinderMesh", prt10, "", "", vt(0, 0, 0), vt(1, 0.5, 1))
msh11 = mesh("BlockMesh", prt11, "", "", vt(0, 0, 0), vt(2, 2, 6))
msh12 = mesh("SpecialMesh", prt12, "Wedge", "nil", vt(0, 0, 0), vt(2, 1, 4))
msh13 = mesh("CylinderMesh", prt13, "", "", vt(0, 0, 0), vt(3, 0.5, 0.3))
msh14 = mesh("CylinderMesh", prt14, "", "", vt(0, 0, 0), vt(1.5, 0.5, 1.5))
msh15 = mesh("CylinderMesh", prt15, "", "", vt(0, 0, 0), vt(1, 0.5, 1))
msh16 = mesh("SpecialMesh", prt16, "FileMesh", "9756362", vt(0, 0, 0), vt(0.2, 1, 0.6))
local hwld = weld(handle, handle, RightArm, euler(0, 0, 0) * cf(0, 0, 0))
local wld1 = weld(prt1, prt1, handle, euler(0, 0, 0) * cf(0, 0.6, 0))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(-0.2, 0.1, 0))
local wld3 = weld(prt1, prt3, prt1, euler(0, 0, 0) * cf(0, 0.1, 0))
local wld4 = weld(prt1, prt4, prt1, euler(0, 0.785, 0) * cf(0, -0.81, 0))
local wld5 = weld(prt1, prt5, prt1, euler(0, -0.785, 0) * cf(0, -0.81, 0))
local wld6 = weld(prt1, prt6, prt1, euler(0, 0, 0) * cf(0, -1.6, 0))
local wld7 = weld(prt1, prt7, prt6, euler(0, 0, 0) * cf(0, 0, 0))
local wld8 = weld(prt1, prt8, prt1, euler(1.57, 0, -1.57) * cf(0, 0, -0.55))
local wld9 = weld(prt1, prt9, prt8, euler(0, 0, 0) * cf(0, 0.05, 0))
local wld10 = weld(prt1, prt10, prt9, euler(0, 0, 0) * cf(0, 0.01, 0))
local wld11 = weld(prt1, prt11, handle, euler(0, 0, 0) * cf(-0.4, -0.5, 0))
local wld12 = weld(prt1, prt12, prt11, euler(-0.5, 1.57, 1.57) * cf(-0.3, 0.2, 0))
local wld13 = weld(prt1, prt13, prt1, euler(1.57, 0, -1.57) * cf(0, 0, 0.55))
local wld14 = weld(prt1, prt14, prt13, euler(0, 0, 0) * cf(0, -0.05, 0))
local wld15 = weld(prt1, prt15, prt14, euler(0, 0, 0) * cf(0, -0.01, 0))
local wld16 = weld(prt1, prt16, prt1, euler(0, 0, 0) * cf(-0.6, 0, 0))
numb2 = 0
for i = 1, 4 do
  numb = 0.3
  for i = 1, 3 do
    local prtclaw = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Partclaw", vt())
    mshclaw = mesh("SpecialMesh", prtclaw, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 0.5))
    local wldclaw = weld(prt1, prtclaw, prt1, euler(1.57, -1.57, -1.57) * cf(-0.6, 0.3, numb) * euler(0, numb2, 0))
    numb = numb - 0.3
  end
  numb2 = numb2 + 1.57
end
numb = 0
for i = 1, 5 do
  local prtgear = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Partgear", vt())
  mshgear = mesh("BlockMesh", prtgear, "", "", vt(0, 0, 0), vt(2, 0.45, 0.35))
  local wldgear = weld(prt1, prtgear, prt9, euler(0, numb, 0) * cf(0, 0, 0))
  numb = numb + 0.628
end
numb = 0
for i = 1, 5 do
  local prtgear = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Partgear", vt())
  mshgear = mesh("BlockMesh", prtgear, "", "", vt(0, 0, 0), vt(2, 0.45, 0.35))
  local wldgear = weld(prt1, prtgear, prt14, euler(0, numb, 0) * cf(0, 0, 0))
  numb = numb + 0.628
end
num = 0.3
num2 = 0.5
for i = 1, 3 do
  local prtclaw1 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Partclaw1", vt())
  clawmsh1 = mesh("SpecialMesh", prtclaw1, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 2))
  local clawwld1 = weld(prt1, prtclaw1, prt11, euler(0, -1.57 + num2, 1.57) * cf(-0.2, -0.2, num))
  num = num - 0.3
  num2 = num2 - 0.5
end
num1 = 0.5
for i = 1, 2 do
  num = 1.57
  num2 = 0.08
  for i = 1, 2 do
    local prt17 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium stone grey"), "Part17", vt())
    msh17 = mesh("SpecialMesh", prt17, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 4, 0.8))
    local wld17 = weld(prt1, prt17, handle, euler(3.14, num, 0) * cf(num2, -0.3, num1))
    num = num - 3.14
    num2 = num2 - 0.16
  end
  num1 = num1 - 1
end
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(prt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local Color1 = BrickColor.new("Medium stone grey")
local Color2 = BrickColor.new(NewCol)
local Color4 = BrickColor.new("Really black")
local model1 = (Instance.new("Model"))
model1.Parent = nil
model1.Name = "Railgun"
Railgun = {}
RailgunWelds = {}
local model2 = (Instance.new("Model"))
model2.Parent = nil
model2.Name = "Plasma Cannon"
Plasma = {}
PlasmaWelds = {}
local model3 = (Instance.new("Model"))
model3.Parent = nil
model3.Name = "Tri-Blades"
Blades = {}
BladesWelds = {}
rprt1 = part(3, model1, 0, 0, Color1, "Part1", vt())
rprt2 = part(3, model1, 0, 0, Color2, "Part2", vt())
rprt3 = part(3, model1, 0, 0, Color2, "Part3", vt())
rprt4 = part(3, model1, 0, 0, Color2, "Part4", vt())
rprt5 = part(3, model1, 0, 0, Color2, "Part5", vt())
rprt6 = part(3, model1, 0, 0, Color2, "Part6", vt())
rprt7 = part(3, model1, 0, 0, Color1, "Part7", vt())
rprt8 = part(3, model1, 0, 0, Color4, "Part8", vt())
rprt9 = part(3, model1, 0, 0, Color1, "Part9", vt())
rprt10 = part(3, model1, 0, 0, Color1, "Part10", vt())
rprt11 = part(3, model1, 0, 0, Color1, "Part11", vt())
rprt12 = part(3, model1, 0, 0, Color1, "Part12", vt())
rprt13 = part(3, model1, 0, 0, Color1, "Part13", vt())
rprt14 = part(3, model1, 0, 0, Color1, "Part14", vt())
rprt15 = part(3, model1, 0, 0, Color1, "Part15", vt())
rprt16 = part(3, model1, 0, 0, Color1, "Part16", vt())
rprt17 = part(3, model1, 0, 0, Color1, "Part17", vt())
rprt18 = part(3, model1, 0, 0, Color2, "Part18", vt())
rprt19 = part(3, model1, 0, 0, Color2, "Part19", vt())
rprt20 = part(3, model1, 0.2, 0, Color1, "Part20", vt())
rprt21 = part(3, model1, 0.2, 0, Color1, "Part21", vt())
rprt22 = part(3, model1, 0.5, 0, Color1, "Part22", vt())
rprt23 = part(3, model1, 0.5, 0, Color1, "Part23", vt())
rprt24 = part(3, model1, 0, 0, Color2, "Part24", vt())
rprt25 = part(3, model1, 0, 0, Color2, "Part25", vt())
rprt26 = part(3, model1, 0.2, 0, Color1, "Part26", vt())
rprt27 = part(3, model1, 0.2, 0, Color1, "Part27", vt())
rprt28 = part(3, model1, 0.5, 0, Color1, "Part28", vt())
rprt29 = part(3, model1, 0.5, 0, Color1, "Part29", vt())
rprt30 = part(3, model1, 0, 0, Color2, "Part30", vt())
rprt31 = part(3, model1, 0, 0, Color2, "Part31", vt())
rprt32 = part(3, model1, 0.2, 0, Color1, "Part32", vt())
rprt33 = part(3, model1, 0.2, 0, Color1, "Part33", vt())
rprt34 = part(3, model1, 0.5, 0, Color1, "Part34", vt())
rprt35 = part(3, model1, 0.5, 0, Color1, "Part35", vt())
for _,c in pairs(model1:children()) do
  table.insert(Railgun, c)
end
pprt1 = part(3, model2, 0, 0, Color1, "aPart1", vt())
pprt2 = part(3, model2, 0, 0, Color2, "aPart2", vt())
pprt3 = part(3, model2, 0, 0, Color2, "aPart3", vt())
pprt4 = part(3, model2, 0, 0, Color2, "aPart4", vt())
pprt5 = part(3, model2, 0, 0, Color2, "aPart5", vt())
pprt6 = part(3, model2, 0, 0, Color2, "aPart6", vt())
pprt7 = part(3, model2, 0, 0, Color2, "aPart7", vt())
pprt8 = part(3, model2, 0, 0, Color1, "aPart8", vt())
pprt9 = part(3, model2, 0, 0, Color1, "aPart9", vt())
pprt10 = part(3, model2, 0, 0, Color4, "aPart10", vt())
pprt11 = part(3, model2, 0, 0, Color4, "aPart11", vt())
pprt12 = part(3, model2, 0, 0, Color1, "aPart12", vt())
pprt13 = part(3, model2, 0, 0, Color1, "aPart13", vt())
pprt14 = part(3, model2, 0, 0, Color1, "aPart14", vt())
pprt15 = part(3, model2, 0, 0, Color1, "aPart15", vt())
pprt16 = part(3, model2, 0, 0, Color1, "aPart16", vt())
pprt17 = part(3, model2, 0, 0, Color1, "aPart17", vt())
pprt18 = part(3, model2, 0, 0, Color1, "aPart18", vt())
pprt19 = part(3, model2, 0, 0, Color2, "aPart19", vt())
pprt20 = part(3, model2, 0, 0, Color2, "aPart20", vt())
pprt21 = part(3, model2, 0.2, 0, Color1, "aPart21", vt())
pprt22 = part(3, model2, 0.2, 0, Color1, "aPart22", vt())
pprt23 = part(3, model2, 0.5, 0, Color1, "aPart23", vt())
pprt24 = part(3, model2, 0.5, 0, Color1, "aPart24", vt())
pprt25 = part(3, model2, 0, 0, Color2, "aPart25", vt())
pprt26 = part(3, model2, 0, 0, Color2, "aPart26", vt())
pprt27 = part(3, model2, 0.2, 0, Color1, "aPart27", vt())
pprt28 = part(3, model2, 0.2, 0, Color1, "aPart28", vt())
pprt29 = part(3, model2, 0.5, 0, Color1, "aPart29", vt())
pprt30 = part(3, model2, 0.5, 0, Color1, "aPart30", vt())
pprt31 = part(3, model2, 0, 0, Color2, "aPart31", vt())
pprt32 = part(3, model2, 0, 0, Color2, "aPart32", vt())
pprt33 = part(3, model2, 0.2, 0, Color1, "aPart33", vt())
pprt34 = part(3, model2, 0.2, 0, Color1, "aPart34", vt())
pprt35 = part(3, model2, 0.5, 0, Color1, "aPart35", vt())
pprt36 = part(3, model2, 0.5, 0, Color1, "aPart36", vt())
pprt37 = part(3, model2, 0, 0, Color2, "aPart37", vt())
pprt38 = part(3, model1, 0, 0, Color1, "aPart38", vt())
pprt39 = part(3, model1, 0, 0, Color1, "aPart39", vt())
for _,c in pairs(model2:children()) do
  table.insert(Plasma, c)
end
bref = part(3, model3, 0, 1, Color4, "bRef", vt())
bprt1 = part(3, model3, 0, 1, Color1, "bPart1", vt())
bprt2 = part(3, model3, 0, 0, Color1, "bPart2", vt())
bprt3 = part(3, model3, 0, 0, Color2, "bPart3", vt())
bprt4 = part(3, model3, 0.8, 0, Color1, "bPart4", vt())
bprt5 = part(3, model3, 0.8, 0, Color1, "bPart5", vt())
bprt6 = part(3, model3, 0.8, 0, Color1, "bPart6", vt())
bprt7 = part(3, model3, 0, 1, Color1, "bPart7", vt())
bprt8 = part(3, model3, 0, 0, Color1, "bPart8", vt())
bprt9 = part(3, model3, 0, 0, Color2, "bPart9", vt())
bprt10 = part(3, model3, 0.8, 0, Color1, "bPart10", vt())
bprt11 = part(3, model3, 0.8, 0, Color1, "bPart11", vt())
bprt12 = part(3, model3, 0.8, 0, Color1, "bPart12", vt())
bprt13 = part(3, model3, 0, 1, Color1, "bPart13", vt())
bprt14 = part(3, model3, 0, 0, Color1, "bPart14", vt())
bprt15 = part(3, model3, 0, 0, Color2, "bPart15", vt())
bprt16 = part(3, model3, 0.8, 0, Color1, "bPart16", vt())
bprt17 = part(3, model3, 0.8, 0, Color1, "bPart17", vt())
bprt18 = part(3, model3, 0.8, 0, Color1, "bPart18", vt())
for _,c in pairs(model3:children()) do
  table.insert(Blades, c)
end
msh1 = mesh("BlockMesh", rprt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
msh2 = mesh("BlockMesh", rprt2, "", "", vt(0, 0, 0), vt(1.3, 2.5, 10))
msh3 = mesh("BlockMesh", rprt3, "", "", vt(0, 0, 0), vt(1.49, 2.5, 5))
msh4 = mesh("BlockMesh", rprt4, "", "", vt(0, 0, 0), vt(1.51, 2.5, 3))
msh5 = mesh("CylinderMesh", rprt5, "", "", vt(0, 0, 0), vt(2.5, 1, 2.5))
msh6 = mesh("CylinderMesh", rprt6, "", "", vt(0, 0, 0), vt(1.5, 16, 1.5))
msh7 = mesh("CylinderMesh", rprt7, "", "", vt(0, 0, 0), vt(1.6, 1, 1.6))
msh8 = mesh("CylinderMesh", rprt8, "", "", vt(0, 0, 0), vt(1.4, 1.01, 1.4))
msh9 = mesh("BlockMesh", rprt9, "", "", vt(0, 0, 0), vt(1.4, 14, 2))
msh10 = mesh("SpecialMesh", rprt10, "Wedge", "nil", vt(0, 0, 0), vt(1.3, 4, 3))
msh11 = mesh("SpecialMesh", rprt11, "Wedge", "nil", vt(0, 0, 0), vt(1.3, 2, 3))
msh12 = mesh("SpecialMesh", rprt12, "Wedge", "nil", vt(0, 0, 0), vt(1.7, 3, 3.5))
msh13 = mesh("BlockMesh", rprt13, "", "", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh14 = mesh("BlockMesh", rprt14, "", "", vt(0, 0, 0), vt(1.6, 4.5, 2))
msh15 = mesh("BlockMesh", rprt15, "", "", vt(0, 0, 0), vt(1.6, 3.6, 2))
msh16 = mesh("SpecialMesh", rprt16, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 3.5))
msh17 = mesh("SpecialMesh", rprt17, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 4))
msh19 = mesh("SpecialMesh", rprt19, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh20 = mesh("SpecialMesh", rprt20, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh21 = mesh("SpecialMesh", rprt21, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh22 = mesh("SpecialMesh", rprt22, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh23 = mesh("SpecialMesh", rprt23, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh25 = mesh("SpecialMesh", rprt25, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh26 = mesh("SpecialMesh", rprt26, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh27 = mesh("SpecialMesh", rprt27, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh28 = mesh("SpecialMesh", rprt28, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh29 = mesh("SpecialMesh", rprt29, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh31 = mesh("SpecialMesh", rprt31, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh32 = mesh("SpecialMesh", rprt32, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh33 = mesh("SpecialMesh", rprt33, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh34 = mesh("SpecialMesh", rprt34, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh35 = mesh("SpecialMesh", rprt35, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh1 = mesh("BlockMesh", pprt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
msh2 = mesh("BlockMesh", pprt2, "", "", vt(0, 0, 0), vt(2, 1.3, 5))
msh3 = mesh("SpecialMesh", pprt3, "Wedge", "nil", vt(0, 0, 0), vt(2, 2, 1))
msh4 = mesh("BlockMesh", pprt4, "", "", vt(0, 0, 0), vt(2, 2, 6))
msh5 = mesh("BlockMesh", pprt5, "", "", vt(0, 0, 0), vt(2, 2, 2))
msh6 = mesh("CylinderMesh", pprt6, "", "", vt(0, 0, 0), vt(2, 5, 2))
msh7 = mesh("CylinderMesh", pprt7, "", "", vt(0, 0, 0), vt(2, 5, 2))
msh8 = mesh("CylinderMesh", pprt8, "", "", vt(0, 0, 0), vt(2.1, 1, 2.1))
msh9 = mesh("CylinderMesh", pprt9, "", "", vt(0, 0, 0), vt(2.1, 1, 2.1))
msh10 = mesh("CylinderMesh", pprt10, "", "", vt(0, 0, 0), vt(1.9, 1.01, 1.9))
msh11 = mesh("CylinderMesh", pprt11, "", "", vt(0, 0, 0), vt(1.9, 1.01, 1.9))
msh12 = mesh("CylinderMesh", pprt12, "", "", vt(0, 0, 0), vt(2.2, 5.5, 2.2))
msh13 = mesh("SpecialMesh", pprt13, "Wedge", "nil", vt(0, 0, 0), vt(1.7, 3, 3.5))
msh14 = mesh("BlockMesh", pprt14, "", "", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh15 = mesh("BlockMesh", pprt15, "", "", vt(0, 0, 0), vt(1.6, 4.5, 2))
msh16 = mesh("BlockMesh", pprt16, "", "", vt(0, 0, 0), vt(1.6, 3.6, 2))
msh17 = mesh("SpecialMesh", pprt17, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 3.5))
msh18 = mesh("SpecialMesh", pprt18, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 4))
msh20 = mesh("SpecialMesh", pprt20, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh21 = mesh("SpecialMesh", pprt21, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh22 = mesh("SpecialMesh", pprt22, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh23 = mesh("SpecialMesh", pprt23, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh24 = mesh("SpecialMesh", pprt24, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh26 = mesh("SpecialMesh", pprt26, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh27 = mesh("SpecialMesh", pprt27, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh28 = mesh("SpecialMesh", pprt28, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh29 = mesh("SpecialMesh", pprt29, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh30 = mesh("SpecialMesh", pprt30, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh32 = mesh("SpecialMesh", pprt32, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
msh33 = mesh("SpecialMesh", pprt33, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh34 = mesh("SpecialMesh", pprt34, "Wedge", "nil", vt(0, 0, 0), vt(0.2, 8, 0.5))
msh35 = mesh("SpecialMesh", pprt35, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh36 = mesh("SpecialMesh", pprt36, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 7, 0.7))
msh37 = mesh("BlockMesh", pprt37, "", "", vt(0, 0, 0), vt(1.51, 2.5, 3))
msh38 = mesh("SpecialMesh", pprt38, "Wedge", "nil", vt(0, 0, 0), vt(1.3, 4, 3))
msh39 = mesh("SpecialMesh", pprt39, "Wedge", "nil", vt(0, 0, 0), vt(1.3, 2, 3))
msh2 = mesh("CylinderMesh", bprt2, "", "", vt(0, 0, 0), vt(3, 1, 3))
msh3 = mesh("CylinderMesh", bprt3, "", "", vt(0, 0, 0), vt(2.5, 1.01, 2.5))
msh4 = mesh("BlockMesh", bprt4, "", "", vt(0, 0, 0), vt(7, 0.5, 1.5))
msh5 = mesh("SpecialMesh", bprt5, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 10))
msh6 = mesh("SpecialMesh", bprt6, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 3, 4))
msh8 = mesh("CylinderMesh", bprt8, "", "", vt(0, 0, 0), vt(3, 1, 3))
msh9 = mesh("CylinderMesh", bprt9, "", "", vt(0, 0, 0), vt(2.5, 1.01, 2.5))
msh10 = mesh("BlockMesh", bprt10, "", "", vt(0, 0, 0), vt(7, 0.5, 1.5))
msh11 = mesh("SpecialMesh", bprt11, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 10))
msh12 = mesh("SpecialMesh", bprt12, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 3, 4))
msh14 = mesh("CylinderMesh", bprt14, "", "", vt(0, 0, 0), vt(3, 1, 3))
msh15 = mesh("CylinderMesh", bprt15, "", "", vt(0, 0, 0), vt(2.5, 1.01, 2.5))
msh16 = mesh("BlockMesh", bprt16, "", "", vt(0, 0, 0), vt(7, 0.5, 1.5))
msh17 = mesh("SpecialMesh", bprt17, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 10))
msh18 = mesh("SpecialMesh", bprt18, "Wedge", "nil", vt(0, 0, 0), vt(0.3, 3, 4))
rwld1 = weld(rprt1, rprt1, RootPart, euler(-0.2, 0, 0) * cf(3, -1, -0.2))
rwld2 = weld(rprt1, rprt2, rprt1, euler(0, 0, 0) * cf(0, 0, 0))
rwld3 = weld(rprt1, rprt3, rprt2, euler(-0.3, 0, 0) * cf(0, 0.05, -1))
rwld4 = weld(rprt1, rprt4, rprt2, euler(-0.5, 0, 0) * cf(0, 0.1, -0.3))
rwld5 = weld(rprt1, rprt5, rprt4, euler(2.07, 0, 0) * cf(0, -0.2, 0))
rwld6 = weld(rprt1, rprt6, rprt2, euler(1.57, 0, 0) * cf(0, -0.11, 1.1))
rwld7 = weld(rprt1, rprt7, rprt6, euler(0, 0, 0) * cf(0, -1.6, 0))
rwld8 = weld(rprt1, rprt8, rprt7, euler(0, 0, 0) * cf(0, 0, 0))
rwld9 = weld(rprt1, rprt9, rprt6, euler(0, 0, 0) * cf(0, -0.3, 0.2))
rwld10 = weld(rprt1, rprt10, rprt9, euler(0, 0, 0) * cf(0, 1.2, 0.4))
rwld11 = weld(rprt1, rprt11, rprt10, euler(0, 0, 3.14) * cf(0, 0.6, 0))
rwld12 = weld(rprt1, rprt12, rprt5, euler(3.14, 0, 0) * cf(0, -0.2, -0.55))
rwld13 = weld(rprt1, rprt13, rprt12, euler(0.785, 0, 0) * cf(0, 0.2, -0.4))
rwld14 = weld(rprt1, rprt14, rprt12, euler(0, 0, 0) * cf(0, -0.4, -0.2))
rwld15 = weld(rprt1, rprt15, rprt14, euler(-0.8, 0, 0) * cf(0, -0.55, -0.2))
rwld16 = weld(rprt1, rprt16, rprt14, euler(0, 0, 3.14) * cf(0, -0.15, 0.5))
rwld17 = weld(rprt1, rprt17, rprt16, euler(0, 0, 3.14) * cf(0, 0.5, -0.3))
rwld18 = weld(rprt1, rprt18, rprt2, euler(0, 0, 0) * cf(0.2, 0, 0))
rwld19 = weld(rprt1, rprt19, rprt18, euler(0, 0, 0.5) * cf(0, 0, 0))
rwld20 = weld(rprt1, rprt20, rprt19, euler(3.14, 3.14, 0) * cf(0, 0.8, 0.05))
rwld21 = weld(rprt1, rprt21, rprt19, euler(3.14, 0, 0) * cf(0, 0.8, -0.05))
rwld22 = weld(rprt1, rprt22, rprt20, euler(0, 0, 0) * cf(0, -0.5, 0.02))
rwld23 = weld(rprt1, rprt23, rprt21, euler(0, 0, 0) * cf(0, -0.5, 0.02))
rwld24 = weld(rprt1, rprt24, rprt2, euler(0, 0, 0) * cf(0.2, -0.1, -0.3))
rwld25 = weld(rprt1, rprt25, rprt24, euler(0.3, 0, 0.6) * cf(0, 0, 0))
rwld26 = weld(rprt1, rprt26, rprt25, euler(3.14, 3.14, 0) * cf(0, 0.8, 0.05))
rwld27 = weld(rprt1, rprt27, rprt25, euler(3.14, 0, 0) * cf(0, 0.8, -0.05))
rwld28 = weld(rprt1, rprt28, rprt26, euler(0, 0, 0) * cf(0, -0.5, 0.02))
rwld29 = weld(rprt1, rprt29, rprt27, euler(0, 0, 0) * cf(0, -0.5, 0.02))
rwld30 = weld(rprt1, rprt30, rprt2, euler(0, 0, 0) * cf(0.2, -0.2, -0.6))
rwld31 = weld(rprt1, rprt31, rprt30, euler(0.6, 0, 0.7) * cf(0, 0, 0))
rwld32 = weld(rprt1, rprt32, rprt31, euler(3.14, 3.14, 0) * cf(0, 0.8, 0.05))
rwld33 = weld(rprt1, rprt33, rprt31, euler(3.14, 0, 0) * cf(0, 0.8, -0.05))
rwld34 = weld(rprt1, rprt34, rprt32, euler(0, 0, 0) * cf(0, -0.5, 0.02))
rwld35 = weld(rprt1, rprt35, rprt33, euler(0, 0, 0) * cf(0, -0.5, 0.02))
for _,c in pairs(rprt1:children()) do
  if c.className == "Motor" then
    table.insert(RailgunWelds, c)
  end
end
pwld1 = weld(pprt1, pprt1, RootPart, euler(-0.2, 0, 0) * cf(-3, -1, -0.2))
pwld2 = weld(pprt1, pprt2, pprt1, euler(0, 0, 0) * cf(0, 0, 0))
pwld3 = weld(pprt1, pprt3, pprt2, euler(0, 3.14, 0) * cf(0, -0.3, -0.4))
pwld4 = weld(pprt1, pprt4, pprt2, euler(0, 0, 0) * cf(0, -0.3, 0.3))
pwld5 = weld(pprt1, pprt5, pprt4, euler(0, 0, 0) * cf(0, -0.3, 0.2))
pwld6 = weld(pprt1, pprt6, pprt4, euler(1.57, 0, 0) * cf(0, -0.02, 0.7))
pwld7 = weld(pprt1, pprt7, pprt4, euler(1.57, 0, 0) * cf(0, 0.02, 0.7))
pwld8 = weld(pprt1, pprt8, pprt6, euler(0, 0, 0) * cf(0, -0.5, 0))
pwld9 = weld(pprt1, pprt9, pprt7, euler(0, 0, 0) * cf(0, -0.5, 0))
pwld10 = weld(pprt1, pprt10, pprt8, euler(0, 0, 0) * cf(0, 0, 0))
pwld11 = weld(pprt1, pprt11, pprt9, euler(0, 0, 0) * cf(0, 0, 0))
pwld12 = weld(pprt1, pprt12, pprt4, euler(1.57, 0, 0) * cf(0, 0.2, 0.75))
pwld13 = weld(pprt1, pprt13, pprt5, euler(-1.57, 0, 0) * cf(0, -0.3, 0))
pwld14 = weld(pprt1, pprt14, pprt13, euler(0.785, 0, 0) * cf(0, 0.2, -0.4))
pwld15 = weld(pprt1, pprt15, pprt13, euler(0, 0, 0) * cf(0, -0.4, -0.2))
pwld16 = weld(pprt1, pprt16, pprt15, euler(-0.8, 0, 0) * cf(0, -0.55, -0.2))
pwld17 = weld(pprt1, pprt17, pprt15, euler(0, 0, 3.14) * cf(0, -0.15, 0.5))
pwld18 = weld(pprt1, pprt18, pprt17, euler(0, 0, 3.14) * cf(0, 0.5, -0.3))
pwld19 = weld(pprt1, pprt19, pprt2, euler(0, 0, 0) * cf(-0.2, -0.2, 0.7))
pwld20 = weld(pprt1, pprt20, pprt19, euler(0, 0, -0.5) * cf(0, 0, 0))
pwld21 = weld(pprt1, pprt21, pprt20, euler(3.14, 3.14, 0) * cf(0, 0.8, 0.05))
pwld22 = weld(pprt1, pprt22, pprt20, euler(3.14, 0, 0) * cf(0, 0.8, -0.05))
pwld23 = weld(pprt1, pprt23, pprt21, euler(0, 0, 0) * cf(0, -0.5, 0.02))
pwld24 = weld(pprt1, pprt24, pprt22, euler(0, 0, 0) * cf(0, -0.5, 0.02))
pwld25 = weld(pprt1, pprt25, pprt2, euler(0, 0, 0) * cf(-0.2, -0.3, 0.4))
pwld26 = weld(pprt1, pprt26, pprt25, euler(0.3, 0, -0.6) * cf(0, 0, 0))
pwld27 = weld(pprt1, pprt27, pprt26, euler(3.14, 3.14, 0) * cf(0, 0.8, 0.05))
pwld28 = weld(pprt1, pprt28, pprt26, euler(3.14, 0, 0) * cf(0, 0.8, -0.05))
pwld29 = weld(pprt1, pprt29, pprt27, euler(0, 0, 0) * cf(0, -0.5, 0.02))
pwld30 = weld(pprt1, pprt30, pprt28, euler(0, 0, 0) * cf(0, -0.5, 0.02))
pwld31 = weld(pprt1, pprt31, pprt2, euler(0, 0, 0) * cf(-0.2, -0.4, 0.1))
pwld32 = weld(pprt1, pprt32, pprt31, euler(0.6, 0, -0.7) * cf(0, 0, 0))
pwld33 = weld(pprt1, pprt33, pprt32, euler(3.14, 3.14, 0) * cf(0, 0.8, 0.05))
pwld34 = weld(pprt1, pprt34, pprt32, euler(3.14, 0, 0) * cf(0, 0.8, -0.05))
pwld35 = weld(pprt1, pprt35, pprt33, euler(0, 0, 0) * cf(0, -0.5, 0.02))
pwld36 = weld(pprt1, pprt36, pprt34, euler(0, 0, 0) * cf(0, -0.5, 0.02))
pwld37 = weld(pprt1, pprt37, pprt2, euler(-0.5, 0, 0) * cf(0, -0.05, -0.1))
pwld38 = weld(pprt1, pprt38, pprt37, euler(-1.57, 3.14, 0) * cf(0, 0.2, 0.15))
pwld39 = weld(pprt1, pprt339, pprt39, euler(0, 0, 3.14) * cf(0, 0.6, 0))
for _,c in pairs(pprt1:children()) do
  if c.className == "Motor" then
    table.insert(PlasmaWelds, c)
  end
end
brefwld = weld(bprt1, bref, RootPart, euler(0, 0, 0) * cf(0, -2, 0))
bwld1 = weld(bprt1, bprt1, bref, euler(0, 0, 0) * cf(2, -0.6, -2))
bwld2 = weld(bprt1, bprt2, bprt1, euler(3.14, -2, 1.17) * cf(0, 0, 0))
bwld3 = weld(bprt1, bprt3, bprt2, euler(0, 0, 0) * cf(0, 0, 0))
bwld4 = weld(bprt1, bprt4, bprt2, euler(0, 0, 0) * cf(-0.8, 0, 0))
bwld5 = weld(bprt1, bprt5, bprt2, euler(-1.57, 0, 1.57) * cf(-0.8, 0, -0.35))
bwld6 = weld(bprt1, bprt6, bprt4, euler(-1.57, 0, 1.57) * cf(-1.1, 0, -0.15))
bwld7 = weld(bprt1, bprt7, bref, euler(0, 0, 0) * cf(0, -0.6, -2))
bwld8 = weld(bprt1, bprt8, bprt7, euler(3.14, -2, 1.57) * cf(0, 0, 0))
bwld9 = weld(bprt1, bprt9, bprt8, euler(0, 0, 0) * cf(0, 0, 0))
bwld10 = weld(bprt1, bprt10, bprt8, euler(0, 0, 0) * cf(-0.8, 0, 0))
bwld11 = weld(bprt1, bprt11, bprt8, euler(-1.57, 0, 1.57) * cf(-0.8, 0, -0.35))
bwld12 = weld(bprt1, bprt12, bprt10, euler(-1.57, 0, 1.57) * cf(-1.1, 0, -0.15))
bwld13 = weld(bprt1, bprt13, bref, euler(0, 0, 0) * cf(-2, -0.6, -2))
bwld14 = weld(bprt1, bprt14, bprt13, euler(3.14, -2, 1.97) * cf(0, 0, 0))
bwld15 = weld(bprt1, bprt15, bprt14, euler(0, 0, 0) * cf(0, 0, 0))
bwld16 = weld(bprt1, bprt16, bprt14, euler(0, 0, 0) * cf(-0.8, 0, 0))
bwld17 = weld(bprt1, bprt17, bprt14, euler(-1.57, 0, 1.57) * cf(-0.8, 0, -0.35))
bwld18 = weld(bprt1, bprt18, bprt16, euler(-1.57, 0, 1.57) * cf(-1.1, 0, -0.15))
for _,c in pairs(bprt1:children()) do
  if c.className == "Motor" then
    table.insert(BladesWelds, c)
  end
end
local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox2", vt())
hitbox.Anchored = false
local hbwld = weld(hitbox, hitbox, RootPart, euler(0, 0, 0) * cf(0, 0, 0))
local hitbox2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
hitbox2.Anchored = true
local hitboxCF = cf(0, 0, 0)
local hitboxb1 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitboxb", vt(1, 1, 1))
hitboxb1.Anchored = false
local hitboxb2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitboxb", vt(1, 1, 1))
hitboxb2.Anchored = false
local hitboxb3 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitboxb", vt(1, 1, 1))
hitboxb3.Anchored = false
hboxpos = Instance.new("BodyPosition", nil)
hboxpos.P = 2000
hboxpos.D = 100
hboxpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = handle
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Gear Gauntlet"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Mechanic" then
  Bin.Name = "Gear Gauntlet"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    fwait()
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
    fwait()
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
end
StaggerAnim = function()
  attack = true
  removeControl()
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.35 do
    fwait()
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
    fwait()
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
    fwait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.8) * euler(0, -0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.2) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  for i = 1, 40 do
    fwait()
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
    fwait()
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
    fwait()
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
    fwait()
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
    fwait()
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
    fwait()
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
    fwait()
    gairost.cframe = RootPart.CFrame
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
  end
  for i = 0, 1, 0.2 do
    fwait()
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
    fwait()
    Stun.Value = 0
  end
end
attackone = function()
  attack = true
  for i = 0, 1, 0.12 do
    fwait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 1) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -1) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC189: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC189: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145095", handle, 1, 1.1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 3, 2)
  hitboxCF = handle.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.35 do
    fwait()
    hitboxCF = handle.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -1.57) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.8, 0, 1.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC426: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC426: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.1 do
    fwait()
    hitboxCF = handle.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -1.57) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0) * euler(-0.5, 0, 0.5), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.3)
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
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.2 do
    fwait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.3), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.3), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1.3), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0, -2.5, -1.57), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.3, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1.3, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC171: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC171: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145146", handle, 1, 1.3)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 3, 2)
  hitboxCF = handle.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.3 do
    fwait()
    hitboxCF = handle.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.5) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.6), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 1, 1.3) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC408: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC408: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.15 do
    fwait()
    hitboxCF = handle.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.5) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 1, 1.3) * euler(0, -1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC618: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC618: LeaveBlock: unexpected jumping out IF_STMT

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
    fwait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.2) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0, 2.5, 1.5) * euler(0, -1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.2, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.2, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC183: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC183: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145204", handle, 1, 1.2)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 3, 2)
  hitboxCF = handle.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    fwait()
    hitboxCF = handle.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.2), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.2) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1.4), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out IF_STMT

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
  for i = 0, 1, 0.15 do
    fwait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC183: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC183: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("200632211", handle, 1, 0.8)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 3, 2)
  hitboxCF = handle.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    fwait()
    hitboxCF = handle.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 6, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC426: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC426: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
ShootRailGun = function()
  if railgunattack == true then
    return 
  end
  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = cf(rprt8.Position)
  game:GetService("Debris"):AddItem(ref, 1)
  so("169380505", ref, 0.5, 1)
  local MouseLook = cf((rprt8.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
  local hit, pos = rayCast(rprt8.Position, MouseLook.lookVector, 999, RailgunTarget.Parent)
  local mag = (rprt8.Position - pos).magnitude
  MagicCylinder(Color2, CFrame.new((rprt8.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 1.2, 0, 1.2, 0.1)
  if hit ~= nil then
    ref = part(3, workspace, 0, 1, Color2, "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(pos)
    game:GetService("Debris"):AddItem(ref, 1)
    so("153092334", ref, 0.5, 1.5)
    so("169380505", ref, 0.5, 1.5)
    MagicCircle(Color2, cf(pos), 10, 10, 10, 1, 1, 1, 0.07)
    Damagefunc(hit, 6, 8, 0, "Normal", RootPart, 0, 2, math.random(1, 5), false, false, true, "Movement", 0.05, 100)
  end
  coroutine.resume(coroutine.create(function()
    railgunattack = true
    for i = 0, 1, 0.2 do
      fwait()
      rwld2.C1 = clerp(rwld2.C1, cf(0, 0, -1), 0.5)
    end
    for i = 0, 1, 0.1 do
      fwait()
      rwld2.C1 = clerp(rwld2.C1, cf(0, 0, 0), 0.4)
    end
    railgunattack = false
  end))
end
ShootCannon = function()
  if cannonattack == true then
    return 
  end
  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = cf(pprt8.Position)
  game:GetService("Debris"):AddItem(ref, 1)
  so("169380505", ref, 0.5, 1)
  table.insert(Effects, {pprt8.Position, "Shoot", 30, MMouse.Hit.p})
  coroutine.resume(coroutine.create(function()
    cannonattack = true
    for i = 0, 1, 0.05 do
      fwait()
      pwld2.C1 = clerp(pwld2.C1, cf(0, 0, -1.5), 0.5)
    end
    for i = 0, 1, 0.05 do
      fwait()
      pwld2.C1 = clerp(pwld2.C1, cf(0, 0, 0), 0.3)
    end
    cannonattack = false
  end))
end
bladesattackone = function()
  while tribladesattack == true do
    fwait()
  end
  tribladesattack = true
  for i = 0, 1, 0.2 do
    fwait()
    brefwld.C0 = clerp(brefwld.C0, euler(0, 0, 0) * cf(0, -2.5, 2), 0.4)
    bwld1.C0 = clerp(bwld1.C0, euler(0, 0, 0) * cf(3, -0.6, -2), 0.4)
    bwld7.C0 = clerp(bwld7.C0, euler(0, 0, 0) * cf(0, -0.6, -2), 0.4)
    bwld13.C0 = clerp(bwld13.C0, euler(0, 0, 0) * cf(-3, -0.6, -2), 0.4)
    bwld2.C0 = clerp(bwld2.C0, euler(3.14, -1.5, 1) * cf(0, 0, 0), 0.4)
    bwld8.C0 = clerp(bwld8.C0, euler(3.14, -1.5, 1.57) * cf(0, 0, 0), 0.4)
    bwld14.C0 = clerp(bwld14.C0, euler(3.14, -1.5, 2) * cf(0, 0, 0), 0.4)
  end
  so("161006195", bprt1, 0.6, math.random(100, 200) / 100)
  so("161006195", bprt7, 0.6, math.random(100, 200) / 100)
  so("161006195", bprt13, 0.6, math.random(100, 200) / 100)
  hitboxb1.Parent = Character
  hitboxb1.Size = vt(1, 2, 1)
  hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
  hitboxb1.Transparency = 1
  hitboxb2.Parent = Character
  hitboxb2.Size = vt(1, 2, 1)
  hitboxb2.CFrame = bprt10.CFrame * euler(0, 0, 1.57)
  hitboxb3.Parent = Character
  hitboxb3.Size = vt(1, 2, 1)
  hitboxb3.CFrame = bprt16.CFrame * euler(0, 0, 1.57)
  for i = 0, 1, 0.3 do
    fwait()
    brefwld.C0 = clerp(brefwld.C0, euler(1.57, 0, 0) * cf(0, 1.5, 3), i)
    bwld2.C0 = clerp(bwld2.C0, euler(3.14, -1.5, 1.57) * cf(0, 0, 0), i)
    bwld8.C0 = clerp(bwld8.C0, euler(3.14, -1.5, 1.57) * cf(0, 0, 0), i)
    bwld14.C0 = clerp(bwld14.C0, euler(3.14, -1.5, 1.57) * cf(0, 0, 0), i)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  for i = 0, 1, 0.2 do
    fwait()
    brefwld.C0 = clerp(brefwld.C0, euler(1.7, 0, 0) * cf(0, 2, 3), 0.4)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  hitboxb1.Parent = nil
  hitboxb2.Parent = nil
  hitboxb3.Parent = nil
  tribladesattack = false
end
bladesattacktwo = function()
  while tribladesattack == true do
    fwait()
  end
  tribladesattack = true
  for i = 0, 1, 0.2 do
    fwait()
    brefwld.C0 = clerp(brefwld.C0, euler(0, -1, 0) * cf(6, 1, 3), 0.4)
    bwld1.C0 = clerp(bwld1.C0, euler(0, -0.5, 0) * cf(2, -0.6, -2), 0.4)
    bwld7.C0 = clerp(bwld7.C0, euler(0, 0, 0) * cf(0, -0.6, -2), 0.4)
    bwld13.C0 = clerp(bwld13.C0, euler(0, 0.5, 0) * cf(-2, -0.6, -2), 0.4)
    bwld2.C0 = clerp(bwld2.C0, euler(4.71, -1.57, 1.57) * cf(0, 0, 0), 0.4)
    bwld8.C0 = clerp(bwld8.C0, euler(4.71, -1.57, 1.57) * cf(0, 0, 0), 0.4)
    bwld14.C0 = clerp(bwld14.C0, euler(4.71, -1.57, 1.57) * cf(0, 0, 0), 0.4)
  end
  so("161006195", bprt1, 0.6, math.random(80, 150) / 100)
  so("161006195", bprt7, 0.6, math.random(80, 150) / 100)
  so("161006195", bprt13, 0.6, math.random(80, 150) / 100)
  hitboxb1.Parent = Character
  hitboxb1.Size = vt(1, 2, 1)
  hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
  hitboxb1.Transparency = 1
  hitboxb2.Parent = Character
  hitboxb2.Size = vt(1, 2, 1)
  hitboxb2.CFrame = bprt10.CFrame * euler(0, 0, 1.57)
  hitboxb3.Parent = Character
  hitboxb3.Size = vt(1, 2, 1)
  hitboxb3.CFrame = bprt16.CFrame * euler(0, 0, 1.57)
  for i = 0, 1, 0.4 do
    fwait()
    brefwld.C0 = clerp(brefwld.C0, euler(0, 1, 0) * cf(-6, 1, 3), i)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  for i = 0, 1, 0.2 do
    fwait()
    brefwld.C0 = clerp(brefwld.C0, euler(0, 1.7, 0) * cf(-6, 1, -1), 0.4)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  hitboxb1.Parent = nil
  hitboxb2.Parent = nil
  hitboxb3.Parent = nil
  tribladesattack = false
end
bladesattackthree = function()
  while tribladesattack == true do
    fwait()
  end
  tribladesattack = true
  for i = 0, 1, 0.3 do
    fwait()
    bwld1.C0 = clerp(bwld1.C0, cf(0, -4, -2) * euler(0, 0, 2.09), 0.4)
    bwld7.C0 = clerp(bwld7.C0, cf(0, -4, -2) * euler(0, 0, 4.18), 0.4)
    bwld13.C0 = clerp(bwld13.C0, cf(0, -4, -2) * euler(0, 0, 6.27), 0.4)
    bwld2.C0 = clerp(bwld2.C0, euler(3.14, -1.3, 1.57) * cf(0, 0, 0), 0.4)
    bwld8.C0 = clerp(bwld8.C0, euler(3.14, -1.3, 1.57) * cf(0, 0, 0), 0.4)
    bwld14.C0 = clerp(bwld14.C0, euler(3.14, -1.3, 1.57) * cf(0, 0, 0), 0.4)
    brefwld.C0 = clerp(brefwld.C0, euler(0, 0, 0) * cf(0, 0, -2), 0.4)
  end
  so("161006195", bprt1, 0.6, math.random(100, 200) / 100)
  so("161006195", bprt7, 0.6, math.random(100, 200) / 100)
  so("161006195", bprt13, 0.6, math.random(100, 200) / 100)
  hitboxb1.Parent = Character
  hitboxb1.Size = vt(1, 2, 1)
  hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
  hitboxb1.Transparency = 1
  hitboxb2.Parent = Character
  hitboxb2.Size = vt(1, 2, 1)
  hitboxb2.CFrame = bprt10.CFrame * euler(0, 0, 1.57)
  hitboxb3.Parent = Character
  hitboxb3.Size = vt(1, 2, 1)
  hitboxb3.CFrame = bprt16.CFrame * euler(0, 0, 1.57)
  n = math.random(-50, 50)
  for i = 0, 1, 0.4 do
    fwait()
    bwld1.C0 = clerp(bwld1.C0, cf(0, -1.2, -2) * euler(0, 0, 2.09), 0.4)
    bwld7.C0 = clerp(bwld7.C0, cf(0, -1.2, -2) * euler(0, 0, 4.18), 0.4)
    bwld13.C0 = clerp(bwld13.C0, cf(0, -1.2, -2) * euler(0, 0, 6.27), 0.4)
    bwld2.C0 = clerp(bwld2.C0, euler(3.14, -1.3, 1.57) * cf(0, 0, 0), 0.4)
    bwld8.C0 = clerp(bwld8.C0, euler(3.14, -1.3, 1.57) * cf(0, 0, 0), 0.4)
    bwld14.C0 = clerp(bwld14.C0, euler(3.14, -1.3, 1.57) * cf(0, 0, 0), 0.4)
    brefwld.C0 = clerp(brefwld.C0, euler(0, 0, n) * cf(0, 0, 6), 0.4)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  n = math.random(-50, 50)
  for i = 0, 1, 0.3 do
    fwait()
    bwld1.C0 = clerp(bwld1.C0, cf(0, -1, -2) * euler(0, 0, 2.09), 0.4)
    bwld7.C0 = clerp(bwld7.C0, cf(0, -1, -2) * euler(0, 0, 4.18), 0.4)
    bwld13.C0 = clerp(bwld13.C0, cf(0, -1, -2) * euler(0, 0, 6.27), 0.4)
    brefwld.C0 = clerp(brefwld.C0, euler(0, 0, n) * cf(0, 0, 7), 0.4)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  hitboxb1.Parent = nil
  hitboxb2.Parent = nil
  hitboxb3.Parent = nil
  tribladesattack = false
end
bladesattackfour = function()
  while tribladesattack == true do
    fwait()
  end
  tribladesattack = true
  for i = 0, 1, 0.2 do
    fwait()
    bwld1.C0 = clerp(bwld1.C0, cf(0, -1, 0) * euler(0, 0, 2.09), 0.4)
    bwld7.C0 = clerp(bwld7.C0, cf(0, -1, 0) * euler(0, 0, 4.18), 0.4)
    bwld13.C0 = clerp(bwld13.C0, cf(0, -1, 0) * euler(0, 0, 6.27), 0.4)
    bwld2.C0 = clerp(bwld2.C0, euler(1.57, 0, -1.57) * cf(0, 0, 0), 0.4)
    bwld8.C0 = clerp(bwld8.C0, euler(1.57, 0, -1.57) * cf(0, 0, 0), 0.4)
    bwld14.C0 = clerp(bwld14.C0, euler(1.57, 0, -1.57) * cf(0, 0, 0), 0.4)
    brefwld.C0 = clerp(brefwld.C0, euler(-1.57, 0, 0) * cf(-5, -0.5, 0), 0.4)
  end
  so("161006195", bprt1, 0.6, math.random(40, 80) / 100)
  so("161006195", bprt7, 0.6, math.random(40, 80) / 100)
  so("161006195", bprt13, 0.6, math.random(40, 80) / 100)
  hitboxb1.Parent = Character
  hitboxb1.Size = vt(1, 2, 1)
  hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
  hitboxb1.Transparency = 1
  hitboxb2.Parent = Character
  hitboxb2.Size = vt(1, 2, 1)
  hitboxb2.CFrame = bprt10.CFrame * euler(0, 0, 1.57)
  hitboxb3.Parent = Character
  hitboxb3.Size = vt(1, 2, 1)
  hitboxb3.CFrame = bprt16.CFrame * euler(0, 0, 1.57)
  for i = 0, 1, 0.6 do
    fwait()
    bwld1.C0 = clerp(bwld1.C0, cf(0, -1, 0) * euler(0, 0, 5.19), 0.5)
    bwld7.C0 = clerp(bwld7.C0, cf(0, -1, 0) * euler(0, 0, 7.28), 0.5)
    bwld13.C0 = clerp(bwld13.C0, cf(0, -1, 0) * euler(0, 0, 9.37), 0.5)
    brefwld.C0 = clerp(brefwld.C0, euler(-1.57, 0, 0) * cf(0, -0.5, 8), 0.5)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  for i = 0, 1, 0.4 do
    fwait()
    bwld1.C0 = clerp(bwld1.C0, cf(0, -1, 0) * euler(0, 0, 7.09), 0.5)
    bwld7.C0 = clerp(bwld7.C0, cf(0, -1, 0) * euler(0, 0, 9.18), 0.5)
    bwld13.C0 = clerp(bwld13.C0, cf(0, -1, 0) * euler(0, 0, 11.27), 0.5)
    brefwld.C0 = clerp(brefwld.C0, euler(-1.57, 0, 0) * cf(0, -0.5, 20), 0.5)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  for i = 0, 1, 0.4 do
    fwait()
    brefwld.C0 = clerp(brefwld.C0, euler(-1.57, 0, 0) * cf(0, -2, 0), 0.5)
    bwld1.C0 = clerp(bwld1.C0, cf(0, -1, 0) * euler(0, 0, 2.09), 0.4)
    bwld7.C0 = clerp(bwld7.C0, cf(0, -1, 0) * euler(0, 0, 4.18), 0.4)
    bwld13.C0 = clerp(bwld13.C0, cf(0, -1, 0) * euler(0, 0, 6.27), 0.4)
    hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
    hitboxb2.CFrame = bprt10.CFrame
    hitboxb3.CFrame = bprt16.CFrame
    MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
  end
  hitboxb1.Parent = nil
  hitboxb2.Parent = nil
  hitboxb3.Parent = nil
  tribladesattack = false
end
BladesDamage = function(pitch)
  so("161006195", bprt1, 0.6, pitch)
  so("161006195", bprt7, 0.6, pitch)
  so("161006195", bprt13, 0.6, pitch)
  hitboxb1.Parent = Character
  hitboxb1.Size = vt(1, 2, 1)
  hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
  hitboxb1.Transparency = 1
  hitboxb2.Parent = Character
  hitboxb2.Size = vt(1, 2, 1)
  hitboxb2.CFrame = bprt10.CFrame * euler(0, 0, 1.57)
  hitboxb3.Parent = Character
  hitboxb3.Size = vt(1, 2, 1)
  hitboxb3.CFrame = bprt16.CFrame * euler(0, 0, 1.57)
  coroutine.resume(coroutine.create(function(Con1, Con2, Con3)
    while attack == true do
      fwait()
      hitboxb1.CFrame = bprt4.CFrame * euler(0, 0, 1.57)
      hitboxb2.CFrame = bprt10.CFrame
      hitboxb3.CFrame = bprt16.CFrame
      MagniDamage(hitboxb1, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
      MagniDamage(hitboxb2, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
      MagniDamage(hitboxb3, 2, 5, 7, math.random(1, 5), "Normal", BladesTarget, 0.4, 1, math.random(1, 3), false, true, true, nil, nil, nil, "Slash")
    end
    hitboxb1.Parent = nil
    hitboxb2.Parent = nil
    hitboxb3.Parent = nil
  end), con1, con2, con3)
end
StatConvert = function()
  attack = true
  for i = 0, 1, 0.1 do
    fwait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.5) * euler(1.5, 0, -1.5) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.5) * euler(1.5, 0, 1.5) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC189: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC189: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for _,i in pairs(Decrease:children()) do
    if i.Name == "DecreaseDef" then
      i.Name = "DecreaseAtk"
      i.Value = i.Value * 0.5
    else
      if i.Name == "DecreaseAtk" then
        i.Name = "DecreaseDef"
        i.Value = i.Value * 2
      end
    end
  end
  attack = false
  for i = 1, 30 do
    fwait()
    for i = 1, 2 do
      ElecEffect(cf(RootPart.Position), 2, 3, 1)
    end
  end
end
do1 = function()
  if givingarmor == true then
    givingarmor = false
    cooldowns[1] = 0
    RailgunTarget = RootPart
  end
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 30 then
    givingrailgun = true
    attack = true
    mana.Value = mana.Value - 30
    MagicSpecial(BrickColor.new(NewCol), RightArm.CFrame * cf(0, -1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.2, 0.2, 0.2, 0.5, 0.5, 0.5, 0.1)
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 0.4
    for i = 0, 1, 0.2 do
      fwait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.7, 0, 0) * euler(0, 0, -0.5), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.3, 0, 0) * euler(0, 0, 0.8), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.5) * euler(0, -1.57, 0) * euler(0, -1, 0.4), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    givingarmor = true
    while givingarmor == true do
      if givingarmor == true then
        fwait()
        ElecEffect(RightArm.CFrame, 1, 2, 1)
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    givingrailgun = false
    DecreaseStat(Character, "Defense", -0.1, 400)
    DecreaseStat(Character, "Movement", 0.1, 400)
    cooldowns[1] = 0
    givingarmor = false
    dec.Parent = nil
    if RailgunTarget ~= nil then
      for i = 0, 1, 0.2 do
        fwait()
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, -0.2), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.8, 0, 0.5), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 0.5), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, RHC0 * cf(0, 0, 0) * euler(0, -0.5, -0.5), 0.4)
        LH.C0 = clerp(LH.C0, LHC0 * cf(-0.5, 1, 0) * euler(0.5, 0, -0.5), 0.4)
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
      DecreaseStat(RailgunTarget.Parent, "Defense", -0.2, 280)
      rwld1.Part1 = RailgunTarget
      model1.Parent = RailgunTarget.Parent
      MagicSpecial(BrickColor.new(NewCol), rprt1.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(rprt1.Position)
      game:GetService("Debris"):AddItem(ref, 1)
      so("203691326", ref, 1, 1)
      for i = 1, 5 do
        ElecEffect(cf(rprt1.Position), 3, 3, 3)
      end
      for i = 1, #Railgun do
        Railgun[i].Parent = model1
        RailgunWelds[i].Parent = Railgun[1]
      end
      elecnum = 0
      attack = false
      for i = 1, 50 do
        fwait()
        ElecEffect(cf(rprt1.Position), 2, 2, 2)
      end
    else
      do
        attack = false
      end
    end
  end
end
do2 = function()
  if givingarmor == true then
    givingarmor = false
    cooldowns[2] = 0
    CannonTarget = RootPart
  end
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 30 then
    attack = true
    mana.Value = mana.Value - 30
    givingplasma = true
    MagicSpecial(BrickColor.new(NewCol), RightArm.CFrame * cf(0, -1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.2, 0.2, 0.2, 0.5, 0.5, 0.5, 0.1)
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 0.4
    for i = 0, 1, 0.2 do
      fwait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.7, 0, 0) * euler(0, 0, -0.5), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.3, 0, 0) * euler(0, 0, 0.8), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.5) * euler(0, -1.57, 0) * euler(0, -1, 0.4), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    givingarmor = true
    while givingarmor == true do
      if givingarmor == true then
        fwait()
        ElecEffect(RightArm.CFrame, 1, 2, 1)
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    givingplasma = false
    DecreaseStat(Character, "Defense", -0.1, 400)
    DecreaseStat(Character, "Movement", 0.1, 400)
    cooldowns[2] = 0
    givingarmor = false
    dec.Parent = nil
    if CannonTarget ~= nil then
      for i = 0, 1, 0.2 do
        fwait()
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, -0.2), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.8, 0, 0.5), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 0.5), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, RHC0 * cf(0, 0, 0) * euler(0, -0.5, -0.5), 0.4)
        LH.C0 = clerp(LH.C0, LHC0 * cf(-0.5, 1, 0) * euler(0.5, 0, -0.5), 0.4)
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
      DecreaseStat(CannonTarget.Parent, "Defense", -0.2, 300)
      pwld1.Part1 = CannonTarget
      model2.Parent = CannonTarget.Parent
      MagicSpecial(BrickColor.new(NewCol), pprt1.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(pprt1.Position)
      game:GetService("Debris"):AddItem(ref, 1)
      so("203691326", ref, 1, 1)
      for i = 1, 5 do
        ElecEffect(cf(pprt1.Position), 3, 3, 3)
      end
      for i = 1, #Plasma do
        Plasma[i].Parent = model2
        PlasmaWelds[i].Parent = Plasma[1]
      end
      elecnum = 0
      attack = false
      for i = 1, 50 do
        fwait()
        ElecEffect(cf(pprt1.Position), 2, 2, 2)
      end
    else
      do
        attack = false
      end
    end
  end
end
do3 = function()
  if givingarmor == true then
    givingarmor = false
    cooldowns[3] = 0
    BladesTarget = RootPart
  end
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 30 then
    attack = true
    mana.Value = mana.Value - 30
    givingblades = true
    MagicSpecial(BrickColor.new(NewCol), RightArm.CFrame * cf(0, -1, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.2, 0.2, 0.2, 0.5, 0.5, 0.5, 0.1)
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 0.4
    for i = 0, 1, 0.2 do
      fwait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.7, 0, 0) * euler(0, 0, -0.5), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.3, 0, 0) * euler(0, 0, 0.8), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.5) * euler(0, -1.57, 0) * euler(0, -1, 0.4), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    givingarmor = true
    while givingarmor == true do
      if givingarmor == true then
        fwait()
        ElecEffect(RightArm.CFrame, 1, 2, 1)
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    givingblades = false
    DecreaseStat(Character, "Defense", -0.1, 400)
    DecreaseStat(Character, "Movement", 0.1, 400)
    cooldowns[3] = 0
    givingarmor = false
    dec.Parent = nil
    if BladesTarget ~= nil then
      for i = 0, 1, 0.2 do
        fwait()
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, -0.2), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.8, 0, 0.5), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 0.5), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, RHC0 * cf(0, 0, 0) * euler(0, -0.5, -0.5), 0.4)
        LH.C0 = clerp(LH.C0, LHC0 * cf(-0.5, 1, 0) * euler(0.5, 0, -0.5), 0.4)
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
      DecreaseStat(BladesTarget.Parent, "Damage", -0.2, 300)
      brefwld.Part1 = BladesTarget
      model3.Parent = BladesTarget.Parent
      MagicSpecial(BrickColor.new(NewCol), bprt1.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.3, 0.3, 0.3, 0.05)
      MagicSpecial(BrickColor.new(NewCol), bprt7.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.3, 0.3, 0.3, 0.05)
      MagicSpecial(BrickColor.new(NewCol), bprt13.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.3, 0.3, 0.3, 0.05)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(bprt1.Position)
      game:GetService("Debris"):AddItem(ref, 1)
      so("203691326", ref, 1, 1)
      for i = 1, 5 do
        ElecEffect(cf(bref.Position), 3, 3, 3)
      end
      for i = 1, #Blades do
        Blades[i].Parent = model3
        BladesWelds[i].Parent = Blades[1]
      end
      attack = false
      for i = 1, 50 do
        fwait()
        ElecEffect(cf(bref.Position), 2, 2, 2)
      end
    else
      do
        attack = false
      end
    end
  end
end
ignoretab2 = {}
NewPart = function(size, cframe, color, meshtype, meshscale)
  local par = Instance.new("Part")
  par.TopSurface = 0
  par.BottomSurface = 0
  par.Size = size
  par.CFrame = cframe
  par.BrickColor = color
  par.Anchored = true
  par.CanCollide = false
  do
    if meshtype then
      local m = Instance.new(meshtype, par)
      m.Scale = meshscale
    end
    table.insert(ignoretab2, par)
    return par
  end
end
vPlayer = game.Players.LocalPlayer
GetTeamFromColor = function(color)
  for _,v in pairs(game:GetService("Teams"):children()) do
    if color == v.TeamColor then
      return v.Name
    end
  end
end
drawline = function(pos, pos2)
  local par, loc, normal = nil, nil, nil
  for i = 1, 100 do
    par = workspace:FindPartOnRayWithIgnoreList(Ray.new(pos, -(pos - pos2)), ignoretab2)
    if par then
      -- DECOMPILER ERROR at PC45: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC45: Unhandled construct in 'MakeBoolean' P3

      if (par.CanCollide == false and par.Parent:FindFirstChild("Humanoid") == nil) or par:IsDescendantOf(vPlayer) then
        table.insert(ignoretab2, par)
      else
        local ok = true
        do
          do
            do
              if par.Parent:FindFirstChild("Humanoid") then
                local vp = game.Players:GetPlayerFromCharacter(par.Parent)
                -- DECOMPILER ERROR at PC81: Unhandled construct in 'MakeBoolean' P1

                if vp ~= nil and vp.Neutral ~= true and vPlayer.Neutral ~= true and GetTeamFromColor(vp.TeamColor) == GetTeamFromColor(vPlayer.TeamColor) then
                  table.insert(ignoretab2, par)
                  ok = false
                end
              end
              if vPlayer.Neutral ~= true and par.Parent:FindFirstChild("Alignment") ~= nil and vPlayer.TeamColor.Color == par.Parent.Alignment.Value then
                table.insert(ignoretab2, par)
                ok = false
              end
              if ok then
                return par, loc, normal
              end
              do return par, loc, normal end
              -- DECOMPILER ERROR at PC119: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC119: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC119: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC119: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC119: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC119: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
  end
  print("oops")
  return nil, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)
end
lasersounds = {412755503, 412755564, 412755598, 412755669, 412756057, 412756123, 412756170, 412756199}
GetNubs = function()
  Nubs = {}
  for _,v in pairs(workspace:children()) do
    if v:FindFirstChild("Humanoid") ~= nil and v:FindFirstChild("Torso") ~= nil and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= vPlayer.Name .. "Subunit" and (v.Torso.Position - vPlayer.Character.HumanoidRootPart.Position).magnitude <= 600 and v.Humanoid.Health > 0 then
      local vp = game.Players:GetPlayerFromCharacter(v)
      if vp == nil then
        table.insert(Nubs, v)
      else
        if vp.Neutral == true and vPlayer.Neutral == true then
          table.insert(Nubs, v)
        else
          if GetTeamFromColor(vp.TeamColor) ~= GetTeamFromColor(vPlayer.TeamColor) then
            table.insert(Nubs, v)
          end
        end
      end
    end
  end
end
Nubs = {}
GetNubsInRadius = function(pos, radius)
  local radius = radius
  local filtered = {}
  for _,v in pairs(Nubs) do
    if v:FindFirstChild("Torso") ~= nil and v:FindFirstChild("Humanoid") ~= nil then
      local cpos = pos
      do
        do
          if v.Humanoid:GetState() == Enum.HumanoidStateType.Jumping or v.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
            local ydiff = (v.Torso.Position.y - vPlayer.Character.Torso.Position.y) / 1
            if ydiff > 5 then
              ydiff = 5
            end
            cpos = pos + Vector3.new(0, ydiff, 0)
          end
          if v.Name == "Siegmund" then
            cpos = cpos - Vector3.new(0, 5, 0)
          end
          if v.Torso.Position - (cpos).magnitude <= radius then
            table.insert(filtered, v)
          end
          -- DECOMPILER ERROR at PC74: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC74: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC74: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  return filtered
end

fwait = function(t)
  if t == nil then
    t = 0.033333333333333
  else
    if t == 0 then
      t = 0.033333333333333
    end
  end
  local s = 0
  repeat
    s = s + 0.033333333333333
    ArtificialHB.Event:wait()
  until t <= s
  return s, workspace.DistributedGameTime
end
do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and mana.Value >= 40 then
    attack = true
    cooldowns[4] = 0
    mana.Value = mana.Value - 40
    GetNubs()
    table.insert(Nubs, vPlayer.Character)
    local ppos = vPlayer:GetMouse().Hit.p
    do
      local h, p, k = drawline(ppos + Vector3.new(0, 450, 0), ppos - Vector3.new(0, 450, 0))
      local r, g, b = nil, nil, nil
      local Col1 = BrickColor.new(NewCol)
      r = Col1.Color.r + 0.3
      g = Col1.Color.g + 0.3
      b = Col1.Color.b + 0.3
      if r > 1 then
        r = 1
      end
      if g > 1 then
        g = 1
      end
      if b > 1 then
        b = 1
      end
      local Col1C = (Color3.new(r, g, b))
      local pro, blolb, r, psl, par, loc, nor = nil, nil, nil, nil, nil, nil, nil
      local x = {}
      local joj, kd = false, false
      for i = 1, 10 do
        x[i] = i
      end
      local m = Instance.new("Model", workspace)
      m.Name = "IONCANNON_EFFECTS"
      game:GetService("Debris"):AddItem(m, 20)
      local kt = tick()
      local soloc = Instance.new("Part", workspace)
      soloc.Transparency = 1
      soloc.CanCollide = false
      soloc.Anchored = true
      soloc.Name = "Effect"
      soloc.Size = Vector3.new(0.2, 0.2, 0.2)
      soloc.CFrame = CFrame.new(ppos + Vector3.new(0, 450, 0), ppos - Vector3.new(0, 450, 0)) --(p)
      game:GetService("Debris"):AddItem(soloc, 25)
      local so = Instance.new("Sound", vPlayer.Character.Head)
      so.Volume = 0.35
      so.Pitch = 1
      so.SoundId = "http://www.roblox.com/asset/?id=412756347"
      coroutine.resume(coroutine.create(function(so)
    wait()
    so:Play()
  end), so)
      for i = 0, 1, 0.1 do
        fwait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.7, 0, 0) * euler(0, 0, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0, 0, 0) * euler(0, 0, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      end
      fwait(0.5)
      local so = Instance.new("Sound", vPlayer.Character.Head)
      so.Volume = 0.4
      so.Pitch = 1.1
      so.SoundId = "http://www.roblox.com/asset/?id=412756417"
      coroutine.resume(coroutine.create(function(so)
    wait()
    so:Play()
  end), so)
      attack = false
      local so = Instance.new("Sound", soloc)
      so.Volume = 0.8
      so.Pitch = 1.2
      so.SoundId = "http://www.roblox.com/asset/?id=412756315"
      coroutine.resume(coroutine.create(function(so)
    wait()
    so:Play()
  end), so)
      local kuck = false
      local lasparts = {}
      coroutine.resume(coroutine.create(function()
    local ksl, mdist, mpl = 0, 0, 0
    repeat
      fwait(0.12)
      ksl = ksl + 1
      if ksl == 50 then
        GetNubs()
        table.insert(Nubs, vPlayer.Character)
        ksl = 0
      end
      mdist = (lasparts[1].Position - p).magnitude
      print(mdist)
      for _,v in pairs(Nubs) do
        if v and v.Parent and v:FindFirstChild("Torso") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
          mpl = Vector3.new(v.Torso.Position.x, 0, v.Torso.Position.z) - Vector3.new(p.x, 0, p.z).magnitude
          if mdist - 4.5 < mpl and mpl < mdist + 4.5 then
            print("!!!!", time())
            for __,vv in pairs(lasparts) do
              if vv.Position - v.Torso.Position.magnitude <= 10 and vv.Position.y - 4 <= v.Torso.Position.y then
                if v ~= vPlayer.Character then
                  Damagefunc(v.Torso, 1, 1, 0, "Normal", RootPart, 0, 1, 1, nil, false)
                  DecreaseStat(v.Parent, "Movement", 0.06, 200)
                  break
                end
                vPlayer.Character.Humanoid:TakeDamage(1 / vPlayer.Character.Stats.Defense.Value)
                DecreaseStat(vPlayer.Character, "Movement", 0.06, 200)
                showDamage(vPlayer.Character, math.floor(1 / vPlayer.Character.Stats.Defense.Value), "Damage")
                break
              end
            end
          end
        end
      end
    until kuck == true
  end))
      for i = 1, 10 do
        r = math.random(1, #x)
        if #x > 1 then
          blolb = x[r]
        else
          blolb = x[1]
        end
        psl = ppos + Vector3.new(0, 450, 0), ppos - Vector3.new(0, 450, 0) + Vector3.new(math.cos(math.rad(36 * blolb)) * 35, 0, math.sin(math.rad(36 * blolb)) * 35) --p + Vector3.new(math.cos(math.rad(36 * blolb)) * 35, 0, math.sin(math.rad(36 * blolb)) * 35)
        par = drawline(psl + Vector3.new(0, 480, 0), psl - Vector3.new(0, 480, 0))
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(loc) * CFrame.Angles(math.random(-30, 30) / 50, math.random(-30, 30) / 50, math.random(-30, 30) / 50), Col1, "SpecialMesh", Vector3.new(2, 2, 2))
        pc.Parent = workspace
        pc.Anchored = true
        pc.CanCollide = false
        pc.Mesh.MeshType = "Sphere"
        pc.Transparency = 1
        pc.Material = "Neon"
        game:GetService("Debris"):AddItem(pc, 15)
        coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.6, 1.6, 1.6) / (1 + i / 6.5)
      p.Transparency = 0.25 + i / 16
      p.CFrame = p.CFrame * V
      fwait()
    end
    p:Remove()
  end), pc, CFrame.Angles(math.rad(math.random(-6, 6)), math.rad(math.random(-16, 16)), math.rad(math.random(-6, 6))))
        table.insert(ignoretab2, pc)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(loc + Vector3.new(0, 1.25, 0)) * CFrame.Angles(0, math.random(-180, 180) * math.rad(1), 0), Col1, "SpecialMesh", Vector3.new(4, 4, 4))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        pc.Material = "Neon"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 12 do
      p.Transparency = 0.25 + i / 16
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(5 + i / 20), 0) + Vector3.new(0, -0.11666666666667, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i / 10, -0.25, i / 10)
      fwait()
    end
    p:Remove()
  end), pc)
        local so = Instance.new("Sound", pc)
        so.Volume = 1
        so.Pitch = 1
        so.SoundId = "http://www.roblox.com/asset/?id=" .. lasersounds[math.random(1, 8)]
        coroutine.resume(coroutine.create(function(so)
    wait()
    so:Play()
  end), so)
        for kek = 1, 3 do
          pro = NewPart(Vector3.new(1, 1, 1), CFrame.new(loc), Col1, "CylinderMesh", Vector3.new(1.7 - kek * 0.1, 1600, 1.7 - kek * 0.1) - Vector3.new(0.25, 0, 0.25) * 1.95 ^ (kek - 1))
          pro.Anchored = true
          pro.Mesh.Offset = Vector3.new(0, 799, 0)
          pro.Material = "Neon"
          pro.Name = "Las" .. i .. kek
          pro.Parent = m
          pro.Transparency = 1 - 0.2 * 1.7 ^ (kek - 1)
          game:GetService("Debris"):AddItem(pro, 10)
          if kek == 1 then
            table.insert(lasparts, pro)
            coroutine.resume(coroutine.create(function(k, l)
    repeat
      fwait()
    until joj == true
    local j, c, h, psl, pc = nil, nil, nil, nil, nil
    local klr, i, lj = 0, 0, 0
    repeat
      if lj < 0.008 then
        lj = lj + 0.001
      else
        lj = 0.008
      end
      klr = klr + i * lj
      if klr > 34.75 then
        klr = 34.75
      end
      psl = p + Vector3.new(math.cos(math.rad(36 * l + i ^ (0.775 + i * 0.0066))) * (35 - klr), 0, math.sin(math.rad(36 * l + i ^ (0.775 + i * 0.0066))) * (35 - klr))
      j = drawline(psl + Vector3.new(0, 480, 0), psl - Vector3.new(0, 480, 0))
      k.CFrame = CFrame.new(c)
      i = i + 1
      m["Las" .. l .. "2"].CFrame = k.CFrame
      m["Las" .. l .. "3"].CFrame = k.CFrame
      fwait()
    until klr >= 34.75
    psl = p + Vector3.new(math.cos(math.rad(36 * l + i ^ (0.75 + (i) * 0.007))) * (35 - klr), 0, math.sin(math.rad(36 * l + i ^ (0.75 + (i) * 0.007))) * (35 - klr))
    -- DECOMPILER ERROR at PC144: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC145: Overwrote pending register: R3 in 'AssignReg'

    j = drawline(psl + Vector3.new(0, 480, 0), psl - Vector3.new(0, 480, 0))
    k.CFrame = CFrame.new(c)
    kd = true
  end), pro, i)
            local sizeseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.8), NumberSequenceKeypoint.new(1, 0)})
            local transseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.66), NumberSequenceKeypoint.new(1, 1)})
            local sus1 = Instance.new("ParticleEmitter", pro)
            sus1.Color = ColorSequence.new(Col1.Color, Col1C)
            sus1.Transparency = transseq
            sus1.Size = sizeseq
            sus1.LightEmission = 0.33
            sus1.Rotation = NumberRange.new(-180, 180)
            sus1.Lifetime = NumberRange.new(0.8, 0.8)
            sus1.RotSpeed = NumberRange.new(-10, 10)
            sus1.Texture = "http://www.roblox.com/asset/?id=242911609"
            sus1.Speed = NumberRange.new(5, 8)
            sus1.VelocitySpread = 3
            sus1.Rate = 125
            sus1.ZOffset = 0
            sus1.Name = "ParticleEmitter1"
            local sizeseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.6), NumberSequenceKeypoint.new(1, 0)})
            local transseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0)})
            local sus1 = Instance.new("ParticleEmitter", pro)
            sus1.Color = ColorSequence.new(Col1C, Col1C)
            sus1.Transparency = transseq
            sus1.Size = sizeseq
            sus1.LightEmission = 0.33
            sus1.Rotation = NumberRange.new(-180, 180)
            sus1.Lifetime = NumberRange.new(0.4, 0.8)
            sus1.RotSpeed = NumberRange.new(-10, 10)
            sus1.Texture = "http://www.roblox.com/asset/?id=242292318"
            sus1.Speed = NumberRange.new(10, 12)
            sus1.VelocitySpread = 60
            sus1.Rate = 50
            sus1.ZOffset = 0
            sus1.Name = "ParticleEmitter2"
          end
        end
        table.remove(x, r)
        fwait(0.15)
      end
      fwait()
      joj = true
      fwait(2)
      local so = Instance.new("Sound", soloc)
      so.Volume = 0.9
      so.Pitch = 1
      so.SoundId = "http://www.roblox.com/asset/?id=412756262"
      coroutine.resume(coroutine.create(function(so)
    wait()
    so:Play()
  end), so)
      repeat
        fwait(0.06)
        pro = NewPart(Vector3.new(0.2, 0.2, 0.2), CFrame.new(p) * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0) * CFrame.new(math.random(3, 50), 0, 0), Col1, "SpecialMesh", Vector3.new(2, 25, 2))
        pro.Mesh.MeshType = "Sphere"
        pro.Anchored = true
        pro.Material = "Neon"
        pro.Name = "LasEffect"
        pro.Parent = m
        pro.Transparency = 1
        game:GetService("Debris"):AddItem(pro, 10)
        table.insert(ignoretab2, pro)
        coroutine.resume(coroutine.create(function(p, k)
    for i = 1, 50 do
      if i <= 5 then
        p.Transparency = p.Transparency - 0.1
      else
        if i >= 45 then
          p.Transparency = p.Transparency + 0.1
        end
      end
      p.CFrame = p.CFrame + Vector3.new(0, k, 0)
      fwait()
    end
    p:Destroy()
  end), pro, math.random(15, 30) / 10)
      until kd == true
      for kek = 1, 4 do
        pro = NewPart(Vector3.new(3, 1, 3), CFrame.new(p), Col1, "CylinderMesh", Vector3.new(0.7, 1600, 0.7) - Vector3.new(0.175, 0, 0.175) * (kek - 1))
        pro.Anchored = true
        pro.Mesh.Offset = Vector3.new(0, 799, 0)
        pro.Material = "Neon"
        pro.Name = "LasBig"
        pro.Parent = m
        pro.Transparency = 1 - 0.2 * 1.7 ^ (kek - 1)
        game:GetService("Debris"):AddItem(pro, 10)
        local sizeseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.8), NumberSequenceKeypoint.new(1, 0)})
        local transseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.66), NumberSequenceKeypoint.new(1, 1)})
        local sus1 = Instance.new("ParticleEmitter", pro)
        sus1.Color = ColorSequence.new(Col1.Color, Col1C)
        sus1.Transparency = transseq
        sus1.Size = sizeseq
        sus1.LightEmission = 0.33
        sus1.Rotation = NumberRange.new(-180, 180)
        sus1.Lifetime = NumberRange.new(0.8, 0.8)
        sus1.RotSpeed = NumberRange.new(-10, 10)
        sus1.Texture = "http://www.roblox.com/asset/?id=242911609"
        sus1.Speed = NumberRange.new(5, 8)
        sus1.VelocitySpread = 3
        sus1.Rate = 125
        sus1.ZOffset = 5
        sus1.Name = "ParticleEmitter1"
        local sizeseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.6), NumberSequenceKeypoint.new(1, 0)})
        local transseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0)})
        local sus1 = Instance.new("ParticleEmitter", pro)
        sus1.Color = ColorSequence.new(Col1C, Col1C)
        sus1.Transparency = transseq
        sus1.Size = sizeseq
        sus1.LightEmission = 0.33
        sus1.Rotation = NumberRange.new(-180, 180)
        sus1.Lifetime = NumberRange.new(0.4, 0.8)
        sus1.RotSpeed = NumberRange.new(-10, 10)
        sus1.Texture = "http://www.roblox.com/asset/?id=242292318"
        sus1.Speed = NumberRange.new(10, 12)
        sus1.VelocitySpread = 60
        sus1.Rate = 50
        sus1.ZOffset = 5
        sus1.Name = "ParticleEmitter2"
        coroutine.resume(coroutine.create(function(k)
    for i = 1, 70 do
      if k.Parent == nil then
        break
      end
      fwait()
      k.Mesh.Scale = k.Mesh.Scale * 1.028
      k.ParticleEmitter1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2 + i * 0.1), NumberSequenceKeypoint.new(1, 0)})
      k.ParticleEmitter1.Speed = NumberRange.new(10 + i / 8, 12 + i / 8)
      k.ParticleEmitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1 + i * 0.03), NumberSequenceKeypoint.new(1, 0)})
      k.ParticleEmitter2.Speed = NumberRange.new(15 + i / 8, 18 + i / 8)
    end
  end), pro)
      end
      print(tick() - kt)
      print("JOJ")
      for i = 1, 22.5 do
        fwait(0.066666666666667)
        pro = NewPart(Vector3.new(0.2, 0.2, 0.2), CFrame.new(p) * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0) * CFrame.new(math.random(3, 50), 0, 0), Col1, "SpecialMesh", Vector3.new(2, 25, 2))
        pro.Mesh.MeshType = "Sphere"
        pro.Anchored = true
        pro.Material = "Neon"
        pro.Name = "LasEffect"
        pro.Parent = m
        pro.Transparency = 1
        game:GetService("Debris"):AddItem(pro, 10)
        table.insert(ignoretab2, pro)
        coroutine.resume(coroutine.create(function(p, k)
    for i = 1, 50 do
      if i <= 5 then
        p.Transparency = p.Transparency - 0.1
      else
        if i >= 45 then
          p.Transparency = p.Transparency + 0.1
        end
      end
      p.CFrame = p.CFrame + Vector3.new(0, k, 0)
      fwait()
    end
    p:Destroy()
  end), pro, math.random(15, 30) / 10)
      end
      local so = Instance.new("Sound", soloc)
      so.Volume = 1
      so.Pitch = 1
      so.SoundId = "http://www.roblox.com/asset/?id=266243673"
      so:Play()
      local pros = NewPart(Vector3.new(1, 1, 1), CFrame.new(p), Col1, "CylinderMesh", Vector3.new(24, 1600, 24))
      pros.Anchored = true
      pros.Mesh.Offset = Vector3.new(0, 799, 0) * 4
      pros.Material = "Neon"
      pros.Name = "LasBerryBig"
      pros.Parent = m
      game:GetService("Debris"):AddItem(pros, 10)
      coroutine.resume(coroutine.create(function(k)
    for i = 1, 30 do
      k.Mesh.Offset = k.Mesh.Offset - Vector3.new(0, 79.9, 0)
      fwait()
    end
    kuck = true
    for i = 1, 30 do
      if k.Parent == nil then
        break
      end
      k.Mesh.Offset = k.Mesh.Offset - Vector3.new(0, 799, 0) / 30
      k.Mesh.Scale = k.Mesh.Scale - Vector3.new(22, 1600, 22) / 30
      fwait()
    end
    do
      k:Destroy()
    end
  end), pros)
      for i = 1, 32.5 do
        if kuck == true then
          break
        end
        fwait()
        pro = NewPart(Vector3.new(0.2, 0.2, 0.2), CFrame.new(p) * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0) * CFrame.new(math.random(3, 50), 0, 0), Col1, "SpecialMesh", Vector3.new(2, 25, 2))
        pro.Mesh.MeshType = "Sphere"
        pro.Anchored = true
        pro.Material = "Neon"
        pro.Name = "LasEffect"
        pro.Parent = m
        pro.Transparency = 1
        game:GetService("Debris"):AddItem(pro, 10)
        table.insert(ignoretab2, pro)
        coroutine.resume(coroutine.create(function(p, k)
    for i = 1, 50 do
      if i <= 5 then
        p.Transparency = p.Transparency - 0.1
      else
        if i >= 45 then
          p.Transparency = p.Transparency + 0.1
        end
      end
      p.CFrame = p.CFrame + Vector3.new(0, k, 0)
      fwait()
    end
    p:Destroy()
  end), pro, math.random(15, 30) / 10)
        if kuck == true then
          break
        end
        fwait()
      end
      do
        local so = Instance.new("Sound", soloc)
        so.Volume = 1
        so.Pitch = 1.2
        so.SoundId = "http://www.roblox.com/asset/?id=266243712"
        so:Play()
        local so = Instance.new("Sound", soloc)
        so.Volume = 1
        so.Pitch = 1.2
        so.SoundId = "http://www.roblox.com/asset/?id=385545047"
        so:Play()
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p + Vector3.new(0, 6.75, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), Col1, "SpecialMesh", Vector3.new(47.5, 15, 47.5))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        pc.Material = "Neon"
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Transparency = 0.25 + i / 40
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(3 + i / 30), 0) - Vector3.new(0, 0.24166666666667, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i / 11, -0.48333333333333, i / 11)
      fwait()
    end
    p:Remove()
  end), pc)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p + Vector3.new(0, 4.25, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), Col1, "SpecialMesh", Vector3.new(57.5, 10, 57.5))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        pc.Material = "Neon"
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Transparency = 0.25 + i / 40
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3 + i / 30), 0) - Vector3.new(0, 0.15833333333333, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i / 9, -0.31666666666667, i / 9)
      fwait()
    end
    p:Remove()
  end), pc)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p + Vector3.new(0, 1.75, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), Col1, "SpecialMesh", Vector3.new(73.5, 5, 73.5))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        pc.Material = "Neon"
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Transparency = 0.25 + i / 40
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(3 + i / 30), 0) - Vector3.new(0, 0.075, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i / 7, -0.15, i / 7)
      fwait()
    end
    p:Remove()
  end), pc)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p + Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), BrickColor.new("Institutional white"), "SpecialMesh", Vector3.new(30, 5, 30))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        pc.Material = "Neon"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 20 do
      p.Transparency = 0.5 + i / 40
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(5 + i / 10), 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i / 6 + 8, 0, i / 6 + 8)
      fwait()
    end
    p:Remove()
  end), pc)
        for LEL = 1, 3 do
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p + Vector3.new(0, 0, 0)), Col1, "SpecialMesh", Vector3.new(18, 18, 18) * LEL)
          pc.Parent = workspace
          pc.Mesh.MeshType = "Sphere"
          pc.Anchored = true
          pc.CanCollide = false
          pc.Transparency = 1
          game:GetService("Debris"):AddItem(pc, 15)
          pc.Material = "Neon"
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale * 1.05 + Vector3.new(1.5, 1.5, 1.5)
      p.Transparency = 0.25 + i / 26.666666666667
      p.CFrame = p.CFrame * V
      fwait()
    end
    p:Remove()
  end), pc, CFrame.fromEulerAnglesXYZ(0, math.rad(5), 0))
        end
        for LEL = 1, 3 do
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p) * CFrame.fromEulerAnglesXYZ(math.random(-180, 180), math.random(-180, 180), math.random(-180, 180)), Col1, "BlockMesh", Vector3.new(15, 15, 15) * LEL)
          pc.Parent = workspace
          pc.Anchored = true
          pc.CanCollide = false
          pc.Transparency = 1
          game:GetService("Debris"):AddItem(pc, 15)
          pc.Material = "Neon"
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale * 1.02 + Vector3.new(3.5, 3.5, 3.5)
      p.Transparency = 0.1 + i / 13.333333333333
      p.CFrame = p.CFrame * V
      fwait()
    end
    p:Remove()
  end), pc, CFrame.fromEulerAnglesXYZ(0, math.rad(5), 0))
        end
        for LEL = 1, 6 do
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p + Vector3.new(math.random(-50, 50) / 3, 0, math.random(-50, 50) / 3)), Col1, "SpecialMesh", Vector3.new(7, 9, 7))
          pc.Parent = workspace
          pc.Mesh.MeshType = "Sphere"
          pc.Anchored = true
          pc.CanCollide = false
          pc.Transparency = 1
          game:GetService("Debris"):AddItem(pc, 15)
          pc.Material = "Neon"
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 40 do
      p.Mesh.Scale = Vector3.new(25 - i / 2, 30 * i, 25 - i / 2)
      p.Transparency = 0.25 + i / 53.333333333333
      p.CFrame = p.CFrame * V
      fwait()
    end
    p:Remove()
  end), pc, CFrame.fromEulerAnglesXYZ(0, math.rad(5), 0))
          do
            if LEL % 2 == 0 then
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p), Col1, "SpecialMesh", Vector3.new(10, 15, 10) + Vector3.new(2, 3, 2) * LEL)
              pc.Parent = workspace
              pc.Mesh.MeshType = "Sphere"
              pc.Anchored = true
              pc.CanCollide = false
              pc.Transparency = 1
              game:GetService("Debris"):AddItem(pc, 15)
              pc.Material = "Neon"
              coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 40 do
      p.Mesh.Scale = p.Mesh.Scale * 1.04 + Vector3.new(3.5 - i * 0.27, i, 3.5 - i * 0.27)
      p.Transparency = 0.33 + i / 59.701492537313
      p.CFrame = p.CFrame * V
      fwait()
    end
    p:Remove()
  end), pc, CFrame.fromEulerAnglesXYZ(0, math.rad(5), 0))
            end
            do
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p + Vector3.new(0, 0, 0)) * CFrame.fromEulerAnglesXYZ(math.random(-180, 180), math.random(-180, 180), math.random(-180, 180)), Col1, "BlockMesh", Vector3.new(20, 20, 20))
              pc.Parent = workspace
              pc.Anchored = true
              pc.CanCollide = false
              pc.Transparency = 1
              game:GetService("Debris"):AddItem(pc, 15)
              pc.Material = "Neon"
              coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 60 do
      p.Mesh.Scale = p.Mesh.Scale * 1.01 + Vector3.new(0.6, 0.6, 0.6)
      p.Transparency = 0.4 + i / 100
      p.CFrame = p.CFrame * V
      fwait()
    end
    p:Remove()
  end), pc, CFrame.fromEulerAnglesXYZ(math.rad(math.random(-50, 50) / 15), math.rad(math.random(-50, 50) / 15), math.rad(math.random(-50, 50) / 15)))
              if LEL == 2 then
                MagniDamage(soloc, 50, 38, 42, 45, "Normal", soloc, 0, 1, 80, false, false, true, nil, nil, nil, nil)
                if vPlayer.Character.Torso.Position - p.magnitude <= 50 then
                  vPlayer.Character.Humanoid:TakeDamage(40 / vPlayer.Character.Stats.Defense.Value)
                  showDamage(vPlayer.Character, math.floor(40 / vPlayer.Character.Stats.Defense.Value), "Damage")
                  vPlayer.Character.Stats.Stun.Value = 100
                end
              end
              fwait(0.066666666666667)
              -- DECOMPILER ERROR at PC2114: LeaveBlock: unexpected jumping out DO_STMT

            end
          end
        end
        fwait()
        for _,v in pairs(m:children()) do
          if v.Name ~= "LasBerryBig" then
            v:Remove()
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
            -- DECOMPILER ERROR at PC184: LeaveBlock: unexpected jumping out DO_STMT

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
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
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
MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
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
ElecEffect = function(cff, x, y, z)
  local prt = part(3, workspace, 0, 0, BrickColor.new("Dark stone grey"), "Part", vt(1, 1, 1))
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
  local b = Instance.new("BillboardGui", c)
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
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
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
  if MMouse.Target ~= nil and MMouse.Target.Parent:findFirstChild("Humanoid") ~= nil and game.Players:GetPlayerFromCharacter(MMouse.Target.Parent) ~= nil and Player.Neutral == false and game.Players:GetPlayerFromCharacter(MMouse.Target.Parent).TeamColor == Player.TeamColor then
    if givingrailgun == true then
      RailgunTarget = MMouse.Target.Parent.HumanoidRootPart
      givingarmor = false
    end
    if givingplasma == true then
      CannonTarget = MMouse.Target.Parent.HumanoidRootPart
      givingarmor = false
    end
    if givingblades == true then
      BladesTarget = MMouse.Target.Parent.HumanoidRootPart
      givingarmor = false
    end
  end
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if BladesTarget ~= nil then
    coroutine.resume(coroutine.create(function()
    if combo == 0 then
      bladesattackone()
    else
      if combo == 1 then
        bladesattackthree()
      else
        if combo == 2 then
          bladesattacktwo()
        else
          if combo == 3 then
            bladesattackfour()
          end
        end
      end
    end
  end))
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
  if RailgunTarget ~= nil then
    ShootRailGun()
  end
  if CannonTarget ~= nil then
    ShootCannon()
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        fwait()
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
  if key == "z" and givingarmor == true then
    do1()
  end
  if key == "x" and givingarmor == true then
    do2()
  end
  if key == "c" and givingarmor == true then
    do3()
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
      animTrack:Play()
      equipanim()
    else
      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      animTrack:Stop()
      Animate.Parent = Character
      fwait(0)
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
    StatConvert()
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
print("Mechanic loaded.")
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
  fwait()
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
    if cooldownmax <= cooldowns[1] and RailgunTarget ~= nil then
      MagicSpecial(BrickColor.new(NewCol), rprt1.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
      for i = 1, 5 do
        ElecEffect(cf(rprt1.Position), 3, 3, 3)
      end
      RailgunTarget = nil
      model1.Parent = nil
    end
    if cooldownmax <= cooldowns[2] and CannonTarget ~= nil then
      print("daicannon")
      print(cooldowns[2])
      print(CannonTarget)
      MagicSpecial(BrickColor.new(NewCol), pprt1.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
      for i = 1, 5 do
        ElecEffect(cf(pprt1.Position), 3, 3, 3)
      end
      CannonTarget = nil
      model2.Parent = nil
    end
    if cooldownmax <= cooldowns[3] and BladesTarget ~= nil then
      print("daiblades")
      print(cooldowns[3])
      print(BladesTarget)
      MagicSpecial(BrickColor.new(NewCol), bprt1.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.3, 0.3, 0.3, 0.05)
      MagicSpecial(BrickColor.new(NewCol), bprt7.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.3, 0.3, 0.3, 0.05)
      MagicSpecial(BrickColor.new(NewCol), bprt13.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.3, 0.3, 0.3, 0.05)
      for i = 1, 5 do
        ElecEffect(cf(bref.Position), 3, 3, 3)
      end
      BladesTarget = nil
      model3.Parent = nil
    end
    if MMouse ~= nil then
      if model1.Parent ~= nil then
        local mpos = rprt1.CFrame * euler(0, 0, 0)
        local cff = CFrame.new(mpos.p, MMouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
        local x, y, z = rprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
        rwld1.Part1 = RailgunTarget
        rwld1.C0 = euler(0, 0, 0) * cf(3, -1, -0.2)
        rwld2.Part0 = rprt1
        rwld2.Part1 = rprt2
        rwld2.C0 = clerp(rwld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.3)
      end
      do
        if model2.Parent ~= nil then
          local mpos = pprt1.CFrame * euler(0, 0, 0)
          local cff = CFrame.new(mpos.p, MMouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
          local x, y, z = pprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
          pwld1.Part1 = CannonTarget
          pwld1.C0 = euler(0, 0, 0) * cf(-3, -1, -0.2)
          pwld2.Part0 = pprt1
          pwld2.Part1 = pprt2
          pwld2.C0 = clerp(pwld2.C0, CFrame.Angles(x, y, z) * euler(-1.57, 0, 0), 0.3)
        end
        do
          pwld1.C0 = clerp(pwld1.C0, euler(-0.2, 0, 0) * cf(-3, -1, -0.2), 0.5)
          pwld2.C0 = clerp(pwld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
          rwld1.C0 = clerp(rwld1.C0, euler(-0.2, 0, 0) * cf(3, -1, -0.2), 0.5)
          rwld2.C0 = clerp(rwld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
          if Stagger.Value == true and staggeranim == false then
            coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    fwait()
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
    fwait()
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
    fwait()
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
            if tribladesattack == false then
              bwld1.C0 = clerp(bwld1.C0, euler(0, 0, 0) * cf(2, -0.6, -2), 0.4)
              bwld7.C0 = clerp(bwld7.C0, euler(0, 0, 0) * cf(0, -0.6, -2), 0.4)
              bwld13.C0 = clerp(bwld13.C0, euler(0, 0, 0) * cf(-2, -0.6, -2), 0.4)
              bwld2.C0 = clerp(bwld2.C0, euler(3.14, -2, 1.17) * cf(0, 0, 0), 0.4)
              bwld8.C0 = clerp(bwld8.C0, euler(3.14, -2, 1.57) * cf(0, 0, 0), 0.4)
              bwld14.C0 = clerp(bwld14.C0, euler(3.14, -2, 1.97) * cf(0, 0, 0), 0.4)
              brefwld.C0 = clerp(brefwld.C0, euler(0, 0, 0) * cf(0, -2, 0), 0.4)
            end
            if 1 < RootPart.Velocity.y and hitfloor == nil then
              Anim = "Jump"
              if attack == false then
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2, 0, 1.2), 0.2)
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
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.2), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.2) * euler(-0.3, 0, -0.2), 0.2)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                end
              else
                if torvel < 1 and hitfloor ~= nil then
                  Anim = "Idle"
                  if attack == false then
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.15)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.15)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.3, 0, 0.2) * euler(0, -1.57, 0), 0.15)
                    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.4 + (donum) / 3), 0.15)
                    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, -0.1), 0.2)
                    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.5, 0.05), 0.2)
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
                      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.2), 0.3)
                      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.3)
                      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
                    end
                  else
                    if 30 <= torvel and hitfloor ~= nil then
                      Anim = "Run"
                      if attack == false then
                        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.2), 0.4)
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
                  if Thing[2] == "Shoot" then
                    if CannonTarget == nil then
                      table.remove(Effects, e)
                    else
                      local MainPos = Thing[1]
                      local MainPos2 = Thing[4]
                      local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
                      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, CannonTarget.Parent)
                      local mag = (Thing[1] - pos).magnitude
                      MagicCylinder2(Color2, CFrame.new((Thing[1] + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 1.5, 0, 1.5, 0.1)
                      Thing[1] = Thing[1] + MouseLook.lookVector * 10
                      Thing[3] = Thing[3] - 1
                      if hit ~= nil then
                        Thing[3] = 0
                        Damagefunc(hit, 8, 10, 0, "Normal", RootPart, 0, 2, math.random(1, 5), false, false, true, "Damage", 0.1, 200)
                        ref = part(3, workspace, 0, 1, Color2, "Reference", vt())
                        ref.Anchored = true
                        ref.CFrame = cf(pos)
                        so("169445602", ref, 1, 0.8)
                        so("153092334", ref, 1, 0.8)
                        MagicBlock(Color2, cf(pos), 20, 20, 20, 5, 5, 5, 0.05)
                        game:GetService("Debris"):AddItem(ref, 1)
                        MagniDamage(ref, 10, 6, 9, 0, "Normal", ref, 0, 1, (math.random(1, 5)), nil, nil, true, "Damage", 0.05, 200)
                      end
                      if Thing[3] <= 0 then
                        table.remove(Effects, e)
                      end
                    end
                  end
                  do
                    do
                      if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Shoot" then
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
                      -- DECOMPILER ERROR at PC9980: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC9980: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC9980: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC9980: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC9980: LeaveBlock: unexpected jumping out IF_STMT

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
          if 100 <= mana.Value then
            mana.Value = 100
          else
            if mananum <= 11 then
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
          -- DECOMPILER ERROR at PC10344: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC10344: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC10344: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC10344: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC10344: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
end
