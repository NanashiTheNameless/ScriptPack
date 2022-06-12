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
Face = Head.face
Neck = Torso.Neck
it = Instance.new
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
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
deb = false
equipped = false
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local gun = false
local shoot = false
player = nil
mana = 0
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 0
local co2 = 0
local co3 = 0
local co4 = 0
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 7
local maxstamina = 100
local stamina = 0
local skill1stam = 0
local skill2stam = 0
local skill3stam = 0
local skill4stam = 0
local recovermana = 3
local mindamage = 5
local maxdamage = 10
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local defensevalue = 1
local speedvalue = 1
local damagevalue = 1
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end

makelabel = function(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

local stats = Instance.new("Folder", Character)
stats.Name = "Stats"
local block = Instance.new("BoolValue", stats)
block.Name = "Block"
block.Value = false
local stun = Instance.new("BoolValue", stats)
stun.Name = "Stun"
stun.Value = false
local defense = Instance.new("NumberValue", stats)
defense.Name = "Defence"
defense.Value = defensevalue
local speed = Instance.new("NumberValue", stats)
speed.Name = "Speed"
speed.Value = speedvalue
local damagea = Instance.new("NumberValue", stats)
damagea.Name = "Damage"
damagea.Value = damagevalue
framesk1 = makeframe(scrn, 0.5, ud(0.13, 0, 0.56, 0), ud(0.08, 0, 0.06, 0), c3(1, 1, 0.5))
bar1 = makeframe(framesk1, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 0.5))
ammolabel = Instance.new("TextLabel", framesk1)
ammolabel.BackgroundTransparency = 1
ammolabel.Size = ud(1, 0, 1, 0)
ammolabel.Position = ud(0, 0, 0, 0)
ammolabel.TextColor3 = c3(255, 255, 255)
ammolabel.TextStrokeTransparency = 0
ammolabel.FontSize = Enum.FontSize.Size8
ammolabel.Font = Enum.Font.SourceSans
ammolabel.BorderSizePixel = 0
ammolabel.TextScaled = true
ammolabel.Text = "Speed [" .. speed.Value .. "]"
framesk2 = makeframe(scrn, 0.5, ud(0.13, 0, 0.63, 0), ud(0.08, 0, 0.06, 0), c3(1, 0.5, 1))
bar2 = makeframe(framesk2, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.5, 0.25, 0.25))
ammolabel2 = Instance.new("TextLabel", framesk2)
ammolabel2.BackgroundTransparency = 1
ammolabel2.Size = ud(1, 0, 1, 0)
ammolabel2.Position = ud(0, 0, 0, 0)
ammolabel2.TextColor3 = c3(255, 255, 255)
ammolabel2.TextStrokeTransparency = 0
ammolabel2.FontSize = Enum.FontSize.Size8
ammolabel2.Font = Enum.Font.SourceSans
ammolabel2.BorderSizePixel = 0
ammolabel2.TextScaled = true
ammolabel2.Text = "Damage [" .. damagea.Value .. "]"
framesk3 = makeframe(scrn, 0.5, ud(0.13, 0, 0.7, 0), ud(0.08, 0, 0.06, 0), c3(1, 0.5, 1))
bar3 = makeframe(framesk3, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.25, 0.25, 0.5))
ammolabel3 = Instance.new("TextLabel", framesk3)
ammolabel3.BackgroundTransparency = 1
ammolabel3.Size = ud(1, 0, 1, 0)
ammolabel3.Position = ud(0, 0, 0, 0)
ammolabel3.TextColor3 = c3(255, 255, 255)
ammolabel3.TextStrokeTransparency = 0
ammolabel3.FontSize = Enum.FontSize.Size8
ammolabel3.Font = Enum.Font.SourceSans
ammolabel3.BorderSizePixel = 0
ammolabel3.TextScaled = true
ammolabel3.Text = "Defense [" .. defense.Value .. "]"
framesk4 = makeframe(scrn, 0.5, ud(0.13, 0, 0.42, 0), ud(0.08, 0, 0.06, 0), c3(1, 1, 1))
bar4 = makeframe(framesk4, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 1))
ammolabel4 = Instance.new("TextLabel", framesk4)
ammolabel4.BackgroundTransparency = 1
ammolabel4.Size = ud(1, 0, 1, 0)
ammolabel4.Position = ud(0, 0, 0, 0)
ammolabel4.TextColor3 = c3(255, 255, 255)
ammolabel4.TextStrokeTransparency = 0
ammolabel4.FontSize = Enum.FontSize.Size8
ammolabel4.Font = Enum.Font.SourceSans
ammolabel4.BorderSizePixel = 0
ammolabel4.TextScaled = true
ammolabel4.Text = "Press F to equip your weapon."
framesk5 = makeframe(scrn, 0.5, ud(0.13, 0, 0.49, 0), ud(0.08, 0, 0.06, 0), c3(1, 1, 1))
bar5 = makeframe(framesk5, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 1))
ammolabel4 = Instance.new("TextLabel", framesk5)
ammolabel4.BackgroundTransparency = 1
ammolabel4.Size = ud(1, 0, 1, 0)
ammolabel4.Position = ud(0, 0, 0, 0)
ammolabel4.TextColor3 = c3(255, 255, 255)
ammolabel4.TextStrokeTransparency = 0
ammolabel4.FontSize = Enum.FontSize.Size8
ammolabel4.Font = Enum.Font.SourceSans
ammolabel4.BorderSizePixel = 0
ammolabel4.TextScaled = true
ammolabel4.Text = "The keys for the abilities are: E, Z, X, C, and V."
animate = Character:findFirstChild("Animate")
animate.Disabled = false
CustomColor = Torso.BrickColor
Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b
mouse = Player:GetMouse()
RW = Torso["Right Shoulder"]
LW = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part)
  Part.TopSurface = 10
end

local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Stepped:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Stepped:wait(0)
    end
  end
end

fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
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
end
)
nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

m = Instance.new("Model", Character)
m.Name = "STOP"
Handle = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handleweld = weld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.14576721e-005, 1.00000191, 1.52587891e-005, -4.37113883e-008, 0, -1, 0, 0.999999881, 0, 1, 0, -4.37113883e-008))
mesh("SpecialMesh", Handle, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(35, 1.5, 1.5))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.01000118, -0.200000763, -1.1920929e-007, 1, 4.37113883e-008, 0, 0, 1.91068547e-015, 1, 4.37113883e-008, -1, 1.91068547e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(10, 1, 4))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.1283927, -0.200000763, -2.12839127, 0.707106948, 0.70710659, -1.28027615e-008, -1.28027615e-008, 3.0908609e-008, 1, 0.70710659, -0.707106948, 3.0908609e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(9.89999962, 1, 4.19999981))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.12839174, -0.200000763, -2.1283927, -0.70710659, 0.707106948, -7.46199973e-008, -7.46199973e-008, 3.09086268e-008, 1, 0.707106948, 0.70710659, 3.09086268e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(9.89999962, 1, 4.19999981))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.200000763, 3.01000118, 1.91068547e-015, -1, -4.37113883e-008, -4.37113883e-008, -4.37113883e-008, 1, -1, 0, -4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(10, 1, 4))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.724999547, -0.210002899, -3.34500122, 5.96046412e-008, 1, -4.37113883e-008, -4.37113847e-008, 4.37113918e-008, 1, 1, -5.96046377e-008, 4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.18500042, -0.210002899, -0.824999571, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.72500062, -0.210002899, 3.0350008, -5.96046341e-008, -1, -4.37113954e-008, -4.37113883e-008, -4.37113918e-008, 1, -1, 5.96046377e-008, -4.37113847e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88500118, -0.210002899, -0.625000238, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.725000381, -0.210002899, 2.73500061, -5.96046341e-008, -1, -4.37113954e-008, -4.37113883e-008, -4.37113918e-008, 1, -1, 5.96046377e-008, -4.37113847e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88500023, -0.210002899, -0.305000544, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.1950016, -0.210002899, -0.30500102, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.305000186, -0.210002899, -3.34500217, 5.96046412e-008, 1, -4.37113883e-008, -4.37113847e-008, 4.37113918e-008, 1, 1, -5.96046377e-008, 4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88500118, -0.210002899, 0.015000701, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500065, -0.210002899, 0.0150001049, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.164998531, -0.210002899, -3.34500122, 5.96046412e-008, 1, -4.37113883e-008, -4.37113847e-008, 4.37113918e-008, 1, 1, -5.96046377e-008, 4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88500118, -0.210002899, 0.315000296, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500065, -0.210002899, 0.315001369, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.164998174, -0.210002899, -2.73500061, 5.96046412e-008, 1, -4.37113883e-008, -4.37113847e-008, 4.37113918e-008, 1, 1, -5.96046377e-008, 4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88500214, -0.210002899, 0.535002112, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500065, -0.210002899, 0.535001278, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500065, -0.210002899, 0.834999204, -1, 5.96046377e-008, -8.74227766e-008, -8.74227766e-008, 0, 1, 5.96046377e-008, 1, 5.21080354e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.684997559, -0.210002899, -3.34500027, 5.96046412e-008, 1, -4.37113883e-008, -4.37113847e-008, 4.37113918e-008, 1, 1, -5.96046377e-008, 4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.684998512, -0.210002899, -3.04500103, 5.96046412e-008, 1, -4.37113883e-008, -4.37113847e-008, 4.37113918e-008, 1, 1, -5.96046377e-008, 4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.01000166, -0.189994812, 0.0100030899, 1, -4.37114025e-008, -1.58932352e-008, -1.58932387e-008, -5.96046377e-008, -1, 4.37114025e-008, 1, -5.96046341e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(10, 1, 4))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.1354661, -0.189994812, -2.12131977, 0.707106829, -0.707106769, 4.58097809e-008, -2.24173533e-008, -8.72021815e-008, -1, 0.707106769, 0.707106829, -7.75127234e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(9.89999962, 1, 4.19999981))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.12131834, -0.189994812, -2.13546705, -0.707106292, -0.707107246, -6.07109172e-008, 1.47268324e-007, -6.14099775e-008, -1, 0.707107246, -0.707106292, 1.47557884e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(9.89999962, 1, 4.19999981))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, CustomColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0100032091, -0.189994812, 3.01000166, 2.60540156e-015, 1, -5.96046377e-008, -1.58932636e-008, -5.96046377e-008, -1, -1, 3.55271368e-015, 1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(10, 1, 4))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.735001564, -0.199996948, -3.34499979, 5.96046092e-008, -1, 5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, 1, 5.96046092e-008, -1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.18499231, -0.199996948, -0.834997773, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.735005498, -0.199996948, 3.03500223, -5.96046164e-008, 1, -5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, -1, -5.96046164e-008, 1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88499784, -0.200004578, -0.63499558, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.734998822, -0.199993134, 2.73499918, -5.96046164e-008, 1, -5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, -1, -5.96046164e-008, 1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88499594, -0.200000763, -0.315001726, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500494, -0.199996948, -0.31500113, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.315002918, -0.200000763, -3.34500074, 5.96046092e-008, -1, 5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, 1, 5.96046092e-008, -1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.8849988, -0.200000763, 0.00499808788, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500017, -0.200000763, 0.00499856472, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.154998422, -0.200000763, -3.34500074, 5.96046092e-008, -1, 5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, 1, 5.96046092e-008, -1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.8849988, -0.200004578, 0.305001616, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500017, -0.200004578, 0.305000901, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.154993892, -0.199996948, -2.73500013, 5.96046092e-008, -1, 5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, 1, 5.96046092e-008, -1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.8849988, -0.200000763, 0.525003314, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500017, -0.200004578, 0.524998307, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19500017, -0.200004578, 0.82499969, -1, -5.96046519e-008, 1.58932281e-008, -1.58932245e-008, -5.96046377e-008, -1, 5.96046519e-008, -1, 5.96046377e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.675001979, -0.199996948, -3.34499884, 5.96046092e-008, -1, 5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, 1, 5.96046092e-008, -1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.675001979, -0.199996948, -3.04500151, 5.96046092e-008, -1, 5.96046412e-008, -1.58932636e-008, -5.96046377e-008, -1, 1, 5.96046092e-008, -1.58932636e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 1, 1))
Hitbox = part(Enum.FormFactor.Brick, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Hitbox", Vector3.new(0.899999976, 2.25, 2.25))
Hitboxweld = weld(m, Handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 3.01000118, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008))
Handleweld.Part0 = Torso
Handleweld.Part1 = Handle
Handleweld.C0 = cf(-0.5, 0.75, 0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(45), math.rad(0), math.rad(0))
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "It\'s Time to Stop"
  script.Parent = Tool
end
Bin = script.Parent
for i,v in pairs(Character:GetChildren()) do
  if v:IsA("Model") then
    for _,c in pairs(v:GetChildren()) do
      if c:IsA("Part") then
        c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
      end
    end
  end
end
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
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
  local TrailColor = "Dark grey"
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(TrailColor)
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
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new(TrailColor)
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
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

clerp = function(a, b, t)
  local qa = {QuaternionFromCFrame(a)}
  local qb = {QuaternionFromCFrame(b)}
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

QuaternionFromCFrame = function(cf)
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    do
      local i = 0
      if m00 < m11 then
        i = 1
      end
      if i == 0 and m00 or m11 < m22 then
        i = 2
      end
      if i == 0 then
        local s = math.sqrt(m00 - m11 - m22 + 1)
        local recip = 0.5 / s
        return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
      else
        do
          if i == 1 then
            local s = math.sqrt(m11 - m22 - m00 + 1)
            local recip = 0.5 / s
            return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
          else
            do
              if i == 2 then
                local s = math.sqrt(m22 - m00 - m11 + 1)
                local recip = 0.5 / s
                return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
              end
            end
          end
        end
      end
    end
  end
end

QuaternionToCFrame = function(px, py, pz, x, y, z, w)
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

QuaternionSlerp = function(a, b, t)
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp = nil, nil
  if cosTheta >= 0.0001 then
    if 1 - cosTheta > 0.0001 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      do
        startInterp = 1 - t
        finishInterp = t
        if 1 + cosTheta > 0.0001 then
          local theta = math.acos(-cosTheta)
          local invSinTheta = 1 / math.sin(theta)
          startInterp = math.sin((t - 1) * theta) * invSinTheta
          finishInterp = math.sin(t * theta) * invSinTheta
        else
          do
            startInterp = t - 1
            finishInterp = t
            return a[1] * (startInterp) + b[1] * finishInterp, a[2] * (startInterp) + b[2] * finishInterp, a[3] * (startInterp) + b[3] * finishInterp, a[4] * (startInterp) + b[4] * finishInterp
          end
        end
      end
    end
  end
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = workspace
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  c.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", c)
  bg.Adornee = c
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  if crit == true then
    tl.TextColor3 = Color3.new(0.70588235294118, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.70588235294118, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      swait()
      c.Transparency = 1
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end
)()
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
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
    local blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      local D = math.random(minim, maxim) * damagea.Value
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
      if not h.Parent:FindFirstChild("Stats") then
        do
          h.Health = h.Health - D
          makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
          local D = math.random(minim, maxim) * damagea.Value
          if h.Parent:FindFirstChild("Stats") then
            D = D / h.Parent:FindFirstChild("Stats").Defence.Value
          else
          end
          if not h.Parent:FindFirstChild("Stats") then
            do
              h.Health = h.Health - D / 2
              makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
              if Type == "Knockdown" then
                local humanoid = hit.Parent.Humanoid
                humanoid.PlatformStand = true
                coroutine.resume(coroutine.create(function(Humanoid)
    fat.Event:wait()
    Humanoid.PlatformStand = false
  end
), humanoid)
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
                  if Type == "Normal" then
                    local hitsoundchoose = math.random(1, 6)
                    if hitsoundchoose == 1 then
                      so("http://www.roblox.com/asset/?id=199149137", hit, 1, 1)
                    else
                      if hitsoundchoose == 2 then
                        so("http://www.roblox.com/asset/?id=199149186", hit, 1, 1)
                      else
                        if hitsoundchoose == 3 then
                          so("http://www.roblox.com/asset/?id=199149221", hit, 1, 1)
                        else
                          if hitsoundchoose == 4 then
                            so("http://www.roblox.com/asset/?id=199149235", hit, 1, 1)
                          else
                            if hitsoundchoose == 5 then
                              so("http://www.roblox.com/asset/?id=199149269", hit, 1, 1)
                            else
                              if hitsoundchoose == 6 then
                                so("http://www.roblox.com/asset/?id=199149297", hit, 1, 1)
                              end
                            end
                          end
                        end
                      end
                    end
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
                    if knockback > 0 then
                      vp.Parent = hit.Parent.Torso
                    end
                    game:GetService("Debris"):AddItem(vp, 0.5)
                  else
                    do
                      if Type == "QuietNormal" then
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
                        if knockback > 0 then
                          vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, 0.5)
                      else
                        if Type == "MovementDebuff" then
                          coroutine.resume(coroutine.create(function()
    hit.Parent.Humanoid.WalkSpeed = hit.Parent.Humanoid.WalkSpeed - 0.2
    speed.Value = speed.Value + 0.2
    Humanoid.WalkSpeed = 16 * speed.Value
    wait(1)
    hit.Parent.Humanoid.WalkSpeed = hit.Parent.Humanoid.WalkSpeed + 0.2
    speed.Value = speed.Value - 0.2
    Humanoid.WalkSpeed = 16 * speed.Value
  end
))
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
                          if knockback > 0 then
                            vp.Parent = hit.Parent.Torso
                          end
                          game:GetService("Debris"):AddItem(vp, 0.5)
                        else
                          if Type == "CurseAura" then
                            coroutine.resume(coroutine.create(function()
    local savethewalkspeed = hit.Parent.Humanoid.WalkSpeed
    hit.Parent.Humanoid.WalkSpeed = 0
    wait(0.25)
    hit.Parent.Humanoid.WalkSpeed = savethewalkspeed
  end
))
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
                            if knockback > 0 then
                              vp.Parent = hit.Parent.Torso
                            end
                            game:GetService("Debris"):AddItem(vp, 0.5)
                          else
                            if Type == "Up" then
                              local bodyVelocity = Instance.new("BodyVelocity")
                              bodyVelocity.velocity = vt(0, 60, 0)
                              bodyVelocity.P = 5000
                              bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                              bodyVelocity.Parent = hit
                              game:GetService("Debris"):AddItem(bodyVelocity, 1)
                              rl = Instance.new("BodyAngularVelocity")
                              rl.P = 3000
                              rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                              rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                              rl.Parent = hit
                              game:GetService("Debris"):AddItem(rl, 0.5)
                            else
                              do
                                if Type == "Snare" then
                                  wait()
                                  bp = Instance.new("BodyPosition")
                                  bp.P = 2000
                                  bp.D = 100
                                  bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                  bp.position = hit.Parent.Torso.Position
                                  bp.Parent = hit.Parent.Torso
                                  game:GetService("Debris"):AddItem(bp, 1)
                                else
                                  if Type == "Target" then
                                    so("http://www.roblox.com/asset/?id=199144144", hit, 1, math.random(150, 200) / 100)
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
                                    if knockback > 0 then
                                      vp.Parent = hit.Parent.Torso
                                    end
                                    game:GetService("Debris"):AddItem(vp, 0.5)
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
                                hitDeb = true
                                AttackPos = 6
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

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3, 1)
        end
      end
    end
  end
end

Lightning = function(p0, p1, tym, ofs, brickcolor, th, tra, last)
  local magz = p0 - p1.magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", workspace)
    do
      li.TopSurface = 0
      li.BottomSurface = 0
      li.Anchored = true
      li.Transparency = tra or 0.4
      li.BrickColor = brickcolor
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
            game.Debris:AddItem(li, last)
            coroutine.resume(coroutine.create(function()
    while li.Transparency ~= 1 do
      for i = 0, 1, last do
        fat.Event:wait()
        li.Transparency = li.Transparency + 0.1 / last
      end
    end
  end
))
          end
          -- DECOMPILER ERROR at PC134: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC134: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC134: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
end

JumpEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(90), 0, 0)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Shockwave2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 4)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

OrbEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

BlockShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

RainbowBlockShockwave = function(cframe, x1, y1, z1, x3, y3, z3, delay)
  local rainbowcolor = BrickColor.new(0)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, rainbowcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  prt.Material = "Neon"
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function()
    while prt.Parent ~= nil do
      wait()
      rainbowcolor = BrickColor.new(23)
      wait()
      rainbowcolor = BrickColor.new(107)
      wait()
      rainbowcolor = BrickColor.new(37)
      wait()
      rainbowcolor = BrickColor.new(119)
      wait()
      rainbowcolor = BrickColor.new(24)
      wait()
      rainbowcolor = BrickColor.new(106)
      wait()
      rainbowcolor = BrickColor.new(21)
      wait()
      rainbowcolor = BrickColor.new(104)
    end
  end
))
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
      Part.Transparency = i
      Part.BrickColor = rainbowcolor
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

RainbowCylinderShockwave = function(cframe, x1, y1, z1, x3, y3, z3, delay)
  local rainbowcolor = BrickColor.new(0)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function()
    while prt.Parent ~= nil do
      wait()
      rainbowcolor = BrickColor.new(23)
      wait()
      rainbowcolor = BrickColor.new(107)
      wait()
      rainbowcolor = BrickColor.new(37)
      wait()
      rainbowcolor = BrickColor.new(119)
      wait()
      rainbowcolor = BrickColor.new(24)
      wait()
      rainbowcolor = BrickColor.new(106)
      wait()
      rainbowcolor = BrickColor.new(21)
      wait()
      rainbowcolor = BrickColor.new(104)
    end
  end
))
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.BrickColor = rainbowcolor
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

CylinderShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Laser2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Laser3 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

SphereShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

SphereShockwave2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Shockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

BashEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

leftlegangle = 0
leftlegcframe2 = 0
leftlegcframe3 = 0
rightlegangle = 0
rightlegcframe2 = 0
rightlegcframe3 = 0
leftarmangle = 0
rightarmangle = 0
MMouse = mouse
canidle = true
canwalk = true
local robloxidleanimation = Instance.new("Animation", Torso)
robloxidleanimation.Name = "robloxidleanimation"
robloxidleanimation.AnimationId = "http://www.roblox.com/asset/?id=180435571"
RWC0 = cf(-0.5, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0))
LWC0 = cf(0.5, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0))
coroutine.resume(coroutine.create(function()
  while 1 do
    while 1 do
      leftlegangle = -60
      leftlegcframe3 = 0.1
      leftlegcframe2 = 0.225
      rightlegangle = 60
      rightlegcframe3 = 0.2
      rightlegcframe2 = -0.2
      leftarmangle = -30
      rightarmangle = 60
      if speed.Value > 0.9 then
        wait(0.375 / (speed.Value / 0.9))
      else
        if speed.Value == 0.9 or speed.Value < 0.9 then
          wait(0.375)
        end
      end
      leftlegangle = 60
      leftlegcframe3 = -0.2
      leftlegcframe2 = -0.2
      rightlegangle = -60
      rightlegcframe3 = -0.1
      rightlegcframe2 = 0.225
      leftarmangle = 60
      rightarmangle = -30
      if speed.Value > 0.9 then
        wait(0.375 / (speed.Value / 0.9))
        -- DECOMPILER ERROR at PC64: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC64: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
    if speed.Value == 0.9 or speed.Value < 0.9 then
      wait(0.375)
    end
  end
end
))
leftarmidleangle = 0
rightarmidleangle = 0
headidleangle = 0
idlenumber = 0
coroutine.resume(coroutine.create(function()
  while 1 do
    wait()
    idlenumber = idlenumber + 1
    if idlenumber == 250 then
      idlenumber = 0
      leftarmidleangle = -25
      rightarmidleangle = 25
      headidleangle = 50
      wait(2)
      leftarmidleangle = 25
      rightarmidleangle = -25
      headidleangle = -50
      wait(2)
      leftarmidleangle = 0
      rightarmidleangle = 0
      headidleangle = 0
    end
    if attack == true or equipped == false or Anim ~= "Idle" then
      idlenumber = 0
    end
  end
end
))
canability1 = true
canability2 = true
canability3 = true
canability4 = true
equipanim = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.25, 0) * angles(math.rad(-50), math.rad(0), math.rad(-40)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
  end
  Handleweld.Part0 = RightArm
  Handleweld.Part1 = Handle
  Handleweld.C0 = cf(0, 0, 0) * angles(math.rad(0), math.rad(145), math.rad(0)) * angles(math.rad(75), math.rad(0), math.rad(0)) * cf(0, 0.25, 0)
  Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.5, 0) * angles(math.rad(0), math.rad(-180), math.rad(0)) * angles(math.rad(75), math.rad(0), math.rad(45)) * cf(0, 0.25, 0), 1)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.25, 0) * angles(math.rad(30), math.rad(0), math.rad(30)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(315), math.rad(0)) * angles(math.rad(15), math.rad(0), math.rad(0)) * cf(0, 0.25, 0), 0.3)
  end
  speed.Value = speed.Value - 0.1
  attack = false
end

unequipanim = function()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.25, 0) * angles(math.rad(30), math.rad(0), math.rad(30)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(315), math.rad(0)) * angles(math.rad(15), math.rad(0), math.rad(0)) * cf(0, 0.25, 0), 0.3)
  end
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.25, 0) * angles(math.rad(-40), math.rad(0), math.rad(-40)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.5, 0) * angles(math.rad(0), math.rad(-180), math.rad(0)) * angles(math.rad(75), math.rad(0), math.rad(45)) * cf(0, 0.25, 0), 0.3)
  end
  Handleweld.Part0 = Torso
  Handleweld.Part1 = Handle
  Handleweld.C0 = cf(-0.5, 0.75, 0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(45), math.rad(0), math.rad(0))
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
  LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
  speed.Value = speed.Value + 0.1
  attack = false
end

attackone = function()
  attack = true
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(-20), math.rad(0), math.rad(20)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-45)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(0.75, -1, -0.25) * angles(math.rad(0), math.rad(150), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.75, -1, 0.25) * angles(math.rad(0), math.rad(-30), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 8, 12, 1, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145204", Hitbox, 1, 1.2)
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(5), math.rad(0)) * angles(math.rad(60), math.rad(0), math.rad(10)) * RWC0, 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)) * LWC0, 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(75), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-105), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0.25, 0) * angles(math.rad(-40), math.rad(0), math.rad(0)) * cf(0, 0, -1), 0.45)
  end
  con1:disconnect()
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75, -0.5) * angles(math.rad(135), math.rad(0), math.rad(-45)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75, -0.5) * angles(math.rad(135), math.rad(0), math.rad(45)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)) * angles(math.rad(20), math.rad(0), math.rad(0)) * cf(-0.65, 0.25, 0), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 8, 12, 1, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1)
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.25, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)) * RWC0, 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.25, -0.5) * angles(math.rad(45), math.rad(0), math.rad(45)) * LWC0, 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(-40)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(-40)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)) * angles(math.rad(-40), math.rad(0), math.rad(0)) * cf(-0.65, 0.25, 0), 0.3)
  end
  con1:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)) * angles(math.rad(0), math.rad(90), math.rad(0)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 8, 12, 1, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145204", Hitbox, 1, 0.8)
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30 - 360 * i)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(60)) * angles(math.rad(0), math.rad(90), math.rad(0)) * RWC0, 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-60)) * LWC0, 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -0.25, -0.5) * angles(math.rad(-40), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)) * angles(math.rad(0), math.rad(90), math.rad(0)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -0.25, -0.5) * angles(math.rad(-40), math.rad(0), math.rad(0)), 0.3)
  end
  con1:disconnect()
  attack = false
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)) * angles(math.rad(0), math.rad(135), math.rad(0)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 8, 12, 1, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145204", Hitbox, 1, 1)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(90), math.rad(-30 - 360 * i)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(60)) * angles(math.rad(0), math.rad(90), math.rad(0)) * RWC0, 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-60)) * LWC0, 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -0.25, -0.5) * angles(math.rad(-40), math.rad(0), math.rad(0)), 0.45)
  end
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 0.9)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 4) * angles(math.rad(0), math.rad(90), math.rad(-30 - 360 * i)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(60)) * angles(math.rad(0), math.rad(90), math.rad(0)) * RWC0, 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-60)) * LWC0, 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -0.25, -0.5) * angles(math.rad(-40), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  attack = false
end

Stop = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(135), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(30), math.rad(30)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(5)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(45)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * angles(math.rad(0), math.rad(45), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(5)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
  end
  local stopsignref = part(3, Character, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
  stopsignref.Anchored = true
  stopsignref.CanCollide = false
  stopsignref.Size = Vector3.new(0.2, 0.2, 0.2)
  stopsignref.CFrame = RootPart.CFrame * cf(1.05, 0, -2.5) * angles(math.rad(0), math.rad(0), math.rad(0))
  Handleweld.Part0 = stopsignref
  Handleweld.Part1 = Handle
  Handleweld.C0 = stopsignref.CFrame * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
  coroutine.resume(coroutine.create(function()
    while Handleweld.Part0 == stopsignref do
      wait(0.5)
      MagniDamage(stopsignref, 15, 5, 10, 0, "QuietNormal")
    end
  end
))
  for i = 1, math.random(2, 4) do
    OrbEffect(CustomColor, stopsignref.CFrame * cf(0, 0, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
  end
  coroutine.resume(coroutine.create(function()
    while 1 do
      wait()
      if stopsignref.Parent ~= nil then
        wait(0.1)
        SphereShockwave(CustomColor, stopsignref.CFrame * cf(0, -2.95, 0), 50, 0.1, 50, 0.1, 0.1, 0.1, 0.1)
        BlockShockwave(CustomColor, stopsignref.CFrame * cf(math.random(-6, 6), math.random(-2, 2), math.random(-6, 6)), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
        JumpEffect(CustomColor, stopsignref.CFrame * cf(0, -2.9, 0), 25, 25, 0.1, 0.1, 0.1, 1, 0.1)
      end
      if Humanoid.Health < 0 or Humanoid.Health == 0 then
        stopsignref:Destroy()
      end
      if (((equipped == false or equipped ~= true) or attack ~= false) and attack ~= true) or Handleweld.Part0 ~= stopsignref then
        stopsignref:Destroy()
      end
    end
  end
))
  attack = false
end

NoStop = function()
  attack = true
  speed.Value = speed.Value - 0.6
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(m:children()) do
      do
        if v:IsA("Part") and v.Name ~= "Hitbox" then
          do
            coroutine.resume(coroutine.create(function()
      for i = 0, 1, 0.1 do
        fat.Event:wait()
        v.Transparency = v.Transparency + 1 * i
      end
      v.Transparency = 1
    end
))
            -- DECOMPILER ERROR at PC22: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC22: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
))
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(70), math.rad(30)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, 0.5, 0) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-40), math.rad(-80), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    SphereShockwave(CustomColor, RootPart.CFrame * cf(0.8, -3, -1.4), 8, 0.2, 8, 0.1, 0.1, 0.1, 0.1)
    JumpEffect(CustomColor, RootPart.CFrame * cf(0.8, -3, -1.4), 4, 4, 0.2, 0.1, 0.1, 0.4, 0.1)
  end
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(m:children()) do
      do
        if v:IsA("Part") and v.Name ~= "Hitbox" then
          do
            coroutine.resume(coroutine.create(function()
      for i = 0, 1, 0.1 do
        fat.Event:wait()
        v.Transparency = v.Transparency - 1 * i
      end
      v.Transparency = 0
    end
))
            -- DECOMPILER ERROR at PC22: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC22: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
))
  Handleweld.Part0 = RootPart
  Handleweld.Part1 = Handle
  Handleweld.C0 = cf(-0.25, -8, -1.5) * angles(math.rad(90), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(90)) * cf(0, 0, 0)
  so("http://roblox.com/asset/?id=203691785", Hitbox, 1, 1)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(20)) * angles(math.rad(0), math.rad(70), math.rad(0)) * RWC0, 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)) * LWC0, 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-0.25, 0, -1.5) * angles(math.rad(90), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(90)) * cf(0, 0, 0), 0.3)
    SphereShockwave(CustomColor, RootPart.CFrame * cf(0.8, -3, -1.4), 8, 0.2, 8, 0.1, 0.1, 0.1, 0.1)
    JumpEffect(CustomColor, RootPart.CFrame * cf(0.8, -3, -1.4), 4, 4, 0.2, 0.1, 0.1, 0.4, 0.1)
  end
  Handleweld.Part0 = RightArm
  Handleweld.Part1 = Handle
  Handleweld.C0 = cf(1, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * cf(0, 0, 0) * angles(math.rad(120), math.rad(-70), math.rad(0)) * angles(math.rad(0), math.rad(-70), math.rad(0)) * cf(1, 1, 1)
  speed.Value = speed.Value + 0.6
  attack = false
end

LaserThing = function(Part, Spread1, Spread2, Height1, Height2)
  coroutine.resume(coroutine.create(function()
    local risespeed = 0.08
    local orbthingy = part(3, Character, "SmoothPlastic", 0, 1, CustomColor, "Orb Thingy", vt())
    orbthingy.Anchored = true
    orbthingy.CanCollide = false
    local orbthingymesh = mesh("SpecialMesh", orbthingy, "Sphere", "", vt(0, 0, 0), vt(10, 10, 10))
    orbthingy.CFrame = Part.CFrame * cf(math.random(-10, 10), math.random(0, 10), math.random(-10, 10))
    BlockShockwave(CustomColor, cf(orbthingy.Position), 1, 1, 1, 1, 1, 1, 0.1)
    so("http://roblox.com/asset/?id=183763498", orbthingy, 1, 1.2)
    coroutine.resume(coroutine.create(function()
      local cf1 = math.random(Height1, Height2) / 10
      local cf2 = math.random(Spread1, Spread2) / 10
      local cf3 = math.random(Spread1, Spread2) / 10
      local n = 10
      for i = 0, 1, risespeed do
        fat.Event:wait()
        orbthingy.Transparency = 1 - 0.5 * i
        orbthingy.CFrame = orbthingy.CFrame * cf(cf2 * i * n, cf1 * i * n, cf3 * i * n) * angles(math.rad(0), math.rad(0), math.rad(0))
        n = n - 0.8
      end
    end
))
    coroutine.resume(coroutine.create(function()
      wait(1)
      orbthingy.CFrame = orbthingy.CFrame * angles(math.rad(180), math.rad(0), math.rad(0))
      local spread = vt(math.random(-1, 1) / 10, math.random(-1, 1) / 10, math.random(-1, 1) / 10)
      local StartingPos = orbthingy.Position + vt(0, -1, 0)
      local MouseLook = cf((orbthingy.Position + StartingPos) / 2, StartingPos + spread)
      local hit, pos = rayCast(orbthingy.Position, MouseLook.lookVector, 999, Character)
      local mag = orbthingy.Position - pos.magnitude
      CylinderShockwave(CustomColor, CFrame.new((StartingPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 2, 1, 0.5, 0, 0.5, 0.125)
      BlockShockwave(CustomColor, cf(orbthingy.Position), 1, 1, 1, 1, 1, 1, 0.1)
      BlockShockwave(CustomColor, cf(pos), 1, 1, 1, 1, 1, 1, 0.075)
      JumpEffect(CustomColor, cf(pos), 1, 1, 1, 1, 1, 1, 0.075)
      local refpart = part(3, Character, "SmoothPlastic", 0, 1, "Really black", "Effect", vt())
      refpart.Anchored = true
      refpart.CanCollide = false
      refpart.CFrame = cf(pos)
      game:getService("Debris"):AddItem(refpart, 2)
      so("http://roblox.com/asset/?id=183763487", refpart, 1, 1)
      MagniDamage(refpart, 10, 5, 10, 0, "Normal", RootPart)
      if hit ~= nil then
        Damagefunc(hit, 10, 20, 1, "Normal", RootPart, 0)
      end
      orbthingy.Parent = nil
    end
))
  end
))
end

local LaserTarget = RootPart
local spawninglasers = false
Lasers = function()
  attack = true
  spawninglasers = true
  coroutine.resume(coroutine.create(function()
    while spawninglasers == true do
      LaserThing(Torso, -1, 1, 5, 10)
      if Handleweld.Part0 == RightArm then
        BlockShockwave(CustomColor, cf(Hitbox.Position), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
      else
        if Handleweld.Part0 ~= RightArm then
          BlockShockwave(CustomColor, RightArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
        end
      end
      wait(0.1)
    end
  end
))
  for i = 1, 3 do
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(20)) * RWC0, 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)) * LWC0, 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      if Handleweld.Part0 == RightArm then
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)), 0.3)
      end
    end
  end
  spawninglasers = false
  attack = false
end

hold = false
ob1d = function(mouse)
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if Handleweld.Part0 == RightArm then
    if attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attacktype == 2 then
        attacktype = 3
        attacktwo()
      else
        if attacktype == 3 then
          attacktype = 4
          attackthree()
        else
          if attacktype == 4 then
            attacktype = 1
            attackfour()
          end
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        swait(1)
      end
    end
    if attack == false then
      attacktype = 1
    end
  end
))
end

ob1u = function(mouse)
  hold = false
end

k = function(k)
  if k == "f" and attack == false then
    if equipped == false then
      equipped = true
      animate.Disabled = true
      local idleanimation = Humanoid:LoadAnimation(Torso.robloxidleanimation)
      idleanimation:Play()
      equipanim()
    else
      do
        if equipped == true and Handleweld.Part0 == RightArm then
          equipped = false
          unequipanim()
          swait(0)
          animate.Disabled = false
        end
        if ((k == "e" and attack == false and equipped ~= true) or k == "z") and attack == false and equipped == true and canability1 == true then
          if Handleweld.Part0 == RightArm then
            Stop()
          else
            if Handleweld.Part0 ~= RightArm then
              NoStop()
            end
          end
        end
        if k == "x" and attack == false and equipped == true and canability2 == true then
          Lasers()
        end
        -- DECOMPILER ERROR at PC108: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC108: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC108: Unhandled construct in 'MakeBoolean' P3

        if ((k == "c" and attack == false and equipped == true and canability3 ~= true) or k == "v") then
        end
      end
    end
  end
end

k2 = function(k)
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
  mouse.KeyDown:connect(k)
  mouse.KeyUp:connect(k2)
  player = Player
  ch = Character
  MMouse = mouse
end

ds = function(mouse)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local donum = 0
local sine = 0
local change = 1
local val = 0
while 1 do
  while 1 do
    while 1 do
      while 1 do
        while 1 do
          while 1 do
            while 1 do
              while 1 do
                while 1 do
                  while 1 do
                    while 1 do
                      swait()
                      Humanoid.WalkSpeed = 16 * speed.Value
                      if 0 < speed.Value then
                        ammolabel.Text = "Speed [" .. speed.Value .. "]"
                      else
                        if speed.Value < 0 or speed.Value == 0 then
                          ammolabel.Text = "Speed [0]"
                        end
                      end
                      if 0 < damagea.Value then
                        ammolabel2.Text = "Damage [" .. damagea.Value .. "]"
                      else
                        if damagea.Value < 0 or damagea.Value == 0 then
                          ammolabel.Text = "Damage [0]"
                        end
                      end
                      if 0 < defense.Value then
                        ammolabel3.Text = "Defense [" .. defense.Value .. "]"
                      else
                        if defense.Value < 0 or defense.Value == 0 then
                          ammolabel.Text = "Defense [0]"
                        end
                      end
                      sine = sine + change
                      local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
                      local velderp = RootPart.Velocity.y
                      hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
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
                      if equipped == true or equipped == false then
                        if attack == false then
                          idle = idle + 1
                        else
                          idle = 0
                        end
                        if ((500 <= idle and attack ~= false) or 1 < RootPart.Velocity.y) and hitfloor == nil then
                          Anim = "Jump"
                          if attack == false and equipped == true and Handleweld.Part0 == RightArm then
                            fat.Event:wait()
                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
                            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
                            RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.3, -0.25) * angles(math.rad(30), math.rad(0), math.rad(20)) * angles(math.rad(0), math.rad(60), math.rad(0)) * RWC0, 0.15)
                            LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.25) * angles(math.rad(75), math.rad(0), math.rad(30)) * angles(math.rad(0), math.rad(60), math.rad(0)) * LWC0, 0.15)
                            RH.C0 = clerp(RH.C0, cf(1, -1, -0.25) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
                            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.25) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
                            RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                            LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                            if Handleweld.Part0 == RightArm then
                              Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0.5, -1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
                            end
                            -- DECOMPILER ERROR at PC5503: LeaveBlock: unexpected jumping out IF_THEN_STMT

                            -- DECOMPILER ERROR at PC5503: LeaveBlock: unexpected jumping out IF_STMT

                            -- DECOMPILER ERROR at PC5503: LeaveBlock: unexpected jumping out IF_THEN_STMT

                            -- DECOMPILER ERROR at PC5503: LeaveBlock: unexpected jumping out IF_STMT

                            -- DECOMPILER ERROR at PC5503: LeaveBlock: unexpected jumping out IF_THEN_STMT

                            -- DECOMPILER ERROR at PC5503: LeaveBlock: unexpected jumping out IF_STMT

                          end
                        end
                      end
                    end
                    if attack == false and equipped == true and Handleweld.Part0 ~= RightArm then
                      fat.Event:wait()
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
                      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(20)) * RWC0, 0.15)
                      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-20)) * LWC0, 0.15)
                      RH.C0 = clerp(RH.C0, cf(1, -1, -0.25) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.25) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
                      RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                      LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                      -- DECOMPILER ERROR at PC5826: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC5826: LeaveBlock: unexpected jumping out IF_STMT

                    end
                  end
                  if attack ~= true or equipped == true then
                    fat.Event:wait()
                    RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                    LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                  end
                end
                if RootPart.Velocity.y < -1 and hitfloor == nil then
                  Anim = "Fall"
                  if attack == false and equipped == true and Handleweld.Part0 == RightArm then
                    fat.Event:wait()
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.3, -0.25) * angles(math.rad(30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(60), math.rad(0)) * RWC0, 0.15)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.25) * angles(math.rad(75), math.rad(0), math.rad(10)) * angles(math.rad(0), math.rad(60), math.rad(0)) * LWC0, 0.15)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                    RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                    LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                    if Handleweld.Part0 == RightArm then
                      Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0.5, -1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
                    end
                    -- DECOMPILER ERROR at PC6327: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC6327: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC6327: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC6327: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
              if attack == false and equipped == true and Handleweld.Part0 ~= RightArm then
                fat.Event:wait()
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)) * RWC0, 0.15)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)) * LWC0, 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                -- DECOMPILER ERROR at PC6650: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC6650: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
            if attack ~= true or equipped == true then
              fat.Event:wait()
              RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            end
          end
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false and equipped == true then
              fat.Event:wait()
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.15)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(30 + headidleangle)), 0.15)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10 + (donum) / 0.05 + rightarmidleangle), math.rad(0), math.rad(20 - (donum) / 0.05)) * RWC0, 0.15)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30 - (donum) / 0.05 + leftarmidleangle), math.rad(0), math.rad(-30 + (donum) / 0.05)) * LWC0, 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              if Handleweld.Part0 == RightArm then
                Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0.25, 0.75) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
              end
              -- DECOMPILER ERROR at PC7132: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC7132: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC7132: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC7132: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        if attack ~= true or equipped ~= true or canidle == true then
          fat.Event:wait()
          RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        end
      end
      if 1 >= torvel or hitfloor ~= nil then
        Anim = "Walk"
        if attack == false and equipped == true and Handleweld.Part0 == RightArm then
          fat.Event:wait()
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.15)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.3, -0.25) * angles(math.rad(30), math.rad(0), math.rad(10)) * angles(math.rad(0), math.rad(60), math.rad(0)) * RWC0, 0.15)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.25) * angles(math.rad(75), math.rad(0), math.rad(20)) * angles(math.rad(0), math.rad(60), math.rad(0)) * LWC0, 0.15)
          RH.C0 = clerp(RH.C0, cf(1.05, -1, 0) * angles(math.rad(0), math.rad(105), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          LH.C0 = clerp(LH.C0, cf(-1.05, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          RH.C1 = clerp(RH.C1, RHC1 * cf(0 + rightlegcframe3, 0 + rightlegcframe2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 + rightlegangle)), 0.175 * (speed.Value / 0.9))
          LH.C1 = clerp(LH.C1, LHC1 * cf(0 + leftlegcframe3, 0 + leftlegcframe2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 - leftlegangle)), 0.175 * (speed.Value / 0.9))
          if Handleweld.Part0 == RightArm then
            Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0.5, -1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
          end
          -- DECOMPILER ERROR at PC7655: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC7655: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC7655: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC7655: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if attack == false and equipped == true and Handleweld.Part0 ~= RightArm then
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)) * angles(math.rad(0), math.rad(-15), math.rad(0)) * RWC0, 0.15)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)) * angles(math.rad(0), math.rad(15), math.rad(0)) * LWC0, 0.15)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      RH.C1 = clerp(RH.C1, RHC1 * cf(0 + rightlegcframe3, 0 + rightlegcframe2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 + rightlegangle)), 0.175 * (speed.Value / 0.9))
      LH.C1 = clerp(LH.C1, LHC1 * cf(0 + leftlegcframe3, 0 + leftlegcframe2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 - leftlegangle)), 0.175 * (speed.Value / 0.9))
      -- DECOMPILER ERROR at PC8028: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC8028: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  if attack ~= true or equipped ~= true or canwalk == true then
    fat.Event:wait()
    RH.C1 = clerp(RH.C1, RHC1 * cf(0 + rightlegcframe3, 0 + rightlegcframe2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 + rightlegangle)), 0.175 * (speed.Value / 0.9))
    LH.C1 = clerp(LH.C1, LHC1 * cf(0 + leftlegcframe3, 0 + leftlegcframe2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 - leftlegangle)), 0.175 * (speed.Value / 0.9))
  end
end

