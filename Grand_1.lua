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
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local holdz = false
local doing2 = false
local do2mode = "none"
local do2target = nil
local dodrop = false
local instastun = false
local guarding = false
local canguardoff = true
local doing4 = false
local sref = nil
local grabpos = Instance.new("BodyPosition")
local grabhit = false
local grabTarget = nil
local cangrab = true
local mode = "Sheathed"
local move1 = "(Z)\nEarth Breaker"
local move2 = "(X)\nChase/Drop"
local move3 = "(C)\nSiege Guard"
local move4 = "(V)\nEpicenter"
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
local cooldownadd1 = 0.22
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.28
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.24
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
NewCol = BrickColor.new("Medium stone grey").Color
NewCol2 = BrickColor.new("Dark stone grey").Color
NewCol3 = BrickColor.new("Hurricane grey").Color
NewCol4 = BrickColor.new("Smoky grey").Color
EffectCol = BrickColor.new("Bright yellow").Color
print(BrickColor.new(NewCol2))
local mdec = Instance.new("NumberValue", Decrease)
mdec.Name = "DecreaseDef"
mdec.Value = 0.4
grnd = it("BoolValue", mdec)
grnd.Name = "Grand"
grnd.Value = true
local mdec2 = Instance.new("NumberValue", Decrease)
mdec2.Name = "DecreaseMvmt"
mdec2.Value = 0.1
grnd = it("BoolValue", mdec2)
grnd.Name = "Grand"
grnd.Value = true
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
--[[
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
until gud
]]
if Character:findFirstChild("Auswirkung", true) ~= nil then
  Character:findFirstChild("Auswirkung", true).Parent = nil
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
StunT.Value = 200
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
grnd = it("BoolValue", passive2)
grnd.Name = "Grand"
grnd.Value = true
local passive3 = Instance.new("NumberValue", Decrease)
passive3.Name = "DecreaseMvmt"
passive3.Value = 0
grnd = it("BoolValue", passive3)
grnd.Name = "Grand"
grnd.Value = true
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
modelzorz.Name = "Auswirkung"
local handle = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Handle", vt())
local prt1 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol), "Part01", vt())
local prt3 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol3), "Part03", vt())
local prt4 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol4), "Part04", vt())
local prt6 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol), "Part06", vt())
local prt7 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol), "Part07", vt())
local prt8 = part(3, modelzorz, 0.1, 0, BrickColor.new(NewCol), "Part08", vt())
prt8.Material = "Metal"
local prt9 = part(3, modelzorz, 0.1, 0, BrickColor.new(NewCol), "Part09", vt())
prt9.Material = "Metal"
local prt10 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol3), "Part10", vt())
local prt11 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part11", vt())
local prt12 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol3), "Part12", vt())
local prt13 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part13", vt())
local prt14 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol3), "Part14", vt())
local prt15 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part15", vt())
local prt16 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part16", vt())
local prt18 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part18", vt())
local prt19 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part19", vt())
local prt20 = part(3, modelzorz, 0.4, 0, BrickColor.new(NewCol), "Part20", vt())
local prt23 = part(3, modelzorz, 0.3, 0, BrickColor.new(NewCol4), "Part23", vt())
local prt24 = part(3, modelzorz, 0.3, 0, BrickColor.new(NewCol4), "Part24", vt())
hmsh = mesh("BlockMesh", handle, "", "", vt(0, 0, 0), vt(3, 3, 3))
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(1.35, 14, 5))
msh3 = mesh("CylinderMesh", prt3, "", "", vt(0, 0, 0), vt(1.25, 1.9, 7))
msh4 = mesh("CylinderMesh", prt4, "", "", vt(0, 0, 0), vt(1.55, 1.75, 5))
msh6 = mesh("SpecialMesh", prt6, "Torso", "nil", vt(0, 0, 0), vt(5, 1, 1.5))
msh7 = mesh("SpecialMesh", prt7, "Torso", "nil", vt(0, 0, 0), vt(10, 1.25, 1.5))
msh8 = mesh("SpecialMesh", prt8, "Torso", "nil", vt(0, 0, 0), vt(4.5, 1, 1.6))
msh9 = mesh("SpecialMesh", prt9, "Torso", "nil", vt(0, 0, 0), vt(9.5, 1, 1.6))
msh10 = mesh("CylinderMesh", prt10, "", "", vt(0, 0, 0), vt(1, 1.9, 7))
msh11 = mesh("BlockMesh", prt11, "", "", vt(0, 0, 0), vt(1.25, 1.25, 1.7))
msh12 = mesh("CylinderMesh", prt12, "", "", vt(0, 0, 0), vt(0.75, 1.85, 7))
msh13 = mesh("BlockMesh", prt13, "", "", vt(0, 0, 0), vt(0.75, 0.075, 1.9))
msh14 = mesh("CylinderMesh", prt14, "", "", vt(0, 0, 0), vt(0.75, 1.85, 7))
msh15 = mesh("BlockMesh", prt15, "", "", vt(0, 0, 0), vt(0.75, 0.075, 1.9))
msh16 = mesh("BlockMesh", prt16, "", "", vt(0, 0, 0), vt(7.5, 0.5, 1.15))
msh18 = mesh("BlockMesh", prt18, "", "", vt(0, 0, 0), vt(1, 7.5, 1.15))
msh19 = mesh("BlockMesh", prt19, "", "", vt(0, 0, 0), vt(1, 1, 1.15))
msh20 = mesh("BlockMesh", prt20, "", "", vt(0, 0, 0), vt(7, 35, 1))
msh23 = mesh("BlockMesh", prt23, "", "", vt(0, 0, 0), vt(7.5, 0.25, 1))
msh24 = mesh("BlockMesh", prt24, "", "", vt(0, 0, 0), vt(7.5, 0.7, 0.7))
local handlewld = weld(handle, handle, Torso, euler(0, 0, -0.9) * cf(3.2, -3, -0.6))
local wld1 = weld(prt1, prt1, handle, euler(0, 0, 0) * cf(0, 0, 0))
local wld3 = weld(prt1, prt3, prt1, euler(0, 0, 0) * cf(0, -1.35, 0))
local wld4 = weld(prt1, prt4, prt1, euler(0, 0, 0) * cf(0, -1.35, 0))
local wld6 = weld(prt1, prt6, prt1, euler(0, 0, 0) * cf(0, 1.475, 0))
local wld7 = weld(prt1, prt7, prt1, euler(-3.14, 0, 0) * cf(0, 1.7, 0))
local wld8 = weld(prt1, prt8, prt1, euler(0, 0, 0) * cf(0, 1.5, 0))
local wld9 = weld(prt1, prt9, prt1, euler(-3.14, 0, 0) * cf(0, 1.7, 0))
local wld10 = weld(prt1, prt10, prt1, euler(1.57, 0, 0) * cf(0, 1.6, 0))
local wld11 = weld(prt1, prt11, prt1, euler(0, 0, 0.785) * cf(0, 1.6, 0))
local wld12 = weld(prt1, prt12, prt1, euler(1.57, 0, 0) * cf(0.3, 1.6, 0))
local wld13 = weld(prt1, prt13, prt1, euler(0, 0, -2.96) * cf(0.3, 1.6, 0))
local wld14 = weld(prt1, prt14, prt1, euler(1.57, 0, 0) * cf(-0.3, 1.6, 0))
local wld15 = weld(prt1, prt15, prt1, euler(0, 0, 2.18) * cf(-0.3, 1.6, 0))
local wld16 = weld(prt1, prt16, prt1, euler(0, 0, 0) * cf(0, 1.875, 0))
local wld18 = weld(prt1, prt18, prt1, euler(0, 0, 0) * cf(0, 2.675, 0))
local wld19 = weld(prt1, prt19, prt1, euler(0, 0, 0.785) * cf(0, 3.45, 0))
local wld20 = weld(prt1, prt20, prt1, euler(0, 0, 0) * cf(0, 5.275, 0))
local wld23 = weld(prt1, prt23, prt1, euler(0, 0, 0) * cf(0, 8.8, 0))
local wld24 = weld(prt1, prt24, prt1, euler(0.785, 0, 0) * cf(0, 8.825, 0))
di = -1.1
for i = 1, 17 do
  local prt2 = part(3, modelzorz, 0, 0, Torso.BrickColor, "Part02", vt())
  prt2.Material = "Plastic"
  msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(1.5, 0.75, 5))
  local wld2 = weld(prt1, prt2, prt1, euler(math.random(-20, 20) / 100, 0, math.random(-20, 20) / 100) * cf(0, di, 0))
  di = di + 0.148
end
for i = 0.785, 2.356 do
  local prt5 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part05", vt())
  msh5 = mesh("BlockMesh", prt5, "", "", vt(0, 0, 0), vt(1.25, 0.1, 1.95))
  local wld5 = weld(prt1, prt5, prt1, euler(-1.57, i, 0) * cf(0, -1.35, 0))
end
for i = 1.57, 3.15 do
  local prt12 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part12", vt())
  msh12 = mesh("BlockMesh", prt12, "", "", vt(0, 0, 0), vt(1, 0.1, 1.95))
  local wld12 = weld(prt1, prt12, prt1, euler(0, 0, i) * cf(0, 1.6, 0))
end
for i = -0.75, 0.76 do
  local prt17 = part(3, modelzorz, 0.2, 0, BrickColor.new(NewCol2), "Part17", vt())
  msh17 = mesh("BlockMesh", prt17, "", "", vt(0, 0, 0), vt(0.8, 0.5, 0.8))
  local wld17 = weld(prt1, prt17, prt1, euler(0, 0.785, 0) * cf(i, 1.875, 0))
end
for i = -1, 1, 2 do
  local prt21 = part(3, modelzorz, 0.3, 0, BrickColor.new(NewCol4), "Part21", vt())
  local prt22 = part(3, modelzorz, 0.3, 0, BrickColor.new(NewCol4), "Part22", vt())
  msh21 = mesh("BlockMesh", prt21, "", "", vt(0, 0, 0), vt(0.25, 35, 1))
  msh22 = mesh("BlockMesh", prt22, "", "", vt(0, 0, 0), vt(0.7, 35.25, 0.7))
  local wld21 = weld(prt1, prt21, prt1, euler(0, 0, 0) * cf(0.725 * i, 5.275, 0))
  local wld22 = weld(prt1, prt22, prt1, euler(0, 0.785, 0) * cf(0.75 * i, 5.3, 0))
  local prt25 = part(3, modelzorz, 0.3, 0, BrickColor.new(NewCol4), "Part25", vt())
  msh25 = mesh("SpecialMesh", prt25, "FileMesh", "9756362", vt(0, 0, 0), vt(0.14, 0.14, 0.14))
  local wld25 = weld(prt1, prt25, prt1, euler(2.1517, -1.569, 2.1516) * cf(0.75 * i, 8.825, 0))
end
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(prt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local effects = it("Model", modelzorz)
effects.Name = "Effects"
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
local parti = it("ParticleEmitter")
parti.Color = cs(Color3.new(255, 255, 255), EffectCol)
parti.LightEmission = 0
parti.Size = ns(0.2)
parti.Texture = "http://www.roblox.com/asset/?id=37332909"
sizeseq = ns({NumberSequenceKeypoint.new(0, 0.125), NumberSequenceKeypoint.new(0.125, 3), NumberSequenceKeypoint.new(1, 1)})
transseq = ns({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(0.8, 0.8), NumberSequenceKeypoint.new(1, 1)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.ZOffset = 0
parti.Acceleration = vt(0, 0, 0)
parti.LockedToPart = true
parti.Lifetime = nr(0.5)
parti.Rate = 50
parti.Rotation = nr(0, 0)
parti.RotSpeed = nr(500)
parti.Speed = nr(-8)
parti.VelocitySpread = 360
parti.Parent = Torso
parti.Enabled = false
parti2 = parti:Clone()
parti2.Color = cs(EffectCol, Color3.new(255, 255, 255))
parti2.Texture = "http://www.roblox.com/asset/?id=316957314"
sizeseq = ns({NumberSequenceKeypoint.new(0, 0.125), NumberSequenceKeypoint.new(0.5, 8), NumberSequenceKeypoint.new(1, 10)})
transseq = ns({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0.9), NumberSequenceKeypoint.new(1, 1)})
parti2.Transparency = transseq
parti2.Size = sizeseq
parti2.ZOffset = 1
parti2.Lifetime = nr(1)
parti2.Rate = 10
parti2.Rotation = nr(0, 360)
parti2.RotSpeed = nr(100, 360)
parti2.Speed = nr(0)
parti2.VelocitySpread = 0
parti2.Parent = Torso
parti2.Enabled = false
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Auswirkung"
Bin = Tool
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit, sord, dec, timer)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end), sou)
  game:GetService("Debris"):AddItem(sou, 6)
  if sord == true then
    table.insert(Effects, {sou, "Sound", dec, timer})
  end
end

--[[
local m = Instance.new("Model")
m.Name = "G1"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Bright red")
p1.Material = Enum.Material.SmoothPlastic
p1.Name = "Handle1"
p1.CFrame = CFrame.new(7.3959651, 3.02698994, -15.2687664, 0.0110249966, 0.011820009, -0.999869347, -0.0443169847, 0.998953462, 0.0113205202, 0.99895668, 0.0441863909, 0.0115372837)
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1.07000005, 1.00999999, 1.03000021)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Bright red")
p2.Material = Enum.Material.SmoothPlastic
p2.Name = "Finger1"
p2.CFrame = CFrame.new(7.76269388, 2.3578186, -15.521986, -0.0456709899, -0.031088002, -0.998472571, 0.928531349, 0.36732024, -0.0539085492, 0.368434995, -0.929574907, 0.0120902928)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Medium stone grey")
p3.Reflectance = 1
p3.Name = "Finger1"
p3.CFrame = CFrame.new(7.77214003, 2.30489445, -15.3343945, 0.998471141, -0.031697575, -0.0452810936, 0.0537720509, 0.367420048, 0.928499639, -0.0127939964, -0.929515004, 0.368562669)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Elasticity = 0
p3.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Bright red")
p4.Material = Enum.Material.SmoothPlastic
p4.Name = "Finger1"
p4.CFrame = CFrame.new(7.75317955, 2.48131418, -15.745451, -0.0305550061, -0.045938991, -0.998476863, 0.723203421, 0.688535988, -0.0538101122, 0.689959049, -0.723745823, 0.0121849999)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Bright red")
p5.Material = Enum.Material.SmoothPlastic
p5.Name = "Finger2"
p5.CFrame = CFrame.new(7.49076605, 2.31516695, -15.510848, 0.011537008, -0.00959199667, -0.999887347, 0.894087732, 0.447852433, 0.00601996202, 0.447744101, -0.894056141, 0.0137429535)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Bright red")
p6.Material = Enum.Material.SmoothPlastic
p6.Name = "Finger2"
p6.CFrame = CFrame.new(7.48853493, 2.45790052, -15.722806, 0.0142960036, -0.00455499487, -0.999887347, 0.661094189, 0.750279188, 0.00603415351, 0.750166953, -0.661105812, 0.013737265)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Medium stone grey")
p7.Reflectance = 1
p7.Name = "Finger2"
p7.CFrame = CFrame.new(7.49720287, 2.24564171, -15.3285618, 0.999879718, -0.0101936571, 0.0116798682, -0.00587799447, 0.447869986, 0.894079745, -0.014344993, -0.894040704, 0.447756082)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Elasticity = 0
p7.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Medium stone grey")
p8.Reflectance = 1
p8.Name = "Finger3"
p8.CFrame = CFrame.new(7.24741983, 2.28140855, -15.3196745, 0.999876976, -0.0101477392, 0.0119553003, -0.00752299838, 0.358514994, 0.933494031, -0.0137589984, -0.933468819, 0.358394504)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Elasticity = 0
p8.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Bright red")
p9.Material = Enum.Material.SmoothPlastic
p9.Name = "Finger3"
p9.CFrame = CFrame.new(7.23887587, 2.45425844, -15.732728, 0.0145730022, -0.00440199301, -0.999884009, 0.731170893, 0.682151794, 0.00765340216, 0.682038903, -0.731197536, 0.0131596019)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright red")
p10.Material = Enum.Material.SmoothPlastic
p10.Name = "Finger3"
p10.CFrame = CFrame.new(7.24108601, 2.33282137, -15.5077801, 0.0117300097, -0.00961399637, -0.999884844, 0.933506608, 0.358482569, 0.00750444131, 0.358369082, -0.933486819, 0.0131797222)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Medium stone grey")
p11.Reflectance = 1
p11.Name = "Finger4"
p11.CFrame = CFrame.new(6.98758984, 2.26838207, -15.345726, 0.999879777, -0.010185834, 0.0116797686, -0.00558499433, 0.466180235, 0.884672463, -0.0144559955, -0.884631157, 0.466067284)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Elasticity = 0
p11.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Bright red")
p12.Material = Enum.Material.SmoothPlastic
p12.Name = "Finger4"
p12.CFrame = CFrame.new(6.979002, 2.48877501, -15.7353697, 0.0141360089, -0.00448799366, -0.999890029, 0.645409405, 0.763815999, 0.00569612673, 0.763706207, -0.645418644, 0.0136938961)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Bright red")
p13.Material = Enum.Material.SmoothPlastic
p13.Name = "Finger4"
p13.CFrame = CFrame.new(6.98116779, 2.3415935, -15.5264378, 0.0114300074, -0.00957200117, -0.999888897, 0.884624422, 0.466271043, 0.00564872986, 0.466165036, -0.884590209, 0.0137970978)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Symmetric
p13.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Bright red")
p14.Material = Enum.Material.SmoothPlastic
p14.Name = "Finger5"
p14.CFrame = CFrame.new(7.71055412, 2.4123981, -15.0241241, 0.0116380006, 0.0121310074, 0.999858558, 0.975033879, 0.221613079, -0.0140378084, -0.221751913, 0.97505933, -0.00924900174)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Size = Vector3.new(0.25999999, 0.200000003, 0.280000001)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Medium stone grey")
p15.Reflectance = 1
p15.Name = "Finger5"
p15.CFrame = CFrame.new(7.70516491, 2.40221548, -15.1255579, -0.999855459, 0.0129153561, 0.0110614831, 0.0136500048, 0.221656144, 0.975029767, 0.010141002, 0.975039363, -0.221800297)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Symmetric
p15.Elasticity = 0
p15.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.200000003, 0.300000012, 0.200000003)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Bright red")
p16.Material = Enum.Material.SmoothPlastic
p16.Name = "Finger5"
p16.CFrame = CFrame.new(7.7126832, 2.46962452, -14.8892336, 0.0065240059, 0.015805997, 0.99985379, 0.820740521, 0.57112062, -0.0143837389, -0.571264267, 0.820714116, -0.00924662128)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Symmetric
p16.Size = Vector3.new(0.25, 0.200000003, 0.280000001)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Bright red")
p17.Material = Enum.Material.SmoothPlastic
p17.Name = "Part02"
p17.CFrame = CFrame.new(7.40143299, 3.49156332, -15.2482882, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Symmetric
p17.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.10000002, 1, 1.10000002)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.Name = "Part03"
p18.CFrame = CFrame.new(7.39611292, 3.49268794, -15.2732763, 0.999867022, 0.0115775829, 0.011474343, -0.011072997, 0.99900949, -0.0431027897, -0.0119619975, 0.042970039, 0.999004722)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(1, 0.5, 1.11000001)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really red")
p19.Material = Enum.Material.SmoothPlastic
p19.Name = "Part04"
p19.CFrame = CFrame.new(7.22617912, 3.49458694, -15.271266, 0.999867022, 0.0115775829, 0.011474343, -0.011072997, 0.99900949, -0.0431027897, -0.0119619975, 0.042970039, 0.999004722)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.100000001, 0.400000006, 1.12)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Lime green")
p20.Material = Enum.Material.SmoothPlastic
p20.Name = "Part05"
p20.CFrame = CFrame.new(7.08616829, 3.49614716, -15.2695885, 0.999867022, 0.0115775829, 0.011474343, -0.011072997, 0.99900949, -0.0431027897, -0.0119619975, 0.042970039, 0.999004722)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Symmetric
p20.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.100000001, 0.400000006, 1.12)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.SmoothPlastic
p21.Name = "Part06"
p21.CFrame = CFrame.new(7.38987589, 2.96717, -15.7212219, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Symmetric
p21.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.716070294, 0.800000012, 0.899999976)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Bright red")
p22.Material = Enum.Material.SmoothPlastic
p22.Name = "Part07"
p22.CFrame = CFrame.new(7.39778709, 3.33525896, -15.7764101, 0.0117420042, -0.999861002, -0.0118251396, -0.044641003, 0.0112899775, -0.998939812, 0.99893409, 0.0122574307, -0.0445022546)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Symmetric
p22.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("BlockMesh", p22)
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Bright red")
p23.Material = Enum.Material.SmoothPlastic
p23.Name = "Part07"
p23.CFrame = CFrame.new(6.99248123, 2.97475553, -15.7876682, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Symmetric
p23.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("BlockMesh", p23)
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Bright red")
p24.Material = Enum.Material.SmoothPlastic
p24.Name = "Part07"
p24.CFrame = CFrame.new(7.38929415, 2.60971594, -15.808239, 0.0117420042, -0.999861002, -0.0118251396, -0.044641003, 0.0112899775, -0.998939812, 0.99893409, 0.0122574307, -0.0445022546)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Symmetric
p24.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("BlockMesh", p24)
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Bright red")
p25.Material = Enum.Material.SmoothPlastic
p25.Name = "Part07"
p25.CFrame = CFrame.new(7.78558493, 2.96588302, -15.7971878, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("BlockMesh", p25)
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Bright red")
p26.Material = Enum.Material.Neon
p26.Name = "Part08N"
p26.CFrame = CFrame.new(7.38994694, 2.97204852, -15.7209539, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("BlockMesh", p26)
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.75999999, 0.699999988, 0.699999988)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Really black")
p27.Material = Enum.Material.SmoothPlastic
p27.Name = "Part09"
p27.CFrame = CFrame.new(7.38991308, 2.97200489, -15.7209864, 0.0109610027, 0.21543096, -0.976457596, -0.0442080125, 0.975666046, 0.21476014, 0.998962224, 0.0408132821, 0.0202180482)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Symmetric
p27.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("BlockMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.769999981, 0.600000024, 0.600000024)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Bright red")
p28.Material = Enum.Material.Neon
p28.Name = "Part10N"
p28.CFrame = CFrame.new(7.38984203, 2.9661386, -15.7212582, 0.0114250025, 0.423202068, -0.905963302, -0.0439330041, 0.905360341, 0.422366321, 0.998969018, 0.0349761657, 0.0289362781)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Symmetric
p28.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("BlockMesh", p28)
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.779999971, 0.5, 0.5)
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Really black")
p29.Material = Enum.Material.SmoothPlastic
p29.Name = "Part11"
p29.CFrame = CFrame.new(7.38979197, 2.96127677, -15.721468, 0.0109900022, 0.720627844, -0.693234742, -0.0436359942, 0.69296217, 0.719652712, 0.998987019, 0.0223410279, 0.0390609764)
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Symmetric
p29.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.790000021, 0.400000006, 0.400000006)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Bright red")
p30.Material = Enum.Material.SmoothPlastic
p30.Name = "Part13"
p30.CFrame = CFrame.new(7.39453411, 3.24184704, -15.5869961, -0.00644600624, 0.0148890028, -0.999868214, -0.937540591, 0.347695917, 0.0112217022, 0.347817093, 0.937489212, 0.0117177842)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Symmetric
p30.Size = Vector3.new(0.660000086, 0.200000003, 1.03000021)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("BlockMesh", p30)
b30.Name = "Mesh"
b30.Scale = Vector3.new(1, 1, 1.08000004)
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Bright red")
p31.Material = Enum.Material.SmoothPlastic
p31.Name = "Part13"
p31.CFrame = CFrame.new(7.40205193, 3.21386981, -14.9364319, -0.0143290069, -0.00668900553, 0.99987483, -0.903617203, 0.428223073, -0.0100847976, -0.428101897, -0.903648555, -0.0121803004)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Symmetric
p31.Size = Vector3.new(0.660000086, 0.200000003, 1.03000021)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("BlockMesh", p31)
b31.Name = "Mesh"
b31.Scale = Vector3.new(1, 1, 1.08000004)
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Bright red")
p32.Material = Enum.Material.SmoothPlastic
p32.Name = "Part14"
p32.CFrame = CFrame.new(7.39128494, 2.88663912, -15.5247717, -0.0152560119, 0.0072660055, -0.999857128, -0.921074569, -0.389225394, 0.0112253996, -0.389088124, 0.921113908, 0.012630553)
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Symmetric
p32.Size = Vector3.new(0.2700001, 0.200000003, 1.03000021)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("BlockMesh", p32)
b32.Name = "Mesh"
b32.Scale = Vector3.new(1, 1, 1.08000004)
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Bright red")
p33.Material = Enum.Material.SmoothPlastic
p33.Name = "Part14"
p33.CFrame = CFrame.new(7.39706278, 2.86553144, -15.0297318, -0.00672700163, -0.0152910082, 0.999860346, -0.951561749, -0.307258159, -0.0111009814, 0.307384849, -0.951503396, -0.012483404)
p33.CanCollide = false
p33.FormFactor = Enum.FormFactor.Symmetric
p33.Size = Vector3.new(0.2700001, 0.200000003, 1.03000021)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("BlockMesh", p33)
b33.Name = "Mesh"
b33.Scale = Vector3.new(1, 1, 1.08000004)
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Bright red")
p34.Material = Enum.Material.SmoothPlastic
p34.Name = "Part15"
p34.CFrame = CFrame.new(7.38923502, 2.67011499, -15.4960938, -0.00568200462, 0.0154460026, -0.999864459, -0.902931213, 0.429624617, 0.0117680235, 0.429747969, 0.902875483, 0.0115055423)
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Symmetric
p34.Size = Vector3.new(0.390000105, 0.200000003, 1.03000021)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("BlockMesh", p34)
b34.Name = "Mesh"
b34.Scale = Vector3.new(1, 1, 1.08000004)
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Bright red")
p35.Material = Enum.Material.SmoothPlastic
p35.Name = "Part15"
p35.CFrame = CFrame.new(7.39401102, 2.65231776, -15.0772839, -0.0149730006, -0.00509400759, 0.99987483, -0.861863971, 0.507035017, -0.0103231305, -0.506919026, -0.861910701, -0.011982169)
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Symmetric
p35.Size = Vector3.new(0.390000105, 0.200000003, 1.03000021)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(1, 1, 1.08000004)
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Really black")
p36.Material = Enum.Material.SmoothPlastic
p36.Name = "Part16"
p36.CFrame = CFrame.new(7.39848709, 3.22593093, -15.2452784, -0.0111890119, 0.0113890069, -0.999872386, -0.999774814, -0.018175371, 0.0109808808, -0.0180480294, 0.999769926, 0.0115898009)
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Symmetric
p36.Size = Vector3.new(0.420000076, 0.629999995, 1.03000021)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("BlockMesh", p36)
b36.Name = "Mesh"
b36.Scale = Vector3.new(1, 1, 1.05999994)
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Really black")
p37.Material = Enum.Material.SmoothPlastic
p37.Name = "Part17"
p37.CFrame = CFrame.new(7.39233685, 2.74036002, -15.3027658, -0.0111890119, 0.0113890069, -0.999872386, -0.999774814, -0.018175371, 0.0109808808, -0.0180480294, 0.999769926, 0.0115898009)
p37.CanCollide = false
p37.FormFactor = Enum.FormFactor.Symmetric
p37.Size = Vector3.new(0.560000062, 0.369999975, 1.03000021)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("BlockMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(1, 1, 1.05999994)
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Really black")
p38.Material = Enum.Material.SmoothPlastic
p38.Name = "Part18"
p38.CFrame = CFrame.new(7.40132284, 3.49197793, -15.2583256, 0.999867022, 0.0115775829, 0.011474343, -0.011072997, 0.99900949, -0.0431027897, -0.0119619975, 0.042970039, 0.999004722)
p38.CanCollide = false
p38.FormFactor = Enum.FormFactor.Symmetric
p38.Size = Vector3.new(1.1400001, 0.200000003, 0.580000222)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("BlockMesh", p38)
b38.Name = "Mesh"
b38.Scale = Vector3.new(1, 1.10000002, 1)
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Bright red")
p39.Material = Enum.Material.SmoothPlastic
p39.Name = "Part19"
p39.CFrame = CFrame.new(7.40588522, 3.47434545, -14.8588018, 0.999867022, 0.0115775829, 0.011474343, -0.011072997, 0.99900949, -0.0431027897, -0.0119619975, 0.042970039, 0.999004722)
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Symmetric
p39.Size = Vector3.new(1.1400001, 0.200000003, 0.219999999)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("BlockMesh", p39)
b39.Name = "Mesh"
b39.Scale = Vector3.new(1.00999999, 1.11000001, 1)
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Bright red")
p40.Material = Enum.Material.SmoothPlastic
p40.Name = "Part19"
p40.CFrame = CFrame.new(7.3968811, 3.50867701, -15.6380224, 0.999867022, 0.0115775829, 0.011474343, -0.011072997, 0.99900949, -0.0431027897, -0.0119619975, 0.042970039, 0.999004722)
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Symmetric
p40.Size = Vector3.new(1.1400001, 0.200000003, 0.219999999)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("BlockMesh", p40)
b40.Name = "Mesh"
b40.Scale = Vector3.new(1.00999999, 1.11000001, 1)
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Bright red")
p41.Material = Enum.Material.SmoothPlastic
p41.Name = "Part20"
p41.CFrame = CFrame.new(7.39437389, 2.53782344, -15.2986565, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p41.CanCollide = false
p41.Size = Vector3.new(1.00999999, 0.200000003, 1.05000019)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("CylinderMesh", p41)
b41.Name = "Mesh"
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Really black")
p42.Material = Enum.Material.SmoothPlastic
p42.Name = "Part21"
p42.CFrame = CFrame.new(7.38866472, 2.46774411, -15.2965059, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p42.CanCollide = false
p42.Size = Vector3.new(0.940000057, 0.200000003, 0.960000098)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("SpecialMesh", p42)
b42.MeshType = Enum.MeshType.Sphere
b42.Name = "Mesh"
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Really red")
p43.Material = Enum.Material.Neon
p43.Name = "Part22N"
p43.CFrame = CFrame.new(7.38818121, 2.44325352, -15.307724, 0.0110249985, 0.0118200146, -0.999869227, -0.0443169847, 0.9989537, 0.0113205174, 0.99895668, 0.0441863984, 0.0115372799)
p43.CanCollide = false
p43.Size = Vector3.new(0.200000003, 0.200000003, 0.840000093)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("SpecialMesh", p43)
b43.MeshType = Enum.MeshType.Sphere
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.400000006, 0.899999976, 1)
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Bright red")
p44.Material = Enum.Material.SmoothPlastic
p44.Name = "Part23"
p44.CFrame = CFrame.new(7.38977909, 2.50251055, -15.291914, 0.999867022, 0.0115775829, 0.011474343, -0.011072997, 0.99900949, -0.0431027897, -0.0119619975, 0.042970039, 0.999004722)
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Symmetric
p44.Size = Vector3.new(1.12000012, 0.200000003, 0.420000017)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("BlockMesh", p44)
b44.Name = "Mesh"
b44.Scale = Vector3.new(1, 0.600000024, 1)
w1 = Instance.new("Weld", p1)
w1.Name = "Finger1"
w1.Part0 = p1
w1.C0 = CFrame.new(-0.219256401, -0.675325036, -0.377177715, 0.326397389, -0.945226371, 0.00345858745, 0.943299413, 0.325493753, -0.0651198477, 0.0604272224, 0.0245174281, 0.997871339)
w1.Part1 = p2
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p1)
w2.Name = "Finger1"
w2.Part0 = p1
w2.C0 = CFrame.new(-0.0294113159, -0.719793081, -0.385057449, -0.00415552314, -0.945177615, 0.326530606, 0.0649523735, 0.325588882, 0.943278015, -0.997879565, 0.0251287408, 0.0600384921)
w2.Part1 = p3
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p1)
w3.Name = "Finger1"
w3.Part0 = p1
w3.C0 = CFrame.new(-0.448065758, -0.5619452, -0.368844509, 0.656852186, -0.754011035, 0.00354878698, 0.752572119, 0.65529263, -0.0650173798, 0.0466983095, 0.0453775153, 0.997877836)
w3.Part1 = p4
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p1)
w4.Name = "Finger2"
w4.Part0 = p1
w4.C0 = CFrame.new(-0.209238052, -0.72065413, -0.105639935, 0.407780915, -0.91307652, 0.00243807491, 0.913072407, 0.40776518, -0.00519776251, 0.00375178829, 0.00434568711, 0.99998343)
w4.Part1 = p5
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p1)
w5.Name = "Finger2"
w5.Part0 = p1
w5.C0 = CFrame.new(-0.427325249, -0.587461948, -0.10423851, 0.720244169, -0.693716407, 0.00243176334, 0.693718374, 0.720228136, -0.00518383691, 0.0018446832, 0.00542058516, 0.999983549)
w5.Part1 = p6
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p1)
w6.Name = "Finger2"
w6.Part0 = p1
w6.C0 = CFrame.new(-0.0239896774, -0.781975985, -0.110759735, -0.00304586161, -0.913068593, 0.407794774, 0.00531288888, 0.407776296, 0.913066745, -0.999981165, 0.00494764466, 0.00360899698)
w6.Part1 = p7
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p1)
w7.Name = "Finger3"
w7.Part0 = p1
w7.C0 = CFrame.new(-0.0194511414, -0.748806238, 0.139498234, -0.00238760747, -0.94849509, 0.316782743, 0.00369546819, 0.316773176, 0.948494434, -0.999990284, 0.00343529414, 0.00274880044)
w7.Part1 = p8
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p1)
w8.Name = "Finger3"
w8.Part0 = p1
w8.C0 = CFrame.new(-0.439827919, -0.594489574, 0.145232201, 0.649084687, -0.760714173, 0.00178297888, 0.76071471, 0.64907676, -0.00359176844, 0.00157501455, 0.00368769746, 0.999991894)
w8.Part1 = p9
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p1)
w9.Name = "Finger3"
w9.Part0 = p1
w9.C0 = CFrame.new(-0.209708214, -0.705833673, 0.144242764, 0.316754311, -0.948505819, 0.00180967152, 0.948503196, 0.316746294, -0.00373969367, 0.00297390949, 0.00290104561, 0.999991238)
w9.Part1 = p10
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p1)
w10.Name = "Finger4"
w10.Part0 = p1
w10.C0 = CFrame.new(-0.0477628708, -0.766041517, 0.398846149, -0.0031697331, -0.904480219, 0.426503778, 0.00560067873, 0.426483244, 0.904478371, -0.999979198, 0.00525566563, 0.00371386157)
w10.Part1 = p11
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p1)
w11.Name = "Finger4"
w11.Part0 = p1
w11.C0 = CFrame.new(-0.446861267, -0.563197613, 0.405432224, 0.734462678, -0.678644776, 0.00240339059, 0.678646326, 0.734444737, -0.00552345812, 0.00198330544, 0.00568782398, 0.99998188)
w11.Part1 = p12
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p1)
w12.Name = "Finger4"
w12.Part0 = p1
w12.C0 = CFrame.new(-0.231600761, -0.70096755, 0.40401125, 0.426600784, -0.904436588, 0.00250859745, 0.904431701, 0.426583022, -0.00556623191, 0.00396417361, 0.00464341324, 0.999981403)
w12.Part1 = p13
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p1)
w13.Name = "Finger5"
w13.Part0 = p1
w13.C0 = CFrame.new(0.275092125, -0.599420309, -0.318682671, -0.26460281, 0.964354575, 0.00240619667, 0.964352489, 0.26460886, -0.00261346065, -0.00315700285, 0.0016288897, -0.999993563)
w13.Part1 = p14
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p1)
w14.Name = "Finger5"
w14.Part0 = p1
w14.C0 = CFrame.new(0.174156189, -0.614137888, -0.314579964, -0.00149790756, 0.964341342, -0.264657319, 0.00226551341, 0.264660269, 0.964339375, 0.999996364, 0.000844901428, -0.00258116587)
w14.Part1 = p15
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p1)
w15.Name = "Finger5"
w15.Part0 = p1
w15.C0 = CFrame.new(0.407329559, -0.536268234, -0.318607807, -0.606969059, 0.794721782, 0.00242385268, 0.794716477, 0.606974006, -0.00295898039, -0.00382278068, 0.000130263157, -0.999992669)
w15.Part1 = p16
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p1)
w16.Name = "Part02"
w16.Part0 = p1
w16.C0 = CFrame.new(-7.15255737e-05, 0.465056658, 2.81333923e-05, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w16.Part1 = p17
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p1)
w17.Name = "Part03"
w17.Part0 = p1
w17.C0 = CFrame.new(-0.025141716, 0.465013027, 0.00507211685, -0.000435265712, -0.00122024119, 0.999999106, 0.000228469784, 0.999999404, 0.00122035667, -0.999999762, 0.000228995865, -0.00043498911)
w17.Part1 = p18
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p1)
w18.Name = "Part04"
w18.Part0 = p1
w18.C0 = CFrame.new(-0.0250911713, 0.464990377, 0.175028324, -0.000435265712, -0.00122024119, 0.999999106, 0.000228469784, 0.999999404, 0.00122035667, -0.999999762, 0.000228995865, -0.00043498911)
w18.Part1 = p19
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p1)
w19.Name = "Part05"
w19.Part0 = p1
w19.C0 = CFrame.new(-0.0250282288, 0.464967966, 0.315057755, -0.000435265712, -0.00122024119, 0.999999106, 0.000228469784, 0.999999404, 0.00122035667, -0.999999762, 0.000228995865, -0.00043498911)
w19.Part1 = p20
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p1)
w20.Name = "Part06"
w20.Part0 = p1
w20.C0 = CFrame.new(-0.449399948, -0.0798215866, 0.0001912117, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w20.Part1 = p21
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p1)
w21.Name = "Part07"
w21.Part0 = p1
w21.C0 = CFrame.new(-0.520755768, 0.285537004, -0.00418901443, 0.999999702, 0.000720840879, -0.000316198915, -0.000316202641, 1.40827615e-06, -1.00000036, -0.000720842741, 0.999999642, 1.64035009e-06)
w21.Part1 = p22
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p1)
w22.Name = "Part07"
w22.Part0 = p1
w22.C0 = CFrame.new(-0.520493507, -0.0798773766, 0.39685297, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w22.Part1 = p23
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p1)
w23.Name = "Part07"
w23.Part0 = p1
w23.C0 = CFrame.new(-0.520490646, -0.44075346, -0.00427770615, 0.999999702, 0.000720840879, -0.000316198915, -0.000316202641, 1.40827615e-06, -1.00000036, -0.000720842741, 0.999999642, 1.64035009e-06)
w23.Part1 = p24
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p1)
w24.Name = "Part07"
w24.Part0 = p1
w24.C0 = CFrame.new(-0.520866394, -0.0797867775, -0.396357059, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w24.Part1 = p25
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p1)
w25.Name = "Part08N"
w25.Part0 = p1
w25.C0 = CFrame.new(-0.449347496, -0.0749356747, 0.000178337097, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w25.Part1 = p26
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p1)
w26.Name = "Part09"
w26.Part0 = p1
w26.C0 = CFrame.new(-0.449378014, -0.0749809742, 0.000211238861, 1, -9.27522779e-05, -8.60076398e-05, 0.000108346343, 0.978994608, 0.203886971, 6.52829185e-05, -0.203886896, 0.978994489)
w26.Part1 = p27
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p1)
w27.Name = "Part10N"
w27.Part0 = p1
w27.C0 = CFrame.new(-0.449390411, -0.0808539391, 0.000212669373, 0.999999762, -0.000517364591, 0.000199846923, 0.000388853252, 0.910960436, 0.412494302, -0.00039546378, -0.412494093, 0.910960197)
w27.Part1 = p28
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p1)
w28.Name = "Part11"
w28.Part0 = p1
w28.C0 = CFrame.new(-0.449384689, -0.0857205391, 0.000205516815, 0.999999762, -0.000447355211, -0.000515528023, 0.000681202859, 0.701741815, 0.712431371, 4.30494547e-05, -0.712431312, 0.701741695)
w28.Part1 = p29
w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p1)
w29.Name = "Part13"
w29.Part0 = p1
w29.C0 = CFrame.new(-0.327435493, 0.200553894, 0.000191688538, 0.388932109, 0.921266437, 0.000184703618, -0.921266675, 0.388932228, -9.07259528e-05, -0.000155419111, -0.000134878792, 0.999999821)
w29.Part1 = p30
w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p1)
w30.Name = "Part13"
w30.Part0 = p1
w30.C0 = CFrame.new(0.323773384, 0.201440811, -0.000136375427, -0.387767643, -0.921757042, -0.000697048381, -0.921756983, 0.387766838, 0.00120608159, -0.000841416884, 0.00111018959, -0.999998927)
w30.Part1 = p31
w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31 = Instance.new("Weld", p1)
w31.Name = "Part14"
w31.Part0 = p1
w31.C0 = CFrame.new(-0.249569893, -0.151571274, 0.000137329102, -0.348031133, 0.937482297, 0.00109647866, -0.937483191, -0.348031402, -4.65690973e-05, 0.000337954145, -0.0010441374, 0.999999344)
w31.Part1 = p32
w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32 = Instance.new("Weld", p1)
w32.Name = "Part14"
w32.Part0 = p1
w32.C0 = CFrame.new(0.245952606, -0.150714397, -0.000167369843, 0.349160314, -0.937062502, -0.000954961404, -0.937063038, -0.349160761, 0.000177397043, -0.00049966597, 0.000832922757, -0.999999404)
w32.Part1 = p33
w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33 = Instance.new("Weld", p1)
w33.Name = "Part15"
w33.Part0 = p1
w33.C0 = CFrame.new(-0.211348534, -0.366625786, 6.6280365e-05, 0.469252169, 0.883064151, -5.14863059e-05, -0.88306427, 0.469252288, 0.000445689948, 0.000417734962, -0.000163679011, 0.999999821)
w33.Part1 = p34
w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34 = Instance.new("Weld", p1)
w34.Name = "Part15"
w34.Part0 = p1
w34.C0 = CFrame.new(0.207865715, -0.365842104, -7.86781311e-05, -0.468359977, -0.883537829, -0.000488561578, -0.883537769, 0.468359381, 0.000976753072, -0.000634174328, 0.000889133662, -0.999999344)
w34.Part1 = p35
w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35 = Instance.new("Weld", p1)
w35.Name = "Part16"
w35.Part0 = p1
w35.C0 = CFrame.new(0.0146751404, 0.199800491, 1.43051147e-06, 0.0261544511, 0.999657869, 6.74799085e-05, -0.999658108, 0.0261544865, -0.000336999481, -0.000338647544, -5.86435199e-05, 0.999999821)
w35.Part1 = p36
w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w36 = Instance.new("Weld", p1)
w36.Name = "Part17"
w36.Part0 = p1
w36.C0 = CFrame.new(-0.0213012695, -0.287875175, -9.05990601e-06, 0.0261544511, 0.999657869, 6.74799085e-05, -0.999658108, 0.0261544865, -0.000336999481, -0.000338647544, -5.86435199e-05, 0.999999821)
w36.Part1 = p37
w36.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37 = Instance.new("Weld", p1)
w37.Name = "Part18"
w37.Part0 = p1
w37.C0 = CFrame.new(-0.0101175308, 0.465025902, 2.7179718e-05, -0.000435265712, -0.00122024119, 0.999999106, 0.000228469784, 0.999999404, 0.00122035667, -0.999999762, 0.000228995865, -0.00043498911)
w37.Part1 = p38
w37.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w38 = Instance.new("Weld", p1)
w38.Name = "Part19"
w38.Part0 = p1
w38.C0 = CFrame.new(0.389821053, 0.465119362, -0.000124454498, -0.000435265712, -0.00122024119, 0.999999106, 0.000228469784, 0.999999404, 0.00122035667, -0.999999762, 0.000228995865, -0.00043498911)
w38.Part1 = p39
w38.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w39 = Instance.new("Weld", p1)
w39.Name = "Part19"
w39.Part0 = p1
w39.C0 = CFrame.new(-0.390207291, 0.464877605, 0.000277042389, -0.000435265712, -0.00122024119, 0.999999106, 0.000228469784, 0.999999404, 0.00122035667, -0.999999762, 0.000228995865, -0.00043498911)
w39.Part1 = p40
w39.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w40 = Instance.new("Weld", p1)
w40.Name = "Part20"
w40.Part0 = p1
w40.C0 = CFrame.new(-0.00819778442, -0.489994049, -0.00429153442, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w40.Part1 = p41
w40.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w41 = Instance.new("Weld", p1)
w41.Name = "Part21"
w41.Part0 = p1
w41.C0 = CFrame.new(-0.00300693512, -0.559972525, 0.000648498535, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w41.Part1 = p42
w41.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w42 = Instance.new("Weld", p1)
w42.Name = "Part22N"
w42.Part0 = p1
w42.C0 = CFrame.new(-0.013133049, -0.584938765, 0.000725269318, 1, -3.7252903e-09, -2.79396772e-09, 0, 1.00000024, -2.09547579e-09, -1.86264515e-09, -2.91038305e-09, 0.999999881)
w42.Part1 = p43
w42.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w43 = Instance.new("Weld", p1)
w43.Name = "Part23"
w43.Part0 = p1
w43.C0 = CFrame.new(5.14984131e-05, -0.525026321, -1.90734863e-05, -0.000435265712, -0.00122024119, 0.999999106, 0.000228469784, 0.999999404, 0.00122035667, -0.999999762, 0.000228995865, -0.00043498911)
w43.Part1 = p44
w43.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m.Parent = Character
m:MakeJoints()


local m = Instance.new("Model")
m.Name = "G2"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Bright red")
p1.Material = Enum.Material.SmoothPlastic
p1.Name = "Handle2"
p1.CFrame = CFrame.new(7.42939377, 2.97348094, -13.7542696, 0.000568000076, -0.0284999982, 0.999593675, -0.0114630014, 0.999527931, 0.028504638, -0.999934137, -0.0114745339, 0.000241036469)
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1.07000005, 1.00999999, 1.03000021)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Bright red")
p2.Material = Enum.Material.SmoothPlastic
p2.Name = "Part23"
p2.CFrame = CFrame.new(7.44410372, 2.44868064, -13.7484779, -0.999607086, -0.0280332323, 0.000403859594, -0.0280359983, 0.999543905, -0.0112250866, -8.90000811e-05, -0.0112320008, -0.999936998)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1.12000012, 0.200000003, 0.420000017)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(1, 0.600000024, 1)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really red")
p3.Material = Enum.Material.Neon
p3.Name = "Part22N"
p3.CFrame = CFrame.new(7.43746424, 2.38746691, -13.7245741, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p3.CanCollide = false
p3.Size = Vector3.new(0.200000003, 0.200000003, 0.840000093)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Sphere
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 0.899999976, 1)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.SmoothPlastic
p4.Name = "Part21"
p4.CFrame = CFrame.new(7.44558811, 2.41381192, -13.7449799, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p4.CanCollide = false
p4.Size = Vector3.new(0.940000057, 0.200000003, 0.960000098)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Sphere
b4.Name = "Mesh"
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Bright red")
p5.Material = Enum.Material.SmoothPlastic
p5.Name = "Part20"
p5.CFrame = CFrame.new(7.43865585, 2.48366809, -13.740696, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p5.CanCollide = false
p5.Size = Vector3.new(1.00999999, 0.200000003, 1.05000019)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("CylinderMesh", p5)
b5.Name = "Mesh"
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Bright red")
p6.Material = Enum.Material.SmoothPlastic
p6.Name = "Part19"
p6.CFrame = CFrame.new(7.41668081, 3.43398333, -14.1494341, -0.999607086, -0.0280332323, 0.000403859594, -0.0280359983, 0.999543905, -0.0112250866, -8.90000811e-05, -0.0112320008, -0.999936998)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1.1400001, 0.200000003, 0.219999999)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.00999999, 1.11000001, 1)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Bright red")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "Part19"
p7.CFrame = CFrame.new(7.41663504, 3.44261408, -13.3694439, -0.999607086, -0.0280332323, 0.000403859594, -0.0280359983, 0.999543905, -0.0112250866, -8.90000811e-05, -0.0112320008, -0.999936998)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1.1400001, 0.200000003, 0.219999999)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.00999999, 1.11000001, 1)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.SmoothPlastic
p8.Name = "Part18"
p8.CFrame = CFrame.new(7.4167757, 3.43838167, -13.7495041, -0.999607086, -0.0280332323, 0.000403859594, -0.0280359983, 0.999543905, -0.0112250866, -8.90000811e-05, -0.0112320008, -0.999936998)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1.1400001, 0.200000003, 0.580000222)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(1, 1.10000002, 1)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.SmoothPlastic
p9.Name = "Part17"
p9.CFrame = CFrame.new(7.43742704, 2.68592954, -13.7298336, 0.0279420037, -0.00136400678, 0.999608696, -0.999514997, 0.0137142325, 0.0279580969, -0.0137469992, -0.99990499, -0.000980141689)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(0.560000062, 0.369999975, 1.03000021)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 1, 1.05999994)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.SmoothPlastic
p10.Name = "Part16"
p10.CFrame = CFrame.new(7.42396116, 3.17304659, -13.7713079, 0.0279420037, -0.00136400678, 0.999608696, -0.999514997, 0.0137142325, 0.0279580969, -0.0137469992, -0.99990499, -0.000980141689)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(0.420000076, 0.629999995, 1.03000021)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(1, 1, 1.05999994)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Bright red")
p11.Material = Enum.Material.SmoothPlastic
p11.Name = "Part15"
p11.CFrame = CFrame.new(7.43967819, 2.60934806, -13.5389681, 0.0248540137, -0.0138839958, 0.999594808, -0.888365388, 0.458254874, 0.0284533855, -0.458464175, -0.888712406, -0.000944588333)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(0.390000105, 0.200000003, 1.03000021)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(1, 1, 1.08000004)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Bright red")
p12.Material = Enum.Material.SmoothPlastic
p12.Name = "Part15"
p12.CFrame = CFrame.new(7.43944407, 2.60546803, -13.9581099, 0.0234819949, -0.0121790115, -0.99965024, -0.877291679, 0.479228467, -0.0264463425, 0.479382873, 0.877605677, 0.000568692398)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(0.390000105, 0.200000003, 1.03000021)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(1, 1, 1.08000004)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Bright red")
p13.Material = Enum.Material.SmoothPlastic
p13.Name = "Part14"
p13.CFrame = CFrame.new(7.43368387, 2.82473564, -13.5031919, 0.0264669899, 0.00944101624, 0.999605238, -0.932818532, -0.359249502, 0.0280916765, 0.359372944, -0.933193743, -0.000701497484)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Symmetric
p13.Size = Vector3.new(0.2700001, 0.200000003, 1.03000021)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 1, 1.08000004)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Bright red")
p14.Material = Enum.Material.SmoothPlastic
p14.Name = "Part14"
p14.CFrame = CFrame.new(7.43358088, 2.81997824, -13.99856, 0.0250280034, 0.0105520086, -0.999631345, -0.940939903, -0.337485343, -0.027121, -0.337646991, 0.941271663, 0.00148222432)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Size = Vector3.new(0.2700001, 0.200000003, 1.03000021)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(1, 1, 1.08000004)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Bright red")
p15.Material = Enum.Material.SmoothPlastic
p15.Name = "Part13"
p15.CFrame = CFrame.new(7.42398787, 3.17759252, -13.4291039, 0.025746014, -0.011412017, 0.99960357, -0.925619364, 0.377407521, 0.0281491522, -0.377579212, -0.925977051, -0.000846442592)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Symmetric
p15.Size = Vector3.new(0.660000086, 0.200000003, 1.03000021)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(1, 1, 1.08000004)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Bright red")
p16.Material = Enum.Material.SmoothPlastic
p16.Name = "Part13"
p16.CFrame = CFrame.new(7.42389774, 3.17119503, -14.0803699, 0.0245640054, -0.00998602156, -0.999648571, -0.916508138, 0.399136752, -0.0265082195, 0.399261087, 0.916837215, 0.00065212755)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Symmetric
p16.Size = Vector3.new(0.660000086, 0.200000003, 1.03000021)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(1, 1, 1.08000004)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.Material = Enum.Material.SmoothPlastic
p17.Name = "Part11"
p17.CFrame = CFrame.new(7.43182707, 2.89287496, -13.3041639, 0.00075399963, -0.731023908, 0.682351649, -0.0116779944, 0.682298839, 0.730980158, -0.999931514, -0.00851965323, -0.00802243967)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Symmetric
p17.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.790000021, 0.400000006, 0.400000006)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Bright red")
p18.Material = Enum.Material.Neon
p18.Name = "Part10N"
p18.CFrame = CFrame.new(7.43181992, 2.89775062, -13.3041296, 0.000606999907, -0.437837183, 0.899054408, -0.0118329972, 0.898988247, 0.437812954, -0.999929786, -0.0109042563, -0.00463523902)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.779999971, 0.5, 0.5)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.SmoothPlastic
p19.Name = "Part09"
p19.CFrame = CFrame.new(7.43160105, 2.90362954, -13.3042641, 0.000616000034, -0.231590942, 0.972813249, -0.0115520013, 0.97274667, 0.231582463, -0.999933124, -0.0113805905, -0.00207612687)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.769999981, 0.600000024, 0.600000024)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Bright red")
p20.Material = Enum.Material.Neon
p20.Name = "Part08N"
p20.CFrame = CFrame.new(7.43160105, 2.90362954, -13.3042641, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Symmetric
p20.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.75999999, 0.699999988, 0.699999988)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Bright red")
p21.Material = Enum.Material.SmoothPlastic
p21.Name = "Part07"
p21.CFrame = CFrame.new(7.43732977, 2.53857708, -13.228858, -0.000118000142, 0.999614894, 0.027757166, -0.0114610055, 0.0277539939, -0.999549091, -0.999934375, -0.000436071627, 0.0114533119)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Symmetric
p21.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Bright red")
p22.Material = Enum.Material.SmoothPlastic
p22.Name = "Part07"
p22.CFrame = CFrame.new(7.03532314, 2.8885951, -13.232688, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Symmetric
p22.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("BlockMesh", p22)
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Bright red")
p23.Material = Enum.Material.SmoothPlastic
p23.Name = "Part07"
p23.CFrame = CFrame.new(7.82809973, 2.91047621, -13.2330599, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Symmetric
p23.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("BlockMesh", p23)
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Bright red")
p24.Material = Enum.Material.SmoothPlastic
p24.Name = "Part07"
p24.CFrame = CFrame.new(7.41720009, 3.26466942, -13.2368889, -0.000118000142, 0.999614894, 0.027757166, -0.0114610055, 0.0277539939, -0.999549091, -0.999934375, -0.000436071627, 0.0114533119)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Symmetric
p24.Size = Vector3.new(0.251425654, 0.900192142, 0.251425683)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("BlockMesh", p24)
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.212694183, 0.849999964, 0.141796142)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Really black")
p25.Material = Enum.Material.SmoothPlastic
p25.Name = "Part06"
p25.CFrame = CFrame.new(7.43178606, 2.89876866, -13.304204, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(0.251425654, 0.900192142, 0.918018162)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("BlockMesh", p25)
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.716070294, 0.800000012, 0.899999976)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Lime green")
p26.Material = Enum.Material.SmoothPlastic
p26.Name = "Part05"
p26.CFrame = CFrame.new(7.73157072, 3.44717908, -13.73458, -0.999607086, -0.0280332323, 0.000403859594, -0.0280359983, 0.999543905, -0.0112250866, -8.90000811e-05, -0.0112320008, -0.999936998)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("BlockMesh", p26)
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.100000001, 0.400000006, 1.12)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Really red")
p27.Material = Enum.Material.SmoothPlastic
p27.Name = "Part04"
p27.CFrame = CFrame.new(7.59154272, 3.44341993, -13.73454, -0.999607086, -0.0280332323, 0.000403859594, -0.0280359983, 0.999543905, -0.0112250866, -8.90000811e-05, -0.0112320008, -0.999936998)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Symmetric
p27.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("BlockMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.100000001, 0.400000006, 1.12)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Really black")
p28.Material = Enum.Material.SmoothPlastic
p28.Name = "Part03"
p28.CFrame = CFrame.new(7.42163515, 3.43866062, -13.73454, -0.999607086, -0.0280332323, 0.000403859594, -0.0280359983, 0.999543905, -0.0112250866, -8.90000811e-05, -0.0112320008, -0.999936998)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Symmetric
p28.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("BlockMesh", p28)
b28.Name = "Mesh"
b28.Scale = Vector3.new(1, 0.5, 1.11000001)
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Bright red")
p29.Material = Enum.Material.SmoothPlastic
p29.Name = "Part02"
p29.CFrame = CFrame.new(7.41667986, 3.43832397, -13.7595396, 0.000568000076, -0.0285000019, 0.999593675, -0.0114630014, 0.999527931, 0.0285046343, -0.999934137, -0.0114745339, 0.000241036527)
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Symmetric
p29.Size = Vector3.new(1.07000005, 0.200000003, 1.03000021)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(1.10000002, 1, 1.10000002)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Bright red")
p30.Material = Enum.Material.SmoothPlastic
p30.Name = "Finger4"
p30.CFrame = CFrame.new(7.80719614, 2.31005239, -13.558444, -0.0191929955, 0.0435640253, 0.998866498, 0.965990603, 0.258473516, 0.00728838146, -0.257862926, 0.965035558, -0.047043331)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Symmetric
p30.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("BlockMesh", p30)
b30.Name = "Mesh"
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Bright red")
p31.Material = Enum.Material.SmoothPlastic
p31.Name = "Finger4"
p31.CFrame = CFrame.new(7.81769276, 2.40685415, -13.3220396, -0.0341259986, 0.0329959877, 0.998872817, 0.798802853, 0.601547003, 0.00741968118, -0.600623906, 0.798155606, -0.0468856879)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Symmetric
p31.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("BlockMesh", p31)
b31.Name = "Mesh"
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Medium stone grey")
p32.Reflectance = 1
p32.Name = "Finger4"
p32.CFrame = CFrame.new(7.79393101, 2.27906179, -13.7508316, -0.998826861, 0.0441030599, -0.020002082, -0.00802100264, 0.256666094, 0.966466844, 0.0477579832, 0.965493381, -0.256011218)
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Symmetric
p32.Elasticity = 0
p32.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("SpecialMesh", p32)
b32.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Bright red")
p33.Material = Enum.Material.SmoothPlastic
p33.Name = "Finger3"
p33.CFrame = CFrame.new(7.57787704, 2.3110795, -13.5174379, -0.0228040088, 0.0431520119, 0.998808384, 0.949126363, 0.314792544, 0.00806957483, -0.314069092, 0.948179126, -0.0481352285)
p33.CanCollide = false
p33.FormFactor = Enum.FormFactor.Symmetric
p33.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("BlockMesh", p33)
b33.Name = "Mesh"
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Medium stone grey")
p34.Reflectance = 1
p34.Name = "Finger3"
p34.CFrame = CFrame.new(7.56462717, 2.26879168, -13.7076759, -0.998764753, 0.043778196, -0.0235098302, -0.00863199309, 0.313071907, 0.949690044, 0.0489359871, 0.948719978, -0.312307298)
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Symmetric
p34.Elasticity = 0
p34.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("SpecialMesh", p34)
b34.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b34.TextureId = ""
b34.MeshType = Enum.MeshType.FileMesh
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Bright red")
p35.Material = Enum.Material.SmoothPlastic
p35.Name = "Finger3"
p35.CFrame = CFrame.new(7.58831406, 2.42161012, -13.2872076, -0.0372130014, 0.0311339963, 0.998822451, 0.761937857, 0.647598207, 0.00820134208, -0.646579981, 0.761345923, -0.0478212461)
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Symmetric
p35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Medium stone grey")
p36.Reflectance = 1
p36.Name = "Finger2"
p36.CFrame = CFrame.new(7.31395292, 2.26210046, -13.7115736, -0.998733342, 0.0447041541, -0.0231017396, -0.00898400322, 0.293308049, 0.955975652, 0.0495120063, 0.954972148, -0.292534739)
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Symmetric
p36.Elasticity = 0
p36.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("SpecialMesh", p36)
b36.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b36.TextureId = ""
b36.MeshType = Enum.MeshType.FileMesh
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Bright red")
p37.Material = Enum.Material.SmoothPlastic
p37.Name = "Finger2"
p37.CFrame = CFrame.new(7.33803892, 2.40624309, -13.2882299, -0.0373260044, 0.0322620049, 0.998782337, 0.775213063, 0.631641567, 0.00856801681, -0.630595922, 0.774588883, -0.0485865884)
p37.CanCollide = false
p37.FormFactor = Enum.FormFactor.Symmetric
p37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("BlockMesh", p37)
b37.Name = "Mesh"
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Bright red")
p38.Material = Enum.Material.SmoothPlastic
p38.Name = "Finger2"
p38.CFrame = CFrame.new(7.32735491, 2.30046368, -13.5206079, -0.0223610159, 0.0441239849, 0.998776019, 0.955480576, 0.29493618, 0.00836198777, -0.294206142, 0.954497635, -0.048754666)
p38.CanCollide = false
p38.FormFactor = Enum.FormFactor.Symmetric
p38.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("BlockMesh", p38)
b38.Name = "Mesh"
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Bright red")
p39.Material = Enum.Material.SmoothPlastic
p39.Name = "Finger1"
p39.CFrame = CFrame.new(7.04678774, 2.31860304, -13.5334921, -0.0219900124, 0.0475270152, 0.998627841, 0.971832454, 0.235452682, 0.010194229, -0.234645054, 0.970722914, -0.0513658896)
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Symmetric
p39.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("BlockMesh", p39)
b39.Name = "Mesh"
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Medium stone grey")
p40.Reflectance = 1
p40.Name = "Finger1"
p40.CFrame = CFrame.new(7.03265381, 2.29215574, -13.726368, -0.998571992, 0.0482578278, -0.0229267161, -0.0110400021, 0.233482897, 0.972298205, 0.0522739887, 0.971162677, -0.232616663)
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Symmetric
p40.Elasticity = 0
p40.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("SpecialMesh", p40)
b40.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b40.TextureId = ""
b40.MeshType = Enum.MeshType.FileMesh
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.140000001, 0.300000012, 0.140000001)
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Bright red")
p41.Material = Enum.Material.SmoothPlastic
p41.Name = "Finger1"
p41.CFrame = CFrame.new(7.05835104, 2.40975904, -13.294838, -0.0384190232, 0.0354400352, 0.998633146, 0.812820315, 0.582418084, 0.0106013361, -0.581246257, 0.812116563, -0.0511822999)
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Symmetric
p41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("BlockMesh", p41)
b41.Name = "Mesh"
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Bright red")
p42.Material = Enum.Material.SmoothPlastic
p42.Name = "Finger 5"
p42.CFrame = CFrame.new(7.8202219, 2.39030123, -14.170002, -0.0382330082, -0.0659680143, -0.997089386, 0.84860909, 0.524727881, -0.0672558993, 0.527637184, -0.848710239, 0.0359191149)
p42.CanCollide = false
p42.FormFactor = Enum.FormFactor.Symmetric
p42.Size = Vector3.new(0.25, 0.200000003, 0.280000001)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("BlockMesh", p42)
b42.Name = "Mesh"
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Medium stone grey")
p43.Reflectance = 1
p43.Name = "Finger 5"
p43.CFrame = CFrame.new(7.8370719, 2.33605433, -13.9309359, 0.997067571, -0.0470163412, -0.0603834167, 0.0674650222, 0.167532057, 0.983555555, -0.0361270048, -0.984745026, 0.170212686)
p43.CanCollide = false
p43.FormFactor = Enum.FormFactor.Symmetric
p43.Elasticity = 0
p43.Size = Vector3.new(0.200000003, 0.50999999, 0.200000003)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("SpecialMesh", p43)
b43.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b43.TextureId = ""
b43.MeshType = Enum.MeshType.FileMesh
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.200000003, 0.300000012, 0.200000003)
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Bright red")
p44.Material = Enum.Material.SmoothPlastic
p44.Name = "Finger 5"
p44.CFrame = CFrame.new(7.82867575, 2.34057403, -14.032548, -0.0604220405, -0.0471440032, -0.997059226, 0.983305454, 0.168949157, -0.0675769746, 0.171638072, -0.984496653, 0.0361486934)
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Symmetric
p44.Size = Vector3.new(0.25999999, 0.200000003, 0.280000001)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("BlockMesh", p44)
b44.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Part23"
w1.Part0 = p1
w1.C0 = CFrame.new(0.000232696533, -0.525038242, -0.000253677368, -0.000157405986, -0.000242435373, 1, 0.000467055041, 0.999999881, 0.000242512673, -1, 0.000467089034, -0.000157292758)
w1.Part1 = p2
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p1)
w2.Name = "Part22N"
w2.Part0 = p1
w2.C0 = CFrame.new(-0.0229711533, -0.586308241, -0.00862979889, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p1)
w3.Name = "Part21"
w3.Part0 = p1
w3.C0 = CFrame.new(-0.00286483765, -0.559973001, 0.000236988068, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p1)
w4.Name = "Part20"
w4.Part0 = p1
w4.C0 = CFrame.new(-0.00795269012, -0.49000144, -0.00470018387, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p1)
w5.Name = "Part19"
w5.Part0 = p1
w5.C0 = CFrame.new(0.389852524, 0.465181589, 0.000323295593, -0.000157405986, -0.000242435373, 1, 0.000467055041, 0.999999881, 0.000242512673, -1, 0.000467089034, -0.000157292758)
w5.Part1 = p6
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p1)
w6.Name = "Part19"
w6.Part0 = p1
w6.C0 = CFrame.new(-0.390185356, 0.464859486, 0.00071144104, -0.000157405986, -0.000242435373, 1, 0.000467055041, 0.999999881, 0.000242512673, -1, 0.000467089034, -0.000157292758)
w6.Part1 = p7
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p1)
w7.Name = "Part18"
w7.Part0 = p1
w7.C0 = CFrame.new(-0.0101013184, 0.464986086, 0.000639915466, -0.000157405986, -0.000242435373, 1, 0.000467055041, 0.999999881, 0.000242512673, -1, 0.000467089034, -0.000157292758)
w7.Part1 = p8
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p1)
w8.Name = "Part17"
w8.Part0 = p1
w8.C0 = CFrame.new(-0.0211334229, -0.287925005, -0.000160694122, 0.0252194069, 0.999681175, 0.00122737128, -0.999681771, 0.0252200775, -0.000532699749, -0.000563477981, -0.00121354673, 0.999999166)
w8.Part1 = p9
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p1)
w9.Name = "Part16"
w9.Part0 = p1
w9.C0 = CFrame.new(0.014746666, 0.199821711, 0.000254154205, 0.0252194069, 0.999681175, 0.00122737128, -0.999681771, 0.0252200775, -0.000532699749, -0.000563477981, -0.00121354673, 0.999999166)
w9.Part1 = p10
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p1)
w10.Name = "Part15"
w10.Part0 = p1
w10.C0 = CFrame.new(-0.211107254, -0.366724491, -4.72068787e-05, 0.468631446, 0.88339299, 0.00118613488, -0.883393645, 0.468631774, -3.76571188e-05, -0.000589126314, -0.00103017734, 0.999999404)
w10.Part1 = p11
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p1)
w11.Name = "Part15"
w11.Part0 = p1
w11.C0 = CFrame.new(0.208050728, -0.365786552, -0.000493049622, -0.469281554, -0.883048177, -0.000833301863, -0.883047462, 0.4692792, 0.00204964471, -0.00141887972, 0.00169770606, -0.999997675)
w11.Part1 = p12
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p1)
w12.Name = "Part14"
w12.Part0 = p1
w12.C0 = CFrame.new(-0.249353409, -0.151678324, 0.000108718872, -0.348641306, 0.93725574, 0.000947212218, -0.937256157, -0.348641008, -0.00040228205, -4.67992941e-05, -0.00102803181, 0.999999583)
w12.Part1 = p13
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p1)
w13.Name = "Part14"
w13.Part0 = p1
w13.C0 = CFrame.new(0.24603653, -0.150746584, -0.000248908997, 0.348424971, -0.937335074, -0.00173902931, -0.937334716, -0.348427385, 0.00136428326, -0.00188470702, 0.00115470437, -0.999997795)
w13.Part1 = p14
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p1)
w14.Name = "Part13"
w14.Part0 = p1
w14.C0 = CFrame.new(-0.327486992, 0.200438261, 0.000492572784, 0.388179332, 0.921583295, 0.00109148805, -0.921583593, 0.388179779, -0.000343122752, -0.000739903771, -0.000872707926, 0.999999523)
w14.Part1 = p15
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p1)
w15.Name = "Part13"
w15.Part0 = p1
w15.C0 = CFrame.new(0.323809624, 0.201519251, 6.3419342e-05, -0.38871491, -0.921357751, -0.000916021294, -0.921356916, 0.388712645, 0.00198679161, -0.00147447258, 0.00161627633, -0.999997735)
w15.Part1 = p16
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p1)
w16.Name = "Part11"
w16.Part0 = p1
w16.C0 = CFrame.new(-0.449151039, -0.0858020782, 0.000243186951, 0.99999994, 0.000282678753, 3.02596018e-05, -0.00022022333, 0.702908635, 0.711280107, 0.000179796305, -0.711280167, 0.702908754)
w16.Part1 = p17
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p1)
w17.Name = "Part10N"
w17.Part0 = p1
w17.C0 = CFrame.new(-0.449240685, -0.0809288025, 0.000374794006, 0.999999881, 0.000349743292, 0.000126945786, -0.000370982103, 0.911167324, 0.412036419, 2.84384441e-05, -0.412036538, 0.911167562)
w17.Part1 = p18
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p1)
w18.Name = "Part09"
w18.Part0 = p1
w18.C0 = CFrame.new(-0.449173927, -0.0750448704, 0.00032377243, 1, 9.7701326e-05, -2.60819215e-05, -9.03382897e-05, 0.97901839, 0.203771785, 4.54437686e-05, -0.20377177, 0.979018569)
w18.Part1 = p19
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p1)
w19.Name = "Part08N"
w19.Part0 = p1
w19.C0 = CFrame.new(-0.449173927, -0.0750448704, 0.00032377243, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w19.Part1 = p20
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p1)
w20.Name = "Part07"
w20.Part0 = p1
w20.C0 = CFrame.new(-0.52038765, -0.440953732, -0.00433731079, 0.999999821, 0.000685680192, 2.10413709e-05, 2.15489417e-05, -0.000743125856, -0.999999762, -0.000685664534, 0.999999642, -0.00074313744)
w20.Part1 = p21
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p1)
w21.Name = "Part07"
w21.Part0 = p1
w21.C0 = CFrame.new(-0.520797729, -0.0795996189, -0.396204472, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w21.Part1 = p22
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p1)
w22.Name = "Part07"
w22.Part0 = p1
w22.C0 = CFrame.new(-0.520226479, -0.0803186893, 0.396873474, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w22.Part1 = p23
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p1)
w23.Name = "Part07"
w23.Part0 = p1
w23.C0 = CFrame.new(-0.520690918, 0.285461903, -0.00376367569, 0.999999821, 0.000685680192, 2.10413709e-05, 2.15489417e-05, -0.000743125856, -0.999999762, -0.000685664534, 0.999999642, -0.00074313744)
w23.Part1 = p24
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p1)
w24.Name = "Part06"
w24.Part0 = p1
w24.C0 = CFrame.new(-0.449177742, -0.0799095631, 0.000370025635, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w24.Part1 = p25
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p1)
w25.Name = "Part05"
w25.Part0 = p1
w25.C0 = CFrame.new(-0.0249462128, 0.464636564, 0.315561295, -0.000157405986, -0.000242435373, 1, 0.000467055041, 0.999999881, 0.000242512673, -1, 0.000467089034, -0.000157292758)
w25.Part1 = p26
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p1)
w26.Name = "Part04"
w26.Part0 = p1
w26.C0 = CFrame.new(-0.0250234604, 0.464869499, 0.175483227, -0.000157405986, -0.000242435373, 1, 0.000467055041, 0.999999881, 0.000242512673, -1, 0.000467089034, -0.000157292758)
w26.Part1 = p27
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p1)
w27.Name = "Part03"
w27.Part0 = p1
w27.C0 = CFrame.new(-0.0250654221, 0.464954853, 0.00550889969, -0.000157405986, -0.000242435373, 1, 0.000467055041, 0.999999881, 0.000242512673, -1, 0.000467089034, -0.000157292758)
w27.Part1 = p28
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p1)
w28.Name = "Part02"
w28.Part0 = p1
w28.C0 = CFrame.new(-6.58035278e-05, 0.465046406, 0.0005402565, 1, 0, -1.45519152e-11, 0, 1, -3.47881723e-09, -1.45519152e-11, -3.47836249e-09, 1)
w28.Part1 = p29
w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p1)
w29.Name = "Finger4"
w29.Part0 = p1
w29.C0 = CFrame.new(-0.18799305, -0.67612958, 0.358785152, 0.246761888, -0.967910171, 0.0475240424, 0.969040513, 0.246036574, -0.0206429511, 0.00828786381, 0.0511466227, 0.998656988)
w29.Part1 = p30
w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p1)
w30.Name = "Finger4"
w30.Part0 = p1
w30.C0 = CFrame.new(-0.425485611, -0.582385302, 0.372093678, 0.591408312, -0.804979861, 0.0473649055, 0.806290269, 0.591164172, -0.0205137022, -0.0114873182, 0.0503218435, 0.998667061)
w30.Part1 = p31
w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31 = Instance.new("Weld", p1)
w31.Name = "Finger4"
w31.Part0 = p1
w31.C0 = CFrame.new(0.00472927094, -0.704520226, 0.344595909, -0.0482302308, -0.968346894, 0.244904384, 0.0199013464, 0.244209394, 0.969518304, -0.998638093, 0.0516340286, 0.00749312667)
w31.Part1 = p32
w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32 = Instance.new("Weld", p1)
w32.Name = "Finger3"
w32.Part0 = p1
w32.C0 = CFrame.new(-0.229138374, -0.669038057, 0.129598618, 0.303155631, -0.951700628, 0.04860688, 0.952932, 0.302534193, -0.0198479407, 0.00418405933, 0.0523360632, 0.998620868)
w32.Part1 = p33
w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33 = Instance.new("Weld", p1)
w33.Name = "Finger3"
w33.Part0 = p1
w33.C0 = CFrame.new(-0.038435936, -0.70874548, 0.115102768, -0.0494011119, -0.952221334, 0.301387072, 0.0192753561, 0.30079034, 0.953495383, -0.998593092, 0.0529130809, 0.00349501846)
w33.Part1 = p34
w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34 = Instance.new("Weld", p1)
w34.Name = "Finger3"
w34.Part0 = p1
w34.C0 = CFrame.new(-0.460615158, -0.56149888, 0.143237591, 0.637782216, -0.768701494, 0.0482914187, 0.770057976, 0.637669027, -0.0197202396, -0.0156349652, 0.0497644059, 0.998638809)
w34.Part1 = p35
w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35 = Instance.new("Weld", p1)
w35.Name = "Finger2"
w35.Part0 = p1
w35.C0 = CFrame.new(-0.0346040726, -0.708244562, -0.135661125, -0.0499730445, -0.958246112, 0.281544, 0.0189160053, 0.280937642, 0.959539533, -0.998571575, 0.0532768071, 0.00408687908)
w35.Part1 = p36
w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w36 = Instance.new("Weld", p1)
w36.Name = "Finger2"
w36.Part0 = p1
w36.C0 = CFrame.new(-0.459558487, -0.569714069, -0.107374191, 0.621646941, -0.781760037, 0.0490524806, 0.783146679, 0.621535897, -0.019343812, -0.0153656648, 0.0504403114, 0.998608947)
w36.Part1 = p37
w36.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37 = Instance.new("Weld", p1)
w37.Name = "Finger2"
w37.Part0 = p1
w37.C0 = CFrame.new(-0.225989342, -0.672472715, -0.121125221, 0.283221394, -0.957790554, 0.0492229052, 0.959042668, 0.282586992, -0.0195476338, 0.00481278449, 0.0527431704, 0.998596668)
w37.Part1 = p38
w37.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w38 = Instance.new("Weld", p1)
w38.Name = "Finger1"
w38.Part0 = p1
w38.C0 = CFrame.new(-0.21347332, -0.646197796, -0.401064396, 0.223477006, -0.973331034, 0.0518128723, 0.974692822, 0.22284843, -0.0176820755, 0.00566409668, 0.0544531718, 0.998500228)
w38.Part1 = p39
w38.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w39 = Instance.new("Weld", p1)
w39.Name = "Finger1"
w39.Part0 = p1
w39.C0 = CFrame.new(-0.0203151703, -0.670016766, -0.415992737, -0.0527111851, -0.97374773, 0.221442878, 0.0168246888, 0.220853701, 0.975161731, -0.99846828, 0.0551276468, 0.00474153878)
w39.Part1 = p40
w39.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w40 = Instance.new("Weld", p1)
w40.Name = "Finger1"
w40.Part0 = p1
w40.C0 = CFrame.new(-0.453149796, -0.558152914, -0.38684988, 0.571868837, -0.818719208, 0.0516246296, 0.820201039, 0.571814418, -0.0172774177, -0.0153743634, 0.052222997, 0.998517156)
w40.Part1 = p41
w40.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w41 = Instance.new("Weld", p1)
w41.Name = "Finger 5"
w41.Part0 = p1
w41.C0 = CFrame.new(0.42261219, -0.589272499, 0.373945713, -0.537351727, 0.842601895, -0.0357121415, 0.843243718, 0.536098838, -0.0392192677, -0.0139009953, -0.0511885919, -0.998592556)
w41.Part1 = p42
w41.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w42 = Instance.new("Weld", p1)
w42.Name = "Finger 5"
w42.Part0 = p1
w42.C0 = CFrame.new(0.184192657, -0.646717548, 0.389300346, 0.0359176099, 0.982733011, -0.18151027, 0.0394312888, 0.180092424, 0.982859015, 0.998576701, -0.0424591526, -0.0322819538)
w42.Part1 = p43
w42.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w43 = Instance.new("Weld", p1)
w43.Name = "Finger 5"
w43.Part0 = p1
w43.C0 = CFrame.new(0.285741806, -0.640794516, 0.381011963, -0.18293272, 0.982468367, -0.0359380059, 0.982593834, 0.181509629, -0.0395436846, -0.0323273502, -0.0425463095, -0.998571515)
w43.Part1 = p44
w43.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m.Parent = Character
m:MakeJoints()

local G1 = Instance.new("Weld",Character)
G1.Part0 = Character.G1.Handle1
G1.Part1 = Character["Left Arm"]
G1.C0 = CFrame.new(0,.5,0)

local G2 = Instance.new("Weld",Character)
G2.Part0 = Character.G2.Handle2
G2.Part1 = Character["Right Arm"]
G2.C0 = CFrame.new(0,.5,0) * CFrame.Angles(0,math.rad(180),0)
]]

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
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.4)
  end
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  mdec2.Parent = Decrease
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.8, 0.4, -0.3) * euler(1.3, 0, -1.4) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.8, 0.4, -0.3) * euler(1.3, 0, 1.4) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.3)
  end
  for i = 0, 1, 0.07 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.05, 0, 0), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.5) * euler(1.5, 0, -1.5) * euler(0, -0.3, 0), 0.6)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, -0.5) * euler(1.5, 0, 1.5) * euler(0, 0.3, 0), 0.6)
    RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.3)
  end
end
StaggerAnim = function()
  attack = true
  removeControl()
  if mode == "Unsheathed" then
    for i = 1, math.random(2, 4) do
      ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
    end
  end
  do
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
end
StaggerHitt = function()
  if mode == "Unsheathed" then
    Stun.Value = Stun.Value + math.random(3, 4)
    for i = 1, math.random(2, 4) do
      ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
    end
  end
end
StunAnim = function()
  attack = true
  removeControl()
  Stunned.Value = true
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  if mode == "Sheathed" then
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
    gairost.Parent = nil
  else
    do
      for i = 0, 1, 0.2 do
        swait()
        handlewld.Part1 = RightArm
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, cf(0, 0.7, 0) * euler(0, 1.57, 0) * euler(-2.1, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.3, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.1, 0, 0) * euler(0, 0, -0.3), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(-0.4, 0, 0.5) * euler(0, 0.3, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(0.4, 0.4, -0.5) * euler(0.4, 0, 0.5) * euler(0, 0.8, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.6) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0) * euler(0, 0, -0.6), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.2, -0.1, -0.4) * euler(0, -1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, -0.1) * euler(-0.1, 0, 0), 0.3)
      end
      for i = 0, 1, 0.1 do
        swait()
        handlewld.Part1 = RightArm
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.3, 0) * euler(0, 1.57, 0) * euler(-1.9, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.4, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.1, 0, 0) * euler(0, 0, -0.3), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0, 0, 0.5) * euler(0, 0.5, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.7) * euler(0.2, 0, 1.4) * euler(0, -1.2, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.7) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -1.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.2, 0.4, -0.4) * euler(0, -1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, 0.1) * euler(0, 0, 0), 0.3)
      end
      for i = 1, 100 do
        swait()
        if hitfloor ~= nil then
          Torso.Velocity = vt(0, 0, 0)
        end
      end
      for i = 0, 1, 0.1 do
        swait()
        handlewld.Part1 = RightArm
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.3, 0) * euler(0, 1.57, 0) * euler(-1.8, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.1, 0, 0) * euler(0, 0, -0.3), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0, 0, 0.5) * euler(0, 0.5, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.7) * euler(0.2, 0, 1.4) * euler(0, -1.2, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.6) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0) * euler(0, 0, -0.6), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.2, -0.1, -0.4) * euler(0, -1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, 0.1) * euler(-0.1, 0, 0), 0.3)
      end
      do
        resumeControl()
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
    end
  end
end
attackone = function()
  attack = true
  if mode == "Sheathed" then
    for i = 0, 1, 0.15 do
      swait()
      handlewld.Part1 = Torso
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(1.7, 0, -0.2) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.2) * euler(1.7, 0, 0.2) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC197: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC197: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("169445092", RightArm, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      if i <= 0.5 then
        RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.8) * euler(1.6, 0, 0.4) * euler(0, 0, 0), 0.6)
        MagniDamage(RightArm, 3, 4, 5, math.random(10, 15), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
      else
        RW.C0 = clerp(RW.C0, cf(1.1, 0.5, 0.2) * euler(1.55, 0, 0.7) * euler(0, 0, 0), 0.4)
      end
      handlewld.Part1 = Torso
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.1) * euler(1.7, 0, 0.4) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.2, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.4, 0) * euler(0, 0, -0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC451: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC451: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("169445092", RightArm, 1, 0.9)
    for i = 0, 1, 0.1 do
      swait()
      MagniDamage(RightArm, 3, 4, 6, math.random(10, 15), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
      if i <= 0.2 then
        RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.8) * euler(1.6, 0, 0.5) * euler(0, 0, 0), 0.4)
      else
        RW.C0 = clerp(RW.C0, cf(1, 0.4, -0.8) * euler(1, 0, -0.4) * euler(0, 0, 0), 0.2)
      end
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.6), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0) * euler(0.8, 0, -0.6) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.2, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, -0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.2, 0.1, 0), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC684: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC684: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  else
    RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(1.5, 0, 0) * euler(0, 0, -1) * euler(0, 0.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, 0.1) * euler(1.5, 0, -0.3) * euler(0, 0.5, 0), 0.3)
    for i = 0, 1, 0.08 do
      swait()
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
      wld1.C0 = clerp(wld1.C0, cf(0, 0.3, 0) * euler(0, 1, 0) * euler(-1, 0, 0), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.1, 0, 0), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.05, 0, 0) * euler(0, 0, 0.5), 0.2)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(2.4, 0, 0) * euler(0, 0, -1) * euler(0, 0.5, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, 0.1) * euler(3, 0, -0.3) * euler(0, 0.5, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1.2, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, -0.5, 0) * euler(0, 0, 0.2), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.2) * euler(0, -1.57, 0) * euler(-0.2, 0.1, 0) * euler(0, 0, 0.2), 0.2)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC962: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC962: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    LW.C0 = clerp(LW.C0, cf(0.4, 0.4, -1) * euler(1.5, 0, 0.8) * euler(0, 0, 0), 0.4)
    so("320557487", prt20, 1, 0.7)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
    for i = 0, 1, 0.05 do
      swait()
      if i <= 0.5 then
        hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
        MagniDamage(hitbox, 3, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(8, 10)), nil, true)
        hitbox.CFrame = prt20.CFrame * cf(0, -1, 0)
        MagniDamage(hitbox, 4, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(8, 10)), nil, true)
      end
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.25)
      wld1.C0 = clerp(wld1.C0, cf(0, 0.2, 0) * euler(0, 1.57, 0) * euler(-1.7, 0, 0), 0.25)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.25)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.1, 0, 0) * euler(0, 0, -0.8), 0.25)
      RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(-0.5, 0, 0) * euler(0, 0, 0.8) * euler(0, -0.3, 0), 0.25)
      LW.C0 = clerp(LW.C0, cf(0.4, 0.4, -1) * euler(0.2, 0, 0.8) * euler(0, 0, 0), 0.25)
      RH.C0 = clerp(RH.C0, cf(1.2, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, -0.5, 0) * euler(0, 0, -0.2), 0.25)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.2) * euler(0, -1.57, 0) * euler(-0.2, 0.1, 0) * euler(0, 0, 0.2), 0.25)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1303: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1303: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  hitbox.Parent = nil
  attack = false
end
attacktwo = function()
  attack = true
  if mode == "Sheathed" then
    for i = 0, 1, 0.2 do
      swait()
      handlewld.Part1 = Torso
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.4)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(-0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -0.6), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-0.4, 0.7, -0.7) * euler(1.57, 0, 1.3) * euler(0.5, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.4, -0.9, -0.3) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, 0.2), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("169445073", LeftArm, 1, 0.95)
    for i = 0, 1, 0.2 do
      swait()
      MagniDamage(LeftArm, 3, 4, 5, math.random(10, 15), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.1, 0, 1) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.1) * euler(1.57, 0, -1.3) * euler(-0.2, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.8, -0.1) * euler(0, 1.57, 0) * euler(-0.2, -0.1, 0) * euler(0, 0, -0.2), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1.1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(0, 0.1, 0) * euler(0, 0, 0), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC421: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC421: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("169445073", LeftLeg, 1, 1.1)
    for i = 0, 1, 0.2 do
      swait()
      MagniDamage(LeftLeg, 3, 4, 5, math.random(10, 15), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.05, 0, 0) * euler(0, 0, 0.4), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.4, -0.2) * euler(0.05, 0, 0) * euler(0, 0, -0.4), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.2) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.2) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.6, -0.6) * euler(0, 1.57, 0) * euler(0, 0, -0.1) * euler(-0.1, 0, 0), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * euler(0, -1.57, 0) * euler(0, 0, -1.8) * euler(-0.1, 0, 0), 0.5)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC621: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC621: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  else
    for i = 0, 1, 0.08 do
      swait()
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, -0.4, 0) * cf(0, 1, 0), 0.2)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.2, 0, 0), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.2, 0, 0) * euler(0, 0, -0.6), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(-0.2, 0, 0.6) * euler(0, -3, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(1, 0.5, -0.6) * euler(0.6, 0, 0.6) * euler(0, -2.2, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.3) * euler(0, 1.57, 0) * euler(-0.2, 0.6, 0) * euler(0, 0, 0.2), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1.3, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, -0.2), 0.2)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC839: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC839: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("320557563", prt20, 1, 0.7)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
    for i = 0, 1, 0.05 do
      swait()
      if i <= 0.3 then
        hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
        MagniDamage(hitbox, 3, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(6, 8)), nil, true)
        hitbox.CFrame = prt20.CFrame * cf(0, -1, 0)
        MagniDamage(hitbox, 4, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(6, 8)), nil, true)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0) * euler(0, 2.5, 0) * euler(-2, 0, 0), 0.25)
        RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(1, 0, -1) * euler(0, -1, 0), 0.25)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, 0.6) * euler(0, 0, 0), 0.25)
      else
        wld1.C0 = clerp(wld1.C0, cf(0, -0.5, 0) * euler(0, 1, 0) * euler(-1, 0, 0), 0.25)
        RW.C0 = clerp(RW.C0, cf(0.5, 0.5, -0.5) * euler(1, 0, -1) * euler(0, -1.2, 0), 0.25)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, -0.2) * euler(1, 0, 0.8) * euler(0, 0, 0), 0.25)
      end
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.25)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.4) * euler(0.1, 0, 0), 0.25)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0, 0, 1.8), 0.25)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.6) * euler(0, 1.57, 0) * euler(-0.1, -1.5, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.3) * euler(0, -1.57, 0) * euler(-0.1, -1, 0), 0.2)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1211: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1211: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
  end
  attack = false
end
attackthree = function()
  attack = true
  if mode == "Sheathed" then
    for i = 0, 1, 0.2 do
      swait()
      handlewld.Part1 = Torso
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.4)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.3, 0) * euler(0, 0, -0.8), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.8) * euler(0, 0.3, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.6, -0.2, -0.4) * euler(0, 1.57, 0) * euler(-1.27, 0, 0) * euler(0, 0, 1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.9, -0.4, -0.4) * euler(0, -1.57, 0) * euler(-0.3, 0, 0), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC191: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC191: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("169445073", RightLeg, 1, 0.9)
    for i = 0, 1, 0.2 do
      swait()
      MagniDamage(RightLeg, 3, 4, 5, math.random(10, 15), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.5, 0) * euler(0, 0, -1.4), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.6, -0.2) * euler(0, 0, 1.4) * euler(0, 0.5, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 1) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.2, -0.5, -0.5) * euler(0, 1.57, 0) * euler(-1.07, 0, 0) * euler(0, 0, 0.3), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1.4, -0.2, -0.4) * euler(0, -1.57, 0) * euler(-0.4, 0, 0), 0.5)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC385: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC385: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.3 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, -0.1, 0) * euler(0, 0, -0.2) * euler(0.2, 0, 0), 0.6)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.3, -0.2) * euler(0, 0, 0.2) * euler(0, 0.1, 0), 0.6)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.5) * euler(0, 0, 0), 0.6)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.5) * euler(0, 0, 0), 0.6)
      RH.C0 = clerp(RH.C0, cf(1.2, -0.9, -0.5) * euler(0, 1.57, 0) * euler(0, 0.4, 0) * euler(0.1, 0, 0) * euler(0, 0, 0.1), 0.6)
      LH.C0 = clerp(LH.C0, cf(-1.2, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.8, 0) * euler(0, 0, 0.2), 0.6)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC569: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC569: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("169445073", LeftLeg, 1, 0.8)
    for i = 0, 1, 0.1 do
      swait()
      MagniDamage(LeftLeg, 3, 4, 5, math.random(10, 15), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0.2, 0) * euler(0, 0, 1.5) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.2) * euler(0, 0, -1.5) * euler(0, -0.2, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.2) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.4, -0.7, -1) * euler(0, 1.57, 0) * euler(0, 1.5, 0) * euler(0, 0, 0) * euler(0, 0, -0.4), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.4, -0.2) * euler(0, -1.57, 0) * euler(-1.5, 0, 0) * euler(0, 0, -0.4), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC781: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC781: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  else
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, 0) * euler(0, 0, 0.5), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, -0.1) * euler(1.5, 0, -0.5) * euler(0, 0, 0), 0.3)
    for i = 0, 1, 0.08 do
      swait()
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.6, 0) * euler(0, 1.57, 0) * euler(-2, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(-0.3, 0, 0) * euler(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.1) * euler(2.8, 0, 0) * euler(0, 0, 0.2) * euler(0, -0.6, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(0.5, 0.8, -0.8) * euler(3, 0, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.7, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.4), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.2, -0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.4), 0.3)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1059: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1059: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    game:GetService("Debris"):AddItem(dec, 10)
    so("320557353", prt20, 1, 0.8)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
    dohit = 0
    for i = 0, 1, 0.05 do
      swait()
      dohit = dohit + 1
      if i <= 0.3 then
        hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
        MagniDamage(hitbox, 3, 7, 9, math.random(5, 15), "Normal", RootPart, 0.3, 1, (math.random(7, 9)), nil, true)
        hitbox.CFrame = prt20.CFrame * cf(0, -1, 0)
        MagniDamage(hitbox, 4, 7, 9, math.random(5, 15), "Normal", RootPart, 0.3, 1, (math.random(7, 9)), nil, true)
      end
      if dohit == 6 then
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = prt20.CFrame * cf(0, -1.5, 0)
        game:GetService("Debris"):AddItem(ref, 1)
        hitfloor2, posfloor2 = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
        if hitfloor2 ~= nil then
          ref.CFrame = cf(posfloor2)
          MagicWave(hitfloor2.BrickColor, cf(posfloor2), 1, 1, 1, 1, 1, 1, 0.05)
          MagniDamage(ref, 10, 7, 9, math.random(15, 20), "Knockdown2", ref, 0.5, 1, (math.random(10, 12)), nil, true)
          for i = 1, 10 do
            cf2 = cf(posfloor2) * cf(math.random(-1000, 1000) / 100, 1, math.random(-1000, 1000) / 100)
            ref.CFrame = cf2
            ghitfloor, gposfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
            if ghitfloor ~= nil then
              Col = ghitfloor.BrickColor
              local groundpart = part(3, workspace, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
              groundpart.Anchored = true
              groundpart.Material = ghitfloor.Material
              groundpart.CanCollide = true
              groundpart.CFrame = cf(gposfloor) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              game:GetService("Debris"):AddItem(groundpart, 5)
            end
          end
          ref.CFrame = cf(posfloor2)
          so("157878578", ref, 0.8, 0.8)
        end
      end
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.5)
      wld1.C0 = clerp(wld1.C0, cf(0, 0.6, 0) * euler(0, 1.57, 0) * euler(-1.3, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(-0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1.6, -0.6) * euler(0.4, 0, 0) * euler(0, 0, -1), 0.5)
      RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0, 1, 0) * euler(0.5, 0, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0, 1, 0) * euler(0, 0, 0.4) * euler(0, 0, 0.3), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.5, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.6), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, 0, -0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.4), 0.5)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1637: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1637: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
    dec.Parent = nil
  end
  do
    attack = false
  end
end
attackfour = function()
  attack = true
  if mode == "Sheathed" then
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.4, 0, -0.4) * euler(0, 0, 0), 0.3)
    for i = 0, 1, 0.4 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.6)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.6)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(-0.3, 0, 0), 0.6)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.6)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, -1, 0), 0.6)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.6, 0, -0.4) * euler(0, 1.57, 0), 0.6)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.6)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.6)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.4 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.2, 0, -0.8) * cf(1.9, -2.1, 1.6), 0.6)
      wld1.C0 = clerp(wld1.C0, euler(0, 0.4, 0) * cf(0, 0, 0), 0.6)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(-0.4, 0, 0), 0.6)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.8), 0.6)
      RW.C0 = clerp(RW.C0, cf(-0.8, 0.7, -0.5) * euler(3, 0, -0.8) * euler(0, 0, 0), 0.6)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.8, 0, -0.2) * euler(0, 0, 0), 0.6)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.6)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.6)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC408: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC408: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("203691447", prt20, 1, 0.8)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
    mode = "Unsheathed"
    handlewld.Part1 = RightArm
    handlewld.C0 = euler(0, 0, 0) * cf(0, 1, 0)
    wld1.C0 = cf(0, -0.8, 0) * euler(0, 0.6, 0) * euler(-2.3, 0, 0) * euler(0, 0, 0)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(0, 0, 0.8) * euler(0, 0.6, 0), 0.4)
    for i = 0, 1.4, 0.1 do
      swait()
      hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
      MagniDamage(hitbox, 3, 8, 10, math.random(5, 15), "Normal", RootPart, 0.5, 1, 10, nil, true)
      hitbox.CFrame = prt20.CFrame * cf(0, -1, 0)
      MagniDamage(hitbox, 4, 8, 10, math.random(5, 15), "Normal", RootPart, 0.5, 1, 10, nil, true)
      if i <= 0.3 then
        wld1.C0 = clerp(wld1.C0, cf(0, 0.2, 0) * euler(0, 2, 0) * euler(-1.2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(0.4, 0, 0) * euler(0, 0.8, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(0.5, 0.4, -0.5) * euler(0.4, 0, 0.4) * euler(0, 1, 0), 0.4)
      else
        wld1.C0 = clerp(wld1.C0, cf(0, -0.4, 0) * euler(0, 1, 0) * euler(-0.4, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(-0.6, 0, 1) * euler(0, -1.2, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(0.5, 0.4, -0.6) * euler(0.4, 0, 1) * euler(0, 1, 0), 0.4)
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.2, 0, 0), 0.25)
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0) * euler(0, 0, -0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.3, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(0, 0, -0.2), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC848: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC848: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
  else
    for i = 0, 1, 0.08 do
      swait()
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.25)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.4, 0, 0), 0.25)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(-0.2, 0, 0), 0.25)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.4, -0.6) * euler(0.4, 0, 0) * euler(0, 0, -1), 0.25)
      RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0, 3.8, 0) * euler(-0.5, 0, 0) * euler(0, 0, -0.8), 0.25)
      LW.C0 = clerp(LW.C0, cf(0.2, 0.6, -0.8) * euler(0, -1, 0) * euler(1.2, 0, 0) * euler(0, 0, -0.6), 0.25)
      RH.C0 = clerp(RH.C0, cf(0.5, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.6), 0.25)
      LH.C0 = clerp(LH.C0, cf(-1, 0, -0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.4), 0.25)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1080: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1080: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("320557382", prt20, 1, 0.75)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
    for i = 0, 1, 0.08 do
      swait()
      if i <= 0.6 then
        hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
        MagniDamage(hitbox, 3, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(6, 8)), nil, true)
        hitbox.CFrame = prt20.CFrame * cf(0, -1, 0)
        MagniDamage(hitbox, 4, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(6, 8)), nil, true)
      end
      if i <= 0.2 then
        wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.4, 0, 0), 0.25)
        LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.3) * euler(2, 0, 0.6) * euler(0, -1.57, 0), 0.25)
        LH.C0 = clerp(LH.C0, cf(-1, 0, -0.8) * euler(0, -1.57, 0) * euler(0, -1, 0) * euler(0, 0, 0), 0.25)
      else
        wld1.C0 = clerp(wld1.C0, cf(0, 0.8, 0) * euler(0, 1.57, 0) * euler(1.4, 0, 0), 0.25)
        LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.3) * euler(2, 0, 0.1) * euler(0, -1.57, 0), 0.25)
        LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, -0.8) * euler(0, -1.57, 0) * euler(0, -1, 0) * euler(0, 0, 0.8), 0.25)
      end
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.25)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.4, 0, 0), 0.25)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.6) * euler(-0.4, 0, 0) * euler(0, 0, 1), 0.25)
      RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(3, 0, 0) * euler(0, -2, 0) * euler(0, 0, 1), 0.25)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(0, 0, -0.4), 0.25)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1478: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1478: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
    for i = 0, 1, 0.2 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 0.6, 0) * euler(-2.3, 0, 0) * euler(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(-0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.8), 0.3)
      RW.C0 = clerp(RW.C0, cf(-0.8, 0.7, -0.5) * euler(3, 0, -0.8) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.8, 0, -0.2) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.3)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1682: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1682: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    mode = "Sheathed"
    handlewld.Part1 = Torso
    handlewld.C0 = euler(1.2, 0, -0.8) * cf(1.9, -2.1, 1.6)
    wld1.C0 = euler(0, 0.4, 0) * cf(0, 0, 0)
    for i = 0, 1, 0.2 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(-0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, -1, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.6, 0, -0.4) * euler(0, 1.57, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.3)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1903: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1903: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.4) * euler(0, 1.57, 0), 0.4)
    handlewld.C0 = euler(0, 0, -0.9) * cf(3.2, -3, -0.6)
    wld1.C0 = euler(0, 0, 0) * cf(0, 0, 0)
  end
  attack = false
end
Equip = function()
  attack = true
  if mode == "Sheathed" then
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.4, 0, -0.4) * euler(0, 0, 0), 0.3)
    for i = 0, 1, 0.2 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(-0.3, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, -1, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.6, 0, -0.4) * euler(0, 1.57, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.2 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(1.2, 0, -0.8) * cf(1.9, -2.1, 1.6), 0.3)
      wld1.C0 = clerp(wld1.C0, euler(0, 0.4, 0) * cf(0, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(-0.4, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.8), 0.4)
      RW.C0 = clerp(RW.C0, cf(-0.8, 0.7, -0.5) * euler(3, 0, -0.8) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.8, 0, -0.2) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC408: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC408: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    so("203691447", prt20, 1, 0.8)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
    mode = "Unsheathed"
    handlewld.Part1 = RightArm
    handlewld.C0 = euler(0, 0, 0) * cf(0, 1, 0)
    wld1.C0 = cf(0, -0.8, 0) * euler(0, 0.6, 0) * euler(-2.3, 0, 0) * euler(0, 0, 0)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(0, 0, 0.8) * euler(0, 0.6, 0), 0.4)
    for i = 0, 1.4, 0.1 do
      swait()
      hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
      MagniDamage(hitbox, 3, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(6, 8)), nil, true)
      hitbox.CFrame = prt20.CFrame * cf(0, -1, 0)
      MagniDamage(hitbox, 4, 7, 9, math.random(5, 15), "Normal", RootPart, 0.5, 1, (math.random(6, 8)), nil, true)
      if i <= 0.3 then
        wld1.C0 = clerp(wld1.C0, cf(0, 0.2, 0) * euler(0, 2, 0) * euler(-1.2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(0.4, 0, 0) * euler(0, 0.8, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(0.5, 0.4, -0.5) * euler(0.4, 0, 0.4) * euler(0, 1, 0), 0.4)
      else
        wld1.C0 = clerp(wld1.C0, cf(0, -0.4, 0) * euler(0, 1, 0) * euler(-0.4, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0.2) * euler(-0.6, 0, 1) * euler(0, -1.2, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(0.5, 0.4, -0.6) * euler(0.4, 0, 1) * euler(0, 1, 0), 0.4)
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.2, 0, 0), 0.25)
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0) * euler(0, 0, -0.2), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1.3, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(0, 0, -0.2), 0.4)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC856: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC856: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
  else
    if mode == "Unsheathed" then
      for i = 0, 1, 0.2 do
        swait()
        handlewld.Part1 = RightArm
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.9, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.2, 0, 0) * euler(0, 0, -0.6), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(1.2, 0, 0.2) * euler(0, -2.6, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(0.1, 0.4, -0.5) * euler(1, 0, 0.6) * euler(0, -2, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.3) * euler(0, 1.57, 0) * euler(-0.2, 0.6, 0) * euler(0, 0, 0.2), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1.3, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, -0.2), 0.4)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC1079: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1079: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      so("320557518", prt20, 0.8, 0.9)
      RW.C0 = clerp(RW.C0, cf(-0.8, 0.7, -0.5) * euler(1.5, 0, -0.8) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -0.2) * euler(0, 0, 0), 0.4)
      for i = 0, 1, 0.3 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 0.6, 0) * euler(-2.3, 0, 0) * euler(0, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(-0.4, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.8), 0.4)
        RW.C0 = clerp(RW.C0, cf(-0.8, 0.7, -0.5) * euler(3, 0, -0.8) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.8, 0, -0.2) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC1335: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1335: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      mode = "Sheathed"
      handlewld.Part1 = Torso
      handlewld.C0 = euler(1.2, 0, -0.8) * cf(1.9, -2.1, 1.6)
      wld1.C0 = euler(0, 0.4, 0) * cf(0, 0, 0)
      for i = 0, 1, 0.1 do
        swait()
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
        wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(-0.3, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, -1, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.6, 0, -0.4) * euler(0, 1.57, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC1556: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC1556: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.4) * euler(0, 1.57, 0), 0.4)
    end
  end
  attack = false
end
do1 = function()
  if holdz == true then
    holdz = false
  end
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 20 then
    holdz = true
    if mode == "Sheathed" then
      Equip()
    end
    attack = true
    mana.Value = mana.Value - 20
    local dec2 = Instance.new("NumberValue", Decrease)
    dec2.Name = "DecreaseMvmt"
    dec2.Value = 0.2
    game:GetService("Debris"):AddItem(dec2, 10)
    cooldowns[1] = 0
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, 0) * euler(0, 0, 0.5), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, -0.1) * euler(1.5, 0, -0.5) * euler(0, 0, 0), 0.3)
    for i = 0, 1, 0.1 do
      swait()
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.15)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.6, 0) * euler(0, 1.57, 0) * euler(-2, 0, 0), 0.15)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.4, 0, 0), 0.15)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(-0.1, 0, 0) * euler(0, 0, -1), 0.15)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.1) * euler(2.8, 0, 0) * euler(0, 0, 0.2) * euler(0, -0.6, 0), 0.15)
      LW.C0 = clerp(LW.C0, cf(0.5, 0.8, -0.8) * euler(3, 0, 0) * euler(0, 0, 0.6) * euler(0, 0, 0), 0.15)
      RH.C0 = clerp(RH.C0, cf(0.7, -0.8, -0.4) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.2), 0.15)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.1), 0.15)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC340: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC340: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local charge = 0
    local dam = 1
    while holdz==true do
      if holdz == true then
        swait()
        charge = charge + 1
        if charge == 10 then
          print("CHARGE 1")
          dam = 1.2
          parti.Enabled = true
          RingGui(Torso, BrickColor.new(EffectCol), 8)
        end
        if charge == 30 then
          print("CHARGE 2")
          dam = 1.4
          parti2.Enabled = true
          RingGui(Torso, BrickColor.new(EffectCol), 10)
        end
        if charge == 50 then
          print("CHARGE 3")
          dam = 1.8
          RingGui(Torso, BrickColor.new(EffectCol), 6)
          for i = 1, 3 do
            MagicCircle(BrickColor.new(EffectCol), cf(Torso.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 20, 5, -0.05, 20, -0.05, 0.1)
          end
          holdz = false
        end
        handlewld.Part1 = RightArm
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.15)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.6, 0) * euler(0, 1.57, 0) * euler(-1.7, 0, 0), 0.15)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.4, 0, 0), 0.15)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(-0.1, 0, 0) * euler(0, 0, -1), 0.15)
        RW.C0 = clerp(RW.C0, cf(1.3, 0.5, -0.1) * euler(3.2, 0, 0) * euler(0, 0, 0.2) * euler(0, -0.2, 0), 0.15)
        LW.C0 = clerp(LW.C0, cf(0.6, 0.9, -0.8) * euler(2.9, 0, 0) * euler(0, 0, 0.6) * euler(0, -0.4, 0), 0.15)
        RH.C0 = clerp(RH.C0, cf(0.7, -0.8, -0.4) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.2), 0.15)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.1), 0.15)
      end
      if Stagger.Value ~= true and StunT.Value <= Stun.Value then
        break
      end
    end
    parti.Enabled = false
    parti2.Enabled = false
    for i = 0, 1, 0.15 do
      swait()
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.15)
      wld1.C0 = clerp(wld1.C0, cf(0, -0.6, 0) * euler(0, 1.57, 0) * euler(-2, 0, 0), 0.15)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.4, 0, 0), 0.15)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, -0.3) * euler(-0.3, 0, 0) * euler(0, 0, -1), 0.15)
      RW.C0 = clerp(RW.C0, cf(1, 0.6, -0.5) * euler(0, 1, 0) * euler(0.5, 0, 0) * euler(1.5, 0, 0), 0.15)
      LW.C0 = clerp(LW.C0, cf(-0.5, -0.1, -0.5) * euler(0, 1, 0) * euler(0, 0, -0.4) * euler(0, 0, -0.3) * euler(2.6, 0, 0), 0.15)
      RH.C0 = clerp(RH.C0, cf(0.7, -0.8, -0.2) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.4), 0.15)
      LH.C0 = clerp(LH.C0, cf(-1, -0.2, -0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.4), 0.15)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC898: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC898: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    game:GetService("Debris"):AddItem(dec, 10)
    so("320557353", prt20, 1, 0.8)
    hitbox.Parent = modelzorz
    hitbox.Anchored = true
    hitbox.Size = vt(1, 1, 1)
    hitbox.CFrame = prt20.CFrame * cf(0, 1, 0)
    dohit = 0
    for i = 0, 1.5, 0.05 do
      swait()
      dohit = dohit + 1
      if dohit == 6 then
        ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = prt20.CFrame * cf(0, -1.5, 0)
        game:GetService("Debris"):AddItem(ref, 1)
        hitfloor2, posfloor2 = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
        if hitfloor2 ~= nil then
          ref.CFrame = cf(posfloor2)
          MagicWave(hitfloor2.BrickColor, cf(posfloor2), 1, 1, 1, 1, 1, 1, 0.05)
          MagicRing(hitfloor2.BrickColor, cf(posfloor2) * euler(1.57, 0, 0), 1, 1, 1, 1, 1, 1, 0.03)
          MagniDamage(ref, 15, 10 * dam, 12 * dam, math.random(40, 45), "Normal", RootPart, 0.5, 2, (math.random(10, 12)), nil, true)
          for i = 1, 10 do
            cf2 = cf(posfloor2) * cf(math.random(-1000, 1000) / 100, 1, math.random(-1000, 1000) / 100)
            ref.CFrame = cf2
            ghitfloor, gposfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
            if ghitfloor ~= nil then
              Col = ghitfloor.BrickColor
              local groundpart = part(3, workspace, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
              groundpart.Anchored = true
              groundpart.Material = ghitfloor.Material
              groundpart.CanCollide = true
              groundpart.CFrame = cf(gposfloor) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              game:GetService("Debris"):AddItem(groundpart, 5)
            end
          end
          ref.CFrame = cf(posfloor2)
          so("157878578", ref, 0.8, 0.8)
        end
      end
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.5)
      wld1.C0 = clerp(wld1.C0, cf(0, 0.6, 0) * euler(0, 1.57, 0) * euler(-1.3, 0, 0), 0.5)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(-0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -2.1, -0.6) * euler(0.4, 0, 0) * euler(0, 0, -1), 0.5)
      RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0, 1, 0) * euler(0.5, 0, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.4, -0.5) * euler(0, 1, 0) * euler(0, 0, 0.4) * euler(0, 0, 0.3), 0.5)
      RH.C0 = clerp(RH.C0, cf(0.5, -0.8, -0.8) * euler(0, 1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.6), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, 0, -0.2) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(0, 0, -0.4), 0.5)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC1430: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1430: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    hitbox.Parent = nil
    dec2.Parent = nil
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 10 and do2target ~= nil then
    if mode == "Unsheathed" then
      Equip()
    end
    attack = true
    cooldowns[2] = 0
    mana.Value = mana.Value - 10
    if do2mode == "Chase" then
      doing2 = true
      local x, y, z, newpos = nil, nil, nil, nil
      for i = 0, 1, 0.2 do
        swait()
        if do2target ~= nil then
          newpos = vt(do2target.Position.X, RootPart.Position.Y, do2target.Position.Z)
          MoveCF = cf(RootPart.Position, newpos)
          local mpos = Torso.CFrame * euler(0, 0, 0)
          local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
          x, y, x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
          --RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * cf(0, 0, -1.5) * euler(1, 0, 0), 0.4)
        end
        do
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.4, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.2, 0.5, 0) * euler(1, 0, 0.1) * euler(0, 0, 0) * cf(0, -0.3, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(1.1, -0.6, -1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.6) * cf(0, 0.5, 0), 0.4)
          LH.C0 = clerp(LH.C0, cf(-0.8, 1, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.8), 0.4)
          RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          if Stagger.Value ~= true then
            do
              if StunT.Value <= Stun.Value then
                break
              end
              -- DECOMPILER ERROR at PC328: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC328: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC328: LeaveBlock: unexpected jumping out DO_STMT

            end
          end
        end
      end
      so("2767090", Torso, 0.8, 1)
      MagicWave(BrickColor.new(NewCol), Torso.CFrame * euler(2, 0, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
      for i = 0, 1, 0.2 do
        swait()
        if do2target ~= nil then
print'Target is nil'
          RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(do2target.Position.X, RootPart.Position.Y, do2target.Position.Z) * euler(0, 3.14, 0) * cf(0, 0, -0.5) * euler(1.3, 0, 0), 0.4)
        end
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.6, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, 0) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(2, 0, 1.3) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(0.9, 0.2, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.4), 0.4)
        LH.C0 = clerp(LH.C0, cf(-0.9, -0.8, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, 0.3), 0.4)
        RH.C1 = clerp(RH.C1, RHC1, 0.6)
        LH.C1 = clerp(LH.C1, LHC1, 0.6)
        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
        if Rooted.Value == false then
          Torso.Velocity = MoveCF.lookVector * 150
        end
        -- DECOMPILER ERROR at PC596: Unhandled construct in 'MakeBoolean' P1

        if Rooted.Value == false then
          Torso.Velocity = MoveCF.lookVector * 140
        end
        do break end
      end
      do
        if do2target ~= nil then
          RootPart.CFrame = cf(RootPart.Position, newpos)
          RootJoint.C0 = RootCF * cf(0, 0, -0.5) * euler(1.3, 0, 0)
        end
        so("169445073", LeftLeg, 1, 1)
        RecentEnemy.Value = nil
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(1.3, 0, 0) * euler(0, 3, 0) * cf(0, 0, -2), 0.4)
        for i = 0, 1, 0.3 do
          swait()
          MagniDamage(LeftLeg, 4, 6, 8, math.random(20, 25), "Normal", RootPart, 0.3, 2, (math.random(6, 8)), nil, true)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(1.3, 0, 0) * euler(0, 3.5, 0) * cf(0, 0, -2), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.6, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(0.9, 0.2, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, 0.4), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, 0.1), 0.4)
          RH.C1 = clerp(RH.C1, RHC1, 0.6)
          LH.C1 = clerp(LH.C1, LHC1, 0.6)
          RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
          if Stagger.Value ~= true then
            do
              if StunT.Value <= Stun.Value then
                break
              end
              -- DECOMPILER ERROR at PC915: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC915: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        if RecentEnemy.Value ~= nil then
          cooldowns[2] = 70
        end
        do
          local dec = Instance.new("NumberValue", Decrease)
          dec.Name = "DecreaseMvmt"
          dec.Value = 10
          game:GetService("Debris"):AddItem(dec, 10)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(1.3, 0, 0) * euler(0, 3.5, 0) * cf(0, 0, -2), 0.4)
          for i = 0, 1, 0.1 do
            swait()
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 2, -1.5) * euler(1, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.4, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.2, 0.5, 0) * euler(1, 0, 0.1) * euler(0, 0, 0) * cf(0, -0.3, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.4) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.6, -1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.6) * cf(0, 0.5, 0), 0.3)
            LH.C0 = clerp(LH.C0, cf(-0.8, 1, -0.4) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.8), 0.3)
            if Stagger.Value ~= true then
              do
                if StunT.Value <= Stun.Value then
                  break
                end
                -- DECOMPILER ERROR at PC1146: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1146: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          dec.Parent = nil
          doing2 = false
          -- DECOMPILER ERROR at PC1152: Overwrote pending register: R1 in 'AssignReg'

          -- DECOMPILER ERROR at PC1153: Overwrote pending register: R2 in 'AssignReg'

          for i = 0, 1, 0.1 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.6) * euler(0, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, -0.1) * euler(-0.1, 0, -0.6), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.1, 0.5, -0.5) * euler(2, 0, -0.4) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.5) * euler(0.6, 0, 1) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(0.9, -0.9, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0.6, -0.3), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.6, 0.1), 0.4)
            if Stagger.Value ~= true then
              do
                if StunT.Value <= Stun.Value then
                  break
                end
                -- DECOMPILER ERROR at PC1304: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1304: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          dodrop = true
          instastun = false
          so("169445092", RightArm, 1, 0.8)
          for i = 0, 1, 0.1 do
            swait()
            MagniDamage(RightArm, 3, 8, 10, math.random(5, 10), "Normal", RootPart, 0.5, 2, (math.random(8, 10)), nil, true)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1.4, -0.1) * euler(0.1, 0, 0.6), 0.5)
            if i <= 0.3 then
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.7, 0, 0.2) * euler(0, 1.4, 0), 0.5)
              LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.2) * euler(1, 0, -0.2) * euler(0, 0, 0), 0.5)
            else
              RW.C0 = clerp(RW.C0, cf(1.1, 0.5, -0.4) * euler(0.4, 0, -0.4) * euler(0, 1.4, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.2) * euler(0.6, 0, -0.4) * euler(0, 0, 0), 0.5)
            end
            RH.C0 = clerp(RH.C0, cf(0.9, -0.9, 0.4) * euler(0, 1.57, 0) * euler(-0.1, -0.6, -0.5), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.4) * euler(0, -1.57, 0) * euler(0, -0.6, -0.1), 0.5)
            if Stagger.Value ~= true then
              do
                if StunT.Value <= Stun.Value then
                  break
                end
                -- DECOMPILER ERROR at PC1541: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC1541: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          if instastun == false then
            cooldowns[2] = 80
          end
          dodrop = false
          attack = false
        end
      end
    end
  end
end
do3 = function()
  if guarding == true and canguardoff == true then
    guarding = false
  end
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 10 then
    if mode == "Sheathed" then
      Equip()
    end
    attack = true
    mana.Value = mana.Value - 10
    guarding = true
    canguardoff = false
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 0.1
    Block.Value = true
    cooldowns[3] = 80
    for i = 0, 1, 0.1 do
      swait()
      cooldowns[3] = cooldowns[3] - 0.5
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, -1, -0.2) * euler(0, 0, 0) * euler(-2.6, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.1, 0, 0) * euler(0, 0, -0.2), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.9, -0.4) * euler(2.2, 0, 0) * euler(0, 0, 0.8) * euler(0, 2.1, 0) * euler(0, 0, 0.2), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.3, 0.3) * euler(1, 0, -0.1) * euler(0, 1.57, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.7, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0.2, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.2, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.1), 0.3)
      if Stagger.Value ~= true then
        do
          if StunT.Value <= Stun.Value then
            break
          end
          -- DECOMPILER ERROR at PC290: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC290: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    canguardoff = true
    while guarding == true and cooldowns[3] >= 0 and Block.Value == true do
      swait()
      cooldowns[3] = cooldowns[3] - 0.5
      handlewld.Part1 = RightArm
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, -1, -0.2) * euler(0, 0, 0) * euler(-2.6, 0, 0), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.1, 0, 0) * euler(0, 0, -0.2), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.9, -0.4) * euler(2.2, 0, 0) * euler(0, 0, 0.8) * euler(0, 2.1, 0) * euler(0, 0, 0.2), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.4, 0.3, 0.3) * euler(1, 0, -0.1) * euler(0, 1.57, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.9, -0.7, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0.2, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1.2, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.1), 0.3)
    end
    dec.Parent = nil
    cooldowns[3] = math.floor(cooldowns[3])
    if Block.Value == false then
      print("blocked")
      cooldowns[3] = 0
      doing2 = true
      DecreaseStat(Character, "Damage", -0.2, 300)
      for i = 0, 1, 0.05 do
        swait()
        if hitfloor ~= nil then
          Torso.Velocity = RootPart.CFrame.lookVector * (-50 + 50 * i)
        end
        handlewld.Part1 = RightArm
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.2)
        wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.4, 0, 0), 0.2)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.2, 0, 0) * euler(0, 0, -1), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.2) * euler(-0.2, 0, 0.8) * euler(0, -0.2, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.3, 0) * euler(0.2, 0, -0.4) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(0.9, -0.7, -1) * euler(0, 1.57, 0) * euler(-0.2, 0.4, 0) * euler(0, 0, -1), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, 0.4, -0.2) * euler(0, -1.57, 0) * euler(0.2, 1, 0) * euler(0, 0, -0.1), 0.2)
        if Stagger.Value ~= true then
          do
            if StunT.Value <= Stun.Value then
              break
            end
            -- DECOMPILER ERROR at PC769: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC769: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      doing2 = false
    else
      DecreaseStat(Character, "Damage", 0.2, 300)
    end
    Block.Value = false
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
  if cooldownmax <= cooldowns[4] and mana.Value >= 50 then
    if mode == "Unsheathed" then
      Equip()
    end
    attack = true
    cooldowns[4] = 0
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.4)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.5) * euler(0.8, 0, 0.5), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.6, 0, 1), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 0.87, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.27, 0.4), 0.4)
    end
    doing4 = true
    grabhit = false
    grabTarget = nil
    sref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    sref.Anchored = true
    sref.CFrame = LeftArm.CFrame * cf(0, -3, 0)
    game:GetService("Debris"):AddItem(sref, 10)
    so("169445092", LeftArm, 1, 1)
    RecentEnemy.Value = nil
    cangrab = true
    for i = 0, 1, 0.1 do
      swait()
      sref.CFrame = LeftArm.CFrame * cf(0, -1, 0) * euler(-1.57, 0, 0)
      if grabhit == true and cangrab == true then
        if grabTarget ~= nil and grabTarget:findFirstChild("Stats") ~= nil and grabTarget.Stats:findFirstChild("Ungrabbable") ~= nil and grabTarget.Stats.Ungrabbable.Value == true then
          cangrab = false
        end
        if cangrab == true then
          print("nopls")
          grabTarget.Humanoid.PlatformStand = true
          grabpos.position = sref.Position
          grabpos.Parent = grabTarget.Torso
          grabTarget.Torso.CFrame = sref.CFrame
        end
      end
      MagniDamage(LeftArm, 3, 4, 5, math.random(10, 15), "Normal", RootPart, 0.1, 2, (math.random(4, 6)), nil, true)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 1.2) * euler(0.2, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.2), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.6, 0, 0.6), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0.6), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 1.2, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.6, -0.9, 0.4) * euler(0, -1.57, 0) * euler(0, 1.2, 0.1), 0.4)
      if RecentEnemy.Value ~= nil then
        break
      end
    end
    do
      if grabTarget ~= nil and grabTarget:findFirstChild("Stats") ~= nil and grabTarget.Stats:findFirstChild("Ungrabbable") ~= nil and grabTarget.Stats.Ungrabbable.Value == true then
        cangrab = false
        print("nopls")
      end
      doing4 = false
      enemi=true
      if enemi==true then
        mana.Value = mana.Value - 50
        print("hitenemy")
        for i = 1, 3 do
          for i = 0, 1, 0.25 do
            swait()
            sref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0) * euler(-1.57, 0, 0)
            if grabhit == true and cangrab == true then
              grabTarget.Humanoid.PlatformStand = true
              grabpos.position = sref.Position
              grabpos.Parent = grabTarget.Torso
              grabTarget.Torso.CFrame = sref.CFrame
            end
            handlewld.Part1 = Torso
            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.5)
            wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.4, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 0.6), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.6) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.7, 0.8, -0.6) * euler(1, 0, 0.4) * euler(0, -0.5, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.5, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.6, 0) * euler(0, 0, -0.1), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.4) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 0.6), 0.5)
          end
          for i = 0, 1, 0.25 do
            swait()
            sref.CFrame = LeftArm.CFrame * cf(-0.8, -1.5, 0) * euler(-2, 0, 0)
            if grabhit == true and cangrab == true then
              grabTarget.Humanoid.PlatformStand = true
              grabpos.position = sref.Position
              grabpos.Parent = grabTarget.Torso
              grabTarget.Torso.CFrame = sref.CFrame
            end
            handlewld.Part1 = Torso
            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.7)
            wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.7)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.6, 0, 0), 0.7)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0, 0, 0.2), 0.7)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.6) * euler(0, 0, 0), 0.7)
            LW.C0 = clerp(LW.C0, cf(-1.4, 0.2, -0.6) * euler(0.4, 0, 0.2) * euler(0, -0.5, 0), 0.7)
            RH.C0 = clerp(RH.C0, cf(1, 0.2, -0.4) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(0, 0, -0.1), 0.7)
            LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.6) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, 1), 0.7)
          end
          MagicWave(BrickColor.new(NewCol), cf(sref.Position), 1, 1, 1, 2, 2, 2, 0.15)
          MagniDamage(sref, 8, 4, 5, 0, "Normal", RootPart, 0, 1, (math.random(4, 6)), nil, true, nil, "Movement", 0.1, 300)
        end
        for i = 1, 5 do
          swait()
          sref.CFrame = LeftArm.CFrame * cf(-0.8, -1.5, 0) * euler(-2, 0, 0)
          if grabhit == true and cangrab == true then
            grabTarget.Humanoid.PlatformStand = true
            grabpos.position = sref.Position
            grabpos.Parent = grabTarget.Torso
            grabTarget.Torso.CFrame = sref.CFrame
          end
        end
        if cangrab == true then
          for i = 0, 1, 0.15 do
            swait()
            sref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0) * euler(-1.57, 0, 0)
            if grabhit == true and cangrab == true then
              grabTarget.Humanoid.PlatformStand = true
              grabpos.position = sref.Position
              grabpos.Parent = grabTarget.Torso
              grabTarget.Torso.CFrame = sref.CFrame
            end
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 1.2), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0.2) * euler(1.4, 0, 0.2) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.2) * euler(0, 1.57, 0) * euler(-0.1, -1, 0) * euler(0, 0, -0.1), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.4, 0) * euler(0, 0, 0.2), 0.3)
          end
          for i = 0, 1, 0.2 do
            swait()
            if i <= 0.4 then
              sref.CFrame = LeftArm.CFrame * cf(0, -1.5, 0) * euler(-1.57, 0, 0)
              if grabhit == true then
                grabTarget.Humanoid.PlatformStand = true
                grabpos.position = sref.Position
                grabpos.Parent = grabTarget.Torso
                grabTarget.Torso.CFrame = sref.CFrame
              end
            else
              if i >= 0.4 and grabhit == true and grabTarget ~= nil then
                grabTarget.Humanoid.PlatformStand = false
                grabpos.Parent = nil
                sref.Parent = nil
              end
            end
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.2) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, -0.1), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 1, 0) * euler(0, 0, 0.1), 0.4)
          end
          --Damagefunc(grabTarget.Torso, 5, 7, math.random(30, 40), "Normal", RootPart, 0, 2, (math.random(3, 5)), nil, true)
          for i = 0, 1, 0.1 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, -1), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.2) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, -0.5) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.1, 0.1, 0) * euler(0, 0, -0.1), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.1, 1, 0) * euler(0, 0, 0.1), 0.4)
          end
        end
        do
          grabpos.Parent = nil
          for i = 0, 1, 0.2 do
            swait()
            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
            wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(-0.3, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.4) * euler(0, -1, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.6, 0, -0.4) * euler(0, 1.57, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
          end
          for i = 0, 1, 0.2 do
            swait()
            handlewld.C0 = clerp(handlewld.C0, euler(1.2, 0, -0.8) * cf(1.9, -2.1, 1.6), 0.3)
            wld1.C0 = clerp(wld1.C0, euler(0, 0.4, 0) * cf(0, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(-0.4, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0.8), 0.4)
            RW.C0 = clerp(RW.C0, cf(-0.8, 0.7, -0.5) * euler(3, 0, -0.8) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.8, 0, -0.2) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.4)
          end
          mode = "Unsheathed"
          handlewld.Part1 = RightArm
          handlewld.C0 = euler(0, 0, 0) * cf(0, 1, 0)
          wld1.C0 = cf(0, -0.8, 0) * euler(0, 0.6, 0) * euler(-2.3, 0, 0) * euler(0, 0, 0)
          for i = 0, 1, 0.1 do
            swait()
            handlewld.Part1 = RightArm
            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.4)
            wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.2, 0, 0), 0.4)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.2) * euler(0.4, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.2, -0.1) * euler(-0.3, 0, 1.2), 0.4)
            RW.C0 = clerp(RW.C0, cf(-0.4, 0.7, -0.5) * euler(3, 0, -0.6) * euler(0, 1.3, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(0.8, -0.3, -0.4) * euler(0, 1.57, 0) * euler(-0.1, -1.2, 0) * euler(0, 0, 0.5), 0.4)
            LH.C0 = clerp(LH.C0, cf(-0.7, -0.8, -0.6) * euler(0, -1.57, 0) * euler(-0.1, -1.2, 0) * euler(0, 0, 0.1), 0.4)
          end
          so("320557353", prt20, 1, 1)
          do
            local dec = Instance.new("NumberValue", Decrease)
            dec.Name = "DecreaseMvmt"
            dec.Value = 10
            game:GetService("Debris"):AddItem(dec, 10)
            dohit = 0
            for i = 0, 1, 0.05 do
              swait()
              dohit = dohit + 1
              if dohit == 7 then
                ref = part(3, workspace, 0, 0, BrickColor.new("Black"), "Reference", vt())
                ref.Anchored = true
                ref.CFrame = RootPart.CFrame * cf(0, 0, -8)
                game:GetService("Debris"):AddItem(ref, 5)
                table.insert(Effects, {ref, "Shockwave", 82, RootPart.CFrame * cf(0, 0, -8), 0})
              end
              handlewld.Part1 = RightArm
              handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
              wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.9, 0, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.3) * euler(-0.2, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1.8, -1) * euler(0.3, 0, 1.3), 0.3)
              RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(3, 0, -0.6) * euler(0, 1.3, 0) * euler(-2.8, 0, 0), 0.5)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(0.8, 0.1, -0.4) * euler(0, 1.57, 0) * euler(-0.1, -1.3, 0) * euler(0, 0, 0.3), 0.3)
              LH.C0 = clerp(LH.C0, cf(-0.7, -0.9, -1) * euler(0, -1.57, 0) * euler(-0.1, -1.3, 0) * euler(0, 0, 0.6), 0.3)
            end
            for i = 1, 10 do
              swait()
            end
            dec.Parent = nil
            if RecentEnemy.Value == nil then
              cooldowns[4] = 70
            end
            attack = false
          end
        end
      end
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
              pitch = 1
              if mode == "Unsheathed" then
                pitch = 0.8
              end
              hitnum = math.random(1, 5)
              if hitnum == 1 then
                so("199148971", ref, 1, pitch)
              else
                if hitnum == 2 then
                  so("199149025", ref, 1, pitch)
                else
                  if hitnum == 3 then
                    so("199149072", ref, 1, pitch)
                  else
                    if hitnum == 4 then
                      so("199149109", ref, 1, pitch)
                    else
                      if hitnum == 5 then
                        so("199149119", ref, 1, pitch)
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
            -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out DO_STMT

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
MagicnegCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "1185246", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
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
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicWave2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "1323306", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder2", delay, x3, y3, z3, msh, 0})
end
MagicSpecial = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "24388358", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
RingGui = function(parent, color, thing)
  rgui = Instance.new("BillboardGui")
  game:GetService("Debris"):AddItem(rgui, 10)
  rgui.Parent = parent
  rgui.Size = UDim2.new(1, 0, 1, 0)
  rgui.AlwaysOnTop = true
  rimg = Instance.new("ImageLabel")
  rimg.Parent = rgui
  rimg.BackgroundTransparency = 1
  rimg.Size = UDim2.new(1, 0, 1, 0)
  rimg.Image = "rbxassetid://144580273"
  rimg.ImageTransparency = 0.4
  rimg.ImageColor3 = color.Color
  table.insert(Effects, {rgui, "PunchEf", rimg, 10, thing})
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
  if key == "g" then
    Stun.Value = 100
  end
  if key == "c" and guarding == true and canguardoff == true then
    guarding = false
  end
  if attack == true then
    return 
  end
  if key == "f" and mode == "Sheathed" then
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
  if key == "e" and mana.Value >= 5 then
    mana.Value = mana.Value - 5
    Equip()
    combo = 0
  end
  if key == "z" then
    do1()
  end
  if key == "x" then
    do2()
  end
  if key == "g" then
    cooldowns[3] = 100
  end
  if key == "c" then
    do3()
  end
  if key == "v" then
    do4()
  end
end
key2 = function(key)
  if key == "z" and holdz == true then
    holdz = false
  end
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
print("Grand loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local walk = 0
local walkforw = true
local dawalk = 0
while 1 do
  swait()
  if mode == "Sheathed" then
    passive1.Value = 0
    passive2.Value = 0
    passive3.Value = 0
  else
    passive1.Value = -0.5
    passive2.Value = -0.1
    passive3.Value = 0.3
  end
  target = findNearestTorso(RootPart.Position)
  do2target = target
  dd=true
  if dd==false then
    do2mode = "Drop"
    fenbarmove2.Text = "(X)\nDrop"
  else
    do2mode = "Chase"
    fenbarmove2.Text = "(X)\nChase"
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
    if Stagger.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
  if mode == "Unsheathed" then
    Stagger.Value = false
    Stun.Value = Stun.Value + math.random(4, 6)
    return 
  end
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
    local stunnum2 = 40
    if stunnum2 <= stunnum and (0 < Stun.Value) then
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
          if attack == false and mode == "Sheathed" then
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(-0.5, 0, 0), Mvmt.Value * 10 / 50)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0.5, 0, 0), Mvmt.Value * 10 / 50)
          else
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          end
        else
          RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          if attack == false and mode == "Sheathed" then
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0.5, 0, 0), Mvmt.Value * 10 / 50)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(-0.5, 0, 0), Mvmt.Value * 10 / 50)
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
          if mode == "Sheathed" then
            handlewld.Part1 = Torso
            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
            wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.2), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-1, 0, -0.2), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
          else
            handlewld.Part1 = RightArm
            handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
            wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.9, 0, 0), 0.3)
            Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(0.8, 0, -0.2) * euler(0, -2.6, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(0.1, 0.4, -0.5) * euler(1, 0, 0.6) * euler(0, -2, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
          end
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            if mode == "Sheathed" then
              handlewld.Part1 = Torso
              handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
              wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
              Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8), 0.2)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.2)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
            else
              handlewld.Part1 = RightArm
              handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
              wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.9, 0, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0, 0, 0), 0.2)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(0.8, 0, -0.2) * euler(0, -2.6, 0), 0.2)
              LW.C0 = clerp(LW.C0, cf(0.1, 0.4, -0.5) * euler(1, 0, 0.6) * euler(0, -2, 0), 0.2)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
            end
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              if mode == "Sheathed" then
                handlewld.Part1 = Torso
                handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
                wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.15)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.15)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4 - (donum) / 3, 0, 0.4 - (donum) / 5) * euler(0, -1, 0), 0.15)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.4 - (donum) / 3, 0, -0.4 + (donum) / 5) * euler(0, 1, 0), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0.1, 0), 0.2)
              else
                handlewld.Part1 = RightArm
                handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
                wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.3, 0, 0), 0.3)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.3) * euler(0.1, 0, 0), 0.15)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.1, 0, 0) * euler(0, 0, -0.3), 0.15)
                RW.C0 = clerp(RW.C0, cf(1.1, 0.5, 0.4) * euler(-0.4, 0, 0.8) * euler(0, -0.5, 0), 0.15)
                LW.C0 = clerp(LW.C0, cf(-1.4, 0.4, -0.1) * euler(0.4, 0, -0.5) * euler(0, 0, 0), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.1, -0.1, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1.3, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.3, 0) * euler(0, 0, -0.2), 0.2)
              end
            end
          else
            if 2 < torvel and hitfloor ~= nil and doing2 == false then
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
                if mode == "Sheathed" then
                  handlewld.Part1 = Torso
                  handlewld.C0 = clerp(handlewld.C0, euler(0, 0, -0.9) * cf(3.2, -3, -0.6), 0.3)
                  wld1.C0 = clerp(wld1.C0, euler(0, 0, 0) * cf(0, 0, 0), 0.3)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.1) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.1), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
                else
                  handlewld.Part1 = RightArm
                  handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1, 0), 0.3)
                  wld1.C0 = clerp(wld1.C0, cf(0, -0.8, 0) * euler(0, 1.57, 0) * euler(-1.9, 0, 0), 0.3)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.15)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0.2, 0, 0) * euler(0, 0, -0.6), 0.15)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(0.8, 0, -0.2) * euler(0, -2.6, 0), 0.15)
                  LW.C0 = clerp(LW.C0, cf(-0.2, 0.4, -1) * euler(1.4, 0, 0.4) * euler(0, -2, 0), 0.15)
                  RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.3) * euler(0, 1.57, 0) * euler(-0.2, 0.6, 0) * euler(0, 0, 0.2), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1.3, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0.6, 0) * euler(0, 0, -0.2), 0.2)
                end
              end
            else
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
            if Thing[2] == "Sound" then
              if 1 <= Thing[4] and 0 < Thing[1].Pitch then
                Thing[4] = Thing[4] - 1
                Thing[1].Pitch = Thing[1].Pitch + Thing[3]
              else
                Thing[1].Volume = 0
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "PunchEf" then
              if 0 <= Thing[4] then
                Thing[4] = Thing[4] - 1
                Thing[3].ImageTransparency = Thing[3].ImageTransparency + 0.15
                Thing[1].Size = Thing[1].Size + UDim2.new(Thing[5], 0, Thing[5], 0)
              else
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "Shockwave" then
              if 0 <= Thing[3] then
                Thing[3] = Thing[3] - 2
                if Thing[3] % 10 == 0 then
                  Thing[5] = Thing[5] + 12
                  hitfloor2, posfloor2 = rayCast(Thing[1].Position, CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
                  if hitfloor2 ~= nil then
                    Thing[1].CFrame = cf(posfloor2)
                    MagicWave(hitfloor2.BrickColor, cf(posfloor2), 1, 1, 1, 1, 0.2, 1, 0.05)
                    MagicWave2(BrickColor.new(NewCol2), cf(posfloor2), 1, 1, 1, 1.2, 2, 1.2, 0.05)
                    MagniDamage(Thing[1], 10, 10, 14, math.random(10, 15), "Normal", RootPart, 0.5, 2, (math.random(4, 6)), nil, true)
                    for i = 1, 4 do
                      cf2 = cf(posfloor2) * cf(math.random(-800, 800) / 100, 1, math.random(-800, 800) / 100)
                      Thing[1].CFrame = cf2
                      ghitfloor, gposfloor = rayCast(Thing[1].Position, CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
                      if ghitfloor ~= nil then
                        Col = ghitfloor.BrickColor
                        local groundpart = part(3, workspace, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
                        groundpart.Anchored = true
                        groundpart.Material = ghitfloor.Material
                        groundpart.CanCollide = true
                        groundpart.CFrame = cf(gposfloor) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                        game:GetService("Debris"):AddItem(groundpart, 5)
                      end
                    end
                    ref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                    ref2.Anchored = true
                    ref2.CFrame = Thing[4] * cf(0, 0, -Thing[5])
                    game:GetService("Debris"):AddItem(ref2, 1)
                    Thing[1].CFrame = ref2.CFrame * cf(0, 5, 0)
                    so("178452221", ref2, 0.6, 0.6)
                  end
                end
              else
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "CloneEf" and Thing[2] ~= "Sound" and Thing[2] ~= "PunchEf" and Thing[2] ~= "Shockwave" then
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
                        if Thing[1].Transparency <= 0.5 then
                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                          Thing[8] = Thing[8] + 0.2
                          Thing[1].CFrame = Thing[1].CFrame * cf(0, 1, 0) * euler(0, Thing[8], 0)
                        else
                          Mesh.Scale = Mesh.Scale + vt(Thing[4], -Thing[5] / 1, Thing[6])
                          Thing[1].CFrame = Thing[1].CFrame * cf(0, -1, 0)
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
        -- DECOMPILER ERROR at PC6830: Unhandled construct in 'MakeBoolean' P1

        if Humanoid.Health / 2 <= Humanoid.Health and c.Name == "DecreaseMvmt" and (c:findFirstChild("Grand")) == nil then
          c.Parent = nil
        end
        if c.Name == "DecreaseDef" and (c:findFirstChild("Grand")) == nil and 0 <= c.Value then
          c.Parent = nil
        end
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
        if mananum <= 12 then
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
      -- DECOMPILER ERROR at PC7059: LeaveBlock: unexpected jumping out DO_STMT

      -- DECOMPILER ERROR at PC7059: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end