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
if Character:findFirstChild("Shirt Graphic") then
  tshirt = Character:findFirstChild("Shirt Graphic"):Clone()
else
  tshirt = nil
end
local tshirt2 = Torso:findFirstChild("roblox"):Clone()
repeat
wait()
until
Character["Body Colors"] ~= nil
local oHeadCol = Character["Body Colors"].HeadColor
local oTorsoCol = Character["Body Colors"].TorsoColor
local oLeftArmCol = Character["Body Colors"].LeftArmColor
local oRightArmCol = Character["Body Colors"].RightArmColor
local oLeftLegCol = Character["Body Colors"].LeftLegColor
local oRightLegCol = Character["Body Colors"].RightLegColor
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local ghostmode = false
local clone = nil
local testpart = (it("Part"))
local cRootJoint, cNeck, cRW, cLW, cRH, cLH = nil, nil, nil, nil, nil, nil
local bodycolors = Character:findFirstChild("Body Colors")
local shirt = Character:findFirstChild("Shirt")
local pants = Character:findFirstChild("Pants")
local face = Head:findFirstChild("face")
local drainmana = false
local bladetype = "None"
local oldCFrames = {}
local ominField = nil
local ominup = false
local orblimit = 0
local dtatkfour = false
local doing4 = false
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local move1 = "(Z)\nGhastly Grip"
local move2 = "(X)\nOminous Matter"
local move3 = "(C)\nSpirit Orbs"
local move4 = "(V)\nPhantom\'s Mark"
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
local cooldownadd1 = 0.43
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.23
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.23
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.15
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
NewCol = BrickColor.new("Eggplant").Color
NewCol2 = BrickColor.new("Medium blue").Color
NewCol3 = BrickColor.new("Steel blue").Color
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
local ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local frame = 1 / 30
local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
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

local function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end
if Character:findFirstChild("Ghostwalker", true) ~= nil then
  Character:findFirstChild("Ghostwalker", true).Parent = nil
end
if Character:findFirstChild("Ghost Claws", true) ~= nil then
  Character:findFirstChild("Ghost Claws", true).Parent = nil
end
if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
  Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
end
if Character:findFirstChild("Alignment", true) ~= nil then
  Character:findFirstChild("Alignment", true).Parent = nil
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
local PhantomEnemy = Instance.new("ObjectValue")
PhantomEnemy.Name = "PhantomEnemy"
PhantomEnemy.Parent = Stats
PhantomEnemy.Value = nil
local PhantomPos = nil
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 0
local Alignment = Instance.new("Color3Value")
Alignment.Name = "Alignment"
Alignment.Parent = Character
Alignment.Value = Player.TeamColor.Color
local passive1 = Instance.new("NumberValue", nil)
passive1.Name = "DecreaseDef"
passive1.Value = 0.5
local passive2 = Instance.new("NumberValue", nil)
passive2.Name = "DecreaseMvmt"
passive2.Value = -0.4
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
Character.Archivable = true
local spectral = Character:Clone()
spectral.Name = ""
for _,c in pairs(spectral:children()) do
  if c.className == "Model" or c.className == "Script" or c.className == "BodyColors" or c.className == "Hat" or c.Name == "Stats" then
    c.Parent = nil
  end
  if c.className == "Part" then
    NoOutline(c)
    c.CanCollide = false
    c.Transparency = 0.8
    if c.Name == "HumanoidRootPart" then
      c.Transparency = 1
    end
    c.BrickColor = BrickColor.new(NewCol)
    for _,d in pairs(c:children()) do
      if d.className == "Weld" or d.className == "Motor" or d.className == "Motor6D" or d.className == "Decal" then
        d.Parent = nil
      end
    end
  end
  do
    do
      if c.className == "Humanoid" then
        c.Parent = nil
      end
    end
  end
end
spectral.Parent = Character
if spectral:findFirstChild("HumanoidRootPart") ~= nil then
  spectral.HumanoidRootPart.Anchored = true
end
sHead = spectral.Head
sTorso = spectral.Torso
sRootPart = spectral.HumanoidRootPart
sLeftArm = spectral["Left Arm"]
sRightArm = spectral["Right Arm"]
sLeftLeg = spectral["Left Leg"]
sRightLeg = spectral["Right Leg"]
sRootJoint,sRW,sLW,sNeck,sRH,sLH = it("Motor", sRootPart),it("Motor", sTorso),it("Motor", sTorso),it("Motor", sTorso),it("Motor", sTorso),it("Motor", sTorso)
sRootJoint.Part0 = sRootPart
sRootJoint.Part1 = sTorso
sRootJoint.C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
sNeck.Part0 = sTorso
sNeck.Part1 = sHead
sNeck.C1 = necko2
sRW.Part0 = sTorso
sRW.Part1 = sRightArm
sRW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
sLW.Part0 = sTorso
sLW.Part1 = sLeftArm
sLW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
sRH.Part0 = sTorso
sRH.Part1 = sRightLeg
sLH.Part0 = sTorso
sLH.Part1 = sLeftLeg
Character.Archivable = false
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Ghostwalker"
local modelzorz2 = Instance.new("Model")
modelzorz2.Parent = Character
modelzorz2.Name = "Ghost Claws"
local handle = part(3, modelzorz, 0, 0, TorsoColor, "Handle", vt())
local prt1 = part(3, modelzorz, 0, 0, TorsoColor, "Part01", vt())
prt1.Material = "Fabric"
local prt3 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol2), "Part03", vt())
local prt4 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol2), "Part04", vt())
local prt9 = part(3, modelzorz, 0.5, 0, BrickColor.new(NewCol2), "Part09", vt())
local prt12 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part12", vt())
local prt13 = part(3, modelzorz, 0.3, 0, BrickColor.new(NewCol3), "Part13", vt())
local prt16 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part16", vt())
local prt17 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part17", vt())
local prt18 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part18", vt())
local prt19 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part19", vt())
local prt20 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part20", vt())
local prt21 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part21", vt())
local prt22 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part22", vt())
local prt23 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part23", vt())
local prt24 = part(3, modelzorz, 0.2, 0.4, BrickColor.new(NewCol), "Part24", vt())
prt24.Material = "Neon"
local prt25 = part(3, modelzorz, 0.2, 0.4, BrickColor.new(NewCol), "Part25", vt())
prt25.Material = "Neon"
local prt26 = part(3, modelzorz, 0.2, 0.4, BrickColor.new(NewCol), "Part26", vt())
prt26.Material = "Neon"
hmsh = mesh("BlockMesh", handle, "", "", vt(0, 0, 0), vt(1, 1, 1))
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(1.8, 8, 1.8))
msh3 = mesh("SpecialMesh", prt3, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.6, 0.5))
msh4 = mesh("BlockMesh", prt4, "", "", vt(0, 0, 0), vt(4.8, 1.033, 1.83))
msh9 = mesh("BlockMesh", prt9, "", "", vt(0, 0, 0), vt(1.82, 2.5, 1.33))
msh12 = mesh("BlockMesh", prt12, "", "", vt(0, 0, 0), vt(4.355, 15.85, 0.5))
msh13 = mesh("BlockMesh", prt13, "", "", vt(0, 0, 0), vt(0.2, 15.075, 0.52))
msh16 = mesh("BlockMesh", prt16, "", "", vt(0, 0, 0), vt(2.285, 1, 0.5))
msh17 = mesh("BlockMesh", prt17, "", "", vt(0, 0, 0), vt(1, 1, 0.5))
msh18 = mesh("BlockMesh", prt18, "", "", vt(0, 0, 0), vt(1.4, 1, 0.5))
msh19 = mesh("BlockMesh", prt19, "", "", vt(0, 0, 0), vt(1, 4.99, 0.5))
msh20 = mesh("BlockMesh", prt20, "", "", vt(0, 0, 0), vt(1, 2.98, 0.5))
msh21 = mesh("BlockMesh", prt21, "", "", vt(0, 0, 0), vt(1, 4.915, 0.5))
msh22 = mesh("SpecialMesh", prt22, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.89, 1.61))
msh23 = mesh("SpecialMesh", prt23, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 1.835, 1))
msh24 = mesh("BlockMesh", prt24, "", "", vt(0, 0, 0), vt(4.335, 9.77, 0.49))
msh25 = mesh("SpecialMesh", prt25, "Wedge", "nil", vt(0, 0, 0), vt(0.49, 4.335, 2.16))
msh26 = mesh("SpecialMesh", prt26, "Wedge", "nil", vt(0, 0, 0), vt(0.49, 4.335, 2.16))
local hwld = weld(handle, handle, Torso, euler(0, 0, -2.5) * cf(-1.4, -2.3, -0.5))
local wld1 = weld(prt1, prt1, handle, euler(0, 0, 0) * cf(0, 0, 0))
local wld3 = weld(prt1, prt3, prt1, euler(0, 0, 0) * cf(0, 0.9, 0))
local wld4 = weld(prt1, prt4, prt1, euler(0, 0, 0) * cf(0, -0.9, 0))
local wld9 = weld(prt1, prt9, prt4, euler(0, 0, 0) * cf(0, -0.345, 0))
local wld12 = weld(prt1, prt12, prt4, euler(0, 0, 0) * cf(0, -1.659, 0))
local wld13 = weld(prt1, prt13, prt4, euler(0, 0, 0) * cf(0, -1.931, 0))
local wld16 = weld(prt1, prt16, prt4, euler(0, 0, 0) * cf(0.205, -3.189, 0))
local wld17 = weld(prt1, prt17, prt4, euler(0, 0, 0) * cf(0.333, -3.338, 0))
local wld18 = weld(prt1, prt18, prt4, euler(0, 0, 0.515) * cf(0.1649, -3.284, 0))
local wld19 = weld(prt1, prt19, prt4, euler(0, 0, 0) * cf(-0.338, -3.627, 0))
local wld20 = weld(prt1, prt20, prt4, euler(0, 0, 0) * cf(-0.203, -3.268, 0))
local wld21 = weld(prt1, prt21, prt4, euler(0, 0, 0.4347) * cf(-0.135, -3.519, 0))
local wld22 = weld(prt1, prt22, prt4, euler(1.105, -1.57, 0) * cf(0.016, -3.746, 0))
local wld23 = weld(prt1, prt23, prt4, euler(0, 1.57, 0) * cf(-0.337, -4.307, 0))
local wld24 = weld(prt1, prt24, prt4, euler(0, 0, 0) * cf(0, -4.136, 0))
local wld25 = weld(prt1, prt25, prt4, euler(0, 1.57, 0) * cf(-0.216, -5.546, 0))
local wld26 = weld(prt1, prt26, prt4, euler(0, -1.57, 0) * cf(0.216, -5.546, 0))
for i = 0.6, -0.65, -0.3 do
  local prt2 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part02", vt())
  prt2.Material = "Fabric"
  msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(2, 0.5, 2))
  local wld2 = weld(prt1, prt2, prt1, euler(math.random(-10, 10) / 100, 0, math.random(-10, 10) / 100) * cf(0, i, 0))
end
local dd = 1
for i = 1, 2 do
  if i == 2 then
    dd = -1
  end
  local prt5 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol2), "Part05", vt())
  msh5 = mesh("BlockMesh", prt5, "", "", vt(0, 0, 0), vt(2.45, 1, 1.84))
  local wld5 = weld(prt1, prt5, prt4, euler(0, 0, 0.765 * dd) * cf(-0.6 * dd, 0.142, 0))
  local prt6 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol2), "Part06", vt())
  msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(1.01, 1.01, 1.82))
  local wld6 = weld(prt1, prt6, prt4, euler(0, 0, 0.134 * dd) * cf(-0.81 * dd, 0.298, 0))
  local prt7 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol2), "Part07", vt())
  msh7 = mesh("BlockMesh", prt7, "", "", vt(0, 0, 0), vt(1, 1, 1.85))
  local wld7 = weld(prt1, prt7, prt4, euler(0, 0, -0.56 * dd) * cf(-0.923 * dd, 0.273, 0))
  local prt8 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol2), "Part08", vt())
  msh8 = mesh("SpecialMesh", prt8, "Wedge", "nil", vt(0, 0, 0), vt(1.85, 1, 1))
  if i == 1 then
    local wld8 = weld(prt1, prt8, prt4, euler(-1.01, -1.57, 1.57) * cf(-1.092, 0.167, 0))
  else
    do
      do
        local wld8 = weld(prt1, prt8, prt4, euler(-1.01, -1.57, 1.57) * euler(3.14, 0, 3.14) * cf(1.092, 0.167, 0))
        -- DECOMPILER ERROR at PC2765: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC2765: LeaveBlock: unexpected jumping out IF_ELSE_STMT

        -- DECOMPILER ERROR at PC2765: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
for i = 1, 2 do
  dul = 1
  if i == 2 then
    dul = -1
  end
  local prt10 = part(3, modelzorz, 0.5, 0, BrickColor.new(NewCol2), "Part10", vt())
  msh10 = mesh("SpecialMesh", prt10, "Wedge", "nil", vt(0, 0, 0), vt(1.33, 2.5, 1))
  local wld10 = weld(prt1, prt10, prt4, euler(0, 1.57 * dul, 0) * cf(-0.284 * dul, -0.345, 0))
  local prt11 = part(3, modelzorz, 0.5, 0, BrickColor.new(NewCol3), "Part11", vt())
  msh11 = mesh("SpecialMesh", prt11, "Wedge", "nil", vt(0, 0, 0), vt(1.345, 1.265, 1))
  local wld11 = weld(prt1, prt11, prt4, euler(0.507, 1.57 * dul, 0) * cf(-0.176 * dul, -0.303, 0))
  local prt14 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol3), "Part14", vt())
  msh14 = mesh("SpecialMesh", prt14, "Wedge", "nil", vt(0, 0, 0), vt(0.51, 4.63, 1))
  local wld14 = weld(prt1, prt14, prt4, euler(0, 1.57 * dul, 0) * cf(-0.19 * dul, -1.01, 0))
  local prt15 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol3), "Part15", vt())
  msh15 = mesh("SpecialMesh", prt15, "Wedge", "nil", vt(0, 0, 0), vt(0.51, 9.26, 1.25))
  local wld15 = weld(prt1, prt15, prt4, euler(0, 1.57 * dul, 0) * cf(-0.305 * dul, -1.0007, 0))
  for d = 1, 2 do
    tehprt = LeftArm
    bab = 1
    if d == 2 then
      tehprt = RightArm
      bab = -1
    end
    local prt27 = part(3, modelzorz2, 0, 0.2, BrickColor.new(NewCol), "Part27", vt())
    prt27.Material = "Neon"
    msh27 = mesh("BlockMesh", prt27, "", "", vt(0, 0, 0), vt(1.24, 3.03, 1))
    local wld27 = weld(prt1, prt27, tehprt, euler(0, 0, 0.063 * bab) * cf(0.436 * bab, 0.785, 0.278 * dul))
    local prt28 = part(3, modelzorz2, 0, 0.2, BrickColor.new(NewCol), "Part28", vt())
    prt28.Material = "Neon"
    msh28 = mesh("BlockMesh", prt28, "", "", vt(0, 0, 0), vt(1.24, 2.795, 1))
    local wld28 = weld(prt1, prt28, tehprt, euler(0, 0, 0.319 * bab) * cf(0.533 * bab, 1.311, 0.278 * dul))
    local prt29 = part(3, modelzorz2, 0, 0.2, BrickColor.new(NewCol), "Part29", vt())
    prt29.Material = "Neon"
    msh29 = mesh("BlockMesh", prt29, "", "", vt(0, 0, 0), vt(1.24, 3.275, 1))
    local wld29 = weld(prt1, prt29, tehprt, euler(0, 0, 0.0621 * bab) * cf(0.636 * bab, 1.876, 0.278 * dul))
    local prt30 = part(3, modelzorz2, 0, 0.2, BrickColor.new(NewCol), "Part30", vt())
    prt30.Material = "Neon"
    msh30 = mesh("SpecialMesh", prt30, "Wedge", "nil", vt(0, 0, 0), vt(1.25, 2.12, 1))
    local wld30 = weld(prt1, prt30, tehprt, euler(3.14, 1.57 * bab, 0.0621 * bab) * cf(0.669 * bab, 2.413, 0.278 * dul))
  end
end
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(prt1:children()) do
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
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Ghostwalker"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Spectre" then
  Bin.Name = "Ghostwalker"
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
  bladetype = "None"
  for i = 0, 1, 0.1 do
    swait()
    if i <= 0.2 then
      hwld.C0 = clerp(hwld.C0, euler(0.3, 0, -0.8) * cf(0, 1.3, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 3.14, 0) * cf(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 1, -0.1) * euler(2.7, 0, 0.6) * euler(0, 0, 0), 0.3)
    else
      hwld.C0 = clerp(hwld.C0, euler(0.3, 0, -0.8) * cf(0, 1.3, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 3.14, 0) * cf(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(-2.7, 0, -0.2), 0.2)
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, -0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.6), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
  end
  hwld.Part1 = Torso
  hwld.C0 = euler(0, 0, -2.5) * cf(-1.4, -2.3, -0.5)
  wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
  mdec2.Parent = nil
  mdec.Parent = Decrease
  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, 0, 0), 0.2)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
  end
  spectral.Parent = nil
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  spectral.Parent = Character
  mdec.Parent = nil
  mdec2.Parent = Decrease
  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, 0, -0.2), 0.4)
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.4), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(-2.7, 0, -0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0.1, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(0, 0.4, 0.2), 0.4)
  end
  hwld.Part1 = RightArm
  hwld.C0 = euler(0.3, 0, -0.8) * cf(0, 1.3, 0)
  wld1.C0 = euler(0, 3.14, 0) * cf(0, 0, 0)
  for i = 0, 1, 0.05 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0.5), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.4)
    if i <= 0.2 then
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0), 0.4)
      hwld.C0 = clerp(hwld.C0, euler(0.2, 0, -0.3) * cf(0, 1.3, 0.2), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 1, -0.1) * euler(2.7, 0, 0.6) * euler(0, 0, 0), 0.4)
    else
      bladetype = "Stable"
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.1, 0.3, 0), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.3)
      hwld.C0 = clerp(hwld.C0, euler(2.5, 0, 0) * cf(0, 1, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.4, 0) * euler(0.2, 0, 0.6) * euler(0, -1.1, 0), 0.4)
    end
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.6), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(0, 0.6, 0.2), 0.4)
  end
  bladetype = "Mana"
end
StaggerAnim = function()
  attack = true
  removeControl()
  hitbox.CFrame = prt12.CFrame * cf(0, 1, 0)
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.35 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -40
    end
    hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.5)
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
    hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.5)
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
    hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.5)
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
  hitbox.CFrame = prt12.CFrame * cf(0, 1, 0)
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.1 do
    swait()
    hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.5)
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
    hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.5)
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
    hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.5)
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
    hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.5)
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
  gairost.maxTorque = Vector3.new(4000, 0, 4000)
  gairost.P = 200
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
  if ghostmode == false then
    for i = 0, 1, 0.15 do
      swait()
      hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, -0.6), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.8), 0.3)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.3) * euler(1.6, 0, -1) * euler(0, 1.4, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.3, -0.1) * euler(1.6, 0, 0.6) * euler(0, 1.4, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, 0) * euler(0, -1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC210: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC210: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("203691447", prt12, 1, 1.2)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt12.CFrame * cf(0, 1, 0)
    for i = 0, 1, 0.1 do
      swait()
      hitbox.CFrame = prt12.CFrame * cf(0, 1.5, 0)
      MagniDamage(hitbox, 3, 5, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
      hwld.C0 = clerp(hwld.C0, euler(2.3, 0, 0) * cf(0, 0.8, 0), 0.45)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, -0.3, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 1), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.45)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.3) * euler(1.1, 0, 0.8) * euler(0, 1, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(0.6, 0.5, -0.5) * euler(1.2, 0, 1) * euler(0, 1.4, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.2), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, 0.1), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC476: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC476: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
  else
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * euler(-0.2, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.5, 0, 0.2) * euler(0, 1.4, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.5, 0, -0.2) * euler(0, -1.4, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.6, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.3, 0, -0.2), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.6, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.3, 0, 0.2), 0.5)
    end
    so("28144425", LeftArm, 0.6, 1.2)
    so("92597369", LeftArm, 0.6, 1.2)
    so("28144425", RightArm, 0.6, 1.2)
    so("92597369", RightArm, 0.6, 1.2)
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    game:GetService("Debris"):AddItem(ref, 1)
    for i = 0, 1, 0.2 do
      swait()
      ref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
      ref.CFrame = RightArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.1, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.3) * euler(0.4, 0, -0.6) * euler(0, 1.4, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.3) * euler(0.4, 0, 0.6) * euler(0, -1.4, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.2, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.2, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.1), 0.5)
    end
    ref.Parent = nil
  end
  attack = false
end
attacktwo = function()
  attack = true
  if ghostmode == false then
    for i = 0, 1, 0.15 do
      swait()
      hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -0.77, 0) * cf(0, 0.2, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 1, -0.5) * euler(2.8, 0, -0.8) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 1, -0.5) * euler(2.8, 0, 0.8), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC180: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC180: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("203691492", prt12, 1, 1.2)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt12.CFrame * cf(0, 1, 0)
    for i = 0, 1, 0.1 do
      swait()
      hitbox.CFrame = prt12.CFrame * cf(0, 1.5, 0)
      MagniDamage(hitbox, 3, 5, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
      hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.45)
      wld1.C0 = clerp(wld1.C0, euler(0, -0.77, 0) * euler(0.5, 0, 0.5) * cf(0, 0.2, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.45)
      RW.C0 = clerp(RW.C0, cf(1, 0.1, -0.5) * euler(0.2, 0, -0.8) * euler(0, 0, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1, 0.1, -0.5) * euler(0.2, 0, 0.8), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC422: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC422: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
  else
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.5), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.5) * euler(0.2, 0, 0) * euler(0, 0, 0.5), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.4, 0.2) * euler(1, 0, 0.2) * euler(0, 0.6, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.2) * euler(2, 0, -0.6) * euler(0, -0.8, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.2, -0.4) * euler(0, 1.57, 0) * euler(0, -0.5, 0) * euler(-0.1, 0, 0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, 0.5), 0.5)
    end
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    game:GetService("Debris"):AddItem(ref, 1)
    so("28144425", LeftArm, 0.6, 1.4)
    so("92597369", LeftArm, 0.6, 1.4)
    for i = 0, 1, 0.2 do
      swait()
      ref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0.2), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(-0.6, -1, -0.4) * euler(0.4, 0, 0) * euler(0, 0, -0.6), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.3, 0.2) * euler(1.2, 0, 0.3) * euler(0, 0.6, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.4) * euler(1, 0, 1) * euler(0, -1, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.6) * euler(0, 1.57, 0) * euler(0, 0.2, 0) * euler(0, 0, 0.3), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, 0.6), 0.5)
    end
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0.5), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.5) * euler(0.2, 0, 0) * euler(0, 0, -0.5), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(2, 0, 0.6) * euler(0, 0.8, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, 0.2) * euler(1, 0, -0.2) * euler(0, -0.6, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.5), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.2, -0.4) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(-0.1, 0, 0.1), 0.5)
    end
    so("28144425", RightArm, 0.6, 1.4)
    so("92597369", RightArm, 0.6, 1.4)
    for i = 0, 1, 0.2 do
      swait()
      ref.CFrame = RightArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, -0.2), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0.6, -1, -0.4) * euler(0.4, 0, 0) * euler(0, 0, 0.6), 0.5)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.4) * euler(1, 0, -1) * euler(0, 1, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.3, 0.2) * euler(1.2, 0, -0.3) * euler(0, -0.6, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.6), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.6) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(0, 0, 0.3), 0.5)
    end
    ref.Parent = nil
  end
  attack = false
end
attackthree = function()
  attack = true
  if ghostmode == false then
    for i = 0, 1, 0.15 do
      swait()
      hwld.C0 = clerp(hwld.C0, euler(1.2, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0.3, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.3) * euler(0.8, 0, -0.3) * euler(0, -2, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-0.4, 0.5, -0.5) * euler(0.8, 0, 0.4) * euler(0, -2, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC210: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC210: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("203691467", prt12, 0.8, 1.4)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt12.CFrame * cf(0, 1, 0)
    for i = 0, 1, 0.1 do
      swait()
      hitbox.CFrame = prt12.CFrame * cf(0, 1.5, 0)
      MagniDamage(hitbox, 3, 5, 7, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(4, 8)), nil, true)
      hwld.C0 = clerp(hwld.C0, euler(2.5, 0, 0) * cf(0, 0.8, 0), 0.45)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0.3, 0), 0.45)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.45)
      RW.C0 = clerp(RW.C0, cf(0.4, 0.5, -0.4) * euler(2.3, 0, -0.6) * euler(0, -1.8, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.3) * euler(2.2, 0, 0.4) * euler(0, -2, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(-0.1, 0, -0.1), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * euler(0, -1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, -0.1), 0.45)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC476: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC476: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
  else
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.6) * euler(0.25, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(0.8, 0, 0.2) * euler(0, -1.5, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.2) * euler(0.8, 0, -0.2) * euler(0, 1.5, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.3, -0.6) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.3), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.6), 0.5)
    end
    so("28144425", LeftArm, 0.6, 1.4)
    so("92597369", LeftArm, 0.6, 1.4)
    so("28144425", RightArm, 0.6, 1.1)
    so("92597369", RightArm, 0.6, 1.1)
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    game:GetService("Debris"):AddItem(ref, 1)
    for i = 0, 1, 0.07 do
      swait()
      if i > 0.3 then
        Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2.6) * euler(-0.2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(3.2, 0, -0.1) * euler(0, 1.5, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.4, 0.6, -0.1) * euler(3.2, 0, 0.1) * euler(0, -1.5, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.3), 0.5)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.3) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.3), 0.5)
      else
        ref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0)
        MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
        ref.CFrame = RightArm.CFrame * cf(0, -1.5, 0)
        MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2.6) * euler(-0.1, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.6, -0.1) * euler(2.6, 0, -0.1) * euler(0, -1.5, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.4, 0.6, -0.1) * euler(2.6, 0, 0.1) * euler(0, 1.5, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.5) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.4), 0.5)
        LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.5) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.4), 0.5)
      end
    end
    so("28144425", LeftArm, 0.6, 1.2)
    so("92597369", LeftArm, 0.6, 1.2)
    so("28144425", RightArm, 0.6, 1.1)
    so("92597369", RightArm, 0.6, 1.1)
    for i = 0, 1, 0.15 do
      swait()
      ref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
      ref.CFrame = RightArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.8) * euler(0.2, 0, 0), 0.6)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.1) * euler(0.8, 0, -0.1) * euler(0, 1.5, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, -0.1) * euler(0.8, 0, 0.1) * euler(0, -1.5, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.3, -0.6) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.3, -0.6) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.1), 0.5)
    end
    ref.Parent = nil
  end
  attack = false
end
attackfour = function()
  attack = true
  if ghostmode == false then
    dtatkfour = true
    local decde = Instance.new("NumberValue", Decrease)
    decde.Name = "DecreaseDef"
    decde.Value = -0.4
    Spectre()
    if clone ~= nil and clone:findFirstChild("Humanoid") ~= nil then
      workspace.CurrentCamera.CameraSubject = clone.Humanoid
    end
    Torso.Velocity = RootPart.CFrame.lookVector * 100
    for i = 0, 1, 0.12 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * euler(-0.2, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.5, 0, 0.2) * euler(0, 1.4, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.5, 0, -0.2) * euler(0, -1.4, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.6, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.3, 0, -0.2), 0.5)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.6, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.3, 0, 0.2), 0.5)
    end
    so("28144425", LeftArm, 0.6, 1.2)
    so("92597369", LeftArm, 0.6, 1.2)
    so("28144425", RightArm, 0.6, 1.2)
    so("92597369", RightArm, 0.6, 1.2)
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    game:GetService("Debris"):AddItem(ref, 1)
    for i = 0, 1, 0.1 do
      swait()
      ref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 6, 8, 0, "Normal", RootPart, 0.5, 1, (math.random(2, 10)), nil, true)
      ref.CFrame = RightArm.CFrame * cf(0, -1.5, 0)
      MagniDamage(ref, 3, 6, 8, 0, "Normal", RootPart, 0.5, 1, (math.random(2, 10)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.1, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.3) * euler(0.4, 0, -0.6) * euler(0, 1.4, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.3) * euler(0.4, 0, 0.6) * euler(0, -1.4, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.2, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.2, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.1), 0.4)
    end
    ref.Parent = nil
    Spectre()
    dtatkfour = false
    decde.Parent = nil
	attack = false
    workspace.CurrentCamera.CameraSubject = Humanoid
  else
      for i = 0, 1, 0.2 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.5), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, 0) * euler(0, 0, 0.8), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(2, 0, 1.4) * euler(0, 0.8, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.3) * euler(1.4, 0, 0.4) * euler(0, -3, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1.2, -0.4, -0.4) * euler(0, 1.57, 0) * euler(0, -0.8, 0) * euler(-0.1, 0, 0.25), 0.5)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.6) * euler(0, -1.57, 0) * euler(0, -0.8, 0) * euler(0, 0, 0.5), 0.5)
      end
      so("28144425", LeftArm, 0.6, 1.2)
      so("92597369", LeftArm, 0.6, 1.2)
      so("28144425", RightArm, 0.6, 1)
      so("92597369", RightArm, 0.6, 1)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      game:GetService("Debris"):AddItem(ref, 1)
      cul = 0
      for i = 0, 1, 0.1 do
        swait()
        cul = cul + 0.8
        if i > 0.5 then
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.5), 0.5)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 0) * euler(0, 0, 0), 0.5)
          RootJoint.C1 = clerp(RootJoint.C1, cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.5)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(-0.2, 0, -0.8), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.4) * euler(1.57, 0, -1.57) * euler(0, -3.14, 0) * euler(0.4, 0, 0.4), 0.5)
          RH.C0 = clerp(RH.C0, cf(1.1, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.2), 0.5)
          LH.C0 = clerp(LH.C0, cf(-1.1, -0.6, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.2), 0.5)
        else
          ref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0)
          MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
          ref.CFrame = RightArm.CFrame * cf(0, -1.5, 0)
          MagniDamage(ref, 3, 5, 8, 0, "Normal", RootPart, 0.3, 1, (math.random(2, 5)), nil, true)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.5), 0.5)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 0) * euler(0, 0, 0), 0.5)
          RootJoint.C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * euler(0, 0, -cul)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 0, 0), 0.5)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -3.14, 0), 0.5)
          RH.C0 = clerp(RH.C0, cf(1.1, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.2), 0.5)
          LH.C0 = clerp(LH.C0, cf(-1.1, -0.6, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.2), 0.5)
        end
      end
      ref.Parent = nil
      RootJoint.C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
      attack = false
    end
end
Spectre = function()
  if ghostmode == false then
    so("315746833", RootPart, 0.6, 0.8)
    passive1.Parent = Decrease
    passive2.Parent = Decrease
    ghostmode = true
    bladetype = "None"
    Character.Archivable = true
    clone = Character:Clone()
    clone.Parent = workspace
    d = it("BoolValue", clone)
    d.Name = "Clean"
    if clone:findFirstChild("Health") ~= nil then
      clone.Health.Parent = nil
    end
    if clone:findFirstChild("Ghostwalker") ~= nil then
      clone.Ghostwalker.Parent = nil
    end
    if clone:findFirstChild("Ghost Claws") ~= nil then
      clone["Ghost Claws"].Parent = nil
    end
    if clone:findFirstChild("Effects") ~= nil then
      clone.Effects.Parent = nil
    end
    if clone:findFirstChild("") ~= nil then
      clone[""].Parent = nil
    end
    if clone:findFirstChild("Torso") ~= nil then
      for _,c in pairs(clone:children()) do
        for _,v in pairs(c:children()) do
          if v.className == "BodyGyro" or v.className == "BodyPosition" or v.className == "BodyVelocity" or v.className == "BodyAngularVelocity" then
            v.Parent = nil
          end
        end
      end
      cNeck = clone.Torso:findFirstChild("Neck")
      cRW = clone.Torso:findFirstChild("Right Shoulder")
      cLW = clone.Torso:findFirstChild("Left Shoulder")
      cRH = clone.Torso:findFirstChild("Right Hip")
      cLH = clone.Torso:findFirstChild("Left Hip")
    end
    if clone:findFirstChild("HumanoidRootPart") ~= nil then
      cRootJoint = clone.HumanoidRootPart:findFirstChild("RootJoint")
    end
    cRightArm = clone:findFirstChild("Right Arm")
    if cRightArm ~= nil then
      hwld.Part1 = cRightArm
      hwld.C0 = euler(1.57, 0, 0) * cf(0, 1, 0)
      wld1.C0 = euler(0, -1.57, 0) * cf(0, 0, 0)
    end
    if clone:findFirstChild("HumanoidRootPart") ~= nil then
      RootPart.CFrame = clone.HumanoidRootPart.CFrame * cf(0, 0, -2)
      if ominField ~= nil and dtatkfour == false then
        DecreaseStat(clone, "Damage", -0.4, 200)
        RootPart.CFrame = cf(ominField) * cf(0, 4, 0)
        newpos = vt(RootPart.Position.X, clone.HumanoidRootPart.Position.Y, RootPart.Position.Z)
        RootPart.CFrame = cf(newpos, clone.HumanoidRootPart.Position) * euler(0, 3.14, 0)
      end
    end
    Character.Archivable = false
    Humanoid.JumpPower = 70
    Humanoid.Name = "Spirit"
    oHeadCol = Character["Body Colors"].HeadColor
    oTorsoCol = Character["Body Colors"].TorsoColor
    oLeftArmCol = Character["Body Colors"].LeftArmColor
    oRightArmCol = Character["Body Colors"].RightArmColor
    oLeftLegCol = Character["Body Colors"].LeftLegColor
    oRightLegCol = Character["Body Colors"].RightLegColor
    if face ~= nil then
      face.Parent = nil
    end
    if Character:FindFirstChild("Shirt Graphic") then
      Character:FindFirstChild("Shirt Graphic").Parent = nil
    end
    if Torso:FindFirstChild("roblox") then
      Torso:FindFirstChild("roblox").Parent = nil
    end
    if shirt ~= nil then
      shirt.Parent = nil
    end
    if pants ~= nil then
      pants.Parent = nil
    end
    Character["Body Colors"].HeadColor = BrickColor.new(NewCol)
    Character["Body Colors"].TorsoColor = BrickColor.new(NewCol)
    Character["Body Colors"].LeftArmColor = BrickColor.new(NewCol)
    Character["Body Colors"].RightArmColor = BrickColor.new(NewCol)
    Character["Body Colors"].LeftLegColor = BrickColor.new(NewCol)
    Character["Body Colors"].RightLegColor = BrickColor.new(NewCol)
    for _,c in pairs(Character:children()) do
      if c.className == "Part" and c.Name ~= "HumanoidRootPart" then
        c.BrickColor = BrickColor.new(NewCol)
        c.Transparency = 0.4
      end
      if c.className == "Hat" and c:findFirstChild("Handle") ~= nil then
        c.Handle.Transparency = 1
      end
    end
  else
    do
      Humanoid.JumpPower = 50
      Humanoid.Name = "Humanoid"
      passive1.Parent = nil
      passive2.Parent = nil
      ghostmode = false
      bladetype = "Mana"
      oldpos = nil
      if clone ~= nil then
        if clone:findFirstChild("HumanoidRootPart") ~= nil then
          oldpos = clone.HumanoidRootPart.CFrame
        end
        cRootJoint = nil
        hwld.Parent = handle
        hwld.Part1 = RightArm
        hwld.C0 = euler(1.57, 0, 0) * cf(0, 1, 0)
        wld1.C0 = euler(0, -1.57, 0) * cf(0, 0, 0)
        clone.Parent = nil
        clone = nil
      end
      if oldpos ~= nil then
        RootPart.CFrame = oldpos
      end
      if face ~= nil then
        face.Parent = Head
      end
      if shirt ~= nil then
        shirt.Parent = Character
      end
      if pants ~= nil then
        pants.Parent = Character
      end
      if tshirt then
        tshirt.Parent = Character
      end
      tshirt2.Parent = Torso
      Character["Body Colors"].HeadColor = oHeadCol
      Character["Body Colors"].TorsoColor = oTorsoCol
      Character["Body Colors"].LeftArmColor = oLeftArmCol
      Character["Body Colors"].RightArmColor = oRightArmCol
      Character["Body Colors"].LeftLegColor = oLeftLegCol
      Character["Body Colors"].RightLegColor = oRightLegCol
      for _,c in pairs(Character:children()) do
        if c.className == "Part" and c.Name ~= "HumanoidRootPart" then
          c.Transparency = 0
        end
        if c.className == "Hat" and c:findFirstChild("Handle") ~= nil then
          c.Handle.Transparency = 0
        end
      end
      Neck.C0 = necko * euler(0.3, 0, 0) * euler(0, 0, 0)
      RootJoint.C0 = RootCF * cf(0, 0, -1.4) * euler(0, 0, 0)
      RW.C0 = cf(1, 0.8, -0.5) * euler(2, 0, -0.8) * euler(0, 3.14, 0)
      LW.C0 = cf(-1, 0.8, -0.5) * euler(2, 0, 0.8) * euler(0, 3.14, 0)
      RH.C0 = cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, -1.4)
      LH.C0 = cf(-1, 0.2, -0.8) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.2)
      RH.C1 = RHC1 * cf(0, 0, 0) * euler(0, 0, 0)
      LH.C1 = LHC1 * cf(0, 0, 0) * euler(0, 0, 0)
    end
  end
end
do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 15 and ghostmode == false then
    attack = true
    for i = 0, 1, 0.1 do
      swait()
      hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.1) * euler(0.2, 0, 0.4) * euler(0, 1, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.1), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC238: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC238: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    RecentEnemy.Value = nil
    cooldowns[1] = 0
    local dec = Instance.new("NumberValue", Decrease)
    mana.Value = mana.Value - 15
    RecentEnemy.Value = nil
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    local num = 75
    local ceef = LeftArm.Position
    local look = MMouse.Hit.p
    local MouseLook = (cf((ceef + look) / 2, look))
    local hit = nil
    local Parts = {}
    local deb = 0
    local thing = 0
    repeat
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        if StaggerHit.Value == true then
          break
        end
        hit, pos = rayCast(ceef, MouseLook.lookVector, 4, Character)
        if hit ~= nil or RecentEnemy.Value ~= nil then
          num = 1
        end
        local ref = part(3, workspace, 0, 1, BrickColor.new(NewCol), "Effect", vt())
        local mag = (ceef - pos).magnitude
        ceef = ceef + MouseLook.lookVector * 4.1
        local rmsh = mesh("BlockMesh", ref, "", "", vt(0, 0, 0), vt(1, mag * 5, 1))
        ref.Anchored = true
        ref.CFrame = CFrame.new((ceef + pos) / 2, pos) * angles(1.57, 0, 0)
        MagniDamage(ref, 3, 6, 8, 0, "Normal", RootPart, 0.2, 1, 0, nil, nil, true)
        table.insert(Parts, ref)
        so("315743298", ref, 0.5, 2)
        da = 0
        for i = 1, #Parts do
          da = da + 1
          thing = thing + 1
          if (thing) % 14 == 0 then
            MagicCircle2(BrickColor.new(NewCol), Parts[i].CFrame * cf(math.random(-100, 100) / 100, 0, math.random(-100, 100) / 100), 1, 8, 1, -0.04, 8, -0.04, 0.1, -0.2)
          end
        end
        for i = 1, 2 do
          MagicCircle2(BrickColor.new(NewCol), Parts[da].CFrame * cf(math.random(-200, 200) / 100, 0, math.random(-200, 200) / 100), 1, 8, 1, -0.04, 8, -0.04, 0.1, -0.2)
          MagicCircle2(BrickColor.new(NewCol), Parts[da].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 5, 2, -0.1, 1, -0.1, 0.08, 1)
        end
        game:GetService("Debris"):AddItem(ref, 5)
        num = num - 1
        deb = deb + 1
        if deb >= 2 then
          swait()
          deb = 0
        end
      end
    until num <= 0
    do
      if Stagger.Value == true or ((StaggerHit.Value ~= true or hit ~= nil)) then
        local grabpos = Instance.new("BodyPosition")
        if RecentEnemy.Value ~= nil then
          last = 0
          for i = 1, #Parts do
            last = last + 1
          end
          grabpos.position = Parts[last].Position
          if RecentEnemy.Value:findFirstChild("Torso") ~= nil then
            grabpos.Parent = RecentEnemy.Value
            hit = RecentEnemy.Value.Torso
            PhantomEnemy.Value = RecentEnemy.Value
          end
          local damd = 1
          for i = #Parts, 1, -1 do
            swait()
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                if hit ~= nil then
                  damd = damd * 0.95
                  Damagefunc(hit, 4 * (damd), 5 * (damd), 0, "Normal", RootPart, 0.1, 1, 0, nil, nil, true)
                end
                last = 0
                for i = 1, #Parts do
                  last = last + 1
                  thing = thing + 1
                  if (thing) % 10 == 0 then
                    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                    ref.Anchored = true
                    ref.CFrame = Parts[i].CFrame
                    game:GetService("Debris"):AddItem(ref, 1)
                    so("315743331", ref, 0.2, 2)
                    so("315743298", ref, 0.1, 1.5)
                    MagicCircle2(BrickColor.new(NewCol), Parts[i].CFrame * cf(math.random(-100, 100) / 100, 0, math.random(-100, 100) / 100), 1, 8, 1, -0.04, 8, -0.04, 0.1, -0.2)
                  end
                end
                for i = 1, 2 do
                  MagicCircle2(BrickColor.new(NewCol), Parts[last].CFrame * cf(math.random(-200, 200) / 100, 0, math.random(-200, 200) / 100), 1, 8, 1, -0.04, 8, -0.04, 0.2, -0.2)
                  MagicCircle(BrickColor.new(NewCol), Parts[last].CFrame, 1, 1, 1, 1, 1, 1, 0.1, 1, effects)
                end
                grabpos.position = Parts[i].Position
                if RecentEnemy.Value:findFirstChild("HumanoidRootPart") ~= nil then
                  RecentEnemy.Value.HumanoidRootPart.CFrame = cf(Parts[i].Position)
                end
                Parts[i].Parent = nil
                table.remove(Parts, i)
                -- DECOMPILER ERROR at PC774: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC774: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        else
            cooldowns[1] = 40
            for i = 1, #Parts do
              Parts[1].Parent = nil
              table.remove(Parts, 1)
            end
grabpos.Parent = nil
          end
        end
      end
dec.Parent = nil
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 35 and ghostmode == false then
	local ibc = 0
    attack = true
    cooldowns[2] = 0
    mana.Value = mana.Value - 35
    local MouseLook = cf((RootPart.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
    local hit, pos = rayCast(RootPart.Position, MouseLook.lookVector, 200, Character)
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(pos) * cf(0, 3, 0)
    game:GetService("Debris"):AddItem(ref, 10)
    hitfloor, posfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
    ominField = posfloor
    ref.CFrame = cf(ominField)
    so("315743331", ref, 1, 0.8)
    ominup = true
    for i = 0, 1, 0.1 do
      swait()
      MagicBlock(BrickColor.new(NewCol), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.1, 1, effects)
      hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.1) * euler(0.2, 0, 0.4) * euler(0, 1, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2, 0, -0.6) * euler(0, 1.4, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      MagicCircle(BrickColor.new(NewCol), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 2, 2, 2, 0.1, 1, effects)
      hwld.C0 = clerp(hwld.C0, euler(0.8, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.2) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.2, 0, 0) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.1) * euler(0.2, 0, 0.4) * euler(0, 1, 0) * euler(-0.5, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(2, 0, -1) * euler(0, 1.4, 0) * euler(0, 0, -1.2), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.8, -0.3, -0.6) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.3), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0.1) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
        ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref2.Anchored = true
        ref2.CFrame = ref.CFrame
        game:GetService("Debris"):AddItem(ref2, 1)
        so("315743355", ref2, 1, 0.4)
        so("228343343", ref2, 1, 0.8)
        ref.CFrame = cf(ominField)
        MagicCircle3(BrickColor.new(NewCol), cf(ref.Position), 150, 40, 150, -4, 10, -4, 0.04, 1, effects)
        coroutine.resume(coroutine.create(function()
	    for i = 1, 10 do
				swait()
		ibc = ibc + 1
		 if ibc == 5 then
          MagniDamage(ref, 15, 8, 10, math.random(30, 50), "Knockdown2", ref, 0, 1, 8, nil, nil, true, "Defense", 0.2, 200)
         end
	end
end)) 
        MagniBuff(ref, 15, "Defense", -0.25, 400)
        MagniHeal(ref, 15, 8, 11)
        ominup = false
        swait(10)
        ref.Parent = nil
        attack = false
        ibc = 0
      end
    end
do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[3] >= 20 and mana.Value >= 4 and ghostmode == false and orblimit < 4 then
    attack = true
    bladetype = "Stable"
    for i = 0, 1, 0.1 do
      swait()
      hwld.C0 = clerp(hwld.C0, euler(2, -0.2, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0.3, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(-0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.8), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.3) * euler(2, 0, 0.4) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(0.2, 0.5, -0.5) * euler(1.7, 0, 1) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, 0) * euler(0, -1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC242: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC242: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
        cooldowns[3] = cooldowns[3] - 20
        mana.Value = mana.Value - 4
        eul = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        MagicCircle(BrickColor.new(NewCol2), prt24.CFrame * cf(0, 1, 0) * eul, 1, 1, 1, -0.01, 10, -0.01, 0.09, 1, effects)
        MagicCircle(BrickColor.new(NewCol2), prt24.CFrame * cf(0, 1, 0) * eul * euler(1.57, 0, 0), 1, 1, 1, -0.01, 10, -0.01, 0.09, 1, effects)
        MagicCircle(BrickColor.new(NewCol2), prt24.CFrame * cf(0, 1, 0) * eul * euler(0, 0, 1.57), 1, 1, 1, -0.01, 10, -0.01, 0.09, 1, effects)
        orb1 = part(3, effects, 0, 1, BrickColor.new("Black"), "Orb", vt())
        owld1 = weld(orb1, orb1, RootPart, euler(0, 0, 0))
        orb2 = part(3, orb1, 0, 0.6, BrickColor.new(NewCol), "Orb", vt())
        orb2.Material = "Neon"
        omsh = mesh("SpecialMesh", orb2, "Sphere", "nil", vt(0, 0, 0), vt(5, 5, 5))
        owld2 = weld(orb2, orb2, orb1, cf(0, 0, 0))
        val = it("BoolValue", orb1)
        val.Value = false
        orblimit = orblimit + 1
        table.insert(Effects, {orb1, "Orb", orb2, owld1, owld2, 400, 0, cf(0, math.random(400, 1200) / 100, 0), 0, euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, math.random(2, 5) / 100, math.random(10, 15) / 100, math.random(2, 5) / 100, val})
        so("183763498", orb1, 0.4, 1)
        bladetype = "Mana"
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
  if cooldownmax <= cooldowns[4] and mana.Value >= 50 and ghostmode == false then
    attack = true
    cooldowns[4] = 0
    mana.Value = mana.Value - 50
    doing4 = true
    local decenem = Instance.new("NumberValue", nil)
    decenem.Name = "DecreaseMvmt"
    decenem.Value = 10
    game:GetService("Debris"):AddItem(decenem, 1)
    if PhantomEnemy.Value ~= nil and PhantomEnemy.Value:findFirstChild("Stats") ~= nil and PhantomEnemy.Value.Stats:findFirstChild("Decrease") ~= nil then
      decenem.Parent = PhantomEnemy.Value.Stats.Decrease
    end
    for i = 0, 1, 0.1 do
      swait()
      PhantomPos = RootPart.CFrame
      if PhantomEnemy.Value ~= nil and PhantomEnemy.Value:findFirstChild("HumanoidRootPart") ~= nil then
        PhantomPos = PhantomEnemy.Value.HumanoidRootPart.CFrame
      end
      hwld.C0 = clerp(hwld.C0, euler(2.4, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, -0.3, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.2, 0, 0) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.3) * euler(0.1, 0, 0.4) * euler(0, 1.2, 0) * euler(1.2, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.2, 0.4, -0.2) * euler(0.8, 0, 0.6) * euler(0, 1, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.8, -0.3, -0.6) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.3), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0.1) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.1), 0.3)
    end
    mov = 0
    Portal1 = {}
    Portal2 = {}
    for i = 0, 1, 0.1 do
      swait()
      mov = mov - 0.5709
      for i = 1, #Portal1 do
        MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
      end
      for i = 1, #Portal2 do
        MagicCircle(BrickColor.new(NewCol2), sRootPart.CFrame * Portal2[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
      end
      hwld.C0 = clerp(hwld.C0, euler(2.4, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, -0.3, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0, 0, mov) * euler(0, 0, 0.4) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.3) * euler(0.1, 0, 0.4) * euler(0, -1.2, 0) * euler(0.4, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.6) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.8, -0.3, -0.6) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.3), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.8, -0.3, -0.6) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, 0.3), 0.3)
      CF = RootPart.CFrame * euler(0, mov, 0) * cf(0, 0, -8)
      MagicCircle(BrickColor.new(NewCol2), CF, 1, 1, 1, 5, 5, 5, 0.1, 1, effects)
      table.insert(Portal1, {CF, euler(0, mov, 0) * cf(0, 0, -8)})
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = CF
      game:GetService("Debris"):AddItem(ref, 1)
      so("183763493", ref, 0.2, 0.8)
      PhantomPos = RootPart.CFrame
      if PhantomEnemy.Value ~= nil and PhantomEnemy.Value:findFirstChild("HumanoidRootPart") ~= nil then
        PhantomPos = PhantomEnemy.Value.HumanoidRootPart.CFrame
        CF2 = sRootPart.CFrame * euler(0, mov, 0) * cf(0, 0, -8)
        MagicCircle(BrickColor.new(NewCol2), CF2, 1, 1, 1, 5, 5, 5, 0.1, 1, effects)
        table.insert(Portal2, {CF2, euler(0, mov, 0) * cf(0, 0, -8)})
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = CF2
        game:GetService("Debris"):AddItem(ref, 1)
        so("183763493", ref, 0.2, 0.8)
      end
    end
    bladetype = "Stable"
    mov = 0
    for i = 0, 1, 0.1 do
      swait()
      for i = 1, #Portal1 do
        MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
      end
      for i = 1, #Portal2 do
        MagicCircle(BrickColor.new(NewCol2), sRootPart.CFrame * Portal2[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
      end
      hwld.C0 = clerp(hwld.C0, euler(2.4, 0, 0) * cf(0, 0.8, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0.3, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 1.57) * euler(0, 0, 0) * euler(-0.6, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -1) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.1), 0.3)
    end
    for i = 0, 1, 0.1 do
      swait()
      for i = 1, #Portal1 do
        MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
      end
      for i = 1, #Portal2 do
        MagicCircle(BrickColor.new(NewCol2), sRootPart.CFrame * Portal2[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
      end
      hwld.C0 = clerp(hwld.C0, euler(1.7, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0.3, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(2.8, 0, 0.2) * euler(0, 1, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -1) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.1), 0.3)
    end
    MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame, 80, 6, 80, 3, -0.3, 3, 0.08, 1, effects)
    so("315743350", RootPart, 1, 0.8)
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = RootPart.CFrame
    game:GetService("Debris"):AddItem(ref, 1)
    so("315743350", ref, 1, 0.8)
    local whichportal = false
    if doing4 == true then
      whichportal = true
      MagicCircle(BrickColor.new(NewCol2), sRootPart.CFrame, 80, 6, 80, 3, -0.3, 3, 0.08, 1, effects)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      game:GetService("Debris"):AddItem(ref, 1)
      for i = 1, #Portal1 do
        ref.CFrame = RootPart.CFrame * Portal1[i][2]
        MagniDamage(ref, 5, 6, 8, 0, "Normal", RootPart, 0.1, 1, (math.random(3, 5)), nil, nil, true)
        MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[i][2] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 10, 1, 0.1, 1, effects)
      end
      ref.Parent = nil
      for i = 1, #Portal1 do
        table.remove(Portal1, 1)
      end
    end
    do
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 0
      bladetype = "None"
      if Rooted.Value == false then
        RootPart.CFrame = sRootPart.CFrame * cf(math.random(-200, 200) / 100, 0, math.random(-200, 200) / 100)
      end
      doing4 = false
      for i = 0, 1, 0.05 do
        swait()
        for i = 1, #Portal1 do
          if Portal1[i][2] ~= nil then
            Portal1[i][2] = Portal1[i][2] * cf(0, 0, 1) * euler(0, 0.2, 0)
          end
          MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
        end
        for i = 1, #Portal2 do
          if Portal2[i][2] ~= nil then
            Portal2[i][2] = Portal2[i][2] * cf(0, 0, 1) * euler(0, 0.2, 0)
          end
          MagicCircle(BrickColor.new(NewCol2), sRootPart.CFrame * Portal2[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
        end
        if i <= 0.5 then
          hwld.C0 = clerp(hwld.C0, euler(1.7, 0, 0) * cf(0, 1, 0), 0.3)
          wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * euler(20 * i, 0, 0) * cf(0, 0, 0), 0.3)
        else
          hwld.C0 = clerp(hwld.C0, euler(-1.57, 0, 0) * cf(0, 1, 0), 0.3)
          wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.3)
        end
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(-0.3, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4) * euler(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(3.3, 0, 0.4) * euler(0, 0.4, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.6) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1.2, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(-0.1, 0, 0.1), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.2) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.1), 0.2)
      end
      bladetype = "Stable"
      for i = 0, 1, 0.3 do
        swait()
        for i = 1, #Portal1 do
          if Portal1[i][2] ~= nil then
            if whichportal == true then
              Portal1[i][2] = Portal1[i][2] * cf(0, 0, 2) * euler(0, 0.8, 0)
            else
              Portal1[i][2] = Portal1[i][2] * cf(0, 0, 2) * euler(0, 0.4, 0)
            end
          end
          MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
        end
        for i = 1, #Portal2 do
          if Portal2[i][2] ~= nil then
            if whichportal == true then
              Portal2[i][2] = Portal2[i][2] * cf(0, 0, 2) * euler(0, 0.8, 0)
            else
              Portal2[i][2] = Portal2[i][2] * cf(0, 0, 2) * euler(0, 0.4, 0)
            end
          end
          MagicCircle(BrickColor.new(NewCol2), sRootPart.CFrame * Portal2[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
        end
        hwld.C0 = clerp(hwld.C0, euler(-1.6, 0, 0) * cf(0, 1, 0), 0.4)
        wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.6) * euler(0, 0, 0.4) * euler(0, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0.4) * euler(0, 0, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.2) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1.2, -0.6, -0.3) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(-0.1, 0, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.2), 0.4)
      end
      numbr = 0
      if whichportal == true then
        numbr = #Portal2
      else
        numbr = #Portal1
      end
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      game:GetService("Debris"):AddItem(ref, 1)
      for i = 1, numbr do
        swait()
        if whichportal == true then
          for i = 1, 3 do
            MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal2[1][2] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.2, 1, 0.2, 0.6, 20, 0.6, 0.1, 1, effects)
          end
          ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref2.Anchored = true
          ref2.CFrame = ref.CFrame
          game:GetService("Debris"):AddItem(ref2, 1)
          so("315748999", ref2, 0.6, 0.6)
          so("315748949", ref2, 0.6, 0.8)
          ref.CFrame = RootPart.CFrame * Portal2[1][2]
          MagniDamage(ref, 10, 5, 7, 0, "Normal", RootPart, 0.05, 1, (math.random(3, 5)), nil, nil, true, "Defense", 0.03, 300)
          MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal2[1][2] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 8, 8, 8, 0.1, 1, effects)
          table.remove(Portal2, 1)
        else
          for i = 1, 3 do
            MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[1][2] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.2, 1, 0.2, 0.6, 20, 0.6, 0.1, 1, effects)
          end
          ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref2.Anchored = true
          ref2.CFrame = ref.CFrame
          game:GetService("Debris"):AddItem(ref2, 1)
          so("315748999", ref2, 0.6, 0.6)
          so("315748949", ref2, 0.6, 0.8)
          ref.CFrame = RootPart.CFrame * Portal1[1][2]
          MagniDamage(ref, 8, 5, 7, 0, "Normal", RootPart, 0.01, 1, (math.random(3, 5)), nil, nil, true, "Defense", 0.05, 300)
          MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[1][2] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 8, 8, 8, 0.1, 1, effects)
          table.remove(Portal1, 1)
        end
        for i = 1, #Portal1 do
          MagicCircle(BrickColor.new(NewCol2), RootPart.CFrame * Portal1[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
        end
        for i = 1, #Portal2 do
          MagicCircle(BrickColor.new(NewCol2), sRootPart.CFrame * Portal2[i][2], 1, 1, 1, 2, 2, 2, 0.2, 1, effects)
        end
        hwld.C0 = clerp(hwld.C0, euler(-1.6, 0, 0) * cf(0, 1, 0), 0.4)
        wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.6) * euler(0, 0, 0.4) * euler(0, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0.4) * euler(0, 0, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.2) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1.2, -0.6, -0.3) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(-0.1, 0, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.2), 0.4)
      end
      decenem.Parent = nil
      ref.Parent = nil
      bladetype = "Mana"
      dec.Parent = nil
      attack = false
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
Buff = function(Part, magni, Dec, DecAm, Dur)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil and c == Character then
        DecreaseStat(head.Parent, Dec, DecAm, Dur)
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
        if mag <= magni and c == Character then
          Heal = math.floor(mindam, maxdam)
          hum.Health = hum.Health + Heal
          showDamage(c, Heal, "Heal")
        end
      end
    end
  end
end
MagniDamage = function(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, hitted)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if c:findFirstChild("Spirit") ~= nil then
      hum = c.Spirit
    end
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
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, nil, hitted)
              end
            end
          end
          do
            -- DECOMPILER ERROR at PC191: LeaveBlock: unexpected jumping out DO_STMT

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
    end
  end
end
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent, prt2)
  local prt = (part(3, parent, 0, 0, brickcolor, "Effect", vt()))
  local wld = nil
  prt.CFrame = cframe
  prt.Anchored = true
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end
MagicCircle3 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent, prt2)
  local prt = (part(3, parent, 0, 0, brickcolor, "Effect", vt()))
  local wld = nil
  prt.CFrame = cframe
  prt.Anchored = true
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder2", delay, x3, y3, z3, msh})
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
MagicFire = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay, rise)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Fire", delay, x2, y2, z2, msh, rise})
end
MagicBlockC = function(brickcolor, cframe, cf2, x1, y1, z1, x3, y3, z3, delay, move, rise, inside)
  local prt = part(3, effects, 0, 0.5, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, cframe, cf2, euler(0, math.random(-50, 50), 0), math.random(1, 2), move, rise, inside})
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
BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound, hittedd)
  hpls = false
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
  if hit.Parent:findFirstChild("Spirit") ~= nil then
    h = hit.Parent.Spirit
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    if Player.Neutral == false then
      if hit.Parent:findFirstChild("Alignment") ~= nil and hit.Parent.Alignment.Value == Player.TeamColor.Color then
        hpls = true
      end
      if game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor == Player.TeamColor then
        hpls = true
      end
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
    if hittedd == nil then
      RecentEnemy.Value = hit.Parent
    end
    if ghostmode == true then
      PhantomEnemy.Value = hit.Parent
    end
    game:GetService("Debris"):AddItem(c, 0.5)
    if hpls then
      coef = -1
    else
      coef = 1
    end
    minim = minim * Atk.Value
    maxim = maxim * Atk.Value
    Damage = 0
    if minim == maxim then
      Damage = maxim * coef
    else
      Damage = math.random(minim, maxim) * coef
    end
    if hittedd ~= nil then
      hittedd.Value = true
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = hit.CFrame
      local rng = (math.random(1, 3))
      local buff = nil
      if rng == 1 then
        buff = "Movement"
      elseif rng == 2 then
          buff = "Damage"
        elseif rng == 3 then
            buff = "Defense"
      end
      Buff(RootPart, 1, buff, Damage / 100 * -coef, 300)
      Heal = math.floor(Damage / 1.5) * coef
      Humanoid.Health = Humanoid.Health + Heal
      showDamage(Character, Heal, "Heal")
      game:GetService("Debris"):AddItem(ref, 1)
      so("315748970", ref, 0.8, 1)
    end
      blocked = false
      enblock = nil
      Stats = hit.Parent:findFirstChild("Stats")
if Stats == nil then
	Character.Stats:Clone().Parent=hit.Parent
end
      if Stats ~= nil then
	  Stats.Defense.Value=1
        if cataclysm == true then
          dec = Stats:findFirstChild("Decrease")
          if dec ~= nil then
            for _,c in pairs(dec:children()) do
              if c.className == "NumberValue" and c.Value < 0 and c:findFirstChild("Duration") ~= nil then
                c.Parent = nil
              end
            end
          end
        end
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
              local ignoredef = false
              if ghostmode == true then
                ignoredef = true
              end
              if Stats:findFirstChild("Boss") ~= nil and Stats.Boss.Value == true then
                ignoredef = false
              end
              if ignoredef == false then
                Damage = Damage / Stats.Defense.Value
              end
              if Damage <= 3 and (ranged == false or ranged == nil) and blocked ~= true then
                hitnum = math.random(1, 5)
                if hitnum == 1 then
                  so("199149321", hit, 1, 1)
                elseif hitnum == 2 then
                    so("199149338", hit, 1, 1)
                  elseif hitnum == 3 then
                      so("199149367", hit, 1, 1)
                    elseif hitnum == 4 then
                        so("199149409", hit, 1, 1)
                      elseif hitnum == 5 then
                          so("199149452", hit, 1, 1)
                end
              elseif ranged == false or ranged == nil and blocked ~= true then
                  hitnum = math.random(1, 6)
                  if hitnum == 1 then
                    so("199149137", hit, 1, 1)
                  elseif hitnum == 2 then
                      so("199149186", hit, 1, 1)
                    elseif hitnum == 3 then
                        so("199149221", hit, 1, 1)
                      elseif hitnum == 4 then
                          so("199149235", hit, 1, 1)
                        elseif hitnum == 5 then
                            so("199149269", hit, 1, 1)
                          elseif hitnum == 6 then
                              so("199149297", hit, 1, 1)
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
    h:TakeDamage(Damage)
  end), h, Damage)
              if hittedd ~= nil then
                hittedd.Value = true
                if h ~= nil and ghostmode == true then
                  h.Jump = true
                end
              end
              if ghostmode == false and (ranged == false or ranged == nil) then
                mana.Value = math.floor(mana.Value + Damage * coef / 2)
              end
              if hpls then
                showDamage(hit.Parent, Damage * -1, "Heal")
              else
                showDamage(hit.Parent, Damage, "Damage")
              end
              if DecreaseState ~= nil then
                if DecreaseState == "Shatter" then
                  DecreaseStat(hit.Parent, "Movement", DecreaseAmount, Duration)
                  DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
                else
                  DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount * coef, Duration)
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
              elseif Type == "Shatter" then
                    for i = 1, 10 do
                      BreakEffect(BrickColor.new("Cyan"), hit.CFrame, math.random(20, 80) / 100, math.random(2, 10), math.random(20, 80) / 100)
                    end
                  elseif Type == "Knockdown2" then
                        hum = h
                        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
                        local bodvol = Instance.new("BodyVelocity")
                        bodvol.velocity = angle * knockback
                        bodvol.P = 500
                        bodvol.maxForce = Vector3.new(2000, 2000, 2000)
                        bodvol.Parent = hit
                        game:GetService("Debris"):AddItem(bodvol, 0.5)
                      elseif Type == "Normal" then
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
                          debounce = Instance.new("BoolValue")
                          debounce.Name = "DebounceHit"
                          debounce.Parent = hit.Parent
                          debounce.Value = true
                          game:GetService("Debris"):AddItem(debounce, Delay)
                          if painbring == true and painboom >= 10 then
                            painboom = 0
                            MagicBlock(BrickColor.new("Medium stone grey"), cf(prt6.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 5, 5, 5, 0.05, 1, workspace)
                            MagicBlock(BrickColor.new("Medium stone grey"), cf(prt6.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 3, 3, 3, 0.05, 1, workspace)
                            MagniDamage(prt6, 10, 4, 6, math.random(5, 10), "Knockdown2", RootPart, 0, 1, (math.random(8, 10)), nil, nil, true)
                          end
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
  if key == "f" and ghostmode == false then
    pressedf = true
    fnumb = 0
    attack = true
    if equipped == false then
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
  cane = true
  maxmana = 50
  if ominField ~= nil then
    maxmana = 30
  end
  if ghostmode == false and mana.Value <= maxmana then
    cane = false
  end
  if key == "e" and cane == true then
    if ghostmode == true then
      attack = true
      local dec = Instance.new("NumberValue")
      if clone:findFirstChild("Stats") ~= nil and clone.Stats:findFirstChild("Decrease") ~= nil then
        dec.Parent = clone.Stats.Decrease
        dec.Name = "DecreaseMvmt"
        dec.Value = 10
      end
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.4, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0) * euler(0.6, 0, 0.1), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0) * euler(0.6, 0, -0.1), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.4) * euler(0, 1.57, -0.8) * euler(-0.2, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.5) * euler(0, -1.57, -0.2), 0.3)
      end
      dec.Parent = nil
      attack = false
    end
      Spectre()
      if ghostmode == true then
        drainmana = true
      else
        drainmana = false
      end
      if ghostmode == true and ominField == nil then
        Torso.Velocity = RootPart.CFrame.lookVector * 80
      end
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
print("Spectre loaded.")
local mananum = 0
local blocknum2 = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local floornum = 0
local idleheal = 0
local walk = 0
local walkforw = true
local copymove = 0
local sRJCF = it("Weld", spectral)
local sLWCF = it("Weld", spectral)
local sRWCF = it("Weld", spectral)
local sRHCF = it("Weld", spectral)
local sLHCF = it("Weld", spectral)
local ominef = 0
local drainmana2 = 0
local spectreef = 0
while true do
  swait()
  effects.Parent = Character
  drainmana2 = drainmana2 + 1
  if drainmana == true then
    drainmax = 5
    if ominField ~= nil then
      drainmax = 7
    end
    if (drainmana2) % drainmax == 0 then
      mana.Value = mana.Value - 1
      if mana.Value <= 0 and ghostmode == true and attack == false then
        drainmana = false
        Spectre()
        DecreaseStat(Character, "Movement", 0.2, 100)
      end
    end
  end
  if Humanoid.Health <= 0 then
    spectral.Parent = nil
    if clone ~= nil then
      game:GetService("Debris"):AddItem(clone, 5)
    end
    spectral.Parent = nil
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
    ominef = ominef + 1
    if ominField ~= nil then
      hitfloor, posfloor = rayCast(ominField + vt(0, 1, 0), CFrame.new(ominField + vt(0, 1, 0), ominField - Vector3.new(0, 1, 0)).lookVector, 100, effects)
      ominField = posfloor
      if ominup == false then
        MagicBlockC(BrickColor.new(NewCol), cf(ominField), cf(math.random(1500, 2000) / 100, 0, 0), 10, 10, 10, -0.8, -0.8, -0.8, 0.05, math.random(2, 20) / 100, math.random(60, 140) / 100, -math.random(100, 200) / 100)
      else
        MagicBlockC(BrickColor.new(NewCol), cf(ominField), cf(math.random(1500, 2000) / 100, 0, 0), 20, 20, 20, -3, -3, -3, 0.1, math.random(4, 25) / 100, math.random(300, 400) / 100, -2)
      end
      if (ominef) % 2 == 0 then
        MagicCircle(BrickColor.new(NewCol), cf(ominField) * euler(0, math.random(-50, 50), 0), 100, 20, 80, 10, -1, 5, 0.05, 1, effects)
      end
      if (ominef) % 50 == 0 then
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = cf(ominField)
        game:GetService("Debris"):AddItem(ref, 1)
        MagniBuff(ref, 20, "Damage", -0.2, 100)
        ref.Parent = nil
      end
      if 80 <= cooldowns[2] then
        ominField = nil
      end
    end
    if bladetype == "None" then
      for _,c in pairs(modelzorz:children()) do
        if c.className == "Part" and (c.Name == "Part24" or c.Name == "Part25" or c.Name == "Part26") and c.Transparency < 1 then
          c.Transparency = c.Transparency + 0.05
        end
      end
    elseif bladetype == "Stable" then
          for _,c in pairs(modelzorz:children()) do
            if c.className == "Part" and (c.Name == "Part24" or c.Name == "Part25" or c.Name == "Part26") and 0.4 < c.Transparency then
              c.Transparency = c.Transparency - 0.05
            end
          end
        elseif bladetype == "Mana" then
              for _,c in pairs(modelzorz:children()) do
                if c.className == "Part" and (c.Name == "Part24" or c.Name == "Part25" or c.Name == "Part26") then
                  val = 20 / mana.Value
                  if val <= 0.4 then
                    val = 0.4
                  end
                  if val < c.Transparency then
                    c.Transparency = c.Transparency - 0.02
                  elseif c.Transparency < val then
                      c.Transparency = c.Transparency + 0.02
                    end
                  end
                end
			  end
              if ghostmode == false then
                for _,c in pairs(modelzorz2:children()) do
                  if c.className == "Part" and c.Transparency < 1 then
                    c.Transparency = c.Transparency + 0.1
                  end
                end
              else
                  if clone ~= nil and (clone:findFirstChild("Humanoid")) ~= nil then
                    if Humanoid.Health <= clone.Humanoid.Health then
                      clone.Humanoid.Health = Humanoid.Health
                    end
                    Humanoid.Health = clone.Humanoid.Health
                  end
                  hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
                  wld1.C0 = clerp(wld1.C0, euler(0, -0.77, 0) * euler(-0.2, 0, 0.2) * cf(0, 0, 0), 0.3)
                  if cNeck ~= nil then
                    cNeck.C0 = clerp(cNeck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, 0), 0.3)
                  end
                  if cRootJoint ~= nil then
                    cRootJoint.C0 = clerp(cRootJoint.C0, RootCF * cf(0, 0, -1.4) * euler(0, 0, 0), 0.3)
                  end
                  if cRW ~= nil then
                    cRW.C0 = clerp(cRW.C0, cf(1, 0.8, -0.5) * euler(2, 0, -0.8) * euler(0, 3.14, 0), 0.3)
                  end
                  if cLW ~= nil then
                    cLW.C0 = clerp(cLW.C0, cf(-1, 0.8, -0.5) * euler(2, 0, 0.8) * euler(0, 3.14, 0), 0.3)
                  end
                  if cRH ~= nil then
                    cRH.C0 = clerp(cRH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, -1.4), 0.3)
                    cRH.C1 = clerp(cRH.C1, RHC1 * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                  end
                  if cLH ~= nil then
                    cLH.C0 = clerp(cLH.C0, cf(-1, 0.2, -0.8) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.2), 0.3)
                    cLH.C1 = clerp(cLH.C1, LHC1 * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                  end
                  for _,c in pairs(modelzorz2:children()) do
                    if c.className == "Part" and 0.2 < c.Transparency then
                      c.Transparency = c.Transparency - 0.05
                    end
                  end
			end
                    if equipped == false then
                      for _,c in pairs(spectral:children()) do
                        if c.className == "Part" and c.Transparency < 1 then
                          c.Transparency = c.Transparency + 0.05
                        end
                      end
                    end
                      if ghostmode == true then
                        copymove = 0
                        spectreef = spectreef + 1
                        if (clone:findFirstChild("HumanoidRootPart")) ~= nil and (spectreef) % 3 == 0 then
                          MagicBlockC(BrickColor.new(NewCol), cf(clone.HumanoidRootPart.Position) * cf(0, -2, 0), cf(math.random(200, 700) / 100, 0, 0), 3, 3, 3, -0.2, -0.2, -0.2, 0.05, 0.02, math.random(30, 90) / 100, -math.random(20, 50) / 100)
                          MagicBlockC(BrickColor.new(NewCol), cf(RootPart.Position) * cf(0, -3, 0), cf(math.random(50, 100) / 100, 0, 0), 2, 2, 2, -0.05, -0.05, -0.05, 0.05, 0.2, math.random(50, 120) / 100, math.random(40, 70) / 100)
                        end
                        for i = 1, #oldCFrames do
                          table.remove(oldCFrames, 1)
                        end
                      end
                        copymove = copymove + 1
                        if 10 <= copymove then
                          sRootPart.CFrame = oldCFrames[1][1]
                          sNeck.C0 = oldCFrames[1][2]
                          sRootJoint.C0 = oldCFrames[1][3]
                          sLW.C0 = oldCFrames[1][4]
                          sRW.C0 = oldCFrames[1][5]
                          sLH.C0 = oldCFrames[1][6]
                          sRH.C0 = oldCFrames[1][7]
                          sLH.C1 = oldCFrames[1][8]
                          sRH.C1 = oldCFrames[1][9]
                          table.remove(oldCFrames, 1)
                        end
                        if PhantomEnemy.Value == nil then
                          doing4 = false
                        end
                        -- DECOMPILER ERROR at PC4726: Unhandled construct in 'MakeBoolean' P1

                        if doing4 == true and PhantomEnemy.Value ~= nil then
                          if (PhantomEnemy.Value:findFirstChild("HumanoidRootPart")) ~= nil then
                            table.insert(oldCFrames, {PhantomPos, Neck.C0, sRJCF.C0, sLWCF.C0, sRWCF.C0, sLHCF.C0, sRHCF.C0, sLHCF.C1, sRHCF.C1})
                          else
                            table.insert(oldCFrames, {RootPart.CFrame, Neck.C0, sRJCF.C0, sLWCF.C0, sRWCF.C0, sLHCF.C0, sRHCF.C0, sLHCF.C1, sRHCF.C1})
                          end
                        end
                        table.insert(oldCFrames, {RootPart.CFrame, Neck.C0, sRJCF.C0, sLWCF.C0, sRWCF.C0, sLHCF.C0, sRHCF.C0, sLHCF.C1, sRHCF.C1})
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
                        if ghostmode == true then
                          Stagger.Value = false
                          StaggerHit.Value = false
                          if StunT.Value <= Stun.Value then
                            Stun.Value = 99
                          end
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
                        torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
                        velderp = RootPart.Velocity.y
                        hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
                        if equipped == true then
                          if attack == false then
                            idle = idle + 1
                          else
                            idle = 0
                          end
                          if Anim == "Walk" then
                            if walkforw == true then
                              RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
                              LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
                              sRWCF.C0 = clerp(sRWCF.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0), Mvmt.Value * 10 / 50)
                              sLWCF.C0 = clerp(sLWCF.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
                            else
                              sRWCF.C0 = clerp(sRWCF.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
                              sLWCF.C0 = clerp(sLWCF.C0, cf(-1.5, 0.5, 0) * euler(1, 0, 0), Mvmt.Value * 10 / 50)
                              RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
                              LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
                            end
                          else
                            RH.C1 = clerp(RH.C1, RHC1, 0.2)
                            LH.C1 = clerp(LH.C1, LHC1, 0.2)
                          end
                          -- DECOMPILER ERROR at PC5222: Unhandled construct in 'MakeBoolean' P1

                          if ghostmode == true and equipped == true then
                            for _,c in pairs(spectral:children()) do
                              if c.className == "Part" and c.Name ~= "HumanoidRootPart" and c.Transparency < 1 then
                                c.Transparency = c.Transparency + 0.05
                              end
                            end
                          end
                            -- DECOMPILER ERROR at PC5254: Unhandled construct in 'MakeBoolean' P1

                            if (Anim == "Idle" or attack == true) and equipped == true then
                              for _,c in pairs(spectral:children()) do
                                if c.className == "Part" and c.Name ~= "HumanoidRootPart" then
                                  nums = 0.9
                                  if doing4 == true then
                                    nums = 0.5
                                  end
                                  if c.Transparency < nums then
                                    c.Transparency = c.Transparency + 0.02
                                  else
                                    if nums < c.Transparency then
                                      c.Transparency = c.Transparency - 0.02
                                    end
                                  end
                                end
                              end
                            end
                              if equipped == true then
                                for _,c in pairs(spectral:children()) do
                                  if c.className == "Part" and c.Name ~= "HumanoidRootPart" then
                                    if c.Transparency < 0.8 then
                                      c.Transparency = c.Transparency + 0.05
                                    else
                                      if 0.8 < c.Transparency then
                                        c.Transparency = c.Transparency - 0.05
                                      end
                                    end
                                  end
                                end
                              end
                                if 1 < RootPart.Velocity.y and hitfloor == nil then
                                  Anim = "Jump"
                                  sRJCF.C0 = clerp(sRJCF.C0, RootJoint.C0, 0.3)
                                  sRWCF.C0 = clerp(sRWCF.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1), 0.3)
                                  sLWCF.C0 = clerp(sLWCF.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1), 0.3)
                                  sRHCF.C0 = clerp(sRHCF.C0, RH.C0, 0.3)
                                  sLHCF.C0 = clerp(sLHCF.C0, LH.C0, 0.3)
                                  sRHCF.C1 = clerp(sRHCF.C1, RH.C1, 0.3)
                                  sLHCF.C1 = clerp(sLHCF.C1, LH.C1, 0.3)
                                  if attack == false then
                                    if ghostmode == false then
                                      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                                      Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
                                      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(0.3, 0, 0.1) * euler(0, 0.8, 0), 0.3)
                                      RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                      LW.C0 = clerp(LW.C0, cf(-0.4, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1.8, 0), 0.3)
                                      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                      RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                    else
                                      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
                                      Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
                                      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.1) * euler(0, 0, 0), 0.3)
                                      RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                      LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(-0.6, 0, -0.1) * euler(0, 0, 0), 0.3)
                                      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                      RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
                                    end
                                  end
                                elseif RootPart.Velocity.y < -1 and hitfloor == nil then
                                    Anim = "Fall"
                                    sRJCF.C0 = clerp(sRJCF.C0, RootJoint.C0, 0.3)
                                    sRWCF.C0 = clerp(sRWCF.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1), 0.3)
                                    sLWCF.C0 = clerp(sLWCF.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1), 0.3)
                                    sRHCF.C0 = clerp(sRHCF.C0, RH.C0, 0.3)
                                    sLHCF.C0 = clerp(sLHCF.C0, LH.C0, 0.3)
                                    sRHCF.C1 = clerp(sRHCF.C1, RH.C1, 0.3)
                                    sLHCF.C1 = clerp(sLHCF.C1, LH.C1, 0.3)
                                    if attack == false then
                                      if ghostmode == false then
                                        Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                                        Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.3)
                                        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(0.3, 0, 0.1) * euler(0, 0.8, 0), 0.3)
                                        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                        LW.C0 = clerp(LW.C0, cf(-0.4, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1.8, 0), 0.3)
                                        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                                        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                                      else
                                        Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                                        Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.3)
                                        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 1) * euler(0, 0, 0), 0.3)
                                        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                        LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(0.2, 0, -1) * euler(0, 0, 0), 0.3)
                                        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                                        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                                      end
                                    end
                                  elseif torvel < 1 and hitfloor ~= nil then
                                      Anim = "Idle"
                                      sRJCF.C0 = clerp(sRJCF.C0, RootJoint.C0, 0.2)
                                      sRWCF.C0 = clerp(sRWCF.C0, RW.C0, 0.2)
                                      sLWCF.C0 = clerp(sLWCF.C0, LW.C0, 0.2)
                                      sRHCF.C0 = clerp(sRHCF.C0, RH.C0, 0.3)
                                      sLHCF.C0 = clerp(sLHCF.C0, LH.C0, 0.3)
                                      sRHCF.C1 = clerp(sRHCF.C1, RH.C1, 0.3)
                                      sLHCF.C1 = clerp(sLHCF.C1, LH.C1, 0.3)
                                      if attack == false then
                                        if ghostmode == false then
                                          hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
                                          wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, -0.3, 0), 0.3)
                                          Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0.5), 0.2)
                                          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.2)
                                          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.3) * euler(1 + (donum) / 4, 0, -0.1 - (donum) / 4) * euler(0, 0.4, 0), 0.2)
                                          RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                          LW.C0 = clerp(LW.C0, cf(-0.4, 0.5, -0.5) * euler(1.4 + (donum) / 4, 0, 0.6 - (donum) / 4) * euler(0, 0.2, 0), 0.2)
                                          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                          RH.C0 = clerp(RH.C0, cf(1, -0.9, 0) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.2), 0.2)
                                          LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0.1), 0.2)
                                        else
                                          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0), 0.2)
                                          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, 0), 0.2)
                                          RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(1.4 + (donum) / 4, 0, 0.2 + (donum) / 4) * euler(0, 1, 0), 0.2)
                                          RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                          LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.2) * euler(1.4 + (donum) / 4, 0, -0.2 - (donum) / 4) * euler(0, -1, 0), 0.2)
                                          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                          RH.C0 = clerp(RH.C0, cf(1, -0.4, -0.6) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.25), 0.2)
                                          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.5), 0.2)
                                        end
                                      end
                                    elseif 2 < torvel and torvel < 30 and hitfloor ~= nil then
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
                                        testpart.Anchored = true
                                        testpart.CFrame = cf(RootPart.Position - RootPart.Velocity) * cf(0, 0, 0)
                                        newpos = vt(RootPart.Position.X + math.random(-500, 500) / 100, sRootPart.Position.Y, RootPart.Position.Z + math.random(-500, 500) / 100)
                                        MoveCF = cf(testpart.Position, newpos)
                                        local mpos = testpart.CFrame * euler(0, 0, 0)
                                        local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
                                        local x, y, z = sRootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                                        sRJCF.C0 = clerp(sRJCF.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * euler(0, 0, 0), 0.3)
                                        sRHCF.C0 = clerp(sRHCF.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
                                        sLHCF.C0 = clerp(sLHCF.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
                                        sRHCF.C1 = clerp(sRHCF.C1, RH.C1, 0.3)
                                        sLHCF.C1 = clerp(sLHCF.C1, LH.C1, 0.3)
                                        if attack == false then
                                          if ghostmode == false then
                                            hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
                                            wld1.C0 = clerp(wld1.C0, euler(0, -1.57, 0) * cf(0, 0, 0), 0.3)
                                          end
                                          if ghostmode == false then
                                            Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0.3), 0.3)
                                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.3), 0.3)
                                            RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(0.3, 0, 0.1) * euler(0, 0.8, 0), 0.3)
                                            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                            LW.C0 = clerp(LW.C0, cf(-0.4, 0.4, -0.5) * euler(0.6, 0, 0.8) * euler(0, -1.8, 0), 0.3)
                                            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                            RH.C0 = clerp(RH.C0, cf(1, -0.9, 0) * euler(0, 1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, -0.1), 0.3)
                                            LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, 0.1), 0.3)
                                          else
                                            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
                                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.3, 0, 0), 0.3)
                                            RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0) * euler(-0.4, 0, 0.8) * euler(0, 0, 0), 0.3)
                                            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                            LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0) * euler(-0.4, 0, -0.8) * euler(0, 0, 0), 0.3)
                                            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                            RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.25), 0.3)
                                            LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.3), 0.3)
                                          end
                                        end
                                      elseif 30 <= torvel and hitfloor ~= nil then
                                            Anim = "Run"
                                            if equipped == true then
                                              for _,c in pairs(spectral:children()) do
                                                if c.className == "Part" and c.Name ~= "HumanoidRootPart" then
                                                  if c.Transparency < 0.8 then
                                                    c.Transparency = c.Transparency + 0.05
                                                  else
                                                    if 0.8 < c.Transparency then
                                                      c.Transparency = c.Transparency - 0.05
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                              sRJCF.C0 = clerp(sRJCF.C0, RootCF, 0.3)
                                              sRWCF.C0 = clerp(sRWCF.C0, RW.C0, 0.2)
                                              sLWCF.C0 = clerp(sLWCF.C0, LW.C0, 0.2)
                                              sRHCF.C0 = clerp(sRHCF.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
                                              sLHCF.C0 = clerp(sLHCF.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
                                              sRHCF.C1 = clerp(sRHCF.C1, RH.C1, 0.3)
                                              sLHCF.C1 = clerp(sLHCF.C1, LH.C1, 0.3)
                                              if attack == false then
                                                if ghostmode == false then
                                                  hwld.C0 = clerp(hwld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
                                                  wld1.C0 = clerp(wld1.C0, euler(0, -0.77, 0) * euler(-0.2, 0, 0.2) * cf(0, 0, 0), 0.4)
                                                  Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, 0), 0.4)
                                                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.4) * euler(0, 0, 0), 0.4)
                                                  RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(2, 0, -0.8) * euler(0, 3.14, 0), 0.4)
                                                  LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(2, 0, 0.8) * euler(0, 3.14, 0), 0.4)
                                                  RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, -1.4), 0.4)
                                                  LH.C0 = clerp(LH.C0, cf(-1, 0.2, -0.8) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(0, 0, 0.2), 0.4)
                                                else
                                                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
                                                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.3, 0, 0), 0.3)
                                                  RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0) * euler(-0.4, 0, 0.8) * euler(0, 0, 0), 0.3)
                                                  RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                  LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0) * euler(-0.4, 0, -0.8) * euler(0, 0, 0), 0.3)
                                                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                                                  RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.25), 0.3)
                                                  LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.3), 0.3)
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
do
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
do
                                                      if Thing[2] == "Orb" then
                                                        Thing[6] = Thing[6] - 1
                                                        Thing[7] = Thing[7] + Thing[12]
                                                        Thing[9] = Thing[9] + Thing[13]
                                                        Thing[11] = Thing[11] + Thing[14]
                                                        Thing[4].C0 = Thing[10] * euler(0, 0, 0)
                                                        Thing[5].C0 = Thing[8] * euler(Thing[9], Thing[7], Thing[11]) * euler(0, 0, 0)
                                                        Thing[4].Parent = Thing[1]
                                                        Thing[4].Part0 = Thing[1]
                                                        -- DECOMPILER ERROR at PC8234: Unhandled construct in 'MakeBoolean' P1

                                                        if ghostmode == true and clone ~= nil and (clone:findFirstChild("HumanoidRootPart")) ~= nil then
                                                          Thing[4].Part1 = clone.HumanoidRootPart
                                                        end
                                                        Thing[4].Part1 = RootPart
                                                        if Thing[6] % 2 == 0 then
                                                          if ghostmode == true then
                                                            MagniDamage(Thing[3], 3, 6, 8, math.random(40, 60), "Knockdown2", RootPart, 0, 1, (math.random(4, 6)), nil, nil, true, nil, nil, nil, Thing[15])
                                                          else
                                                            MagniDamage(Thing[3], 3, 6, 8, math.random(10, 20), "Knockdown2", RootPart, 0, 1, (math.random(4, 6)), nil, nil, true, nil, nil, nil, Thing[15])
                                                          end
                                                        end
                                                        if Thing[15].Value == true then
                                                          Thing[6] = 0
                                                          MagicCircle(BrickColor.new(NewCol), cf(Thing[3].Position), 3, 3, 3, 5, 5, 5, 0.1, 1, effects)
                                                        end
                                                        if Thing[6] <= 0 then
                                                          Thing[1].Parent = nil
                                                          orblimit = orblimit - 1
                                                          table.remove(Effects, e)
                                                        end
                                                      end
do
                                                      if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Orb" then
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
                                                              if Thing[2] == "Block2" then
                                                                Thing[1].CFrame = Thing[1].CFrame
                                                                Mesh = Thing[7]
                                                                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                              else
                                                                if Thing[2] == "Block3" then
                                                                  Thing[9] = Thing[9] * cf(Thing[14], 0, 0)
                                                                  Thing[1].CFrame = Thing[8] * Thing[10] * Thing[9]
                                                                  if Thing[11] == 1 then
                                                                    Thing[10] = Thing[10] * cf(0, Thing[13], 0) * euler(0, Thing[12], 0)
                                                                  else
                                                                    Thing[10] = Thing[10] * cf(0, Thing[13], 0) * euler(0, -Thing[12], 0)
                                                                  end
                                                                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                                  Mesh = Thing[7]
                                                                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                else
                                                                  if Thing[2] == "Fire" then
                                                                    Thing[1].CFrame = cf(Thing[1].Position) + vt(0, Thing[8], 0)
                                                                    Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                                    Thing[7].Scale = Thing[7].Scale + vt(Thing[4], Thing[5], Thing[6])
                                                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                  else
                                                                    if Thing[2] == "Cylinder" then
                                                                      Mesh = Thing[7]
                                                                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                    else
                                                                      if Thing[2] == "Cylinder2" then
                                                                        Mesh = Thing[7]
                                                                        if Thing[1].Transparency <= 0.5 then
                                                                          Mesh.Scale = Mesh.Scale + vt(Thing[4] * 2, Thing[5] * 2, Thing[6] * 2)
                                                                        else
                                                                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                                        end
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
                                                if ghostmode == true and clone ~= nil and (clone:findFirstChild("Stats")) ~= nil and (clone.Stats:findFirstChild("Decrease")) ~= nil then
                                                  for _,c in pairs(clone.Stats.Decrease:children()) do
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
                                                end
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
                                                          if drainmana == false then
                                                            mana.Value = mana.Value + 1
                                                          end
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

