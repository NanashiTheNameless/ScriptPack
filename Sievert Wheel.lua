
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
local hitfloor, posfloor
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local invisible = false
local doing2 = false
local doing4 = false
local Marked = {}
local MarkedGUI = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local pursuitnum = 0
local move1 = [[
(Z)
Wheel Spin]]
local move2 = [[
(X)
Laser Of Doom]]
local move3 = [[
(C)
Floor Smash]]
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
local cooldownadd1 = 100
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 100
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 100
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 100
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
NewCol = Color3.new(0, 0.5, 0)
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
end
print(BrickColor.new(NewCol))
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
if Character:findFirstChild("Effects", true) ~= nil then
  Character:findFirstChild("Effects", true).Parent = nil
end
local effects = it("Model", Character)
effects.Name = "Effects"
local Animate = Humanoid.Animator
local canjump = true
function removeControl()
  canjump = false
end
function resumeControl()
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
frame = 0.03333333333333333
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
if Character:findFirstChild("Carnufico", true) ~= nil then
  Character:findFirstChild("Carnufico", true).Parent = nil
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
local invisnum = Instance.new("NumberValue")
invisnum.Name = "Pursuit"
invisnum.Parent = Stats
invisnum.Value = 0
local isinvis = Instance.new("BoolValue")
isinvis.Name = "IsInvisible"
isinvis.Parent = Stats
isinvis.Value = false
local passive = Instance.new("NumberValue", Decrease)
passive.Name = "DecreaseAtk"
passive.Value = 0
local passive2 = Instance.new("NumberValue", nil)
passive2.Name = "DecreaseDef"
passive2.Value = 0.2
local passive3 = Instance.new("NumberValue", nil)
passive3.Name = "DecreaseMvmt"
passive3.Value = -0.2
function NoOutline(Part)
  Part.TopSurface = 10
end
function part(formfactor, parent, reflectance, transparency, brickcolor, name, size)
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
function partg(formfactor, parent, reflectance, transparency, brickcolor, name, size)
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
  fp.Material = "Neon"
  fp:BreakJoints()
  return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
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
function weld(parent, part0, part1, c0)
  local weld = it("Motor")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end
function gui(GuiType, parent, text, backtrans, backcol, pos, size)
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
local tellbar = gui("TextLabel", fenframe5, "Made by Maxisteele (Sievert Remastered) Grab the tool and press F", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
tellbar.Font = "SourceSans"
tellbar.TextScaled = true
tellbar.TextTransparency = 1
tellbar.TextStrokeTransparency = 1
tellbar.ZIndex = 2
local fnumb = 0
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarblock1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarblock2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("Black").Color, UDim2.new(-0.7, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarblock3 = gui("TextLabel", fenframe, "Pursuit(" .. invisnum.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(-0.7, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
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
local testpart = part(3, effects, 0, 1, BrickColor.new("Black"), "Handle", vt())
testpart.Anchored = true
local scarfp2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Handle", vt())
scarfp2.Anchored = true
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Wagon Wheel Of The Future"
local handle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle", vt())
local prt1 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Part01", vt())
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part02", vt())
prt2.Material = "Neon"
local prt3 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part03", vt())
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part04", vt())
local prt5 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part05", vt())
local prt6 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part06", vt())
local prt7 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part07", vt())
local prt8 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part08", vt())
local prt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part09", vt())
prt9.Material = "Neon"
local prt10 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part10", vt())
prt10.Material = "Neon"
local handle2 = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle 2", vt())
local prt11 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Part11", vt())
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(4, 3, 4))
msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(6, 3, 6))
msh3 = mesh("CylinderMesh", prt3, "", "", vt(0, 0, 0), vt(7, 2.9, 7))
msh4 = mesh("BlockMesh", prt4, "", "", vt(0, 0, 0), vt(29, 2.2, 2.2))
msh5 = mesh("BlockMesh", prt5, "", "", vt(0, 0, 0), vt(29, 1.5, 1.5))
msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(29, 1.5, 1.5))
msh7 = mesh("BlockMesh", prt7, "", "", vt(0, 0, 0), vt(29, 1.5, 1.5))
msh8 = mesh("SpecialMesh", prt8, "FileMesh", "3270017", vt(0, 0, 0), vt(6, 6, 6))
msh9 = mesh("SpecialMesh", prt9, "FileMesh", "3270017", vt(0, 0, 0), vt(6, 6, 0.01))
msh10 = mesh("SpecialMesh", prt10, "FileMesh", "3270017", vt(0, 0, 0), vt(6, 6, 0.01))
msh11 = mesh("BlockMesh", prt11, "", "", vt(0, 0, 0), vt(29, 1.5, 1.5))
local handlewld = weld(handle, handle, Torso, euler(-2, 1.57, 0) * cf(-1, -0.5, -0.6))
local wld1 = weld(prt1, prt1, handle, euler(0, 0, 0) * cf(0, 0, 0))
local wld2 = weld(prt2, prt2, prt1, euler(0, 0, 80) * cf(0, -1.2, 0))
local wld3 = weld(prt3, prt3, prt1, euler(0, 0, 80) * cf(0, -1.2, 0))
local wld4 = weld(prt4, prt4, prt1, euler(0, 0, 80) * cf(0, -1.2, 0))
local wld5 = weld(prt5, prt5, prt1, euler(0, 4, 80) * cf(0, -1.2, 0))
local wld6 = weld(prt6, prt6, prt1, euler(0, -4, 80) * cf(0, -1.2, 0))
local wld7 = weld(prt7, prt7, prt1, euler(0, -4.7, 80) * cf(0, -1.2, 0))
local wld8 = weld(prt8, prt8, prt1, euler(7.9, 79, 80) * cf(0, -1.2, 0))
local wld9 = weld(prt9, prt9, prt1, euler(7.9, 79, 80) * cf(0.29, -1.2, 0))
local wld10 = weld(prt10, prt10, prt1, euler(7.9, 79, 80) * cf(-0.29, -1.2, 0))
local handlewld2 = weld(handle2, handle2, LeftArm, euler(7.9, 79, 80) * cf(0, -1.2, 3))
local wld11 = weld(prt11, prt11, prt1, euler(0, -4.7, 80) * cf(0, -1.2, 0))
for i = 0, 2.355, 0.785 do
  local prt4 = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Part04", vt())
  msh4 = mesh("SpecialMesh", prt4, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 0.2, 0.2))
  local wld4 = weld(prt1, prt4, prt3, euler(0, i, 0) * cf(0, 0.6, 0))
end
oldprt = prt9
oldprt2 = prt10
cff = 0.1
eul = 0.02
siz = 0.99
for i = 1, 6 do
  local prt11 = part(3, modelzorz, 0.5, 1, BrickColor.new("Really black"), "Part11", vt())
  msh11 = mesh("SpecialMesh", prt11, "Wedge", "nil", vt(0, 0, 0), vt(siz, 2, 6))
  local wld11 = weld(prt1, prt11, oldprt, euler(0, 0, 0) * cf(0, 0, cff) * euler(eul, 0, 0))
  if i < 4 then
    num = 6
    if i == 3 then
      num = 6.8
    end
    local prt12 = part(3, modelzorz, 0.5, 1, BrickColor.new("Black"), "Part12", vt())
    msh12 = mesh("BlockMesh", prt12, "", "", vt(0, 0, 0), vt(siz / 2, 2, num))
    local wld12 = weld(prt1, prt12, prt11, euler(0, 0, 0) * cf(0, 0, cff) * euler(eul, 0, 0))
  end
  oldprt = prt11
  cff = 0.6
  eul = 0.15
  siz = siz - 0.1
end
oldprt2 = prt10
cff = 0.1
eul = 0.02
siz = 0.99
for i = 1, 7 do
  local prt13 = part(3, modelzorz, 0.5, 1, BrickColor.new(NewCol), "Part13", vt())
  msh13 = mesh("SpecialMesh", prt13, "Wedge", "nil", vt(0, 0, 0), vt(siz, 2, 6))
  local wld13 = weld(prt1, prt13, oldprt2, euler(0, 0, 0) * cf(0, 0, cff) * euler(eul, 0, 0))
  oldprt2 = prt13
  cff = 0.6
  eul = 0.14
  siz = siz - 0.1
end
for _, c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _, c in pairs(prt1:children()) do
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
function hitboxweld()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = prt6
end
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Wheel of Fury"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Wheel of Fury" then
  Bin.Name = "Wheel of Fury"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
function so(id, par, vol, pit)
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
function clerp(a, b, t)
  local qa = {
    QuaternionFromCFrame(a)
  }
  local qb = {
    QuaternionFromCFrame(b)
  }
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    local i = 0
    if m00 < m11 then
      i = 1
    end
    if m22 > (i == 0 and m00 or m11) then
      i = 2
    end
    if i == 0 then
      local s = math.sqrt(m00 - m11 - m22 + 1)
      local recip = 0.5 / s
      return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
    elseif i == 1 then
      local s = math.sqrt(m11 - m22 - m00 + 1)
      local recip = 0.5 / s
      return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
    elseif i == 2 then
      local s = math.sqrt(m22 - m00 - m11 + 1)
      local recip = 0.5 / s
      return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
    end
  end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
  local xs, ys, zs = x + x, y + y, z + z
  local wx, wy, wz = w * xs, w * ys, w * zs
  local xx = x * xs
  local xy = x * ys
  local xz = x * zs
  local yy = y * ys
  local yz = y * zs
  local zz = z * zs
  return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp
  if cosTheta >= 1.0E-4 then
    if 1 - cosTheta > 1.0E-4 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      startInterp = 1 - t
      finishInterp = t
    end
  elseif 1 + cosTheta > 1.0E-4 then
    local theta = math.acos(-cosTheta)
    local invSinTheta = 1 / math.sin(theta)
    startInterp = math.sin((t - 1) * theta) * invSinTheta
    finishInterp = math.sin(t * theta) * invSinTheta
  else
    startInterp = t - 1
    finishInterp = t
  end
  return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function hideanim()
  equipped = false
  for i = 0, 1, 0.5 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, -1.57, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, -1.5, 0) * euler(0.2, 0, 0.4), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, -1.57, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, -1.5, 0) * euler(0.2, 0, 0.4), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(4, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  mdec2.Parent = nil
  handlewld.Part1 = Torso
  handlewld.C0 = euler(-2, 1.57, 0) * cf(-1, -0.5, -0.6)
  wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  mdec.Parent = Decrease
end
mdec.Parent = Decrease
function equipanim()
  equipped = true
  mdec.Parent = nil
  for i = 0, 1, 0.5 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0.2), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.4), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(4, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  mdec2.Parent = Decrease
  handlewld.Part1 = RightArm
  handlewld.C0 = euler(0, -1.57, 0) * cf(0, 1, 0)
  wld1.C0 = cf(0, -1.5, 0) * euler(0.2, 0, 0.4)
end
function StaggerAnim()
  attack = true
  removeControl()
  if invisible == true then
    Clone(0.1)
  end
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
  resumeControl()
  combo = 0
  attack = false
end
function StaggerHitt()
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
function StunAnim()
  attack = true
  removeControl()
  Stunned.Value = true
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(1.57, 0, 0), 0.3)
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
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(1.57, 0, 0), 0.3)
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
function attackone()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 1.2, 0) * euler(math.pi + math.pi / 10, 0, math.pi / 10), 0.3)
    RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 1.2, 0) * euler(math.pi + math.pi / 10, 0, -math.pi / 10), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.3)
    handlewld.C0 = clerp(handlewld.C0, euler(0, -math.pi / 2, math.pi / 10) * cf(0, 1.35, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
    end
  end
  so("199145095", prt3, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(5, 1, 5)
  hitboxCF = prt3.CFrame * cf(0, 0, 0)
  hitbox.CFrame = hitboxCF
  hitbox.Transparency = 1
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt3.CFrame * cf(0, 0, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 4, 4, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, math.random(4, 8), nil, true)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.35)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.35)
    RW.C0 = clerp(RW.C0, cf(1.8, 0, -1.25) * euler(math.pi / 2 - math.pi / 10, 0, math.pi / 10), 0.35)
    RW.C1 = clerp(RW.C1, cf(0, -0.5, 0) * euler(0, 0, 0), 0.35)
    LW.C0 = clerp(LW.C0, cf(-1.8, 0, -1.25) * euler(math.pi / 2 - math.pi / 10, 0, -math.pi / 10), 0.35)
    LW.C1 = clerp(LW.C1, cf(0, -0.5, 0) * euler(0, 0, 0), 0.35)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.1, 1.57, 0) * euler(0, 0, 0), 0.35)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.1, -1.57, 0) * euler(0, 0, 0), 0.35)
    handlewld.C0 = clerp(handlewld.C0, euler(0, -math.pi / 2, math.pi / 10) * cf(0, 1.35, 0.25), 0.3)
    wld1.C0 = clerp(wld1.C0, euler(0, 0, math.pi / 5) * cf(0, 0, -2), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
function attacktwo()
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
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
    end
  end
  so("199145841", prt3, 1, 0.8)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 7, 0.5)
  hitboxCF = prt3.CFrame
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  num = 0
  for i = 0, 1, 0.1 do
    swait()
    num = num + 0.6
    hitboxCF = prt3.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 4, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, math.random(3, 6), nil, true)
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
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
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
function attackthree()
  attack = true
  handlewld.Part1 = Torso
  handlewld.C0 = euler(1.57, 0, 1.57) * cf(-3, 1, 0)
  wld1.C1 = euler(0, 0, 0)
  n = 7
  for i = 0, 1, 0.1 do
    swait()
    n = n + 1
    if n >= 7 then
      so("199145146", prt3, 1, 1.2)
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
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
    end
  end
  wld1.C1 = euler(0, 0, 0)
  so("199145913", prt3, 1, 1.4)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(1, 7, 0.5)
  hitboxCF = prt3.CFrame
  hitbox.CFrame = hitboxCF
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt3.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 4, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, math.random(3, 6), nil, true)
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
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  handlewld.Part1 = RightArm
  attack = false
end
function attackfour()
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
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
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
  hitboxCF = prt1.CFrame
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
      so("199145146", prt3, 1, 1.4)
      n = 0
    end
    hitboxCF = prt3.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 6, 5, 8, 0, "Normal", RootPart, 0.5, 1, math.random(3, 6), nil, true)
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
    if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
      break
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
function GunStance()
  attack = true
  gun = true
  quickoblit = true
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 0.7
  for i = 0, 1, 0.15 do
    swait()
    if shootgun == 1 then
      GunRight(1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.8) * euler(1.7, 0, 1) * euler(0, -1, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.4)
    elseif shootgun == 2 then
      GunLeft(1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.7, 0, -1) * euler(0, 1, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.4)
    end
  end
  gairo = Instance.new("BodyGyro")
  gairo.Parent = RootPart
  gairo.maxTorque = Vector3.new(400000, 400000, 400000) * math.huge
  gairo.P = 20000
  gairo.cframe = RootPart.CFrame
  local offset
  while gun == true do
    if gun == true then
      swait()
      local gunpos = vt(MMouse.Hit.p.x, Head.Position.Y, MMouse.Hit.p.z)
      offset = (gunpart.Position.y - MMouse.Hit.p.y) / 60
      mag = (gunpart.Position - MMouse.Hit.p).magnitude / 66
      offset = offset / mag
      newpos = vt(MMouse.Hit.p.x, Torso.Position.Y, MMouse.Hit.p.z)
      MoveCF = cf(RootPart.Position, newpos)
      gairo.cframe = cf(Head.Position, gunpos)
      local mpos = Torso.CFrame * euler(0, 0, 0)
      local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
      local x, y, z = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
      if shootgun == 1 then
        Neck.C0 = necko * euler(0, 0, -1.57) * euler(offset, 0, 0)
        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
        RootJoint.C0 = RootJoint.C0:lerp(CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * euler(0, 0, 1.57) * cf(0, 0, -0.2), 0.3)
      elseif shootgun == 2 then
        Neck.C0 = necko * euler(0, 0, 1.57) * euler(offset, 0, 0)
        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
        RootJoint.C0 = RootJoint.C0:lerp(CFrame.Angles(x, y, z) * euler(0, -3.14, 0) * euler(0, 0, -1.57) * cf(0, 0, 0.2), 0.3)
      end
    end
  end
  dec.Parent = nil
  if shoot == true then
    quickoblit = false
    for i = 0, 1, 0.15 do
      swait()
      if shootgun == 1 then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(1, 0, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.8) * euler(1.7, 0, 1) * euler(0, -1, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      elseif shootgun == 2 then
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.7, 0, -1) * euler(0, 1, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(1, 0, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      end
    end
    if shootgun == 1 then
      shootgun = 2
      gunpart = prt2
      for i = 0, 1, 0.2 do
        swait()
        if shootgun == 2 then
          RootJoint.C0 = RootJoint.C0 * euler(0, 0, -1)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(1, 0, -1.5), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.8) * euler(1.2, 0, 1) * euler(0, -1, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        else
          RootJoint.C0 = RootJoint.C0 * euler(0, 0, 1)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.2, 0, -1) * euler(0, 1, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(1, 0, 1.5), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        end
      end
      for i = 0, 1, 0.2 do
        swait()
        if i < 0.6 then
          so("203691885", gunpart, 1, 1)
          Shootcombo2()
        end
        if shootgun == 2 then
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(-0.5, 0, 0) * euler(0, 1.57, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1) * euler(0, 0, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        else
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 1) * euler(0, 0, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(-0.5, 0, 0) * euler(0, -1.57, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        end
      end
      gunpart = oldgunpart
      gunpart2 = oldgunpart2
    end
  end
  quickoblit = false
  gairo.Parent = nil
  Humanoid.AutoRotate = true
  shoot = false
  attack = false
end
function do1()
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
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    handlewld.Part1 = Torso
    handlewld.C0 = euler(-0.7, 0, -0.6) * cf(-1, -3, -4)
    wld1.C0 = euler(0, 0, 0) * cf(0, 3, 0)
    wld1.C1 = euler(0, 0, 0)
    so("315743350", prt2, 1, 0.8)
    mov = 0
    for i = 0, 1, 0.15 do
      swait()
      mov = mov + 1
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
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    n = 5
    for i = 0, 1, 0.1 do
      swait()
      mov = mov + n
      n = n / -1
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
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    mana.Value = mana.Value - 20
    so("315743350", prt2, 1, 1)
    CF = cf(prt2.Position)
    MagicCircle(BrickColor.new(NewCol), CF, 150, 150, 150, 1, 1, 1, 0.02)
    MagniDamage(prt2, 20, 5, 10, math.random(20, 30), "Knockdown2", prt2, 0, 1, math.random(5, 10), nil, nil, true, "Movement", 0.2, 300)
    num = 0
    eul = math.random(-50, 50)
    eul2 = math.random(-50, 50)
    for i = 0, 1, 0.05 do
      swait()
      wld1.C0 = cf(0, 3, 0) * euler(-6.6 * i, 0, 0)
      if 3 <= num then
        num = 0
        eul = eul - 0.5
        eul2 = eul2 - 0.05
        MagicCircle2(BrickColor.new(NewCol), CF * euler(-1.57, 0, eul) * cf(0, 0, 0), 3, 7, 3, -0.1, 9, -0.1, 0.1, 1.2)
        MagicCircle2(BrickColor.new(NewCol), CF * euler(-1.57, 0, eul2) * cf(0, 0, 0), 3, 5, 3, -0.1, 6, -0.1, 0.1, 1.2)
      end
    end
    swait(10)
    handlewld.Part1 = RightArm
    dec.Parent = nil
    doingcomb = false
    attack = false
  end
end
function do2()
  if attack == true then
    return
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 10 then
    attack = true
    cooldowns[2] = 0
    local doinvisatk = false
    if doinvisatk == false then
      for i = 0, 1, 0.1 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(1.57, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 1.5, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.3) * euler(0, 1.57, 0) * euler(0, 1.57, -0.3), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.3) * euler(0, -1.57, 0) * euler(0, 1.57, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
          break
        end
      end
      mana.Value = mana.Value - 10
      CF = LeftArm.CFrame * cf(0, -150, 0)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = CF
      CFh = LeftArm.CFrame * cf(0, -2, 0)
      refhand = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      refhand.Anchored = true
      refhand.CFrame = CFh
      game:GetService("Debris"):AddItem(ref, 25)
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(2, 2, 2)
      so("2101137", refhand, 1, 1)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 10, 10, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 20, 20, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 30, 30, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 40, 40, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 50, 50, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 60, 60, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 70, 70, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 80, 80, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 90, 90, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      so("169445602", refhand, 3, 0.7)
      GMagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 10, 10, 0, 0.075)
      MagicCircle(BrickColor.new(NewCol), CF * euler(-1.57, 0, 0), 0, 0, 1500, 50, 50, 0, 0.1)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      MagniDamage(ref, 30, 10, 18, math.random(20, 40), "Knockdown2", ref, 1, 2, math.random(5, 8), nil, false, true)
      wait(0.025)
      GMagicCircle(BrickColor.new(NewCol), CF * euler(-1.57, 0, 0), 0, 0, 1500, 50, 50, 0, 0.1)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      MagniDamage(ref, 30, 10, 18, math.random(20, 40), "Knockdown2", ref, 1, 2, math.random(5, 8), nil, false, true)
      wait(0.025)
      GMagicCircle(BrickColor.new(NewCol), CF * euler(-1.57, 0, 0), 0, 0, 1500, 50, 50, 0, 0.1)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      MagniDamage(ref, 30, 10, 18, math.random(20, 40), "Knockdown2", ref, 1, 2, math.random(5, 8), nil, false, true)
      wait(0.025)
      GMagicCircle(BrickColor.new(NewCol), CF * euler(-1.57, 0, 0), 0, 0, 1500, 50, 50, 0, 0.1)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      MagniDamage(ref, 30, 10, 18, math.random(20, 40), "Knockdown2", ref, 1, 2, math.random(5, 8), nil, false, true)
      wait(0.025)
      GMagicCircle(BrickColor.new(NewCol), CF * euler(-1.57, 0, 0), 0, 0, 1500, 50, 50, 0, 0.1)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      MagniDamage(ref, 30, 10, 18, math.random(20, 40), "Knockdown2", ref, 1, 2, math.random(5, 8), nil, false, true)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 100, 100, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 90, 90, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 80, 80, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 70, 70, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 60, 60, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 50, 50, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 40, 40, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 30, 30, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 20, 20, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 10, 10, 1, 0, 0, 0, 0.1)
      wait(0.025)
      MagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 0, 0, 0, 0, 0, 0, 0.1)
      wait(0.025)
      GMagicCircle(BrickColor.new(NewCol), CFh * euler(-1.57, 0, 0), 0, 0, 0, 1, 1, 1, 0.05)
      hitboxCF = CF
      hitbox.CFrame = hitboxCF
      DecreaseStat(Character, "Damage", -1, 200)
      for i = 0, 1, 0.05 do
        swait()
        CF = CF * cf(0, -0.4, 0)
        hitboxCF = CF
        hitbox.CFrame = hitboxCF
        hitbox.Size = hitbox.Size + vt(0.6, 0.6, 0.6)
        if i == 0.6 then
        end
      end
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      attack = false
    elseif doinvisatk == true then
      for i = 0, 1, 0.2 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0) * euler(0.8, 1, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, 0.2), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.8, 0, -0.5), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.4, 0, -0.5), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, RHC0 * cf(0.5, 1, 0) * euler(0.5, 0, 0.5), 0.4)
        LH.C0 = clerp(LH.C0, LHC0 * cf(0, 0, 0) * euler(0, 0.5, 0.5), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
          break
        end
      end
      mana.Value = mana.Value - 20
      CF = LeftArm.CFrame * cf(0, -1, 0) * euler(2.5, 0, 0)
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = CF
      game:GetService("Debris"):AddItem(ref, 2)
      so("160772554", ref, 1, 0.6)
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(2, 2, 2)
      MagicSkull(BrickColor.new("Black"), CF * euler(-1.57, 0, 0), 1, 1, 1, 1.5, 1.5, 1.5, 0.05, 0.1)
      MagicCylinder2(BrickColor.new("Really black"), CF, 5, 5, 5, 3, -0.05, 3, 0.02, 0)
      MagicCircle(BrickColor.new("Really black"), CF * euler(-1.57, 0, 0), 1, 1, 0.2, 5, 5, 0, 0.025)
      MagicCircle(BrickColor.new("Really black"), CF * euler(-1.57, 0, 0), 1, 1, 0, 2, 2, 5, 0.025)
      MagicCircle(BrickColor.new("Really black"), CF * euler(-1.57, 0, 0), 1, 1, 0, 3, 3, 7, 0.025)
      hitboxCF = CF
      hitbox.CFrame = hitboxCF
      for i = 0, 1, 0.05 do
        swait()
        MagicBlock(BrickColor.new("Really black"), CF, 0.5, 0.5, 0.5, 0.2, 0.2, 0.2, 0.05, 3)
        CF = CF * cf(0, -0.2, 0)
        hitboxCF = CF
        hitbox.CFrame = hitboxCF
        hitbox.Size = hitbox.Size + vt(0.8, 0.8, 0.8)
        MagniDamage(hitbox, hitbox.Size.Y, 5, 10, math.random(20, 40), "Knockdown2", ref, 1, 2, math.random(5, 8), nil, false, true, "Movement", 0.4, 200)
      end
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
      attack = false
    end
  end
end
function do3()
  if attack == true then
    return
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 35 then
    attack = true
    cooldowns[3] = 0
    local doinvisatk = false
    for i = 0, 1, 0.1 do
      swait()
      MagicBlock(BrickColor.new(NewCol), cf(handle.Position), 7.5, 7.5, 7.5, 0.1, 0.1, 0.1, 0.1, 1)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.4, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 0.6), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.6) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.7, 0.8, -0.6) * euler(1, 0, 0.4) * euler(0, -0.5, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.5, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.4) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 0.6), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    MagicBlock(BrickColor.new(NewCol), cf(handle.Position), 2, 2, 2, 10, 10, 10, 0.1, 1)
    wait(0.5)
    so("92597369", prt6, 0, 0)
    blcf = nil
    scfr = nil
    for i = 0, 1, 0.1 do
      swait()
      MagicBlock(BrickColor.new(NewCol), cf(handle.Position), 7.5, 7.5, 7.5, 0.1, 0.1, 0.1, 0.1, 1)
      handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.6, -0.3), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(1, 0, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.6, 0, 0), 0.7)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0, 0, 0.2), 0.7)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.6) * euler(0, 0, 0), 0.7)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.2, -0.6) * euler(0.4, 0, 0.2) * euler(0, -0.5, 0), 0.7)
      RH.C0 = clerp(RH.C0, cf(1, 0.2, -0.4) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, -0.1), 0.7)
      LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.6) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 1), 0.7)
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
        break
      end
    end
    attack = false
    mana.Value = mana.Value - 35
    MagicBlock(BrickColor.new(NewCol), cf(handle.Position), 10, 10, 10, 5, 5, 5, 0.035, 1)
    MagicBlock(BrickColor.new(NewCol), cf(handle.Position), 10, 10, 10, 5.5, 5.5, 5.5, 0.035, 1)
    MagicCircle(BrickColor.new(NewCol), cf(handle.Position), 7.5, 7.5, 7.5, 5, 5, 5, 0.035)
    so("87767777", handle, 0.5, 1)
    so("183763506", handle, 1.25, 1)
    so("183763487", handle, 1.5, 1)
    MagniDamage(handle, 13.75, 8, 11, math.random(5, 10), "Normal", RootPart, 0.5, 2, math.random(5, 7), nil, true)
    wait(0.1)
  end
end
function do4()
end
function DecreaseStat(Model, Stat, Amount, Duration, cangui)
  if Model:findFirstChild("Stats") ~= nil and Model.Stats[Stat] ~= nil then
    Model.Stats[Stat].Value = Model.Stats[Stat].Value - Amount
    d = Instance.new("NumberValue", Model.Stats.Decrease)
    dur = Instance.new("NumberValue", d)
    dur.Name = "Duration"
    dur.Value = Duration
    game:GetService("Debris"):AddItem(d, 20)
    if Stat == "Damage" then
      d.Name = "DecreaseAtk"
    elseif Stat == "Defense" then
      d.Name = "DecreaseDef"
    elseif Stat == "Movement" then
      d.Name = "DecreaseMvmt"
    end
    if Model:findFirstChild("Torso") ~= nil then
      display = ""
      if Stat == "Damage" then
        if Amount > 0 then
          display = "-Damage"
        else
          display = "+Damage"
        end
      elseif Stat == "Defense" then
        if Amount > 0 then
          display = "-Defense"
        else
          display = "+Defense"
        end
      elseif Stat == "Movement" then
        if Amount > 0 then
          display = "-Movement"
        else
          display = "+Movement"
        end
      end
      if cangui ~= true then
        showDamage(Model, display, "Debuff")
      end
    end
    d.Value = Amount
  end
end
function GetDist(Part1, Part2, magni)
  local targ = Part1.Position - Part2.Position
  local mag = targ.magnitude
  if magni >= mag then
    return true
  else
    return false
  end
end
function MagniDamage(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head
      for _, d in pairs(c:children()) do
        if d.className == "Model" and ranged ~= true then
          head = d:findFirstChild("Hitbox")
          if d.Parent == Character then
            break
          end
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if magni >= mag and c.Name ~= Player.Name then
              ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
              ref.Anchored = true
              ref.CFrame = cf(head.Position)
              game:GetService("Debris"):AddItem(ref, 1)
              hitnum = math.random(1, 5)
              if hitnum == 1 then
                so("199148971", ref, 1, 1)
              elseif hitnum == 2 then
                so("199149025", ref, 1, 1)
              elseif hitnum == 3 then
                so("199149072", ref, 1, 1)
              elseif hitnum == 4 then
                so("199149109", ref, 1, 1)
              elseif hitnum == 5 then
                so("199149119", ref, 1, 1)
              end
              StaggerHit.Value = true
            end
          end
        end
        if d.className == "Part" and d.Name == "Torso" then
          head = d
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if magni >= mag and c.Name ~= Player.Name then
              if stun == nil then
                stun = math.random(5, 10)
              end
              local Rang
              if Ranged == false then
                Rang = true
              end
              local stag
              if shbash == true then
                stag = true
              end
              Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
            end
          end
        end
      end
    end
  end
end
function rayCast(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
LastPoint = Point
function effect(Color, Ref, LP, P1, returnn)
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
    table.insert(Effects, {
      effectsg,
      "Cylinder",
      0.2,
      0.01,
      0,
      0.01,
      effectsmsh
    })
  end
end
function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {
      prt,
      "Block1",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 2 then
    table.insert(Effects, {
      prt,
      "Block2",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 3 then
    table.insert(Effects, {
      prt,
      "Block3",
      delay,
      x3,
      y3,
      z3,
      msh,
      prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)),
      0
    })
  end
end
function MagicBlockTrail(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = partg(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Rotation = bladeg.Rotation
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicSkull(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "4770583", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Skull",
    delay,
    x3,
    y3,
    z3,
    msh,
    goe
  })
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function GMagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = partg(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicCircle2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Blood",
    delay,
    x3,
    y3,
    z3,
    msh,
    push
  })
end
function MagicCylinder(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicCylinder2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder2",
    delay,
    x3,
    y3,
    z3,
    msh,
    goe
  })
end
function MagicHead(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function ClangEffect(brickcolor, cframe, duration, decrease, size, power)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "CylinderClang",
    duration,
    decrease,
    size,
    power,
    prt.CFrame,
    nil
  })
end
function MagicWave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicFire(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Fire",
    delay,
    1,
    1,
    1,
    msh
  })
end
function MagicFireWave(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Top"
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Bottom"
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "FireWave",
    1,
    30,
    math.random(400, 600) / 100,
    msh
  })
end
function ElecEffect(cff, x, y, z)
  local prt = part(3, workspace, 0, 0, BrickColor.new("Bright red"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 10)
  xval = math.random() / 3
  yval = math.random() / 3
  zval = math.random() / 3
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {
    prt,
    "Elec",
    0.2,
    x,
    y,
    z,
    xval,
    yval,
    zval,
    msh
  }
end
function CloneBody()
  for _, v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local c = part(3, workspace, 0, 0.5, BrickColor.new("Really black"), "Effect", v.Size)
      c.Anchored = true
      c.CFrame = v.CFrame
      game:GetService("Debris"):AddItem(c, 5)
      if v.Name == "Head" then
        cmsh = mesh("SpecialMesh", c, "Head", "nil", vt(0, 0, 0), v.Mesh.Scale)
      end
      table.insert(Effects, {
        c,
        "Disappear",
        0.05
      })
    end
  end
end
function Clone(duration)
  for _, v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local c = part(3, workspace, 0, 0, BrickColor.new("Really black"), "Effect", v.Size)
      c.Anchored = true
      c.CFrame = v.CFrame
      game:GetService("Debris"):AddItem(c, 5)
      if v.Name == "Head" then
        cmsh = mesh("SpecialMesh", c, "Head", "nil", vt(0, 0, 0), v.Mesh.Scale)
      end
      table.insert(Effects, {
        c,
        "Disappear",
        duration
      })
    elseif v.className == "Hat" then
      n = v.Handle:clone()
      n:BreakJoints()
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.Handle.CFrame
      n.Transparency = 1
      n:BreakJoints()
      table.insert(Effects, {
        n,
        "Disappear",
        duration
      })
    end
  end
  for _, v in pairs(modelzorz:children()) do
    if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" then
      n = v:clone()
      for _, b in pairs(n:children()) do
        if b.className == "Motor" then
          b.Parent = nil
        end
      end
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "Effect"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      n.Transparency = 0
      n:BreakJoints()
      table.insert(Effects, {
        n,
        "Disappear",
        duration
      })
    end
  end
end
function Cloak()
  so("2767090", Torso, 1, 1)
  Face.Parent = nil
  Clone(0.02)
  for _, v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.1 do
          wait()
          v.Transparency = v.Transparency + 0.1
        end
        v.Transparency = 1
      end))
    end
    if v.className == "Hat" then
      hatp = v.Handle
      coroutine.resume(coroutine.create(function(derp)
        for i = 0, 1, 0.1 do
          wait()
          derp.Transparency = derp.Transparency + 0.1
        end
        derp.Transparency = 1
      end), hatp)
    end
  end
  for _, v in pairs(modelzorz:children()) do
    if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" then
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.1 do
          wait()
          v.Transparency = v.Transparency + 0.1
        end
        v.Transparency = 1
      end))
    end
  end
end
function UnCloak()
  so("2767090", Torso, 1, 1.1)
  Face.Parent = Head
  for _, v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.1 do
          wait()
          v.Transparency = v.Transparency - 0.1
        end
        v.Transparency = 0
      end))
    end
    if v.className == "Hat" then
      hatp = v.Handle
      coroutine.resume(coroutine.create(function(derp)
        for i = 0, 1, 0.1 do
          wait()
          derp.Transparency = derp.Transparency - 0.1
        end
        derp.Transparency = 1
      end), hatp)
    end
  end
  for _, v in pairs(modelzorz:children()) do
    if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" then
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.1 do
          wait()
          v.Transparency = v.Transparency - 0.1
        end
        for i = 0, 1, 0.3 do
          wait()
          v.Transparency = 0
        end
      end))
    end
  end
end
function Damagefunc(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
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
    elseif hitnum == 2 then
      so("199149025", ref, 1, 1)
    elseif hitnum == 3 then
      so("199149072", ref, 1, 1)
    elseif hitnum == 4 then
      so("199149109", ref, 1, 1)
    elseif hitnum == 5 then
      so("199149119", ref, 1, 1)
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
    if doing4 == false then
      minim = minim * Atk.Value
      maxim = maxim * Atk.Value
    end
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
    blocked = false
    enblock = nil
    Stats = hit.Parent:findFirstChild("Stats")
    if Stats == nil then
      Character.Stats:Clone().Parent = hit.Parent
    end
    if Stats ~= nil then
      Stats.Defense.Value = 1
      invis = Stats:findFirstChild("Invisibility")
      if (ranged == false or ranged == nil) and invis ~= nil then
        invis.Value = 0
      end
      enblock = Stats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if Stats:findFirstChild("Defense") ~= nil then
        if doing2 ~= true and doing4 ~= true then
          local divide = Stats.Defense.Value
          Damage = Damage / divide
        end
        Damage = Damage
        if 3 >= Damage and (ranged == false or ranged == nil) and blocked ~= true then
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
        if 3 >= Damage and staghit == true and ranged ~= true then
          StaggerHit.Value = true
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
            elseif hitnum == 2 then
              so("199148947", hit, 1, 1)
            end
          end
        else
          Damage = math.floor(Damage)
          if hit.Parent:findFirstChild("Mark") == nil then
            d = it("BoolValue", hit.Parent)
            d.Name = "Mark"
            b = it("NumberValue", d)
            b.Name = "MarkTime"
            b.Value = 200
            v = it("NumberValue", d)
            v.Name = "MarkValue"
            v.Value = 0
            if doing4 == true then
              v.Value = 10
            end
            sz = it("NumberValue", d)
            sz.Name = "MarkSize"
            sz.Value = 5
            st = it("StringValue", d)
            st.Name = "MarkType"
            st.Value = "Adjudicator"
            local tehpart = hit.Parent:findFirstChild("HumanoidRootPart")
            if tehpart == nil then
              tehpart = hit.Parent:findFirstChild("Torso")
            end
            if hit.Parent.Name == "Neflhelm" then
              tehpart = hit
            end
            if tehpart ~= nil then
              markgui = it("BillboardGui", tehpart)
              markgui.Name = "Mark Gui"
              markgui.Size = UDim2.new(7, 0, 7, 0)
              markgui.StudsOffset = vt(0, 10, 0)
              markgui.AlwaysOnTop = true
              markscy = it("ImageLabel", markgui)
              markscy.Name = "Scythe"
              markscy.BackgroundTransparency = 1
              markscy.Image = "rbxassetid://0"
              markscy.ImageColor3 = Color3.new(1, 0, 0)
              markscy.Size = UDim2.new(1, 0, 1, 0)
              table.insert(MarkedGUI, {markgui, markscy})
            end
            table.insert(Marked, {
              d,
              b,
              v,
              sz
            })
          else
            mark = hit.Parent:findFirstChild("Mark")
            if mark:findFirstChild("MarkTime") ~= nil then
              mark.MarkTime.Value = 700
            end
            if mark:findFirstChild("MarkValue") ~= nil then
              if 10 <= mark.MarkValue.Value then
                if mark:findFirstChild("MarkTime") ~= nil then
                  mark.MarkTime.Value = 400
                end
                if mark.MarkType.Value == "Classic" then
                  mark.Parent = nil
                  Damage = Damage * 1
                  print("double damage")
                  if hit.Parent:findFirstChild("HumanoidRootPart") ~= nil then
                    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                    ref.Anchored = true
                    ref.CFrame = hit.Parent.HumanoidRootPart.CFrame
                    game:GetService("Debris"):AddItem(ref, 5)
                    local nr = NumberRange.new
                    local ns = NumberSequence.new
                    local cs = ColorSequence.new
                    local parti = it("ParticleEmitter")
                    parti.Color = cs(NewCol, Color3.new(0, 0, 0))
                    parti.LightEmission = 0
                    parti.Size = ns(10)
                    parti.Texture = "http://www.roblox.com/asset/?id=0"
                    transseq = ns({
                      NumberSequenceKeypoint.new(0, 0),
                      NumberSequenceKeypoint.new(1, 1)
                    })
                    parti.Transparency = transseq
                    parti.ZOffset = 1
                    parti.Acceleration = vt(0, 0, 0)
                    parti.Lifetime = nr(1)
                    parti.Rate = 20
                    parti.Rotation = nr(0, 360)
                    parti.Speed = nr(0)
                    parti.VelocitySpread = 0
                    parti.Parent = ref
                    parti.Enabled = true
                    table.insert(Effects, {
                      parti,
                      "PartiEmi",
                      20
                    })
                    markscy = it("ImageLabel", markgui)
                    markscy.Name = "Scythe"
                    markscy.BackgroundTransparency = 1
                    markscy.Image = "rbxassetid://0"
                    markscy.ImageColor3 = Color3.new(1, 0, 0)
                    markscy.Size = UDim2.new(1, 0, 1, 0)
                    table.insert(Effects, {
                      markgui,
                      "AdjuEff",
                      10,
                      markscy
                    })
                  end
                elseif mark.MarkType.Value == "Adjudicator" and hit.Parent:findFirstChild("HumanoidRootPart") ~= nil then
                  da = math.random(1, 4)
                  inc = 1
                  if doing2 == true then
                    inc = 2
                  end
                  if da == 1 then
                    DecreaseStat(Character, "Damage", -math.random(6, 10) / 100 * inc, 150, true)
                    DecreaseStat(Character, "Movement", -math.random(2, 6) / 100 * inc, 200, true)
                  elseif da == 2 then
                    DecreaseStat(Character, "Defense", -math.random(2, 6) / 100 * inc, 150, true)
                    DecreaseStat(Character, "Movement", -math.random(2, 6) / 100 * inc, 200, true)
                  elseif da == 3 then
                    DecreaseStat(hit.Parent, "Damage", math.random(6, 10) / 100 * inc, 150, true)
                    DecreaseStat(hit.Parent, "Movement", math.random(1, 3) / 100 * inc, 200, true)
                  elseif da == 4 then
                    DecreaseStat(hit.Parent, "Defense", math.random(2, 6) / 100 * inc, 150, true)
                    DecreaseStat(hit.Parent, "Movement", math.random(1, 3) / 100 * inc, 200, true)
                  end
                  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                  ref.Anchored = true
                  ref.CFrame = hit.Parent.HumanoidRootPart.CFrame
                  game:GetService("Debris"):AddItem(ref, 5)
                  markgui = it("BillboardGui", ref)
                  markgui.Name = "Mark Gui"
                  markgui.Size = UDim2.new(7, 0, 7, 0)
                  markgui.StudsOffset = vt(0, 10, 0)
                  markgui.AlwaysOnTop = true
                  markscy = it("ImageLabel", markgui)
                  markscy.Name = "Scythe"
                  markscy.BackgroundTransparency = 1
                  markscy.Image = "rbxassetid://0"
                  markscy.ImageColor3 = Color3.new(1, 0, 0)
                  markscy.Size = UDim2.new(1, 0, 1, 0)
                  table.insert(Effects, {
                    markgui,
                    "AdjuEff",
                    10,
                    markscy
                  })
                end
              elseif doing4 == true then
                mark.MarkValue.Value = 10
              else
                mark.MarkValue.Value = mark.MarkValue.Value + 1
              end
            end
            if mark:findFirstChild("MarkSize") ~= nil then
              mark.MarkSize.Value = 5
            end
            coroutine.resume(coroutine.create(function(Hum, Dam)
              hit.Parent.Humanoid:TakeDamage(Damage)
            end), h, Damage)
            pursuitnum = 0
            if isinvis.Value == false then
              invisnum.Value = math.floor(invisnum.Value + math.random(4, 8) + Damage / 5)
            end
            showDamage(hit.Parent, Damage, "Damage")
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
            elseif Type == "Knockdown2" then
              hum = hit.Parent.Humanoid
              local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
              local bodvol = Instance.new("BodyVelocity")
              bodvol.velocity = angle * knockback
              bodvol.P = 500
              bodvol.maxForce = Vector3.new(2000, 2000, 2000)
              bodvol.Parent = hit
              game:GetService("Debris"):AddItem(bodvol, 0.5)
            else
              if Type == "Normal" or Type == "NormalDecreaseMvmt1" then
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                elseif KnockbackType == 2 then
                  vp.velocity = Property.CFrame.lookVector * knockback
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
function showDamage(Char, Dealt, Type)
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
    elseif Dealt < 3 then
      damgui.TextColor3 = BrickColor.new("White").Color
    elseif Dealt >= 3 and Dealt < 20 then
      damgui.TextColor3 = BrickColor.new("Bright yellow").Color
    else
      damgui.TextColor3 = BrickColor.new("Really red").Color
      damgui.Font = "SourceSans"
    end
  elseif Type == "Debuff" then
    damgui.TextColor3 = BrickColor.new("White").Color
  elseif Type == "Interrupt" then
    damgui.TextColor3 = BrickColor.new("New Yeller").Color
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
  elseif Char.Parent:findFirstChild("Head") ~= nil then
    c.CFrame = cf(Char.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(545000, 545000, 545000)
  if Type == "Damage" then
    f.position = c.Position + Vector3.new(0, 3, 0)
  elseif Type == "Debuff" or Type == "Interrupt" then
    f.position = c.Position + Vector3.new(0, 5, 0)
  end
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 5)
  table.insert(Effects, {
    m,
    "showDamage",
    damgui,
    f,
    10,
    1,
    15,
    50,
    100
  })
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
end
combo = 0
function ob1d(mouse)
  if attack == true or equipped == false then
    return
  end
  hold = true
  if combo == 0 then
    combo = 1
    attackone()
  elseif combo == 1 then
    combo = 2
    attacktwo()
  elseif combo == 2 then
    combo = 3
    attackthree()
  elseif combo == 3 then
    combo = 0
    attackfour()
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
function ob1u(mouse)
  hold = false
end
buttonhold = false
fenbarmove1.MouseButton1Click:connect(do1)
fenbarmove2.MouseButton1Click:connect(do2)
fenbarmove3.MouseButton1Click:connect(do3)
fenbarmove4.MouseButton1Click:connect(do4)
eul = 0
equipped = false
function key(key)
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
  if key == "e" and invisnum.Value > 5 then
    Invisibility()
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
function key2(key)
end
function s(mouse)
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
function ds(mouse)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Renegade loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint
local passivenum = 100
local pnum2 = 0
local walk = 0
local walkforw = true
local addpassive = 0
local gashnum = 0
while true do
  swait()
  if 0 >= Humanoid.Health then
    attack = true
    for i = 1, #Marked do
      if MarkedGUI[i] ~= nil and MarkedGUI[i][1] ~= nil then
        MarkedGUI[i][1].Parent = nil
      end
      table.remove(MarkedGUI, i)
      table.remove(Marked, i)
    end
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
  if doing2 == true then
    gashnum = gashnum + 1
    if gashnum % 10 == 0 then
      if 0 < mana.Value then
        mana.Value = mana.Value - -2
      else
        do2()
      end
    end
    so("183763487", prtg, 1, 1)
    GMagicCircle(BrickColor.new(NewCol), prtg.CFrame * euler(-0.3, 0, 0), 0, 0, 0, 10, 10, 10, 0.125)
    MagniDamage(prtg, 10, 1, 1, math.random(20, 40), "Knockdown2", prtg, 1, 2, math.random(5, 8), nil, false, true)
  end
  hitbox2.Parent = hitbox.Parent
  hitbox2.Size = hitbox.Size
  hitbox2.CFrame = hitboxCF
  hboxpos.position = hitbox2.Position + vt(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100)
  hitbox.Transparency = 1
  hitbox2.Transparency = 1
  for i = 1, #Marked do
    if Marked[i] ~= nil then
      if Marked[i][1].Parent == nil then
        MarkedGUI[i][1].Parent = nil
        table.remove(MarkedGUI, i)
        table.remove(Marked, i)
      else
        if MarkedGUI[i][1].Parent ~= nil then
          MarkedGUI[i][1].Size = UDim2.new(7 + Marked[i][4].Value, 0, 7 + Marked[i][4].Value, 0)
          if 0 < Marked[i][4].Value then
            Marked[i][4].Value = Marked[i][4].Value - 1
          end
          if MarkedGUI[i][2].Parent ~= nil then
            if Marked[i][3].Value == 0 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 1 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 2 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 3 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 4 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 5 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 6 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 7 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 8 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 9 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            elseif Marked[i][3].Value == 10 then
              MarkedGUI[i][2].Image = "rbxassetid://0"
            end
          end
        end
        if Marked[i][2] ~= nil then
          Marked[i][2].Value = Marked[i][2].Value - 1
          if 0 >= Marked[i][2].Value then
            Marked[i][1].Parent = nil
            MarkedGUI[i][1].Parent = nil
            table.remove(MarkedGUI, i)
            table.remove(Marked, i)
          end
        end
      end
    end
  end
  scarfp2.CFrame = cf(RootPart.Position, testpart.Position) * cf(0, 0, 0)
  scarfp2.CFrame = scarfp2.CFrame + scarfp2.CFrame.lookVector * 0.5
  scarfp2.CFrame = scarfp2.CFrame * cf(0, 0, 0) * euler(1.57, 0, 0)
  testpart.CFrame = cf(RootPart.Position - RootPart.Velocity) * cf(0, 1, 0)
  if invisible == true then
    addpassive = addpassive + 1
    for i = 1, 1 do
      MagicCircle2(BrickColor.new("Black"), scarfp2.CFrame * euler(0, 0, math.rad(180)) * cf(math.random(-300, 300) / 100, math.random(-200, 200) / 100, math.random(-300, 300) / 100), 1.5, 10, 1.5, -0.2, 1, -0.2, 0.2)
    end
    if addpassive >= 50 then
      addpassive = 0
      for _, c in pairs(workspace:children()) do
        local hum = c:findFirstChild("Humanoid")
        if hum ~= nil then
          local head
          for _, d in pairs(c:children()) do
            if d.Name == "HumanoidRootPart" then
              local targ = d.Position - RootPart.Position
              local mag = targ.magnitude
              if mag <= 60 and c.Name ~= Player.Name then
                mark = d.Parent:findFirstChild("Mark")
                if mark ~= nil then
                  if mark:findFirstChild("MarkTime") ~= nil then
                    mark.MarkTime.Value = 500
                  end
                  if mark:findFirstChild("MarkValue") ~= nil then
                    if mark:findFirstChild("MarkSize") ~= nil then
                      mark.MarkSize.Value = 5
                    end
                    if 10 > mark.MarkValue.Value then
                      mark.MarkValue.Value = mark.MarkValue.Value + 1
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
  pursuitnum = pursuitnum + 1
  if passivenum >= 13 and pursuitnum > 150 and 0 < invisnum.Value then
    invisnum.Value = invisnum.Value - 1
    passivenum = 0
  end
  if passivenum >= 8 and invisible == true then
    invisnum.Value = invisnum.Value - 1
    pursuitnum = 0
    passivenum = 0
  end
  if 100 <= invisnum.Value then
    invisnum.Value = 100
  end
  if invisible == true and 0 >= invisnum.Value then
    Invisibility()
  end
  passivenum = passivenum + 1
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
  if 0 > Mvmt.Value or Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true or Rooted.Value == true then
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
  if stunnum >= stunnum2 then
    if 0 < Stun.Value then
      Stun.Value = Stun.Value - 1
    end
    stunnum = 0
  end
  stunnum = stunnum + 1
  if donum >= 0.5 then
    handidle = true
  elseif donum <= 0 then
    handidle = false
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
    if idle >= 500 and attack ~= false or Anim == "Walk" then
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
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
        wld1.C0 = clerp(wld1.C0, cf(0, -2, 0) * euler(0.3, 0, -0.1), 0.2)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, 0, 0.5), 0.2)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.2), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
      end
    elseif -1 > RootPart.Velocity.y and hitfloor == nil then
      Anim = "Fall"
      if attack == false then
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
        wld1.C0 = clerp(wld1.C0, cf(0, -2, 0) * euler(0.3, 0, -0.1), 0.2)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1), 0.2)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
      end
    elseif torvel < 1 and hitfloor ~= nil then
      Anim = "Idle"
      if attack == false then
        handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 0.9, 0), 0.2)
        wld1.C0 = clerp(wld1.C0, euler(0.1, 0, 0) * cf(0, 0.5, 0), 0.2)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.05, 0, 0), 0.15)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.6), 0.15)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2 + donum / 3, 0, 0.2 + donum / 3) * euler(0, -0.3, 0), 0.15)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2 - donum / 3, 0, -0.2 - donum / 3), 0.15)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
        RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0.6, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0.1), 0.2)
      end
    elseif torvel > 2 and torvel < 30 and hitfloor ~= nil then
      Anim = "Walk"
      walk = walk + 1
      if walk >= 15 - 5 * Mvmt.Value then
        walk = 0
        if walkforw == true then
          walkforw = false
        elseif walkforw == false then
          walkforw = true
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
    elseif torvel >= 30 and hitfloor ~= nil then
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
  if #Effects > 0 then
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
            if 1 >= Thing[3] then
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
            elseif Thing[6] < Thing[7] then
              Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
              Thing[6] = Thing[6] + 1
            elseif Thing[6] < Thing[8] then
              Thing[6] = Thing[6] + 1
            elseif Thing[6] < Thing[9] then
              Thing[6] = Thing[6] + 1
              Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
              Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
              Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
            else
              Thing[1].Parent = nil
              table.remove(Effects, e)
            end
          end
          if Thing[2] == "PartiEmi" then
            Thing[3] = Thing[3] - 1
            if 0 >= Thing[3] then
              Thing[1].Enabled = false
              table.remove(Effects, e)
            end
          end
          if Thing[2] == "AdjuEff" then
            if 0 < Thing[3] then
              Thing[3] = Thing[3] - 1
              Thing[1].Size = Thing[1].Size + UDim2.new(0.2, 0, 0.2, 0)
              Thing[1].StudsOffset = Thing[1].StudsOffset + vt(0, -0.2, 0)
              Thing[4].ImageTransparency = Thing[4].ImageTransparency + 0.1
            else
              Thing[1].Parent = nil
              table.remove(Effects, e)
            end
          end
          if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" then
            if 1 >= Thing[1].Transparency then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Cylinder" then
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Blood" then
                Mesh = Thing[7]
                Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Elec" then
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Disappear" then
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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
  fenbarmana2:TweenSize(UDim2.new(0.4, 0, -4 * mana.Value / 200, 0), nil, 1, 0.4, true)
  fenbarmana4.Text = "Rads(" .. mana.Value .. ")"
  fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
  fenbarhp2:TweenSize(UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0), nil, 1, 0.4, true)
  fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
  fenbarmove1b:TweenSize(UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
  fenbarmove2b:TweenSize(UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
  fenbarmove3b:TweenSize(UDim2.new(1 * cooldowns[3] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
  fenbarmove4b:TweenSize(UDim2.new(1 * cooldowns[4] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
  if 100 > mana.Value then
    fenbarmana2.BackgroundColor3 = Color3.new(0, 0.6, 0)
    fenbarmove1b.BackgroundColor3 = Color3.new(0, 0.6, 0)
    fenbarmove2b.BackgroundColor3 = Color3.new(0, 0.6, 0)
    fenbarmove3b.BackgroundColor3 = Color3.new(0, 0.6, 0)
    fenbarmove4b.BackgroundColor3 = Color3.new(0, 0.6, 0)
    prt10.BrickColor = BrickColor.new("Forest green")
    prt9.BrickColor = BrickColor.new("Forest green")
    prt2.BrickColor = BrickColor.new("Forest green")
    prt2.BrickColor = BrickColor.new("Forest green")
    NewCol = Color3.new(0, 0.6, 0)
  elseif mana.Value < 150 and 100 <= mana.Value then
    fenbarmana2.BackgroundColor3 = Color3.new(1, 1, 0)
    fenbarmove1b.BackgroundColor3 = Color3.new(1, 1, 0)
    fenbarmove2b.BackgroundColor3 = Color3.new(1, 1, 0)
    fenbarmove3b.BackgroundColor3 = Color3.new(1, 1, 0)
    fenbarmove4b.BackgroundColor3 = Color3.new(1, 1, 0)
    prt10.BrickColor = BrickColor.new("New Yeller")
    prt9.BrickColor = BrickColor.new("New Yeller")
    prt2.BrickColor = BrickColor.new("New Yeller")
    prt2.BrickColor = BrickColor.new("New Yeller")
    NewCol = Color3.new(1, 1, 0)
  elseif mana.Value < 175 and mana.Value >= 150 then
    fenbarmana2.BackgroundColor3 = Color3.new(0.75, 0.75, 0)
    fenbarmove1b.BackgroundColor3 = Color3.new(0.75, 0.75, 0)
    fenbarmove2b.BackgroundColor3 = Color3.new(0.75, 0.75, 0)
    fenbarmove3b.BackgroundColor3 = Color3.new(0.75, 0.75, 0)
    fenbarmove4b.BackgroundColor3 = Color3.new(0.75, 0.75, 0)
    prt10.BrickColor = BrickColor.new("Burnt Sienna")
    prt9.BrickColor = BrickColor.new("Burnt Sienna")
    prt2.BrickColor = BrickColor.new("Burnt Sienna")
    prt2.BrickColor = BrickColor.new("Burnt Sienna")
    NewCol = Color3.new(0.75, 0.75, 0)
  elseif mana.Value >= 175 then
    fenbarmana2.BackgroundColor3 = Color3.new(0.5, 0, 0)
    fenbarmove1b.BackgroundColor3 = Color3.new(0.5, 0, 0)
    fenbarmove2b.BackgroundColor3 = Color3.new(0.5, 0, 0)
    fenbarmove3b.BackgroundColor3 = Color3.new(0.5, 0, 0)
    fenbarmove4b.BackgroundColor3 = Color3.new(0.5, 0, 0)
    prt10.BrickColor = BrickColor.new("Really red")
    prt9.BrickColor = BrickColor.new("Really red")
    prt2.BrickColor = BrickColor.new("Really red")
    prt2.BrickColor = BrickColor.new("Really red")
    NewCol = Color3.new(0.5, 0, 0)
  end
  for _, c in pairs(Decrease:children()) do
    if c:findFirstChild("Duration") ~= nil then
      c.Duration.Value = c.Duration.Value - 1
      if 0 >= c.Duration.Value then
        c.Parent = nil
      end
    end
    if c.Name == "DecreaseAtk" then
      decreaseatk = decreaseatk + c.Value
    elseif c.Name == "DecreaseDef" then
      decreasedef = decreasedef + c.Value
    elseif c.Name == "DecreaseMvmt" then
      decreasemvmt = decreasemvmt + c.Value
    end
  end
  Atk.Value = 1 - decreaseatk
  if 0 >= Atk.Value then
    Atk.Value = 0
  end
  Def.Value = 1 - decreasedef
  if 0 >= Def.Value then
    Def.Value = 0.01
  end
  Mvmt.Value = 1 - decreasemvmt
  if 0 >= Mvmt.Value then
    Mvmt.Value = 0
  end
  decreaseatk = 0
  decreasedef = 0
  decreasemvmt = 0
  AtkVal = Atk.Value * 100
  AtkVal = math.floor(AtkVal)
  AtkVal = AtkVal / 100
  fenbardamage.Text = [[
Damage
(]] .. AtkVal .. ")"
  DefVal = Def.Value * 100
  DefVal = math.floor(DefVal)
  DefVal = DefVal / 100
  fenbardef.Text = [[
Defense
(]] .. DefVal .. ")"
  MvmtVal = Mvmt.Value * 100
  MvmtVal = math.floor(MvmtVal)
  MvmtVal = MvmtVal / 100
  if Rooted.Value == true then
    MvmtVal = 0
  end
  fenbarmove.Text = [[
Walkspeed
(]] .. MvmtVal .. ")"
  if StunT.Value <= Stun.Value then
    fenbarstun2:TweenSize(UDim2.new(0.4, 0, -4, 0), nil, 1, 0.4, true)
  else
    fenbarstun2:TweenSize(UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0), nil, 1, 0.4, true)
  end
  fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
  if mana.Value >= 200 then
    mana.Value = 200
  elseif mananum <= 12 then
    mananum = mananum + 1
  else
    mananum = 0
    mana.Value = mana.Value + 2
  end
  for i = 1, #cooldowns do
    if cooldownmax <= cooldowns[i] then
      cooldowns[i] = cooldownmax
    else
      cooldowns[i] = cooldowns[i] + cooldownsadd[i]
    end
  end
end
