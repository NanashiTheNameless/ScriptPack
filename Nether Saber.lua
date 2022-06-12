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
MMouse = Player:GetMouse()
combo = 0
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local stance = false
local triangparent = workspace
local prechit = false
local MovePart = nil
local Fly = false
local shatterpos = Instance.new("BodyPosition")
local prop = Instance.new("RocketPropulsion")
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local move1 = "(Z)\nPrecise Slash"
local move2 = "(X)\nSlice Wave"
local move3 = "(C)\nSonic Strike"
local move4 = "(V)\nVoid Shatter"
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
local cooldownadd1 = 0.5--0.5
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 =0.4-- 0.4
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.3--0.3
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.07--0.07
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
NewCol = Color3.new(TorsoRed / 4, TorsoGreen / 4, 0.5)
NewCol2 = BrickColor.new("Navy blue").Color
NewCol3 = BrickColor.new("Navy blue").Color
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
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

if Character:findFirstChild("Void Katana", true) ~= nil then
  Character:findFirstChild("Void Katana", true).Parent = nil
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
passive.Value = 0.1
local passive2 = Instance.new("NumberValue", Decrease)
passive2.Name = "DecreaseMvmt"
passive2.Value = 0
local passive3 = Instance.new("NumberValue", nil)
passive3.Name = "DecreaseMvmt"
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
local tellbar = gui("TextLabel", fenframe5, "-Katana Poise changed to Void Gather where Nether creates a void orb. If Nether has the void orb, then all of Nether\'s abilities change to void-related and the void orb is used up whenever Nether uses an ability. If Nether has no void orb, then Nether\'s abilities are katana-related. (+/-)\n-Void Orb ability changed to Void Portal where Nether shoots the orb, then the orb creates a portal that will shoot more exploding orbs at Nether\'s mouse (+)\n-Pulse Field changed to Void Field which does the same thing as Void Breaker except less damage (+)\n-Void Breaker changed to Void Shatter where if an enemy is within 30 studs, then Nether grabs that enemy, then makes the enemy shatter, creating a huge AOE damage that debuffs defense and damage (+)\n-Precise Hit changed to Precise Slash where Nether slashes, then any enemy within 50 studs gets slashed after a short delay (+/-)\n-Void Buster splits into two lasers after the first hit, deals more damage, but cannot hit the same enemy twice (+/-)\n-While Nether has a void orb up, Nether gets decreased movement (-)\n-Katana-related abilities deal less damage (-)\n-Slice Wave moves less distance (-)\n-FIXED BY KENT911T SKIDS (+-+-+)", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
tellbar.Font = "Arial"
tellbar.TextScaled = true
tellbar.TextTransparency = 1
tellbar.TextStrokeTransparency = 1
tellbar.ZIndex = 2
local fnumb = 0
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol3).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
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
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new("Medium stone grey").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new("Medium stone grey").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new("Medium stone grey").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol3).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Void Katana"
local prta1 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Parta01", vt())
local prt1 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part01", vt())
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part02", vt())
local prt3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part03", vt())
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part04", vt())
local prt5 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part05", vt())
local prt6 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part06", vt())
local prt7 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part07", vt())
local prt8 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part08", vt())
local prt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part09", vt())
local prt10 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part10", vt())
local prt11 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part11", vt())
local prt12 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part12", vt())
local prt13 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part13", vt())
local prt14 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part14", vt())
local prt15 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part15", vt())
local prt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part16", vt())
local prt17 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part17", vt())
local prt18 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Part18", vt())
local prt19 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Part19", vt())
local prt20 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part20", vt())
local prt21 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol2), "Orb", vt())
msh1 = mesh("BlockMesh", prt1, "", "", vt(0, 0, 0), vt(2, 5, 1))
msh2 = mesh("BlockMesh", prt2, "", "", vt(0, 0, 0), vt(2.01, 2, 2.01))
msh3 = mesh("BlockMesh", prt3, "", "", vt(0, 0, 0), vt(2, 5, 0.5))
msh4 = mesh("BlockMesh", prt4, "", "", vt(0, 0, 0), vt(1, 2, 1))
msh5 = mesh("SpecialMesh", prt5, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 1))
msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(2.02, 3, 2.02))
msh7 = mesh("SpecialMesh", prt7, "Wedge", "nil", vt(0, 0, 0), vt(2.02, 1, 2.02))
msh8 = mesh("BlockMesh", prt8, "", "", vt(0, 0, 0), vt(2, 6, 1))
msh9 = mesh("BlockMesh", prt9, "", "", vt(0, 0, 0), vt(2.01, 3, 1))
msh10 = mesh("BlockMesh", prt10, "", "", vt(0, 0, 0), vt(2.01, 3, 1))
msh11 = mesh("SpecialMesh", prt11, "Wedge", "nil", vt(0, 0, 0), vt(2, 3, 0.5))
msh12 = mesh("SpecialMesh", prt12, "Wedge", "nil", vt(0, 0, 0), vt(2, 1, 1))
msh13 = mesh("SpecialMesh", prt13, "Wedge", "nil", vt(0, 0, 0), vt(2, 1, 1))
msh14 = mesh("BlockMesh", prt14, "", "", vt(0, 0, 0), vt(0.5, 15, 1))
msh15 = mesh("BlockMesh", prt15, "", "", vt(0, 0, 0), vt(0.49, 1, 1))
msh16 = mesh("BlockMesh", prt16, "", "", vt(0, 0, 0), vt(0.49, 1, 1))
msh17 = mesh("BlockMesh", prt17, "", "", vt(0, 0, 0), vt(0.49, 1, 1))
msh18 = mesh("BlockMesh", prt18, "", "", vt(0, 0, 0), vt(0.4, 18, 1.49))
msh19 = mesh("SpecialMesh", prt19, "Wedge", "nil", vt(0, 0, 0), vt(0.4, 5, 1.49))
msh20 = mesh("SpecialMesh", prt20, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 7, 1))
msh21 = mesh("SpecialMesh", prt21, "Sphere", "nil", vt(0, 0, 0), vt(5, 5, 5))
local wlda1 = weld(prta1, prta1, LeftArm, cf(0, 1, 0))
local wld1 = weld(prt1, prt1, Torso, euler(1.4, 0, 0) * euler(0, -1.57, 0) * cf(-1.8, 0.8, -0.6))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, 0.5, 0.1))
local wld3 = weld(prt1, prt3, prt2, euler(0, 0, 0) * cf(0, -0.5, 0.15))
local wld4 = weld(prt1, prt4, prt2, euler(0.5, 0, 0) * cf(0, 0.2, -0.1))
local wld5 = weld(prt1, prt5, prt2, euler(3.14, 3.14, 0) * cf(0, 0.4, 0.1))
local wld6 = weld(prt1, prt6, prt2, euler(-0.2, 0, 0) * cf(0, -1, 0))
local wld7 = weld(prt1, prt7, prt6, euler(0, 3.14, 0) * cf(0, -0.4, 0))
local wld8 = weld(prt1, prt8, prt2, euler(0, 0, 0) * cf(0, -1.5, 0))
local wld9 = weld(prt1, prt9, prt8, euler(-0.785, 0, 0) * cf(0, 0.05, -0.2))
local wld10 = weld(prt1, prt10, prt8, euler(0.785, 0, 0) * cf(0, -0.25, -0.2))
local wld11 = weld(prt1, prt11, prt8, euler(0, 0, 3.14) * cf(0, 0, 0.15))
local wld12 = weld(prt1, prt12, prt8, euler(0, 0, 3.14) * cf(0, -0.2, 0.2))
local wld13 = weld(prt1, prt13, prt8, euler(0, 0, 0) * cf(0, -0.4, 0.2))
local wld14 = weld(prt1, prt14, prt8, euler(0, 0, 0) * cf(0, -1.8, 0.1))
local wld15 = weld(prt1, prt15, prt14, euler(0.785, 0, 0) * cf(0, 0.8, -0.1))
local wld16 = weld(prt1, prt16, prt14, euler(0.785, 0, 0) * cf(0, 0.3, -0.1))
local wld17 = weld(prt1, prt17, prt14, euler(0.785, 0, 0) * cf(0, -0.2, -0.1))
local wld18 = weld(prt1, prt18, prt14, euler(0, 0, 0) * cf(0, -0.3, 0.05))
local wld19 = weld(prt1, prt19, prt18, euler(0, 0, 0) * cf(0, -2.3, 0))
local wld20 = weld(prt1, prt20, prt14, euler(0, 0, 0) * cf(0, -2.2, 0))
local wld21 = weld(prt21, prt21, RootPart, euler(0, 0, 0) * cf(-1.2, -1.4, 0.6))
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
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Void Katana"
  script.Parent = Tool
Bin = script.Parent
if Bin.Name == "Nether: Baneful Void" then
  Bin.Name = "Void Katana"
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
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.3, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2) * euler(0, -1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  wld1.Part1 = Torso
  wld1.C0 = euler(1.4, 0, 0) * euler(0, -1.57, 0) * cf(-1.8, 0.8, -0.6)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2) * euler(0, -1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  wld1.Part1 = RightArm
  wld1.C0 = euler(1.3, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0)
  mdec2.Parent = Decrease
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
  for i = 0, 1, 0.2 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.5), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1) * euler(0, -1, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
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
  so("199146359", prt18, 1, 1.1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 5, 1)
  hitboxCF = prt18.CFrame
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.3 do
    swait()
    hitboxCF = prt18.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(5, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0.6, 0, -0.8) * euler(0, -0.5, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.4), 0.4)
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
  for i = 0, 1, 0.2 do
    swait()
    hitboxCF = prt18.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(5, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(2.8, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(0.6, 0, -1) * euler(0, -0.7, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.4), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC700: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC700: LeaveBlock: unexpected jumping out IF_STMT

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
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.4)
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
        -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199150686", prt18, 1, 1.2)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 5, 1)
  hitboxCF = prt18.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.3 do
    swait()
    hitboxCF = prt18.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(5, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.4)
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
        -- DECOMPILER ERROR at PC468: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC468: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.35 do
    swait()
    hitboxCF = prt18.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 5, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(5, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(2.8, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.8) * euler(0, 1.3, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC702: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC702: LeaveBlock: unexpected jumping out IF_STMT

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
    wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.7), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1) * euler(0, -1.4, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, 0.8), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.1) * euler(0, 1.57, 0) * euler(0, -0.7, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.7, 0), 0.4)
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
  so("199146359", prt18, 1, 0.8)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 5, 1)
  hitboxCF = prt18.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.3 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 60
    end
    hitboxCF = prt18.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 5, 10, math.random(10, 20), "Normal", RootPart, 0.5, 2, (math.random(5, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(3, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.7) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC478: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC478: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.3 do
    swait()
    hitboxCF = prt18.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 5, 10, math.random(10, 20), "Normal", RootPart, 0.5, 2, (math.random(5, 8)), nil, true)
    wld1.C0 = clerp(wld1.C0, euler(3, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.7) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC712: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC712: LeaveBlock: unexpected jumping out IF_STMT

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
    wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.7, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
      hit, pos = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 30, Character)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      so("228343249", ref, 1, 1)
      MagniDamage(ref, 10, 7, 8, math.random(10, 20), "Knockdown", ref, 0, 1, (math.random(8, 10)), nil, nil, true)
      MagicBlock(BrickColor.new(NewCol3), cf(ref.Position), 1, 1, 1, 5, 5, 5, 0.1, 1, workspace)
      MagicBlock(BrickColor.new(NewCol3), cf(ref.Position), 1, 1, 1, 2, 2, 2, 0.05, 1, workspace)
      eul = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      MagicRing(BrickColor.new(NewCol3), cf(ref.Position) * eul, 1, 1, 1, 1, 1, 1, 0.05)
      MagicRing(BrickColor.new(NewCol3), cf(ref.Position) * eul * euler(1.57, 0, 0), 1, 1, 1, 1, 1, 1, 0.05)
      MagicCircle(BrickColor.new(NewCol3), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 2, 2, 2, 0.05)
      game:GetService("Debris"):AddItem(ref, 1)
      swait(10)
      attack = false
    end
VoidGather = function()
  attack = true
  if stance == false then
    for i = 0, 1, 0.05 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, -0.4), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.1) * euler(0, -1.57, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-0.5, 0.8, -0.5) * euler(2.4, 0, 1), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0.1), 0.3)
      MagicBlock(BrickColor.new(NewCol3), LeftArm.CFrame * cf(0, -1, 0), 5, 5, 5, 0.5, 0.5, 0.5, 0.1, 1, workspace)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    MagicCircle(BrickColor.new(NewCol3), prt21.CFrame, 5, 5, 5, 0.5, 0.5, 0.5, 0.1, 1, workspace)
    for i = 1, 3 do
      MagicRing(BrickColor.new(NewCol3), prt21.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, 0, 0.5, 0.3, 0.3, 0, 0.03)
    end
    stance = true
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
  if cooldownmax <= cooldowns[1] and (mana.Value >= 15 or stance == false) then
    attack = true
    if stance == true then
      for i = 0, 1, 0.1 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, -0.4), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.1) * euler(0, -1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-0.5, 0.8, -0.5) * euler(2.4, 0, 1), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      wld21.Part1 = LeftArm
      wld21.C0 = cf(0, 1.5, 0)
      for i = 0, 1, 0.1 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 1.57), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      mana.Value = mana.Value - 15
      cooldowns[1] = 70
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 10
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref2.Anchored = true
      ref2.CFrame = cf(ref.Position)
      game:GetService("Debris"):AddItem(ref, 10)
      game:GetService("Debris"):AddItem(ref2, 10)
      local ringnum = 2
      local num = 5
      so("228343271", ref, 1, 1.4)
      local doing = 0
      local euld = 0
      for i = 0, 1, 0.05 do
        swait()
        if doing < 100 then
          if num >= 5 then
            num = 0
          end
          num = num + 1
          ref.CFrame = RootPart.CFrame * cf(0, 0, -3.2)
          hit, pos = rayCast(ref.Position, RootPart.CFrame.lookVector, 100, Character)
          local mag = (ref.Position - pos).magnitude
          MagicCylinder3(BrickColor.new(NewCol3), CFrame.new((ref.Position + pos) / 2, pos) * angles(1.57, 0, 0), 10, mag * 5, 10, 3, 1, 3, 0.1)
          MagicBlock(BrickColor.new(NewCol3), cf(pos), 5, 5, 5, 3, 3, 3, 0.1, 1, workspace)
          if ringnum >= 2 then
            ringnum = 0
            so("228343252", ref2, 1, 1)
            MagicRing(BrickColor.new(NewCol3), cf(pos) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, 0, 0.5, 1, 1, 0, 0.05)
          end
          ref2.CFrame = cf(pos)
          MagniDamage(ref2, 8, 10, 12, 0, "Normal", RootPart, 1, 1, (math.random(2, 4)), nil, nil, true)
          if hit ~= nil then
            Damagefunc(hit, 14, 16, 0, "Normal", RootPart, 1, 1, (math.random(4, 7)), nil, nil, true, nil, nil, nil)
          end
          ringnum = ringnum + 1
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              do
                do
                  local thedo = euld
                  for d = 1, 2 do
                    if d == 1 then
                      thedo = euld
                    else
                      thedo = -euld
                    end
                    if num >= 5 then
                      num = 0
                    end
                    num = num + 1
                    ref.CFrame = RootPart.CFrame * cf(0, 0, -3.2)
                    hit, pos = rayCast(ref.Position, RootPart.CFrame * euler(0, thedo, 0).lookVector, 100, Character)
                    local mag = (ref.Position - pos).magnitude
                    MagicCylinder3(BrickColor.new(NewCol3), CFrame.new((ref.Position + pos) / 2, pos) * angles(1.57, 0, 0), 5, mag * 5, 5, 3, 1, 3, 0.1)
                    MagicBlock(BrickColor.new(NewCol3), cf(pos), 5, 5, 5, 3, 3, 3, 0.1, 1, workspace)
                    if ringnum >= 3 then
                      ringnum = 0
                      so("228343252", ref2, 1, 1)
                      MagicRing(BrickColor.new(NewCol3), cf(pos) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, 0, 0.5, 1, 1, 0, 0.05)
                    end
                    ref2.CFrame = cf(pos)
                    MagniDamage(ref2, 8, 8, 10, 0, "Normal", RootPart, 1, 1, (math.random(2, 4)), nil, nil, true)
                    if hit ~= nil then
                      Damagefunc(hit, 10, 12, 0, "Normal", RootPart, 1, 1, (math.random(4, 7)), nil, nil, true, nil, nil, nil)
                    end
                    ringnum = ringnum + 1
                    if Stagger.Value ~= true and StunT.Value > Stun.Value then
                      do
                        if StaggerHit.Value == true then
                          break
                        end
                      end
                    end
end
                  doing = doing + 1
                  euld = euld + 0.02
              end
            end
end
end
end
end
      triangparent = workspace
      dec.Parent = nil
      ref.Parent = nil
      ref2.Parent = nil
      wld1.Part1 = RightArm
      wld1.C0 = euler(1.3, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0)
      wld21.Part1 = RootPart
      wld21.C0 = cf(-1.2, -1.4, 0.6)
      stance = false
    elseif stance == false then
        cooldowns[1] = 0
        prechit = true
        for i = 0, 1, 0.2 do
          swait()
          wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.4)
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
            end
          end
        end
          local dec = Instance.new("NumberValue", Decrease)
          dec.Name = "DecreaseMvmt"
          dec.Value = 10
          so("199150686", prt18, 1, 0.8)
          for i = 0, 1, 0.3 do
            swait()
            wld1.C0 = clerp(wld1.C0, euler(2.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.4)
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
              end
            end
          end
          MagniDamage(RootPart, 50, 8, 10, 0, "Knockdown", RootPart, 0, 1, (math.random(5, 10)), nil, nil, false)
          for i = 0, 1, 0.1 do
            swait()
            wld1.C0 = clerp(wld1.C0, euler(2.8, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.8) * euler(0, 1.3, 0), 0.5)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.5)
            LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          dec.Parent = nil
          prechit = false
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
  if cooldownmax <= cooldowns[2] and (mana.Value >= 15 or stance == false) then
    attack = true
    if stance == true then
      for i = 0, 1, 0.1 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, -0.4), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.1) * euler(0, -1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-0.5, 0.8, -0.5) * euler(2.4, 0, 1), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      wld21.Part1 = LeftArm
      wld21.C0 = cf(0, 1.5, 0)
      for i = 0, 1, 0.2 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.57), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1.57, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      stance = false
      mana.Value = mana.Value - 15
      MagicCircle(BrickColor.new(NewCol3), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 2, 2, 2, 0.05)
      CF = LeftArm.CFrame * cf(0, -1, 0)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = CF
      game:GetService("Debris"):AddItem(ref, 5)
      local hit, pos = nil, nil
      for i = 0, 1, 0.1 do
        swait()
        so("228343324", ref, 1, 1)
        MagicCircle(BrickColor.new(NewCol3), cf(ref.Position), 1, 1, 1, 4, 4, 4, 0.1)
        hit, pos = rayCast(ref.Position, RootPart.CFrame.lookVector, 8, Character)
        ref.CFrame = ref.CFrame * cf(0, -8, 0)
        if hit ~= nil then
          break
        end
      end
      do
        do
          MovePart = hit
          if hit ~= nil then
            so("228343304", hit, 1, 1)
            Damagefunc(hit, 9, 11, math.random(10, 20), "Normal", RootPart, 0, 1, (math.random(5, 10)), nil, nil, true, "Movement", 0.1, 200)
            ref.Parent = nil
          else
            MovePart = ref
          end
end
end
elseif stance == false then
		local dec = Instance.new("NumberValue", Decrease)
        dec.Name = "DecreaseMvmt"
        dec.Value = 10
          table.insert(Effects, {pos, "BlackHole", 200, 0})
          wld21.Part1 = RootPart
          wld21.C0 = cf(-1.2, -1.4, 0.6)
          cooldowns[2] = 70
          cooldowns[2] = 0
          Cloak()
          do
            target = findNearestTorso(Torso.Position)
            if target ~= nil then
              RootPart.CFrame = cf(RootPart.Position, target.Position)
            end
            MoveTo = RootPart.CFrame.lookVector * 80
            for i = 0, 1, 0.1 do
              swait()
              so("200632992", Torso, 1, 1)
              if Rooted.Value == false then
                Torso.Velocity = MoveTo
              end
              MagniDamage(RootPart, 20, 5, 6, math.random(20, 30), "Knockdown", RootPart, 0.3, 1, (math.random(5, 6)), nil, nil, false, "Movement", 0.1, 300)
              eul = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(math.random(-800, 800) / 100, math.random(-800, 800) / 100, math.random(-800, 800) / 100)
              MagicCircle(BrickColor.new("White"), cf(RootPart.Position) * eul, 2, 10, 2, -0.05, 5, -0.05, 0.05)
              MagicCircle(BrickColor.new("White"), cf(RootPart.Position) * eul * euler(1.57, 0, 0), 2, 10, 2, -0.05, 5, -0.05, 0.05)
            end
            UnCloak()
			dec.Parent = nil
end
            wld1.C0 = euler(2.5, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0)
            Neck.C0 = necko * euler(0, 0, -0.5) * euler(0.2, 0, 0)
            RootJoint.C0 = RootCF * euler(0, 0, 0.5)
            RW.C0 = cf(1.5, 0.5, 0) * euler(2, 0, 1) * euler(0, 2, 0)
            RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
            LW.C0 = cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4)
            LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
            RH.C0 = cf(0.9, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.4, 0, 0)
            LH.C0 = cf(-0.9, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.4, 0, 0)
            swait(10)
end
end
attack = false
end
            
      --end
    --end
  --end
do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and (mana.Value >= 15 or stance == false) then
    attack = true
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    if stance == true then
      for i = 0, 1, 0.1 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, -0.4), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.1) * euler(0, -1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-0.5, 0.8, -0.5) * euler(2.4, 0, 1), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC266: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC266: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      wld21.Part1 = LeftArm
      wld21.C0 = cf(0, 1.5, 0)
      for i = 0, 1, 0.3 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0) * euler(0, 0, 0.8), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.4, 0, 0) * euler(0, 0, -0.8), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.4, 0) * euler(-1, 0, 0.8) * euler(0, -1.2, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0) * euler(0, -1.57, 0) * euler(-0.8, 0, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(0.7, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.8), 0.4)
        LH.C0 = clerp(LH.C0, cf(-0.9, 0.1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(0, 0, -0.3), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC518: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC518: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = RootPart.CFrame * cf(0, 0, -5)
      game:GetService("Debris"):AddItem(ref, 10)
      so("228343349", ref, 1, 1)
      table.insert(Effects, {ref, "VField", 100, RootPart.CFrame, 0})
      wld21.Part1 = RootPart
      wld21.C0 = cf(-1.2, -1.4, 0.6)
      stance = false
      cooldowns[3] = 70
      mana.Value = mana.Value - 15
      for i = 0, 1, 0.1 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0) * euler(0, 0, 0.8), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.4, 0, 0) * euler(0, 0, -0.8), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.4, 0) * euler(-1, 0, 0.8) * euler(0, -1.2, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0) * euler(0, -1, 0) * euler(-1.4, 0, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(0.7, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.8), 0.4)
        LH.C0 = clerp(LH.C0, cf(-0.9, 0.1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(0, 0, -0.3), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC831: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC831: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    else
      cooldowns[3] = 0
      for i = 1, 3 do
        for i = 0, 1, 0.3 do
          swait()
          wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.6)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.1, 0, 0), 0.6)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.7), 0.6)
          RW.C0 = clerp(RW.C0, cf(0.7, 0.5, -0.5) * euler(1.57, 0, -1.2) * euler(0, 2, 0) * euler(0, 0, -0.5), 0.6)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.6)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
          RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.1) * euler(0, 1.57, 0) * euler(0, -0.7, 0), 0.6)
          LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.7, 0), 0.6)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC1050: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1050: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        CF = RootPart.CFrame * cf(0, 0, -15)
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = CF
        game:GetService("Debris"):AddItem(ref, 10)
        blcf = nil
        scfr = nil
        for i = 0, 1, 0.4 do
          swait()
          CF = RootPart.CFrame * cf(0, 0, -15)
          ref.CFrame = CF
          so("200632992", ref, 1, 1)
          MagniDamage(ref, 20, 4, 5, math.random(10, 20), "Knockdown", ref, 0.2, 1, (math.random(3, 8)), nil, nil, false)
          for i = 1, 2 do
            eul = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(math.random(-800, 800) / 100, math.random(-800, 800) / 100, math.random(-800, 800) / 100)
            MagicCircle(BrickColor.new("White"), cf(ref.Position) * eul, 2, 10, 2, -0.05, 5, -0.05, 0.05)
            MagicCircle(BrickColor.new("White"), cf(ref.Position) * eul * euler(1.57, 0, 0), 2, 10, 2, -0.05, 5, -0.05, 0.05)
          end
          wld1.C0 = clerp(wld1.C0, euler(2.8, 0, 0) * euler(0, 0, 0) * cf(0, 1, 0), 0.8)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0, 0, 0), 0.8)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.7), 0.8)
          RW.C0 = clerp(RW.C0, cf(1.57, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 2, 0) * euler(0, 0, 0.5), 0.8)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.8)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.4), 0.8)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.8)
          RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.1) * euler(0, 1.57, 0) * euler(0, -0.7, 0), 0.8)
          LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.7, 0), 0.8)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC1430: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1430: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        ref.Parent = nil
      end
      for i = 1, 10 do
        swait()
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
    end
    dec.Parent = nil
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
  if cooldownmax <= cooldowns[4] and mana.Value >= 40 then
    attack = true
    cooldowns[4] = 0
    target = findNearestTorso(RootPart.Position)
    if --[[target ~= nil and distance <= 30--]] lol == lol then
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 10
      local BodGy = Instance.new("BodyGyro", RootPart)
      BodGy.maxTorque = Vector3.new(0, math.huge, 0)
      BodGy.P = 2000
      BodGy.D = 100
      BodGy.cframe = cf(Torso.Position, target.Position)
      removeControl()
      for i = 0, 1, 0.1 do
        swait()
        BodGy.cframe = cf(Torso.Position, target.Position)
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.57), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      end
      shatterpos.P = 2000
      shatterpos.D = 100
      shatterpos.maxForce = Vector3.new(545000, 545000, 545000)
      shatterpos.position = target.Position
      shatterpos.Parent = target
      so("160867463", target, 1, 1)
      num = 0
      for i = 0, 1, 0.02 do
        swait()
        num = num + 1
        if num >= 4 then
          num = 0
          targfloor, targpos = rayCast(target.Position - vt(0, 4, 0), CFrame.new(target.Position, target.Position - Vector3.new(0, 5, 0)).lookVector, 100, Character)
          if targfloor ~= nil then
            MagicWave(BrickColor.new(NewCol2), cf(targpos), 5, 5, 5, 2, -0.1, 2, 0.1)
          end
        end
        MagicCircle2(BrickColor.new(NewCol2), cf(target.Position), 60, 60, 60, -5, -5, -5, 0.02)
        shatterpos.position = shatterpos.position + vt(0, 0.2, 0)
        BodGy.cframe = cf(Torso.Position, target.Position)
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.1)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(-0.4, 0, 0), 0.1)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1.57, 0), 0.1)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3, 0, 0) * euler(0, 0, -1), 0.1)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.1)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.1)
      end
      so("160867437", target, 1, 1.2)
      for i = 0, 1, 0.1 do
        swait()
        num = num + 1
        if num >= 4 then
          num = 0
          targfloor = rayCast(target.Position - vt(0, 4, 0), CFrame.new(target.Position, target.Position - Vector3.new(0, 5, 0)).lookVector, 100, Character)
          if targfloor ~= nil then
            MagicWave(BrickColor.new(NewCol2), cf(targpos), 5, 5, 5, 2, -0.1, 2, 0.1)
          end
        end
        MagicCircle2(BrickColor.new(NewCol2), cf(target.Position), 60, 60, 60, -5, -5, -5, 0.02)
        MagicBlock(BrickColor.new(NewCol2), cf(target.Position) * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-600, 600) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, -1, -1, -1, 0.1, 1, workspace)
        BodGy.cframe = cf(Torso.Position, target.Position)
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(-0.4, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.3, 0.9, 0) * euler(3.14, 0, 0) * euler(0, 0, -0.4), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      end
      for i = 0, 1, 0.1 do
        swait()
        MagicCircle2(BrickColor.new(NewCol2), cf(target.Position), 60, 60, 60, -5, -5, -5, 0.02)
        MagicBlock(BrickColor.new(NewCol2), cf(target.Position) * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-600, 600) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, -1, -1, -1, 0.1, 1, workspace)
        BodGy.cframe = cf(Torso.Position, target.Position)
        wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0.1, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.2, 0) * euler(3.14, 0, 0) * euler(0, 0, -0.1), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      end
      shatterpos.Parent = nil
      Damagefunc(target, 10, 10, math.random(40, 60), "Knockdown", RootPart, 0, 1, 0, nil, nil, false, "Movement", 0.2, 300)
      MagniDamage(target, 10, 12, 14, math.random(40, 60), "Knockdown", target, 0, 1, (math.random(20, 30)), nil, nil, false, "Shatter", 0.1, 300)
      CF = cf(target.Position)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = CF
      game:GetService("Debris"):AddItem(ref, 1)
      so("183763506", ref, 1, 0.6)
      so("178452221", ref, 1, 0.6)
      so("87767777", ref, 1, 1)
      so("87784452", ref, 1, 0.8)
      so("183763515", ref, 1, 1)
      MagicCircle(BrickColor.new(NewCol2), CF, 60, 60, 60, 15, 15, 15, 0.05)
      for i = 1, 2 do
        MagicRing(BrickColor.new(NewCol2), CF * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 15, 15, 0.2, 2, 2, 0, 0.02)
      end
      for i = 1, 5 do
        BreakEffect(BrickColor.new(NewCol2), CF, math.random(50, 100) / 100, math.random(500, 1000) / 100, math.random(50, 100) / 100)
      end
      for i = 1, 5 do
        swait()
        for i = 1, 2 do
          BreakEffect(BrickColor.new(NewCol2), CF, math.random(50, 100) / 100, math.random(500, 1000) / 100, math.random(50, 100) / 100)
          MagicCircle3(BrickColor.new(NewCol2), CF * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, 5, 0), 4, 30, 4, -0.05, 1, -0.05, 0.01)
        end
      end
      MagniDamage(target, 20, 16, 20, math.random(40, 60), "Knockdown", target, 0, 1, (math.random(20, 30)), nil, nil, false, "Shatter", 0.2, 300)
      MagicCircle(BrickColor.new(NewCol2), CF, 200, 200, 200, 2, 2, 2, 0.02)
      swait(10)
      resumeControl()
      BodGy.Parent = nil
      dec.Parent = nil
    end
    do
      attack = false
    end
  end
end
Cloak = function()
  Face.Parent = nil
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 1
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
            if head ~= nil and head.Name=="Torso" then
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
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
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
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent, prt2)
  local prt = (part(3, parent, 0, 0, brickcolor, "Effect", vt()))
  local wld = nil
  prt.CFrame = cframe
  prt.Anchored = true
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, cframe, prt2})
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
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0.8, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCircle3 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, math.random(50, 150) / 100})
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
MagicRing2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame})
      end
    end
  end
end
BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 0.2, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  game:GetService("Debris"):AddItem(prt, 10)
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(10, 100) / 100})
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
    Stats = hit.Parent:findFirstChild("Stats")
    if Stats ~= nil then
      enblock = Stats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if Stats:findFirstChild("Defense") ~= nil then
        if prechit == false then
          Damage = Damage / Stats.Defense.Value
        else
          Val = Stats.Defense.Value
          if Val >= 2 then
            Val = 2
          end
          Damage = Damage * Val
        end
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
        end]]
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
        if DecreaseState == "Shatter" then
          DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
          DecreaseStat(hit.Parent, "Defense", DecreaseAmount, Duration)
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
        local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
        local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8000, 100, 8000)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(8000,100,8000)
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      elseif Type == "Knockdown2" then
            hum = hit.Parent.Humanoid
            local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
        local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8000, 100, 8000)
bodvol.Parent=hit
            game:GetService("Debris"):AddItem(bodvol, 0.5)
          else
            do
              if Type == "Normal" or Type == "NormalDecreaseMvmt1" then
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(8000, 100, 8000)
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
    VoidGather()
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
print("Nether loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local handef = 0
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
    if stance == true then
      MagicBlock(BrickColor.new(NewCol3), prt21.CFrame, 1, 1, 1, 1, 1, 1, 0.3, 1, modelzorz, prt21)
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
    passive2.Value = (100 - Humanoid.Health) / (Humanoid.Health * 8)
    if 0.5 <= passive2.Value then
      passive2.Value = 0.5
    end
    if LeftArm.Transparency < 1 then
      if handef % 2 == 0 then
        MagicBlock(BrickColor.new(NewCol3), LeftArm.CFrame * cf(0, -1, 0), 5, 5, 5, 0.5, 0.5, 0.5, 0.2, 1, modelzorz, prta1)
      end
      if 20 <= handef then
        handef = 0
		MagicRing2(BrickColor.new(NewCol3), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.1, 0.1, 1)
        --MagicRing2(BrickColor.new(NewCol3), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.1, 0.1, prta1)
      end
    end
    handef = handef + 1
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
      if stance == true then
        passive3.Parent = Decrease
        prt21.Transparency = 0.5
        fenbarmove1.Text = "(Z)\nVoid Buster"
        fenbarmove2.Text = "(X)\nVoid Portal"
        fenbarmove3.Text = "(C)\nVoid Field"
        fenbarmove1b.BackgroundColor3 = BrickColor.new(NewCol3).Color
        fenbarmove2b.BackgroundColor3 = BrickColor.new(NewCol3).Color
        fenbarmove3b.BackgroundColor3 = BrickColor.new(NewCol3).Color
      else
        passive3.Parent = nil
        prt21.Transparency = 1
        fenbarmove1.Text = "(Z)\nPrecise Slash"
        fenbarmove2.Text = "(X)\nSlice Wave"
        fenbarmove3.Text = "(C)\nSonic Strike"
        fenbarmove1b.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
        fenbarmove2b.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
        fenbarmove3b.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
      end
      if 1 < RootPart.Velocity.y and hitfloor == nil then
        Anim = "Jump"
        if attack == false then
          wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.2)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.4) * euler(0, -1.57, 0), 0.2)
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
            wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.4) * euler(0, -1.57, 0), 0.2)
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
              wld1.C0 = clerp(wld1.C0, euler(1.5, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.2)
              Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0.5), 0.2)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.2)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6 + (donum) / 5, 0, 0.4) * euler(0, -1.57, 0), 0.2)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2 - (donum) / 5, 0, -0.4), 0.2)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.4), 0.2)
              LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0.1), 0.2)
            end
          else
            if 2 < torvel and torvel < 30 and hitfloor ~= nil then
              Anim = "Walk"
              walk = walk + 1
              if 10 <= walk then
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
                wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * euler(0, 3.14, 0) * cf(0, 1, 0), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1 + (donum) / 5, 0, 0.2) * euler(0, -1.57, 0), 0.2)
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
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.2 - (donum) / 5, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3 + (donum) / 3, 0, 0.5 - (donum) / 3), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2 + (donum) / 3, 0, -0.4 + (donum) / 3), 0.2)
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
            if Thing[2] == "BlackHole" then
              if 0 < Thing[3] then
                Thing[3] = Thing[3] - 1
                MagicBlock(BrickColor.new(NewCol2), cf(Thing[1]), 1, 1, 1, 5, 5, 5, 0.1, 1, workspace)
                if 0 < Thing[4] then
                  Thing[4] = Thing[4] - 1
                else
                  ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                  ref2.Anchored = true
                  ref2.CFrame = cf(Thing[1])
                  so("183763498", ref2, 0.8, 1)
                  game:GetService("Debris"):AddItem(ref2, 1)
                  spread = vt(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100) * (Thing[1] - MMouse.Hit.p).magnitude / 100
                  local MouseLook = cf((Thing[1] + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
                  table.insert(Effects, {MouseLook.lookVector, "Shoot", 30, Thing[1], 5, 7, 0})
                  Thing[4] = 20
                end
              else
                do
                  table.remove(Effects, e)
                  if Thing[2] == "Shoot" then
                    local Look = Thing[1]
                    local hit, pos = rayCast(Thing[4], Look, 10, modelzorz)
                    local mag = Thing[4] - pos.magnitude
                    MagicCircle(BrickColor.new(NewCol2), CFrame.new((Thing[4] + pos) / 2, pos), 1, 1, 1, 4, 4, 4, 0.1)
                    Thing[4] = Thing[4] + Look * 10
                    Thing[3] = Thing[3] - 1
                    if hit ~= nil then
                      Thing[3] = 0
                      ref3 = part(3, workspace, 0, 1, BrickColor.new(NewCol2), "Reference", vt())
                      ref3.Anchored = true
                      ref3.CFrame = cf(pos)
                      so("183763506", ref3, 0.8, 1.5)
                      game:GetService("Debris"):AddItem(ref3, 0.2)
                      MagicBlock(BrickColor.new(NewCol2), cf(ref3.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 8, 8, 8, 0.1, 1, workspace)
                      MagicCircle(BrickColor.new(NewCol2), cf(ref3.Position), 5, 5, 5, 5, 5, 5, 0.05)
                      MagniDamage(ref3, 10, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", ref3, 0, 1, 3, nil, nil, true, nil, nil, nil)
                      game:GetService("Debris"):AddItem(ref3, 1)
                    end
                    if Thing[3] <= 0 then
                      table.remove(Effects, e)
                    end
                  end
end
end
end
                  do
                    if Thing[2] == "VField" then
                      if 0 <= Thing[3] then
                        Thing[3] = Thing[3] - 1
                        Thing[1].CFrame = Thing[4] * cf(0, 0, -5 - Thing[5] * 2.5)
                        so("228343343", Thing[1], 1, 1)
                        hitfloor2, posfloor2 = rayCast(Thing[1].Position, CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
                        Thing[1].CFrame = cf(posfloor2)
                        MagniDamage(Thing[1], 2 + Thing[5] / 10, 8, 10, math.random(10, 20), "Knockdown", Thing[1], 0.3, 1, (math.random(6, 8)), nil, nil, true, "Damage", 0.1, 300)
                        MagicCircle(BrickColor.new(NewCol3), cf(posfloor2), 20 + Thing[5], 1, 20 + Thing[5], 1, 0, 1, 0.05)
                        MagicCircle(BrickColor.new(NewCol3), cf(posfloor2) * cf(0, 0, 0), 5, 10, 5, 1 + Thing[5] / 5, 10 + Thing[5] / 2, 1 + Thing[5] / 5, 0.1)
                        if Stagger.Value ~= true and StunT.Value > Stun.Value then
                          do
                            if StaggerHit.Value == true then
                              break
                            end
end
end
end
                            Thing[5] = Thing[5] + 0.2
                            Thing[1].Parent = nil
                            --table.remove(Effects, e)
end
                            if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "BlackHole" and Thing[2] ~= "Shoot" and Thing[2] ~= "VField" then
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
                                      Thing[1].CFrame = Thing[9].CFrame * Thing[8] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
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
                                              if Thing[2] == "Shatter" then
                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                Thing[4] = Thing[4] * cf(0, Thing[7], 0)
                                                Thing[1].CFrame = Thing[4] * euler(Thing[6], 0, 0)
                                                Thing[6] = Thing[6] + Thing[5]
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
      if mananum <= 9 then
        mananum = mananum + 100--1
      else
        mananum = 0
        mana.Value = mana.Value + 100--1
      end
    end
    for i = 1, #cooldowns do
      if cooldownmax <= cooldowns[i] then
        cooldowns[i] = cooldownmax
      else
        cooldowns[i] = cooldowns[i] + cooldownsadd[i]
      end
    end
    -- DECOMPILER ERROR at PC5992: LeaveBlock: unexpected jumping out DO_STMT

  end
end

