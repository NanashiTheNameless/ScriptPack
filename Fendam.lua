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
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local Armor = {}
local AWelds = {}
local PDriver = {}
local PDWelds = {}
local AilaBot = {}
local ABWelds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local Mode = "Normal"
local AilaMode = "Passive"
local AilaTarget = "None"
local AilaTarget2 = nil
local intro = false
local brigatk = false
local explode = false
local move2do = false
local tavis = false
local laarmvis = false
local raarmvis = false
local lalegvis = false
local ralegvis = false
local lpdvis = false
local rpdvis = false
local ailaattack = false
local move1 = "(Z)\nAila Stingers"
local move2 = "(X)\nBooster Blaze"
local move3 = "(C)\nGround Bunker"
local move4 = "(V)\nAilaBot"
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
local cooldownadd1 = 0.35
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.23
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.28
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.5
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
local manualguardend = false
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
NewCol = BrickColor.new("Earth green").Color
NewCol2 = BrickColor.new("Bright blue").Color
if Player:findFirstChild("Color1") ~= nil then
  NewCol2 = Player.Color1.Value
end
if Player:findFirstChild("Color2") ~= nil then
  NewCol = Player.Color2.Value
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
--[[createpassgui = function(parent)
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
local gud = false
if workspace.codeFunc:InvokeServer(secgui, script, false) == false then
  secgui = createpassgui(Player.PlayerGui)
  secgui.MouseButton1Click:connect(function()
  if workspace.codeFunc:InvokeServer(secgui, script, true) == true then
    gud = true
    secgui.Parent.Parent:Destroy()
  end
end)
else
  gud = true
end
repeat
  wait()
until gud--]]
if Torso:findFirstChild("ParticleEmitter", true) ~= nil then
  Torso:findFirstChild("ParticleEmitter", true).Parent = nil
end
if Character:findFirstChild("Arm Guard", true) ~= nil then
  Character:findFirstChild("Arm Guard", true).Parent = nil
end
if Character:findFirstChild("Armor", true) ~= nil then
  Character:findFirstChild("Armor", true).Parent = nil
end
if Character:findFirstChild("Pile Driver", true) ~= nil then
  Character:findFirstChild("Pile Driver", true).Parent = nil
end
if Character:findFirstChild("AilaBot", true) ~= nil then
  Character:findFirstChild("AilaBot", true).Parent = nil
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
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 0
local passive1 = Instance.new("NumberValue", Decrease)
passive1.Name = "DecreaseDef"
passive1.Value = 0
local passive2 = Instance.new("NumberValue", Decrease)
passive2.Name = "DecreaseMvmt"
passive2.Value = 0
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
modelzorz.Name = "Arm Guard"
local lprt1 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part01", vt())
local lprt2 = part(3, modelzorz, 0, 0, BrickColor.new("Bright yellow"), "Part02", vt())
local lprt3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol2), "Part03", vt())
lprt3.Material = "Neon"
local rprt1 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Part01", vt())
local rprt2 = part(3, modelzorz, 0, 0, BrickColor.new("Bright yellow"), "Part02", vt())
local rprt3 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol2), "Part03", vt())
rprt3.Material = "Neon"
local lmsh1 = mesh("BlockMesh", lprt1, "nil", "nil", vt(0, 0, 0), vt(5.01, 4, 5.01))
local lmsh2 = mesh("CylinderMesh", lprt2, "nil", "nil", vt(0, 0, 0), vt(3, 0.1, 3))
local lmsh3 = mesh("SpecialMesh", lprt3, "Sphere", "nil", vt(0, 0, 0), vt(2, 1, 2))
local rmsh1 = mesh("BlockMesh", rprt1, "nil", "nil", vt(0, 0, 0), vt(5.01, 4, 5.01))
local rmsh2 = mesh("CylinderMesh", rprt2, "nil", "nil", vt(0, 0, 0), vt(3, 0.1, 3))
local rmsh3 = mesh("SpecialMesh", rprt3, "Sphere", "nil", vt(0, 0, 0), vt(2, 1, 2))
local lwld1 = weld(lprt1, lprt1, LeftArm, euler(0, 0, 0) * cf(0, 0.5, 0))
local lwld2 = weld(lprt1, lprt2, lprt1, euler(0, 0, 1.57) * cf(0.5, 0, 0))
local lwld3 = weld(lprt1, lprt3, lprt2, euler(0, 0, 0) * cf(0, 0, 0))
local rwld1 = weld(lprt1, rprt1, RightArm, euler(0, 3.14, 0) * cf(0, 0.5, 0))
local rwld2 = weld(lprt1, rprt2, rprt1, euler(0, 0, 1.57) * cf(0.5, 0, 0))
local rwld3 = weld(lprt1, rprt3, rprt2, euler(0, 0, 0) * cf(0, 0, 0))
for i = 0.3, -0.45, -0.15 do
  local lprt4 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Part04", vt())
  local lmsh4 = mesh("BlockMesh", lprt4, "nil", "nil", vt(0, 0, 0), vt(2, 0.5, 5.1))
  local lwld4 = weld(lprt1, lprt4, lprt1, euler(0, 0, 0.3) * cf(0.18, i, 0))
  local lprt5 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Part04", vt())
  local lmsh5 = mesh("BlockMesh", lprt5, "nil", "nil", vt(0, 0, 0), vt(2, 0.5, 5.1))
  local lwld5 = weld(lprt1, lprt5, lprt1, euler(0, 0, -0.3) * cf(-0.18, i, 0))
end
for i = 0.3, -0.45, -0.15 do
  local rprt4 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Part04", vt())
  local rmsh4 = mesh("BlockMesh", rprt4, "nil", "nil", vt(0, 0, 0), vt(2, 0.5, 5.1))
  local rwld4 = weld(lprt1, rprt4, rprt1, euler(0, 0, 0.3) * cf(0.18, i, 0))
  local rprt5 = part(3, modelzorz, 0.5, 0, BrickColor.new("Bright yellow"), "Part04", vt())
  local rmsh5 = mesh("BlockMesh", rprt5, "nil", "nil", vt(0, 0, 0), vt(2, 0.5, 5.1))
  local rwld5 = weld(lprt1, rprt5, rprt1, euler(0, 0, -0.3) * cf(-0.18, i, 0))
end
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(lprt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
armor = Instance.new("Model")
armor.Parent = Character
armor.Name = "Armor"
atprt1 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part01", vt())
atprt2 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part02", vt())
atprt3 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part03", vt())
atprt4 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part04", vt())
atprt5 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part05", vt())
atprt6 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Torso Part06", vt())
atprt7 = part(3, armor, 0.5, 0, BrickColor.new("New Yeller"), "Armor Torso Part07", vt())
atprt7.Material = "Neon"
atprt8 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Torso Part08", vt())
atprt9 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Torso Part09", vt())
atprt10 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Torso Part10", vt())
atprt11 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Torso Part11", vt())
atprt12 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Torso Part12", vt())
atprt13 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Torso Part13", vt())
atprt14 = part(3, armor, 0, 0, BrickColor.new("New Yeller"), "Armor Torso Part14", vt())
atprt14.Material = "Neon"
atprt15 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part15", vt())
atprt16 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor Torso Part16", vt())
atprt17 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part17", vt())
atprt18 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part18", vt())
atprt19 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor Torso Part19", vt())
atprt20 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Torso Part20", vt())
atprt21 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor Torso Part21", vt())
alaprt1 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftArm Part01", vt())
alaprt2 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftArm Part02", vt())
alaprt3 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftArm Part03", vt())
alaprt4 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftArm Part04", vt())
alaprt5 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftArm Part05", vt())
alaprt6 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftArm Part06", vt())
alaprt9 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftArm Part09", vt())
araprt1 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightArm Part01", vt())
araprt2 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightArm Part02", vt())
araprt3 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightArm Part03", vt())
araprt4 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightArm Part04", vt())
araprt5 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightArm Part05", vt())
araprt6 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightArm Part06", vt())
araprt9 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightArm Part09", vt())
allprt1 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftLeg Part01", vt())
allprt2 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part02", vt())
allprt3 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor LeftLeg Part03", vt())
allprt4 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part04", vt())
allprt5 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part05", vt())
allprt6 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part06", vt())
allprt7 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part07", vt())
allprt8 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part08", vt())
allprt9 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part09", vt())
allprt10 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part10", vt())
arlprt1 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightLeg Part01", vt())
arlprt2 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part02", vt())
arlprt3 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor RightLeg Part03", vt())
arlprt4 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part04", vt())
arlprt5 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part05", vt())
arlprt6 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part06", vt())
arlprt7 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part07", vt())
arlprt8 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part08", vt())
arlprt9 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part09", vt())
arlprt10 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part10", vt())
ahprt1 = part(3, armor, 0, 1, BrickColor.new("Black"), "Armor Head Part01", vt())
ahprt2 = part(3, armor, 0, 1, BrickColor.new("Black"), "Armor Head Part02", vt())
ahprt2v = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part02visor", vt())
ahprt3 = part(3, armor, 0, 1, BrickColor.new("Black"), "Armor Head Part03", vt())
ahprt3v = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part03visor", vt())
ahprt4 = part(3, armor, 0, 1, BrickColor.new("Black"), "Armor Head Part04", vt())
ahprt5 = part(3, armor, 0, 1, BrickColor.new("Black"), "Armor Head Part05", vt())
ahprt6 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part06", vt())
ahprt7 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part07", vt())
ahprt8 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part08", vt())
ahprt9 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part09", vt())
ahprt10 = part(3, armor, 0, 1, BrickColor.new("Black"), "Armor Head Part10", vt())
ahprt11 = part(3, armor, 0, 1, BrickColor.new("Black"), "Armor Head Part11", vt())
ahprt12 = part(3, armor, 0.8, 1, BrickColor.new("Black"), "Armor Head Part12", vt())
ahprt13 = part(3, armor, 0.8, 1, BrickColor.new("Black"), "Armor Head Part13", vt())
ahprt10v = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Head Part10v", vt())
ahprt11v = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Head Part11v", vt())
ahprt12v = part(3, armor, 0.8, 0, BrickColor.new("New Yeller"), "Armor Head Part12v", vt())
ahprt12v.Material = "Neon"
ahprt13v = part(3, armor, 0.8, 0, BrickColor.new("New Yeller"), "Armor Head Part13v", vt())
ahprt12v.Material = "Neon"
ahprt14 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part14", vt())
ahprt15 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor Head Part15", vt())
ahprt16 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part16", vt())
ahprt17 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor Head Part17", vt())
ahprt18 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part18", vt())
ahprt19 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part19", vt())
ahprt20 = part(3, armor, 0, 0, BrickColor.new("Black"), "Armor Head Part20", vt())
ahprt21 = part(3, armor, 0.5, 0, BrickColor.new("New Yeller"), "Armor Head Part21", vt())
ahprt21.Material = "Neon"
ahprt22 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part22", vt())
ahprt23 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part23", vt())
ahprt24 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part24", vt())
ahprt25 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part25", vt())
ahprt26 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part26", vt())
ahprt27 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor Head Part27", vt())
atmsh1 = mesh("BlockMesh", atprt1, "nil", "nil", vt(0, 0, 0), vt(10.5, 4, 5.5))
atmsh2 = mesh("BlockMesh", atprt2, "nil", "nil", vt(0, 0, 0), vt(4.5, 2.01, 5.5))
atmsh3 = mesh("BlockMesh", atprt3, "nil", "nil", vt(0, 0, 0), vt(4.5, 2.01, 5.5))
atmsh4 = mesh("SpecialMesh", atprt4, "Wedge", "nil", vt(0, 0, 0), vt(5.5, 5, 3))
atmsh5 = mesh("SpecialMesh", atprt5, "Wedge", "nil", vt(0, 0, 0), vt(5.5, 5, 3))
atmsh6 = mesh("CylinderMesh", atprt6, "nil", "nil", vt(0, 0, 0), vt(5, 1, 5))
atmsh7 = mesh("SpecialMesh", atprt7, "Sphere", "nil", vt(0, 0, 0), vt(4, 2, 4))
atmsh8 = mesh("BlockMesh", atprt8, "nil", "nil", vt(0, 0, 0), vt(2.9, 1, 1))
atmsh9 = mesh("BlockMesh", atprt9, "nil", "nil", vt(0, 0, 0), vt(2.9, 1, 1))
atmsh10 = mesh("BlockMesh", atprt10, "nil", "nil", vt(0, 0, 0), vt(4.9, 1, 0.5))
atmsh11 = mesh("BlockMesh", atprt11, "nil", "nil", vt(0, 0, 0), vt(4.9, 1, 0.5))
atmsh12 = mesh("BlockMesh", atprt12, "nil", "nil", vt(0, 0, 0), vt(1.2, 1, 0.5))
atmsh13 = mesh("BlockMesh", atprt13, "nil", "nil", vt(0, 0, 0), vt(1.2, 1, 0.5))
atmsh14 = mesh("SpecialMesh", atprt14, "Sphere", "nil", vt(0, 0, 0), vt(2, 1, 2))
atmsh15 = mesh("SpecialMesh", atprt15, "FileMesh", "3270017", vt(0, 0, 0), vt(0.4, 0.4, 1))
atmsh16 = mesh("SpecialMesh", atprt16, "FileMesh", "3270017", vt(0, 0, 0), vt(0.5, 0.5, 2))
atmsh17 = mesh("SpecialMesh", atprt17, "FileMesh", "3270017", vt(0, 0, 0), vt(0.7, 0.7, 2.5))
atmsh18 = mesh("SpecialMesh", atprt18, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.2, 1.5))
atmsh19 = mesh("SpecialMesh", atprt19, "FileMesh", "9756362", vt(0, 0, 0), vt(0.55, 0.4, 0.5))
atmsh20 = mesh("SpecialMesh", atprt20, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.2, 1.5))
atmsh21 = mesh("SpecialMesh", atprt21, "FileMesh", "9756362", vt(0, 0, 0), vt(0.55, 0.4, 0.5))
alamsh1 = mesh("BlockMesh", alaprt1, "nil", "nil", vt(0, 0, 0), vt(5.2, 5.5, 5.2))
alamsh2 = mesh("CylinderMesh", alaprt2, "nil", "nil", vt(0, 0, 0), vt(7.1, 2, 7.1))
alamsh3 = mesh("SpecialMesh", alaprt3, "FileMesh", "9756362", vt(0, 0, 0), vt(0.2, 1.2, 0.8))
alamsh4 = mesh("SpecialMesh", alaprt4, "FileMesh", "9756362", vt(0, 0, 0), vt(0.1, 0.7, 0.3))
alamsh5 = mesh("SpecialMesh", alaprt5, "FileMesh", "9756362", vt(0, 0, 0), vt(0.1, 0.7, 0.3))
alamsh6 = mesh("BlockMesh", alaprt6, "nil", "nil", vt(0, 0, 0), vt(5.01, 2.5, 5.01))
alamsh9 = mesh("SpecialMesh", alaprt9, "Wedge", "nil", vt(0, 0, 0), vt(6, 4, 8))
aramsh1 = mesh("BlockMesh", araprt1, "nil", "nil", vt(0, 0, 0), vt(5.2, 5.5, 5.2))
aramsh2 = mesh("CylinderMesh", araprt2, "nil", "nil", vt(0, 0, 0), vt(7.1, 2, 7.1))
aramsh3 = mesh("SpecialMesh", araprt3, "FileMesh", "9756362", vt(0, 0, 0), vt(0.2, 1.2, 0.8))
aramsh4 = mesh("SpecialMesh", araprt4, "FileMesh", "9756362", vt(0, 0, 0), vt(0.1, 0.7, 0.3))
aramsh5 = mesh("SpecialMesh", araprt5, "FileMesh", "9756362", vt(0, 0, 0), vt(0.1, 0.7, 0.3))
aramsh6 = mesh("BlockMesh", araprt6, "nil", "nil", vt(0, 0, 0), vt(5.01, 2.5, 5.01))
aramsh9 = mesh("SpecialMesh", araprt9, "Wedge", "nil", vt(0, 0, 0), vt(6, 4, 8))
allmsh1 = mesh("BlockMesh", allprt1, "nil", "nil", vt(0, 0, 0), vt(5.1, 8.5, 5.1))
allmsh2 = mesh("BlockMesh", allprt2, "nil", "nil", vt(0, 0, 0), vt(5.2, 1.51, 5.2))
allmsh3 = mesh("BlockMesh", allprt3, "nil", "nil", vt(0, 0, 0), vt(3, 1.4, 5.2))
allmsh4 = mesh("BlockMesh", allprt4, "nil", "nil", vt(0, 0, 0), vt(2, 2.2, 0.5))
allmsh5 = mesh("BlockMesh", allprt5, "nil", "nil", vt(0, 0, 0), vt(2, 2.2, 0.5))
allmsh6 = mesh("BlockMesh", allprt6, "nil", "nil", vt(0, 0, 0), vt(3, 0.5, 0.5))
allmsh7 = mesh("BlockMesh", allprt7, "nil", "nil", vt(0, 0, 0), vt(3, 0.5, 0.5))
allmsh8 = mesh("SpecialMesh", allprt8, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 3))
allmsh9 = mesh("SpecialMesh", allprt9, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 3))
allmsh10 = mesh("SpecialMesh", allprt10, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.7, 0.1))
arlmsh1 = mesh("BlockMesh", arlprt1, "nil", "nil", vt(0, 0, 0), vt(5.1, 8.5, 5.1))
arlmsh2 = mesh("BlockMesh", arlprt2, "nil", "nil", vt(0, 0, 0), vt(5.2, 1.51, 5.2))
arlmsh3 = mesh("BlockMesh", arlprt3, "nil", "nil", vt(0, 0, 0), vt(3, 1.4, 5.2))
arlmsh4 = mesh("BlockMesh", arlprt4, "nil", "nil", vt(0, 0, 0), vt(2, 2.2, 0.5))
arlmsh5 = mesh("BlockMesh", arlprt5, "nil", "nil", vt(0, 0, 0), vt(2, 2.2, 0.5))
arlmsh6 = mesh("BlockMesh", arlprt6, "nil", "nil", vt(0, 0, 0), vt(3, 0.5, 0.5))
arlmsh7 = mesh("BlockMesh", arlprt7, "nil", "nil", vt(0, 0, 0), vt(3, 0.5, 0.5))
arlmsh8 = mesh("SpecialMesh", arlprt8, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 3))
arlmsh9 = mesh("SpecialMesh", arlprt9, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2, 3))
arlmsh10 = mesh("SpecialMesh", arlprt10, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.7, 0.1))
ahmsh2 = mesh("BlockMesh", ahprt2v, "nil", "nil", vt(0, 0, 0), vt(4, 3, 1))
ahmsh3 = mesh("BlockMesh", ahprt3v, "nil", "nil", vt(0, 0, 0), vt(4, 3, 1))
ahmsh6 = mesh("BlockMesh", ahprt6, "nil", "nil", vt(0, 0, 0), vt(4, 2, 1))
ahmsh7 = mesh("BlockMesh", ahprt7, "nil", "nil", vt(0, 0, 0), vt(4, 2, 1))
ahmsh8 = mesh("BlockMesh", ahprt8, "nil", "nil", vt(0, 0, 0), vt(4, 3, 1))
ahmsh9 = mesh("BlockMesh", ahprt9, "nil", "nil", vt(0, 0, 0), vt(4, 3, 1))
ahmsh10 = mesh("BlockMesh", ahprt10v, "nil", "nil", vt(0, 0, 0), vt(4, 2, 0.5))
ahmsh11 = mesh("BlockMesh", ahprt11v, "nil", "nil", vt(0, 0, 0), vt(4, 2, 0.5))
ahmsh12 = mesh("BlockMesh", ahprt12v, "nil", "nil", vt(0, 0, 0), vt(1, 0.5, 1))
ahmsh13 = mesh("BlockMesh", ahprt13v, "nil", "nil", vt(0, 0, 0), vt(1, 0.5, 1))
ahmsh14 = mesh("SpecialMesh", ahprt14, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 1.2, 0.2))
ahmsh15 = mesh("SpecialMesh", ahprt15, "FileMesh", "9756362", vt(0, 0, 0), vt(0.6, 0.8, 0.2))
ahmsh16 = mesh("SpecialMesh", ahprt16, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 1.2, 0.2))
ahmsh17 = mesh("SpecialMesh", ahprt17, "FileMesh", "9756362", vt(0, 0, 0), vt(0.6, 0.8, 0.2))
ahmsh18 = mesh("BlockMesh", ahprt18, "nil", "nil", vt(0, 0, 0), vt(4.5, 1, 0.5))
ahmsh19 = mesh("BlockMesh", ahprt19, "nil", "nil", vt(0, 0, 0), vt(4.5, 1, 0.5))
ahmsh20 = mesh("SpecialMesh", ahprt20, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 0.8, 0.6))
ahmsh21 = mesh("SpecialMesh", ahprt21, "FileMesh", "9756362", vt(0, 0, 0), vt(0.4, 0.4, 0.4))
ahmsh22 = mesh("SpecialMesh", ahprt22, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 1, 0.6))
ahmsh23 = mesh("SpecialMesh", ahprt23, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 1.1, 0.6))
ahmsh24 = mesh("SpecialMesh", ahprt24, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 1.2, 0.4))
ahmsh25 = mesh("BlockMesh", ahprt25, "nil", "nil", vt(0, 0, 0), vt(4, 5, 1))
ahmsh26 = mesh("BlockMesh", ahprt26, "nil", "nil", vt(0, 0, 0), vt(4, 5, 1))
ahmsh27 = mesh("SpecialMesh", ahprt27, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 0.5, 1))
atwld1 = weld(atprt1, atprt1, Torso, euler(0, 0, 0) * cf(0, -0.2, 0))
atwld2 = weld(atprt1, atprt2, atprt1, euler(0, 0, 0) * cf(-0.6, -0.6, 0))
atwld3 = weld(atprt1, atprt3, atprt1, euler(0, 0, 0) * cf(0.6, -0.6, 0))
atwld4 = weld(atprt1, atprt4, atprt1, euler(1.57, 1.57, 0) * cf(-0.5, 0.7, 0))
atwld5 = weld(atprt1, atprt5, atprt1, euler(1.57, -1.57, 0) * cf(0.5, 0.7, 0))
atwld6 = weld(atprt1, atprt6, atprt1, euler(1.57, 0, 0) * cf(0, 0.2, 0.5))
atwld7 = weld(atprt1, atprt7, atprt6, euler(0, 0, 0) * cf(0, 0, 0))
atwld8 = weld(atprt1, atprt8, atprt6, cf(0.75, 0, 0) * euler(0, 0, 0))
atwld9 = weld(atprt1, atprt9, atprt6, cf(0.75, 0, 0) * euler(0, -3.14, 0))
atwld10 = weld(atprt1, atprt10, atprt6, cf(0.95, 0, 0) * euler(0, -0.73, 0))
atwld11 = weld(atprt1, atprt11, atprt6, cf(0.95, 0, 0) * euler(0, -2.41, 0))
atwld12 = weld(atprt1, atprt12, atprt6, cf(0.58, 0, 0) * euler(0, 0.8, 0))
atwld13 = weld(atprt1, atprt13, atprt6, cf(0.58, 0, 0) * euler(0, 2.34, 0))
atwld14 = weld(atprt1, atprt14, atprt1, euler(1.57, 0, 0) * cf(0, 0, -0.5))
atwld15 = weld(atprt1, atprt15, atprt14, euler(1.57, 0, 0) * cf(0, 0, 0))
atwld16 = weld(atprt1, atprt16, atprt14, euler(1.57, 0, 0) * cf(0, 0, 0))
atwld17 = weld(atprt1, atprt17, atprt14, euler(1.57, 0, 0) * cf(0, 0, 0))
atwld18 = weld(atprt1, atprt18, atprt14, euler(0.2, -0.2, -0.2) * cf(0.65, 0.2, 0))
atwld19 = weld(atprt1, atprt19, atprt18, euler(0, 0, 0) * cf(0, 0, 0))
atwld20 = weld(atprt1, atprt20, atprt14, euler(0.2, 0.2, 0.2) * cf(-0.65, 0.2, 0))
atwld21 = weld(atprt1, atprt21, atprt20, euler(0, 0, 0) * cf(0, 0, 0))
alawld1 = weld(atprt1, alaprt1, LeftArm, euler(0, 0, 0) * cf(0, 0.5, 0))
alawld2 = weld(atprt1, alaprt2, alaprt1, euler(0, 0, 0) * cf(0, -0.2, 0))
alawld3 = weld(atprt1, alaprt3, alaprt1, euler(0, 0, -0.4) * cf(0.5, -0.4, 0))
alawld4 = weld(atprt1, alaprt4, alaprt1, euler(0, 1.2, 0) * cf(0.4, 0.2, 0.55))
alawld5 = weld(atprt1, alaprt5, alaprt1, euler(0, -1.2, 0) * cf(0.4, 0.2, -0.55))
alawld6 = weld(atprt1, alaprt6, LeftArm, euler(0, 0, 0) * cf(0, -0.8, 0))
alawld9 = weld(atprt1, alaprt9, alaprt6, euler(-0.3, -1.57, 0) * cf(0.3, -0.3, 0))
arawld1 = weld(atprt1, araprt1, RightArm, euler(0, 3.14, 0) * cf(0, 0.5, 0))
arawld2 = weld(atprt1, araprt2, araprt1, euler(0, 0, 0) * cf(0, -0.2, 0))
arawld3 = weld(atprt1, araprt3, araprt1, euler(0, 0, -0.4) * cf(0.5, -0.4, 0))
arawld4 = weld(atprt1, araprt4, araprt1, euler(0, 1.2, 0) * cf(0.4, 0.2, 0.55))
arawld5 = weld(atprt1, araprt5, araprt1, euler(0, -1.2, 0) * cf(0.4, 0.2, -0.55))
arawld6 = weld(atprt1, araprt6, RightArm, euler(0, 3.14, 0) * cf(0, -0.8, 0))
arawld9 = weld(atprt1, araprt9, araprt6, euler(-0.3, -1.57, 0) * cf(0.3, -0.3, 0))
allwld1 = weld(atprt1, allprt1, LeftLeg, euler(0, 0, 0) * cf(0, 0.2, 0))
allwld2 = weld(atprt1, allprt2, allprt1, euler(0, 0, 0) * cf(0, 0.7, 0))
allwld3 = weld(atprt1, allprt3, allprt2, euler(0, 0, 0) * cf(0, 0.03, 0.01))
allwld4 = weld(atprt1, allprt4, allprt1, euler(0.1, -0.1, 0.3) * cf(0.2, 0, 0.5))
allwld5 = weld(atprt1, allprt5, allprt1, euler(0.1, 0.1, -0.3) * cf(-0.2, 0, 0.5))
allwld6 = weld(atprt1, allprt6, allprt4, euler(0, 0, 0) * cf(0.1, -0.27, 0))
allwld7 = weld(atprt1, allprt7, allprt5, euler(0, 0, 0) * cf(-0.1, -0.27, 0))
allwld8 = weld(atprt1, allprt8, allprt6, euler(-0.2, 3.4, -0.4) * cf(0.44, -0.13, -0.25))
allwld9 = weld(atprt1, allprt9, allprt7, euler(-0.2, -3.4, 0.4) * cf(-0.44, -0.13, -0.25))
allwld10 = weld(atprt1, allprt10, allprt1, euler(0.2, 0, 0) * cf(0, -0.3, 0.55))
arlwld1 = weld(atprt1, arlprt1, RightLeg, euler(0, 0, 0) * cf(0, 0.2, 0))
arlwld2 = weld(atprt1, arlprt2, arlprt1, euler(0, 0, 0) * cf(0, 0.7, 0))
arlwld3 = weld(atprt1, arlprt3, arlprt2, euler(0, 0, 0) * cf(0, 0.03, 0.01))
arlwld4 = weld(atprt1, arlprt4, arlprt1, euler(0.1, -0.1, 0.3) * cf(0.2, 0, 0.5))
arlwld5 = weld(atprt1, arlprt5, arlprt1, euler(0.1, 0.1, -0.3) * cf(-0.2, 0, 0.5))
arlwld6 = weld(atprt1, arlprt6, arlprt4, euler(0, 0, 0) * cf(0.1, -0.27, 0))
arlwld7 = weld(atprt1, arlprt7, arlprt5, euler(0, 0, 0) * cf(-0.1, -0.27, 0))
arlwld8 = weld(atprt1, arlprt8, arlprt6, euler(-0.2, 3.4, -0.4) * cf(0.44, -0.13, -0.25))
arlwld9 = weld(atprt1, arlprt9, arlprt7, euler(-0.2, -3.4, 0.4) * cf(-0.44, -0.13, -0.25))
arlwld10 = weld(atprt1, arlprt10, arlprt1, euler(0.2, 0, 0) * cf(0, -0.3, 0.55))
ahwld1 = weld(atprt1, ahprt1, Head, euler(0, 0, 0) * cf(0, 0.1, 0))
ahwld2 = weld(atprt1, ahprt2, ahprt1, euler(0, -0.7, 0) * cf(0.27, 0.1, 0.5))
ahwld3 = weld(atprt1, ahprt3, ahprt1, euler(0, 0.7, 0) * cf(-0.27, 0.1, 0.5))
ahwld2v = weld(atprt1, ahprt2v, ahprt2, euler(0, 0, 0) * cf(0, 0, 0))
ahwld3v = weld(atprt1, ahprt3v, ahprt3, euler(0, 0, 0) * cf(0, 0, 0))
ahwld4 = weld(atprt1, ahprt4, ahprt2, euler(0, 0, 0) * cf(0.4, 0, 0))
ahwld5 = weld(atprt1, ahprt5, ahprt3, euler(0, 0, 0) * cf(-0.4, 0, 0))
ahwld6 = weld(atprt1, ahprt6, ahprt4, cf(0.35, 0.1, 0) * euler(0, -0.8, 0))
ahwld7 = weld(atprt1, ahprt7, ahprt5, cf(-0.35, 0.1, 0) * euler(0, 0.8, 0))
ahwld8 = weld(atprt1, ahprt8, ahprt4, cf(0.35, -0.4, 0) * euler(0, -0.8, 0))
ahwld9 = weld(atprt1, ahprt9, ahprt5, cf(-0.35, -0.4, 0) * euler(0, 0.8, 0))
ahwld10 = weld(atprt1, ahprt10, ahprt2, euler(0, 0, 0) * cf(0, -0.5, 0))
ahwld11 = weld(atprt1, ahprt11, ahprt3, euler(0, 0, 0) * cf(0, -0.5, 0))
ahwld12 = weld(atprt1, ahprt12, ahprt10, euler(0, 0, 0) * cf(-0.1, 0, 0))
ahwld13 = weld(atprt1, ahprt13, ahprt11, euler(0, 0, 0) * cf(0.1, 0, 0))
ahwld10v = weld(atprt1, ahprt10v, ahprt10, euler(0, 0, 0) * cf(0, 0, 0))
ahwld11v = weld(atprt1, ahprt11v, ahprt11, euler(0, 0, 0) * cf(0, 0, 0))
ahwld12v = weld(atprt1, ahprt12v, ahprt10v, euler(0, 0, 0) * cf(-0.1, 0, 0))
ahwld13v = weld(atprt1, ahprt13v, ahprt11v, euler(0, 0, 0) * cf(0.1, 0, 0))
ahwld14 = weld(atprt1, ahprt14, ahprt8, euler(-0.1, 0, -1) * cf(-0.2, 0, 0.15))
ahwld15 = weld(atprt1, ahprt15, ahprt14, euler(0, 0, 0) * cf(0, 0, 0.05))
ahwld16 = weld(atprt1, ahprt16, ahprt9, euler(-0.1, 0, 1) * cf(0.2, 0, 0.15))
ahwld17 = weld(atprt1, ahprt17, ahprt16, euler(0, 0, 0) * cf(0, 0, 0.05))
ahwld18 = weld(atprt1, ahprt18, ahprt2, euler(-0.4, 0.1, 0) * cf(0, -0.7, 0.1))
ahwld19 = weld(atprt1, ahprt19, ahprt3, euler(-0.4, -0.1, 0) * cf(0, -0.7, 0.1))
ahwld20 = weld(atprt1, ahprt20, ahprt1, euler(-0.2, 0, 0) * cf(0, -0.7, 0.4))
ahwld21 = weld(atprt1, ahprt21, ahprt20, euler(0.4, 0, 0) * cf(0, -0.2, 0.1))
ahwld22 = weld(atprt1, ahprt22, ahprt1, euler(-0.4, 0, 0) * cf(0, -0.7, 0.2))
ahwld23 = weld(atprt1, ahprt23, ahprt1, euler(-0.8, 0, 0) * cf(0, -0.7, 0))
ahwld24 = weld(atprt1, ahprt24, ahprt1, euler(-1.2, 0, 0) * cf(0, -0.7, -0.2))
ahwld25 = weld(atprt1, ahprt25, ahprt1, euler(0, 0.5, 0) * cf(0.3, -0.1, -0.6))
ahwld26 = weld(atprt1, ahprt26, ahprt1, euler(0, -0.5, 0) * cf(-0.3, -0.1, -0.6))
ahwld27 = weld(atprt1, ahprt27, ahprt1, euler(0, 0, 0) * cf(0, -0.6, -0.5))
for i = 1.57, 6.28 do
  alaprt7 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftArm Part07", vt())
  alaprt8 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor LeftArm Part08", vt())
  alamsh7 = mesh("SpecialMesh", alaprt7, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2.3, 2))
  alamsh8 = mesh("SpecialMesh", alaprt8, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2.3, 2))
  alawld7 = weld(atprt1, alaprt7, alaprt6, euler(1.57, 0, 0) * cf(0.46, 0.45, 0.225) * euler(0, i, 0))
  alawld8 = weld(atprt1, alaprt8, alaprt6, euler(1.57, 3.14, 0) * cf(0.46, 0.45, -0.225) * euler(0, i, 0))
end
for i = 1.57, 6.28 do
  araprt7 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightArm Part07", vt())
  araprt8 = part(3, armor, 0, 0, BrickColor.new(NewCol2), "Armor RightArm Part08", vt())
  aramsh7 = mesh("SpecialMesh", araprt7, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2.3, 2))
  aramsh8 = mesh("SpecialMesh", araprt8, "Wedge", "nil", vt(0, 0, 0), vt(0.5, 2.3, 2))
  arawld7 = weld(atprt1, araprt7, araprt6, euler(1.57, 0, 0) * cf(0.46, 0.45, 0.225) * euler(0, i, 0))
  arawld8 = weld(atprt1, araprt8, araprt6, euler(1.57, 3.14, 0) * cf(0.46, 0.45, -0.225) * euler(0, i, 0))
end
for i = 0.4, -0.6, -0.2 do
  allprt11 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor LeftLeg Part11", vt())
  allmsh11 = mesh("SpecialMesh", allprt11, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 0.5, 0.1))
  allwld11 = weld(atprt1, allprt11, allprt1, euler(0, 0, 0) * cf(0, i, -0.55))
end
for i = 0.4, -0.6, -0.2 do
  arlprt11 = part(3, armor, 0, 0, BrickColor.new("White"), "Armor RightLeg Part11", vt())
  arlmsh11 = mesh("SpecialMesh", arlprt11, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 0.5, 0.1))
  arlwld11 = weld(atprt1, arlprt11, arlprt1, euler(0, 0, 0) * cf(0, i, -0.55))
end
for _,c in pairs(armor:children()) do
  table.insert(Armor, c)
end
for _,c in pairs(atprt1:children()) do
  if c.className == "Motor" then
    table.insert(AWelds, c)
  end
end
for i = 1, #Armor do
  Armor[i].Transparency = 1
end
pdriver = Instance.new("Model")
pdriver.Parent = Character
pdriver.Name = "Pile Driver"
pdprt1 = part(3, pdriver, 0, 0, BrickColor.new(NewCol2), "Pile Driver Part01", vt())
pdprt2 = part(3, pdriver, 0, 0, BrickColor.new(NewCol2), "Pile Driver Part02", vt())
pdprt3 = part(3, pdriver, 0, 0, BrickColor.new("White"), "Pile Driver Part03", vt())
pdprt4 = part(3, pdriver, 0, 0, BrickColor.new("Black"), "Pile Driver Part04", vt())
pdprt5 = part(3, pdriver, 0, 0, BrickColor.new("White"), "Pile Driver Part05", vt())
pdprt6 = part(3, pdriver, 0, 0, BrickColor.new(NewCol2), "Pile Driver Part06", vt())
pdprt7 = part(3, pdriver, 0, 0, BrickColor.new("Really black"), "Pile Driver Part07", vt())
pdprt8 = part(3, pdriver, 0, 0, BrickColor.new("White"), "Pile Driver Part08", vt())
pdprt9 = part(3, pdriver, 0.6, 0, BrickColor.new("Medium stone grey"), "Pile Driver Part09", vt())
pdprt10 = part(3, pdriver, 0.6, 0, BrickColor.new("Medium stone grey"), "Pile Driver Part10", vt())
pdprt11 = part(3, pdriver, 0, 0, BrickColor.new(NewCol2), "Pile Driver Part11", vt())
pdprt12 = part(3, pdriver, 0, 0, BrickColor.new(NewCol2), "Pile Driver Part12", vt())
pdprt13 = part(3, pdriver, 0, 0, BrickColor.new("White"), "Pile Driver Part13", vt())
pdprt14 = part(3, pdriver, 0, 0, BrickColor.new(NewCol2), "Pile Driver Part14", vt())
pdprt15 = part(3, pdriver, 0, 0, BrickColor.new("White"), "Pile Driver Part15", vt())
pdprt16 = part(3, pdriver, 0, 0, BrickColor.new("Black"), "Pile Driver Part16", vt())
pdprt17 = part(3, pdriver, 0, 0, BrickColor.new("Really black"), "Pile Driver Part17", vt())
pdprt18 = part(3, pdriver, 0, 0, BrickColor.new("White"), "Pile Driver Part18", vt())
pdprt19 = part(3, pdriver, 0.6, 0, BrickColor.new("Medium stone grey"), "Pile Driver Part19", vt())
pdprt20 = part(3, pdriver, 0.6, 0, BrickColor.new("Medium stone grey"), "Pile Driver Part20", vt())
pdmsh1 = mesh("SpecialMesh", pdprt1, "Torso", "nil", vt(0, 0, 0), vt(6, 2, 7))
pdmsh2 = mesh("SpecialMesh", pdprt2, "Torso", "nil", vt(0, 0, 0), vt(6, 2, 7))
pdmsh3 = mesh("SpecialMesh", pdprt3, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.2, 1))
pdmsh4 = mesh("BlockMesh", pdprt4, "nil", "nil", vt(0, 0, 0), vt(2, 2, 1))
pdmsh5 = mesh("SpecialMesh", pdprt5, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.2, 1))
pdmsh6 = mesh("SpecialMesh", pdprt6, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.3, 0.5))
pdmsh7 = mesh("CylinderMesh", pdprt7, "nil", "nil", vt(0, 0, 0), vt(3, 1.1, 3))
pdmsh8 = mesh("SpecialMesh", pdprt8, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 0.2, 1))
pdmsh9 = mesh("CylinderMesh", pdprt9, "nil", "nil", vt(0, 0, 0), vt(2, 7, 2))
pdmsh10 = mesh("SpecialMesh", pdprt10, "FileMesh", "1778999", vt(0, 0, 0), vt(0.3, 0.1, 0.3))
pdmsh11 = mesh("SpecialMesh", pdprt11, "Torso", "nil", vt(0, 0, 0), vt(6, 2, 7))
pdmsh12 = mesh("SpecialMesh", pdprt12, "Torso", "nil", vt(0, 0, 0), vt(6, 2, 7))
pdmsh13 = mesh("SpecialMesh", pdprt13, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.2, 1))
pdmsh14 = mesh("SpecialMesh", pdprt14, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.3, 0.5))
pdmsh15 = mesh("SpecialMesh", pdprt15, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.2, 1))
pdmsh16 = mesh("BlockMesh", pdprt16, "nil", "nil", vt(0, 0, 0), vt(2, 2, 1))
pdmsh17 = mesh("CylinderMesh", pdprt17, "nil", "nil", vt(0, 0, 0), vt(3, 1.1, 3))
pdmsh18 = mesh("SpecialMesh", pdprt18, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 0.2, 1))
pdmsh19 = mesh("CylinderMesh", pdprt19, "nil", "nil", vt(0, 0, 0), vt(2, 7, 2))
pdmsh20 = mesh("SpecialMesh", pdprt20, "FileMesh", "1778999", vt(0, 0, 0), vt(0.3, 0.1, 0.3))
pdwld1 = weld(pdprt1, pdprt1, LeftArm, euler(1.57, 1.57, 0) * cf(0.6, 0.35, 0))
pdwld2 = weld(pdprt1, pdprt2, pdprt1, euler(3.14, 0, 0) * cf(0, 0.4, 0))
pdwld3 = weld(pdprt1, pdprt3, pdprt2, euler(0, 0, -0.785) * cf(0.4, 0, 0))
pdwld4 = weld(pdprt1, pdprt4, pdprt3, euler(0, 0, 0) * cf(0, 0, 0))
pdwld5 = weld(pdprt1, pdprt5, pdprt2, euler(0, 0, 0.785) * cf(-0.4, 0, 0))
pdwld6 = weld(pdprt1, pdprt6, pdprt5, euler(0, 0, 0) * cf(0, 0, 0))
pdwld7 = weld(pdprt1, pdprt7, pdprt2, euler(1.57, 0, 0) * cf(0, 0.2, -0.6))
pdwld8 = weld(pdprt1, pdprt8, pdprt2, euler(1.57, 0, 0) * cf(0, 0.2, 0.7))
pdwld9 = weld(pdprt1, pdprt9, pdprt7, euler(0, 0, 0) * cf(0, -0.2, 0))
pdwld10 = weld(pdprt1, pdprt10, pdprt9, euler(3.14, 0, 0) * cf(0, 0.78, 0))
pdwld11 = weld(pdprt1, pdprt11, RightArm, euler(1.57, -1.57, 0) * cf(-0.6, 0.35, 0))
pdwld12 = weld(pdprt1, pdprt12, pdprt11, euler(3.14, 0, 0) * cf(0, 0.4, 0))
pdwld13 = weld(pdprt1, pdprt13, pdprt12, euler(0, 0, -0.785) * cf(0.4, 0, 0))
pdwld14 = weld(pdprt1, pdprt14, pdprt13, euler(0, 0, 0) * cf(0, 0, 0))
pdwld15 = weld(pdprt1, pdprt15, pdprt12, euler(0, 0, 0.785) * cf(-0.4, 0, 0))
pdwld16 = weld(pdprt1, pdprt16, pdprt15, euler(0, 0, 0) * cf(0, 0, 0))
pdwld17 = weld(pdprt1, pdprt17, pdprt12, euler(1.57, 0, 0) * cf(0, 0.2, -0.6))
pdwld18 = weld(pdprt1, pdprt18, pdprt12, euler(1.57, 0, 0) * cf(0, 0.2, 0.7))
pdwld19 = weld(pdprt1, pdprt19, pdprt17, euler(0, 0, 0) * cf(0, -0.2, 0))
pdwld20 = weld(pdprt1, pdprt20, pdprt19, euler(3.14, 0, 0) * cf(0, 0.78, 0))
for _,c in pairs(pdriver:children()) do
  table.insert(PDriver, c)
end
for _,c in pairs(pdprt1:children()) do
  if c.className == "Motor" then
    table.insert(PDWelds, c)
  end
end
for i = 1, #PDriver do
  PDriver[i].Transparency = 1
end
local ailabot = Instance.new("Model")
ailabot.Parent = Character
ailabot.Name = "AilaBot"
ailaref = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Ref", vt())
abtprt1 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Torso Part01", vt())
abtprt2 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Torso Part02", vt())
abtprt3 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part03", vt())
abtprt4 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Torso Part04", vt())
abtprt5 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part05", vt())
abtprt8 = part(3, ailabot, 0, 1, BrickColor.new("White"), "AilaBot Torso Part08", vt())
abtprt9 = part(3, ailabot, 0, 1, BrickColor.new("White"), "AilaBot Torso Part09", vt())
abtprt10 = part(3, ailabot, 0, 1, BrickColor.new("White"), "AilaBot Torso Part10", vt())
abtprt15 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Torso Part15", vt())
abtprt17 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Torso Part17", vt())
abtprt18 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Torso Part18", vt())
abtprt19 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part19", vt())
abtprt20 = part(3, ailabot, 0, 0, BrickColor.new("Bright yellow"), "AilaBot Torso Part20", vt())
abraprt1 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part01", vt())
abraprt2 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Right Arm Part02", vt())
abraprt3 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Right Arm Part03", vt())
abraprt4 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Right Arm Part04", vt())
abraprt5 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Right Arm Part05", vt())
abraprt6 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Right Arm Part06", vt())
abraprt7 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Right Arm Part07", vt())
abraprt8 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Right Arm Part08", vt())
abraprt9 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Right Arm Part09", vt())
abraprt10 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part10", vt())
abraprt11 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part11", vt())
abraprt14 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Right Arm Part14", vt())
abraprt15 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part15", vt())
abraprt16 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part16", vt())
abraprt17 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part17", vt())
abraprt18 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part18", vt())
abraprt19 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part19", vt())
abraprt20 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part20", vt())
abraprt21 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part21", vt())
abraprt22 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part22", vt())
abraprt23 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part23", vt())
abraprt24 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part24", vt())
abraprt25 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part25", vt())
abraprt26 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Right Arm Part26", vt())
ablaprt1 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part01", vt())
ablaprt2 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part02", vt())
ablaprt2 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part02", vt())
ablaprt3 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part03", vt())
ablaprt4 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part04", vt())
ablaprt5 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part05", vt())
ablaprt6 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part06", vt())
ablaprt7 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Left Arm Part07", vt())
ablaprt8 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Left Arm Part08", vt())
ablaprt9 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Left Arm Part09", vt())
ablaprt10 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part10", vt())
ablaprt11 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part11", vt())
ablaprt14 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Left Arm Part14", vt())
ablaprt15 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part15", vt())
ablaprt16 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part16", vt())
ablaprt17 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part17", vt())
ablaprt18 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part18", vt())
ablaprt19 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part19", vt())
ablaprt20 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part20", vt())
ablaprt21 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part21", vt())
ablaprt22 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part22", vt())
ablaprt23 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part23", vt())
ablaprt24 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part24", vt())
ablaprt25 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part25", vt())
ablaprt26 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Left Arm Part26", vt())
head = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Head", vt())
arefmsh = mesh("BlockMesh", ailaref, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
abtmsh1 = mesh("SpecialMesh", abtprt1, "Torso", "nil", vt(0, 0, 0), vt(20, 18, 10))
abtmsh2 = mesh("SpecialMesh", abtprt2, "FileMesh", "9756362", vt(0, 0, 0), vt(3, 1.7, 2))
abtmsh3 = mesh("SpecialMesh", abtprt3, "FileMesh", "9756362", vt(0, 0, 0), vt(2, 2.5, 1))
abtmsh4 = mesh("SpecialMesh", abtprt4, "Torso", "nil", vt(0, 0, 0), vt(14, 5, 10))
abtmsh5 = mesh("SpecialMesh", abtprt5, "FileMesh", "9756362", vt(0, 0, 0), vt(1.5, 2.5, 0.5))
abtmsh8 = mesh("CylinderMesh", abtprt8, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abtmsh9 = mesh("CylinderMesh", abtprt9, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abtmsh10 = mesh("CylinderMesh", abtprt10, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abtmsh15 = mesh("BlockMesh", abtprt15, "nil", "nil", vt(0, 0, 0), vt(8, 8, 3))
abtmsh17 = mesh("SpecialMesh", abtprt17, "Sphere", "nil", vt(0, 0, 0), vt(5, 5, 5))
abtmsh18 = mesh("SpecialMesh", abtprt18, "Sphere", "nil", vt(0, 0, 0), vt(5, 5, 5))
abtmsh19 = mesh("SpecialMesh", abtprt19, "Sphere", "nil", vt(0, 0, 0), vt(8, 8, 10))
abtmsh20 = mesh("CylinderMesh", abtprt20, "nil", "nil", vt(0, 0, 0), vt(6, 1, 6))
abramsh1 = mesh("BlockMesh", abraprt1, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
abramsh2 = mesh("SpecialMesh", abraprt2, "Torso", "nil", vt(0, 0, 0), vt(13, 5, 5))
abramsh3 = mesh("BlockMesh", abraprt3, "nil", "nil", vt(0, 0, 0), vt(1, 5, 8))
abramsh4 = mesh("BlockMesh", abraprt4, "nil", "nil", vt(0, 0, 0), vt(1, 5, 8))
abramsh5 = mesh("BlockMesh", abraprt5, "nil", "nil", vt(0, 0, 0), vt(10, 1, 8))
abramsh6 = mesh("SpecialMesh", abraprt6, "Torso", "nil", vt(0, 0, 0), vt(13, 5, 5))
abramsh7 = mesh("SpecialMesh", abraprt7, "Sphere", "nil", vt(0, 0, 0), vt(8, 5, 8))
abramsh8 = mesh("SpecialMesh", abraprt8, "Torso", "nil", vt(0, 0, 0), vt(6, 8, 4))
abramsh9 = mesh("CylinderMesh", abraprt9, "nil", "nil", vt(0, 0, 0), vt(5, 4.1, 5))
abramsh10 = mesh("CylinderMesh", abraprt10, "nil", "nil", vt(0, 0, 0), vt(5.1, 3.1, 5.1))
abramsh11 = mesh("BlockMesh", abraprt11, "nil", "nil", vt(0, 0, 0), vt(4, 10, 3))
abramsh14 = mesh("BlockMesh", abraprt14, "nil", "nil", vt(0, 0, 0), vt(3, 3, 2))
abramsh15 = mesh("SpecialMesh", abraprt15, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
abramsh16 = mesh("BlockMesh", abraprt16, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
abramsh17 = mesh("BlockMesh", abraprt17, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
abramsh18 = mesh("SpecialMesh", abraprt18, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
abramsh19 = mesh("BlockMesh", abraprt19, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
abramsh20 = mesh("BlockMesh", abraprt20, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
abramsh21 = mesh("SpecialMesh", abraprt21, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
abramsh22 = mesh("BlockMesh", abraprt22, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
abramsh23 = mesh("BlockMesh", abraprt23, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
abramsh24 = mesh("SpecialMesh", abraprt24, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
abramsh25 = mesh("BlockMesh", abraprt25, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
abramsh26 = mesh("BlockMesh", abraprt26, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
ablamsh1 = mesh("BlockMesh", ablaprt1, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
ablamsh2 = mesh("SpecialMesh", ablaprt2, "Torso", "nil", vt(0, 0, 0), vt(13, 5, 5))
ablamsh3 = mesh("BlockMesh", ablaprt3, "nil", "nil", vt(0, 0, 0), vt(1, 5, 8))
ablamsh4 = mesh("BlockMesh", ablaprt4, "nil", "nil", vt(0, 0, 0), vt(1, 5, 8))
ablamsh5 = mesh("BlockMesh", ablaprt5, "nil", "nil", vt(0, 0, 0), vt(10, 1, 8))
ablamsh6 = mesh("SpecialMesh", ablaprt6, "Torso", "nil", vt(0, 0, 0), vt(13, 5, 5))
ablamsh7 = mesh("SpecialMesh", ablaprt7, "Sphere", "nil", vt(0, 0, 0), vt(8, 5, 8))
ablamsh8 = mesh("SpecialMesh", ablaprt8, "Torso", "nil", vt(0, 0, 0), vt(6, 8, 4))
ablamsh9 = mesh("CylinderMesh", ablaprt9, "nil", "nil", vt(0, 0, 0), vt(5, 4.1, 5))
ablamsh10 = mesh("CylinderMesh", ablaprt10, "nil", "nil", vt(0, 0, 0), vt(5.1, 3.1, 5.1))
ablamsh11 = mesh("BlockMesh", ablaprt11, "nil", "nil", vt(0, 0, 0), vt(4, 10, 3))
ablamsh14 = mesh("BlockMesh", ablaprt14, "nil", "nil", vt(0, 0, 0), vt(3, 3, 2))
ablamsh15 = mesh("SpecialMesh", ablaprt15, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
ablamsh16 = mesh("BlockMesh", ablaprt16, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
ablamsh17 = mesh("BlockMesh", ablaprt17, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
ablamsh18 = mesh("SpecialMesh", ablaprt18, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
ablamsh19 = mesh("BlockMesh", ablaprt19, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
ablamsh20 = mesh("BlockMesh", ablaprt20, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
ablamsh21 = mesh("SpecialMesh", ablaprt21, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
ablamsh22 = mesh("BlockMesh", ablaprt22, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
ablamsh23 = mesh("BlockMesh", ablaprt23, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
ablamsh24 = mesh("SpecialMesh", ablaprt24, "Sphere", "nil", vt(0, 0, 0), vt(0, 0, 0))
ablamsh25 = mesh("BlockMesh", ablaprt25, "nil", "nil", vt(0, 0, 0), vt(0.8, 2, 0.5))
ablamsh26 = mesh("BlockMesh", ablaprt26, "nil", "nil", vt(0, 0, 0), vt(0.8, 1.5, 0.5))
hmsh1 = mesh("SpecialMesh", head, "Head", "nil", vt(0, 0, 0), vt(10, 10, 10))
abtwld1 = weld(abtprt1, abtprt1, ailaref, euler(0, 0, 0) * cf(0, 0, 0))
abtwld2 = weld(abtprt1, abtprt2, abtprt1, euler(0, 0, 0) * cf(0, 0.7, 1))
abtwld3 = weld(abtprt1, abtprt3, abtprt2, euler(0, 0, 0) * cf(0, -0.8, 0))
abtwld4 = weld(abtprt1, abtprt4, abtprt1, euler(0, 0, 0) * cf(0, -2.3, 0))
abtwld5 = weld(abtprt1, abtprt5, abtprt4, euler(0.2, 0, 0) * cf(0, 0, 1))
abtwld8 = weld(abtprt1, abtprt8, abtprt4, euler(0, 0, 0) * cf(0, -0.5, 0))
abtwld9 = weld(abtprt1, abtprt9, abtprt4, euler(0, 0, 0) * cf(0, -1.5, 0))
abtwld10 = weld(abtprt1, abtprt10, abtprt4, euler(0, 0, 0) * cf(0, -2.5, 0))
abtwld15 = weld(abtprt1, abtprt15, abtprt1, euler(0, 0, 0) * cf(0, 0.5, -1))
abtwld17 = weld(abtprt1, abtprt17, abtprt1, euler(0, 0, 0.3) * cf(1.4, -1, -1))
abtwld18 = weld(abtprt1, abtprt18, abtprt1, euler(0, 0, -0.3) * cf(-1.4, -1, -1))
abtwld19 = weld(abtprt1, abtprt19, abtprt15, euler(0, 0, 0) * cf(0, 0, 0.2))
abtwld20 = weld(abtprt1, abtprt20, abtprt19, euler(1.57, 0, 0) * cf(0, 0, -0.6))
abrawld1 = weld(abtprt1, abraprt1, abtprt1, euler(3.14, 1.57, -0.1) * cf(2, 1.4, 0))
abrawld2 = weld(abtprt1, abraprt2, abraprt1, euler(0, 0, 0) * cf(0, 0, 0))
abrawld3 = weld(abtprt1, abraprt3, abraprt2, euler(0, 0, -0.3) * cf(-1.05, 0, 1.3))
abrawld4 = weld(abtprt1, abraprt4, abraprt2, euler(0, 0, 0.3) * cf(1.05, 0, 1.3))
abrawld5 = weld(abtprt1, abraprt5, abraprt2, euler(0, 0, 0) * cf(0, -0.4, 1.3))
abrawld6 = weld(abtprt1, abraprt6, abraprt2, euler(0, 0, 0) * cf(0, 0, 2.6))
abrawld7 = weld(abtprt1, abraprt7, abraprt2, euler(0, 0, 0) * cf(0, 0, 1.1))
abrawld8 = weld(abtprt1, abraprt8, abraprt7, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.1, 0, -0.2))
abrawld9 = weld(abtprt1, abraprt9, abraprt8, euler(1.57, 0, 0) * cf(0, -0.9, 0))
abrawld10 = weld(abtprt1, abraprt10, abraprt9, euler(0, 0.2, 0) * cf(0, 0, 0))
abrawld11 = weld(abtprt1, abraprt11, abraprt10, euler(-1.57, 0, 0) * cf(0, 0, -1) * euler(0, 0.2, 0))
abrawld14 = weld(abtprt1, abraprt14, abraprt11, euler(0, 0, 0) * cf(0, -1.3, -0.1) * euler(0, 0, 0))
abrawld15 = weld(abtprt1, abraprt15, abraprt14, euler(0, 0, 0) * cf(0.219, -0.3, -0.15) * euler(0, 0, 0))
abrawld16 = weld(abtprt1, abraprt16, abraprt15, cf(0, -0.2, 0) * euler(0.5, 0, 0))
abrawld17 = weld(abtprt1, abraprt17, abraprt16, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
abrawld17.C1 = cf(0, 0.15, 0.05) * euler(-1, 0, 0)
abrawld18 = weld(abtprt1, abraprt18, abraprt14, euler(0, 0, 0) * cf(0, -0.3, -0.15) * euler(0, 0, 0))
abrawld19 = weld(abtprt1, abraprt19, abraprt18, cf(0, -0.2, 0) * euler(0.5, 0, 0))
abrawld20 = weld(abtprt1, abraprt20, abraprt19, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
abrawld20.C1 = cf(0, 0.15, 0.05) * euler(-1, 0, 0)
abrawld21 = weld(abtprt1, abraprt21, abraprt14, euler(0, 0, 0) * cf(-0.219, -0.3, -0.15) * euler(0, 0, 0))
abrawld22 = weld(abtprt1, abraprt22, abraprt21, cf(0, -0.2, 0) * euler(0.5, 0, 0))
abrawld23 = weld(abtprt1, abraprt23, abraprt22, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
abrawld23.C1 = cf(0, 0.15, 0.05) * euler(-1, 0, 0)
abrawld24 = weld(abtprt1, abraprt24, abraprt14, euler(0, 1.4, 0) * euler(0.7, 0, 0) * cf(0.3, -0.1, -0.1) * euler(0, 0, 0))
abrawld25 = weld(abtprt1, abraprt25, abraprt24, cf(0, -0.2, 0) * euler(-0.3, 0, 0))
abrawld26 = weld(abtprt1, abraprt26, abraprt25, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
abrawld26.C1 = cf(0, 0.15, 0.03) * euler(-0.5, 0, 0)
ablawld1 = weld(abtprt1, ablaprt1, abtprt1, euler(3.14, 1.57, 0.1) * cf(-2, 1.4, 0))
ablawld2 = weld(abtprt1, ablaprt2, ablaprt1, euler(0, 0, 0) * cf(0, 0, 0))
ablawld3 = weld(abtprt1, ablaprt3, ablaprt2, euler(0, 0, -0.3) * cf(-1.05, 0, -1.3))
ablawld4 = weld(abtprt1, ablaprt4, ablaprt2, euler(0, 0, 0.3) * cf(1.05, 0, -1.3))
ablawld5 = weld(abtprt1, ablaprt5, ablaprt2, euler(0, 0, 0) * cf(0, -0.4, -1.3))
ablawld6 = weld(abtprt1, ablaprt6, ablaprt2, euler(0, 0, 0) * cf(0, 0, -2.6))
ablawld7 = weld(abtprt1, ablaprt7, ablaprt2, euler(0, 0, 0) * cf(0, 0, -1.1))
ablawld8 = weld(abtprt1, ablaprt8, ablaprt7, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.1, 0, -0.2))
ablawld9 = weld(abtprt1, ablaprt9, ablaprt8, euler(1.57, 0, 0) * cf(0, -0.9, 0))
ablawld10 = weld(abtprt1, ablaprt10, ablaprt9, euler(0, 0.2, 0) * cf(0, 0, 0))
ablawld11 = weld(abtprt1, ablaprt11, ablaprt10, euler(-1.57, 0, 0) * cf(0, 0, -1) * euler(0, 0.2, 0))
ablawld14 = weld(abtprt1, ablaprt14, ablaprt11, euler(0, 0, 0) * cf(0, -1.3, -0.1) * euler(0, 0, 0))
ablawld15 = weld(abtprt1, ablaprt15, ablaprt14, euler(0, 3.14, 0) * cf(0.219, -0.3, 0.15) * euler(0, 0, 0))
ablawld16 = weld(abtprt1, ablaprt16, ablaprt15, cf(0, -0.2, 0) * euler(0.5, 0, 0))
ablawld17 = weld(abtprt1, ablaprt17, ablaprt16, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
ablawld17.C1 = cf(0, 0.15, 0.05) * euler(-1, 0, 0)
ablawld18 = weld(abtprt1, ablaprt18, ablaprt14, euler(0, 3.14, 0) * cf(0, -0.3, 0.15) * euler(0, 0, 0))
ablawld19 = weld(abtprt1, ablaprt19, ablaprt18, cf(0, -0.2, 0) * euler(0.5, 0, 0))
ablawld20 = weld(abtprt1, ablaprt20, ablaprt19, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
ablawld20.C1 = cf(0, 0.15, 0.05) * euler(-1, 0, 0)
ablawld21 = weld(abtprt1, ablaprt21, ablaprt14, euler(0, 3.14, 0) * cf(-0.219, -0.3, 0.15) * euler(0, 0, 0))
ablawld22 = weld(abtprt1, ablaprt22, ablaprt21, cf(0, -0.2, 0) * euler(0.5, 0, 0))
ablawld23 = weld(abtprt1, ablaprt23, ablaprt22, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
ablawld23.C1 = cf(0, 0.15, 0.05) * euler(-1, 0, 0)
ablawld24 = weld(abtprt1, ablaprt24, ablaprt14, euler(0, 1.4, 0) * euler(-0.7, 0, 0) * cf(0.3, -0.1, 0.1) * euler(0, 0, 0))
ablawld25 = weld(abtprt1, ablaprt25, ablaprt24, cf(0, -0.2, 0) * euler(-0.3, 0, 0))
ablawld26 = weld(abtprt1, ablaprt26, ablaprt25, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0))
ablawld26.C1 = cf(0, 0.15, 0.03) * euler(-0.5, 0, 0)
hwld1 = weld(abtprt1, head, abtprt1, euler(0.3, 0, 3.14) * cf(0, 2.5, 0.3))
abw1prt1 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Weapon01 Part01", vt())
abw1prt2 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Weapon01 Part02", vt())
abw1prt3 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Weapon01 Part03", vt())
abw1prt4 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Weapon01 Part04", vt())
abw1prt5 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Weapon01 Part05", vt())
abw1prt6 = part(3, ailabot, 0.2, 0, BrickColor.new("White"), "AilaBot Weapon01 Part06", vt())
abw1prt7 = part(3, ailabot, 0.2, 0, BrickColor.new("White"), "AilaBot Weapon01 Part07", vt())
abw1prt8 = part(3, ailabot, 0.05, 0, BrickColor.new("Bright yellow"), "AilaBot Weapon01 Part08", vt())
abw1prt8.Material = "Neon"
abw1prt9 = part(3, ailabot, 0.05, 0, BrickColor.new("Bright yellow"), "AilaBot Weapon01 Part09", vt())
abw1prt9.Material = "Neon"
abw1prt10 = part(3, ailabot, 0.2, 0, BrickColor.new("White"), "AilaBot Weapon01 Part10", vt())
abw1prt11 = part(3, ailabot, 0, 0, BrickColor.new("Really black"), "AilaBot Weapon01 Part11", vt())
abw2prt1 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Weapon02 Part01", vt())
abw2prt2 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Weapon02 Part02", vt())
abw2prt3 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Weapon02 Part03", vt())
abw2prt4 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Weapon02 Part04", vt())
abw2prt5 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Weapon02 Part05", vt())
abw2prt6 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Weapon02 Part06", vt())
abw2prt10 = part(3, ailabot, 0, 0, BrickColor.new("Really black"), "AilaBot Weapon02 Part10", vt())
abw2prt11 = part(3, ailabot, 0, 0, BrickColor.new("Really black"), "AilaBot Weapon02 Part11", vt())
abw2prt12 = part(3, ailabot, 0, 0, BrickColor.new("Really black"), "AilaBot Weapon02 Part12", vt())
abw2prt13 = part(3, ailabot, 0, 0, BrickColor.new("Really black"), "AilaBot Weapon02 Part13", vt())
abw1msh1 = mesh("SpecialMesh", abw1prt1, "Torso", "nil", vt(0, 0, 0), vt(7, 5, 8))
abw1msh2 = mesh("BlockMesh", abw1prt2, "nil", "nil", vt(0, 0, 0), vt(15, 4, 6))
abw1msh3 = mesh("BlockMesh", abw1prt3, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
abw1msh4 = mesh("SpecialMesh", abw1prt4, "Torso", "nil", vt(0, 0, 0), vt(8, 8, 12))
abw1msh5 = mesh("CylinderMesh", abw1prt5, "nil", "nil", vt(0, 0, 0), vt(8, 12.1, 8))
abw1msh6 = mesh("CylinderMesh", abw1prt6, "nil", "nil", vt(0, 0, 0), vt(7.5, 20, 7.5))
abw1msh7 = mesh("SpecialMesh", abw1prt7, "Sphere", "nil", vt(0, 0, 0), vt(7.5, 7.5, 7.5))
abw1msh8 = mesh("CylinderMesh", abw1prt8, "nil", "nil", vt(0, 0, 0), vt(7.6, 2, 7.6))
abw1msh9 = mesh("SpecialMesh", abw1prt9, "FileMesh", "1778999", vt(0, 0, 0), vt(1.14, 0.5, 1.14))
abw1msh10 = mesh("CylinderMesh", abw1prt10, "nil", "nil", vt(0, 0, 0), vt(5, 12, 5))
abw1msh11 = mesh("CylinderMesh", abw1prt11, "nil", "nil", vt(0, 0, 0), vt(4, 1, 4))
abw2msh1 = mesh("BlockMesh", abw2prt1, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abw2msh2 = mesh("CylinderMesh", abw2prt2, "nil", "nil", vt(0, 0, 0), vt(5, 7, 5))
abw2msh3 = mesh("CylinderMesh", abw2prt3, "nil", "nil", vt(0, 0, 0), vt(5, 15, 5))
abw2msh4 = mesh("BlockMesh", abw2prt4, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
abw2msh5 = mesh("BlockMesh", abw2prt5, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
abw2msh6 = mesh("BlockMesh", abw2prt6, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
abw2msh10 = mesh("CylinderMesh", abw2prt10, "nil", "nil", vt(0, 0, 0), vt(1.5, 1, 1.5))
abw2msh11 = mesh("CylinderMesh", abw2prt11, "nil", "nil", vt(0, 0, 0), vt(1.5, 1, 1.5))
abw2msh12 = mesh("CylinderMesh", abw2prt12, "nil", "nil", vt(0, 0, 0), vt(1.5, 1, 1.5))
abw2msh13 = mesh("CylinderMesh", abw2prt13, "nil", "nil", vt(0, 0, 0), vt(1.5, 1, 1.5))
abw1wld1 = weld(abtprt1, abw1prt1, abtprt1, euler(-1.57, 0, -1.57) * euler(0, 0, 1.57) * cf(-1.4, 1, -1.5))
abw1wld2 = weld(abtprt1, abw1prt2, abw1prt1, euler(0, 0, 0) * cf(-1.3, -0.11, 0))
abw1wld3 = weld(abtprt1, abw1prt3, abw1prt2, euler(0, 3.14, 0) * cf(0, 0, -0.5) * euler(-0.5, 0, 0))
abw1wld4 = weld(abtprt1, abw1prt4, abw1prt3, euler(3.14, 0, 0) * cf(0, -0.2, 0))
abw1wld5 = weld(abtprt1, abw1prt5, abw1prt4, euler(1.57, 0, 0) * cf(0, 0.8, 0))
abw1wld6 = weld(abtprt1, abw1prt6, abw1prt5, euler(0, 0, 0) * cf(0, -0.6, 0))
abw1wld7 = weld(abtprt1, abw1prt7, abw1prt6, euler(0, 0, 0) * cf(0, 2, 0))
abw1wld8 = weld(abtprt1, abw1prt8, abw1prt6, euler(0, 0, 0) * cf(0, -2, 0))
abw1wld9 = weld(abtprt1, abw1prt9, abw1prt8, euler(0, 0, 0) * cf(0, -0.6, 0))
abw1wld10 = weld(abtprt1, abw1prt10, abw1prt9, euler(0, 0, 0) * cf(0, -0.2, 0))
abw1wld11 = weld(abtprt1, abw1prt11, abw1prt10, euler(3.14, 0, 0) * cf(0, -1.11, 0))
abw2wld1 = weld(abtprt1, abw2prt1, abraprt11, euler(0, 0, 3.14) * cf(0, -0.8, -0.4))
abw2wld2 = weld(abtprt1, abw2prt2, abw2prt1, euler(1.57, 0, 0) * cf(0, 0.8, -0.6))
abw2wld3 = weld(abtprt1, abw2prt3, abw2prt2, euler(1.57, 0, 0) * cf(0, 0, -0.8))
abw2wld4 = weld(abtprt1, abw2prt4, abw2prt3, euler(0, 0, 0) * cf(0, 1.5, 0))
abw2wld5 = weld(abtprt1, abw2prt5, abw2prt3, euler(0, 0, 0) * cf(0.1, 0.6, 0))
abw2wld6 = weld(abtprt1, abw2prt6, abw2prt3, euler(0, 0, 0) * cf(-0.1, 0.6, 0))
abw2wld10 = weld(abtprt1, abw2prt10, abw2prt4, euler(0, 0, 0) * cf(0, 0.91, 0.3) * euler(0, 0, 0))
abw2wld11 = weld(abtprt1, abw2prt11, abw2prt4, euler(0, 0, 0) * cf(0, 0.91, 0.3) * euler(0, 1.57, 0))
abw2wld12 = weld(abtprt1, abw2prt12, abw2prt4, euler(0, 0, 0) * cf(0, 0.91, 0.3) * euler(0, 3.14, 0))
abw2wld13 = weld(abtprt1, abw2prt13, abw2prt4, euler(0, 0, 0) * cf(0, 0.91, 0.3) * euler(0, 4.71, 0))
for i = -1, 1 do
  abw2prt7 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Weapon02 Part07", vt())
  abw2msh7 = mesh("BlockMesh", abw2prt7, "nil", "nil", vt(0, 0, 0), vt(1.2, 18, 3))
  abw2wld7 = weld(abtprt1, abw2prt7, abw2prt5, euler(0, 0, 0) * cf(0.4, 0, 0) * euler(0, i, 0))
  abw2prt8 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Weapon02 Part08", vt())
  abw2msh8 = mesh("BlockMesh", abw2prt8, "nil", "nil", vt(0, 0, 0), vt(1.2, 18, 3))
  abw2wld8 = weld(abtprt1, abw2prt8, abw2prt6, euler(0, 0, 0) * cf(0.4, 0, 0) * euler(0, i + 3.14, 0))
end
for i = 1.57, 6.28 do
  abw2prt9 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Weapon02 Part09", vt())
  abw2msh9 = mesh("CylinderMesh", abw2prt9, "nil", "nil", vt(0, 0, 0), vt(2.5, 5, 2.5))
  abw2wld9 = weld(abtprt1, abw2prt9, abw2prt4, euler(0, 0, 0) * cf(0, 0.5, 0.3) * euler(0, i, 0))
end
for d = 1, 2 do
  for i = -1.6, 1.6, 0.8 do
    abw1prt12 = part(3, ailabot, 0, 0, BrickColor.new("Bright yellow"), "AilaBot Weapon01 Part12", vt())
    abw1prt12.Material = "Neon"
    abw1msh12 = mesh("SpecialMesh", abw1prt12, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.2, 1))
    if d == 1 then
      abw1wld12 = weld(abtprt1, abw1prt12, abw1prt6, euler(0, -0.5, 0) * cf(-0.6, i, 0.2))
    else
      abw1wld12 = weld(abtprt1, abw1prt12, abw1prt6, euler(0, 0.5, 0) * cf(0.6, i, 0.2))
    end
  end
end
num = 1.75
abhprt1 = part(3, ailabot, 0, 1, BrickColor.new("Black"), "AilaBot Head Part01", vt())
abhprt2 = part(3, ailabot, 0, 1, BrickColor.new("Black"), "AilaBot Head Part02", vt())
abhprt2v = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part02visor", vt())
abhprt3 = part(3, ailabot, 0, 1, BrickColor.new("Black"), "AilaBot Head Part03", vt())
abhprt3v = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part03visor", vt())
abhprt4 = part(3, ailabot, 0, 1, BrickColor.new("Black"), "AilaBot Head Part04", vt())
abhprt5 = part(3, ailabot, 0, 1, BrickColor.new("Black"), "AilaBot Head Part05", vt())
abhprt6 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part06", vt())
abhprt7 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part07", vt())
abhprt8 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part08", vt())
abhprt9 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part09", vt())
abhprt10 = part(3, ailabot, 0, 1, BrickColor.new("Black"), "AilaBot Head Part10", vt())
abhprt11 = part(3, ailabot, 0, 1, BrickColor.new("Black"), "AilaBot Head Part11", vt())
abhprt12 = part(3, ailabot, 0.8, 1, BrickColor.new("Black"), "AilaBot Head Part12", vt())
abhprt13 = part(3, ailabot, 0.8, 1, BrickColor.new("Black"), "AilaBot Head Part13", vt())
abhprt10v = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Head Part10v", vt())
abhprt11v = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Head Part11v", vt())
abhprt12v = part(3, ailabot, 0.8, 0, BrickColor.new("New Yeller"), "AilaBot Head Part12v", vt())
abhprt12v.Material = "Neon"
abhprt13v = part(3, ailabot, 0.8, 0, BrickColor.new("New Yeller"), "AilaBot Head Part13v", vt())
abhprt13v.Material = "Neon"
abhprt14 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part14", vt())
abhprt15 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Head Part15", vt())
abhprt16 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part16", vt())
abhprt17 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Head Part17", vt())
abhprt18 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part18", vt())
abhprt19 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part19", vt())
abhprt20 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Head Part20", vt())
abhprt21 = part(3, ailabot, 0.5, 0, BrickColor.new("New Yeller"), "AilaBot Head Part21", vt())
abhprt21.Material = "Neon"
abhprt22 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part22", vt())
abhprt23 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part23", vt())
abhprt24 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part24", vt())
abhprt25 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part25", vt())
abhprt26 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part26", vt())
abhprt27 = part(3, ailabot, 0, 0, BrickColor.new(NewCol2), "AilaBot Head Part27", vt())
abhmshdecoy = mesh("BlockMesh", abhprt1, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt2, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt3, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt4, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt5, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt10, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt11, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt12, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmshdecoy = mesh("BlockMesh", abhprt13, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
abhmsh2 = mesh("BlockMesh", abhprt2v, "nil", "nil", vt(0, 0, 0), vt(7, 5.25, 1.75))
abhmsh3 = mesh("BlockMesh", abhprt3v, "nil", "nil", vt(0, 0, 0), vt(7, 5.25, 1.75))
abhmsh6 = mesh("BlockMesh", abhprt6, "nil", "nil", vt(0, 0, 0), vt(7, 3.5, 1.75))
abhmsh7 = mesh("BlockMesh", abhprt7, "nil", "nil", vt(0, 0, 0), vt(7, 3.5, 1.75))
abhmsh8 = mesh("BlockMesh", abhprt8, "nil", "nil", vt(0, 0, 0), vt(7, 5.25, 1.75))
abhmsh9 = mesh("BlockMesh", abhprt9, "nil", "nil", vt(0, 0, 0), vt(7, 5.25, 1.75))
abhmsh10 = mesh("BlockMesh", abhprt10v, "nil", "nil", vt(0, 0, 0), vt(7, 3.5, 0.875))
abhmsh11 = mesh("BlockMesh", abhprt11v, "nil", "nil", vt(0, 0, 0), vt(7, 3.5, 0.875))
abhmsh12 = mesh("BlockMesh", abhprt12v, "nil", "nil", vt(0, 0, 0), vt(1.75, 0.875, 1.75))
abhmsh13 = mesh("BlockMesh", abhprt13v, "nil", "nil", vt(0, 0, 0), vt(1.75, 0.875, 1.75))
abhmsh14 = mesh("SpecialMesh", abhprt14, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8 * num, 1.2 * num, 0.2 * num))
abhmsh15 = mesh("SpecialMesh", abhprt15, "FileMesh", "9756362", vt(0, 0, 0), vt(0.6 * num, 0.8 * num, 0.2 * num))
abhmsh16 = mesh("SpecialMesh", abhprt16, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8 * num, 1.2 * num, 0.2 * num))
abhmsh17 = mesh("SpecialMesh", abhprt17, "FileMesh", "9756362", vt(0, 0, 0), vt(0.6 * num, 0.8 * num, 0.2 * num))
abhmsh18 = mesh("BlockMesh", abhprt18, "nil", "nil", vt(0, 0, 0), vt(7.875, 1.75, 0.875))
abhmsh19 = mesh("BlockMesh", abhprt19, "nil", "nil", vt(0, 0, 0), vt(7.875, 1.75, 0.875))
abhmsh20 = mesh("SpecialMesh", abhprt20, "FileMesh", "9756362", vt(0, 0, 0), vt(1 * num, 0.8 * num, 0.6 * num))
abhmsh21 = mesh("SpecialMesh", abhprt21, "FileMesh", "9756362", vt(0, 0, 0), vt(0.4 * num, 0.4 * num, 0.4 * num))
abhmsh22 = mesh("SpecialMesh", abhprt22, "FileMesh", "9756362", vt(0, 0, 0), vt(1 * num, 1 * num, 0.6 * num))
abhmsh23 = mesh("SpecialMesh", abhprt23, "FileMesh", "9756362", vt(0, 0, 0), vt(1 * num, 1.1 * num, 0.6 * num))
abhmsh24 = mesh("SpecialMesh", abhprt24, "FileMesh", "9756362", vt(0, 0, 0), vt(1 * num, 1.2 * num, 0.4 * num))
abhmsh25 = mesh("BlockMesh", abhprt25, "nil", "nil", vt(0, 0, 0), vt(4 * num, 5 * num, 1 * num))
abhmsh26 = mesh("BlockMesh", abhprt26, "nil", "nil", vt(0, 0, 0), vt(4 * num, 5 * num, 1 * num))
abhmsh27 = mesh("SpecialMesh", abhprt27, "FileMesh", "9756362", vt(0, 0, 0), vt(1 * num, 0.5 * num, 1 * num))
abhwld1 = weld(abtprt1, abhprt1, head, euler(0, 0, 0) * cf(0, 0.175, 0))
abhwld2 = weld(abtprt1, abhprt2, abhprt1, euler(0, -0.7, 0) * cf(0.4725, 0.175, 0.875))
abhwld3 = weld(abtprt1, abhprt3, abhprt1, euler(0, 0.7, 0) * cf(-0.4725, 0.175, 0.875))
abhwld2v = weld(abtprt1, abhprt2v, abhprt2, euler(0, 0, 0) * cf(0, 0, 0))
abhwld3v = weld(abtprt1, abhprt3v, abhprt3, euler(0, 0, 0) * cf(0, 0, 0))
abhwld4 = weld(abtprt1, abhprt4, abhprt2, euler(0, 0, 0) * cf(0.7, 0, 0))
abhwld5 = weld(abtprt1, abhprt5, abhprt3, euler(0, 0, 0) * cf(-0.7, 0, 0))
abhwld6 = weld(abtprt1, abhprt6, abhprt4, cf(0.6125, 0.175, 0) * euler(0, -0.8, 0))
abhwld7 = weld(abtprt1, abhprt7, abhprt5, cf(-0.6125, 0.175, 0) * euler(0, 0.8, 0))
abhwld8 = weld(abtprt1, abhprt8, abhprt4, cf(0.6125, -0.7, 0) * euler(0, -0.8, 0))
abhwld9 = weld(abtprt1, abhprt9, abhprt5, cf(-0.6125, -0.7, 0) * euler(0, 0.8, 0))
abhwld10 = weld(abtprt1, abhprt10, abhprt2, euler(0, 0, 0) * cf(0, -0.875, 0))
abhwld11 = weld(abtprt1, abhprt11, abhprt3, euler(0, 0, 0) * cf(0, -0.875, 0))
abhwld12 = weld(abtprt1, abhprt12, abhprt10, euler(0, 0, 0) * cf(-0.175, 0, 0))
abhwld13 = weld(abtprt1, abhprt13, abhprt11, euler(0, 0, 0) * cf(0.175, 0, 0))
abhwld10v = weld(abtprt1, abhprt10v, abhprt10, euler(0, 0, 0) * cf(0, 0, 0))
abhwld11v = weld(abtprt1, abhprt11v, abhprt11, euler(0, 0, 0) * cf(0, 0, 0))
abhwld12v = weld(abtprt1, abhprt12v, abhprt10v, euler(0, 0, 0) * cf(-0.175, 0, 0))
abhwld13v = weld(abtprt1, abhprt13v, abhprt11v, euler(0, 0, 0) * cf(0.175, 0, 0))
abhwld14 = weld(abtprt1, abhprt14, abhprt8, euler(-0.1, 0, -1) * cf(-0.35, 0, 0.2625))
abhwld15 = weld(abtprt1, abhprt15, abhprt14, euler(0, 0, 0) * cf(0, 0, 0.05))
abhwld16 = weld(abtprt1, abhprt16, abhprt9, euler(-0.1, 0, 1) * cf(0.35, 0, 0.2625))
abhwld17 = weld(abtprt1, abhprt17, abhprt16, euler(0, 0, 0) * cf(0, 0, 0.05))
abhwld18 = weld(abtprt1, abhprt18, abhprt2, euler(-0.4, 0.1, 0) * cf(0, -1.225, 0.175))
abhwld19 = weld(abtprt1, abhprt19, abhprt3, euler(-0.4, -0.1, 0) * cf(0, -1.225, 0.175))
abhwld20 = weld(abtprt1, abhprt20, abhprt1, euler(-0.2, 0, 0) * cf(0, -0.7 * num, 0.4 * num))
abhwld21 = weld(abtprt1, abhprt21, abhprt20, euler(0.4, 0, 0) * cf(0, -0.2 * num, 0.1 * num))
abhwld22 = weld(abtprt1, abhprt22, abhprt1, euler(-0.4, 0, 0) * cf(0, -0.7 * num, 0.2 * num))
abhwld23 = weld(abtprt1, abhprt23, abhprt1, euler(-0.8, 0, 0) * cf(0, -0.7 * num, 0))
abhwld24 = weld(abtprt1, abhprt24, abhprt1, euler(-1.2, 0, 0) * cf(0, -0.7 * num, -0.2 * num))
abhwld25 = weld(abtprt1, abhprt25, abhprt1, euler(0, 0.5, 0) * cf(0.3 * num, -0.1 * num, -0.6 * num))
abhwld26 = weld(abtprt1, abhprt26, abhprt1, euler(0, -0.5, 0) * cf(-0.3 * num, -0.1 * num, -0.6 * num))
abhwld27 = weld(abtprt1, abhprt27, abhprt1, euler(0, 0, 0) * cf(0, -0.6 * num, -0.5 * num))
for i = 2.093, 6.28, 2.093 do
  num = math.random(1500, 3000) / 100
  local abtprt6 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part06", vt())
  local abtmsh6 = mesh("CylinderMesh", abtprt6, "nil", "nil", vt(0, 0, 0), vt(2, num, 2))
  local abtwld6 = weld(abtprt1, abtprt6, abtprt4, cf(0, 0, 0.5) * euler(0, i, 0))
  local abtprt7 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part07", vt())
  local abtmsh7 = mesh("SpecialMesh", abtprt7, "Head", "nil", vt(0, 0, 0), vt(2, 2, 2))
  local abtwld7 = weld(abtprt1, abtprt7, abtprt6, euler(0, 0, 0) * cf(0, -num / 10, 0))
end
for i = 0.44857, 6.28, 0.44857 do
  if math.random(1, 2) == 1 then
    local abtprt11 = part(3, ailabot, 0, 0, BrickColor.new("Bright yellow"), "AilaBot Torso Part11", vt())
    abtprt11.Material = "Neon"
    local abtmsh11 = mesh("BlockMesh", abtprt11, "nil", "nil", vt(0, 0, 0), vt(6, 1, 1))
    local abtwld11 = weld(abtprt1, abtprt11, abtprt8, cf(0, 0, 2.5) * euler(0, i, 0))
  end
end
for i = 0.48307, 6.28, 0.48307 do
  if math.random(1, 2) == 1 then
    local abtprt11 = part(3, ailabot, 0, 0, BrickColor.new("Bright yellow"), "AilaBot Torso Part11", vt())
    abtprt11.Material = "Neon"
    local abtmsh11 = mesh("BlockMesh", abtprt11, "nil", "nil", vt(0, 0, 0), vt(5.5, 1, 1))
    local abtwld11 = weld(abtprt1, abtprt11, abtprt9, cf(0, 0, 2.1) * euler(0, i, 0))
  end
end
for i = 0.523, 6.28, 0.523 do
  if math.random(1, 2) == 1 then
    local abtprt11 = part(3, ailabot, 0, 0, BrickColor.new("Bright yellow"), "AilaBot Torso Part11", vt())
    abtprt11.Material = "Neon"
    local abtmsh11 = mesh("BlockMesh", abtprt11, "nil", "nil", vt(0, 0, 0), vt(5, 1, 1))
    local abtwld11 = weld(abtprt1, abtprt11, abtprt10, cf(0, 0, 1.7) * euler(0, i, 0))
  end
end
for i = 1, 2 do
  local abtprt12 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part12", vt())
  local abtmsh12 = mesh("SpecialMesh", abtprt12, "Wedge", "nil", vt(0, 0, 0), vt(5, 8, 11))
  if i == 1 then
    local abtwld12 = weld(abtprt1, abtprt12, abtprt4, euler(3.14, 0, 2) * euler(0, 0.4, 0) * cf(1.7, 0.4, 0))
  else
    do
      do
        local abtwld12 = weld(abtprt1, abtprt12, abtprt4, euler(3.14, 0, -2) * euler(0, -0.4, 0) * cf(-1.7, 0.4, 0))
        local abtprt13 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Torso Part13", vt())
        local abtmsh13 = mesh("SpecialMesh", abtprt13, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 1, 2))
        do
          local abtwld13 = weld(abtprt1, abtprt13, abtprt12, euler(0.6, 0, 0) * cf(0, 0.35, 0.5))
          -- DECOMPILER ERROR at PC14073: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC14073: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC14073: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC14073: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
for i = 1, 2 do
  local abtprt14 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Torso Part14", vt())
  local abtmsh14 = mesh("SpecialMesh", abtprt14, "Torso", "nil", vt(0, 0, 0), vt(13, 5, 5))
  local wldprt = ablaprt2
  if i == 2 then
    wldprt = abraprt2
  end
  local abtwld14 = weld(abtprt1, abtprt14, wldprt, euler(3.14, 0, 0) * cf(0, 1, 0))
end
for i = 0.785, 6.28 do
  local abtprt16 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part16", vt())
  local abtmsh16 = mesh("SpecialMesh", abtprt16, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 1, 1))
  local abtwld16 = weld(abtprt1, abtprt16, abtprt15, euler(1, 0, 0) * cf(0, 0.8, 0) * euler(0, 0, i))
end
for i = 1, 2 do
  local dpart = abtprt17
  if i == 2 then
    dpart = abtprt18
  end
  local abtprt19 = part(3, ailabot, 0, 0, BrickColor.new("White"), "AilaBot Torso Part19", vt())
  local abtmsh19 = mesh("SpecialMesh", abtprt19, "FileMesh", "9756362", vt(0, 0, 0), vt(1, 3, 0.5))
  local abtwld19 = weld(abtprt1, abtprt19, dpart, euler(0, 0, 0) * cf(0, -0.5, 0) * euler(0, 0, 0))
  for d = 1.57, 6.28 do
    local abtprt20 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Torso Part20", vt())
    local abtmsh20 = mesh("SpecialMesh", abtprt20, "Wedge", "nil", vt(0, 0, 0), vt(2, 2, 8))
    local abtwld20 = weld(abtprt1, abtprt20, abtprt19, euler(1.67, 1.57, 0) * cf(-0.5, 1.3, 0) * euler(0, d, 0))
  end
end
for i = 1.57, 6.28 do
  local abtprt21 = part(3, ailabot, 0, 0, BrickColor.new("Black"), "AilaBot Torso Part21", vt())
  local abtmsh21 = mesh("CylinderMesh", abtprt21, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
  local abtwld21 = weld(abtprt1, abtprt21, abtprt19, euler(1.57, 0, 0) * cf(0, 0, -0.9) * euler(0.4, 0, i))
end
for i = 1, 3 do
  ablaprt12 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part12", vt())
  abraprt12 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Right Arm Part12", vt())
  local n = 6
  if i == 3 then
    n = 5
  end
  ablamsh12 = mesh("CylinderMesh", ablaprt12, "nil", "nil", vt(0, 0, 0), vt(n, 1, n))
  abramsh12 = mesh("CylinderMesh", abraprt12, "nil", "nil", vt(0, 0, 0), vt(n, 1, n))
  local c6 = 0.3
  if i == 2 then
    c6 = -0.8
  else
    if i == 3 then
      c6 = -1
    end
  end
  ablawld12 = weld(abtprt1, ablaprt12, ablaprt11, euler(0, 0, 0) * cf(0, c6, 0))
  abrawld12 = weld(abtprt1, abraprt12, abraprt11, euler(0, 0, 0) * cf(0, c6, 0))
end
for i = 1, 2 do
  ablaprt13 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Left Arm Part13", vt())
  abraprt13 = part(3, ailabot, 0, 0, BrickColor.new("Bright blue"), "AilaBot Right Arm Part13", vt())
  ablamsh13 = mesh("SpecialMesh", ablaprt13, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 1.5, 0.2))
  abramsh13 = mesh("SpecialMesh", abraprt13, "FileMesh", "9756362", vt(0, 0, 0), vt(0.8, 1.5, 0.2))
  local n = 0.5
  if i == 2 then
    n = n * -1
  end
  ablawld13 = weld(abtprt1, ablaprt13, ablaprt11, euler(0, 0, 0) * cf(0, -0.25, n))
  abrawld13 = weld(abtprt1, abraprt13, abraprt11, euler(0, 0, 0) * cf(0, -0.25, n))
end
for _,c in pairs(ailabot:children()) do
  table.insert(AilaBot, c)
end
for _,c in pairs(abtprt1:children()) do
  if c.className == "Motor" then
    table.insert(ABWelds, c)
  end
end
ailabot.Parent = nil
local abpos = it("BodyPosition", ailaref)
abpos.P = 4000
abpos.D = 200
abpos.maxForce = Vector3.new(545000, 545000, 545000)
local abgy = Instance.new("BodyGyro", ailaref)
abgy.maxTorque = Vector3.new(400000, 400000, 400000) * math.huge
abgy.P = 300000
abgy.cframe = RootPart.CFrame
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
  hbwld.Part1 = prtt
end
disappearhat = function()
  for _,c in pairs(Character:children()) do
    if c.className == "Hat" then
      c.Handle.Transparency = 1
    end
  end
end
appearhat = function()
  for _,c in pairs(Character:children()) do
    if c.className == "Hat" then
      c.Handle.Transparency = 0
    end
  end
end
appearhat()
disappeargaunt = function()
  for i = 1, #Weapon do
    Weapon[i].Transparency = 1
  end
end
appeargaunt = function()
  for i = 1, #Weapon do
    Weapon[i].Transparency = 0
  end
end
local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
local parti = it("ParticleEmitter")
parti.Color = cs(NewCol2, NewCol2)
parti.LightEmission = 1
parti.Texture = "http://www.roblox.com/asset/?id=241779220"
sizeseq = ns({NumberSequenceKeypoint.new(0, 2), NumberSequenceKeypoint.new(1, 8)})
transseq = ns({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.1, 0.5), NumberSequenceKeypoint.new(0.8, 0.5), NumberSequenceKeypoint.new(1, 1)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.Acceleration = vt(0, -1, 0)
parti.Lifetime = nr(1, 3)
parti.Rate = 80
parti.RotSpeed = nr(90)
parti.Speed = nr(2)
parti.VelocitySpread = 180
parti.Parent = Torso
parti.Enabled = false
parti.ZOffset = 2
parti2 = parti:Clone()
parti2.Parent = lprt1
parti2.Size = ns({NumberSequenceKeypoint.new(0, 2), NumberSequenceKeypoint.new(1, 0.1)})
parti2.Texture = "http://www.roblox.com/asset/?id=243728166"
parti2.Color = cs(NewCol, NewCol2)
parti2.ZOffset = 0
parti2.Acceleration = vt(0, 0, 0)
parti2.Lifetime = nr(3, 3)
parti2.Rate = 20
parti2.Speed = nr(-3)
parti2.VelocitySpread = 90
parti3 = parti2:Clone()
parti3.Parent = rprt1
parti4 = parti2:Clone()
parti4.Parent = ahprt21
parti4.Color = cs(Color3.new(1, 1, 0), Color3.new(1, 1, 0))
parti4.Size = ns({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0)})
parti4.Texture = "http://www.roblox.com/asset/?id=243728206"
parti4.Lifetime = nr(10, 10)
parti4.Rate = 1
parti4.RotSpeed = nr(0)
parti4.Speed = nr(0.5)
parti4.VelocitySpread = 180
parti4.Enabled = false
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Fendam"
  script.Parent = Tool
Bin = script.Parent
if Bin.Name == "Fendam" then
  Bin.Name = "Fendam"
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
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
  end
  mdec.Parent = Decrease
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  n = 0
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  so("300915902", RootPart, 1, 1)
  for i = 0, 50 do
    swait()
    if i == 0 then
      laarmvis = true
    else
      if i == 5 then
        raarmvis = true
      else
        if i == 10 then
          lalegvis = true
        else
          if i == 15 then
            ralegvis = true
          else
            if i == 20 then
              tavis = true
            end
          end
        end
      end
    end
    n = n + 1
    if n > 6 then
      if n >= 9 then
        n = 0
        Clone()
      end
      for i = 1, 3 do
        ElecEffect(Torso.CFrame, 3, 3, 3)
      end
    end
    do
      do
        if i <= 25 then
          Neck.C0 = clerp(Neck.C0, necko * euler(0.6, 0, 0), 0.15)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0.1, 0, 0), 0.15)
          RW.C0 = clerp(RW.C0, cf(0.7, 0.4, -0.5) * euler(1.5, 0, -1.2), 0.15)
          LW.C0 = clerp(LW.C0, cf(-0.7, 0.4, -0.5) * euler(0.7, 0, 1), 0.15)
          RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1), 0.15)
          LH.C0 = clerp(LH.C0, cf(-0.95, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, -0.1), 0.15)
        else
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(-0.1, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1, 0.7, -0.5) * euler(2.5, 0, -0.8), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1, 0.7, -0.5) * euler(2, 0, 0.6), 0.2)
          RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.2)
          LH.C0 = clerp(LH.C0, cf(-0.95, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.1), 0.2)
        end
        -- DECOMPILER ERROR at PC313: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  laarmvis = false
  raarmvis = false
  lalegvis = false
  ralegvis = false
  tavis = false
  dec.Parent = nil
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
  if hit ~= nil then
    local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
    ref.Anchored = true
    ref.CFrame = cf(pos)
    game:GetService("Debris"):AddItem(ref, 1)
    MagicWave(BrickColor.new("Bright blue"), cf(ref.Position), 1, 1, 1, 1.2, 0.2, 1.2, 0.05)
  end
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
  Stunned.Value = true
  removeControl()
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
      do
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * euler(1.57, 0, -3.14), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1.5) * euler(0.2, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1.57) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0), 0.3)
        -- DECOMPILER ERROR at PC711: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC711: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
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
  if Mode == "Normal" then
    laarmvis = true
    lpdvis = true
    for i = 0, 1, 0.1 do
      swait()
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
      pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0.2, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, 0.6) * euler(0, 0.5, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.1, 0.5, -0.5) * euler(1.57, 0, 0.4) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.2, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, -0.5, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.1), 0.3)
    end
    so("203691885", pdprt9, 0.5, 1.5)
    so("81116747", pdprt9, 1, 1)
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 90
    end
    RecentEnemy.Value = nil
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(2, 6, 2)
    hitboxCF = pdprt9.CFrame * cf(0, 0, 0)
    hitbox.CFrame = hitboxCF
    MagicBlock(BrickColor.new("Bright red"), pdprt7.CFrame, 1, 1, 1, 3, 3, 3, 0.2, 3, pdprt7)
    MagicBlock(BrickColor.new("Bright yellow"), pdprt7.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.1, 3, pdprt7)
    MagicBoom2(BrickColor.new("Bright red"), pdprt7.CFrame, 0.5, 0.5, 0.5, 0.2, 0.5, 0.2, 0.1, pdprt7)
    num = 0
    for i = 0, 1, 0.07 do
      swait()
      num = num + 1
      if num == 5 then
        Bullet(pdprt4)
      end
      if num <= 5 then
        MagicBlock(BrickColor.new("Bright red"), pdprt7.CFrame, 1, 1, 1, 4, 4, 4, 0.25, 1)
      end
      hitboxCF = pdprt9.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 5, 7, math.random(20, 25), "Normal", false, nil, nil, nil, math.random(5, 8), RootPart, 0.5, 2)
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, 0.8, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.5), 0.3)
      if i >= 0.1 then
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.54, 0, -0.4) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.3)
      else
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, 0, -0.5) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.3)
      end
      RH.C0 = clerp(RH.C0, cf(1.2, -1, 0.2) * euler(0, 1.57, 0) * euler(0, 0.2, -0.5), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.2) * euler(0, -1.57, 0) * euler(0, 0.5, 0.2), 0.3)
      if RecentEnemy.Value ~= nil then
        Torso.Velocity = vt(0, 0, 0)
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    lpdvis = false
  else
    local refat = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    refat.Anchored = true
    refat.CFrame = LeftArm.CFrame * cf(0, -1, 0)
    game:GetService("Debris"):AddItem(refat, 5)
    for i = 1, 3 do
      local Col = "Medium blue"
      if i == 2 then
        Col = "Bright blue"
      end
      MagicCircle(BrickColor.new(Col), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 1 * i, 1 * i, 1 * i, 0.08)
    end
    so("300915947", refat, 1, 0.6)
    for i = 0, 1, 0.15 do
      swait()
      refat.CFrame = LeftArm.CFrame * cf(0, -1 - 3 * i, 0)
      ElecEffect(LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.4), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.8) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1.8, 0, 1.2) * euler(0, -1, 0) * euler(0, 0, -0.5), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.8, 0.1) * euler(0, 1.57, 0) * euler(-0.2, 0.1, 0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.95, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0.1), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC843: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC843: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local d = 0
    for i = 0, 1, 0.1 do
      swait()
      refat.CFrame = LeftArm.CFrame * cf(0, -4 + 2 * i, 0)
      if i < 0.7 then
        MagniDamage(refat, 5, 5, 7, math.random(10, 20), "Normal", true, nil, nil, nil, math.random(4, 6), RootPart, 0.2, 2)
      end
      for i = 1, 3 do
        ElecEffect2(refat.CFrame, 4, 4, 4)
      end
      if d % 2 == 0 and i < 0.7 then
        for i = 1, 3 do
          local Col = "Medium blue"
          if i == 2 then
            Col = "Bright blue"
          end
          MagicCircle(BrickColor.new(Col), refat.CFrame, 0, 0, 0, 0.8 * i, 0.8 * i, 0.8 * i, 0.08)
        end
      end
      do
        d = d + 1
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.4), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 1) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.3, 0) * euler(1.57, 0, -1.57) * euler(0, -1.5, 0) * euler(0, 0, 0.4), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.8, 0.1) * euler(0, 1.57, 0) * euler(-0.2, 0.1, 0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.95, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1082: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1082: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC1082: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
    refat.Parent = nil
  end
  do
    attack = false
  end
end
attacktwo = function()
  attack = true
  if Mode == "Normal" then
    raarmvis = true
    rpdvis = true
    for i = 0, 1, 0.1 do
      swait()
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
      pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 1) * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -1), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -1) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.8, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0.1), 0.3)
    end
    so("203691885", pdprt19, 0.5, 1.5)
    so("81116747", pdprt19, 1, 1)
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 100
    end
    RecentEnemy.Value = nil
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(2, 6, 2)
    hitboxCF = pdprt19.CFrame * cf(0, 0, 0)
    hitbox.CFrame = hitboxCF
    MagicBlock(BrickColor.new("Bright red"), pdprt17.CFrame, 1, 1, 1, 3, 3, 3, 0.2, 3, pdprt17)
    MagicBlock(BrickColor.new("Bright yellow"), pdprt17.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.1, 3, pdprt17)
    MagicBoom2(BrickColor.new("Bright red"), pdprt17.CFrame, 0.5, 0.5, 0.5, 0.2, 0.5, 0.2, 0.1, pdprt17)
    num = 0
    for i = 0, 1, 0.07 do
      swait()
      num = num + 1
      if num == 5 then
        Bullet(pdprt16)
      end
      if num <= 5 then
        MagicBlock(BrickColor.new("Bright red"), pdprt17.CFrame, 1, 1, 1, 4, 4, 4, 0.25, 1)
      end
      hitboxCF = pdprt19.CFrame * cf(0, 0, 0)
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 6, 5, 7, math.random(20, 25), "Normal", false, nil, nil, nil, math.random(5, 8), RootPart, 0.5, 2)
      pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, 0.8, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -1.57) * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.3)
      if i >= 0.2 then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, 0) * euler(0, 0, 0.2), 0.3)
      else
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.8, 0, 1.2), 0.3)
      end
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4, 0, -0.4), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.3)
      if RecentEnemy.Value ~= nil then
        Torso.Velocity = vt(0, 0, 0)
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    rpdvis = false
  else
    local refat = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    refat.Anchored = true
    refat.CFrame = RightArm.CFrame * cf(0, -1, 0)
    game:GetService("Debris"):AddItem(refat, 5)
    for i = 1, 3 do
      local Col = "Medium blue"
      if i == 2 then
        Col = "Bright blue"
      end
      MagicCircle(BrickColor.new(Col), RightArm.CFrame * cf(0, -1, 0), 1, 1, 1, 1 * i, 1 * i, 1 * i, 0.08)
    end
    so("300915983", refat, 1, 0.7)
    for i = 0, 1, 0.15 do
      swait()
      refat.CFrame = RightArm.CFrame * cf(0, -1, 0)
      ElecEffect(refat.CFrame, 1, 1, 1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.3, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.3), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.5, 0.3) * euler(1.4, 0, 0.2) * euler(0, 1, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.6) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.3, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, 0.2) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0.2), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC787: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC787: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local d = 0
    for i = 0, 1, 0.1 do
      swait()
      refat.CFrame = RightArm.CFrame * cf(0, -1 - 8 * i, 0)
      if i < 0.7 then
        MagniDamage(refat, 6, 5, 7, math.random(10, 20), "Normal", true, nil, nil, nil, math.random(4, 6), RootPart, 0.2, 2)
      end
      for i = 1, 3 do
        ElecEffect2(refat.CFrame, 5, 5, 5)
      end
      if d % 2 == 0 and i < 0.9 then
        cef = refat.CFrame * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100)
        for i = 1, 3 do
          local Col = "Medium blue"
          if i == 2 then
            Col = "Bright blue"
          end
          MagicCircle(BrickColor.new(Col), cef, 0, 0, 0, 0.5 * i, 0.5 * i, 0.5 * i, 0.08)
        end
      end
      do
        d = d + 1
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.3) * euler(0.05, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.3), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.5) * euler(1.5, 0, 0.3) * euler(0, 1.57, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.3, -0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, 0.2) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0.2), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC1043: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1043: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC1043: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
    refat.Parent = nil
  end
  do
    attack = false
  end
end
attackthree = function()
  attack = true
  local refat = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  if Mode == "Normal" then
    lalegvis = true
    ralegvis = true
    RecentEnemy.Value = nil
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0.2), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0.4), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -1) * euler(0, 1.57, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.3) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, 0, -0.6) * euler(0, -1.57, 0) * euler(0, 0, 0.4) * euler(-0.1, 0, 0), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 80
    end
    so("200632211", LeftLeg, 1, 0.8)
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(1.5, 2.5, 1.5)
    hitboxCF = LeftLeg.CFrame
    hitbox.CFrame = hitboxCF
    RecentEnemy.Value = nil
    for i = 0, 1, 0.1 do
      swait()
      hitboxCF = LeftLeg.CFrame
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 3, 4, 5, math.random(20, 25), "Normal", false, nil, nil, nil, math.random(5, 8), RootPart, 0.5, 2)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0.4), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.8, -0.2) * euler(0.2, 0, 0) * euler(0, 0, -0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1, 0, -0.2) * euler(0, 1.57, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.5) * euler(0, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 0, -0.1) * euler(0.1, 0, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -2) * euler(-0.3, 0, 0), 0.5)
      if RecentEnemy.Value ~= nil then
        Torso.Velocity = vt(0, 0, 0)
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    if RecentEnemy.Value ~= nil then
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.5, 0) * euler(0, 0, -1.3), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0, 0, 1.3) * euler(0, 0.5, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.6, -0.4, -0.7) * euler(0, 1.57, 0) * euler(0, 0, -0.1) * euler(-0.7, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.4, -0.4) * euler(0, -1.57, 0) * euler(-0.5, 0, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
	      RecentEnemy.Value = nil
              break
            end
          end
        end
end
      RecentEnemy.Value = nil
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 10
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * 100
      end
      so("200632136", LeftLeg, 1, 0.8)
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(1.5, 2.5, 1.5)
      hitboxCF = LeftLeg.CFrame
      hitbox.CFrame = hitboxCF
      for i = 0, 1, 0.1 do
        swait()
        hitboxCF = RightLeg.CFrame
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 3, 5, 7, math.random(10, 15), "Normal", false, nil, nil, nil, math.random(5, 8), RootPart, 0.5, 2)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.5, 0) * euler(0, 0, -1), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.2) * euler(0, 0, 1.3) * euler(0, 1, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -1) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.8, 0, -0.3) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.8, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, 0, -0.1) * euler(-0.5, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.6, -0.8) * euler(0, -1.57, 0) * euler(-0.3, 0, 1.2), 0.3)
        if RecentEnemy.Value ~= nil then
          Torso.Velocity = vt(0, 0, 0)
        end
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      dec.Parent = nil
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
    end
  elseif Mode=="Normal" or Mode=="AilaBot" then
    do
      for i = 0, 1, 0.1 do
        swait()
        ElecEffect(LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1)
        ElecEffect(RightArm.CFrame * cf(0, -1, 0), 1, 1, 1)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(-0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0.1), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1.7, 0, -0.2) * euler(0, 1.5, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.3) * euler(1.7, 0, 0.2) * euler(0, -1.5, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.3) * euler(0, 1.57, 0) * euler(0, -0.1, 0.4), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.2, 0.4, -0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      refat.Anchored = true
      refat.CFrame = RootPart.CFrame * cf(0, 0, -6)
      game:GetService("Debris"):AddItem(refat, 5)
      so("300916014", refat, 1, 1)
      MagniDamage(refat, 6, 6, 8, math.random(20, 30), "Normal", true, nil, nil, nil, math.random(4, 6), RootPart, 0.2, 2)
      for i = 1, 3 do
        local Col = "Medium blue"
        if i == 2 then
          Col = "Bright blue"
        end
        MagicCircle(BrickColor.new(Col), refat.CFrame, 3, 3, 3, 2 * i, 2 * i, 2 * i, 0.08)
      end
      do
        attack = false
        if Mode ~= "Normal" then
          local d = 0
          for i = 0, 1, 0.1 do
            swait()
            for i = 1, 3 do
              ElecEffect2(refat.CFrame, 6, 6, 6)
            end
            if d % 2 == 0 and i < 0.9 then
              cef = refat.CFrame * cf(math.random(-400, 400) / 100, math.random(-400, 400) / 100, math.random(-400, 400) / 100)
              for i = 1, 3 do
                local Col = "Medium blue"
                if i == 2 then
                  Col = "Bright blue"
                end
                MagicCircle(BrickColor.new(Col), cef, 0, 0, 0, 0.5 * i, 0.5 * i, 0.5 * i, 0.08)
              end
            end
            do
              do
                d = d + 1
              end
            end
          end
          refat.Parent = nil
        end
      end
    end
end
end
attackthreecombo = function()
  attack = true
  local refat = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  if Mode == "Normal" then
    lalegvis = true
    ralegvis = true
    RecentEnemy.Value = nil
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0.2), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0.4), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -1) * euler(0, 1.57, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.3) * euler(0, -1.57, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, 0, -0.6) * euler(0, -1.57, 0) * euler(0, 0, 0.4) * euler(-0.1, 0, 0), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * 80
    end
    so("200632211", LeftLeg, 1, 0.8)
    hbwld.Parent = nil
    hboxpos.Parent = hitbox
    hitbox.Parent = modelzorz
    hitbox.Size = vt(1.5, 2.5, 1.5)
    hitboxCF = LeftLeg.CFrame
    hitbox.CFrame = hitboxCF
    RecentEnemy.Value = nil
    for i = 0, 1, 0.1 do
      swait()
      hitboxCF = LeftLeg.CFrame
      hitbox.CFrame = hitboxCF
      MagniDamage(hitbox, 3, 4, 5, math.random(20, 25), "Normal", false, nil, nil, nil, math.random(5, 8), RootPart, 0.5, 2)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0.4), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.8, -0.2) * euler(0.2, 0, 0) * euler(0, 0, -0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(1, 0, -0.2) * euler(0, 1.57, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.5) * euler(0, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 0, -0.1) * euler(0.1, 0, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0, -2) * euler(-0.3, 0, 0), 0.5)
      if RecentEnemy.Value ~= nil then
        Torso.Velocity = vt(0, 0, 0)
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    hitbox.Parent = modelzorz
    hitbox.Size = vt()
    hitboxweld()
    hboxpos.Parent = nil
    if RecentEnemy.Value ~= nil then
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.5, 0) * euler(0, 0, -1.3), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0, 0, 1.3) * euler(0, 0.5, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.6, -0.4, -0.7) * euler(0, 1.57, 0) * euler(0, 0, -0.1) * euler(-0.7, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.4, -0.4) * euler(0, -1.57, 0) * euler(-0.5, 0, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
	      RecentEnemy.Value = nil
              break
            end
          end
        end
end
      RecentEnemy.Value = nil
      local dec = Instance.new("NumberValue", Decrease)
      dec.Name = "DecreaseMvmt"
      dec.Value = 10
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * 100
      end
      so("200632136", LeftLeg, 1, 0.8)
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(1.5, 2.5, 1.5)
      hitboxCF = LeftLeg.CFrame
      hitbox.CFrame = hitboxCF
      for i = 0, 1, 0.1 do
        swait()
        hitboxCF = RightLeg.CFrame
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 3, 5, 7, math.random(10, 15), "Normal", false, nil, nil, nil, math.random(5, 8), RootPart, 0.5, 2)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.5, 0) * euler(0, 0, -1), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.2) * euler(0, 0, 1.3) * euler(0, 1, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -1) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.8, 0, -0.3) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.8, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, 0, -0.1) * euler(-0.5, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.6, -0.8) * euler(0, -1.57, 0) * euler(-0.3, 0, 1.2), 0.3)
        if RecentEnemy.Value ~= nil then
          Torso.Velocity = vt(0, 0, 0)
        end
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      dec.Parent = nil
      hitbox.Parent = modelzorz
      hitbox.Size = vt()
      hitboxweld()
      hboxpos.Parent = nil
    end
        attack = false
        if Mode ~= "Normal" then
          local d = 0
          for i = 0, 1, 0.1 do
            swait()
            for i = 1, 3 do
              ElecEffect2(refat.CFrame, 6, 6, 6)
            end
            if d % 2 == 0 and i < 0.9 then
              cef = refat.CFrame * cf(math.random(-400, 400) / 100, math.random(-400, 400) / 100, math.random(-400, 400) / 100)
              for i = 1, 3 do
                local Col = "Medium blue"
                if i == 2 then
                  Col = "Bright blue"
                end
                MagicCircle(BrickColor.new(Col), cef, 0, 0, 0, 0.5 * i, 0.5 * i, 0.5 * i, 0.08)
              end
            end
            do
              do
                d = d + 1
              end
            end
          end
          refat.Parent = nil
        end
      end
    end
attackfour = function()
  attack = true
  tavis = true
  laarmvis = true
  raarmvis = true
  lpdvis = true
  rpdvis = true
  for i = 0, 1, 0.1 do
    swait()
    pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
    pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.3) * euler(1.7, 0, -0.2) * euler(0, 1.57, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.3) * euler(1.7, 0, 0.2) * euler(0, -1.57, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.2) * euler(0, 0, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.1), 0.2)
  end
  so("203691885", pdprt9, 0.5, 1.5)
  so("81116747", pdprt9, 1, 1)
  so("203691885", pdprt19, 0.5, 1.5)
  so("81116747", pdprt19, 1, 1)
  if Rooted.Value == false then
    Torso.Velocity = RootPart.CFrame.lookVector * 120
  end
  RecentEnemy.Value = nil
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(4, 4, 8)
  hitboxCF = Torso.CFrame * cf(0, 0, -2)
  hitbox.CFrame = hitboxCF
  MagicBlock(BrickColor.new("Bright red"), pdprt7.CFrame, 1, 1, 1, 3, 3, 3, 0.2, 3, pdprt7)
  MagicBlock(BrickColor.new("Bright yellow"), pdprt7.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.1, 3, pdprt7)
  MagicBoom2(BrickColor.new("Bright red"), pdprt7.CFrame, 0.5, 0.5, 0.5, 0.2, 0.5, 0.2, 0.1, pdprt7)
  MagicBlock(BrickColor.new("Bright red"), pdprt17.CFrame, 1, 1, 1, 3, 3, 3, 0.2, 3, pdprt17)
  MagicBlock(BrickColor.new("Bright yellow"), pdprt17.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.1, 3, pdprt17)
  MagicBoom2(BrickColor.new("Bright red"), pdprt17.CFrame, 0.5, 0.5, 0.5, 0.2, 0.5, 0.2, 0.1, pdprt17)
  num = 0
  for i = 0, 1, 0.07 do
    swait()
    num = num + 1
    if num == 9 then
      Bullet(pdprt4)
      Bullet(pdprt16)
    end
    if num <= 5 then
      MagicBlock(BrickColor.new("Bright red"), pdprt7.CFrame, 1, 1, 1, 4, 4, 4, 0.25, 1)
      MagicBlock(BrickColor.new("Bright red"), pdprt17.CFrame, 1, 1, 1, 4, 4, 4, 0.25, 1)
    end
    hitboxCF = Torso.CFrame * cf(0, 0, -2)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 8, 7, 10, math.random(30, 30), "Normal", false, nil, nil, nil, math.random(5, 8), RootPart, 0.5, 2)
    pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, 0.8, 0), 0.5)
    pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, 0.8, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.7, 0, -0.1) * euler(0, 1.57, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7, 0, 0.1) * euler(0, -1.57, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.2) * euler(0, 0, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0.1), 0.5)
    if RecentEnemy.Value ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  laarmvis = false
  raarmvis = false
  lalegvis = false
  ralegvis = false
  tavis = false
  lpdvis = false
  rpdvis = false
  attack = false
end
eyeeffect = function(Part)
  MagicCircle(BrickColor.new("Institutional white"), cf(Part.Position), 0, 0, 0, 0.2, 5, 0.2, 0.1)
  MagicCircle(BrickColor.new("Institutional white"), cf(Part.Position) * euler(1.57, 0, 0), 0, 0, 0, 0.2, 5, 0.2, 0.1)
  MagicCircle(BrickColor.new("Institutional white"), cf(Part.Position) * euler(0, 0, 1.57), 0, 0, 0, 0.2, 5, 0.2, 0.1)
end
ChangeTarget = function()
  attack = true
  local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = Head.CFrame * cf(-0.25, 0.25, -0.6)
  game:GetService("Debris"):AddItem(ref, 1)
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  if AilaTarget == "None" then
    local cando = true
    if MMouse.Target ~= nil and MMouse.Target.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent:findFirstChild("Torso") ~= nil then
      if game.Players:GetPlayerFromCharacter(MMouse.Target.Parent) ~= nil and Player.Neutral == false and game.Players:GetPlayerFromCharacter(MMouse.Target.Parent).TeamColor == Player.TeamColor then
        cando = false
      end
      if cando == true then
        Targ = MMouse.Target
        for i = 0, 1, 0.1 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.5) * euler(0, -1, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.8, 0, 0.5) * euler(0, 0.5, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
        end
        AilaTarget = "Target"
        AilaTarget2 = Targ.Parent.Torso
        eyeeffect(ref)
        so("300563970", Head, 1, 1)
        for i = 0, 1, 0.1 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.5) * euler(0, -1, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -0.6) * euler(0, -1.57, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
        end
      end
    end
  else
    do
      if AilaTarget == "Target" then
        for i = 0, 1, 0.1 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.5) * euler(0, -1, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.8, 0, 0.5) * euler(0, 0.5, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
        end
        AilaTarget = "Nearest"
        so("300563977", Head, 1, 1)
        eyeeffect(ref)
        for i = 0, 1, 0.1 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.5) * euler(0, -1, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.8, 0, 0.5) * euler(0, 0.5, 0) * euler(-2, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
        end
      else
        do
          if AilaTarget == "Nearest" then
            for i = 0, 1, 0.1 do
              swait()
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.2, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.5) * euler(0, -1, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.8, 0, 0.5) * euler(0, 0.5, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
            end
            AilaTarget = "None"
            so("300563954", Head, 1, 1)
            eyeeffect(ref)
          end
          dec.Parent = nil
          attack = false
        end
      end
    end
  end
end
aopenleftfist = function()
  ablawld16.C0 = clerp(ablawld16.C0, cf(0, -0.2, 0) * euler(0.5, 0, 0), 0.4)
  ablawld19.C0 = clerp(ablawld19.C0, cf(0, -0.2, 0) * euler(0.5, 0, 0), 0.4)
  ablawld22.C0 = clerp(ablawld22.C0, cf(0, -0.2, 0) * euler(0.5, 0, 0), 0.4)
  ablawld25.C0 = clerp(ablawld25.C0, cf(0, -0.2, 0) * euler(-0.3, 0, 0), 0.4)
  ablawld17.C0 = clerp(ablawld17.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld17.C1 = clerp(ablawld17.C1, cf(0, 0.15, 0.05) * euler(-1, 0, 0), 0.4)
  ablawld20.C0 = clerp(ablawld20.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld20.C1 = clerp(ablawld20.C1, cf(0, 0.15, 0.05) * euler(-1, 0, 0), 0.4)
  ablawld23.C0 = clerp(ablawld23.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld23.C1 = clerp(ablawld23.C1, cf(0, 0.15, 0.05) * euler(-1, 0, 0), 0.4)
  ablawld26.C0 = clerp(ablawld26.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld26.C1 = clerp(ablawld26.C1, cf(0, 0.15, 0.03) * euler(-0.5, 0, 0), 0.4)
end
acloseleftfist = function()
  ablawld16.C0 = clerp(ablawld16.C0, cf(0, -0.2, 0) * euler(1, 0, 0), 0.4)
  ablawld19.C0 = clerp(ablawld19.C0, cf(0, -0.2, 0) * euler(1, 0, 0), 0.4)
  ablawld22.C0 = clerp(ablawld22.C0, cf(0, -0.2, 0) * euler(1, 0, 0), 0.4)
  ablawld25.C0 = clerp(ablawld25.C0, cf(0, -0.2, 0) * euler(-0.3, 0, 0), 0.4)
  ablawld17.C0 = clerp(ablawld17.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld17.C1 = clerp(ablawld17.C1, cf(0, 0.15, 0.05) * euler(-1.5, 0, 0), 0.4)
  ablawld20.C0 = clerp(ablawld20.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld20.C1 = clerp(ablawld20.C1, cf(0, 0.15, 0.05) * euler(-1.5, 0, 0), 0.4)
  ablawld23.C0 = clerp(ablawld23.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld23.C1 = clerp(ablawld23.C1, cf(0, 0.15, 0.05) * euler(-1.5, 0, 0), 0.4)
  ablawld26.C0 = clerp(ablawld26.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  ablawld26.C1 = clerp(ablawld26.C1, cf(0, 0.15, 0.03) * euler(-1, 0, 0), 0.4)
end
aopenrightfist = function()
  abrawld16.C0 = clerp(abrawld16.C0, cf(0, -0.2, 0) * euler(0.5, 0, 0), 0.4)
  abrawld19.C0 = clerp(abrawld19.C0, cf(0, -0.2, 0) * euler(0.5, 0, 0), 0.4)
  abrawld22.C0 = clerp(abrawld22.C0, cf(0, -0.2, 0) * euler(0.5, 0, 0), 0.4)
  abrawld25.C0 = clerp(abrawld25.C0, cf(0, -0.2, 0) * euler(-0.3, 0, 0), 0.4)
  abrawld17.C0 = clerp(abrawld17.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld17.C1 = clerp(abrawld17.C1, cf(0, 0.15, 0.05) * euler(-1, 0, 0), 0.4)
  abrawld20.C0 = clerp(abrawld20.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld20.C1 = clerp(abrawld20.C1, cf(0, 0.15, 0.05) * euler(-1, 0, 0), 0.4)
  abrawld23.C0 = clerp(abrawld23.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld23.C1 = clerp(abrawld23.C1, cf(0, 0.15, 0.05) * euler(-1, 0, 0), 0.4)
  abrawld26.C0 = clerp(abrawld26.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld26.C1 = clerp(abrawld26.C1, cf(0, 0.15, 0.03) * euler(-0.5, 0, 0), 0.4)
end
acloserightfist = function()
  abrawld16.C0 = clerp(abrawld16.C0, cf(0, -0.2, 0) * euler(1, 0, 0), 0.4)
  abrawld19.C0 = clerp(abrawld19.C0, cf(0, -0.2, 0) * euler(1, 0, 0), 0.4)
  abrawld22.C0 = clerp(abrawld22.C0, cf(0, -0.2, 0) * euler(1, 0, 0), 0.4)
  abrawld25.C0 = clerp(abrawld25.C0, cf(0, -0.2, 0) * euler(-0.3, 0, 0), 0.4)
  abrawld17.C0 = clerp(abrawld17.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld17.C1 = clerp(abrawld17.C1, cf(0, 0.15, 0.05) * euler(-1.5, 0, 0), 0.4)
  abrawld20.C0 = clerp(abrawld20.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld20.C1 = clerp(abrawld20.C1, cf(0, 0.15, 0.05) * euler(-1.5, 0, 0), 0.4)
  abrawld23.C0 = clerp(abrawld23.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld23.C1 = clerp(abrawld23.C1, cf(0, 0.15, 0.05) * euler(-1.5, 0, 0), 0.4)
  abrawld26.C0 = clerp(abrawld26.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.4)
  abrawld26.C1 = clerp(abrawld26.C1, cf(0, 0.15, 0.03) * euler(-1, 0, 0), 0.4)
end
LaserShot = function()
  ailaattack = true
  for i = 0, 1, 0.1 do
    swait()
    acloseleftfist()
    hwld1.C0 = clerp(hwld1.C0, euler(0.3, 0, 3.14) * euler(0, 0.8, 0) * cf(0, 2.5, 0.3), 0.3)
    abtwld1.C1 = clerp(abtwld1.C1, euler(0, 0.8, 0), 0.3)
    abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
    abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.3, 0, -0.4), 0.2)
    abrawld10.C0 = clerp(abrawld10.C0, euler(0, 1.2, 0) * cf(0, 0, 0), 0.2)
    ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, -0.5) * cf(0, 0, 0), 0.2)
    ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, -0.2, 0) * cf(0, 0.9, 0) * euler(0.2, 0, -0.5), 0.2)
    ablawld10.C0 = clerp(ablawld10.C0, euler(0, 1.2, 0) * cf(0, 0, 0), 0.2)
    abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, -0.8, 0) * cf(0, -0.6, 0) * euler(-1.6, 0, 0), 0.2)
    abgy.cframe = cf(abw1prt11.Position, AilaTarget2.Position) * euler(0, 0, 3.14)
  end
  local cylind = part(3, ailabot, 0, 0.5, BrickColor.new("Medium blue"), "Effect", vt())
  cylind.Anchored = true
  cylind.CFrame = abw1prt11.CFrame
  local cmsh = mesh("CylinderMesh", cylind, "", "", vt(0, 0, 0), vt(1, 1, 1))
  game:GetService("Debris"):AddItem(cylind, 10)
  local ceef = cf(abw1prt11.Position, AilaTarget2.Position)
  so("169380469", abw1prt11, 1, 2)
  for i = 0, 2, 0.1 do
    swait()
    if i < 1 then
      ceef = cf(abw1prt11.Position, AilaTarget2.Position)
      abgy.cframe = cf(abw1prt11.Position, AilaTarget2.Position) * euler(0, 0, 3.14)
    end
    MagicCircle(BrickColor.new("Medium blue"), abw1prt11.CFrame, 0, 0, 0, 3, 3, 3, 0.2, ailabot)
    MagicCircle2(BrickColor.new("Bright blue"), abw1prt11.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, 6, 0), 1, 1, 1, 0, 0, 0, 0.1)
    local hit, pos = rayCast(abw1prt11.Position, ceef.lookVector, 999, Character)
    local mag = (abw1prt11.Position - pos).magnitude
    cylind.CFrame = CFrame.new((abw1prt11.Position + pos) / 2, pos) * angles(1.57, 0, 0)
    if i < 1 then
      cmsh.Scale = vt(8 - 5 * i, mag * 5, 8 - 5 * i)
    else
      cmsh.Scale = vt(3, mag * 5, 3)
    end
  end
  cylind.Parent = nil
  local hit, pos = rayCast(abw1prt11.Position, ceef.lookVector, 999, Character)
  local mag = (abw1prt11.Position - pos).magnitude
  if pos ~= nil then
    so("300916038", abw1prt11, 1, 1)
    MagicCircle(BrickColor.new("Medium blue"), abw1prt11.CFrame, 6, 6, 6, 3, 3, 3, 0.08, ailabot)
    MagicHead(BrickColor.new("Medium blue"), CFrame.new((abw1prt11.Position + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 1, 1, 1, 0.1)
    local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(pos)
    game:GetService("Debris"):AddItem(ref, 1)
    so("300916057", ref, 1, 1)
    MagniDamage(ref, 10, 5, 7, math.random(30, 40), "Knockdown2", true, "Movement", 0.2, 100, math.random(3, 4), ref, 0, 1)
    for i = 1, 3 do
      MagicCircle(BrickColor.new("Medium blue"), cf(ref.Position), 5, 5, 5, 4 * i, 4 * i, 4 * i, 0.08)
    end
  end
  do
    for i = 0, 1, 0.1 do
      swait()
      aopenleftfist()
      hwld1.C0 = clerp(hwld1.C0, euler(0.3, 0, 3.14) * euler(0, -0.2, 0) * cf(0, 2.5, 0.3), 0.3)
      abtwld1.C1 = clerp(abtwld1.C1, euler(0, -0.2, 0), 0.3)
      abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
      abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.1, 0, -0.3), 0.2)
      abrawld10.C0 = clerp(abrawld10.C0, euler(0, 1, 0) * cf(0, 0, 0), 0.2)
      ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, -0.2) * cf(0, 0, 0), 0.2)
      ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, -0.2, 0) * cf(0, 0.9, 0) * euler(0.1, 0, -0.2), 0.2)
      ablawld10.C0 = clerp(ablawld10.C0, euler(0, 1, 0) * cf(0, 0, 0), 0.2)
      abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, 0.2, 0) * cf(0, -0.6, 0) * euler(-1.6, 0, 0), 0.2)
    end
    ailaattack = false
  end
end
QuadBarrage = function()
  ailaattack = true
  for i = 0, 1, 0.1 do
    swait()
    abgy.cframe = cf(abw2prt4.Position, AilaTarget2.Position) * euler(0, 0, 3.14)
    abtwld1.C1 = clerp(abtwld1.C1, euler(0, -0.3, 0), 0.3)
    hwld1.C0 = clerp(hwld1.C0, euler(0.2, 0, 3.14) * euler(0, -0.3, 0) * cf(0, 2.5, 0.3), 0.3)
    abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0.4) * cf(0, 0, 0), 0.3)
    abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0, 0, 0.8) * euler(0, -0.2, 0) * euler(-1.1, 0, 0), 0.3)
    abrawld9.C0 = clerp(abrawld9.C0, euler(1.57, 0, 0) * euler(0, 0.4, 0) * cf(0, -0.9, 0), 0.3)
    abrawld10.C0 = clerp(abrawld10.C0, euler(0, 0.2, 0) * cf(0, 0, 0), 0.3)
    ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.3, 0, -0.4), 0.3)
    ablawld10.C0 = clerp(ablawld10.C0, euler(0, 0.8, 0) * cf(0, 0, 0), 0.3)
    abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, 0, 0) * cf(0, -0.6, 0) * euler(-1.6, 0, 0), 0.3)
    abw2wld1.C0 = clerp(abw2wld1.C0, euler(0, 0, 0) * cf(0, -0.2, -0.4), 0.3)
    abw2wld5.C0 = clerp(abw2wld5.C0, euler(0, 0, 0) * cf(0.2, -0.2, 0), 0.3)
    abw2wld6.C0 = clerp(abw2wld6.C0, euler(0, 0, 0) * cf(-0.2, -0.2, 0), 0.3)
  end
  OldPos = AilaTarget2.Position
  for i = 1, 4 do
    local tpart = abw2prt10
    if i == 2 then
      tpart = abw2prt11
    else
      if i == 3 then
        tpart = abw2prt12
      else
        if i == 4 then
          tpart = abw2prt13
        end
      end
    end
    spread = Vector3.new(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * (tpart.Position - OldPos).magnitude / 100
    local ceef = cf((tpart.Position + OldPos) / 2, OldPos + spread)
    local hit, pos = rayCast(tpart.Position, ceef.lookVector, 999, Character)
    local mag = (tpart.Position - pos).magnitude
    if pos ~= nil then
      so("87015121", tpart, 0.6, 1)
      MagicCircle(BrickColor.new("Bright yellow"), tpart.CFrame, 2, 2, 2, 2, 2, 2, 0.1, ailabot)
      MagicHead(BrickColor.new("Bright yellow"), CFrame.new((tpart.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.4, 0.4, 0.4, 0.1)
      local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(ref, 1)
      so("172146984", ref, 0.4, 1.4)
      so("163573436", ref, 0.4, 1)
      MagniDamage(ref, 6, 4, 5, 0, "Normal", true, nil, nil, nil, math.random(1, 3), ref, 0, 1)
      for i = 1, 2 do
        MagicBlock(BrickColor.new("Bright yellow"), cf(ref.Position), 1, 1, 1, 2 * i, 2 * i, 2 * i, 0.12, 4)
      end
    end
    do
      do
        swait(5)
        -- DECOMPILER ERROR at PC487: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  abrawld9.C0 = euler(1.57, 0, 0) * cf(0, -0.9, 0)
  ailaattack = false
end
QuadBurst = function()
  ailaattack = true
  for i = 0, 1, 0.1 do
    swait()
    abgy.cframe = cf(abw2prt4.Position, AilaTarget2.Position) * euler(0, 0, 3.14)
    abtwld1.C1 = clerp(abtwld1.C1, euler(0, -0.3, 0), 0.3)
    hwld1.C0 = clerp(hwld1.C0, euler(0.2, 0, 3.14) * euler(0, -0.3, 0) * cf(0, 2.5, 0.3), 0.3)
    abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0.4) * cf(0, 0, 0), 0.3)
    abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0, 0, 0.8) * euler(0, -0.2, 0) * euler(-1.1, 0, 0), 0.3)
    abrawld9.C0 = clerp(abrawld9.C0, euler(1.57, 0, 0) * euler(0, 0.4, 0) * cf(0, -0.9, 0), 0.3)
    abrawld10.C0 = clerp(abrawld10.C0, euler(0, 0.2, 0) * cf(0, 0, 0), 0.3)
    ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.3, 0, -0.4), 0.3)
    ablawld10.C0 = clerp(ablawld10.C0, euler(0, 0.8, 0) * cf(0, 0, 0), 0.3)
    abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, 0, 0) * cf(0, -0.6, 0) * euler(-1.6, 0, 0), 0.3)
    abw2wld1.C0 = clerp(abw2wld1.C0, euler(0, 0, 0) * cf(0, -0.2, -0.4), 0.3)
    abw2wld5.C0 = clerp(abw2wld5.C0, euler(0, 0, 0) * cf(0.2, -0.2, 0), 0.3)
    abw2wld6.C0 = clerp(abw2wld6.C0, euler(0, 0, 0) * cf(-0.2, -0.2, 0), 0.3)
  end
  OldPos = AilaTarget2.Position
  for i = 1, 4 do
    local tpart = abw2prt10
    if i == 2 then
      tpart = abw2prt11
    else
      if i == 3 then
        tpart = abw2prt12
      else
        if i == 4 then
          tpart = abw2prt13
        end
      end
    end
    spread = vt(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * (tpart.Position - OldPos).magnitude / 100
    local ceef = cf((tpart.Position + OldPos) / 2, OldPos + spread)
    local hit, pos = rayCast(tpart.Position, ceef.lookVector, 999, Character)
    local mag = (tpart.Position - pos).magnitude
    if pos ~= nil then
      so("87015121", tpart, 0.6, 1)
      MagicCircle(BrickColor.new("Bright yellow"), tpart.CFrame, 2, 2, 2, 2, 2, 2, 0.1, ailabot)
      MagicHead(BrickColor.new("Bright yellow"), CFrame.new((tpart.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.4, 0.4, 0.4, 0.1)
      local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(ref, 1)
      so("172146984", ref, 0.4, 1.4)
      so("163573436", ref, 0.4, 1)
      MagniDamage(ref, 6, 5, 8, 0, "Normal", true, nil, nil, nil, math.random(3, 6), ref, 0, 1)
      for i = 1, 2 do
        MagicBlock(BrickColor.new("Bright yellow"), cf(ref.Position), 1, 1, 1, 2 * i, 2 * i, 2 * i, 0.12, 4)
      end
    end
  end
  for i = 0, 1, 0.1 do
    swait()
    abgy.cframe = cf(abw2prt4.Position, AilaTarget2.Position) * euler(0, 0, 3.14)
    abtwld1.C1 = clerp(abtwld1.C1, euler(0, 0.1, 0), 0.4)
    hwld1.C0 = clerp(hwld1.C0, euler(0.3, 0, 3.14) * euler(0, 0.1, 0) * cf(0, 2.5, 0.3), 0.4)
    abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0.3) * cf(0, 0, 0), 0.4)
    abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0, 0, 0.6) * euler(0, -0.2, 0) * euler(-1.1, 0, 0), 0.4)
    abrawld9.C0 = clerp(abrawld9.C0, euler(1.57, 0, 0) * euler(0, 0.4, 0) * cf(0, -0.9, 0), 0.4)
    abrawld10.C0 = clerp(abrawld10.C0, euler(0, 0.8, 0) * cf(0, 0, 0), 0.4)
  end
  abrawld9.C0 = euler(1.57, 0, 0) * cf(0, -0.9, 0)
  ailaattack = false
end
SatelliteShot = function()
  ailaattack = true
  for i = 0, 1, 0.1 do
    swait()
    pos4 = vt(AilaTarget2.Position.X, abtprt4.Position.Y, AilaTarget2.Position.Z)
    abgy.cframe = cf(abtprt4.Position, pos4) * euler(0, 0, 3.14)
    acloseleftfist()
    abtwld1.C1 = clerp(abtwld1.C1, euler(0, 0, 0), 0.3)
    hwld1.C0 = clerp(hwld1.C0, euler(0.1, 0, 3.14) * cf(0, 2.5, 0.3), 0.3)
    abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.3, 0, -0.2), 0.3)
    abrawld10.C0 = clerp(abrawld10.C0, euler(0, 1.2, 0) * cf(0, 0, 0), 0.3)
    ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, 1.1) * cf(0, 0, 0), 0.3)
    ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.1, 0, 0.8), 0.3)
    ablawld10.C0 = clerp(ablawld10.C0, euler(0, 1, 0) * cf(0, 0, 0), 0.3)
    abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, 0, 0) * cf(0, -0.6, 0) * euler(0, 0, 0), 0.3)
    abw2wld1.C0 = clerp(abw2wld1.C0, euler(0, 0, 0) * cf(0, -0.2, -0.4), 0.3)
    abw2wld5.C0 = clerp(abw2wld5.C0, euler(0, 0, 0) * cf(0.2, -0.2, 0), 0.3)
    abw2wld6.C0 = clerp(abw2wld6.C0, euler(0, 0, 0) * cf(-0.2, -0.2, 0), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    pos4 = vt(AilaTarget2.Position.X, abtprt4.Position.Y, AilaTarget2.Position.Z)
    abgy.cframe = cf(abtprt4.Position, pos4) * euler(0, 0, 3.14)
    aopenleftfist()
    abtwld1.C1 = clerp(abtwld1.C1, euler(0, 0, 0), 0.3)
    hwld1.C0 = clerp(hwld1.C0, euler(0.1, 0, 3.14) * cf(0, 2.5, 0.3), 0.3)
    abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.3, 0, -0.2), 0.3)
    abrawld10.C0 = clerp(abrawld10.C0, euler(0, 1.2, 0) * cf(0, 0, 0), 0.3)
    ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, 1.1) * cf(0, 0, 0), 0.3)
    ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.1, 0, -0.2), 0.3)
    ablawld10.C0 = clerp(ablawld10.C0, euler(0, 0.4, 0) * cf(0, 0, 0), 0.3)
  end
  for i = 1, 5 do
    if AilaTarget2 ~= nil then
      so("300916038", abw1prt11, 1, 1)
      local hit, pos = rayCast(abw1prt11.Position, abw1prt11.CFrame * euler(-1.57, 0, 0).lookVector, 300, Character)
      local mag = (abw1prt11.Position - pos).magnitude
      MagicCircle(BrickColor.new("Medium blue"), abw1prt11.CFrame, 6, 6, 6, 3, 3, 3, 0.08, ailabot)
      MagicHead(BrickColor.new("Medium blue"), CFrame.new((abw1prt11.Position + pos) / 2, pos) * angles(1.57, 0, 0), 6, mag * 5, 6, -0.5, 1, -0.5, 0.1)
      swait(5)
      cf2 = AilaTarget2.Position + vt(math.random(-1500, 1500) / 100, 100, math.random(-1500, 1500) / 100)
      local hit2, pos2 = rayCast(cf2, CFrame.new(cf2, cf2 - Vector3.new(0, 1, 0)).lookVector, 999, Character)
      if hit2 ~= nil then
        local d1 = part(3, workspace, 0, 0.5, BrickColor.new("Medium blue"), "Effect", vt())
        d1.Anchored = true
        d1.CFrame = cf(pos2)
        game:GetService("Debris"):AddItem(d1, 5)
        msh = mesh("CylinderMesh", d1, "nil", "nil", vt(0, 0, 0), vt(80, 5, 80))
        d2 = d1:Clone()
        d2.Parent = d1
        d2.CFrame = cf(d1.Position)
        d2.BrickColor = BrickColor.new("White")
        d2.Mesh.Scale = vt(0, 5, 0)
        table.insert(Effects, {d1, "SatelliteStrike", d2, d2.Mesh, 0})
      end
    end
  end
  ailaattack = false
end
do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  local manacost = 15
  if Mode ~= "Normal" then
    manacost = 10
  end
  if cooldownmax <= cooldowns[1] and manacost <= mana.Value then
    attack = true
    cooldowns[1] = 0
    if Mode == "Normal" then
      tavis = true
      aspear11 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Aila Spear11", vt())
      aspear12 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Aila Spear12", vt())
      aspear13 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Aila Spear13", vt())
      aspear14 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Aila Spear14", vt())
      aspear21 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Aila Spear21", vt())
      aspear22 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Aila Spear22", vt())
      aspear23 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Aila Spear23", vt())
      aspear24 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Aila Spear24", vt())
      aspear31 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Aila Spear31", vt())
      aspear32 = part(3, modelzorz, 0.5, 0, BrickColor.new("White"), "Aila Spear32", vt())
      aspear33 = part(3, modelzorz, 0, 0, BrickColor.new("Bright blue"), "Aila Spear33", vt())
      aspear34 = part(3, modelzorz, 0, 0, BrickColor.new("White"), "Aila Spear34", vt())
      aspearmsh11 = mesh("SpecialMesh", aspear11, "FileMesh", "9756362", vt(0, 0, 0), vt(0.7, 0.7, 0.2))
      aspearmsh12 = mesh("SpecialMesh", aspear12, "Wedge", "nil", vt(0, 0, 0), vt(1, 3, 10))
      aspearmsh13 = mesh("SpecialMesh", aspear13, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 2.5, 9))
      aspearmsh14 = mesh("SpecialMesh", aspear14, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
      aspearmsh21 = mesh("SpecialMesh", aspear21, "FileMesh", "9756362", vt(0, 0, 0), vt(0.7, 0.7, 0.2))
      aspearmsh22 = mesh("SpecialMesh", aspear22, "Wedge", "nil", vt(0, 0, 0), vt(1, 3, 10))
      aspearmsh23 = mesh("SpecialMesh", aspear23, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 2.5, 9))
      aspearmsh24 = mesh("SpecialMesh", aspear24, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
      aspearmsh31 = mesh("SpecialMesh", aspear31, "FileMesh", "9756362", vt(0, 0, 0), vt(0.7, 0.7, 0.2))
      aspearmsh32 = mesh("SpecialMesh", aspear32, "Wedge", "nil", vt(0, 0, 0), vt(1, 3, 10))
      aspearmsh33 = mesh("SpecialMesh", aspear33, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 2.5, 9))
      aspearmsh34 = mesh("SpecialMesh", aspear34, "FileMesh", "9756362", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
      aspearwld11 = weld(aspear11, aspear11, RootPart, cf(0, -4, 0) * euler(0, 0, -0.1))
      aspearwld12 = weld(aspear12, aspear12, aspear11, euler(0, 0, 0) * cf(0, 0, 1))
      aspearwld13 = weld(aspear13, aspear13, aspear12, euler(0, 0, 0) * cf(0, -0.05, -0.1))
      aspearwld14 = weld(aspear14, aspear14, aspear11, euler(0, 0, 0) * cf(0, 0, 0.2))
      aspearwld21 = weld(aspear21, aspear21, RootPart, cf(0, -4, 0) * euler(0, 0, 1.993))
      aspearwld22 = weld(aspear22, aspear22, aspear21, euler(0, 0, 0) * cf(0, 0, 1))
      aspearwld23 = weld(aspear23, aspear23, aspear22, euler(0, 0, 0) * cf(0, -0.05, -0.1))
      aspearwld24 = weld(aspear24, aspear24, aspear21, euler(0, 0, 0) * cf(0, 0, 0.2))
      aspearwld31 = weld(aspear31, aspear31, RootPart, cf(0, -4, 0) * euler(0, 0, 4.086))
      aspearwld32 = weld(aspear32, aspear32, aspear31, euler(0, 0, 0) * cf(0, 0, 1))
      aspearwld33 = weld(aspear33, aspear33, aspear32, euler(0, 0, 0) * cf(0, -0.05, -0.1))
      aspearwld34 = weld(aspear34, aspear34, aspear31, euler(0, 0, 0) * cf(0, 0, 0.2))
      Clone()
      mana.Value = mana.Value - 15
      MagicCircle(BrickColor.new("Bright blue"), aspear12.CFrame, 3, 3, 8, 1, 1, 1, 0.05)
      MagicCircle(BrickColor.new("Bright blue"), aspear22.CFrame, 3, 3, 8, 1, 1, 1, 0.05)
      MagicCircle(BrickColor.new("Bright blue"), aspear32.CFrame, 3, 3, 8, 1, 1, 1, 0.05)
      so("299440437", RootPart, 1, 1)
      for i = 0, 1, 0.1 do
        swait()
        ElecEffect(aspear12.CFrame, 2, 2, 2)
        ElecEffect(aspear22.CFrame, 2, 2, 2)
        ElecEffect(aspear32.CFrame, 2, 2, 2)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -1) * euler(0, 1.3, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(-0.3, 0.5, 0.2), 0.3)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC850: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC850: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      Clone()
      so("299439036", aspear12, 1, 1)
      so("299439036", aspear22, 1, 1)
      so("299439036", aspear32, 1, 1)
      for i = 0, 1, 0.1 do
        swait()
        ElecEffect2(aspear12.CFrame, 2, 2, 2)
        ElecEffect2(aspear22.CFrame, 2, 2, 2)
        ElecEffect2(aspear32.CFrame, 2, 2, 2)
        MagniDamage(aspear12, 4, 6, 8, math.random(30, 40), "Normal", false, "Movement", 0.4, 100, math.random(2, 5), RootPart, 0.3, 2)
        MagniDamage(aspear22, 4, 6, 8, math.random(30, 40), "Normal", false, "Movement", 0.4, 100, math.random(2, 5), RootPart, 0.3, 2)
        MagniDamage(aspear32, 4, 6, 8, math.random(30, 40), "Normal", false, "Movement", 0.4, 100, math.random(2, 5), RootPart, 0.3, 2)
        aspearwld11.C0 = clerp(aspearwld11.C0, euler(0.4, 0, 0) * cf(0, -1.5, 15) * euler(0, 0, 1.2), 0.35)
        aspearwld21.C0 = clerp(aspearwld21.C0, euler(0.4, 0, 0) * cf(0, -1.5, 15) * euler(0, 0, 3.293), 0.35)
        aspearwld31.C0 = clerp(aspearwld31.C0, euler(0.4, 0, 0) * cf(0, -1.5, 15) * euler(0, 0, 5.386), 0.35)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, 0, 1) * euler(0, 1.3, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.7) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -1, -0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(-0.3, 0.5, 0.2), 0.3)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC1189: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1189: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      MagicCircle(BrickColor.new("Bright blue"), aspear12.CFrame, 3, 3, 8, 1, 1, 1, 0.05)
      MagicCircle(BrickColor.new("Bright blue"), aspear22.CFrame, 3, 3, 8, 1, 1, 1, 0.05)
      MagicCircle(BrickColor.new("Bright blue"), aspear32.CFrame, 3, 3, 8, 1, 1, 1, 0.05)
      aspear11.Parent = nil
      aspear12.Parent = nil
      aspear13.Parent = nil
      aspear14.Parent = nil
      aspear21.Parent = nil
      aspear22.Parent = nil
      aspear23.Parent = nil
      aspear24.Parent = nil
      aspear31.Parent = nil
      aspear32.Parent = nil
      aspear33.Parent = nil
      aspear34.Parent = nil
    else
      mana.Value = mana.Value - 10
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.3, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.3)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.8, 0, -0.5) * euler(0, 0.5, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.8, 0, 0.5) * euler(0, -0.5, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.6, 0.1), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(-0.1, 0.4, 0.2), 0.3)
      end
      local refat = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      refat.Anchored = true
      refat.CFrame = LeftArm.CFrame * cf(0, -1.5, 0)
      game:GetService("Debris"):AddItem(refat, 5)
      for i = 1, 3 do
        local Col = "Bright blue"
        MagicCircle(BrickColor.new(Col), refat.CFrame, 1, 1, 1, 1 * i, 1 * i, 1 * i, 0.08)
      end
      tehcf = cf(refat.Position, MMouse.Hit.p)
      so("301031757", refat, 1, 1)
      RecentEnemy.Value = nil
      local dosound = false
      for i = 0, 1, 0.1 do
        swait()
        if RecentEnemy.Value ~= nil then
          cooldowns[1] = 80
          mana.Value = mana.Value + math.random(1, 2)
          if dosound == false then
            dosound = true
            so("301033949", refat, 1, 1)
          end
        end
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, -0.5) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -0.6) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
        MagniDamage(refat, 4, 4, 5, 0, "Normal", true, nil, nil, nil, math.random(4, 6), RootPart, 0.2, 2)
        refat.CFrame = tehcf * cf(0, 0, -50 * i)
        for i = 1, 3 do
          ElecEffect2(refat.CFrame, 4, 4, 4)
        end
        duhcf = refat.CFrame * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100)
        for i = 1, 3 do
          if RecentEnemy.Value == nil then
            MagicCircle(BrickColor.new("Bright blue"), duhcf, 1, 1, 1, 0.5 * i, 0.5 * i, 0.5 * i, 0.15 / i)
          else
            MagicCircle(BrickColor.new("Cyan"), duhcf, 1, 1, 1, 0.5 * i, 0.5 * i, 0.5 * i, 0.25 / i)
          end
        end
      end
      refat.Parent = nil
    end
    do
      attack = false
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 15 and Mode == "Normal" then
    attack = true
    cooldowns[2] = 0
    lalegvis = true
    ralegvis = true
    for i = 0, 1, 0.1 do
      swait()
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
      pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.1, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.7) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.7) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.6, -0.1) * euler(0, 1.57, 0) * euler(0, -0.2, -0.1) * euler(-0.1, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.05, -0.6, -0.1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.1) * euler(-0.1, 0, 0), 0.3)
      --[[if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
        end
      end]]
    end
    --[[if Stagger.Value ~= true then
      if StunT.Value <= Stun.Value then--]]
        mana.Value = mana.Value - 15
        so("172146984", RootPart, 0.6, 2)
        so("81116747", RootPart, 1, 1.4)
        MagniDamage(RootPart, 20, 6, 8, math.random(20, 40), "Knockdown2", true, nil, nil, nil, math.random(5, 7), RootPart, 0, 1)
        hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
        if posfloor2 ~= nil then
          MagicWave(BrickColor.new("Bright yellow"), cf(posfloor2), 1, 1, 1, 2, 1, 2, 0.1)
        end
        MagicBlock(BrickColor.new("Bright yellow"), RightLeg.CFrame * cf(0, -1, 0), 4, 4, 4, 1, 1, 1, 0.05, 4)
        MagicBlock(BrickColor.new("Bright yellow"), LeftLeg.CFrame * cf(0, -1, 0), 4, 4, 4, 1, 1, 1, 0.05, 4)
        tavis = true
        move2do = true
        for i = 0, 1, 0.1 do
          swait()
          Torso.Velocity = vt(0, 0, 0)
          MagicBlock(BrickColor.new("Bright yellow"), RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.1, 4)
          MagicBlock(BrickColor.new("Bright yellow"), LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.1, 4)
          pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
          pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * euler(-0.1, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(2, 0, -1.2), 0.3)
          LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1, 0, 1), 0.3)
          RH.C0 = clerp(RH.C0, cf(1.05, -0.7, -0.2) * euler(0, 1.57, 0) * euler(0, -0.1, -0.4) * euler(-0.2, 0, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1.05, -0.7, -0.2) * euler(0, -1.57, 0) * euler(0, 0.1, 0.4) * euler(-0.2, 0, 0), 0.3)
          if Stagger.Value ~= true then
            do
              if StunT.Value <= Stun.Value then
                break
              end
            end
          end
        end
            so("299435152", RootPart, 1, 0.8)
            local dec = Instance.new("NumberValue", Decrease)
            dec.Name = "DecreaseMvmt"
            dec.Value = 10
            d = 2
            for i = 0, 3, 0.1 do
              swait()
              d = d + 1
              if Rooted.Value == false then
                Torso.Velocity = RootPart.CFrame.lookVector * 80
              end
              MagicBlock(BrickColor.new("Bright yellow"), RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.1, 4)
              MagicBlock(BrickColor.new("Bright yellow"), LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.1, 4)
              if d % 2 == 0 then
                MagicBlock(BrickColor.new("Bright yellow"), atprt14.CFrame, 1, 1, 1, 3, 3, 3, 0.1, 4)
              end
              if d % 10 == 0 then
                so("161006182", RootPart, 1, 1)
                so("81116747", RootPart, 1, 1.6)
                MagniDamage(atprt14, 10, 7, 9, math.random(20, 40), "Knockdown2", true, nil, nil, nil, math.random(5, 7), RootPart, 0, 1)
                MagicBlock(BrickColor.new("Bright yellow"), atprt14.CFrame, 4, 4, 4, 3, 3, 3, 0.06, 4)
                MagicWave(BrickColor.new("Bright yellow"), atprt14.CFrame * euler(3.14, 0, 0), 1, 1, 1, 1, 1, 1, 0.08)
              end
              pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
              pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * euler(0.1, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.4), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.4), 0.3)
              RH.C0 = clerp(RH.C0, cf(1.05, -0.7, -0.4) * euler(0, 1.57, 0) * euler(0, -0.1, -0.6) * euler(-0.2, 0, 0), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1.05, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, 0.1, 0.6) * euler(-0.2, 0, 0), 0.3)
              if Stagger.Value ~= true then
                do
                  if StunT.Value <= Stun.Value then
                    break
                  end
                  -- DECOMPILER ERROR at PC989: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC989: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            dec.Parent = nil
            move2do = false
            attack = false
            laarmvis = false
            raarmvis = false
            lalegvis = false
            ralegvis = false
            tavis = false
            lpdvis = false
            rpdvis = false
          end
        end
  --end
--end
do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 20 and Mode == "Normal" then
    attack = true
    cooldowns[3] = 0
    laarmvis = true
    lpdvis = true
    raarmvis = true
    rpdvis = true
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    for i = 0, 1, 0.1 do
      swait()
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
      pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0) * euler(0, 0, -0.5), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.2, 0, 0) * euler(0, 0, 0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.2) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.5) * euler(1.7, 0, -0.2) * euler(0, -1, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.4, -0.8, -0.7) * euler(0, 1.57, 0) * euler(0, -0.5, -1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.1, 0, -0.5) * euler(0, -1.57, 0) * euler(0, 0, -0.3), 0.3)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
        end
      end
    end
    so("203691885", pdprt9, 0.5, 1.5)
    so("81116747", pdprt9, 1, 1)
    MagicBlock(BrickColor.new("Bright red"), pdprt7.CFrame, 1, 1, 1, 3, 3, 3, 0.2, 3, pdprt7)
    MagicBlock(BrickColor.new("Bright yellow"), pdprt7.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.1, 3, pdprt7)
    MagicBoom2(BrickColor.new("Bright red"), pdprt7.CFrame, 0.5, 0.5, 0.5, 0.2, 0.5, 0.2, 0.1, pdprt7)
    num = 0
    for i = 0, 1, 0.2 do
      swait()
      num = num + 1
      if num == 5 then
        Bullet(pdprt4)
      end
      if num <= 5 then
        MagicBlock(BrickColor.new("Bright red"), pdprt7.CFrame, 1, 1, 1, 4, 4, 4, 0.25, 1)
      end
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, 0.8, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.6, 0, 0) * euler(0, 0, 0.5), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0, 0, -0.5), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.5) * euler(0.5, 0, -0.3) * euler(0, -1.4, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.7, -0.7) * euler(0, 1.57, 0) * euler(0, 0, -1.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, 0, -0.5) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0.4), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
        end
      end
    end
        hitfloor2, posfloor2 = rayCast(pdprt9.Position, CFrame.new(pdprt9.Position, pdprt9.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
        if hitfloor2 ~= nil then
          CeEf = RootPart.CFrame * cf(0, 0, -10)
          mana.Value = mana.Value - 20
          local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          ref.CFrame = cf(posfloor2)
          game:GetService("Debris"):AddItem(ref, 10)
          so("172146984", ref, 1, 0.7)
          so("163573436", ref, 1, 0.4)
          MagicWave(BrickColor.new("Bright red"), cf(posfloor2), 1, 1, 1, 1, 0.5, 1, 0.07)
          MagicCircle(BrickColor.new("Bright yellow"), cf(posfloor2), 5, 5, 5, 6, 4, 6, 0.05)
          MagniDamage(ref, 15, 10, 10, math.random(30, 40), "Knockdown2", true, "Damage", 0.1, 200, 15, ref, 0.4, 1)
          for i = 1, 4 do
            swait(4)
            ref.CFrame = CeEf
            hitfloorr, posfloorr = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
            if hitfloorr ~= nil then
              ref.CFrame = cf(posfloorr)
              so("172146984", ref, 1, 0.7)
              so("163573436", ref, 1, 0.4)
              MagicWave(BrickColor.new("Bright red"), cf(ref.Position), 1, 1, 1, 1, 0.5, 1, 0.07)
              MagicCircle(BrickColor.new("Bright yellow"), cf(ref.Position), 5, 5, 5, 6, 4, 6, 0.05)
              MagniDamage(ref, 15, 6, 8, math.random(30, 40), "Knockdown2", true, "Damage", 0.05, 200, 15, ref, 0.4, 1)
            end
            CeEf = CeEf * cf(0, 0, -10)
			if Stagger.Value ~= true then
              do
                if StunT.Value <= Stun.Value then
                  break
                end
              end
			 end
			end
          ref.Parent = nil
            swait(10)
            dec.Parent = nil
            attack = false
            laarmvis = false
            raarmvis = false
            lalegvis = false
            ralegvis = false
            tavis = false
            lpdvis = false
            rpdvis = false
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
  cooldowns[4] = 0
  if Mode == "Normal" then
    attack = true
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    Clone()
    Mode = "AilaBot"
    AilaTarget = "Nah"
    AilaMode = "Passive"
    laarmvis = false
    raarmvis = false
    lalegvis = false
    ralegvis = false
    tavis = false
    lpdvis = false
    rpdvis = false
    for i = 0, 1, 0.1 do
      swait()
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
      pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, -0.6) * euler(0, 1.3, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, 0.5) * euler(0, -1, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.2) * euler(0, -1.57, 0) * euler(-0.2, 0.1, 0.3), 0.3)
    end
    Clone()
    refa = part(3, workspace, 0, 0, BrickColor.new("Black"), "Reference", vt())
    refa.Anchored = true
    refa.CFrame = RootPart.CFrame * cf(0, 5, -8)
    newp = parti:Clone()
    newp.Parent = refa
    newp.Enabled = true
    newp.Size = ns({NumberSequenceKeypoint.new(0, 10), NumberSequenceKeypoint.new(1, 4)})
    for i = 0, 1, 0.1 do
      swait()
      ElecEffect(refa.CFrame, 6, 6, 6)
      pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
      pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.2) * euler(2.2, 0, -0.1) * euler(0, 1.3, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.2) * euler(1.8, 0, 0.3) * euler(0, -1, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0) * euler(0, -1.57, 0) * euler(0, 0.1, 0.2), 0.3)
    end
    for i = 1, 10 do
      swait()
      ElecEffect(refa.CFrame, 6, 6, 6)
    end
    so("300915867", refa, 1, 1)
    AilaTarget = "Dasd"
    abrawld8.C0 = euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0, 0, -0.2)
    abrawld10.C0 = euler(0, 0, 0) * cf(0, 0, 0)
    ablawld8.C0 = euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0, 0, -0.2)
    ablawld10.C0 = euler(0, 0, 0) * cf(0, 0, 0)
    ailabot.Parent = Character
    abpos.position = refa.Position
    abgy.cframe = RootPart.CFrame * euler(0, 0, 3.14)
    abtprt1.CFrame = cf(refa.Position)
    for i = 1, #ABWelds do
      ABWelds[i].Parent = abtprt1
    end
    for i = 1, #AilaBot do
      AilaBot[i].Transparency = 1
    end
    for d = 1, 0, -0.02 do
      swait()
      ElecEffect(refa.CFrame, 6, 6, 6)
      for i = 1, #AilaBot do
        AilaBot[i].Transparency = d
        abhprt12v.Transparency = 1
        abhprt13v.Transparency = 1
        if d >= 0.5 then
          newp.Enabled = false
        end
      end
    end
    for i = 1, #AilaBot do
      AilaBot[i].Transparency = 0
      abhprt12v.Transparency = 1
      abhprt13v.Transparency = 1
    end
    refa.Parent = nil
    dec.Parent = nil
    attack = false
    for i = 1, 0, -0.04 do
      swait()
      AilaTarget = "Nah"
      AilaMode = "Passive"
      AilaTarget2 = nil
      acloserightfist()
      abhprt12v.Transparency = i
      abhprt13v.Transparency = i
      hwld1.C0 = clerp(hwld1.C0, euler(0.1, 0, 3.14) * cf(0, 2.5, 0.1), 0.1)
      abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, -0.3) * cf(0, 0, 0), 0.1)
      abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0, 0, -0.4), 0.1)
      abrawld10.C0 = clerp(abrawld10.C0, euler(0, 0.8, 0) * cf(0, 0, 0), 0.1)
      ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, -0.3) * cf(0, 0, 0), 0.1)
      ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0, 0, -0.4), 0.1)
      ablawld10.C0 = clerp(ablawld10.C0, euler(0, 0.8, 0) * cf(0, 0, 0), 0.1)
      abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, 0, 0) * cf(0, -0.2, 0) * euler(0, 0, 0), 0.1)
      abw2wld1.C0 = clerp(abw2wld1.C0, euler(0, 0, 0) * cf(0, -0.2, -0.4), 0.2)
    end
    abhprt12v.Transparency = 0
    abhprt13v.Transparency = 0
    AilaMode = "Ranged"
    AilaTarget = "Nearest"
  elseif Mode == "AilaBot" then
      attack = true
      Mode = "Normal"
      AilaTarget = "Dasd"
      AilaMode = "Passive"
      while ailaattack == true do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.2, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.5) * euler(0, -1, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2.8, 0, 0.5) * euler(0, 0.5, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
      end
      ailaattack = true
      for i = 0, 10 do
        swait()
        if i % 4 == 0 then
          ElecEffect(LeftArm.CFrame * cf(0, 1, 0), 1, 1, 1)
          ElecEffect(RightArm.CFrame * cf(0, -1, 0), 1, 1, 1)
        end
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.05, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.57, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.6, -0.1), 0.3)
      end
      refa = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      refa.Anchored = true
      refa.CFrame = abtprt1.CFrame
      game:GetService("Debris"):AddItem(refa, 10)
      newp = parti:Clone()
      newp.Parent = refa
      newp.Enabled = true
      newp.Size = ns({NumberSequenceKeypoint.new(0, 10), NumberSequenceKeypoint.new(1, 4)})
      for i = 0, 20 do
        swait()
        if i >= 10 then
          newp.Enabled = true
        end
        if i % 4 == 0 then
          ElecEffect(LeftArm.CFrame * cf(0, 1, 0), 1, 1, 1)
          ElecEffect(RightArm.CFrame * cf(0, -1, 0), 1, 1, 1)
        end
        abhprt12v.Transparency = i / 10
        abhprt13v.Transparency = i / 10
        ElecEffect(abtprt1.CFrame, 6, 6, 6)
        aopenleftfist()
        aopenrightfist()
        abtwld1.C1 = clerp(abtwld1.C1, euler(0, 0, 0), 0.3)
        hwld1.C0 = clerp(hwld1.C0, euler(0.3, 0, 3.14) * cf(0, 2.5, 0.3), 0.3)
        abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
        abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.1, 0, -0.2), 0.3)
        abrawld10.C0 = clerp(abrawld10.C0, euler(0, 0.2, 0) * cf(0, 0, 0), 0.3)
        ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
        ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.1, 0, -0.2), 0.3)
        ablawld10.C0 = clerp(ablawld10.C0, euler(0, 0.2, 0) * cf(0, 0, 0), 0.3)
        abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, 3.14, 0) * cf(0, 0, -0.5) * euler(-0.5, 0, 0), 0.3)
        abw2wld1.C0 = clerp(abw2wld1.C0, euler(0, 0, 3.14) * cf(0, -0.8, -0.4), 0.3)
        abw2wld5.C0 = clerp(abw2wld5.C0, euler(0, 0, 0) * cf(0.1, 0.6, 0), 0.3)
        abw2wld6.C0 = clerp(abw2wld6.C0, euler(0, 0, 0) * cf(-0.1, 0.6, 0), 0.3)
      end
      for d = 0, 1, 0.1 do
        swait()
        ElecEffect(abtprt1.CFrame, 6, 6, 6)
        for i = 1, #AilaBot do
          AilaBot[i].Transparency = d
          abhprt12v.Transparency = 1
          abhprt13v.Transparency = 1
        end
      end
      ailabot.Parent = nil
      newp.Enabled = false
      ailaattack = false
      attack = false
    end
  end
findNearestTorso = function(pos)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = 50
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
MagniDamage = function(Part, magni, mindam, maxdam, knock, Type, Ranged, Dec, DecAm, Dur, stun, KnockP, Deb, KnockType)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head == nil then
        head = c:findFirstChild("Hitbox")
      end
      if head == nil then
        head = c:findFirstChild("Head")
      end
      if head == nil then
        head = c:findFirstChild("HumanoidRootPart")
      end
      if head == nil then
        head = c:findFirstChild("HitPart")
      end
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          if stun == nil then
            stun = math.random(5, 10)
          end
          Damagefunc(head, mindam, maxdam, knock, Type, KnockP, Deb, KnockType, stun, nil, nil, Ranged, Dec, DecAm, Dur)
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
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, Part)
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
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, Part})
      else
        if Type == 4 then
          table.insert(Effects, {prt, "Block2Fire", delay, x3, y3, z3, msh})
        end
      end
    end
  end
end
MagicSnowflake = function(brickcolor, cframe, eul, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe * eul
  ID = ""
  rand = math.random(1, 3)
  if rand == 1 then
    ID = "187687161"
  else
    if rand == 2 then
      ID = "187687175"
    else
      ID = "187687193"
    end
  end
  msh = mesh("SpecialMesh", prt, "FileMesh", ID, vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Snowflake", delay, cframe, msh})
end
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  if parent == nil then
    prt.Parent = workspace
  else
    prt.Parent = parent
  end
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh})
end
MagicBoom2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Part)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "1323306", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Block4", delay, x3, y3, z3, msh, Part})
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
MagicIcicle = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "1778999", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  for i = 1, 5 do
    BreakEffect(BrickColor.new("Cyan"), prt.CFrame * cf(0, 4, 0), math.random(20, 80) / 100, math.random(2, 10), math.random(20, 80) / 100)
  end
  for i = 1, 15 do
    local freezepart = part(3, workspace, 0.5, 0.5, BrickColor.new("Bright blue"), "Ice Part", vt(math.random(1, 2) + math.random(), math.random(1, 2) + math.random(), math.random(1, 2) + math.random()))
    freezepart.Anchored = true
    freezepart.CanCollide = true
    freezepart.CFrame = cframe * cf(math.random(-300, 300) / 100, 4, math.random(-300, 300) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(freezepart, 10)
  end
  table.insert(Effects, {prt, "Ice", delay, msh, 1, 0.2})
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
Bullet = function(Part)
  bullet = part(3, workspace, 0, 0, BrickColor.new("Bright yellow"), "Bullet", vt())
  bmsh = mesh("CylinderMesh", bullet, "", "", vt(0, 0, 0), vt(2, 4, 2))
  bullet.CanCollide = true
  bullet.CFrame = Part.CFrame * euler(0, 0, 1.57)
  bullet.Velocity = Part.CFrame * euler(1.57, 0, 0).lookVector * 40
  game:GetService("Debris"):AddItem(bullet, 5)
end
ElecEffect = function(cff, x, y, z)
  local prt = part(3, workspace, 0, 0, BrickColor.new("Medium blue"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 10)
  xval = math.random() / 9
  yval = math.random() / 9
  zval = math.random() / 9
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  eul1 = math.random(-50, 50)
  eul2 = math.random(-50, 50)
  eul3 = math.random(-50, 50)
  euld = euler(eul1, eul2, eul3)
  euld2 = euler(-eul1, -eul2, -eul3)
  Effects[#Effects + 1] = {prt, "Elec", 0.05, x, y, z, xval, yval, zval, msh, euld, euld2}
end
ElecEffect2 = function(cff, x, y, z)
  local prt = part(3, workspace, 0, 0, BrickColor.new("Medium blue"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 10)
  xval = math.random() / 7
  yval = math.random() / 7
  zval = math.random() / 7
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  eul1 = math.random(-50, 50)
  eul2 = math.random(-50, 50)
  eul3 = math.random(-50, 50)
  euld = euler(eul1, eul2, eul3)
  euld2 = euler(-eul1, -eul2, -eul3)
  Effects[#Effects + 1] = {prt, "Elec", 0.1, x, y, z, xval, yval, zval, msh, euld, euld2}
end
Clone = function()
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local c = part(3, workspace, 0, 0.5, BrickColor.new("Bright blue"), "Effect", v.Size)
      c.Anchored = true
      c.CFrame = v.CFrame
      game:GetService("Debris"):AddItem(c, 5)
      local cmsh = nil
      if v.Name == "Head" then
        cmsh = mesh("SpecialMesh", c, "Head", "nil", vt(0, 0, 0), v.Mesh.Scale)
      else
        cmsh = mesh("BlockMesh", c, "nil", "nil", vt(0, 0, 0), vt(1, 1, 1))
      end
      table.insert(Effects, {c, "Cylinder", 0.05, 0.1, 0.1, 0.1, cmsh})
    end
  end
end
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
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
      brigatk = false
      Damage = math.floor(Damage)
      coroutine.resume(coroutine.create(function(Hum, Dam)
	hit.Parent.Humanoid:TakeDamage(Damage)
  end
), h, Damage)
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
                  if Delay == 0 then
                    debounce.Parent = nil
                  end
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
  removeControl()
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
        if Mode ~= "Normal" then
          combo = 0
        end
		if Mode == "Normal" then
        attackthreecombo()
		elseif Mode == "AilaBot" then
			attackthree()
			end
      else
        if combo == 3 then
          combo = 0
          attackfour()
        end
      end
    end
  end
  resumeControl()
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        swait()
      end
    end
    if attack == false then
      combo = 0
      laarmvis = false
      raarmvis = false
      lalegvis = false
      ralegvis = false
      tavis = false
      lpdvis = false
      rpdvis = false
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
visormouth = true
visoreye = true
key = function(key)
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
  if ((key == "q" and Mode ~= "AilaBot") or key == "e") and Mode == "AilaBot" then
    ChangeTarget()
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
ds = function(mouse)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Fen loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local walk = 0
local walkforw = true
local breakp = false
while 1 do
  swait()
  if Mode == "Normal" then
    cooldownsadd[1] = 0.35
    cooldownsadd[2] = 0.23
    cooldownsadd[3] = 0.28
    fenbarmove1.Text = "(Z)\nAila Stingers"
    fenbarmove2.Text = "(X)\nBooster Blaze"
    fenbarmove3.Text = "(C)\nGround Bunker"
  else
    cooldownsadd[1] = 0.8
    cooldownsadd[2] = 0.18
    cooldownsadd[3] = 0.28
    fenbarmove1.Text = "(Z)\nEnergy Drain"
    fenbarmove2.Text = "(X)\nParticle Cannon"
    fenbarmove3.Text = "(C)\n"
  end
  if Mode == "AilaBot" and AilaMode == "Ranged" and AilaTarget2 ~= nil and ailaattack == false and 5 <= mana.Value and math.random(1, 30) == 1 then
    mana.Value = mana.Value - 5
    coroutine.resume(coroutine.create(function()
  d = math.random(1, 4)
  if d == 1 then
    LaserShot()
  else
    if d == 2 then
      SatelliteShot()
    else
      if d == 3 then
        QuadBarrage()
      else
        if d == 4 then
          QuadBurst()
        end
      end
    end
  end
end))
  end
  abtwld8.C0 = abtwld8.C0 * euler(0, 0.05, 0)
  abtwld9.C0 = abtwld9.C0 * euler(0, -0.08, 0)
  abtwld10.C0 = abtwld10.C0 * euler(0, 0.11, 0)
  if ailaattack == false then
    if AilaTarget == "None" then
      AilaTarget2 = nil
    else
      if AilaTarget == "Target" then
        abgy.cframe = cf(abtprt4.Position, AilaTarget2.Position) * euler(0, 0, 3.14)
        if (AilaTarget2.Parent:findFirstChild("Humanoid")) ~= nil and AilaTarget2.Parent.Humanoid.Health <= 0 then
          AilaTarget = "None"
          AilaTarget2 = nil
        end
      else
        if AilaTarget == "Nearest" then
          target = findNearestTorso(RootPart.Position)
          if target ~= nil then
            AilaTarget2 = target
            abgy.cframe = cf(abtprt4.Position, target.Position) * euler(0, 0, 3.14)
          else
            AilaTarget2 = nil
          end
        end
      end
    end
  end
  if AilaMode == "Ranged" then
    abtwld1.C0 = clerp(abtwld1.C0, cf(0, donum, 0), 0.3)
    if AilaTarget2 == nil then
      pos4 = vt(RootPart.Position.X, abtprt4.Position.Y, RootPart.Position.Z)
      abgy.cframe = cf(abtprt4.Position, pos4) * euler(0, 0, 3.14)
      if ailaattack == false then
        abtwld1.C1 = clerp(abtwld1.C1, euler(0, 0, 0), 0.3)
        abw1wld3.C0 = clerp(abw1wld3.C0, cf(0, -0.6, 0) * euler(0, 0, 0), 0.2)
        abw2wld1.C0 = clerp(abw2wld1.C0, euler(0, 0, 3.14) * cf(0, -0.8, -0.4), 0.2)
        abw2wld5.C0 = clerp(abw2wld5.C0, euler(0, 0, 0) * cf(0.1, 0.6, 0), 0.2)
        abw2wld6.C0 = clerp(abw2wld6.C0, euler(0, 0, 0) * cf(-0.1, 0.6, 0), 0.2)
        hwld1.C0 = clerp(hwld1.C0, euler(0.3, 0, 3.14) * cf(0, 2.5, 0.3), 0.3)
        abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
        abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.1, 0, -0.2), 0.2)
        abrawld10.C0 = clerp(abrawld10.C0, euler(0, 0.2, 0) * cf(0, 0, 0), 0.2)
        ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
        ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.1, 0, -0.2), 0.2)
        ablawld10.C0 = clerp(ablawld10.C0, euler(0, 0.2, 0) * cf(0, 0, 0), 0.2)
      end
    else
      if ailaattack == false then
        abtwld1.C1 = clerp(abtwld1.C1, euler(0, 0, 0), 0.3)
        abw1wld3.C0 = clerp(abw1wld3.C0, euler(0, 0, 0) * cf(0, -0.6, 0) * euler(-1.6, 0, 0), 0.2)
        abw2wld1.C0 = clerp(abw2wld1.C0, euler(0, 0, 0) * cf(0, -0.2, -0.4), 0.2)
        abw2wld5.C0 = clerp(abw2wld5.C0, euler(0, 0, 0) * cf(0.2, -0.2, 0), 0.2)
        abw2wld6.C0 = clerp(abw2wld6.C0, euler(0, 0, 0) * cf(-0.2, -0.2, 0), 0.2)
        hwld1.C0 = clerp(hwld1.C0, euler(0.3, 0, 3.14) * cf(0, 2.5, 0.3), 0.3)
        abrawld2.C0 = clerp(abrawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
        abrawld8.C0 = clerp(abrawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(-0.1, 0, 0), 0.2)
        abrawld10.C0 = clerp(abrawld10.C0, euler(0, 0.6, 0) * cf(0, 0, 0), 0.2)
        ablawld2.C0 = clerp(ablawld2.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.2)
        ablawld8.C0 = clerp(ablawld8.C0, euler(3.14, 0, 0) * cf(0, 0.9, 0) * euler(0.1, 0, -0.2), 0.2)
        ablawld10.C0 = clerp(ablawld10.C0, euler(0, 0.2, 0) * cf(0, 0, 0), 0.2)
      end
    end
  end
  if Humanoid.Health <= 0 then
    attack = true
    if explode == false then
      explode = true
      RootPart.Anchored = true
    end
    resumeControl()
    modelzorz.Parent = workspace
    game:GetService("Debris"):AddItem(modelzorz, 30)
    pdriver.Parent = workspace
    game:GetService("Debris"):AddItem(pdriver, 30)
    armor.Parent = workspace
    game:GetService("Debris"):AddItem(armor, 30)
    for i = 1, #Weapon do
      Weapon[i].Parent = modelzorz
      Weapon[i].CanCollide = true
    end
    for i = 1, #PDriver do
      PDriver[i].Parent = pdriver
      PDriver[i].CanCollide = true
    end
    for i = 1, #Armor do
      if Armor[i].Name == "Armor Head Part12v" or Armor[i].Name == "Armor Head Part13v" then
        Armor[i].Parent = nil
      end
      Armor[i].Parent = armor
      Armor[i].CanCollide = true
    end
    if breakp == false then
      breakp = true
      for _,c in pairs(Character:children()) do
        if c.className == "Part" then
          c.CanCollide = false
        end
      end
      for i = 1, #Welds do
        if math.random(1, 5) == 1 then
          Welds[i].Parent = nil
        else
          Welds[i].Parent = lprt1
        end
        if Welds[i].Part0.Parent == Character or Welds[i].Part1.Parent == Character then
          Welds[i].Parent = nil
        end
      end
      for i = 1, #AWelds do
        if math.random(1, 5) == 1 then
          AWelds[i].Parent = nil
        else
          AWelds[i].Parent = atprt1
        end
        if AWelds[i].Part0.Parent == Character or AWelds[i].Part1.Parent == Character then
          AWelds[i].Parent = nil
        end
      end
      for i = 1, #PDWelds do
        if math.random(1, 5) == 1 then
          PDWelds[i].Parent = nil
        else
          PDWelds[i].Parent = pdprt1
        end
        if PDWelds[i].Part0.Parent == Character or PDWelds[i].Part1.Parent == Character then
          PDWelds[i].Parent = nil
        end
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
    passive1.Value = 0.1
    passive2.Value = 0
    if tavis == true then
      passive1.Value = passive1.Value - 0.2
      passive2.Value = passive2.Value + 0.05
    end
    if laarmvis == true then
      passive1.Value = passive1.Value - 0.1
      passive2.Value = passive2.Value + 0.05
    end
    if raarmvis == true then
      passive1.Value = passive1.Value - 0.1
      passive2.Value = passive2.Value + 0.05
    end
    if lalegvis == true then
      passive1.Value = passive1.Value - 0.1
      passive2.Value = passive2.Value + 0.05
    end
    if ralegvis == true then
      passive1.Value = passive1.Value - 0.1
      passive2.Value = passive2.Value + 0.05
    end
    for i = 1, #PDriver do
      -- DECOMPILER ERROR at PC16506: Unhandled construct in 'MakeBoolean' P1

      -- DECOMPILER ERROR at PC16506: Unhandled construct in 'MakeBoolean' P1

      if 0 <= i and i <= 10 and lpdvis == true and 0 < PDriver[i].Transparency then
        PDriver[i].Transparency = PDriver[i].Transparency - 0.08
      end
      if lpdvis == false and PDriver[i].Transparency < 1 then
        PDriver[i].Transparency = PDriver[i].Transparency + 0.05
      end
      -- DECOMPILER ERROR at PC16548: Unhandled construct in 'MakeBoolean' P1

      -- DECOMPILER ERROR at PC16548: Unhandled construct in 'MakeBoolean' P1

      if 11 <= i and i <= 20 and rpdvis == true and 0 < PDriver[i].Transparency then
        PDriver[i].Transparency = PDriver[i].Transparency - 0.08
      end
      if rpdvis == false and PDriver[i].Transparency < 1 then
        PDriver[i].Transparency = PDriver[i].Transparency + 0.05
      end
    end
    for i = 1, #Armor do
      -- DECOMPILER ERROR at PC16598: Unhandled construct in 'MakeBoolean' P1

      -- DECOMPILER ERROR at PC16598: Unhandled construct in 'MakeBoolean' P1

      if string.sub(Armor[i].Name, 7, 13) == "LeftArm" and laarmvis == true and 0 < Armor[i].Transparency then
        Armor[i].Transparency = Armor[i].Transparency - 0.08
      end
      if laarmvis == false and Armor[i].Transparency < 1 then
        Armor[i].Transparency = Armor[i].Transparency + 0.05
      end
      -- DECOMPILER ERROR at PC16643: Unhandled construct in 'MakeBoolean' P1

      -- DECOMPILER ERROR at PC16643: Unhandled construct in 'MakeBoolean' P1

      if string.sub(Armor[i].Name, 7, 14) == "RightArm" and raarmvis == true and 0 < Armor[i].Transparency then
        Armor[i].Transparency = Armor[i].Transparency - 0.08
      end
      if raarmvis == false and Armor[i].Transparency < 1 then
        Armor[i].Transparency = Armor[i].Transparency + 0.05
      end
      -- DECOMPILER ERROR at PC16688: Unhandled construct in 'MakeBoolean' P1

      -- DECOMPILER ERROR at PC16688: Unhandled construct in 'MakeBoolean' P1

      if string.sub(Armor[i].Name, 7, 13) == "LeftLeg" and lalegvis == true and 0 < Armor[i].Transparency then
        Armor[i].Transparency = Armor[i].Transparency - 0.08
      end
      if lalegvis == false and Armor[i].Transparency < 1 then
        Armor[i].Transparency = Armor[i].Transparency + 0.05
      end
      -- DECOMPILER ERROR at PC16733: Unhandled construct in 'MakeBoolean' P1

      -- DECOMPILER ERROR at PC16733: Unhandled construct in 'MakeBoolean' P1

      if string.sub(Armor[i].Name, 7, 14) == "RightLeg" and ralegvis == true and 0 < Armor[i].Transparency then
        Armor[i].Transparency = Armor[i].Transparency - 0.08
      end
      if ralegvis == false and Armor[i].Transparency < 1 then
        Armor[i].Transparency = Armor[i].Transparency + 0.05
      end
      -- DECOMPILER ERROR at PC16778: Unhandled construct in 'MakeBoolean' P1

      -- DECOMPILER ERROR at PC16778: Unhandled construct in 'MakeBoolean' P1

      if string.sub(Armor[i].Name, 7, 11) == "Torso" and tavis == true and 0 < Armor[i].Transparency then
        Armor[i].Transparency = Armor[i].Transparency - 0.08
      end
      if tavis == false and Armor[i].Transparency < 1 then
        Armor[i].Transparency = Armor[i].Transparency + 0.05
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
      if (((500 > idle or attack == false) and Anim == "Walk") or Anim == "Run") and move2do == false then
        if walkforw == true then
          RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          if attack == false then
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(1, 0, 0), Mvmt.Value * 10 / 50)
          else
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          end
        else
          RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          if attack == false then
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(1, 0, 0), Mvmt.Value * 10 / 50)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(-1, 0, 0), Mvmt.Value * 10 / 50)
          else
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          end
        end
      else
        RH.C1 = clerp(RH.C1, RHC1, 0.2)
        LH.C1 = clerp(LH.C1, LHC1, 0.2)
        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      end
      if 1 < RootPart.Velocity.y and hitfloor == nil then
        Anim = "Jump"
        if attack == false then
          pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
          pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 1), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
            pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.5), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.5), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
              pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.1, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.1), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4 - (donum) / 5, 0, 0.5 - (donum) / 5) * euler(0, -1, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4 - (donum) / 5, 0, -0.5 - (donum) / 5) * euler(0, 0.5, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.1, 0.1), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(-0.2, 0.4, 0.2), 0.2)
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
                pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
                pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 0.1), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.1), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  pdwld9.C0 = clerp(pdwld9.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
                  pdwld19.C0 = clerp(pdwld19.C0, euler(0, 0, 0) * cf(0, -0.2, 0), 0.1)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 0.1), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.1), 0.2)
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
            if Thing[2] == "SatelliteStrike" then
              if Thing[5] < 80 then
                Thing[5] = Thing[5] + 1.5
                Thing[4].Scale = vt(Thing[5], 5, Thing[5])
              else
                refda = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                refda.Anchored = true
                refda.CFrame = cf(Thing[1].Position)
                game:GetService("Debris"):AddItem(refda, 1)
                so("300916057", refda, 1, 1)
                MagniDamage(refda, 8, 4, 8, 0, "Normal", true, "Movement", 0.04, 300, math.random(3, 4), refda, 0, 1)
                MagicHead(BrickColor.new("Medium blue"), cf(refda.Position), 3, 9999, 3, 1, 1, 1, 0.1)
                for i = 1, 3 do
                  MagicCircle(BrickColor.new("Medium blue"), cf(refda.Position), 10, 10, 10, 4 * i, 4 * i, 4 * i, 0.08)
                end
                Thing[1].Parent = nil
                table.remove(Effects, e)
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
                      Thing[6] = Thing[6] + 0.05
                      Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.4, 0)
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
                        if Thing[2] == "Block3" then
                          Thing[1].CFrame = Thing[8].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                          Mesh = Thing[7]
                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Block4" then
                            Thing[1].CFrame = Thing[8].CFrame * cf(0, -Thing[7].Scale.Y, 0) * euler(3.14, 0, 0)
                            Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Block2Fire" then
                              Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                              Mesh = Thing[7]
                              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                              if 0.3 <= Thing[1].Transparency then
                                Thing[1].BrickColor = BrickColor.new("Bright red")
                              else
                                Thing[1].BrickColor = BrickColor.new("Bright yellow")
                              end
                            else
                              if Thing[2] == "Cylinder" then
                                Mesh = Thing[7]
                                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                              else
                                if Thing[2] == "Blood" then
                                  Mesh = Thing[7]
                                  Thing[1].CFrame = Thing[1].CFrame * cf(0, -0.5, 0)
                                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                else
                                  if Thing[2] == "Elec" then
                                    Mesh = Thing[10]
                                    Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                    Thing[1].CFrame = Thing[1].CFrame * Thing[11] * cf(0, 0, 0.2)
                                    Thing[1].Rotation = vt(0, 0, 0)
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
      if StunT.Value <= Stun.Value then
        fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
      else
        fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / 100, 0)), nil, 1, 0.4, true)
      end
      fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
      if 100 <= mana.Value then
        mana.Value = 100
      else
        local managain = 13
        if Mode ~= "Normal" then
          managain = 20
        end
        if mananum <= managain then
          mananum = mananum + 1
        else
          mananum = 0
          mana.Value = mana.Value + 1
        end
      end
      do
        for i = 1, #cooldowns do
          if cooldownmax <= cooldowns[i] then
            cooldowns[i] = cooldownmax
          else
            cooldowns[i] = cooldowns[i] + cooldownsadd[i]
          end
        end
        -- DECOMPILER ERROR at PC19603: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC19603: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC19603: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
end