--I wuv u inject <33333333333333333
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
local flight = false
local etheral = false
local overheat = 0
local move1 = "(Z)\nPunishment"
local move2 = "(X)\nReaping"
local move3 = "(C)\nCritical Stab"
local move4 = "(V)\nEtheral Blades"
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
local cooldownadd1 = 0.7
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.3
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.5
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.06
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH = nil
RW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW = Instance.new("Motor")
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
TorsoRed = TorsoColor.Color.r
TorsoGreen = TorsoColor.Color.g
TorsoBlue = TorsoColor.Color.b
NewCol = Color3.new(0.2, 0.2, TorsoBlue)
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
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

s=Instance.new('Sound',Character)
s.Volume=1
s.Pitch=1
s.Looped=true
s.SoundId="rbxassetid://205651485"
s.Name="ShowTime"
wait(0.01)
s:Play()

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

if Character:findFirstChild("Astray Unit", true) ~= nil then
  Character:findFirstChild("Astray Unit", true).Parent = nil
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
passive.Name = "DecreaseAtk"
passive.Value = 0
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
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Bright yellow").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarblock1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.6, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarblock2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Bright red").Color, UDim2.new(-0.6, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarblock3 = gui("TextLabel", fenframe, "Overheat(" .. overheat .. ")", 1, Color3.new(0, 0, 0), UDim2.new(-0.6, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
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
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new("Bright yellow").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new("Bright yellow").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new("Bright yellow").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new("Bright yellow").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Astray Unit"
rprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part01", vt())
rprt2 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part02", vt())
rprt3 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part03", vt())
rprt4 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part04", vt())
rprt5 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part05", vt())
rprt6 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part06", vt())
rprt7 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part07", vt())
rprt8 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part08", vt())
rprt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part09", vt())
rprt10 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part10", vt())
rprt11 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part11", vt())
rprt12 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part12", vt())
rprt13 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part13", vt())
rprt14 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part14", vt())
rprt15 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part15", vt())
rprt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part16", vt())
rprt17 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part17", vt())
rprt18 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Right Part18", vt())
rprt19 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Right Part19", vt())
rprt20 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Right Part20", vt())
rprt21 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Right Part21", vt())
rprt22 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Right Part22", vt())
lprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part01", vt())
lprt2 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part02", vt())
lprt3 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part03", vt())
lprt4 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part04", vt())
lprt5 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part05", vt())
lprt6 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part06", vt())
lprt7 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part07", vt())
lprt8 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part08", vt())
lprt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part09", vt())
lprt10 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part10", vt())
lprt11 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part11", vt())
lprt12 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part12", vt())
lprt13 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part13", vt())
lprt14 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part14", vt())
lprt15 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part15", vt())
lprt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part16", vt())
lprt17 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part17", vt())
lprt18 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Left Part18", vt())
lprt19 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Left Part19", vt())
lprt20 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Left Part20", vt())
lprt21 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Left Part21", vt())
lprt22 = part(3, modelzorz, 0.7, 1, BrickColor.new("New Yeller"), "Left Part22", vt())
bprt1 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part01", vt())
bprt2 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part02", vt())
bprt3 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part03", vt())
bprt4 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part04", vt())
bprt5 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part05", vt())
bprt6 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part06", vt())
bprt7 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part07", vt())
bprt8 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Booster Part08", vt())
bprt9 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part09", vt())
bprt10 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Booster Part10", vt())
rmsh1 = mesh("BlockMesh", rprt1, "", "", vt(0, 0, 0), vt(6, 2, 2))
rmsh2 = mesh("SpecialMesh", rprt2, "Torso", "nil", vt(0, 0, 0), vt(2, 2, 6))
rmsh3 = mesh("BlockMesh", rprt3, "", "", vt(0, 0, 0), vt(6, 2, 2))
rmsh4 = mesh("SpecialMesh", rprt4, "Torso", "nil", vt(0, 0, 0), vt(2, 2, 6))
rmsh5 = mesh("BlockMesh", rprt5, "", "", vt(0, 0, 0), vt(3, 4, 4))
rmsh6 = mesh("BlockMesh", rprt6, "", "", vt(0, 0, 0), vt(1.5, 6, 2))
rmsh7 = mesh("BlockMesh", rprt7, "", "", vt(0, 0, 0), vt(2.5, 4, 2))
rmsh8 = mesh("SpecialMesh", rprt8, "Torso", "nil", vt(0, 0, 0), vt(2, 2, 2.5))
rmsh9 = mesh("BlockMesh", rprt9, "", "", vt(0, 0, 0), vt(2.51, 3, 2))
rmsh10 = mesh("BlockMesh", rprt10, "", "", vt(0, 0, 0), vt(3, 4, 3))
rmsh11 = mesh("SpecialMesh", rprt11, "Wedge", "nil", vt(0, 0, 0), vt(3, 1.5, 2))
rmsh12 = mesh("SpecialMesh", rprt12, "Wedge", "nil", vt(0, 0, 0), vt(3, 1.5, 2))
rmsh13 = mesh("BlockMesh", rprt13, "", "", vt(0, 0, 0), vt(3, 2, 2))
rmsh14 = mesh("SpecialMesh", rprt14, "Wedge", "nil", vt(0, 0, 0), vt(3, 2, 2))
rmsh15 = mesh("SpecialMesh", rprt15, "Wedge", "nil", vt(0, 0, 0), vt(2.5, 3, 5))
rmsh16 = mesh("BlockMesh", rprt16, "", "", vt(0, 0, 0), vt(2, 2, 8))
rmsh17 = mesh("SpecialMesh", rprt17, "Head", "nil", vt(0, 0, 0), vt(3, 6, 3))
rmsh18 = mesh("SpecialMesh", rprt18, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 16))
rmsh19 = mesh("SpecialMesh", rprt19, "Wedge", "nil", vt(0, 0, 0), vt(1, 4, 19))
rmsh20 = mesh("SpecialMesh", rprt20, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 7))
rmsh21 = mesh("SpecialMesh", rprt21, "Wedge", "nil", vt(0, 0, 0), vt(1, 3, 8))
rmsh22 = mesh("SpecialMesh", rprt22, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 8))
lmsh1 = mesh("BlockMesh", lprt1, "", "", vt(0, 0, 0), vt(6, 2, 2))
lmsh2 = mesh("SpecialMesh", lprt2, "Torso", "nil", vt(0, 0, 0), vt(2, 2, 6))
lmsh3 = mesh("BlockMesh", lprt3, "", "", vt(0, 0, 0), vt(6, 2, 2))
lmsh4 = mesh("SpecialMesh", lprt4, "Torso", "nil", vt(0, 0, 0), vt(2, 2, 6))
lmsh5 = mesh("BlockMesh", lprt5, "", "", vt(0, 0, 0), vt(3, 4, 4))
lmsh6 = mesh("BlockMesh", lprt6, "", "", vt(0, 0, 0), vt(1.5, 6, 2))
lmsh7 = mesh("BlockMesh", lprt7, "", "", vt(0, 0, 0), vt(2.5, 4, 2))
lmsh8 = mesh("SpecialMesh", lprt8, "Torso", "nil", vt(0, 0, 0), vt(2, 2, 2.5))
lmsh9 = mesh("BlockMesh", lprt9, "", "", vt(0, 0, 0), vt(2.51, 3, 2))
lmsh10 = mesh("BlockMesh", lprt10, "", "", vt(0, 0, 0), vt(3, 4, 3))
lmsh11 = mesh("SpecialMesh", lprt11, "Wedge", "nil", vt(0, 0, 0), vt(3, 1.5, 2))
lmsh12 = mesh("SpecialMesh", lprt12, "Wedge", "nil", vt(0, 0, 0), vt(3, 1.5, 2))
lmsh13 = mesh("BlockMesh", lprt13, "", "", vt(0, 0, 0), vt(3, 2, 2))
lmsh14 = mesh("SpecialMesh", lprt14, "Wedge", "nil", vt(0, 0, 0), vt(3, 2, 2))
lmsh15 = mesh("SpecialMesh", lprt15, "Wedge", "nil", vt(0, 0, 0), vt(2.5, 3, 5))
lmsh16 = mesh("BlockMesh", lprt16, "", "", vt(0, 0, 0), vt(2, 2, 8))
lmsh17 = mesh("SpecialMesh", lprt17, "Head", "nil", vt(0, 0, 0), vt(3, 6, 3))
lmsh18 = mesh("SpecialMesh", lprt18, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 16))
lmsh19 = mesh("SpecialMesh", lprt19, "Wedge", "nil", vt(0, 0, 0), vt(1, 4, 19))
lmsh20 = mesh("SpecialMesh", lprt20, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 7))
lmsh21 = mesh("SpecialMesh", lprt21, "Wedge", "nil", vt(0, 0, 0), vt(1, 3, 8))
lmsh22 = mesh("SpecialMesh", lprt22, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 8))
bmsh1 = mesh("BlockMesh", bprt1, "", "", vt(0, 0, 0), vt(7, 5, 5))
bmsh2 = mesh("BlockMesh", bprt2, "", "", vt(0, 0, 0), vt(2, 1, 9))
bmsh3 = mesh("BlockMesh", bprt3, "", "", vt(0, 0, 0), vt(2, 1, 9))
bmsh4 = mesh("BlockMesh", bprt4, "", "", vt(0, 0, 0), vt(1, 2, 9))
bmsh5 = mesh("SpecialMesh", bprt5, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 2))
bmsh6 = mesh("SpecialMesh", bprt6, "Wedge", "nil", vt(0, 0, 0), vt(1, 2, 5))
bmsh7 = mesh("BlockMesh", bprt7, "", "", vt(0, 0, 0), vt(15, 0.5, 2))
bmsh8 = mesh("SpecialMesh", bprt8, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 15, 3))
bmsh9 = mesh("BlockMesh", bprt9, "", "", vt(0, 0, 0), vt(15, 0.5, 2))
bmsh10 = mesh("SpecialMesh", bprt10, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 15, 3))
rwld1 = weld(RightArm, rprt1, RightArm, euler(0, 0, 0) * cf(0, -0.4, -0.5))
rwld2 = weld(rprt1, rprt2, rprt1, euler(1.57, 0, 1.57) * cf(0, 0, 0.4))
rwld3 = weld(rprt1, rprt3, RightArm, euler(0, 0, 0) * cf(0, 0.2, -0.5))
rwld4 = weld(rprt1, rprt4, rprt3, euler(1.57, 0, 1.57) * cf(0, 0, 0.4))
rwld5 = weld(rprt1, rprt5, RightArm, euler(0, 0, 0) * cf(0, -0.2, -1.1))
rwld6 = weld(rprt1, rprt6, rprt5, euler(0, 0, 0) * cf(0, -1, 0.2))
rwld7 = weld(rprt1, rprt7, rprt6, euler(0, 0, 0) * cf(0, -0.3, -0.2))
rwld8 = weld(rprt1, rprt8, rprt7, euler(0, 1.57, 0) * cf(0, -0.6, 0))
rwld9 = weld(rprt1, rprt9, rprt7, euler(-0.6, 0, 0) * cf(0, 0.4, -0.1))
rwld10 = weld(rprt1, rprt10, rprt5, euler(0, 0, 0) * cf(0, 0.8, 0.1))
rwld11 = weld(rprt1, rprt11, rprt10, euler(1.57, 0, 0) * cf(0, 0.6, 0.15))
rwld12 = weld(rprt1, rprt12, rprt10, euler(1.57, 3.14, 0) * cf(0, 0.6, -0.15))
rwld13 = weld(rprt1, rprt13, rprt10, euler(0, 0, 0) * cf(0, -0.2, -0.5))
rwld14 = weld(rprt1, rprt14, rprt13, euler(3.14, 0, 0) * cf(0, 0.4, 0))
rwld15 = weld(rprt1, rprt15, rprt13, euler(3.14, 0, 0) * cf(0, 0.3, -0.3))
rwld16 = weld(rprt1, rprt16, rprt13, euler(0, 0, 0) * cf(0, 0.6, 1.4))
rwld17 = weld(rprt1, rprt17, rprt16, euler(1.57, 0, 0) * cf(0, 0, 0.1))
rwld18 = weld(rprt1, rprt18, rprt10, euler(1.57, 0, 0) * cf(0, 2.01, 0.2))
rwld19 = weld(rprt1, rprt19, rprt10, euler(1.57, 3.14, 0) * cf(0, 1.71, -0.4))
rwld20 = weld(rprt1, rprt20, rprt10, euler(-2.8, 0, 0) * cf(0, -0.2, -1.2))
rwld21 = weld(rprt1, rprt21, rprt10, euler(-2.4, 0, 0) * cf(0, -1.4, -0.8))
rwld22 = weld(rprt1, rprt22, rprt7, euler(-1.57, 0, 0) * cf(0, -0.5, -0.2))
lwld1 = weld(lprt1, lprt1, LeftArm, euler(0, 0, 0) * cf(0, -0.4, -0.5))
lwld2 = weld(rprt1, lprt2, lprt1, euler(1.57, 0, 1.57) * cf(0, 0, 0.4))
lwld3 = weld(rprt1, lprt3, LeftArm, euler(0, 0, 0) * cf(0, 0.2, -0.5))
lwld4 = weld(rprt1, lprt4, lprt3, euler(1.57, 0, 1.57) * cf(0, 0, 0.4))
lwld5 = weld(rprt1, lprt5, LeftArm, euler(0, 0, 0) * cf(0, -0.2, -1.1))
lwld6 = weld(rprt1, lprt6, lprt5, euler(0, 0, 0) * cf(0, -1, 0.2))
lwld7 = weld(rprt1, lprt7, lprt6, euler(0, 0, 0) * cf(0, -0.3, -0.2))
lwld8 = weld(rprt1, lprt8, lprt7, euler(0, 1.57, 0) * cf(0, -0.6, 0))
lwld9 = weld(rprt1, lprt9, lprt7, euler(-0.6, 0, 0) * cf(0, 0.4, -0.1))
lwld10 = weld(rprt1, lprt10, lprt5, euler(0, 0, 0) * cf(0, 0.8, 0.1))
lwld11 = weld(rprt1, lprt11, lprt10, euler(1.57, 0, 0) * cf(0, 0.6, 0.15))
lwld12 = weld(rprt1, lprt12, lprt10, euler(1.57, 3.14, 0) * cf(0, 0.6, -0.15))
lwld13 = weld(rprt1, lprt13, lprt10, euler(0, 0, 0) * cf(0, -0.2, -0.5))
lwld14 = weld(rprt1, lprt14, lprt13, euler(3.14, 0, 0) * cf(0, 0.4, 0))
lwld15 = weld(rprt1, lprt15, lprt13, euler(3.14, 0, 0) * cf(0, 0.3, -0.3))
lwld16 = weld(rprt1, lprt16, lprt13, euler(0, 0, 0) * cf(0, 0.6, 1.4))
lwld17 = weld(rprt1, lprt17, lprt16, euler(1.57, 0, 0) * cf(0, 0, 0.1))
lwld18 = weld(rprt1, lprt18, lprt10, euler(1.57, 0, 0) * cf(0, 2.01, 0.2))
lwld19 = weld(rprt1, lprt19, lprt10, euler(1.57, 3.14, 0) * cf(0, 1.71, -0.4))
lwld20 = weld(rprt1, lprt20, lprt10, euler(-2.8, 0, 0) * cf(0, -0.2, -1.2))
lwld21 = weld(rprt1, lprt21, lprt10, euler(-2.4, 0, 0) * cf(0, -1.4, -0.8))
lwld22 = weld(rprt1, lprt22, lprt7, euler(-1.57, 0, 0) * cf(0, -0.5, -0.2))
bwld1 = weld(bprt1, bprt1, Torso, euler(0, 0, 0) * cf(0, -0.4, -0.8))
bwld2 = weld(rprt1, bprt2, bprt1, euler(0, -0.2, 0) * cf(0.5, -0.6, 0.4))
bwld3 = weld(rprt1, bprt3, bprt1, euler(0, 0.2, 0) * cf(-0.5, -0.6, 0.4))
bwld4 = weld(rprt1, bprt4, bprt1, euler(0, 0, 0) * cf(0, -0.6, -1))
bwld5 = weld(rprt1, bprt5, bprt4, euler(0, 0, 0) * cf(0, 0, 1.1))
bwld6 = weld(rprt1, bprt6, bprt4, euler(3.14, 0, 0) * cf(0, 0, -1.4))
bwld7 = weld(rprt1, bprt7, bprt1, euler(0.1, -0.2, 0.2) * cf(2, -0.6, -0.5))
bwld8 = weld(rprt1, bprt8, bprt7, euler(0, 0, -1.57) * cf(0, 0, 0.5))
bwld9 = weld(rprt1, bprt9, bprt1, euler(-0.1, -0.2, 2.94) * cf(-2, -0.6, -0.5))
bwld10 = weld(rprt1, bprt10, bprt9, euler(0, 0, -1.57) * cf(0, 0, 0.5))
numd = 0.4
numd2 = 0.1
numul = 0.2
local Boost = {}
for i = 1, 2 do
  bprt11 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part11", vt())
  bprt12 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Booster Part12", vt())
  bprt13 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Booster Part13", vt())
  bprt14 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Booster Part14", vt())
  bmsh11 = mesh("BlockMesh", bprt11, "", "", vt(0, 0, 0), vt(3, 3, 5))
  bmsh12 = mesh("BlockMesh", bprt12, "", "", vt(0, 0, 0), vt(3.1, 3.1, 2))
  bmsh13 = mesh("CylinderMesh", bprt13, "", "", vt(0, 0, 0), vt(2.5, 2, 2.5))
  bmsh14 = mesh("CylinderMesh", bprt14, "", "", vt(0, 0, 0), vt(2, 2, 2))
  bwld11 = weld(rprt1, bprt11, bprt1, euler(-0.4, numul, numd2) * cf(numd, 0, -0.6))
  bwld12 = weld(rprt1, bprt12, bprt11, euler(0, 0, 0) * cf(0, 0, -0.5))
  bwld13 = weld(rprt1, bprt13, bprt12, euler(1.57, 0, 0) * cf(0, 0, -0.05))
  bwld14 = weld(rprt1, bprt14, bprt12, euler(1.57, 0, 0) * cf(0, 0, -0.06))
  numd = numd - 0.8
  numul = numul - 0.4
  numd2 = numd2 - 0.2
  num1 = -0.4
  eul = 0
  table.insert(Boost, bprt14)
  for i = 1, 2 do
    bprt15 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Booster Part15", vt())
    bprt16 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Booster Part16", vt())
    bprt17 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Booster Part17", vt())
    bmsh15 = mesh("SpecialMesh", bprt15, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 5))
    bmsh16 = mesh("SpecialMesh", bprt16, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 3))
    bmsh17 = mesh("SpecialMesh", bprt17, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 4))
    bwld15 = weld(rprt1, bprt15, bprt11, euler(0, 0, eul) * cf(0, num1, -0.4))
    bwld16 = weld(rprt1, bprt16, bprt15, euler(0, 3.14, 0) * cf(0, 0, -0.8))
    bwld17 = weld(rprt1, bprt17, bprt16, euler(0, 0, 3.14) * cf(0, 0.2, -0.1))
    eul = eul + 3.14
    num1 = num1 + 0.8
  end
end
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
  hbwld.Part1 = rprt5
end

local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
local parti = it("ParticleEmitter")
parti.Color = cs(Color3.new(1, 1, 0), Color3.new(1, 1, 0.3921568627451))
parti.LightEmission = 0.5
parti.Size = ns(0.2)
parti.Texture = "http://www.roblox.com/asset/?id=243728166"
sizeseq = ns({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0.2)})
transseq = ns({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.1, 0.5), NumberSequenceKeypoint.new(0.8, 0.5), NumberSequenceKeypoint.new(1, 1)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.Acceleration = vt(0, 0, 0)
parti.Lifetime = nr(1, 3)
parti.Rate = 40
parti.RotSpeed = nr(90)
parti.Speed = nr(-2)
parti.VelocitySpread = 45
parti.Parent = hitbox
parti.Enabled = false
parti2 = parti:Clone()
parti2.Color = cs(Color3.new(255, 0, 0), Color3.new(255, 255, 0))
parti2.Size = ns(1)
parti2.Acceleration = vt(0, 5, 0)
parti2.Texture = "http://www.roblox.com/asset/?id=242596567"
parti2.Rate = 20
parti2.Speed = nr(-10)
parti2.VelocitySpread = 20
parti2.Parent = Boost[1]
parti3 = parti2:Clone()
parti3.Parent = Boost[2]
parti4 = parti2:Clone()
parti4.Color = cs(Color3.new(255, 255, 0), Color3.new(255, 0, 0))
parti4.LightEmission = 1
parti4.Size = ns(1)
parti4.Acceleration = vt(0, -1, 0)
parti4.Rate = 5
parti4.Speed = nr(2)
parti4.VelocitySpread = 10
parti4.Parent = bprt1
bloodsplat = function(cf, size)
  local prt = part(3, workspace, 0, 1, BrickColor.new("White"), "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cf
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  ggui = Instance.new("BillboardGui")
  ggui.Parent = prt
  ggui.Size = UDim2.new(size, 0, size, 0)
  img = Instance.new("ImageLabel")
  img.Parent = ggui
  img.BackgroundTransparency = 1
  img.Size = UDim2.new(1, 0, 1, 0)
  img.Image = "rbxassetid://179462422"
  img.ImageColor3 = prt.BrickColor.Color
  img.Rotation = math.random(-50, 50)
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", 10, img})
end

if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Astray Unit"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Proto" then
  Bin.Name = "Astray Unit"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  if id == "RandSlash" then
    num = math.random(1, 4)
    if num == 1 then
      id = "200633108"
    else
      if num == 2 then
        id = "200633148"
      else
        if num == 3 then
          id = "200633196"
        else
          if num == 4 then
            id = "200633281"
          end
        end
      end
    end
  end
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
  for i = 0.2, 1, 0.1 do
    swait()
    rprt18.Transparency = i
    rprt19.Transparency = i
    rprt20.Transparency = i
    rprt21.Transparency = i
    rprt22.Transparency = i
    lprt18.Transparency = i
    lprt19.Transparency = i
    lprt20.Transparency = i
    lprt21.Transparency = i
    lprt22.Transparency = i
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.2)
    LH.C0 = clerp(LH.C0, LHC0, 0.2)
  end
end

mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  for i = 1, 0.2, -0.05 do
    swait()
    rprt18.Transparency = i
    rprt19.Transparency = i
    rprt20.Transparency = i
    rprt21.Transparency = i
    rprt22.Transparency = i
    lprt18.Transparency = i
    lprt19.Transparency = i
    lprt20.Transparency = i
    lprt21.Transparency = i
    lprt22.Transparency = i
    Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
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
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1) * euler(0, -1, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.3), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.3), 0.3)
  end
  for i = 1, 0, -0.05 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -(40 * i)
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.15)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.15)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1.5) * euler(0, 1, 0), 0.15)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1.5) * euler(0, -1, 0), 0.15)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0, 0.3), 0.15)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.3, 0, -0.3), 0.15)
  end
  resumeControl()
  combo = 0
  attack = false
end

StaggerHitt = function()
  attack = true
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.2 do
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
  for i = 0, 1, 0.06 do
    swait()
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * euler(1.57, 0, -3.14), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1.5) * euler(0.2, 3.14, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1.57) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0), 0.3)
  end
  for i = 1, 50 do
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
  for i = 0, 1, 0.065 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2, 0, -1) * euler(0, 0.8, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.8, 0, -0.2) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.3)
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    so("RandSlash", rprt5, 1, math.random(80, 120) / 100)
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(0.5, 6, 2)
    hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.2 do
      swait()
      hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 4, 7, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 1) * euler(0, 0.8, 0), 0.45)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.6), 0.45)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.45)
      LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.45)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      attack = false
    end
  end
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.065 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, 0.6) * euler(0, -1, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.4)
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(0.5, 6, 2)
    hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.2 do
      swait()
      hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 4, 7, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, -1.57), 0.45)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 0, -1), 0.45)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, -0.6, -1.6) * euler(0, 0, 0), 0.45)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.45)
      LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.45)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      attack = false
    end
  end
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.065 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -1) * euler(0, 1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.4) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, 0.4) * euler(0, 1.57, 0) * euler(0, -1.2, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.7, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -1.2, 0), 0.3)
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    so("RandSlash", rprt5, 1, math.random(80, 120) / 100)
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(0.5, 6, 2)
    hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.2 do
      swait()
      hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 4, 7, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.45)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, 1.5) * euler(0, 1.57, 0), 0.45)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8) * euler(0, 0, 0), 0.45)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.57, 0), 0.45)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1.57, 0), 0.45)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      attack = false
    end
  end
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.065 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.57, 0, 1) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.3)
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(0.5, 6, 2)
    hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
    hitbox.CFrame = hitboxCF
    for i = 0, 1, 0.2 do
      swait()
      hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 4, 7, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
      RootJoint.C0 = RootCF * euler(0, 0, -0.5 + 6.28 * i)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      for i = 0, 1, 0.2 do
        swait()
        hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 6, 4, 7, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.3, 0, -1.57) * euler(0, -1.57, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        attack = false
      end
    end
  end
end

Flight = function()
  if StunT.Value <= Stun.Value then
    return 
  end
  Vel = Torso.Velocity * 4
  ex = Torso.Velocity.x * 4
  why = Torso.Velocity.y * 4
  ze = Torso.Velocity.z * 4
  if overheat > 60 then
    jetmax = 35
  else
    jetmax = 50
  end
  if why <= 0 then
    why = 0
  else
    if jetmax <= why then
      why = jetmax
    end
  end
  if jetmax <= ex then
    ex = jetmax
  else
    if ex <= -jetmax then
      ex = -jetmax
    end
  end
  if jetmax <= ze then
    ze = jetmax
  else
    if ze <= -jetmax then
      ze = -jetmax
    end
  end
  Vel = vt(ex, why, ze)
  local mananum = 0
  while overheat <= 100 and flight == true and mana.Value > 1 and overheat <= 100 do
    swait()
    if overheat > 100 then
      jetmax = 100
    else
      jetmax = 100
    end
    overheat = overheat + 1
    if mananum >= 0 then
      mananum = 0
      mana.Value = mana.Value - 0
      parti2.Enabled = true
      parti3.Enabled = true
    else
      mananum = mananum + 1
    end
    if Rooted.Value == false then
      Torso.Velocity = Vel
    end
  end
  parti2.Enabled = false
  parti3.Enabled = false
  if overheat >= 100 then
    MagicBlock(BrickColor.new("Bright red"), bprt1.CFrame, 5, 5, 5, 4, 4, 4, 0.1, 1)
    MagicBlock(BrickColor.new("Bright red"), bprt1.CFrame, 3, 3, 3, 4, 4, 4, 0.1, 1)
    so("141679994", lprt5, 1, 1)
    Stun.Value = Stun.Value + 100
    Humanoid:TakeDamage(25)
    showDamage(Character, 25, "Damage")
    so("206049428", RootPart, 0.5, math.random(5, 6) / 10)
    MagniDamage(RootPart, 7, 7, 10, math.random(5, 10), "Normal", RootPart, 0.15, 2, math.random(7, 10), true, true, false, "Defense", 0.1, 400)
    local dec = Instance.new("NumberValue")
    dec.Name = "DecreaseMvmt"
    dec.Value = 0.25
    dec.Parent = Decrease
    showDamage(Character, "-Movement", "Debuff")
    game:GetService("Debris"):AddItem(dec, 8)
    local dec = Instance.new("NumberValue")
    dec.Name = "DecreaseDef"
    dec.Value = 0.15
    dec.Parent = Decrease
    showDamage(Character, "-Defense", "Debuff")
    game:GetService("Debris"):AddItem(dec, 6)
    local dec = Instance.new("NumberValue")
    dec.Name = "DecreaseAtk"
    dec.Value = 0.25
    dec.Parent = Decrease
    showDamage(Character, "-Damage", "Debuff")
    game:GetService("Debris"):AddItem(dec, 12)
  end
  do
    flight = false
  end
end

do1 = function()
  if attack == true then
    return 
  end
  if StunT.Value <= Stun.Value then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 15 then
    attack = true
    cooldowns[1] = 0
    mana.Value = mana.Value - 15
    for i = 0, 1, 0.065 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0, 0, 1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, 0.6) * euler(0, -1, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.4)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(0.5, 6, 2)
      hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
      hitbox.CFrame = hitboxCF
      for i = 0, 1, 0.06 do
        swait()
        hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 6, 8, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, false)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(-0.2, 0, 0), 0.45)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.45)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 0, -1), 0.45)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.4, 0, -0.8) * euler(0, -1.2, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
        RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, 0), 0.45)
        LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0), 0.45)
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        if etheral == true then
          coroutine.resume(coroutine.create(function(EthCF)
    for i = 1, 3 do
      for i = 1, 2 do
        EtheralSlash(EthCF * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
      end
      swait(2)
    end
  end
), RootPart.CFrame)
        end
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        for i = 0, 1, 0.3 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.4, 0.4, 0.5), 0.45)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 3.14, 0), 0.45)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 0, 0), 0.45)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1, -0.6, 0) * euler(0, -1.57, 0) * euler(-0.5, 0, 0.1), 0.45)
          if StunT.Value <= Stun.Value then
            break
          end
          if etheral == true then
            EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
          end
        end
        do
          hbwld.Parent = nil
          hboxpos.Parent = hitbox
          hitbox.Parent = modelzorz
          hitbox.Size = vt(0.5, 6, 2)
          hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
          hitbox.CFrame = hitboxCF
          so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
          for i = 0, 1, 0.2 do
            swait()
            hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
            hitbox.CFrame = hitboxCF
            MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
            hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
            hitbox.CFrame = hitboxCF
            MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.45)
            RootJoint.C0 = RootCF * cf(0, 0, 2 * i) * euler(-0.4 + 0.4 * i, 0.4 + 0.6 * i, 0.5 + 2.5 * i)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 3.14, 0), 0.45)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 0, 0), 0.45)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
            RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0), 0.45)
            LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.45)
            if StunT.Value <= Stun.Value then
              break
            end
            if etheral == true then
              EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
            end
          end
          do
            so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
            for i = 0, 1, 0.2 do
              swait()
              hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
              hitbox.CFrame = hitboxCF
              MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
              hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
              hitbox.CFrame = hitboxCF
              MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.45)
              RootJoint.C0 = RootCF * cf(0, 0, 2 + 0.5 * i) * euler(0, 1, 3 + 3 * i)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 3.14, 0), 0.45)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 0, 0), 0.45)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
              RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0), 0.45)
              LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.45)
              if StunT.Value <= Stun.Value then
                break
              end
              if etheral == true then
                EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
              end
            end
            do
              so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
              for i = 0, 1, 0.2 do
                swait()
                hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
                hitbox.CFrame = hitboxCF
                MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
                hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
                hitbox.CFrame = hitboxCF
                MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.45)
                RootJoint.C0 = RootCF * cf(0, 0, 2.5 - 0.5 * i) * euler(0, 1, 6 + 3 * i)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 3.14, 0), 0.45)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 0, 0), 0.45)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
                RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0), 0.45)
                LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.45)
                if StunT.Value <= Stun.Value then
                  break
                end
                if etheral == true then
                  EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
                end
              end
              do
                so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
                for i = 0, 1, 0.2 do
                  swait()
                  hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
                  hitbox.CFrame = hitboxCF
                  MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
                  hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
                  hitbox.CFrame = hitboxCF
                  MagniDamage(hitbox, 6, 7, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(1, 4)), nil, false)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.45)
                  RootJoint.C0 = RootCF * cf(0, 0, 2 - 0.5 * i) * euler(0, 1, 9 + 3 * i)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57) * euler(0, 3.14, 0), 0.45)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57) * euler(0, 0, 0), 0.45)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
                  RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0), 0.45)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.45)
                  if StunT.Value <= Stun.Value then
                    break
                  end
                  if etheral == true then
                    EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
                  end
                end
                do
                  hitbox.Parent = modelzorz
                  hitbox.Size = vt()
                  hitboxweld()
                  hboxpos.Parent = nil
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

do2 = function()
  if attack == true then
    return 
  end
  if StunT.Value <= Stun.Value then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 40 then
    attack = true
    cooldowns[2] = 0
    mana.Value = mana.Value - 40
    for i = 0, 1, 0.06 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.57, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(0.5, 6, 2)
      hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
      hitbox.CFrame = hitboxCF
      for i = 1, 3 do
        so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
        for i = 0, 1, 0.2 do
          swait()
          hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
          hitbox.CFrame = hitboxCF
          MagniDamage(hitbox, 6, 5, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true, false, "Defense", 0.02, 100)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0.5), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.45)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 1, 1.4) * euler(0, 1.57, 0), 0.45)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.2, 0, 1.4) * euler(0, -3, 0), 0.45)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
          if StunT.Value <= Stun.Value then
            break
          end
          if etheral == true then
            EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
          end
        end
        do
          blcf = nil
          scfr = nil
          so("RandSlash", rprt5, 1, math.random(80, 120) / 100)
          for i = 0, 1, 0.2 do
            swait()
            hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
            hitbox.CFrame = hitboxCF
            MagniDamage(hitbox, 6, 5, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true, false, "Defense", 0.02, 100)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, -0.5), 0.45)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.45)
            RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 0, -1) * euler(0, 2.5, 0), 0.45)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -1) * euler(0, 0, 0), 0.45)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
            if StunT.Value <= Stun.Value then
              break
            end
            if etheral == true then
              EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
            end
          end
          do
            blcf = nil
            scfr = nil
            so("RandSlash", lprt5, 1, math.random(80, 120) / 100)
            for i = 0, 1, 0.2 do
              swait()
              hitboxCF = lprt5.CFrame * cf(0, -1.5, 0)
              hitbox.CFrame = hitboxCF
              MagniDamage(hitbox, 6, 5, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true, false, "Defense", 0.02, 100)
              Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0.5), 0.45)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.45)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 1) * euler(0, 0, 0), 0.45)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
              LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2, 0, 1) * euler(0, -1.5, 0), 0.45)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
              if StunT.Value <= Stun.Value then
                break
              end
              if etheral == true then
                EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-800, -400) / 100))
              end
            end
            do
              blcf = nil
              scfr = nil
              so("RandSlash", rprt5, 1, math.random(80, 120) / 100)
              for i = 0, 1, 0.2 do
                swait()
                hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
                hitbox.CFrame = hitboxCF
                MagniDamage(hitbox, 6, 5, 10, math.random(5, 10), "Normal", RootPart, 0.3, 2, (math.random(2, 5)), nil, true, false, "Defense", 0.02, 100)
                Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.5), 0.45)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.45)
                RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2, 0, -1) * euler(0, 1.5, 0), 0.45)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.45)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.45)
                if StunT.Value <= Stun.Value then
                  break
                end
                if etheral == true then
                  EtheralSlash(RootPart.CFrame * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
                end
              end
              do
                do
                  if StunT.Value <= Stun.Value then
                    break
                  end
                end
              end
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
  end
end

do3 = function()
  if attack == true then
    return 
  end
  if StunT.Value <= Stun.Value then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 20 then
    attack = true
    cooldowns[3] = 0
    mana.Value = mana.Value - 20
    for i = 0, 1, 0.06 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1.2), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.1), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.8, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0.06), 0.4)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      so("RandSlash", rprt5, 1, math.random(80, 120) / 100)
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(0.5, 6, 2)
      hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
      hitbox.CFrame = hitboxCF
      for i = 0, 1, 0.06 do
        swait()
        hitboxCF = rprt5.CFrame * cf(0, -1.5, 0)
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 6, 8, 12, math.random(5, 10), "Normal", RootPart, 1, 2, (math.random(2, 5)), nil, true, false, "Stab", 0.1, 200)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1) * euler(0, 1.57, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.2)
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        attack = false
      end
    end
  end
end

do4 = function()
  if attack == true then
    return 
  end
  if StunT.Value <= Stun.Value then
    return 
  end
  if cooldownmax <= cooldowns[4] then
    cooldowns[4] = 0
    etheral = true
    so("200633029", RootPart, 1, 1)
    so("200633077", RootPart, 1, 1)
    swait(500)
    etheral = false
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
              if StaggerHit.Value == false then
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

MagicFire = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Fire", delay, 1, 1, 1, msh})
end

EtheralSlash = function(CF)
  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = CF
  so("200632992", ref, 1, math.random(100, 130) / 100)
  MagicCircle(BrickColor.new("New Yeller"), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.1, 1, 0.1, 0.2, 8, 0.2, 0.05)
  game:GetService("Debris"):AddItem(ref, 5)
  MagniDamage(ref, 5, 4, 7, 0, "Normal", ref, 0.3, 1, 1, nil, false, false)
end

Clone = function()
  d = lprt18
  local c = part(3, workspace, 0, 0.5, d.BrickColor, "Effect", d.Size)
  c.Anchored = true
  c.CFrame = d.CFrame
  game:GetService("Debris"):AddItem(c, 5)
  m = d.Mesh:Clone()
  m.Parent = c
  table.insert(Effects, {c, "Disappear", 0.05})
  d = lprt19
  local c = part(3, workspace, 0, 0.5, d.BrickColor, "Effect", d.Size)
  c.Anchored = true
  c.CFrame = d.CFrame
  game:GetService("Debris"):AddItem(c, 5)
  m = d.Mesh:Clone()
  m.Parent = c
  table.insert(Effects, {c, "Disappear", 0.05})
  d = rprt18
  local c = part(3, workspace, 0, 0.5, d.BrickColor, "Effect", d.Size)
  c.Anchored = true
  c.CFrame = d.CFrame
  game:GetService("Debris"):AddItem(c, 5)
  m = d.Mesh:Clone()
  m.Parent = c
  table.insert(Effects, {c, "Disappear", 0.05})
  d = rprt19
  local c = part(3, workspace, 0, 0.5, d.BrickColor, "Effect", d.Size)
  c.Anchored = true
  c.CFrame = d.CFrame
  game:GetService("Debris"):AddItem(c, 5)
  m = d.Mesh:Clone()
  m.Parent = c
  table.insert(Effects, {c, "Disappear", 0.05})
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
    if etheral == true then
      coroutine.resume(coroutine.create(function(EthCF)
    for i = 1, 3 do
      for i = 1, 2 do
        EtheralSlash(EthCF * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
      end
      swait(2)
    end
  end
), RootPart.CFrame)
    end
  else
    if combo == 1 then
      combo = 2
      attacktwo()
      if etheral == true then
        coroutine.resume(coroutine.create(function(EthCF)
    for i = 1, 3 do
      for i = 1, 2 do
        EtheralSlash(EthCF * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
      end
      swait(2)
    end
  end
), RootPart.CFrame)
      end
    else
      if combo == 2 then
        combo = 3
        attackthree()
        if etheral == true then
          coroutine.resume(coroutine.create(function(EthCF)
    for i = 1, 3 do
      for i = 1, 2 do
        EtheralSlash(EthCF * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
      end
      swait(2)
    end
  end
), RootPart.CFrame)
        end
      else
        if combo == 3 then
          combo = 0
          attackfour()
          if etheral == true then
            coroutine.resume(coroutine.create(function(EthCF)
    for i = 1, 3 do
      for i = 1, 2 do
        EtheralSlash(EthCF * cf(math.random(-600, 600) / 100, math.random(-600, 600) / 100, math.random(-1200, -400) / 100))
      end
      swait(2)
    end
  end
), RootPart.CFrame)
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
  if key == "e" and flight == true then
    flight = false
    return 
  end
  if key == "e" and flight == false then
    flight = true
    Flight()
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

Player.Chatted:connect(function(chat)
if chat == "music off" then
Character.ShowTime.Volume=0
end
end)

Player.Chatted:connect(function(chat)
if chat == "music on" then
Character.ShowTime.Volume=1
end
end)

ds = function(mouse)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Proto loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local etheralnum = 0
local heatnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local oldhealth = Humanoid.Health
local walk = 0
local walkforw = true
while 1 do
  swait()
  parti4.Rotation = nr(math.random(-50, 50))
  if 50 <= overheat then
    parti4.Enabled = true
  else
    parti4.Enabled = false
  end
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
        Welds[i].Parent = rprt1
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
    if hbwld.Parent == nil then
      parti.Enabled = true
    else
      parti.Enabled = false
    end
    if Humanoid.Health < oldhealth and flight == true then
      overheat = overheat + 20
      flight = false
    end
    oldhealth = Humanoid.Health
    if 7 <= heatnum then
      heatnum = 0
      overheat = overheat - 1
    end
    if 100 <= overheat and flight == false then
      overheat = 100
    else
      if overheat <= 0 then
        overheat = 0
      end
    end
    heatnum = heatnum + 1
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
    if Mvmt.Value < 0 or StunT.Value <= Stun.Value or Rooted.Value == true then
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
    local stunnum2 = 80
    if stunnum2 <= stunnum then
      if 0 < Stun.Value then
        Stun.Value = Stun.Value - 1
      end
      stunnum = 0
    end
    stunnum = stunnum + 1
    if 4 <= etheralnum and etheral == true then
      etheralnum = 0
      Clone()
    else
      etheralnum = etheralnum + 1
    end
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
          swait()
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
          Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
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
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.3, 0, 0.2), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -0.2), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.3), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.3), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6 - (donum) / 3, 0, -0.4) * euler(0, 1.4, 0), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5 - (donum) / 3, 0, 0.4 - (donum) / 3) * euler(0, -0.4, 0), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.3, 0), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.3, 0), 0.15)
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
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 1, 0), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1) * euler(0, -1, 0), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
              end
            else
              if 30 < torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 1, 0), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -1) * euler(0, -1, 0), 0.2)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
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
              local hit, pos = rayCast(Thing[4], Look, 20, modelzorz)
              local mag = Thing[4] - pos.magnitude
              MagicHead(BrickColor.new("Really red"), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.1)
              Thing[4] = Thing[4] + Look * 20
              Thing[3] = Thing[3] - 1
              if hit ~= nil then
                Thing[3] = 0
                if Thing[8] == 1 then
                  Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 5)), nil, nil, true, "Gun")
                else
                  if Thing[8] == 2 then
                    Damagefunc(hit, Thing[5], Thing[6], Thing[7], "NormalDecreaseMvmt1", RootPart, 0, 2, (math.random(1, 5)), nil, nil, true, "Gun")
                  end
                end
                ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                ref.Anchored = true
                ref.CFrame = cf(pos)
                MagicCircle(BrickColor.new("Really red"), cf(pos), 5, 5, 5, 1, 1, 1, 0.03)
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
                if Thing[2] == "FireWave" then
                  if Thing[3] <= Thing[4] then
                    Thing[1].CFrame = Thing[1].CFrame * euler(0, 1, 0)
                    Thing[3] = Thing[3] + 1
                    Thing[6].Scale = Thing[6].Scale + vt(Thing[5], 0, Thing[5])
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
                if Thing[2] == "Blood" then
                  if 0 <= Thing[3] then
                    Thing[3] = Thing[3] - 1
                  else
                    Thing[1].Parent = nil
                    table.remove(Effects, e)
                  end
                  if Thing[3] == 9 or Thing[3] == 10 then
                    Thing[4].Image = "rbxassetid://179462422"
                  else
                    if Thing[3] == 7 or Thing[3] == 8 then
                      Thing[4].Image = "rbxassetid://179462612"
                    else
                      if Thing[3] == 5 or Thing[3] == 6 then
                        Thing[4].Image = "rbxassetid://179462630"
                      else
                        if Thing[3] == 3 or Thing[3] == 4 then
                          Thing[4].Image = "rbxassetid://179462645"
                        else
                          if Thing[3] == 1 or Thing[3] == 2 then
                            Thing[4].Image = "rbxassetid://179462665"
                          else
                            if Thing[3] == 0 then
                              Thing[4].Image = "rbxassetid://000"
                            end
                          end
                        end
                      end
                    end
                  end
                end
                if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" and Thing[2] ~= "showDamage" and Thing[2] ~= "Blood" then
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
                        if Thing[2] == "Fire" then
                          Thing[1].CFrame = cf(Thing[1].Position) + vt(0, 0.2, 0)
                          Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
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
    fenbarmana2:TweenSize((UDim2.new(0.4, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
    fenbarmana4.Text = "Mana(" .. mana.Value .. ")"
    fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
    fenbarhp2:TweenSize((UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
    fenbarblock2:TweenSize((UDim2.new(0.4, 0, -4 * overheat / 100, 0)), nil, 1, 0.4, true)
    fenbarblock3.Text = "Overheat(" .. math.floor(overheat) .. ")"
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
      if mananum <= 13 and flight == false then
        mananum = mananum + 1
      else
        if flight == false then
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
  end
end