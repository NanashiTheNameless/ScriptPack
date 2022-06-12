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
local manainc = 12
local holde = true
local mode = "Gloves"
local cmode = "Shotgun"
local larmmove = true
local rarmmove = true
local doing3 = false
local spill = false
local mugdo = false
local freezeS = 0 --script.Parent.freeze
local freeze = false
local isjugg = false
local move1 = "(Z)\nSnowball"
local move2 = "(X)\nSnow Bomb"
local move3 = "(C)\nWarmth"
local move4 = "(V)\nTundra"
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
local cooldownadd2 = 0.34
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.23
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.14
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
--local damageFunc = workspace.damageFunc
player = nil
RSH = nil
RW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW = Instance.new("Motor")
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NewCol = BrickColor.new("Deep blue").Color
NewCol2 = BrickColor.new("Pastel light blue").Color
NewCol3 = BrickColor.new("Institutional white").Color
NewCol4 = BrickColor.new("Deep blue").Color
NewCol5 = BrickColor.new("Electric blue").Color
NewCol6 = BrickColor.new("Bright blue").Color
NewCol7 = BrickColor.new("Pastel blue").Color
NewColraa = BrickColor.new("Deep blue").Color
if Player:findFirstChild("Color1") ~= nil then
  NewColraa = Player.Color1.Value
end
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
gairo = Instance.new("BodyGyro")
gairo.Parent = nil
gairo.maxTorque = Vector3.new(400000, 400000, 400000)
gairo.P = 100000
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
if Character:findFirstChild("Snow Gloves", true) ~= nil then
  Character:findFirstChild("Snow Gloves", true).Parent = nil
end
if Character:findFirstChild("Snow Cannon", true) ~= nil then
  Character:findFirstChild("Snow Cannon", true).Parent = nil
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
local passive = Instance.new("NumberValue", nil)
passive.Name = "DecreaseMvmt"
passive.Value = 0.4
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
      if meshid == "rbxasset://fonts/torso.mesh" then
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
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
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
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Snow Gloves"
local modelzorz2 = Instance.new("Model")
modelzorz2.Parent = Character
modelzorz2.Name = "Snow Cannon"
tehprt = RightArm
eul = 0
for i = 1, 2 do
  if i == 2 then
    tehprt = LeftArm
  end
  if i == 2 then
    eul = mr(180)
  end
  local handle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle", vt())
  local prt1 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part01", vt())
  local prt2 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol2), "Part02", vt())
  local prt3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol3), "Part03", vt())
  msh1 = mesh("SpecialMesh", prt1, "FileMesh", "rbxasset://fonts/torso.mesh", vt(0, 0, 0), vt(0.55, 0.55, 0.15))
  msh2 = mesh("SpecialMesh", prt2, "FileMesh", "rbxasset://fonts/torso.mesh", vt(0, 0, 0), vt(0.525, 0.525, 0.75))
  msh3 = mesh("SpecialMesh", prt3, "FileMesh", "19251107", vt(0, 0, 0), vt(0.2, 0.35, 0.2))
  local handlewld = weld(handle, handle, tehprt, euler(0, eul, 0) * cf(0, 0, 0))
  local wld1 = weld(prt1, prt1, handle, euler(mr(90), 0, 0) * cf(0, 0.35, 0))
  local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, 0, 0.325))
  local wld3 = weld(prt1, prt3, prt1, euler(0, 0, mr(90)) * cf(-0.525, 0, 0.35))
  for _,c in pairs(modelzorz:children()) do
    table.insert(Weapon, c)
  end
  for _,c in pairs(prt1:children()) do
    if c.className == "Motor" then
      table.insert(Welds, c)
    end
  end
end
chandle = part(3, modelzorz2, 0, 1, BrickColor.new(NewCol), "cannonHandle", vt())
cprt1 = part(3, modelzorz2, 0, 0.5, BrickColor.new(NewCol4), "cannonPart01", vt())
cprt2 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart02", vt())
cprt3 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart03", vt())
cprt4 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart04", vt())
cprt5 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart05", vt())
cprt6 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart06", vt())
cprt7 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart07", vt())
cprt8 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart08", vt())
cprt9 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart09", vt())
cprt10 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart10", vt())
cprt11 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart11", vt())
cprt12 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart12", vt())
cprt13 = part(3, modelzorz2, 0.1, 0, BrickColor.new("Black"), "cannonPart13", vt())
cprt14 = part(3, modelzorz2, 0.1, 0, BrickColor.new("Black"), "cannonPart14", vt())
cprt15 = part(3, modelzorz2, 0.1, 0, BrickColor.new("Black"), "cannonPart15", vt())
cprt16 = part(3, modelzorz2, 0.1, 0, BrickColor.new("Black"), "cannonPart16", vt())
cprt17 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart17", vt())
cprt18 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart18", vt())
cprt19 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart19", vt())
cprt20 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart20", vt())
cprt21 = part(3, modelzorz2, 0.6, 0, BrickColor.new(NewCol2), "cannonPart21", vt())
cprt22 = part(3, modelzorz2, 0.6, 0, BrickColor.new(NewCol2), "cannonPart22", vt())
cprt23 = part(3, modelzorz2, 0.6, 0, BrickColor.new(NewCol2), "cannonPart23", vt())
cprt24 = part(3, modelzorz2, 0, 0, BrickColor.new("Smoky grey"), "cannonPart24", vt())
cprt24.Material = "Metal"
cprt25 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart25", vt())
cprt26 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart26", vt())
cprt27 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart27", vt())
cprt28 = part(3, modelzorz2, 0, 0, BrickColor.new("Smoky grey"), "cannonPart28", vt())
cprt28.Material = "Metal"
cprt29 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart29", vt())
cprt30 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart30", vt())
cprt31 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart31", vt())
cprt32 = part(3, modelzorz2, 0, 0, BrickColor.new("Ghost grey"), "cannonPart32", vt())
cprt33 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart33", vt())
cprt33a = part(3, modelzorz2, 0, 1, BrickColor.new(NewCol4), "cannonPart33a", vt())
cprt34 = part(3, modelzorz2, 0, 0, BrickColor.new("Medium stone grey"), "cannonPart34", vt())
cprt34.Material = "Metal"
cprt35 = part(3, modelzorz2, 0, 0, BrickColor.new("Medium stone grey"), "cannonPart35", vt())
cprt35.Material = "Metal"
cprt36 = part(3, modelzorz2, 0, 0, BrickColor.new("Medium stone grey"), "cannonPart36", vt())
cprt36.Material = "Metal"
cprt37 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol5), "cannonPart37", vt())
cprt37.Material = "Neon"
cprt38 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol5), "cannonPart38", vt())
cprt38.Material = "Neon"
cprt39 = part(3, modelzorz2, 0.2, 0, BrickColor.new("Black"), "cannonPart39", vt())
cprt39.Material = "Metal"
cprt40 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart40", vt())
cprt41 = part(3, modelzorz2, 0, 0, BrickColor.new("Fossil"), "cannonPart41", vt())
cprt42 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol4), "cannonPart42", vt())
cprt43 = part(3, modelzorz2, 0.2, 0, BrickColor.new(NewCol3), "cannonPart43", vt())
cprt44 = part(3, modelzorz2, 0.2, 0, BrickColor.new(NewCol3), "cannonPart44", vt())
cprt45 = part(3, modelzorz2, 0, 0, BrickColor.new("Medium stone grey"), "cannonPart45", vt())
cprt46 = part(3, modelzorz2, 0, 0, BrickColor.new(NewCol6), "cannonPart46", vt())
cprt46.Material = "Neon"
cprt47 = part(3, modelzorz2, 0.4, 0, BrickColor.new(NewCol2), "cannonPart47", vt())
cprt48 = part(3, modelzorz2, 0.4, 0, BrickColor.new(NewCol2), "cannonPart48", vt())
cprt49 = part(3, modelzorz2, 0.4, 0, BrickColor.new(NewCol2), "cannonPart49", vt())
cprt50 = part(3, modelzorz2, 0.4, 0, BrickColor.new(NewCol2), "cannonPart50", vt())
cprt51 = part(3, modelzorz2, 0.4, 0, BrickColor.new("Medium stone grey"), "cannonPart51", vt())
cprt51.Material = "Metal"
cprt52 = part(3, modelzorz2, 0.4, 0, BrickColor.new("Medium stone grey"), "cannonPart52", vt())
cprt52.Material = "Metal"
cprt53 = part(3, modelzorz2, 0.4, 0, BrickColor.new("Medium stone grey"), "cannonPart53", vt())
cprt53.Material = "Metal"
cprt54 = part(3, modelzorz2, 0.4, 0.7, BrickColor.new(NewCol7), "cannonPart54", vt())
cprt55 = part(3, modelzorz2, 0.4, 0, BrickColor.new(NewCol6), "cannonPart55", vt())
cprt55.Material = "Neon"
cprt56 = part(3, modelzorz2, 0, 0, BrickColor.new("Medium stone grey"), "cannonPart56", vt())
cprt56.Material = "Metal"
cprt57 = part(3, modelzorz2, 0, 0, BrickColor.new("Really black"), "cannonPart57", vt())
cmsh1 = mesh("BlockMesh", cprt1, "", "", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
cmsh2 = mesh("BlockMesh", cprt2, "", "", vt(0, 0, 0), vt(1, 4, 1))
cmsh3 = mesh("SpecialMesh", cprt3, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
cmsh4 = mesh("SpecialMesh", cprt4, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
cmsh5 = mesh("BlockMesh", cprt5, "", "", vt(0, 0, 0), vt(1, 4, 1))
cmsh6 = mesh("BlockMesh", cprt6, "", "", vt(0, 0, 0), vt(1, 4, 1))
cmsh7 = mesh("SpecialMesh", cprt7, "Wedge", "nil", vt(0, 0, 0), vt(4, 1.5, 3))
cmsh8 = mesh("BlockMesh", cprt8, "", "", vt(0, 0, 0), vt(1.5, 3, 4))
cmsh9 = mesh("SpecialMesh", cprt9, "Wedge", "nil", vt(0, 0, 0), vt(4, 1.5, 2))
cmsh10 = mesh("SpecialMesh", cprt10, "Wedge", "nil", vt(0, 0, 0), vt(4, 0.75, 2))
cmsh11 = mesh("BlockMesh", cprt11, "", "", vt(0, 0, 0), vt(1.5, 2, 4))
cmsh12 = mesh("BlockMesh", cprt12, "", "", vt(0, 0, 0), vt(0.75, 5, 4))
cmsh13 = mesh("BlockMesh", cprt13, "", "", vt(0, 0, 0), vt(4, 1.25, 1.25))
cmsh14 = mesh("BlockMesh", cprt14, "", "", vt(0, 0, 0), vt(1, 1.5, 1.249))
cmsh15 = mesh("BlockMesh", cprt15, "", "", vt(0, 0, 0), vt(1.5, 1.5, 1.249))
cmsh16 = mesh("SpecialMesh", cprt16, "Torso", "nil", vt(0, 0, 0), vt(1.75, 0.5, 1.25))
cmsh17 = mesh("SpecialMesh", cprt17, "Wedge", "nil", vt(0, 0, 0), vt(4, 1.25, 2))
cmsh18 = mesh("SpecialMesh", cprt18, "Wedge", "nil", vt(0, 0, 0), vt(2, 2.5, 1))
cmsh19 = mesh("SpecialMesh", cprt19, "Wedge", "nil", vt(0, 0, 0), vt(2, 2.5, 1))
cmsh20 = mesh("BlockMesh", cprt20, "", "", vt(0, 0, 0), vt(2, 3, 5))
cmsh21 = mesh("SpecialMesh", cprt21, "Torso", "nil", vt(0, 0, 0), vt(5, 3, 3.5))
cmsh22 = mesh("BlockMesh", cprt22, "", "", vt(0, 0, 0), vt(5.25, 4.75, 3.5))
cmsh23 = mesh("BlockMesh", cprt23, "", "", vt(0, 0, 0), vt(4.25, 2.75, 3.5))
cmsh24 = mesh("BlockMesh", cprt24, "", "", vt(0, 0, 0), vt(1.5, 1.5, 4))
cmsh25 = mesh("SpecialMesh", cprt25, "Torso", "nil", vt(0, 0, 0), vt(2.75, 1.5, 1.75))
cmsh26 = mesh("CylinderMesh", cprt26, "", "", vt(0, 0, 0), vt(0.75, 2, 0.75))
cmsh27 = mesh("SpecialMesh", cprt27, "Head", "nil", vt(0, 0, 0), vt(1, 1, 1))
cmsh28 = mesh("BlockMesh", cprt28, "", "", vt(0, 0, 0), vt(1.5, 1.5, 4))
cmsh29 = mesh("SpecialMesh", cprt29, "Torso", "nil", vt(0, 0, 0), vt(2.75, 1.5, 1.75))
cmsh30 = mesh("CylinderMesh", cprt30, "", "", vt(0, 0, 0), vt(0.75, 2, 0.75))
cmsh31 = mesh("SpecialMesh", cprt31, "Head", "nil", vt(0, 0, 0), vt(1, 1, 1))
cmsh32 = mesh("BlockMesh", cprt32, "", "", vt(0, 0, 0), vt(2, 3.75, 1.751))
cmsh33 = mesh("CylinderMesh", cprt33, "", "", vt(0, 0, 0), vt(0.75, 4, 0.75))
cmsh34 = mesh("CylinderMesh", cprt34, "", "", vt(0, 0, 0), vt(1.25, 2, 1.25))
cmsh35 = mesh("CylinderMesh", cprt35, "", "", vt(0, 0, 0), vt(3.75, 1.25, 3.75))
cmsh36 = mesh("SpecialMesh", cprt36, "FileMesh", "156292370", vt(0, 0, 0), vt(1.1, 1.1, 4))
cmsh37 = mesh("CylinderMesh", cprt37, "", "", vt(0, 0, 0), vt(6, 0.75, 4.75))
cmsh38 = mesh("CylinderMesh", cprt38, "", "", vt(0, 0, 0), vt(2, 1.5, 2))
cmsh39 = mesh("SpecialMesh", cprt39, "Torso", "nil", vt(0, 0, 0), vt(6, 1.5, 2.5))
cmsh40 = mesh("CylinderMesh", cprt40, "", "", vt(0, 0, 0), vt(2.25, 0.5, 2.25))
cmsh41 = mesh("CylinderMesh", cprt41, "", "", vt(0, 0, 0), vt(2.5, 0.5, 2.5))
cmsh42 = mesh("CylinderMesh", cprt42, "", "", vt(0, 0, 0), vt(3, 0.5, 3))
cmsh43 = mesh("CylinderMesh", cprt43, "", "", vt(0, 0, 0), vt(2.5, 5.5, 2.5))
cmsh44 = mesh("SpecialMesh", cprt44, "Sphere", "nil", vt(0, 0, 0), vt(2.5, 2.5, 2.5))
cmsh45 = mesh("SpecialMesh", cprt45, "Sphere", "nil", vt(0, 0, 0), vt(1, 4, 4))
cmsh46 = mesh("SpecialMesh", cprt46, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 2, 2))
cmsh47 = mesh("SpecialMesh", cprt47, "Sphere", "nil", vt(0, 0, 0), vt(5.25, 5.25, 5.25))
cmsh48 = mesh("CylinderMesh", cprt48, "", "", vt(0, 0, 0), vt(5.25, 9, 5.25))
cmsh49 = mesh("BlockMesh", cprt49, "", "", vt(0, 0, 0), vt(1.5, 1.5, 1))
cmsh50 = mesh("BlockMesh", cprt50, "", "", vt(0, 0, 0), vt(1.5, 1.5, 1))
cmsh51 = mesh("CylinderMesh", cprt51, "", "", vt(0, 0, 0), vt(5.25, 6, 5.25))
cmsh52 = mesh("CylinderMesh", cprt52, "", "", vt(0, 0, 0), vt(5.375, 0.25, 5.375))
cmsh53 = mesh("CylinderMesh", cprt53, "", "", vt(0, 0, 0), vt(5.375, 0.25, 5.375))
cmsh54 = mesh("CylinderMesh", cprt54, "", "", vt(0, 0, 0), vt(5.05, 6, 5.05))
cmsh55 = mesh("CylinderMesh", cprt55, "", "", vt(0, 0, 0), vt(5.1, 6, 5.03))
cmsh56 = mesh("CylinderMesh", cprt56, "", "", vt(0, 0, 0), vt(4.5, 0.5, 4.5))
cmsh57 = mesh("CylinderMesh", cprt57, "", "", vt(0, 0, 0), vt(4, 0.51, 4))
local chandlewld = weld(chandle, chandle, Torso, euler(0, -mr(90), -mr(45)) * cf(-0.6, -1.8, -0.8))
local cwld1 = weld(cprt1, cprt1, chandle, euler(0, 0, 0) * cf(0, 0, 0))
local cwld2 = weld(cprt1, cprt2, cprt1, euler(-mr(110), 0, 0) * cf(0, 0, 0))
local cwld3 = weld(cprt1, cprt3, cprt1, euler(-mr(20), 0, 0) * cf(0, -0.171, 0.47))
local cwld4 = weld(cprt1, cprt4, cprt1, euler(mr(20), mr(180), 0) * cf(0, 0.171, -0.47))
local cwld5 = weld(cprt1, cprt5, cprt1, euler(-mr(20), 0, 0) * cf(0, 0.299, 0.641))
local cwld6 = weld(cprt1, cprt6, cprt1, euler(-mr(20), 0, 0) * cf(0, 0.641, -0.299))
local cwld7 = weld(cprt1, cprt7, cprt1, euler(0, mr(180), 0) * cf(0, 0.633, -0.183))
local cwld8 = weld(cprt1, cprt8, cprt1, euler(mr(90), 0, mr(90)) * cf(0, 0.933, -0.183))
local cwld9 = weld(cprt1, cprt9, cprt1, euler(0, 0, mr(180)) * cf(0, 0.933, 0.317))
local cwld10 = weld(cprt1, cprt10, cprt1, euler(0, 0, mr(180)) * cf(0, 0.708, 0.717))
local cwld11 = weld(cprt1, cprt11, cprt1, euler(mr(90), 0, mr(90)) * cf(0, 0.633, 0.317))
local cwld12 = weld(cprt1, cprt12, cprt1, euler(mr(90), 0, mr(90)) * cf(0, 0.558, 1.017))
local cwld13 = weld(cprt1, cprt13, cprt1, euler(0, 0, mr(90)) * euler(0, 0, 0) * cf(0, 0.258, 1.817))
local cwld14 = weld(cprt1, cprt14, cprt1, euler(0, mr(90), 0) * euler(mr(45), 0, 0) * cf(0, -0.11, 1.77))
local cwld15 = weld(cprt1, cprt15, cprt1, euler(0, mr(90), 0) * euler(mr(45), 0, 0) * cf(0, 0.358, 1.867))
local cwld16 = weld(cprt1, cprt16, cprt1, euler(0, mr(90), 0) * euler(-mr(90), 0, 0) * cf(0, 0.433, 1.642))
local cwld17 = weld(cprt1, cprt17, cprt1, euler(0, 0, 0) * cf(0, 0.608, 1.717))
local cwld18 = weld(cprt1, cprt18, cprt1, euler(0, -mr(40), mr(90)) * cf(-0.25, 0.626, 2.087))
local cwld19 = weld(cprt1, cprt19, cprt1, euler(0, -mr(140), mr(90)) * euler(0, -mr(180), 0) * cf(0.25, 0.626, 2.087))
local cwld20 = weld(cprt1, cprt20, cprt1, euler(0, -mr(90), 0) * euler(mr(50), 0, 0) * cf(0, 0.883, 1.78))
local cwld21 = weld(cprt1, cprt21, cprt1, euler(-mr(90), 0, mr(90)) * cf(0, 1.158, 0.442))
local cwld22 = weld(cprt1, cprt22, cprt1, euler(-mr(90), 0, mr(90)) * cf(0, 1.133, 1.217))
local cwld23 = weld(cprt1, cprt23, cprt1, euler(-mr(90), 0, mr(90)) * cf(0, 1.233, 1.817))
local cwld24 = weld(cprt1, cprt24, cprt1, euler(0, 0, 0) * cf(-0.45, 1.233, 0.742))
local cwld25 = weld(cprt1, cprt25, cprt1, euler(0, 0, mr(90)) * cf(-0.5, 1.233, 0.742))
local cwld26 = weld(cprt1, cprt26, cprt1, euler(mr(90), 0, 0) * cf(-0.475, 1.233, 0.292))
local cwld27 = weld(cprt1, cprt27, cprt1, euler(0, 0, mr(90)) * cf(-0.475, 1.233, 0.042))
local cwld28 = weld(cprt1, cprt28, cprt1, euler(0, 0, 0) * cf(0.45, 1.233, 0.742))
local cwld29 = weld(cprt1, cprt29, cprt1, euler(0, 0, -mr(90)) * cf(0.5, 1.233, 0.742))
local cwld30 = weld(cprt1, cprt30, cprt1, euler(mr(90), 0, 0) * cf(0.475, 1.233, 0.292))
local cwld31 = weld(cprt1, cprt31, cprt1, euler(0, 0, mr(90)) * cf(0.475, 1.233, 0.042))
local cwld32 = weld(cprt1, cprt32, cprt1, euler(0, 0, mr(90)) * cf(0, 1.483, 0.742))
local cwld33 = weld(cprt1, cprt33, cprt1, euler(0, 0, mr(90)) * cf(0, 1.233, 0.042))
local cwld33a = weld(cprt1, cprt33a, cprt33, euler(0, 0, 0) * cf(0, 0, 0))
local cwld34 = weld(cprt1, cprt34, cprt33a, euler(0, 0, 0) * cf(0, 0, 0))
local cwld35 = weld(cprt1, cprt35, cprt33a, euler(0, 0, 0) * cf(0, 0, 0))
local cwld36 = weld(cprt1, cprt36, cprt33a, euler(mr(90), 0, 0) * cf(0, 0, 0))
local cwld37 = weld(cprt1, cprt37, cprt33a, euler(0, 0, 0) * cf(0, 0, 0))
local cwld38 = weld(cprt1, cprt38, cprt33a, euler(0, 0, 0) * cf(0, 0, 0))
local cwld39 = weld(cprt1, cprt39, cprt1, euler(0, mr(90), mr(180)) * cf(0, 1.633, 1.542))
local cwld40 = weld(cprt1, cprt40, cprt1, euler(mr(65), 0, 0) * cf(0, 1.811, 2.018))
local cwld41 = weld(cprt1, cprt41, cprt1, euler(mr(65), 0, 0) * cf(0, 1.843, 1.95))
local cwld42 = weld(cprt1, cprt42, cprt1, euler(mr(65), 0, 0) * cf(0, 1.875, 1.882))
local cwld43 = weld(cprt1, cprt43, cprt1, euler(mr(65), 0, 0) * cf(0, 2.118, 1.361))
local cwld44 = weld(cprt1, cprt44, cprt1, euler(0, 0, 0) * cf(0, 2.35, 0.862))
local cwld45 = weld(cprt1, cprt45, cprt1, euler(0, 0, mr(90)) * cf(0, 0.558, 1.167))
local cwld46 = weld(cprt1, cprt46, cprt1, euler(0, 0, mr(90)) * cf(0, 0.558, 1.167))
local cwld47 = weld(cprt1, cprt47, cprt1, euler(0, 0, 0) * cf(0, 1.308, 2.092))
local cwld48 = weld(cprt1, cprt48, cprt1, euler(mr(90), 0, 0) * cf(0, 1.308, 2.992))
local cwld49 = weld(cprt1, cprt49, cprt1, euler(0, mr(90), 0) * cf(0, 0.808, 2.242))
local cwld50 = weld(cprt1, cprt50, cprt1, euler(0, mr(90), 0) * cf(0, 0.808, 3.742))
local cwld51 = weld(cprt1, cprt51, cprt1, euler(mr(90), 0, 0) * cf(0, 1.283, 2.992))
local cwld52 = weld(cprt1, cprt52, cprt1, euler(mr(90), 0, 0) * cf(0, 1.208, 3.592))
local cwld53 = weld(cprt1, cprt53, cprt1, euler(mr(90), 0, 0) * cf(0, 1.208, 2.392))
local cwld54 = weld(cprt1, cprt54, cprt1, euler(mr(90), 0, 0) * cf(0, 1.183, 2.992))
local cwld55 = weld(cprt1, cprt55, cprt1, euler(mr(90), 0, 0) * cf(0, 1.233, 2.992))
local cwld56 = weld(cprt1, cprt56, cprt1, euler(mr(90), 0, 0) * cf(0, 1.308, 3.917))
local cwld57 = weld(cprt1, cprt57, cprt1, euler(mr(90), 0, 0) * cf(0, 1.308, 3.917))
for i = 45, 360, 45 do
  cprt58 = part(3, modelzorz2, 0.4, 0, BrickColor.new(NewCol2), "cannonPart58", vt())
  cmsh58 = mesh("BlockMesh", cprt58, "", "", vt(0, 0, 0), vt(0.5, 0.5, 1))
  local cwld58 = weld(cprt1, cprt58, cprt56, euler(0, mr(90), 0) * euler(mr(45), 0, 0) * cf(0, 0.415, 0.035) * euler(mr(90), 0, 0) * euler(0, -mr(i), 0))
end
for _,c in pairs(modelzorz2:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(cprt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
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
particle = function(parent, col1, col2, lightemis, size, texture, transparency, zoffset, accel, drag, ltp, velinher, emisdir, enabled, lifetime, rate, rotation, rotspeed, speed, velspread)
  local fp = it("ParticleEmitter")
  fp.Parent = parent
  fp.Color = cs(col1, col2)
  fp.LightEmission = lightemis
  fp.Size = size
  fp.Texture = texture
  fp.Transparency = transparency
  fp.ZOffset = zoffset
  fp.Acceleration = accel
  fp.Drag = drag
  fp.LockedToPart = ltp
  fp.VelocityInheritance = velinher
  fp.EmissionDirection = emisdir
  fp.Enabled = enabled
  fp.Lifetime = lifetime
  fp.Rate = rate
  fp.Rotation = rotation
  fp.RotSpeed = rotspeed
  fp.Speed = speed
  fp.VelocitySpread = velspread
  return fp
end

sizeseq = ns({nsk(0, 0), nsk(0.027, 0.765), nsk(0.184, 2.24), nsk(1, 4.64)})
transseq = ns({nsk(0, 0.375), nsk(0.4, 1), nsk(1, 1)})
local icicleparti1 = particle(nil, Color3.new(1, 1, 1), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.2, sizeseq, "http://www.roblox.com/asset/?id=329766994", transseq, 0, vt(0, -0.5, 0), 0, false, 0, "Bottom", true, nr(7, 10), 15, nr(-360, 360), nr(-30, 30), nr(3), 20)
sizeseq = ns({nsk(0, 0), nsk(0.025, 0.383), nsk(0.192, 2.51), nsk(1, 2.02)})
transseq = ns({nsk(0, 0.8), nsk(0.3, 1), nsk(1, 1)})
local icicleparti2 = particle(nil, Color3.new(1, 1, 1), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.3, sizeseq, "http://www.roblox.com/asset/?id=241594419", transseq, 0, vt(0, -0.5, 0), 0, false, 0, "Bottom", true, nr(7, 10), 80, nr(-360, 360), nr(-30, 30), nr(3), 20)
sizeseq = ns({nsk(0, 0.328), nsk(0.075, 3.11), nsk(0.206, 4.97), nsk(1, 10)})
transseq = ns({nsk(0, 0.363), nsk(0.107, 1), nsk(1, 1)})
local cannonparti1 = particle(cprt57, Color3.new(1, 1, 1), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.2, sizeseq, "http://www.roblox.com/asset/?id=329766994", transseq, 0, vt(0, -0.5, 0), 0, false, 0, "Top", false, nr(7, 10), 15, nr(-360, 360), nr(-30, 30), nr(5), 10)
sizeseq = ns({nsk(0, 0), nsk(0.023, 3.08), nsk(0.185, 3.72), nsk(1, 10)})
transseq = ns({nsk(0, 0.8), nsk(0.1, 1), nsk(1, 1)})
local cannonparti2 = particle(cprt57, Color3.new(1, 1, 1), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.3, sizeseq, "http://www.roblox.com/asset/?id=241594419", transseq, 0, vt(0, -0.5, 0), 0, false, 0, "Top", false, nr(5, 7), 30, nr(-360, 360), nr(-30, 30), nr(15), 5)
sizeseq = ns({nsk(0, 5.63), nsk(0.02, 2.9), nsk(0.277, 3.72), nsk(1, 10)})
transseq = ns({nsk(0, 0), nsk(0.132, 0.944), nsk(0.303, 1), nsk(1, 1)})
local freezeparti1 = particle(nil, Color3.new(0.66666666666667, 1, 1), Color3.new(1, 1, 1), 0.3, sizeseq, "http://www.roblox.com/asset/?id=241594419", transseq, 0, vt(0, -10, 0), 0, false, 0, "Top", true, nr(3, 4), 100, nr(-360, 360), nr(-30, 30), nr(15), 80)
sizeseq = ns({nsk(0, 0), nsk(0.06, 10), nsk(1, 10)})
transseq = ns({nsk(0, 0), nsk(0.462, 1), nsk(1, 1)})
local freezeparti2 = particle(nil, Color3.new(0.66666666666667, 1, 1), Color3.new(1, 1, 1), 0.3, sizeseq, "http://www.roblox.com/asset/?id=272050333", transseq, 0, vt(0, 0, 0), 0, false, 0, "Top", true, nr(1, 2), 10, nr(-360, 360), nr(-30, 30), nr(15), 80)
local parti = it("ParticleEmitter")
parti.Color = cs(Color3.new(0.24313725490196, 0.24313725490196, 0.24313725490196), Color3.new(0.54901960784314, 0.54901960784314, 0.54901960784314))
parti.LightEmission = 0.6
parti.Size = ns(0.2)
parti.Texture = "http://www.roblox.com/asset/?id=253188732"
sizeseq = ns({nsk(0, 0.68), nsk(0.15, 0.68), nsk(0.34, 1), nsk(0.51, 1.31), nsk(0.71, 1.81), nsk(0.9, 3.6), nsk(1, 5.4)})
transseq = ns({nsk(0, 0.65), nsk(0.3, 0.65), nsk(0.6, 0.9), nsk(1, 1)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.ZOffset = 0
parti.Acceleration = vt(0, 1, 0)
parti.LockedToPart = false
parti.EmissionDirection = "Top"
parti.Lifetime = nr(2, 2)
parti.Rate = 50
parti.Rotation = nr(0, 0)
parti.RotSpeed = nr(0, 0)
parti.Speed = nr(0.2, 0.2)
parti.VelocitySpread = 20
parti.Parent = nil
parti.Enabled = true
parti2a = parti:Clone()
parti2a.Color = cs(Color3.new(0.37647058823529, 0.1843137254902, 0), Color3.new(0.29411764705882, 0.21176470588235, 0.10196078431373))
parti2a.LightEmission = 0
parti2a.Texture = "http://www.roblox.com/asset/?id=242209918"
sizeseq = ns({nsk(0, 0), nsk(0.04, 0.7), nsk(0.184, 1.5), nsk(0.385, 3), nsk(1, 10)})
transseq = ns({nsk(0, 0), nsk(0.04, 0.5), nsk(0.4, 1), nsk(1, 1)})
parti2a.Transparency = transseq
parti2a.Size = sizeseq
parti2a.ZOffset = 1
parti2a.Acceleration = vt(0, -10, 0)
parti2a.LockedToPart = false
parti2a.EmissionDirection = "Top"
parti2a.Lifetime = nr(3, 3)
parti2a.Rate = 120
parti2a.Rotation = nr(-180, 180)
parti2a.RotSpeed = nr(-180, 180)
parti2a.Speed = nr(7, 12)
parti2a.VelocitySpread = 25
parti2a.Parent = nil
parti2a.Enabled = true
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Snow Gloves"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Tundrus" then
  Bin.Name = "Snow Gloves"
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
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(-0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-0.4, 0.7, -0.7) * euler(1.57, 0, 1.3) * euler(0.5, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -0.2), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1.4, -0.9, -0.3) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, 0.2), 0.4)
    end
  so("169445073", LeftArm, 1, 0.95)
  for i = 0, 1, 0.2 do
    swait()
    MagniDamage(LeftArm, 3, 4, 5, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.1, 0, 1) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.1) * euler(1.57, 0, -1.3) * euler(-0.2, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -0.2), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.1, 0) * euler(0, 0, 0), 0.4)
    end
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(1.7, 0, -0.2) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  so("169445092", RightArm, 1, 1)
  for i = 0, 1, 0.2 do
    swait()
    MagniDamage(RightArm, 3, 4, 5, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.8) * euler(1.6, 0, 0.2) * euler(0, 0, 0), 0.6)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.4) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.2, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(0, 0, -0.2), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC351: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC351: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(2, 0, 0.4) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.1) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC159: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC159: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("169445092", RightArm, 1, 0.9)
  for i = 0, 1, 0.15 do
    swait()
    MagniDamage(RightArm, 3, 4, 5, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.2, 0, -0.4) * euler(0, 0, 0), 0.6)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.4) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.2, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(0, 0, -0.2), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC351: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC351: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end

attackfour = function()
  attack = true
  local sball4 = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
  smsh4 = mesh("SpecialMesh", sball4, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
  local swld = weld(sball4, sball4, LeftArm, euler(0, 0, 0) * cf(0, 1, 0))
  for i = 0, 1, 0.2 do
    swait()
    smsh4.Scale = smsh4.Scale + vt(1.6, 1.6, 1.6)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.1, 0, 1) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.1) * euler(1.57, 0, -1.3) * euler(-0.2, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -0.2), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.1, 0) * euler(0, 0, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC227: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC227: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("169445073", LeftArm, 1, 0.85)
  RecentEnemy.Value = nil
  explodeball = false
  for i = 0, 1, 0.15 do
    swait()
    if RecentEnemy.Value == nil then
      MagniDamage(sball4, 3, 6, 8, math.random(15, 25), "Normal", RootPart, 0.3, 2, (math.random(5, 7)), nil, nil, true)
    else
      if explodeball == false then
        explodeball = true
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = sball4.CFrame
        game:GetService("Debris"):AddItem(ref, 1)
        so("333511851", ref, 0.8, 0.9)
        for i = 1, math.random(2, 3) do
          local sball2 = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
          sball2.CFrame = sball4.CFrame
          sball2.Anchored = false
          game:GetService("Debris"):AddItem(sball2, 3)
          smsh = mesh("SpecialMesh", sball2, "Sphere", "nil", vt(0, 0, 0), vt(math.random(10, 20) / 10, math.random(10, 20) / 10, math.random(10, 20) / 10))
          sball2.Velocity = vt(math.random(-20, 20), math.random(20, 50), math.random(-20, 20))
        end
        sball4.Parent = nil
      end
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-0.4, 0.7, -0.7) * euler(1.57, 0, 1.3) * euler(-0.2, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -0.2), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1.4, -0.9, -0.3) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, 0.2), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC556: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC556: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  sball4.Parent = nil
  attack = false
end

attackcannon = function()
  attack = true
  for i = 0, 1, 0.13 do
    swait()
    chandlewld.C0 = clerp(chandlewld.C0, euler(-0.4, 0, 0) * cf(0, 1, 0), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.4) * euler(0.2, 0, 0), 0.35)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, -1.4) * euler(0, 0.1, 0), 0.35)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(1.2, 0, 0.5) * euler(0, 1.3, 0), 0.35)
    LW.C0 = clerp(LW.C0, cf(-0.8, 0.3, -0.5) * euler(1.4, 0, 1) * euler(0, -1, 0), 0.35)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1.4, 0) * euler(0, 0, -0.2), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("203691447", cprt22, 1, 1.2)
  for i = 0, 1, 0.07 do
    swait()
    if i < 0.5 then
      MagniDamage(cprt22, 4, 6, 8, math.random(20, 30), "Normal", RootPart, 0.5, 1, (math.random(4, 6)), nil, true)
    end
    if i < 0.25 then
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0) * euler(0, 0, 0.7), 0.3)
      chandlewld.C0 = clerp(chandlewld.C0, euler(0.2, 0, 0) * cf(0, 1, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(1.5, 0, -0.3) * euler(0, 1.5, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-0.8, 0.3, 0) * euler(1.6, 0, 0.1) * euler(0, -1, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.7, 0) * euler(-0.1, 0, 0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.1), 0.3)
    else
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0) * euler(0, 0, 1), 0.3)
      chandlewld.C0 = clerp(chandlewld.C0, euler(0.2, 0, 0) * cf(0, 1, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.2) * euler(1.3, 0, -0.4) * euler(0, 2, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.2, 0.3, 0) * euler(1, 0, 0.1) * euler(0, -1, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(-0.1, 0, 0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.1), 0.3)
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC582: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC582: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end

WinterShooter = function()
  attack = true
  if mode == "Gloves" then
    manainc = 999
    passive.Parent = Decrease
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, -0.4) * euler(0, 1.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, 0.4) * euler(0, 0, 0), 0.3)
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(-0.2, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, 0.1) * euler(3.5, 0, -0.4) * euler(0, 1.5, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.6, 0.1) * euler(3.5, 0, 0.4), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.2), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC203: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC203: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    chandlewld.Part1 = RightArm
    chandlewld.C0 = euler(mr(180), mr(180), 0.5) * cf(0, 1, 0)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.4) * euler(0, 0, 0), 0.3)
    mode = "Winter"
    attack = false
    gairo.Parent = RootPart
    Humanoid.AutoRotate = false
  else
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, -0.4) * euler(0, 1.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, 0.4) * euler(0, 0, 0), 0.3)
    for i = 0, 1, 0.15 do
      swait()
      chandlewld.C0 = clerp(chandlewld.C0, euler(mr(180), mr(180), 0.5) * cf(0, 1, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(-0.2, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.6, 0.1) * euler(3.5, 0, -0.4) * euler(0, 1.5, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.6, 0.1) * euler(3.5, 0, 0.4), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.2), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC473: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC473: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    passive.Parent = nil
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, -0.4) * euler(0, 1.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0.4) * euler(0, 0, 0), 0.3)
    chandlewld.Part1 = Torso
    chandlewld.C0 = euler(0, -mr(90), -mr(45)) * cf(-0.6, -1.8, -0.8)
    mode = "Gloves"
    manainc = 8
    gairo.Parent = nil
    Humanoid.AutoRotate = true
    attack = false
  end
end

do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and (mana.Value >= 5 or mode == "Winter") then
    attack = true
    if mode == "Gloves" then
      holde = true
      passive.Parent = Decrease
      manainc = 15
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * euler(0.2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.45, -0.4) * euler(0.4, 0, 0.4), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.2, 0.45, -0.4) * euler(0.4, 0, -0.4), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0, -1.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC188: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC188: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      ul = 0
      maxi = 1
      while holde == true do
        for i = 0, 1, 0.2 do
          swait()
          ul = ul + 1
          if ul > 4 then
            maxi = maxi + 1
            ul = 0
            if maxi > 4 then
              holde = false
            end
          end
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * euler(0.2, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(0.9, 0.4, -0.4) * euler(0.3, 0, -0.2), 0.4)
          LW.C0 = clerp(LW.C0, cf(-0.9, 0.4, -0.4) * euler(0.3, 0, 0.2), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0, -1.4), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.4)
          if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value ~= true then
            do
              if holde == false then
                break
              end
              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        for i = 0, 1, 0.2 do
          swait()
          ul = ul + 1
          if ul > 2 then
            maxi = maxi + 1
            ul = 0
            if maxi > 8 then
              holde = false
            end
          end
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * euler(0.2, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.2, 0.4, -0.4) * euler(0.35, 0, 0.3), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.2, 0.4, -0.4) * euler(0.35, 0, -0.3), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0, -1.4), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.4)
          if Stagger.Value ~= true then
            if StunT.Value > Stun.Value then
              if StaggerHit.Value ~= true then
                do
                  if holde == false then
                    break
                  end
                  -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
      passive.Parent = nil
      rand = math.random(1, 2)
      mana.Value = math.floor(mana.Value - maxi / 1.5)
      manainc = 12
      local snball = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
      smsh = mesh("SpecialMesh", snball, "Sphere", "nil", vt(0, 0, 0), vt(4 + maxi, 4 + maxi, 4 + maxi))
      if rand == 1 then
        local swld = weld(snball, snball, LeftArm, euler(0, 0, 0) * cf(0, 1, 0))
      else
        do
          do
            do
              if rand == 2 then
                local swld = weld(snball, snball, RightArm, euler(0, 0, 0) * cf(0, 1, 0))
              end
              for i = 0, 1, 0.15 do
                swait()
                newpos = vt(MMouse.Hit.p.X, RootPart.Position.Y, MMouse.Hit.p.Z)
                MoveCF = cf(RootPart.Position, newpos)
                local mpos = Torso.CFrame * euler(0, 0, 0)
                local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
                x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                if rand == 1 then
                  RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * cf(0, 0, 0) * euler(0, 0, 1), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.05, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(2.8, 0, -1), 0.4)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(0, 0, -0.1), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.5, 0) * euler(-0.2, 0, 0), 0.4)
                else
                  RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * cf(0, 0, 0) * euler(0, 0, -1), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.05, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.4, 0) * euler(2.8, 0, 1), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -1), 0.4)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(-0.2, 0, -0.2), 0.45)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.45)
                end
                if Stagger.Value ~= true and StunT.Value > Stun.Value then
                  do
                    if StaggerHit.Value == true then
                      break
                    end
                    -- DECOMPILER ERROR at PC990: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC990: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
              for i = 0, 1, 0.4 do
                swait()
                newpos = vt(MMouse.Hit.p.X, RootPart.Position.Y, MMouse.Hit.p.Z)
                MoveCF = cf(RootPart.Position, newpos)
                local mpos = Torso.CFrame * euler(0, 0, 0)
                local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
                x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                if rand == 1 then
                  RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * cf(0, 0, 0) * euler(0, 0, -1), 0.45)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.45)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2), 0.45)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(1.5, 0, -0.5), 0.45)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(-0.2, 0, -0.2), 0.45)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.45)
                else
                  RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * cf(0, 0, 0) * euler(0, 0, 1), 0.45)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.45)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.4, 0) * euler(1.5, 0, 0.5), 0.45)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.45)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(0, 0, -0.1), 0.45)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.5, 0) * euler(-0.2, 0, 0), 0.45)
                end
                if Stagger.Value ~= true and StunT.Value > Stun.Value then
                  do
                    if StaggerHit.Value == true then
                      break
                    end
                    -- DECOMPILER ERROR at PC1362: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC1362: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
              if rand == 1 then
                so("169445073", LeftArm, 0.8, 1.2)
              else
                so("169445073", RightArm, 0.8, 1.2)
              end
              snball.Parent = nil
              for i = 1, maxi do
                tehs = vt(math.random(-maxi * 50, maxi * 50) / 100, math.random(-maxi * 50, maxi * 50) / 100, math.random(-maxi * 50, maxi * 50) / 100) * Torso.Position - MMouse.Hit.p.magnitude / 100
                if i == 1 then
                  tehs = vt(0, 0, 0)
                end
                Shootcombo(tehs, math.random(70, 200) / 100, snball)
              end
              for i = 0, 1, 0.3 do
                swait()
                newpos = vt(MMouse.Hit.p.X, RootPart.Position.Y, MMouse.Hit.p.Z)
                MoveCF = cf(RootPart.Position, newpos)
                local mpos = Torso.CFrame * euler(0, 0, 0)
                local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
                x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                if rand == 1 then
                  RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * cf(0, 0, 0) * euler(0, 0, -1), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.6), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(1, 0, -0.5), 0.4)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.4)
                else
                  RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * cf(0, 0, 0) * euler(0, 0, 1), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.5), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(-0.6, 0, -0.6), 0.4)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(0, 0, -0.1), 0.45)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(0, -0.5, 0) * euler(-0.2, 0, 0), 0.45)
                end
                if Stagger.Value ~= true and StunT.Value > Stun.Value then
                  do
                    if StaggerHit.Value == true then
                      break
                    end
                    -- DECOMPILER ERROR at PC1813: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC1813: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
              gairo.Parent = nil
              if cmode == "Rapid" then
                so("16211041", cprt57, 1, 0.7)
                Shootcannon(vt(0, 0, 0), 2.5, cprt57)
              else
                if cmode == "Shotgun" then
                  Torso.Velocity = RootPart.CFrame.lookVector * -40
                  for i = 1, 5 do
                    tehs = vt(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100) * Torso.Position - MMouse.Hit.p.magnitude / 100
                    if i == 1 then
                      tehs = vt(0, 0, 0)
                    end
                    mana.Value = mana.Value - 1
                    so("16211041", cprt57, 0.6, 0.7)
                    Shootcannon(tehs, math.random(150, 200) / 100, cprt57)
                  end
                  for i = 0, 1, 0.15 do
                    swait()
                    chandlewld.C0 = clerp(chandlewld.C0, euler(-0.4, 0, 0) * cf(0, 1, 0), 0.45)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.45)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, 0) * euler(0, 0, -1) * euler(0, 0.1, 0), 0.45)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.2, 0, 0.5) * euler(0, 1.1, 0), 0.45)
                    LW.C0 = clerp(LW.C0, cf(-0.8, 0.3, -0.5) * euler(0.6, 0, 1) * euler(0, -1, 0), 0.45)
                    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.2), 0.45)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.2), 0.45)
                    if Stagger.Value ~= true and StunT.Value > Stun.Value then
                      do
                        if StaggerHit.Value == true then
                          break
                        end
                        -- DECOMPILER ERROR at PC2102: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC2102: LeaveBlock: unexpected jumping out IF_STMT

                      end
                    end
                  end
                else
                  if cmode == "Volley" then
                    for i = 1, 5 do
                      Torso.Velocity = RootPart.CFrame.lookVector * -10
                      tehs = vt(math.random(-150, 150) / 100, math.random(-150, 150) / 100, math.random(-150, 150) / 100) * Torso.Position - MMouse.Hit.p.magnitude / 100
                      if i == 1 then
                        tehs = vt(0, 0, 0)
                      end
                      mana.Value = mana.Value - 1
                      so("16211041", cprt57, 0.6, 0.7)
                      Shootcannon2(tehs, 2, cprt57)
                      for i = 0, 1, 0.5 do
                        swait()
                        chandlewld.C0 = clerp(chandlewld.C0, euler(-0.4, 0, 0) * cf(0, 1, 0), 0.5)
                        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.5)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.5)
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.2, 0, 0.5) * euler(0, 1.1, 0), 0.35)
                        LW.C0 = clerp(LW.C0, cf(-0.8, 0.3, -0.5) * euler(0.6, 0, 1) * euler(0, -1, 0), 0.35)
                        RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.4), 0.5)
                        LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.5)
                        if Stagger.Value ~= true and StunT.Value > Stun.Value then
                          do
                            if StaggerHit.Value == true then
                              break
                            end
                            -- DECOMPILER ERROR at PC2352: LeaveBlock: unexpected jumping out IF_THEN_STMT

                            -- DECOMPILER ERROR at PC2352: LeaveBlock: unexpected jumping out IF_STMT

                          end
                        end
                      end
                      chandlewld.C0 = clerp(chandlewld.C0, euler(-0.2, 0, 0) * cf(0, 1, 0), 1)
                      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 1)
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 1)
                      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.4, 0, 0.2) * euler(0, 1.1, 0), 1)
                      LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1, 0), 1)
                      RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.4), 1)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 1)
                    end
                  else
                    do
                      if cmode == "ShotgunVolley" then
                        for i = 1, 3 do
                          Torso.Velocity = RootPart.CFrame.lookVector * -20
                          for i = 1, 3 do
                            tehs = vt(math.random(-300, 300) / 100, math.random(-300, 300) / 100, math.random(-300, 300) / 100) * Torso.Position - MMouse.Hit.p.magnitude / 100
                            if i == 1 then
                              tehs = vt(0, 0, 0)
                            end
                            mana.Value = mana.Value - 1
                            so("16211041", cprt57, 0.6, 0.7)
                            Shootcannon2(tehs, 2, cprt57)
                          end
                          for i = 0, 1, 0.5 do
                            swait()
                            chandlewld.C0 = clerp(chandlewld.C0, euler(-0.4, 0, 0) * cf(0, 1, 0), 0.4)
                            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, -1) * euler(0, 0.1, 0), 0.4)
                            RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.2, 0, 0.5) * euler(0, 1.1, 0), 0.4)
                            LW.C0 = clerp(LW.C0, cf(-0.8, 0.3, -0.5) * euler(0.6, 0, 1) * euler(0, -1, 0), 0.4)
                            RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.2), 0.4)
                            LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.2), 0.4)
                            if Stagger.Value ~= true and StunT.Value > Stun.Value then
                              do
                                if StaggerHit.Value == true then
                                  break
                                end
                                -- DECOMPILER ERROR at PC2780: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                -- DECOMPILER ERROR at PC2780: LeaveBlock: unexpected jumping out IF_STMT

                              end
                            end
                          end
                          for i = 0, 1, 0.5 do
                            swait()
                            chandlewld.C0 = clerp(chandlewld.C0, euler(-0.2, 0, 0) * cf(0, 1, 0), 0.5)
                            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.5)
                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.5)
                            RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.4, 0, 0.2) * euler(0, 1.1, 0), 0.5)
                            LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1, 0), 0.5)
                            RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.4), 0.5)
                            LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.5)
                            if Stagger.Value ~= true and StunT.Value > Stun.Value then
                              do
                                if StaggerHit.Value == true then
                                  break
                                end
                                -- DECOMPILER ERROR at PC2962: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                -- DECOMPILER ERROR at PC2962: LeaveBlock: unexpected jumping out IF_STMT

                              end
                            end
                          end
                        end
                      end
                      do
                        gairo.Parent = RootPart
                        if cmode == "Rapid" then
                          cmode = "Shotgun"
                        else
                          if cmode == "Shotgun" then
                            cmode = "Volley"
                          else
                            if cmode == "Volley" then
                              cmode = "ShotgunVolley"
                            else
                              if cmode == "ShotgunVolley" then
                                cmode = "Shotgun"
                              end
                            end
                          end
                        end
                        cooldowns[1] = 95
                        attack = false
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

do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 15 then
    attack = true
    cooldowns[2] = 0
    mana.Value = mana.Value - 15
    if mode == "Gloves" then
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * euler(0.2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.45, -0.4) * euler(0.4, 0, 0.4), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.2, 0.45, -0.4) * euler(0.4, 0, -0.4), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0, -1.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC185: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC185: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      local sball4 = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
      smsh4 = mesh("SpecialMesh", sball4, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
      local swld = weld(sball4, sball4, Torso, euler(0, 0, 0) * cf(0, 1, 1))
      for d = 1, 2 do
        for i = 0, 1, 0.2 do
          swait()
          smsh4.Scale = smsh4.Scale + vt(1.2, 1.2, 1.2)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * euler(0.2, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(0.9, 0.4, -0.4) * euler(0.3, 0, -0.2), 0.4)
          LW.C0 = clerp(LW.C0, cf(-0.9, 0.4, -0.4) * euler(0.3, 0, 0.2), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0, -1.4), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.4)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC391: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC391: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        if d == 1 then
          for i = 0, 1, 0.2 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * euler(0.2, 0, 0), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.2, 0.4, -0.4) * euler(0.35, 0, 0.3), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.2, 0.4, -0.4) * euler(0.35, 0, -0.3), 0.4)
            RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(-0.1, 0, -1.4), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.4)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
      swld.Part1 = RightArm
      swld.C0 = cf(0.6, 1, 0)
      for i = 0, 1, 0.2 do
        swait()
        swld.C0 = clerp(swld.C0, cf(0.3, 2.2, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.05, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.1, 0.7, -0.1) * euler(3.2, 0, -0.3), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.1, 0.7, -0.1) * euler(3.2, 0, 0.3), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -0.1), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC704: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC704: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      Humanoid.Jump = true
      for i = 0, 1, 0.2 do
        swait()
        swld.C0 = clerp(swld.C0, cf(0.3, 2.2, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(-0.2, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.1, 0.7, -0.1) * euler(3.5, 0, -0.3), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.1, 0.7, -0.1) * euler(3.5, 0, 0.3), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.1), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC862: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC862: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      da = 0
      for i = 0, 1, 0.2 do
        swait()
        da = da + 1
        if da == 3 then
          so("169445073", Torso, 0.8, 0.9)
          Shoot2(vt(0, 0, 0), 1.4, sball4)
          sball4.Parent = nil
        end
        if da < 3 then
          RW.C0 = clerp(RW.C0, cf(1.1, 0.5, -0.3) * euler(1, 0, -0.3), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.1, 0.5, -0.3) * euler(1, 0, 0.3), 0.4)
        else
          RW.C0 = clerp(RW.C0, cf(1.1, 0.5, -0.3) * euler(-0.5, 0, 0.3), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.1, 0.5, -0.3) * euler(-0.5, 0, -0.3), 0.4)
        end
        swld.C0 = clerp(swld.C0, cf(0.3, 2.2, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.05, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.1), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1082: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1082: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      sball4.Parent = nil
    else
      do
        so("16211041", cprt57, 1, 0.6)
        Shoot2(vt(0, 0, 0), 1.8, cprt57)
        for i = 1, 0, -0.1 do
          swait()
          Torso.Velocity = RootPart.CFrame.lookVector * -40 * i
          chandlewld.C0 = clerp(chandlewld.C0, euler(-0.4, 0, 0) * cf(0, 1, 0), 0.45)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, 0) * euler(0, 0, -1) * euler(0, 0.1, 0), 0.45)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.2, 0, 0.5) * euler(0, 1.1, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-0.8, 0.3, -0.5) * euler(0.6, 0, 1) * euler(0, -1, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.2), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.2), 0.45)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC1300: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1300: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        attack = false
      end
    end
  end
end

do3 = function()
  if doing3 == true then
    doing3 = false
    return 
  end
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 5 then
    attack = true
    mana.Value = mana.Value - 5
    doing3 = true
    spill = false
    local mdecc = Instance.new("NumberValue", Decrease)
    mdecc.Name = "DecreaseDef"
    mdecc.Value = 0
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      if mode == "Gloves" then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.2) * euler(0, -0.3, 0), 0.3)
      else
        chandlewld.C0 = clerp(chandlewld.C0, euler(-1.4, 0, 0) * cf(0, 0.8, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.1, 0.5, 0.2) * euler(1.7, 0, 0.8) * euler(0, 0.2, 0), 0.3)
      end
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.4, 0.2) * euler(-0.4, 0, 0.4), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.05), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC243: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC243: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if mode == "Gloves" then
      mugdo = true
    else
      gairo.Parent = nil
      Humanoid.AutoRotate = true
    end
    local mug = part(3, effects, 0, 0, BrickColor.new(NewColraa), "Mug", vt())
    mmsh = mesh("SpecialMesh", mug, "FileMesh", "32023686", vt(0, 0, 0), vt(1.2, 1.2, 1.2))
    local mwld = weld(mug, mug, LeftArm, euler(1.57, 0, -1.57) * cf(0, 1.45, 0))
    local mug2 = part(3, mug, 0, 0, BrickColor.new("Cocoa"), "Mug2", vt())
    mmsh2 = mesh("CylinderMesh", mug2, "nil", "nil", vt(0, 0, 0), vt(3, 3, 3))
    local mwld2 = weld(mug2, mug2, mug, euler(0, 0, 0) * cf(0.13, 0, 0))
    local steam = part(3, effects, 0, 1, BrickColor.new("Black"), "Steam", vt(0.4, 0.5, 0.4))
    steam.Anchored = true
    parti2 = parti:Clone()
    parti2.Parent = steam
    daa = 0
    local bleh = math.random(200, 400)
    while 1 do
      if doing3 == true and spill == false then
        swait()
        steam.CFrame = mug2.CFrame
        if mode == "Gloves" then
          manainc = 6
        else
          manainc = 8
        end
        daa = daa + 1
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
        if mode == "Gloves" then
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.1) * euler(0, 0, 0), 0.3)
        else
          chandlewld.C0 = clerp(chandlewld.C0, euler(-1.4, 0, 0) * cf(0, 0.8, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.1, 0.5, 0.2) * euler(1.7, 0, 0.8) * euler(0, 0.2, 0), 0.3)
        end
        if daa < bleh then
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.05, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.1) * euler(1.2, 0, 0.8) * euler(0, -0.2, 0), 0.1)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          if daa == bleh - 1 then
            LW.C0 = cf(-1.5, 0.5, 0.1) * euler(1.2, 0, 0.8) * euler(0, -0.2, 0)
            LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
          end
        else
          if bleh <= daa and daa < bleh + 70 then
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.2)
            if daa < bleh + 20 then
              LW.C0 = clerp(LW.C0, cf(-1.8, 0.6, 0.1) * euler(2, 0, 1) * euler(0, 0, 0), 0.1)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0.4, 0), 0.2)
            else
              LW.C0 = clerp(LW.C0, cf(-1.8, 0.6, 0.1) * euler(1.9, 0, 1) * euler(0, 0, 0), 0.4)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0.35, 0), 0.4)
            end
          else
            if bleh + 70 <= daa then
              bleh = math.random(200, 400)
              daa = 0
            end
          end
        end
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.05), 0.3)
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    if mode == "Gloves" then
      manainc = 12
    else
      manainc = 999
    end
    cooldowns[3] = 0
    if spill == false then
      if doing3 == false then
        for i = 0, 1, 0.05 do
          swait()
          steam.CFrame = mug2.CFrame
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
          if mode == "Gloves" then
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.1) * euler(0, 0, 0), 0.3)
          else
            chandlewld.C0 = clerp(chandlewld.C0, euler(-1.4, 0, 0) * cf(0, 0.8, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.1, 0.5, 0.2) * euler(1.7, 0, 0.8) * euler(0, 0.2, 0), 0.3)
          end
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.1, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.8, 0.8, 0.1) * euler(2, 0, 1) * euler(0, -0.8, 0), 0.3)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.05), 0.3)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC1009: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1009: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        mana.Value = mana.Value + 10
        mug2.Parent = nil
        parti2.Enabled = false
        game:GetService("Debris"):AddItem(steam, 5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          if StaggerHit.Value == true then
            DecreaseStat(Character, "Defense", -0.15, 300)
            DecreaseStat(Character, "Movement", -0.1, 300)
            if isjugg == false then
              coroutine.resume(coroutine.create(function(Hum, Dam)
    h:TakeDamage(Damage)(Humanoid, -10)
  end
), h, Damage)
              showDamage(Character, 10, "Heal")
            end
            for i = 0, 1, 0.07 do
              swait()
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.25)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.25)
              if mode == "Gloves" then
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.2) * euler(0, -0.3, 0), 0.25)
              else
                chandlewld.C0 = clerp(chandlewld.C0, euler(-1.4, 0, 0) * cf(0, 0.8, 0), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.1, 0.5, 0.2) * euler(1.7, 0, 0.8) * euler(0, 0.2, 0), 0.3)
              end
              LW.C0 = clerp(LW.C0, cf(-1.3, 0.4, 0.2) * euler(-0.4, 0, 0.4), 0.25)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05), 0.25)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.05), 0.25)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC1262: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC1262: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            mdecc.Parent = nil
            mug.Parent = nil
            parti2.Enabled = false
            game:GetService("Debris"):AddItem(steam, 5)
            if mode ~= "Gloves" then
              gairo.Parent = RootPart
              Humanoid.AutoRotate = false
            end
            for i = 0, 1, 0.1 do
              swait()
              steam.CFrame = mug2.CFrame
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.05, 0, 0), 0.2)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.1) * euler(1.4, 0, -0.6) * euler(0, -1, 0), 0.3)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05) * euler(0, -1, 0), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.1), 0.3)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC1437: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC1437: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            parti2d = parti2a:Clone()
            parti2d.Parent = steam
            cf1 = nil
            cf2 = nil
            cf3 = nil
            cf4 = nil
            cf5 = nil
            refc = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
            refc.Anchored = true
            refc.CFrame = cf(Torso.Position)
            game:GetService("Debris"):AddItem(refc, 1)
            numc = 0
            for i = 0, 1.7, 0.1 do
              swait()
              if numc == 1 then
                cf1 = steam.CFrame * cf(0, 2, 0)
              end
              if numc == 2 then
                cf2 = steam.CFrame * cf(0, 2, 0)
              end
              if numc == 3 then
                cf3 = steam.CFrame * cf(0, 2, 0)
              end
              if numc == 4 then
                cf4 = steam.CFrame * cf(0, 2, 0)
              end
              if numc == 5 then
                cf5 = steam.CFrame * cf(0, 2, 0)
              end
              if cf1 ~= nil then
                refc.CFrame = cf1
                MagniDamage(refc, 2, 4, 6, 0, "Normal", RootPart, 1, 1, (math.random(2, 4)), nil, nil, true, "Defense", 0.1, 200)
                cf1 = cf1 * cf(0, 0.3, -0.2)
              end
              if cf2 ~= nil then
                refc.CFrame = cf2
                MagniDamage(refc, 2, 4, 6, 0, "Normal", RootPart, 1, 1, (math.random(2, 4)), nil, nil, true, "Defense", 0.1, 200)
                cf2 = cf2 * cf(0, 0.35, -0.2)
              end
              if cf3 ~= nil then
                refc.CFrame = cf3
                MagniDamage(refc, 2, 4, 6, 0, "Normal", RootPart, 1, 1, (math.random(2, 4)), nil, nil, true, "Defense", 0.1, 200)
                cf3 = cf3 * cf(0, 0.4, -0.2)
              end
              if cf4 ~= nil then
                refc.CFrame = cf4
                MagniDamage(refc, 2, 4, 6, 0, "Normal", RootPart, 1, 1, (math.random(2, 4)), nil, nil, true, "Defense", 0.1, 200)
                cf4 = cf4 * cf(0, 0.45, -0.2)
              end
              if cf5 ~= nil then
                refc.CFrame = cf5
                MagniDamage(refc, 2, 4, 6, 0, "Normal", RootPart, 1, 1, (math.random(2, 4)), nil, nil, true, "Defense", 0.1, 200)
                cf5 = cf5 * cf(0, 0.5, -0.2)
              end
              numc = numc + 1
              if i > 0.45 then
                parti2d.Enabled = false
                parti2.Enabled = false
                mug2.Parent = nil
              end
              steam.CFrame = mug2.CFrame
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.3, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.25)
              LW.C0 = clerp(LW.C0, cf(-1.1, 0.5, -0.4) * euler(1.3, 0, 0.8) * euler(0, -1.5, 0), 0.25)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05) * euler(0, -1, 0), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.1), 0.3)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC1879: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC1879: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            parti2d.Enabled = false
            for i = 0, 1, 0.07 do
              swait()
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.25)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.25)
              LW.C0 = clerp(LW.C0, cf(-1.3, 0.4, 0.2) * euler(-0.4, 0, 0.4), 0.25)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05), 0.25)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.05), 0.25)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC2003: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC2003: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            mdecc.Parent = nil
            mug.Parent = nil
            parti2.Enabled = false
            game:GetService("Debris"):AddItem(steam, 5)
            if mode ~= "Gloves" then
              gairo.Parent = RootPart
              Humanoid.AutoRotate = false
            end
            mugdo = false
            attack = false
          end
        end
      end
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
  if cooldownmax <= cooldowns[4] and mana.Value >= 30 then
    if mode == "Gloves" then
      WinterShooter()
    end
    attack = true
    cooldowns[4] = 0
    for i = 0, 1, 0.05 do
      swait()
      chandlewld.C0 = clerp(chandlewld.C0, euler(0.4, 0, 0) * cf(0, 1, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0) * euler(0, 0, -0.7), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.6, 0, -0.2) * euler(0, 1, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.7) * euler(0.8, 0, 0.4) * euler(0, -1, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.7, 0) * euler(-0.2, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.7, 0) * euler(0, 0, 0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC224: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC224: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("333475929", cprt57, 1, 1)
    mana.Value = mana.Value - 30
    ShootIce(cprt57)
    Torso.Velocity = RootPart.CFrame.lookVector * -100
    cannonparti1.Enabled = true
    cannonparti2.Enabled = true
    for i = 0, 1, 0.15 do
      swait()
      chandlewld.C0 = clerp(chandlewld.C0, euler(-0.4, 0, 0) * cf(0, 1, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, 0) * euler(0, 0, -1) * euler(0, 0.1, 0) * euler(0, 0, -6.28 * i), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(1.2, 0, 0.5) * euler(0, 1.3, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-0.8, 0.3, -0.5) * euler(1.4, 0, 1) * euler(0, -1, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.2), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.2), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC448: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC448: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      if i > 0.5 then
        cannonparti1.Enabled = false
        cannonparti2.Enabled = false
      end
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, 0) * euler(0, 0, -1) * euler(0, 0.1, 0) * euler(0, 0, -1), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC508: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC508: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    cannonparti1.Enabled = false
    cannonparti2.Enabled = false
    attack = false
  end
end

computeLaunchAngle = function(dx, dy, grav)
  local g = math.abs(grav)
  VELOCITY = 200
  local inRoot = VELOCITY * VELOCITY * VELOCITY * VELOCITY - g * (g * dx * dx + 2 * dy * VELOCITY * VELOCITY)
  if inRoot <= 0 then
    return 0.25 * math.pi
  end
  local root = math.sqrt(inRoot)
  local inATan1 = (VELOCITY * VELOCITY + root) / (g * dx)
  local inATan2 = (VELOCITY * VELOCITY - root) / (g * dx)
  local a1 = math.atan(inATan1)
  local a2 = math.atan(inATan2)
  if a1 < a2 then
    return a1
  end
  return a2
end

computeDirection = function(vec)
  local lenSquared = vec.magnitude * vec.magnitude
  local invSqrt = 1 / math.sqrt(lenSquared)
  return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

Shootcombo = function(spread, multip, partcf)
  local MouseLook = cf((partcf.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  local targ = MMouse.Hit.p - partcf.Position
  local dist = targ.magnitude
  if dist > 500 then
    dist = 500
  end
  MouseLook = MouseLook * euler(mr(dist / (9.8 * multip)), 0, 0)
  local sball = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
  sball.Anchored = true
  smsh = mesh("SpecialMesh", sball, "Sphere", "nil", vt(0, 0, 0), vt(5, 5, 5))
  table.insert(Effects, {MouseLook, "Shoot", 100, partcf.Position, 4, 5, 0, sball, 5, multip})
end

Shootcannon = function(spread, multip, partcf)
  local MouseLook = cf((partcf.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  local targ = MMouse.Hit.p - partcf.Position
  local dist = targ.magnitude
  if dist > 500 then
    dist = 500
  end
  MouseLook = MouseLook * euler(mr(dist / (9.8 * multip)), 0, 0)
  local sball = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
  sball.Anchored = true
  sball.CFrame = partcf.CFrame
  smsh = mesh("SpecialMesh", sball, "Sphere", "nil", vt(0, 0, 0), vt(8, 8, 8))
  table.insert(Effects, {MouseLook, "Shoot2", 100, partcf.Position, 3, 5, 0, sball, 5, multip})
end

Shootcannon2 = function(spread, multip, partcf)
  local MouseLook = cf((partcf.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  local targ = MMouse.Hit.p - partcf.Position
  local dist = targ.magnitude
  if dist > 500 then
    dist = 500
  end
  MouseLook = MouseLook * euler(mr(dist / (9.8 * multip)), 0, 0)
  local sball = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
  sball.Anchored = true
  sball.CFrame = partcf.CFrame
  smsh = mesh("SpecialMesh", sball, "Sphere", "nil", vt(0, 0, 0), vt(7, 7, 7))
  table.insert(Effects, {MouseLook, "Shoot2", 100, partcf.Position, 2, 4, 0, sball, 5, multip})
end

Shoot2 = function(spread, multip, partcf)
  local MouseLook = cf((partcf.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  local targ = MMouse.Hit.p - partcf.Position
  local dist = targ.magnitude
  if dist > 500 then
    dist = 500
  end
  MouseLook = MouseLook * euler(mr(dist / (9.8 * multip)), 0, 0)
  local sball = part(3, effects, 0, 0, BrickColor.new(NewCol3), "Snowball", vt())
  sball.Anchored = true
  sball.CFrame = partcf.CFrame
  smsh = mesh("SpecialMesh", sball, "Sphere", "nil", vt(0, 0, 0), vt(14, 14, 14))
  table.insert(Effects, {MouseLook, "Shoot3", 100, partcf.Position, 10, 12, 0, sball, 5, multip})
end

ShootIce = function(partcf)
  local MouseLook = cf((partcf.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
  local targ = MMouse.Hit.p - partcf.Position
  local dist = targ.magnitude
  if dist > 500 then
    dist = 500
  end
  local sball = part(3, effects, 0.5, 0, BrickColor.new("Cyan"), "Snowball", vt())
  sball.Anchored = true
  smsh = mesh("SpecialMesh", sball, "FileMesh", "1778999", vt(0, 0, 0), vt(1, 3, 1))
  sball.CFrame = partcf.CFrame
  local partic1 = icicleparti1:Clone()
  partic1.Parent = sball
  partic1.Enabled = true
  local partic2 = icicleparti2:Clone()
  partic2.Parent = sball
  partic2.Enabled = true
  so("333475957", sball, 1, 1)
  table.insert(Effects, {MouseLook, "ShootIce", 100, partcf.Position, 10, 12, 0, sball, 10, multip, partic1, partic2})
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
    end
    if cangui == false then
      showDamage(Model, display, "Debuff")
      d.Value = Amount
    end
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
  local mg = LP.p - point1.p.magnitude
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
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
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
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
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

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
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
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    RecentEnemy.Value = hit.Parent
    game:GetService("Debris"):AddItem(c, 0.5)
    minim = minim
    maxim = maxim
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
Damage = Damage/5
h:TakeDamage(Damage)
if hit.Parent:FindFirstChild("Head") ~= nil then
ShowDamage(hit.Parent:FindFirstChild("Head").Position+vt(0,2,0), Damage)
end
    if breakfreeze == true then
      for i = 1, #FStacks do
        if tors == FStacks[i][1] and FStacks[i][3] == true then
          so("338594737", hit, 1, 1)
          Damage = Damage + math.random(FStacks[i][4].Value * 1.1, FStacks[i][4].Value * 1.3)
          incstun = incstun + math.random(FStacks[i][4].Value * 1.8, FStacks[i][4].Value * 2)
        end
      end
    end
    do
      blocked = false
      enblock = nil

  end
  end
end

function ShowDamage(Pos, Text)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Color = BrickColor.new("Medium blue")
	local EffectPart = part("Custom",modelzorz,0,1,Color,"Effect",Vector3.new(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color.Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (1.5 + 0.1))
	EffectPart.Parent = modelzorz
	delay(0, function()
		local Frames = (1.5 / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:remove()
		end
	end)
end

combo = 0
ob1d = function(mouse)
  if spill == false then
    spill = true
  end
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if mode == "Winter" then
    attackcannon()
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
  if key == "c" and doing3 == true then
    doing3 = false
  end
  if attack == true then
    return 
  end
  if key == "f" and mode == "Gloves" then
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
  if key == "e" and (mana.Value >= 30 or mode == "Winter") then
    WinterShooter()
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
  if key == "z" then
    holde = false
  end
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
end

ds = function(mouse)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Tundrus loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local walk = 0
local walkforw = true
local oldhealth = Humanoid.Health
while 1 do
  swait()
  col = Player.TeamColor
  for _,c in pairs(game.Teams:children()) do
    if c.TeamColor == col and c.Name == "Juggernaut" then
      isjugg = true
    end
  end
  effects.Parent = Character
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
        Welds[i].Parent = cprt1
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
    if Humanoid.Health < oldhealth then
      damage = oldhealth - Humanoid.Health
      ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(Torso.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
      game:GetService("Debris"):AddItem(ref, 5)
      hitfloorsno = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloorsno ~= nil then
        local snow = part(3, effects, 0, 0, BrickColor.new("White"), "Snow", vt())
        snow.Anchored = true
        snow.Material = "Ice"
        snow.CFrame = cf(posfloorsno)
        smsh = mesh("CylinderMesh", snow, "", "", vt(0, 0, 0), vt(1, 2, 1))
        table.insert(Effects, {snow, "LeakSnow", smsh, math.random(300, 600), 50, math.random(3000, 9000) / 100})
      end
    end
    do
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
      local stunnum2 = 40
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
        if Anim == "Walk" then
          if walkforw == true then
            RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
            if (attack == false and mode == "Gloves" and rarmmove == true) or mugdo == true then
              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
            else
              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            end
            if attack == false and mode == "Gloves" and larmmove == true then
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0.5, 0, 0), Mvmt.Value * 10 / 50)
            else
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            end
          else
            RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
            if (attack == false and mode == "Gloves" and rarmmove == true) or mugdo == true then
              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0.5, 0, 0), Mvmt.Value * 10 / 50)
            else
              RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            end
            if attack == false and mode == "Gloves" and larmmove == true then
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
            else
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            end
          end
        else
          RH.C1 = clerp(RH.C1, RHC1, 0.2)
          LH.C1 = clerp(LH.C1, LHC1, 0.2)
          RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        end
        do
          if mode == "Winter" then
            local gunpos = vt(MMouse.Hit.p.x, Head.Position.Y, MMouse.Hit.p.z)
            gairo.cframe = cf(Head.Position, gunpos)
            cwld33a.C0 = cwld33a.C0 * euler(0, -0.08, 0)
          end
          if 1 < RootPart.Velocity.y and hitfloor == nil then
            Anim = "Jump"
            if attack == false then
              if mode == "Gloves" then
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.2), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.2), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
              else
                chandlewld.C0 = clerp(chandlewld.C0, euler(-0.2, 0, 0) * cf(0, 1, 0), 0.15)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.15)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.15)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.4, 0, 0.2) * euler(0, 1.1, 0), 0.15)
                LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1, 0), 0.15)
                RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.4), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.15)
              end
            end
          else
            if RootPart.Velocity.y < -1 and hitfloor == nil then
              Anim = "Fall"
              if attack == false then
                if mode == "Gloves" then
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                  Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                else
                  chandlewld.C0 = clerp(chandlewld.C0, euler(-0.2, 0, 0) * cf(0, 1, 0), 0.15)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.15)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.15)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.4, 0, 0.2) * euler(0, 1.1, 0), 0.15)
                  LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1, 0), 0.15)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.4), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.15)
                end
              end
            else
              if torvel < 1 and hitfloor ~= nil then
                Anim = "Idle"
                if attack == false then
                  if mode == "Gloves" then
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.05, 0, 0), 0.15)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.15)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4 - (donum) / 3, 0, 0.2 + (donum) / 3) * euler(0, -0.3, 0), 0.15)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4 - (donum) / 3, 0, -0.2 - (donum) / 3), 0.15)
                    RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05), 0.2)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.05), 0.2)
                  else
                    chandlewld.C0 = clerp(chandlewld.C0, euler(-0.2, 0, 0) * cf(0, 1, 0), 0.15)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.15)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.15)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.4, 0, 0.2) * euler(0, 1.1, 0), 0.15)
                    LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1, 0), 0.15)
                    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.4), 0.15)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.15)
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
                    if mode == "Gloves" then
                      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.2)
                      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.2)
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
                    else
                      chandlewld.C0 = clerp(chandlewld.C0, euler(-0.2, 0, 0) * cf(0, 1, 0), 0.15)
                      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.15)
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.15)
                      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.4, 0, 0.2) * euler(0, 1.1, 0), 0.15)
                      LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1, 0), 0.15)
                      RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(-0.2, 0, -0.4), 0.15)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, 0.1), 0.15)
                    end
                  end
                else
                  if 30 <= torvel and hitfloor ~= nil then
                    Anim = "Run"
                    if attack == false then
                      if mode == "Gloves" then
                        Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.2)
                        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.2)
                        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
                      else
                        chandlewld.C0 = clerp(chandlewld.C0, euler(-0.2, 0, 0) * cf(0, 1, 0), 0.15)
                        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.15)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.15)
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0.1) * euler(0.4, 0, 0.2) * euler(0, 1.1, 0), 0.15)
                        LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1, 0), 0.15)
                        RH.C0 = clerp(RH.C0, cf(1, -1, -0.1) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.05), 0.15)
                        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.05), 0.15)
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
                  if Thing[2] == "CloneEf" then
                    if Thing[3] <= 500 then
                      Thing[3] = Thing[3] + 1
                      if 10 <= Thing[4] then
                        Thing[4] = 0
                        Clone()
                      end
                      Thing[4] = Thing[4] + 1
                    else
                      table.remove(Effects, e)
                    end
                  end
                  if Thing[2] == "ShootIce" then
                    local Look = Thing[1]
                    local hit, pos = rayCast(Thing[4], Look.lookVector, Thing[9], Character)
                    local mag = Thing[4] - pos.magnitude
                    Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * euler(-1.57, 0, 0)
                    Thing[4] = Thing[4] + Look.lookVector * Thing[9]
                    Thing[3] = Thing[3] - 1
                    if hit ~= nil then
                      Thing[3] = 0
                      DecreaseStat(hit.Parent, "Movement", 0.02, 50, false)
                      ref = part(3, effects, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                      ref.Anchored = true
                      ref.CFrame = cf(pos)
                      game:GetService("Debris"):AddItem(ref, 1)
                      ref2 = part(3, effects, 0, 1, BrickColor.new("Really red"), "Reference", vt(5, 5, 5))
                      ref2.Anchored = true
                      ref2.CFrame = cf(pos)
                      so("333475981", ref2, 1, 1.4)
                      game:GetService("Debris"):AddItem(ref2, 5)
                      fparti1 = freezeparti1:Clone()
                      fparti1.Parent = ref2
                      fparti1.Enabled = true
                      fparti2 = freezeparti2:Clone()
                      fparti2.Parent = ref2
                      fparti2.Enabled = true
                      table.insert(Effects, {ref2, "IceParti", 20, fparti1, fparti2})
                      freeze = true
                      MagniDamage(ref, 10, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(10, 15)), nil, nil, true)
                      freeze = false
                      for i = 1, 5 do
                        BreakEffect(BrickColor.new("Cyan"), ref.CFrame, math.random(20, 80) / 100, math.random(2, 10), math.random(20, 80) / 100)
                      end
                      for i = 1, 5 do
                        local freezepart = part(3, workspace, 0.5, math.random(10, 30) / 100, BrickColor.new("Bright blue"), "Ice Part", vt(math.random(30, 100) / 100, math.random(30, 100) / 100, math.random(30, 100) / 100))
                        freezepart.CanCollide = true
                        freezepart.CFrame = ref.CFrame * cf(math.random(-300, 300) / 100, math.random(0, 200) / 100, math.random(-300, 300) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                        freezepart.Velocity = vt(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                        game:GetService("Debris"):AddItem(freezepart, 5)
                      end
                    end
                    do
                      do
                        if Thing[3] <= 0 then
                          Thing[8].Transparency = 1
                          Thing[11].Enabled = false
                          Thing[12].Enabled = false
                          game:GetService("Debris"):AddItem(Thing[8], 5)
                          table.remove(Effects, e)
                        end
                        if Thing[2] == "Shoot" then
                          local Look = Thing[1]
                          Thing[1] = Thing[1] * euler(mr(-1), 0, 0)
                          if Thing[5] < 6 then
                            Thing[5] = Thing[5] + 0.05
                            Thing[6] = Thing[6] + 0.05
                          end
                          local hit, pos = rayCast(Thing[4], Look.lookVector, Thing[9] * Thing[10], Character)
                          local mag = Thing[4] - pos.magnitude
                          Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos)
                          Thing[4] = Thing[4] + Look.lookVector * Thing[9] * Thing[10]
                          Thing[3] = Thing[3] - 1
                          if hit ~= nil then
                            Thing[3] = 0
                            DecreaseStat(hit.Parent, "Movement", 0.02, 50, false)
                            Damagefunc(hit, Thing[5] * 1.4, Thing[6] * 1.4, Thing[7], "Normal", RootPart, 0.03, 2, (math.random(1, 3)), nil, nil, true)
                            ref = part(3, effects, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                            ref.Anchored = true
                            ref.CFrame = cf(pos)
                            game:GetService("Debris"):AddItem(ref, 1)
                            MagniDamage(ref, 3, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 3)), nil, nil, true)
                            so("333511851", ref, 0.8, 0.9)
                          do
                            do
                              if Thing[3] <= 0 then
                                Thing[8].Parent = nil
                                table.remove(Effects, e)
                              end
                              if Thing[2] == "Shoot2" then
                                local Look = Thing[1]
                                Thing[1] = Thing[1] * euler(mr(-1), 0, 0)
                                if Thing[5] < 10 then
                                  Thing[5] = Thing[5] + 0.1
                                  Thing[6] = Thing[6] + 0.1
                                end
                                local hit, pos = rayCast(Thing[4], Look.lookVector, Thing[9] * Thing[10], Character)
                                local mag = Thing[4] - pos.magnitude
                                Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos)
                                Thing[4] = Thing[4] + Look.lookVector * Thing[9] * Thing[10]
                                Thing[3] = Thing[3] - 1
                                if hit ~= nil then
                                  Thing[3] = 0
                                  DecreaseStat(hit.Parent, "Movement", 0.02, 70, false)
                                  Damagefunc(hit, Thing[5] * 1.4, Thing[6] * 1.4, Thing[7], "Normal", RootPart, 0.03, 2, (math.random(1, 3)), nil, nil, true)
                                  ref = part(3, effects, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                                  ref.Anchored = true
                                  ref.CFrame = cf(pos)
                                  game:GetService("Debris"):AddItem(ref, 1)
                                  MagniDamage(ref, 3, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 3)), nil, nil, true)
                                  so("333511851", ref, 0.8, 0.9)
                                do
                                  do
                                    if Thing[3] <= 0 then
                                      Thing[8].Parent = nil
                                      table.remove(Effects, e)
                                    end
                                    if Thing[2] == "Shoot3" then
                                      if hit ~= nil then
                                        Thing[3] = 0
                                        DecreaseStat(hit.Parent, "Movement", 0.02, 50, false)
                                        Damagefunc(hit, Thing[5] * 1.4, Thing[6] * 1.4, Thing[7], "Normal", RootPart, 0.03, 2, (math.random(1, 3)), nil, nil, true, "Movement", 0.1, 100)
                                        ref = part(3, effects, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                                        ref.Anchored = true
                                        ref.CFrame = cf(pos)
                                        game:GetService("Debris"):AddItem(ref, 1)
                                        MagniDamage(ref, 3, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 3)), nil, nil, true, "Movement", 0.1, 100)
                                        so("333511851", ref, 0.8, 0.9)
                                        MagniDamage(ref, 14, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 3)), nil, nil, true, "Movement", 0.3, 100)
                                      end
                                      do
                                        do
                                          if Thing[3] <= 0 then
                                            Thing[8].Parent = nil
                                            table.remove(Effects, e)
                                          end
                                          if Thing[2] == "IceParti" then
                                            if 0 < Thing[3] then
                                              Thing[3] = Thing[3] - 1
                                            else
                                              Thing[4].Enabled = false
                                              Thing[5].Enabled = false
                                              table.remove(Effects, e)
                                            end
                                          end
                                          do
                                            do
                                              if Thing[2] == "LeakSnow" then
                                                if 10 < Thing[4] then
                                                  Thing[4] = Thing[4] - 1
                                                  if Thing[3].Scale.X < Thing[6] then
                                                    Thing[3].Scale = Thing[3].Scale + vt(0.8, 0, 0.8)
                                                  end
                                                  if 50 < Thing[5] then
                                                    size = Thing[3].Scale.X / 10
                                                    MagniDebuff(Thing[1], size, "Movement", 0.05, 100)
                                                    MagniDebuff(Thing[1], size, "Defense", 0.05, 50)
                                                    Thing[5] = 0
                                                  end
                                                  Thing[5] = Thing[5] + 1
                                                else
                                                  if 0 < Thing[4] then
                                                    Thing[4] = Thing[4] - 1
                                                    Thing[1].Transparency = Thing[1].Transparency + 0.1
                                                  else
                                                    Thing[1].Parent = nil
                                                    table.remove(Effects, e)
                                                  end
                                                end
                                              end
                                              if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "CloneEf" and Thing[2] ~= "Shoot" and Thing[2] ~= "Shoot2" and Thing[2] ~= "Shoot3" and Thing[2] ~= "ShootIce" and Thing[2] ~= "IceParti" and Thing[2] ~= "LeakSnow" then
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
                                                else
                                                  Part.Parent = nil
                                                  table.remove(Effects, e)
                                                end
                                              end
                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                              -- DECOMPILER ERROR at PC10492: LeaveBlock: unexpected jumping out IF_STMT

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
            fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / 100, 0)), nil, 1, 0.4, true)
          end
          fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
          if mana.Value <= 0 and attack == false and mode == "Winter" then
            coroutine.resume(coroutine.create(function()
  WinterShooter()
end
))
          end
          if mana.Value < 0 then
            mana.Value = 0
          end
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
        end
      end
    end
  end
end
end
end