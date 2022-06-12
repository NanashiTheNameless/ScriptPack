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
local manaincnum = 9
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local meditating = false
local arcorb = false
local doingplasma = false
local plaspos = nil
local plasfist = 1
local plasfisting = false
local Target = nil
local doingfury = false
local move3atk = false
local move4atk = false
local isjugg = false
local orbdo = "Normal"
local deb = 0
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local move1 = "(Z)\nArcane Orb"
local move2 = "(X)\nPlasma Fist"
local move3 = "(C)\nCritical Fury"
local move4 = "(V)\nRetribution"
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
local cooldownadd1 = 0.5
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.2
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.11
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH = nil
LSH = nil
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
NewCol = Color3.new(1 - TorsoRed, 1 - TorsoGreen, 1 - TorsoBlue)
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
end
local mdec = Instance.new("NumberValue", Decrease)
mdec.Name = "DecreaseDef"
mdec.Value = 0.4
local mdec2 = Instance.new("NumberValue", Decrease)
mdec2.Name = "DecreaseMvmt"
mdec2.Value = 0.1
local con1 = nil
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
if Character:findFirstChild("Chakra Gauntlets", true) ~= nil then
  Character:findFirstChild("Chakra Gauntlets", true).Parent = nil
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
Runes = {"rbxassetid://200326272", "rbxassetid://200326330", "rbxassetid://200326394", "rbxassetid://200326465", "rbxassetid://200326593", "rbxassetid://200326667", "rbxassetid://200326796", "rbxassetid://200326880", "rbxassetid://200327025", "rbxassetid://200327088", "rbxassetid://200327279", "rbxassetid://200327394", "rbxassetid://200327439", "rbxassetid://200327517", "rbxassetid://200327625", "rbxassetid://200327725", "rbxassetid://200327804", "rbxassetid://200327922", "rbxassetid://200327991", "rbxassetid://200328063", "rbxassetid://200328131", "rbxassetid://200328211", "rbxassetid://200328319", "rbxassetid://200328365", "rbxassetid://200328401", "rbxassetid://200328461", "rbxassetid://200328530", "rbxassetid://200328645", "rbxassetid://200328713"}
ContentProvider = game:GetService("ContentProvider")
for _,v in pairs(Runes) do
  ContentProvider:Preload(v)
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
local tellbar = gui("TextLabel", fenframe5, "-Abyss\' combo changed such that the chakra orbs explode (+)\n-Arcane Orb changed to deal different effects when pressing ability buttons(+)\n-Plasma Hole changed to Plasma Fist where Abyss normally sets off the orb lower than normally and deals less damage over time, but Abyss can press the skill again as many times as Abyss can to dash towards the orb, creating multiple explosions that deals more damage (+)\n-If Plasma Fist is active, then all of Abyss\' attacks with knockback pulls enemies towards the orb (+)\n-Critical Hit changed to Critical Fury where Abyss jabs forward. If Abyss hits an enemy, Abyss then deals multiple smaller hits on the enemy then finishes off with a final huge punch that greatly debuffs the enemy\'s movement (+)\n-Retribution deals less damage and debuffs less defense, but cooldown slightly decreased (+/-)\n-Abyss\' meditate heals less and buffs less defense (-)\n-Abyss\' passive is canceled for some attacks (-)", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
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
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new("Really black").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Chakra Gauntlets"
local rprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part01", vt())
local rprt2 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part02", vt())
local rprt3 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Right Part03", vt())
local rprt4 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Right Part04", vt())
local rprt5 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Right Part05", vt())
local rprt6 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Right Part06", vt())
d = Instance.new("Decal", rprt5)
d.Face = "Top"
d.Texture = "rbxassetid://200290616"
rgui = Instance.new("BillboardGui")
rgui.Parent = rprt5
rgui.Size = UDim2.new(3, 0, 2.4, 0)
rgui.AlwaysOnTop = false
rimg = Instance.new("ImageLabel")
rimg.Parent = rgui
rimg.BackgroundTransparency = 1
rimg.Size = UDim2.new(1, 0, 1, 0)
rimg.Image = "rbxassetid://200369289"
rimg.ImageColor3 = BrickColor.new(NewCol).Color
local lprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part01", vt())
local lprt2 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part02", vt())
local lprt3 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Left Part03", vt())
local lprt4 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Left Part04", vt())
local lprt5 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Left Part05", vt())
local lprt6 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Left Part06", vt())
d = Instance.new("Decal", lprt5)
d.Face = "Bottom"
d.Texture = "rbxassetid://200290616"
lgui = Instance.new("BillboardGui")
lgui.Parent = lprt5
lgui.Size = UDim2.new(3, 0, 2.4, 0)
lgui.AlwaysOnTop = false
limg = Instance.new("ImageLabel")
limg.Parent = lgui
limg.BackgroundTransparency = 1
limg.Size = UDim2.new(1, 0, 1, 0)
limg.Image = "rbxassetid://200369289"
limg.ImageColor3 = BrickColor.new(NewCol).Color
rimg.Rotation = rimg.Rotation + 2
limg.Rotation = limg.Rotation + 2
local rmsh1 = mesh("SpecialMesh", rprt1, "FileMesh", "3270017", vt(0, 0, 0), vt(1.2, 1.2, 2))
local rmsh2 = mesh("CylinderMesh", rprt2, "", "", vt(0, 0, 0), vt(5, 2, 5))
local rmsh3 = mesh("SpecialMesh", rprt3, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 6))
local rmsh4 = mesh("SpecialMesh", rprt4, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 3))
local rmsh5 = mesh("CylinderMesh", rprt5, "", "", vt(0, 0, 0), vt(4, 2.1, 4))
local rmsh6 = mesh("SpecialMesh", rprt6, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
local lmsh1 = mesh("SpecialMesh", lprt1, "FileMesh", "3270017", vt(0, 0, 0), vt(1.2, 1.2, 2))
local lmsh2 = mesh("CylinderMesh", lprt2, "", "", vt(0, 0, 0), vt(5, 2, 5))
local lmsh3 = mesh("SpecialMesh", lprt3, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 3, 6))
local lmsh4 = mesh("SpecialMesh", lprt4, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.5, 3))
local lmsh5 = mesh("CylinderMesh", lprt5, "", "", vt(0, 0, 0), vt(4, 2.1, 4))
local lmsh6 = mesh("SpecialMesh", lprt6, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
local rwld1 = weld(lprt1, rprt1, RightArm, euler(1.57, 0, 0) * cf(0, 0.3, 0))
local rwld2 = weld(rprt1, rprt2, rprt1, euler(0, 0, 1.57) * cf(-0.6, 0, 0))
local rwld3 = weld(rprt1, rprt3, rprt2, euler(-0.2, 3.14, 1.57) * cf(-0.7, 0, -0.4))
local rwld4 = weld(rprt1, rprt4, rprt2, euler(-0.4, 3.14, -1.57) * cf(0.6, 0, -0.2))
local rwld5 = weld(rprt1, rprt5, rprt2, euler(0, 0, 0) * cf(0, 0, 0))
local rwld6 = weld(rprt1, rprt6, rprt2, euler(0, 0, 0.785) * cf(0, 0, 0.45))
local lwld1 = weld(lprt1, lprt1, LeftArm, euler(1.57, 0, 0) * cf(0, 0.3, 0))
local lwld2 = weld(rprt1, lprt2, lprt1, euler(0, 0, 1.57) * cf(0.6, 0, 0))
local lwld3 = weld(rprt1, lprt3, lprt2, euler(-0.2, 3.14, 1.57) * cf(-0.7, 0, -0.4))
local lwld4 = weld(rprt1, lprt4, lprt2, euler(-0.4, 3.14, -1.57) * cf(0.6, 0, -0.2))
local lwld5 = weld(rprt1, lprt5, lprt2, euler(0, 0, 0) * cf(0, 0, 0))
local lwld6 = weld(rprt1, lprt6, lprt2, euler(0, 0, 0.785) * cf(0, 0, 0.45))
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(rprt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox2", vt())
hitbox.Anchored = false
local hbwld = weld(hitbox, hitbox, RootPart, euler(0, 0, 0) * cf(0, 0, 0))
local hitbox2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox2", vt(1, 1, 1))
hitbox2.Anchored = true
local hitboxCF = cf(0, 0, 0)
hboxpos = Instance.new("BodyPosition", nil)
hboxpos.P = 2000
hboxpos.D = 100
hboxpos.maxForce = Vector3.new(545000, 545000, 545000)
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = RootPart
end
local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
local parti = it("ParticleEmitter")
parti.Color = cs(NewCol, Color3.new(255, 255, 255))
parti.LightEmission = 0.5
parti.Size = ns(0.2)
parti.Texture = "http://www.roblox.com/asset/?id=243660373"
sizeseq = ns({NumberSequenceKeypoint.new(0, 4), NumberSequenceKeypoint.new(1, 2)})
transseq = ns({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.1, 0.2), NumberSequenceKeypoint.new(0.8, 0.2), NumberSequenceKeypoint.new(1, 1)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.Acceleration = vt(0, 0, 0)
parti.Lifetime = nr(2)
parti.Rate = 60
parti.RotSpeed = nr(90)
parti.Speed = nr(7)
parti.VelocitySpread = 180
parti.Parent = Torso
parti.Enabled = false
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Chakra Gauntlets"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Abyss: Chakram Brawler" then
  Bin.Name = "Chakra Gauntlets"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  if id == "Whoosh" then
    num = math.random(1, 3)
    if num == 1 then
      id = "200633968"
    else
      if num == 2 then
        id = "200634020"
      else
        if num == 3 then
          id = "200634043"
        end
      end
    end
  end
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
  mdec.Parent = Decrease
  mdec2.Parent = nil
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
  end
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
  for i = 0, 1, 0.35 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -40
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, 0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.9) * euler(0, 0.7, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.4, -0.2, 0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -40
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.4, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, 0.6) * euler(0, 0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.9) * euler(0, 0.7, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.5, -0.2, 0.5), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, 0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, -0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.3, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.2, 0) * euler(-0.4, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.8) * euler(0, -1.57, 0) * euler(0, 0.2, -0.1), 0.3)
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
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.9) * euler(0, 0.7, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.2, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.3)
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
    Humanoid.WalkSpeed = 0
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
    Humanoid.WalkSpeed = 0
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
    Humanoid.WalkSpeed = 0
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
    Humanoid.WalkSpeed = 0
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
    Humanoid.WalkSpeed = 0
  end
  for i = 0, 1, 0.2 do
    swait()
    Stun.Value = 0
    gairost.cframe = RootPart.CFrame
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
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
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -1.2) * euler(0, 1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.8), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, 0.4) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.7, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.3)
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
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.8), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
  ref.Anchored = true
  ref.CFrame = RootPart.CFrame * cf(0, 0.5, -5)
  game:GetService("Debris"):AddItem(ref, 1)
  MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 5, 5, 5, 2, 2, 2, 0.05)
  MagicBlock(BrickColor.new(NewCol), cf(ref.Position), 1, 1, 1, 1, 1, 1, 0.05)
  MagicRune(BrickColor.new(NewCol), cf(ref.Position), 20, 20, 20, 10, 10, 7, 0.05, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(4, 4, 4)
  hitboxCF = cf(ref.Position)
  hitbox.CFrame = hitboxCF
  so("200633327", ref, 1, 1)
  for i = 1, 10 do
    swait()
    hitboxCF = cf(ref.Position)
    hitbox.CFrame = hitboxCF
    if i <= 5 then
      MagniDamage(hitbox, 4, 4, 6, 0, "Normal", true, nil, nil, nil, math.random(2, 5), RootPart)
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  so("161006182", ref, 1, 1.2)
  MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 30, 30, 30, 5, 5, 5, 0.1)
  MagicRing(BrickColor.new(NewCol), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 7, 7, 1, 1, 1, 0, 0.1)
  MagniDamage(ref, 6, 4, 7, math.random(5, 10), "Knockdown2", false, nil, nil, nil, math.random(2, 5), ref)
  for i = 1, 0, -0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, -1) * euler(0, 0.2, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.6, 0.4) * euler(0, -1.57, 0) * euler(-0.4, 1, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC801: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC801: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.6), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -0.5) * euler(0, -1.57, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.5, -0.2), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.4)
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
  local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
  ref.Anchored = true
  ref.CFrame = RootPart.CFrame * cf(-1, 0.5, -5)
  game:GetService("Debris"):AddItem(ref, 1)
  MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 5, 5, 5, 2, 2, 2, 0.05)
  MagicBlock(BrickColor.new(NewCol), cf(ref.Position), 1, 1, 1, 1, 1, 1, 0.05)
  MagicRune(BrickColor.new(NewCol), cf(ref.Position), 20, 20, 20, 10, 10, 7, 0.05, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(4, 4, 4)
  hitboxCF = cf(ref.Position)
  hitbox.CFrame = hitboxCF
  so("200633327", ref, 1, 1)
  for i = 1, 10 do
    swait()
    hitboxCF = cf(ref.Position)
    hitbox.CFrame = hitboxCF
    if i <= 5 then
      MagniDamage(hitbox, 4, 4, 6, 0, "Normal", true, nil, nil, nil, math.random(2, 5), RootPart)
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC338: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC338: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  so("161006182", ref, 1, 1.2)
  MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 30, 30, 30, 5, 5, 5, 0.1)
  MagicRing(BrickColor.new(NewCol), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 7, 7, 1, 1, 1, 0, 0.1)
  MagniDamage(ref, 6, 4, 7, math.random(5, 10), "Knockdown2", false, nil, nil, nil, math.random(2, 5), ref)
  for i = 1, 0, -0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 1) * euler(0, -0.2, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 1.3) * euler(0, -1, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1) * euler(0, -1, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.2, -0.6, 0.4) * euler(0, 1.57, 0) * euler(0, -1, 0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.2) * euler(0, -1.57, 0) * euler(0, -0.5, 0.4), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC625: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC625: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end
attackthree = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -0.5), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, 0, 0.5), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC177: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC177: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
  ref.Anchored = true
  ref.CFrame = RootPart.CFrame * cf(0, 0.5, -5)
  game:GetService("Debris"):AddItem(ref, 1)
  MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 30, 30, 30, 3, 3, 3, 0.05)
  MagicBlock(BrickColor.new(NewCol), cf(ref.Position), 2, 2, 2, 1, 1, 1, 0.05)
  MagicCirclee(BrickColor.new(NewCol), cf(ref.Position), 40, 40, 40, 10, 10, 7, 0.05, 1, 20, "200367539")
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(6, 6, 6)
  hitboxCF = cf(ref.Position)
  hitbox.CFrame = hitboxCF
  so("200633327", ref, 1, 1)
  so("200633377", ref, 1, 1)
  for i = 1, 10 do
    swait()
    hitboxCF = cf(ref.Position)
    hitbox.CFrame = hitboxCF
    if i <= 5 then
      MagniDamage(hitbox, 7, 4, 8, 0, "Normal", true, nil, nil, nil, math.random(2, 5), RootPart)
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC340: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC340: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  so("161006182", ref, 1, 1.2)
  MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 50, 50, 50, 5, 5, 5, 0.1)
  MagicRing(BrickColor.new(NewCol), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 9, 9, 1, 1, 1, 0, 0.1)
  MagniDamage(ref, 9, 5, 6, math.random(5, 10), "Knockdown2", false, nil, nil, nil, math.random(2, 5), ref)
  for i = 1, 0, -0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.5, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.5), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.5), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.6) * euler(0, 1.57, 0) * euler(0, 0, -0.5), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.5) * euler(0, -1.57, 0) * euler(0, 0, -0.4), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC609: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC609: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end
attackfour = function()
  attack = true
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.2 do
    swait()
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
        -- DECOMPILER ERROR at PC176: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC176: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 1, 21, 4 do
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      if StaggerHit.Value == true then
        break
      end
      local rref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
      rref.Anchored = true
      rref.CFrame = RootPart.CFrame * cf(0, 10, -(i * 2))
      so("200633377", rref, 1, 1.3)
      game:GetService("Debris"):AddItem(rref, 1)
      hitfloor2, posfloor2 = rayCast(rref.Position, CFrame.new(rref.Position, rref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
      if hitfloor2 ~= nil then
        local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
        ref.Anchored = true
        ref.CFrame = cf(posfloor2)
        game:GetService("Debris"):AddItem(ref, 1)
        MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 5, 5, 5, 2, 2, 2, 0.05)
        MagicCircle2(BrickColor.new(NewCol), cf(ref.Position), 7.8, 1, 10, 0.1, 0, 0.1, 0.05, "200367539")
        hbwld.Parent = nil
        hboxpos.Parent = hitbox
        hitbox.Parent = modelzorz
        hitbox.Size = vt(5, 5, 5)
        hitboxCF = cf(ref.Position)
        hitbox.CFrame = hitboxCF
        deb = 0
        so("161006182", ref, 0.8, 1.5)
        MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 10, 10, 10, 6, 6, 6, 0.1)
        MagicRing(BrickColor.new(NewCol), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 4, 4, 1, 1, 1, 0, 0.1)
        MagniDamage(hitbox, 7, 2, 3, 0, "Knockdown2", true, nil, nil, nil, math.random(2, 5), RootPart)
        for i = 1, 2 do
          swait()
          deb = 0.2
          hitboxCF = cf(ref.Position)
          hitbox.CFrame = hitboxCF
          MagniDamage(hitbox, 5, 2, 3, 0, "Knockdown2", true, nil, nil, nil, math.random(2, 5), RootPart)
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
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
      else
        do
          do
            for i = 1, 2 do
              swait()
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
            -- DECOMPILER ERROR at PC493: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC493: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC493: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC493: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC493: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  dec.Parent = nil
  attack = false
end
Meditate = function()
  attack = true
  meditating = true
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  local dec2 = Instance.new("NumberValue", Decrease)
  dec2.Name = "DecreaseDef"
  dec2.Value = 0.5
  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  game:GetService("Debris"):AddItem(ref, 30)
  local prt = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Effect", vt(60, 0.2, 78))
  prt.Anchored = true
  prt.CFrame = RootPart.CFrame * cf(0, -10, 0)
  local gui1 = it("SurfaceGui", prt)
  gui1.Face = "Top"
  local gui2 = it("ImageLabel", gui1)
  gui2.BackgroundTransparency = 1
  gui2.Image = "rbxassetid://200369347"
  gui2.ImageColor3 = NewCol
  gui2.Size = UDim2.new(1, 0, 1, 0)
  meditatenum = 0
  meditatenum2 = 0
  medinum3 = 100
  eul = 0
  so("200633455", Torso, 1, 1)
  while meditating == true do
	swait()
    if meditating == true then
      manaincnum = 8
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4, 0, 0), 0.15)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(0, 0, 0), 0.15)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.3, -0.5) * euler(1.3, 0, -1.2) * euler(0, 1.57, 0), 0.15)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
      LW.C0 = clerp(LW.C0, cf(-1.2, 0.3, -0.5) * euler(1.3, 0, 1.2) * euler(0, -1.57, 0), 0.15)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.6) * euler(0, 1.57, 0) * euler(1.2, 1, 0.2), 0.15)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.6) * euler(0, -1.57, 0) * euler(1.2, -1, -0.2), 0.15)
      ref.CFrame = cf(RootPart.Position) * cf(math.random(-2000, 2000) / 100, 0, math.random(-2000, 2000) / 100)
      if meditatenum2 >= 80 then
        meditatenum2 = 0
        if isjugg == false then
          so("200633433", Torso, 1, 1)
        end
        if Player.Neutral == true then
          Heal = math.random(2, 3)
          Humanoid.Health = Humanoid.Health + Heal
          showDamage(Character, Heal, "Heal")
          parti2 = parti:Clone()
          parti2.Parent = Torso
          table.insert(Effects, {parti2, "Particle", 40})
        end
        if isjugg == false then
          MagniHeal(RootPart, 30, 2, 3)
        end
      else
        meditatenum2 = meditatenum2 + 1
      end
      if medinum3 >= 200 then
        medinum3 = 0
        MagniBuff(RootPart, 30, "Defense", -0.1, 200)
      else
        medinum3 = medinum3 + 1
      end
      if meditatenum >= 5 then
        meditatenum = 0
        hit, pos = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
        if hit ~= nil then
          MagicCircle(BrickColor.new(NewCol), cf(pos), 1, 1, 1, 0.5, 7, 0.5, 0.1)
        end
      else
        meditatenum = meditatenum + 1
      end
      hit2, pos2 = rayCast(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
      if hit2 ~= nil then
        prt.CFrame = cf(pos2) * euler(0, eul, 0)
        eul = eul + 0.1
      end
    end
end
  manaincnum = 9
  ref.Parent = nil
  prt.Parent = nil
  dec.Parent = nil
  dec2.Parent = nil
  attack = false
end
do1 = function()
  orbdo = "Normal"
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 20 then
    deb = 0.2
    attack = true
    cooldowns[1] = 0
    mana.Value = mana.Value - 20
    local orb = part(3, modelzorz, 0, 0.5, BrickColor.new(NewCol), "Effect", vt())
    do
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 0.5
      for i = 0, 1, 0.2 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -0.5), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, 0, 0.5), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.2), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.2), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
          arcorb = true
          orb.Anchored = true
          orb.CFrame = RootPart.CFrame * cf(0, 0.5, -3)
          so("200633529", orb, 1, 0.7)
          do
            local msh = mesh("SpecialMesh", orb, "Sphere", "nil", vt(0, 0, 0), vt(10, 10, 10))
            ogui = Instance.new("BillboardGui")
            ogui.Parent = orb
            ogui.Size = UDim2.new(5, 0, 5, 0)
            oimg = Instance.new("ImageLabel")
            oimg.Parent = ogui
            oimg.BackgroundTransparency = 1
            oimg.Size = UDim2.new(1, 0, 1, 0)
            oimg.Image = Runes[math.random(1, #Runes)]
            oimg.ImageColor3 = BrickColor.new(NewCol).Color
            orbnum = 100
            theParent1 = fenbarmove1b.Parent
            theParent2 = fenbarmove2b.Parent
            theParent3 = fenbarmove3b.Parent
            bar1 = fenbarmove1b:Clone()
            bar1.Parent = theParent1
            fenbarmove1b.Parent = nil
            bar2 = fenbarmove2b:Clone()
            bar2.Parent = theParent2
            fenbarmove2b.Parent = nil
            bar3 = fenbarmove3b:Clone()
            bar3.Parent = theParent3
            fenbarmove3b.Parent = nil
            orbdo = "Normal"
            while arcorb == true do
		      swait()
              if arcorb == true then
                fenbarmove1.Text = "(Z)\nOrb Shoot"
                fenbarmove2.Text = "(X)\nOrb Blast"
                fenbarmove3.Text = "(C)\nOrb Charge"
                bar1.Size = UDim2.new(1, 0, 1, 0)
                bar2.Size = UDim2.new(1, 0, 1, 0)
                bar3.Size = UDim2.new(1, 0, 1, 0)
              end
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                if StaggerHit.Value == true then
                  break
                end
				end
                orb.CFrame = RootPart.CFrame * cf(0, 0.5, -3)
                MagicBlock(BrickColor.new(NewCol), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
                if orbnum < 0 or MMouse == nil then
                  arcorb = false
                end
                orbnum = orbnum - 1
                if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
                  arcorb = false
                  break
                end
              end
            end
            bar1.Parent = nil
            bar2.Parent = nil
            bar3.Parent = nil
            fenbarmove1b.Parent = theParent1
            fenbarmove2b.Parent = theParent2
            fenbarmove3b.Parent = theParent3
            fenbarmove1.Text = "(Z)\nArcane Orb"
            fenbarmove2.Text = "(X)\nPlasma Fist"
            fenbarmove3.Text = "(C)\nCritical Fury"
            -- DECOMPILER ERROR at PC561: Unhandled construct in 'MakeBoolean' P1

            if orbdo == "Normal" and MMouse.Hit.p ~= nil then
              local MainPos = orb.Position
              local MainPos2 = MMouse.Hit.p
              local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
              so("200633492", orb, 1, 1)
              coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
    local num = 50
    repeat
      swait()
      local ohit, opos = rayCast(Pos1, Look.lookVector, 5, Character)
      orb.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
      MagicBlock(BrickColor.new(NewCol), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
      Pos1 = Pos1 + Look.lookVector * 5
      orb.CFrame = CFrame.new(orb.Position, MMouse.Hit.p)
      if ohit ~= nil then
        num = 0
      end
      num = num - 1
    until num <= 0
    local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
    ref.Anchored = true
    ref.CFrame = cf(orb.Position)
    so("200633377", ref, 1, 1)
    game:GetService("Debris"):AddItem(ref, 0.5)
    MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 40, 40, 40, 5, 5, 5, 0.05)
    for i = 1, 4 do
      MagicBlock(BrickColor.new(NewCol), cf(ref.Position) * cf(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 2, 2, 2, 1, 1, 1, 0.05)
    end
    MagicCirclee(BrickColor.new(NewCol), cf(ref.Position), 35, 35, 35, 30, 30, 7, 0.05, 1, 20, "200369416")
    MagniDamage(ref, 15, 5, 7, math.random(10, 15), "Knockdown2", true, nil, nil, nil, math.random(5, 15))
    if isjugg == false then
      MagniHeal(ref, 15, 10, 13)
    end
    MagniBuff(ref, 15, "Damage", -0.2, 400)
    orb.Parent = nil
  end), MainPos, MainPos2, MouseLook)
              elseif orbdo == "Blast" then
                for i = 0, 1, 0.1 do
                  swait()
                  MagicBlock(BrickColor.new(NewCol), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
                  orb.CFrame = LeftArm.CFrame * cf(0, -3, 0)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.2, 0, 0), 0.3)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0.6), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, 0.4, 0), 0.3)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -2) * euler(0, 2, 0), 0.3)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.2, -0.2, 0.2), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.3)
                  if Stagger.Value ~= true and StunT.Value > Stun.Value then
                    do
                      if StaggerHit.Value == true then
                        break
                      end
                    end
                  end
                end
                for i = 0, 1, 0.2 do
                  swait()
                  if Rooted.Value == false then
                    Torso.Velocity = RootPart.CFrame.lookVector * 100
                  end
                  MagicBlock(BrickColor.new(NewCol), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
                  orb.CFrame = LeftArm.CFrame * cf(0, -3, 0)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(-0.1, 0, 0), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, -0.6), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.8, 0, -0.2) * euler(0, 0, 0), 0.4)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.2, 0.2, -0.4), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.2), 0.4)
                  if Stagger.Value ~= true and StunT.Value > Stun.Value then
                    do
                      if StaggerHit.Value == true then
                        break
                      end
                    end
                  end
                end
                Torso.Velocity = vt(0, 0, 0)
                orb.CFrame = LeftArm.CFrame * cf(0, -3, 0)
                      local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
                      ref.Anchored = true
                      ref.CFrame = cf(orb.Position)
                      so("200633377", ref, 1, 1)
                      so("200633492", ref, 1, 1)
                      game:GetService("Debris"):AddItem(ref, 0.5)
                      MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 40, 40, 40, 5, 5, 5, 0.05)
                      for i = 1, 4 do
                        MagicBlock(BrickColor.new(NewCol), cf(ref.Position) * cf(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 2, 2, 2, 1, 1, 1, 0.05)
                      end
                      MagicCirclee(BrickColor.new(NewCol), cf(ref.Position), 35, 35, 35, 30, 30, 7, 0.05, 1, 20, "200369416")
                      MagniDamage(ref, 15, 8, 10, math.random(10, 15), "Knockdown2", false, "Damage", 0.2, 300, math.random(10, 15))
                      orb.Parent = nil
                      for i = 1, 0, -0.1 do
                        swait()
                        if Rooted.Value == false then
                          Torso.Velocity = RootPart.CFrame.lookVector * -100 * i
                        end
                        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0), 0.4)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.5, 0, 0), 0.4)
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.5), 0.4)
                        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.5), 0.4)
                        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                        RH.C0 = clerp(RH.C0, cf(1, -1, -0.6) * euler(0, 1.57, 0) * euler(0, 0, -0.5), 0.4)
                        LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.5) * euler(0, -1.57, 0) * euler(0, 0, -0.4), 0.4)
                        if Stagger.Value ~= true and StunT.Value > Stun.Value then
                          do
                            if StaggerHit.Value == true then
                              break
                            end
                          end
                        end
                      end
                      elseif orbdo == "Charge" then
                        for i = 1, 0, -0.1 do
                          swait()
                          MagicBlock(BrickColor.new(NewCol), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
                          orb.CFrame = RootPart.CFrame * cf(0, 0.5 * i, -3 * i)
                          Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0) * euler(0, 0, 0), 0.4)
                          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.4)
                          RW.C0 = clerp(RW.C0, cf(1, 0.4, -0.7) * euler(1, 0, -1.4), 0.4)
                          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                          LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.7) * euler(1.3, 0, 1.4), 0.4)
                          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                          RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0), 0.4)
                          LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.4)
                          if Stagger.Value ~= true and StunT.Value > Stun.Value then
                            do
                              if StaggerHit.Value == true then
                                break
                              end
                            end
                          end
                        end
                        so("200633455", RootPart, 1, 1)
                        orb.Parent = nil
                        DecreaseStat(Character, "Damage", -0.1, 200)
                        DecreaseStat(Character, "Defense", -0.1, 200)
                        DecreaseStat(Character, "Movement", -0.05, 200)
                        local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
                        ref.Anchored = true
                        ref.CFrame = RootPart.CFrame
                        game:GetService("Debris"):AddItem(ref, 1)
                        for i = 0, 1, 0.05 do
                          swait()
                          ref.CFrame = cf(RootPart.Position) * cf(math.random(-800, 800) / 100, 0, math.random(-800, 800) / 100)
                          hit, pos = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
                          if hit ~= nil then
                            MagicCircle(BrickColor.new(NewCol), cf(pos), 1, 1, 1, 0.5, 7, 0.5, 0.1)
                          end
                          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0), 0.4)
                          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.4)
                          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 1.2), 0.4)
                          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1.2), 0.4)
                          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                          RH.C0 = clerp(RH.C0, cf(1, -0.9, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.4)
                          LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.4)
                          if Stagger.Value ~= true and StunT.Value > Stun.Value then
                            do
                              if StaggerHit.Value == true then
                                break
                              end
                            end
                          end
                        end
                        ref.Parent = nil
                      end
                      do
                        dec.Parent = nil
                        swait()
                        attack = false
                      end
                    end
                  end
                end
              --end
            --end
          --end
        --end
      --end
    --end
do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  orbdo = "Blast"
  if doingplasma == true then
    attack = true
    deb = 0.2
    removeControl()
    if plaspos ~= nil then
      so("2767090", Torso, 1, 1)
      newpos = vt(plaspos.X + math.random(-500, 500) / 100, RootPart.Position.Y, plaspos.Z + math.random(-500, 500) / 100)
      MoveCF = cf(RootPart.Position, newpos)
      local mpos = Torso.CFrame * euler(0, 0, 0)
      local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
      local x, y, z = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
      plasfisting = true
      if plasfist == 1 then
	if doingplasma == true then
        plasfist = 2
        hbwld.Parent = nil
        hboxpos.Parent = hitbox
        hitbox.Parent = modelzorz
        hitbox.Size = vt(2, 3, 2)
        hitboxCF = LeftArm.CFrame
        hitbox.CFrame = hitboxCF
        hitbox.Parent = modelzorz
        for i = 0, 1, 0.1 do
          swait()
          hboxpos.Parent = hitbox
          hitbox.Parent = modelzorz
          hitboxCF = LeftArm.CFrame
          hitbox.CFrame = hitboxCF
          MagniDamage(hitbox, 5, 6, 8, 0, "Knockdown2", true, nil, nil, nil, math.random(2, 5), RootPart)
          RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * euler(0, 0, -1.57), 0.5)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.5)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.8) * euler(0, 0, 0), 0.5)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0), 0.5)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
          RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.5)
          LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.5)
          if Rooted.Value == false then
            Torso.Velocity = MoveCF.lookVector * 100
          end
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
            end
end
          end
        end
      elseif plasfist == 2 then
	if doingplasma == true then
          plasfist = 1
          for i = 0, 1, 0.1 do
            swait()
            hboxpos.Parent = hitbox
            hitbox.Parent = modelzorz
            hitboxCF = LeftArm.CFrame
            hitbox.CFrame = hitboxCF
            MagniDamage(hitbox, 5, 6, 8, 0, "Knockdown2", true, nil, nil, nil, math.random(2, 5), RootPart)
            RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * euler(0, 0, 1.57), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 0, 0), 0.5)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.8) * euler(0, 0, 0), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.5)
            LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.5)
            if Rooted.Value == false then
              Torso.Velocity = MoveCF.lookVector * 100
            end
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
end
        end
      end
    end
    do
      plasfisting = false
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      hbwld.Parent = nil
      resumeControl()
      attack = false
      --do return  end
      if cooldownmax <= cooldowns[2] and mana.Value >= 30 then
        cooldownsadd[2] = 0.06
        deb = 0.2
        attack = true
        cooldowns[2] = 0
        mana.Value = mana.Value - 30
        local dec = Instance.new("NumberValue", Decrease)
        dec.Name = "DecreaseMvmt"
        dec.Value = 10
        for i = 0, 1, 0.15 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57), 0.3)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.3)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
            end
          end
        end
        for i = 1, 4 do
          so("200633327", Torso, 1, 1.4)
          so("Whoosh", Torso, 1, 1)
          for i = 0, 1, 0.5 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.3, -0.5) * euler(1.3, 0, -1.5) * euler(0, 0, 0), 0.5)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.3, -0.5) * euler(1.3, 0, 1.5) * euler(0, 0, 0), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          for i = 0, 1, 0.7 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.2, 0.3, -0.5) * euler(1.5, 0, -1.5) * euler(0, 0, 0), 0.5)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.2, 0.3, -0.5) * euler(1.5, 0, 1.5) * euler(0, 0, 0), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              MagicRune(BrickColor.new(NewCol), cf(RootPart.Position) * cf(math.random(-200, 200) / 100, math.random(0, 200) / 100, math.random(-500, 500) / 100), 5, 5, 5, 10, 10, 7, 0.05, 1, true)
            end
          end
        end
        swait(5)
        for i = 0, 1, 0.2 do
          swait()
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
            end
          end
        end
            local orb2 = part(3, workspace, 0, 0.5, BrickColor.new(NewCol), "Effect", vt())
            orb2.Anchored = true
            orb2.CFrame = RootPart.CFrame * cf(0, 3, -8)
            so("200633577", orb2, 1, 1)
            so("200633608", orb2, 1, 1)
            game:GetService("Debris"):AddItem(orb2, 40)
            local msh = mesh("SpecialMesh", orb2, "Sphere", "nil", vt(0, 0, 0), vt(40, 40, 40))
            ogui = Instance.new("BillboardGui")
            ogui.Parent = orb2
            ogui.Size = UDim2.new(10, 0, 10, 0)
            oimg = Instance.new("ImageLabel")
            oimg.Parent = ogui
            oimg.BackgroundTransparency = 1
            oimg.Size = UDim2.new(1, 0, 1, 0)
            oimg.Image = Runes[math.random(1, #Runes)]
            oimg.ImageColor3 = BrickColor.new(NewCol).Color
            local prtt = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Effect", vt(60, 0.2, 78))
            prtt.Anchored = true
            prtt.CFrame = orb2.CFrame
            local gui1 = it("SurfaceGui", prtt)
            gui1.Face = "Top"
            do
              local gui2 = it("ImageLabel", gui1)
              gui2.BackgroundTransparency = 1
              gui2.Image = "rbxassetid://200369311"
              gui2.ImageColor3 = NewCol
              gui2.Size = UDim2.new(1, 0, 1, 0)
              doingplasma = true
              table.insert(Effects, {orb2, "Plasma", prtt, 0, 40, 0})
              MagniBuff(orb2, 20, "Defense", -0.2, 400)
              for i = 1, 20 do
                swait()
                if Stagger.Value ~= true and StunT.Value > Stun.Value then
                  do
                    if StaggerHit.Value == true then
                      break
                    end
                  end
                end
              end
              dec.Parent = nil
              attack = false
            end
          end
        end
      end
    --end
 -- end
--end
do3 = function()
  orbdo = "Charge"
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 25 then
    deb = 1
    attack = true
    cooldowns[3] = 0
    mana.Value = mana.Value - 25
    Target = nil
    local ggui = Instance.new("BillboardGui")
    so("200633707", lprt5, 1, 1)
    MagicCircle(BrickColor.new(NewCol), cf(lprt5.Position), 5, 5, 5, 2, 2, 2, 0.1)
    ggui.Parent = lprt5
    ggui.Size = UDim2.new(5, 0, 5, 0)
    ggui.AlwaysOnTop = true
    img = Instance.new("ImageLabel")
    img.Parent = ggui
    img.BackgroundTransparency = 1
    img.Size = UDim2.new(1, 0, 1, 0)
    img.Image = Runes[math.random(1, #Runes)]
    img.ImageColor3 = BrickColor.new(NewCol).Color
    img.ImageTransparency = 1
    for i = 1, 0, -0.1 do
      swait()
      img.ImageTransparency = i
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.5) * euler(0.8, 0, 0.5), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.6, 0, 1), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 0.87, -0.1), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.27, 0.4), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC289: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC289: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    move3atk = true
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(4, 6, 4)
    hitboxCF = LeftArm.CFrame
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.1 do
      swait()
      hitboxCF = LeftArm.CFrame
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 5, 7, math.random(20, 30), "Knockdown2", true, nil, nil, nil, 0, RootPart)
      if Target ~= nil then
        Tors = Target:findFirstChild("Torso")
        if Tors ~= nil then
          ggui.Parent = Tors
        end
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 1.2) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.2), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, 0.6), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0.6), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.2, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.6, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC535: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC535: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    move3atk = false
    if Target == nil then
      cooldowns[3] = 50
    end
    if Target ~= nil then
      removeControl()
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 10
      game:GetService("Debris"):AddItem(dec, 10)
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.5) * euler(1.7, 0, -0.2) * euler(0, 1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.5) * euler(1.7, 0, 0.2) * euler(0, -1.57, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.2) * euler(0, 0, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.1), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC768: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC768: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      for i = 1, 5 do
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            eul1 = math.random(-50, 50) / 100
            eul2 = math.random(-50, 50) / 100
            so("200632211", RightArm, 0.7, 1)
            for i = 0, 1, 0.5 do
              swait()
              RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.7, 0, -0.2) * euler(0, 1.57, 0) * euler(eul1, 0, 0) * euler(0, 0, eul2), 0.7)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.5) * euler(1.7, 0, 0.2) * euler(0, -1.57, 0), 0.6)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC925: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC925: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            MagicCircle(BrickColor.new(NewCol), RightArm.CFrame * cf(0, -1, 0), 10, 10, 10, 1, 1, 1, 0.2)
            if Target ~= nil then
              Tors = Target:findFirstChild("Torso")
              if Tors ~= nil then
                so("200633377", Tors, 0.6, 1.3)
                MagicCircle(BrickColor.new(NewCol), cf(Tors.Position) * cf(math.random(-100, 100) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 5, 5, 5, 1, 1, 1, 0.1)
                Damagefunc(Tors, 2, 3, 0, "Normal", RootPart, 0, 1, 1, nil, nil, false, nil, nil, nil)
              end
            end
            eul1 = math.random(-50, 50) / 100
            eul2 = math.random(-50, 50) / 100
            so("200632211", LeftArm, 0.7, 1)
            for i = 0, 1, 0.5 do
              swait()
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.5) * euler(1.7, 0, -0.2) * euler(0, 1.57, 0), 0.6)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
              LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.8) * euler(1.7, 0, 0.2) * euler(0, -1.57, 0) * euler(eul1, 0, 0) * euler(0, 0, eul2), 0.7)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC1153: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC1153: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            MagicCircle(BrickColor.new(NewCol), LeftArm.CFrame * cf(0, -0.8, 0), 10, 10, 10, 1, 1, 1, 0.2)
            if Target ~= nil then
              Tors = Target:findFirstChild("Torso")
              if Tors ~= nil then
                so("200633377", Tors, 0.6, 1.3)
                MagicCircle(BrickColor.new(NewCol), cf(Tors.Position) * cf(math.random(-100, 100) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 5, 5, 5, 1, 1, 1, 0.1)
                Damagefunc(Tors, 2, 3, 0, "Normal", RootPart, 0, 1, 1, nil, nil, false, nil, nil, nil)
              end
            end
            -- DECOMPILER ERROR at PC1244: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1244: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.5) * euler(0.8, 0, 0.5), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.6, 0, 1) * euler(0, -1.57, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 0.87, -0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.27, 0.4), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1420: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1420: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      for i = 0, 1, 0.4 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.4) * euler(0, 0, 0), 0.6)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.6)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 1), 0.6)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.6)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
        RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.6)
        LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.6)
      end
      doingfury = true
      MagicCircle(BrickColor.new(NewCol), LeftArm.CFrame * cf(0, -1, 0), 10, 10, 10, 4, 4, 4, 0.2)
      if Target ~= nil then
        Tors = Target:findFirstChild("Torso")
        if Tors ~= nil then
          so("200633377", Tors, 0.6, 1.3)
          MagicCircle(BrickColor.new(NewCol), cf(Tors.Position), 10, 10, 10, 5, 5, 5, 0.05)
          Damagefunc(Tors, 8, 10, math.random(20, 40), "Knockdown2", RootPart, 0, 1, 5, nil, nil, false, "Movement", 0.3, 300)
        end
      end
      doingfury = false
      swait(30)
      dec.Parent = nil
      resumeControl()
    end
    do
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      attack = false
      ggui.Parent = nil
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
    deb = 1
    attack = true
    cooldowns[4] = 0
    mana.Value = mana.Value - 50
    retribution = true
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
    end
    for i = 1, 6 do
      so("200633327", Torso, 1, 1.4)
      so("Whoosh", Torso, 1, 1)
      for i = 0, 1, 0.5 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.3, -0.5) * euler(1.3, 0, -1.5) * euler(0, 0, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.3, -0.5) * euler(1.3, 0, 1.5) * euler(0, 0, 0), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.5)
      end
      for i = 0, 1, 0.7 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.3, -0.5) * euler(1.5, 0, -1.5) * euler(0, 0, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.2, 0.3, -0.5) * euler(1.5, 0, 1.5) * euler(0, 0, 0), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.5)
      end
      MagicRune(BrickColor.new("Really black"), cf(RootPart.Position) * cf(math.random(-200, 200) / 100, math.random(0, 200) / 100, math.random(-500, 500) / 100), 5, 5, 5, 10, 10, 7, 0.05, 1, true)
    end
    swait(5)
    move4atk = true
    dec.Parent = nil
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(2, 3, 2)
    hitboxCF = LeftArm.CFrame
    hitbox.CFrame = hitboxCF
    for i = 1, 2 do
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.2)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2, 0, -1) * euler(0, 0, 0), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0, -1, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -1, 0), 0.2)
      end
      so("200633780", RootPart, 1, 1)
      MagicCirclee(BrickColor.new("Really black"), cf(RootPart.Position), 35, 35, 35, 30, 30, 7, 0.05, 1, 20, "200369311")
      for i = 0, 1, 0.1 do
        swait()
        dec.Parent = Decrease
        MagicBlock(BrickColor.new("Really black"), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 3, 3, 3, 0.1, 1)
        for i = 1, 2 do
          MagicBlock(BrickColor.new("Really black"), LeftArm.CFrame * cf(math.random(-400, 400) / 100, -1, math.random(-400, 400) / 100), 1, 1, 1, 1, 1, 1, 0.2, 1)
        end
        MagicRune(BrickColor.new("Really black"), cf(RootPart.Position) * cf(math.random(-200, 200) / 100, math.random(0, 200) / 100, math.random(-500, 500) / 100), 5, 5, 5, 10, 10, 7, 0.05, 1, true)
        hbwld.Parent = nil
        hboxpos.Parent = hitbox
        hitbox.Parent = modelzorz
        hitboxCF = LeftArm.CFrame
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 5, 10, 15, 0, "Knockdown2", true, "Defense", 0.1, 100, 20, RootPart)
        if Rooted.Value == false then
          Torso.Velocity = RootPart.CFrame.lookVector * 100
        end
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.57), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.8) * euler(0, 0, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.5)
      end
      dec.Parent = nil
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      Torso.Velocity = vt(0, 0, 0)
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1) * euler(0, 0, 0), 0.2)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.6) * euler(0, 0, 0), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0), 0.2)
      end
      so("200633780", RootPart, 1, 1)
      MagicCirclee(BrickColor.new("Really black"), cf(RootPart.Position), 35, 35, 35, 30, 30, 7, 0.05, 1, 20, "200369311")
      for i = 0, 1, 0.1 do
        swait()
        dec.Parent = Decrease
        MagicBlock(BrickColor.new("Really black"), RightArm.CFrame * cf(0, -1, 0), 1, 1, 1, 3, 3, 3, 0.1, 1)
        for i = 1, 2 do
          MagicBlock(BrickColor.new("Really black"), RightArm.CFrame * cf(math.random(-400, 400) / 100, -1, math.random(-400, 400) / 100), 1, 1, 1, 1, 1, 1, 0.2, 1)
        end
        MagicRune(BrickColor.new("Really black"), cf(RootPart.Position) * cf(math.random(-200, 200) / 100, math.random(0, 200) / 100, math.random(-500, 500) / 100), 5, 5, 5, 10, 10, 7, 0.05, 1, true)
        hbwld.Parent = nil
        hboxpos.Parent = hitbox
        hitbox.Parent = modelzorz
        hitboxCF = RightArm.CFrame
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 5, 10, 15, 0, "Knockdown2", true, "Defense", 0.1, 100, 20, RootPart)
        if Rooted.Value == false then
          Torso.Velocity = RootPart.CFrame.lookVector * 100
        end
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 0, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.8) * euler(0, 0, 0), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.5)
      end
      dec.Parent = nil
      Torso.Velocity = vt(0, 0, 0)
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    swait(10)
    move4atk = false
    retribution = false
    attack = false
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
MagniDamage = function(Part, magni, mindam, maxdam, knock, Type, Ranged, Dec, DecAm, Dur, stun, thing)
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
          ThePart = Part
          if thing ~= nil then
            ThePart = thing
          end
          Damagefunc(head, mindam, maxdam, knock, Type, ThePart, deb, 1, stun, nil, nil, Ranged, Dec, DecAm, Dur)
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
            parti2 = parti:Clone()
            parti2.Parent = head
            table.insert(Effects, {parti2, "Particle", 20})
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
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, id)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt(x1, y1, z1))
  prt.Anchored = true
  prt.CFrame = cframe
  game:GetService("Debris"):AddItem(prt, 5)
  local gui11 = it("SurfaceGui", prt)
  gui11.Face = "Top"
  local gui22 = it("ImageLabel", gui11)
  gui22.BackgroundTransparency = 1
  gui22.Image = "rbxassetid://" .. id
  gui22.ImageColor3 = NewCol
  gui22.Size = UDim2.new(1, 0, 1, 0)
  gui22.ImageTransparency = 0
  table.insert(Effects, {gui22, "Spin", delay, x3, y3, z3, msh, prt})
end
MagicRune = function(brickcolor, cframe, x1, y1, z1, ud1, ud2, delay1, delay2, sizedec, ontop)
  local prt = part(3, workspace, 0, 0.5, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  ggui = Instance.new("BillboardGui")
  ggui.Parent = prt
  ggui.Size = UDim2.new(ud1, 0, ud2, 0)
  if ontop == true then
    ggui.AlwaysOnTop = true
  end
  img = Instance.new("ImageLabel")
  img.Parent = ggui
  img.BackgroundTransparency = 1
  img.Size = UDim2.new(1, 0, 1, 0)
  img.Image = Runes[math.random(1, #Runes)]
  img.ImageColor3 = prt.BrickColor.Color
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Rune", 0, delay1, delay2, sizedec, img, ggui, 1, 0})
end
MagicCirclee = function(brickcolor, cframe, x1, y1, z1, ud1, ud2, delay1, delay2, sizedec, rotation, id)
  local prt = part(3, workspace, 0, 0.5, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  ggui = Instance.new("BillboardGui")
  ggui.Parent = prt
  ggui.Size = UDim2.new(ud1, 0, ud2 / 1.3, 0)
  ggui.AlwaysOnTop = true
  img = Instance.new("ImageLabel")
  img.Parent = ggui
  img.BackgroundTransparency = 1
  img.Size = UDim2.new(1, 0, 1, 0)
  img.Image = "rbxassetid://" .. id
  img.ImageColor3 = prt.BrickColor.Color
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Circle", 0, delay1, delay2, sizedec, img, ggui, 1, 0, rotation})
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
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  if hit.Parent == nil then
    return 
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
    if retribution == true then
      MagicRune(BrickColor.new("Really black"), cf(hit.Position), 25, 25, 25, 15, 15, 7, 0.02, 1)
    end
    if plasfisting == true then
      MagicRune(BrickColor.new(NewCol), cf(hit.Position), 25, 25, 25, 15, 15, 7, 0.02, 1)
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
      Target = hit.Parent
      showDamage(hit.Parent, Damage, "Damage")
      if move3atk == true then
        so("200633924", hit, 1, 1)
      end
      if move4atk == true then
        so("200633837", hit, 1, 1)
        so("200633924", hit, 1, 1)
      end
      if doingfury == true then
        so("200633636", hit, 1, 1)
      end
      if plasfisting == true then
        so("200633837", hit, 1, 1.4)
      end
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
            if doingplasma == true then
              angle = hit.Position - (plaspos + Vector3.new(0, 0, 0)).unit
              knockback = knockback * -2
            end
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * (knockback)
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
                  vp.velocity = Property.CFrame.lookVector * (knockback) + Property.Velocity / 1.05
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * (knockback)
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
  if arcorb == true then
    arcorb = false
  end
  if attack == true or equipped == false then
    return 
  end
  deb = 0.2
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
  if key == "e" and meditating == true then
    meditating = false
    return 
  end
  if key == "z" and arcorb == true then
    orbdo = "Normal"
    arcorb = false
  end
  if key == "x" and arcorb == true then
    orbdo = "Blast"
    arcorb = false
  end
  if key == "c" and arcorb == true then
    orbdo = "Charge"
    arcorb = false
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
    Meditate()
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
  -- DECOMPILER ERROR at PC187: Unhandled construct in 'MakeBoolean' P1

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
end
ds = function(mouse)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Abyss loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local walk = 0
local walkforw = true
while true do
  swait()
  if Humanoid.Health <= 0 then
    attack = true
    resumeControl()
    modelzorz.Parent = workspace
    modelzorz.Name = "Weapon Model"
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
    --[[for _,c in pairs(game.Teams:children()) do
      if c.TeamColor == col and c.Name == "Juggernaut" then
        isjugg = true
      end
    end--]]
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
    rimg.Rotation = rimg.Rotation + 2
    limg.Rotation = limg.Rotation + 2
    if hbwld.Parent == nil then
      hitbox2.Name = "Hitbox2"
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
    local stunnum2 = 45
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
      donum = donum + 0.005
    else
      donum = donum - 0.005
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
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.1, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 1), 0.3)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -1), 0.3)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.2), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.3 - (donum) / 4, 0, 0.5 - (donum) / 4), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3 + (donum) / 4, 0, -0.5 + (donum) / 4), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0.2), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.15)
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
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4 - (donum) / 3, 0, 0.4 + (donum) / 4), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4 - (donum) / 3, 0, -0.4 - (donum) / 4), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
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
            if Thing[2] == "Rune" then
              if Thing[3] < Thing[4] then
                Thing[3] = Thing[3] + 1
                Thing[8].Size = Thing[8].Size - UDim2.new(Thing[6], 0, Thing[6], 0)
              else
                if Thing[10] < Thing[9] then
                  Thing[10] = Thing[10] + Thing[5]
                  Thing[7].ImageTransparency = Thing[10]
                  Thing[1].Transparency = Thing[1].Transparency + 0.1
                else
                  Thing[1].Parent = nil
                  table.remove(Effects, e)
                end
              end
            end
            if Thing[2] == "Circle" then
              if Thing[3] < Thing[4] then
                Thing[3] = Thing[3] + 1
                Thing[8].Size = Thing[8].Size + UDim2.new(Thing[6], 0, Thing[6], 0)
                Thing[7].Rotation = Thing[7].Rotation + 20
              else
                if Thing[10] < Thing[9] then
                  Thing[10] = Thing[10] + Thing[5]
                  Thing[7].ImageTransparency = Thing[10]
                  Thing[1].Transparency = Thing[7].ImageTransparency * 2
                  Thing[7].Rotation = Thing[7].Rotation + 20
                else
                  Thing[1].Parent = nil
                  table.remove(Effects, e)
                end
              end
            end
            if Thing[2] == "Plasma" then
              plaspos = Thing[1].Position
              MagicBlock(BrickColor.new(NewCol), cf(Thing[1].Position) * cf(math.random(-2000, 2000) / 100, math.random(-2000, 2000) / 100, math.random(-2000, 2000) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
              MagicBlock(BrickColor.new(NewCol), cf(Thing[1].Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.2, 1)
              hitflooro, posflooro = rayCast(Thing[1].Position - vt(0, 1, 0), CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 2, 0)).lookVector, 100, Character)
              if hitflooro ~= nil then
                if hitflooro.Anchored == true then
                  Thing[3].CFrame = cf(posflooro) * euler(0, Thing[6], 0)
                else
                  Thing[3].CFrame = Thing[3].CFrame
                end
              else
                Thing[3].CFrame = Thing[3].CFrame
              end
              Thing[6] = Thing[6] + 0.1
              if Thing[4] <= 600 then
                Thing[4] = Thing[4] + 1
                -- DECOMPILER ERROR at PC4543: Unhandled construct in 'MakeBoolean' P1

                if 50 <= Thing[5] and plasfisting == false then
                  Thing[5] = 0
                  MagicCirclee(BrickColor.new(NewCol), cf(Thing[1].Position), 35, 35, 35, 50, 50, 7, 0.05, 1, 20, "200369416")
                  MagniDamage(Thing[1], 25, 3, 5, 0, "Normal", true, nil, nil, nil, math.random(2, 8))
                end
                Thing[5] = Thing[5] + 1
              else
                doingplasma = false
                print("end")
                Thing[1].Parent = nil
                Thing[3].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "Particle" then
              if 0 <= Thing[3] then
                Thing[1].Enabled = true
                Thing[3] = Thing[3] - 1
              else
                game:GetService("Debris"):AddItem(Thing[1], 3)
                Thing[1].Enabled = false
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Rune" and Thing[2] ~= "Circle" and Thing[2] ~= "Plasma" and Thing[2] ~= "Particle" then
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Spin" then
                    Part = Thing[8]
                    Thing[8].CFrame = Thing[8].CFrame * euler(0, 0.2, 0)
                    Thing[1].ImageTransparency = Thing[1].ImageTransparency + Thing[3]
                    if 1 <= Thing[1].ImageTransparency then
                      Part.Parent = nil
                      table.remove(Effects, e)
                    end
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
      if fenbarmove1b.Parent ~= nil then
        fenbarmove1b:TweenSize((UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
      end
      if fenbarmove2b.Parent ~= nil then
        fenbarmove2b:TweenSize((UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
      end
      if fenbarmove3b.Parent ~= nil then
        fenbarmove3b:TweenSize((UDim2.new(1 * cooldowns[3] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
      end
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
        if mananum <= manaincnum then
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
      -- DECOMPILER ERROR at PC5351: LeaveBlock: unexpected jumping out DO_STMT

      -- DECOMPILER ERROR at PC5351: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
