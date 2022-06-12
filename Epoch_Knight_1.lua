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
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local graviting = false
local distort = 100
local doanim = true
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local doingcomb = false
local distorcharge = false
local move4do = false
local move1 = "(Z)\nClock"
local move2 = "(X)\nGravity Impact"
local move3 = "(C)\nTime Blink"
local move4 = "(V)\nTemporal Waltz"
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
local cooldownadd1 = 0.2
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.25
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.4
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
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
NewCol = BrickColor.new("Dark green").Color
NewCol2 = Color3.new(0, 0.86274509803922, 0.86274509803922)
print(BrickColor.new(NewCol2))
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
if Character:findFirstChild("Kam\'s Hand", true) ~= nil then
  Character:findFirstChild("Kam\'s Hand", true).Parent = nil
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
passive1 = Instance.new("NumberValue", nil)
passive1.Name = "DecreaseAtk"
passive1.Value = -0.3
passive2 = Instance.new("NumberValue", nil)
passive2.Name = "DecreaseDef"
passive2.Value = 0.1
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
local tellbar = gui("TextLabel", fenframe5, "-Fixed by AureIion_sol =D (+)\n-Temporal Image changed to Distortion Charge where Tempus uses up all Distortion to, for a couple of seconds, gains increased damage and enemies around Tempus gets decreased movement (+)\n-All abilities can target an enemy for Time Blink (+)\n-Clock changed such that Tempus throws Kam\'s Hand forward first. Clock no longer buffs allies, and Tempus cannot move during the ability (+/-)\n-Graviga changed to Gravity Impact where Tempus stabs Kam\'s Hand to the ground to create a gravity wave to pull enemies towards Tempus\' self (+/-)\n-Time Crack changed to Time Blink where Tempus blinks towards the target, then hits normally with Time Crack (+/-)\n-Temporal Stun changed to Temporal Waltz where Tempus teleports to a random area near the targeted enemy, then do a Time Crack slash with increased damage and debuffs damage. Tempus does this 5 times (+/-)\n-Distortion charges up slower (-)\n-Abilities no longer uses Distortion as a substitute for mana (-)", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
tellbar.Font = "Arial"
tellbar.TextScaled = true
tellbar.TextTransparency = 1
tellbar.TextStrokeTransparency = 1
tellbar.ZIndex = 2
local fnumb = 0
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Wakfu(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarblock1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarblock2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("White").Color, UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarblock3 = gui("TextLabel", fenframe, "Distortion(" .. distort .. ")", 1, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
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
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new("Navy blue").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol2).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Kam\'s Hand"
local handle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle", vt())
local prt1 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part01", vt())
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part02", vt())
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part04", vt())
local prt5 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium blue"), "Part05", vt())
local prt6 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part06", vt())
local prt11 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium blue"), "Part11", vt())
local prt12 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium blue"), "Part12", vt())
local prt13 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium blue"), "Part13", vt())
local prt14 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part14", vt())
local prt17 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part17", vt())
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(1, 10, 1))
msh2 = mesh("SpecialMesh", prt2, "FileMesh", "3270017", vt(0, 0, 0), vt(0.6, 0.6, 2))
msh4 = mesh("SpecialMesh", prt4, "FileMesh", "1778999", vt(0, 0, 0), vt(0.2, 0.3, 0.2))
msh5 = mesh("SpecialMesh", prt5, "FileMesh", "1778999", vt(0, 0, 0), vt(0.3, 0.2, 0.5))
msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(2, 1, 3))
msh11 = mesh("SpecialMesh", prt11, "Torso", "nil", vt(0, 0, 0), vt(2.6, 1, 1))
msh12 = mesh("BlockMesh", prt12, "", "", vt(0, 0, 0), vt(2, 25, 0.5))
msh13 = mesh("SpecialMesh", prt13, "Torso", "nil", vt(0, 0, 0), vt(2.3, 1, 0.5))
msh14 = mesh("BlockMesh", prt14, "", "", vt(0, 0, 0), vt(1, 2, 1))
msh17 = mesh("SpecialMesh", prt17, "FileMesh", "1778999", vt(0, 0, 0), vt(0.4, 0.4, 0.1))
local handlewld = weld(handle, handle, Torso, euler(-2.5, 1.57, 0) * cf(-2, -2.5, -0.5))
local wld1 = weld(prt1, prt1, handle, cf(0, 0, 0) * euler(0, 0, 0))
local wld2 = weld(prt1, prt2, prt1, euler(0, 1.57, 0) * cf(0, 1.3, 0))
local wld4 = weld(prt1, prt4, prt2, euler(0, 0, 3.14) * cf(0, 0.55, 0))
local wld5 = weld(prt1, prt5, prt1, euler(0, 0, 3.14) * cf(0, -1, 0))
local wld6 = weld(prt1, prt6, prt5, euler(0, 0, 3.14) * cf(0, 0.25, 0))
local wld11 = weld(prt1, prt11, prt6, euler(0, 1.57, 0) * cf(0, -0.2, 0))
local wld12 = weld(prt1, prt12, prt11, euler(0, 0, 0) * cf(0, -2.6, 0))
local wld13 = weld(prt1, prt13, prt12, euler(0, 0, 3.14) * cf(0, -2.6, 0))
local wld14 = weld(prt1, prt14, prt13, euler(0, 0, 0) * cf(0, 0.3, 0))
local wld17 = weld(prt1, prt17, prt14, euler(0, 0, 3.14) * cf(0, 0.53, 0))
for i = 0.785, 6.28, 0.785 do
  if i ~= 6.28 and i ~= 3.14 then
    local prt3 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium blue"), "Part03", vt())
    msh3 = mesh("BlockMesh", prt3, "", "", vt(0, 0, 0), vt(1, 0.8, 1))
    local wld3 = weld(prt1, prt3, prt2, cf(0, 0.4, 0) * euler(0, 0, i))
  end
end
oldprt = prt6
num = 0.2
ulnum = 0.4
num2 = 1
num3 = 2
for i = 1, 3 do
  local prt7 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part07", vt())
  msh7 = mesh("BlockMesh", prt7, "", "", vt(0, 0, 0), vt(num3, num2, 1.5))
  local wld7 = weld(prt1, prt7, oldprt, euler(num, 0, 0) * cf(0, num / 10, ulnum))
  local prt8 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium blue"), "Part08", vt())
  msh8 = mesh("BlockMesh", prt8, "", "", vt(0, 0, 0), vt(num3 / 2, 1, 1))
  local wld8 = weld(prt1, prt8, prt7, euler(0, 0, 0) * cf(0, -num2 * 0.1 - 0.1, 0))
  oldprt = prt7
  num = num + 0.05
  ulnum = 0.25
  num2 = num2 - 0.2
  num3 = num3 - 0.5
end
oldprt = prt6
num = 0.2
ulnum = -0.4
num2 = 1
num3 = 2
for i = 1, 3 do
  local prt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part09", vt())
  msh9 = mesh("BlockMesh", prt9, "", "", vt(0, 0, 0), vt(num3, num2, 1.5))
  local wld9 = weld(prt1, prt9, oldprt, euler(-num, 0, 0) * cf(0, num / 10, ulnum))
  local prt10 = part(3, modelzorz, 0.5, 0, BrickColor.new("Medium blue"), "Part08", vt())
  msh10 = mesh("BlockMesh", prt10, "", "", vt(0, 0, 0), vt(num3 / 2, 1, 1))
  local wld10 = weld(prt1, prt10, prt9, euler(0, 0, 0) * cf(0, -num2 * 0.1 - 0.1, 0))
  oldprt = prt9
  num = num + 0.05
  ulnum = -0.25
  num2 = num2 - 0.2
  num3 = num3 - 0.5
end
eul1 = 0.785
eul2 = 2.355
eul3 = 0.785
for i = 0.2, -0.2, -0.4 do
  local prt15 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part15", vt())
  msh15 = mesh("SpecialMesh", prt15, "FileMesh", "3270017", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
  local wld15 = weld(prt1, prt15, prt14, euler(0, 0, 0) * cf(i, 0, 0))
  for i = eul1, eul2, eul3 do
    local prt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part03", vt())
    msh16 = mesh("BlockMesh", prt16, "", "", vt(0, 0, 0), vt(0.5, 0.8, 0.3))
    local wld16 = weld(prt1, prt16, prt15, cf(0, 0.3, 0) * euler(0, 0, i))
  end
  eul1 = -0.785
  eul2 = -2.355
  eul3 = -0.785
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
  hbwld.Part1 = prt12
end
local Image = it("Model")
Image.Name = "Image"
local CloneJoints = {}
ImageRoot = RootPart:Clone()
table.insert(CloneJoints, ImageRoot)
ImageTors = Torso:Clone()
table.insert(CloneJoints, ImageTors)
ImageHead = Head:Clone()
table.insert(CloneJoints, ImageHead)
ImageLA = LeftArm:Clone()
table.insert(CloneJoints, ImageLA)
ImageRA = RightArm:Clone()
table.insert(CloneJoints, ImageRA)
ImageLG = LeftLeg:Clone()
table.insert(CloneJoints, ImageLG)
ImageRG = RightLeg:Clone()
table.insert(CloneJoints, ImageRG)
RootJointClone = cf(0, 0, 0)
NeckClone = cf(0, 0, 0)
RWClone = cf(0, 0, 0)
LWClone = cf(0, 0, 0)
RHClone = cf(0, 0, 0)
LHClone = cf(0, 0, 0)
for i = 1, #CloneJoints do
  CloneJoints[i].Parent = Image
  if CloneJoints[i] ~= ImageRoot then
    CloneJoints[i].Transparency = 0.5
  end
  CloneJoints[i].Anchored = true
  CloneJoints[i].CanCollide = false
  CloneJoints[i].BrickColor = BrickColor.new(NewCol2)
  NoOutline(CloneJoints[i])
  for _,c in pairs(CloneJoints[i]:children()) do
    if c.className ~= "SpecialMesh" then
      c.Parent = nil
    end
  end
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Kam\'s Hand"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Tempus: Epoch Knight" then
  Bin.Name = "Kam\'s Hand"
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
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, -0.5), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  so("206083107", handle, 1, 1)
  handlewld.Part1 = Torso
  handlewld.C0 = euler(1.57, 0, 1.57) * cf(-3, 0, 0)
  wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
  mdec2.Parent = nil
  mdec.Parent = Decrease
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(-2.5, 1.57, 0) * cf(-2, -2.5, -0.5), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  handlewld.Part1 = Torso
  handlewld.C0 = euler(-2.5, 1.57, 0) * cf(-2, -2.5, -0.5)
  wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  handlewld.Part1 = RootPart
  n = 2
  so("206083107", handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 1.57, 0) * cf(0, -2.5, 2), 0.3)
    wld1.C0 = euler(0, 0, 6.28 * i * n) * cf(0, 0, 0)
    n = n - 0.1
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.8) * euler(-0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(2.5, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  handlewld.Part1 = RightArm
  handlewld.C0 = euler(1.57, 0, 0) * cf(0, 1.2, 0.5)
  wld1.C0 = euler(0, 1.57, 0) * euler(3.8, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0)
  dec.Parent = nil
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
    handlewld.Part1 = RightArm
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.2)
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
    handlewld.Part1 = RightArm
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.2)
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
    handlewld.Part1 = RightArm
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.2)
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
    handlewld.Part1 = RightArm
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.2)
    wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.2)
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
  for i = 0, 1, 0.15 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.2) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 1.2) * euler(0, -0.6, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -1.3), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 1.2, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC219: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC219: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145887", prt12, 1, 1.2)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 7, 0.5)
  hitboxCF = prt12.CFrame
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt12.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 4, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.4), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 0, -1) * euler(0, -0.6, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC496: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC496: LeaveBlock: unexpected jumping out IF_STMT

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
  handlewld.Part1 = Torso
  handlewld.C0 = euler(1.57, 0, 1.57) * cf(-3, 1, 0)
  wld1.C1 = euler(0, 0, 0)
  for i = 0, 1, 0.15 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 1.57) * cf(0, -1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, -7, 0) * euler(1, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.4) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1) * euler(0, 1.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC248: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC248: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145841", prt12, 1, 0.8)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 7, 0.5)
  hitboxCF = prt12.CFrame
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  num = 0
  for i = 0, 1, 0.1 do
    swait()
    num = num + 0.6
    hitboxCF = prt12.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 4, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 1.57) * cf(0, -1, 0), 0.3)
    wld1.C0 = euler(1, 0, 0) * cf(0, -4, 0) * euler(1 - num, 0, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.2) * euler(0, 1.7, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1.3), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 1.2, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC532: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC532: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  handlewld.Part1 = RightArm
  handlewld.C0 = euler(1.57, 0, 1.57) * cf(0, -1, 0)
  wld1.C0 = euler(-1, 1.57, 0) * cf(0, -4, 0) * euler(0, 0, 0)
  attack = false
end
attackthree = function()
  attack = true
  handlewld.Part1 = Torso
  handlewld.C0 = euler(1.57, 0, 1.57) * cf(-3, 1, 0)
  wld1.C1 = euler(0, 0, 0)
  n = 7
  for i = 0, 1, 0.1 do
    swait()
    n = n + 1
    if n >= 7 then
      so("199145146", prt12, 1, 1.2)
      n = 0
    end
    handlewld.C0 = clerp(handlewld.C0, euler(0, 1.57, 1.3) * euler(0.2, 0, 0) * cf(0, -1, 3), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 3, 0), 0.3)
    wld1.C1 = wld1.C1 * euler(0.6, 0, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(-0.05, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1) * euler(0, 1.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.7, 0, 0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1.4, -0.1), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.2) * euler(0, -1.57, 0) * euler(0, -0.5, 0) * euler(-0.2, 0, 0), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC280: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC280: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  wld1.C1 = euler(0, 0, 0)
  so("199145913", prt12, 1, 1.4)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 7, 0.5)
  hitboxCF = prt12.CFrame
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt12.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 4, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(1.7, -1, 0) * euler(0, 0, 0) * cf(7, -0.5, 1.5), 0.5)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 3, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.2) * euler(-0.05, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.5) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, 0, -1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.2, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, 0.4) * euler(0, -1.57, 0) * euler(0, 1.2, -0.1) * euler(0, 0, 0), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC576: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC576: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  handlewld.Part1 = RightArm
  attack = false
end
attackfour = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.2) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 0.8) * euler(0, -0.6, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -1.3), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 1.2, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC219: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC219: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  handlewld.Part1 = RootPart
  handlewld.C0 = euler(-0.7, 0, -0.6) * cf(-1, -3, -4)
  wld1.C0 = euler(0, 0, 0) * cf(0, 3, 0)
  wld1.C1 = euler(0, 0, 0)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 7, 0.5)
  hitboxCF = prt12.CFrame
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  n = 4
  mov = 0
  for i = 0, 1, 0.1 do
    swait()
    mov = mov + 3
    n = n + 1
    if n >= 4 then
      so("199145146", prt12, 1, 1.4)
      n = 0
    end
    hitboxCF = prt12.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 5, 8, 0, "Normal", RootPart, 0.5, 1, (math.random(3, 6)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, -1, mov), 0.4)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C1 = wld1.C1 * euler(-0.6, 0, 0)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1.57, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1.57, 0.2), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC553: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC553: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  handlewld.Part1 = RightArm
  wld1.C1 = euler(0, 0, 0)
  attack = false
end
DistortionCharge = function()
  if distort == 100 then
    distort = 0
    distorcharge = true
    table.insert(Effects, {nil, "DisCharge", 400, 0})
  end
end
do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 20 then
    attack = true
    doingcomb = true
    cooldowns[1] = 0
    for i = 0, 1, 0.15 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.2) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 0.8) * euler(0, -0.6, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -1.3), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 1.2, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.4)
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
    handlewld.Part1 = RootPart
    handlewld.C0 = euler(-0.7, 0, -0.6) * cf(-1, -3, -4)
    wld1.C0 = euler(0, 0, 0) * cf(0, 3, 0)
    wld1.C1 = euler(0, 0, 0)
    so("199145146", prt12, 1, 0.8)
    mov = 0
    for i = 0, 1, 0.15 do
      swait()
      mov = mov + 5
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, -1, mov), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 3, 0), 0.4)
      wld1.C1 = wld1.C1 * euler(-0.6, 0, 0)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 0, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1.57, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1.57, 0.2), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    n = 5
    for i = 0, 1, 0.1 do
      swait()
      mov = mov + n
      n = n / 2
      handlewld.C0 = clerp(handlewld.C0, euler(0, 1.57, 0) * cf(0, -2, mov), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 3, 0), 0.4)
      wld1.C1 = clerp(wld1.C1, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1.57), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -1.57), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
        mana.Value = mana.Value - 20
        so("206083122", handle, 1, 1)
        CF = cf(prt12.Position)
        MagicCircle(BrickColor.new(NewCol2), CF, 150, 150, 150, 1, 1, 1, 0.02)
        MagniDamage(prt12, 20, 5, 10, math.random(20, 30), "Knockdown2", prt12, 0, 1, (math.random(5, 10)), nil, nil, true, "Movement", 0.2, 300)
        num = 0
        eul = math.random(-50, 50)
        eul2 = math.random(-50, 50)
        for i = 0, 1, 0.05 do
          swait()
          wld1.C0 = cf(0, 3, 0) * euler(-6.6 * i, 0, 0)
          if num >= 3 then
            num = 0
            eul = eul - 0.5
            eul2 = eul2 - 0.05
            MagicCircle2(BrickColor.new(NewCol2), CF * euler(-1.57, 0, eul) * cf(0, 0, 0), 3, 7, 3, -0.1, 9, -0.1, 0.1, 1.2)
            MagicCircle2(BrickColor.new(NewCol2), CF * euler(-1.57, 0, eul2) * cf(0, 0, 0), 3, 5, 3, -0.1, 6, -0.1, 0.1, 1.2)
          end
          num = num + 1
          for i = 0.523, 6.28, 0.523 do
            MagicBlock(BrickColor.new(NewCol2), CF * euler(0, i, 0) * cf(0, 0, 20), 1, 1, 1, 1, 1, 1, 0.1, 1)
          end
        end
        swait(10)
        handlewld.Part1 = RightArm
        dec.Parent = nil
        doingcomb = false
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 15 then
    attack = true
    doingcomb = true
    cooldowns[2] = 0
    for i = 0, 1, 0.15 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3) * euler(0, -0.1, 0), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 1.1, 0) * cf(0, 0, 0), 0.4)
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
        end
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(3.14, 0, 0) * cf(0, -0.5, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.3, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.87, 0, -0.8) * euler(0, 0, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.97, 0, 0.8) * euler(0, 0, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.2), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
        hitfloor2, posfloor2 = rayCast(prt1.Position, CFrame.new(prt1.Position, prt1.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
        if hitfloor2 ~= nil then
          mana.Value = mana.Value - 15
          MagicWave(BrickColor.new("Navy blue"), cf(posfloor2), 60, 5, 60, -1, -0.2, -1, 0.05)
          MagicCircle(BrickColor.new("Navy blue"), cf(posfloor2), 550, 5, 550, -10, 1, -10, 0.03)
          ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          ref.CFrame = cf(posfloor2)
          game:GetService("Debris"):AddItem(ref, 3)
          so("183763487", ref, 1, 0.4)
          so("183763487", ref, 1, 1)
          so("161006182", ref, 1, 0.2)
          so("158210228", ref, 1, 0.4)
          MagniDamage(ref, 55, 4, 6, math.random(-40, -30), "Knockdown2", ref, 0, 1, (math.random(4, 7)), nil, nil, true, nil, nil, nil)
        end
        for i = 1, 10 do
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
        doingcomb = false
        attack = false
      end
    end
do3 = function()
  doanim = true
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 15 and RecentEnemy.Value ~= nil then
    decreasemana = true
    hits = 0
    num1 = 0
    hits2 = 0
    attack = true
    doingcomb = true
    cooldowns[3] = 0
    local BodGy = Instance.new("BodyGyro", RootPart)
    BodGy.maxTorque = Vector3.new(0, math.huge, 0)
    BodGy.P = 2000
    BodGy.D = 100
    Guy = nil
    Tors = nil
    if RecentEnemy.Value ~= nil then
      Guy = RecentEnemy.Value
      if RecentEnemy.Value:findFirstChild("Torso") ~= nil then
        Tors = RecentEnemy.Value.Torso
        BodGy.cframe = cf(Torso.Position, RecentEnemy.Value.Torso.Position)
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      if Tors.Parent ~= nil then
        BodGy.cframe = cf(Torso.Position, Tors.Position)
      end
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(1.7, 0, 0) * cf(0, 0.9, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.7, 0, -1) * euler(0, 1.4, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(1.2, 0, 1) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.6, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -0.6, 0.1), 0.3)
    end
    if Tors.Parent ~= nil then
      so("206083431", RootPart, 1, 1)
      Clone()
      BodGy.Parent = nil
      local targ = Torso.Position - Tors.Position
      local mag = targ.magnitude
      oldpos = Torso.Position
      Torso.CFrame = cf(Torso.Position, Tors.Position) * cf(0, 0, -mag * 0.8)
      effect(NewCol2, 0, Torso.CFrame, (cf(oldpos)), nil, 1, 1)
      MagicSpecial(BrickColor.new(NewCol2), cf(Torso.Position), 1, 1, 1, 5, 5, 5, 0.2)
      MagicSpecial(BrickColor.new(NewCol2), cf(oldpos), 1, 1, 1, 5, 5, 5, 0.2)
      swait(5)
      so("199145913", prt12, 1, 1.2)
      for i = 0, 1, 0.3 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.5)
        wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.2) * euler(0, 1.4, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1.3), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 1.2, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.5)
      end
      if Tors.Parent ~= nil then
        mana.Value = mana.Value - 15
        so("206083232", Tors, 1, 1)
        so("206083252", Tors, 1, 1)
        so("206083267", Tors, 1, 1)
        for i = 1, 2 do
          MagicCircle(BrickColor.new(NewCol2), cf(Tors.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 5, 3, -0.2, 10, -0.2, 0.05)
        end
        for i = 1, 5 do
          Lightning(Tors.Position + vt(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), Tors.Position + vt(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 5, 2, NewCol2, 0.05, 0.4, 0.05)
        end
        if Tors.Parent ~= nil then
          Damagefunc(Tors, 6, 8, 0, "Normal", RootPart, 0, 1, (math.random(1, 3)), nil, false, true, "Movement", 0.1, 300)
        end
      end
      for i = 0, 1, 0.15 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.5)
        wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.2) * euler(0, 1.4, 0), 0.5)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1.3), 0.5)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 1.2, 0), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.5)
      end
    end
    do
      BodGy.Parent = nil
      doingcomb = false
      attack = false
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
  if cooldownmax <= cooldowns[4] and mana.Value >= 25 and RecentEnemy.Value ~= nil then
    attack = true
    doingcomb = true
    move4do = true
    cooldowns[4] = 0
    Guy = nil
    Tors = nil
    if RecentEnemy.Value ~= nil then
      Guy = RecentEnemy.Value
      if RecentEnemy.Value:findFirstChild("Torso") ~= nil then
        Tors = RecentEnemy.Value.Torso
      end
    end
    print(Guy)
    for i = 0, 1, 0.1 do
      swait()
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(1.7, 0, 0) * cf(0, 0.9, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.7, 0, -1) * euler(0, 1.4, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(1.2, 0, 1) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.6, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -0.6, 0.1), 0.3)
    end
    if Tors.Parent ~= nil then
      mana.Value = mana.Value - 25
      for i = 1, 5 do
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = cf(Tors.Position) * cf(0, 10, 0)
        game:GetService("Debris"):AddItem(ref, 1)
        oldpos = Torso.Position
        so("206083431", RootPart, 1, 1)
        Clone()
        ref.CFrame = ref.CFrame * euler(0, math.random(-50, 50), 0) * cf(0, 0, math.random(1000, 2000) / 100) * euler(0, 0, 0)
        hitfloor2, posfloor2 = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
        if hitfloor2 ~= nil then
          RootPart.CFrame = cf(posfloor2) * cf(0, 3, 0)
        end
        RootPart.CFrame = cf(RootPart.Position, Tors.Position)
        effect(NewCol2, 0, Torso.CFrame, (cf(oldpos)), nil, 1, 1)
        MagicSpecial(BrickColor.new(NewCol2), cf(Torso.Position), 1, 1, 1, 5, 5, 5, 0.2)
        MagicSpecial(BrickColor.new(NewCol2), cf(oldpos), 1, 1, 1, 5, 5, 5, 0.2)
        so("199145913", prt12, 1, math.random(90, 120) / 100)
        handlewld.C0 = euler(1.7, 0, 0) * cf(0, 0.9, 0)
        wld1.C0 = euler(0.1, 0, 0) * cf(0, 0.5, 0)
        Neck.C0 = necko * euler(0, 0, -0.6) * euler(0.2, 0, 0)
        RootJoint.C0 = RootCF * euler(0, 0, 0.6)
        RW.C0 = cf(1, 0.5, -0.5) * euler(1.7, 0, -1) * euler(0, 1.4, 0)
        LW.C0 = cf(-1, 0.3, -0.5) * euler(1.2, 0, 1) * euler(0, -1.57, 0)
        RH.C0 = cf(0.9, -1, 0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.6, 0)
        LH.C0 = cf(-0.9, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -0.6, 0.1)
        d = math.random(1, 4)
        for i = 0, 1, 0.3 do
          swait()
          if d == 1 then
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.5)
            wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.2), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.2) * euler(0, 1.4, 0), 0.5)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1.3), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(0.7, -1, -0.5) * euler(0, 1.57, 0) * euler(-0.1, 1.2, 0), 0.5)
            LH.C0 = clerp(LH.C0, cf(-0.7, -1, 0.5) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.5)
          else
            if d == 2 then
              handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.5)
              wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.5)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.5)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.4), 0.5)
              RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 0, -1) * euler(0, -0.6, 0), 0.5)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.5)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
              RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.3) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.5)
              LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.3) * euler(0, -1.57, 0) * euler(0, -1, 0), 0.5)
            else
              if d == 3 then
                handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3) * euler(0, -0.1, 0), 0.5)
                wld1.C0 = clerp(wld1.C0, euler(0, 1.1, 0) * cf(0, 0, 0) * euler(0.5, 0, 0.5), 0.5)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.5)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
                RW.C0 = clerp(RW.C0, cf(1, 0.1, -0.5) * euler(0.2, 0, -0.8) * euler(0, 0, 0), 0.5)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
                LW.C0 = clerp(LW.C0, cf(-1, 0.1, -0.5) * euler(0.2, 0, 0.8), 0.5)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.5)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.5)
              else
                if d == 4 then
                  handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.5)
                  wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.5)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.5)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.4), 0.5)
                  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.4, 0, -0.8) * euler(0, -0.5, 0), 0.5)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.7, 0, -0.7) * euler(0, 0, 0), 0.5)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.4, -0.1), 0.5)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.4, 0.3), 0.5)
                end
              end
            end
          end
        end
        if Tors.Parent ~= nil then
          so("206083232", Tors, 1, 1)
          so("206083252", Tors, 1, 1)
          so("206083267", Tors, 1, 1)
          for i = 1, 2 do
            MagicCircle(BrickColor.new(NewCol2), cf(Tors.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 5, 3, -0.2, 10, -0.2, 0.05)
          end
          for i = 1, 5 do
            Lightning(Tors.Position + vt(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), Tors.Position + vt(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 5, 2, NewCol2, 0.05, 0.4, 0.05)
          end
          if Tors.Parent ~= nil then
            Damagefunc(Tors, 6, 8, 0, "Normal", RootPart, 0, 1, (math.random(1, 3)), nil, false, true, "Damage", 0.05, 300)
          end
        end
        if Tors.Parent == nil then
          break
        end
        swait(5)
      end
    end
    do
      move4do = false
      doingcomb = false
      attack = false
    end
  end
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
MagniDebuff = function(Part, magni, Dec, DecAm, Dur)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and (game.Players:GetPlayerFromCharacter(head.Parent).TeamColor ~= Player.TeamColor or Player.Neutral == true) then
          DecreaseStat(head.Parent, Dec, DecAm, Dur)
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
  local mg = (LP.p - point1.p).magnitude
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
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end
MagicCircle3 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, partt)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cf(partt.Position) * cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder2", delay, x3, y3, z3, msh, cframe, partt})
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
MagicSpecial = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "24388358", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
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
Clone = function()
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local c = part(3, workspace, 0, 0.5, BrickColor.new(NewCol2), "Effect", v.Size)
      c.Anchored = true
      c.CFrame = v.CFrame
      game:GetService("Debris"):AddItem(c, 5)
      if v.Name == "Head" then
        cmsh = mesh("SpecialMesh", c, "Head", "nil", vt(0, 0, 0), v.Mesh.Scale)
      end
      table.insert(Effects, {c, "Disappear", 0.01})
    end
  end
end
CloneArms = function()
  for _,v in pairs(Torso.Parent:children()) do
    if v.Name == "Left Arm" or v.Name == "Right Arm" then
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
    if doingcomb == true then
      RecentEnemy.Value = hit.Parent
    end
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
  end), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Instance.new("BodyVelocity")
        bodvol.velocity = angle * knockback
        bodvol.P = 500
        bodvol.maxForce = Vector3.new(3000, 3000, 3000)
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
  doingcomb = true
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
  doingcomb = false
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if doingcomb == false then
        swait()
      end
    end
    if doingcomb == false then
      combo = 0
      RecentEnemy.Value = nil
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
  if key == "e" then
    DistortionCharge()
  end
  if key == "x" and graviting == true then
    do2()
    return 
  end
  if key == "c" and doanim == false then
    do3()
    return 
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
print("Tempus loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local passivenum = 0
local passivenum2 = 0
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
    if Humanoid.Health <= 0 then
      Image.Parent = nil
    end
    passivenum = passivenum + 1
    if 8 <= passivenum then
      passivenum = 0
      distort = distort + 1
    end
    if 100 <= distort then
      distort = 100
    end
    if 30 <= passivenum2 then
      if Image.Parent ~= nil and RootPart.Position - ImageRoot.Position.magnitude <= 150 then
        Lightning(RootPart.Position, ImageRoot.Position, 5, 1, NewCol2, 0.05, 0.4, 0.1)
      end
      passivenum2 = 0
    end
    passivenum2 = passivenum2 + 1
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
    local stunnum2 = 50
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
          handlewld.Part1 = RightArm
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
          wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0.5, 0), 0.2)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.2), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, 0), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            handlewld.Part1 = RightArm
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
            wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0.5, 0), 0.2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, 0), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              handlewld.Part1 = RightArm
              handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.2)
              wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.2)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.05, 0, 0), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.6), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2 + (donum) / 3, 0, 0.2 + (donum) / 3) * euler(0, -0.3, 0), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2 - (donum) / 3, 0, -0.2 - (donum) / 3), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0.6, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0.1), 0.2)
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
                handlewld.Part1 = RightArm
                handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0.5, 0), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, -1, 0), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  handlewld.Part1 = RightArm
                  handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
                  wld1.C0 = clerp(wld1.C0, euler(3.14, 0, 0) * cf(0, -0.5, 0), 0.2)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.3, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.87, 0, -0.8) * euler(0, 0, 0), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.97, 0, 0.8) * euler(0, 0, 0), 0.4)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.2), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.7, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.2), 0.4)
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
            if Thing[2] == "DisCharge" then
              if 0 <= Thing[3] then
                passive1.Parent = Decrease
                passive2.Parent = Decrease
                if Thing[4] % 100 == 0 then
                  MagniDebuff(prt14, 50, "Movement", 0.2, 120)
                end
                if Thing[4] % 5 == 0 then
                  MagicCircle3(BrickColor.new(NewCol2), euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 1, 5, -0.5, 5, -0.5, 0.1, prt14)
                end
                Thing[4] = Thing[4] + 1
                Thing[3] = Thing[3] - 1
              else
                print("end")
                distortcharge = false
                passive1.Parent = nil
                passive2.Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "CloneEf" and Thing[2] ~= "DisCharge" then
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
                      if Thing[2] == "Cylinder2" then
                        Mesh = Thing[7]
                        Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                        Thing[1].CFrame = cf(Thing[9].Position) * Thing[8]
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
      fenbarmana4.Text = "Wakfu(" .. mana.Value .. ")"
      fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
      fenbarhp2:TweenSize((UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
      fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
      fenbarblock2:TweenSize((UDim2.new(0.4, 0, -4 * distort / 100, 0)), nil, 1, 0.4, true)
      fenbarblock3.Text = "Distortion(" .. distort .. ")"
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
        if mananum <= 15 then
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
      -- DECOMPILER ERROR at PC5600: LeaveBlock: unexpected jumping out DO_STMT

      -- DECOMPILER ERROR at PC5600: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
