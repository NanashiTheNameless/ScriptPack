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
isblarghing = false
MMouse = nil
combo = 0
combospeed = 0
stop = false
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local Mode = "Defensive"
local GuardStance = false
local Target = nil
local manualguardend = false
local Fly = false
local prop = Instance.new("RocketPropulsion")
local move1 = "(Z)\nCannonball"
local move2 = "(X)\nWipeout"
local move3 = "(C)\nSpeech"
local move4 = "(V)\nSECRET: Ass Blast"
local cooldowns = {}
local cooldown1 = 0
table.insert(cooldowns, cooldown1)
local cooldown2 = 0
table.insert(cooldowns, cooldown2)
local cooldown3 = 0
table.insert(cooldowns, cooldown3)
local cooldown4 = 0
table.insert(cooldowns, cooldown4)
local cooldown5 = 0
table.insert(cooldowns, cooldown5)
local cooldownsadd = {}
local cooldownadd1 = 0
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0
table.insert(cooldownsadd, cooldownadd4)
local cooldownadd5 = 0
table.insert(cooldownsadd, cooldownadd5)
local cooldownmax = 0
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
NewCol = Color3.new(TorsoRed, TorsoGreen, 1)
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
end
print(BrickColor.new(NewCol))
local mdec = Instance.new("NumberValue", Decrease)
mdec.Name = "DecreaseDef"
mdec.Value = 0.5
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

if Character:findFirstChild("dedliwepon", true) ~= nil then
  Character:findFirstChild("dedliwepon", true).Parent = nil
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
Def.Value = 0.5
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
local passive = Instance.new("NumberValue", Decrease)
passive.Name = "DecreaseMvmt"
passive.Value = -0.4
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 0
NoOutline = function(Part)
  Part.TopSurface = 10
end
part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size, material, anchor)
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
  if material then
    fp.Material = material
  end
  if anchor then
    fp.Anchored = anchor
  end
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
local tellbar = gui("TextLabel", fenframe5, "press f to become fuhur", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
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
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "dedliwepon"
local handle = part(3, modelzorz, 0, 0.5, TorsoColor, "Handle", vt(), "Fabric")
local prt1 = part(3, modelzorz, 0, 0, BrickColor.new("Reddish brown"), "Part01", vt(0.2, 0.2, 0.2), "Fabric")
local prt2 = part(3, modelzorz, 0, 0, BrickColor.new("Reddish brown"), "Part02", vt(0.2, 0.2, 0.2), "Fabric")
local prt3 = part(3, modelzorz, 0, 0, BrickColor.new("Reddish brown"), "Part03", vt(), "Fabric")
local prt4 = part(3, modelzorz, 0, 0, BrickColor.new("Steel blue"), "Part04", vt(), "Metal")
local prt5 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Part05", vt(0.2, 0.2, 0.2), "Marble")
local msh1 = mesh("BlockMesh", prt1, "", "nil", vt(0, 0, 0), vt(6, 5.5, 5.4))
local msh2 = mesh("BlockMesh", prt2, "", "nil", vt(0, 0, 0), vt(1, 5.6, 7.4))
local msh3 = mesh("BlockMesh", prt3, "", "nil", vt(0, 0, 0), vt(1, 5.6, 7.4))
local msh4 = mesh("CylinderMesh", prt4, "", "nil", vt(0, 0, 0), vt(2.5, 5.53, 2.5))
local msh5 = mesh("CylinderMesh", prt5, "", "nil", vt(0, 0, 0), vt(2, 5.55, 2))
local handlewld = weld(handle, handle, Torso, euler(0, 0, 0) * cf(0, 0, 0))
local wld1 = weld(prt1, prt1, Torso, cf(0, 0, 0) * euler(math.rad(90), 0, 0))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0.7, 0, -0.3))
local wld3 = weld(prt1, prt3, prt1, euler(0, 0, 0) * cf(-0.7, 0, -0.3))
local wld4 = weld(prt1, prt4, prt1, euler(0, 0, 0) * cf(0, 0, 0))
local wld5 = weld(prt1, prt5, prt1, euler(0, 0, 0) * cf(0, 0, 0))
num = 0
num2 = 0
num3 = 0
num4 = 0
num5 = 2
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
  hbwld.Part1 = prt5
end

  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "dedliwepon"
  script.Parent = Tool

Bin = script.Parent
if Bin.Name == "Allah" then
  Bin.Name = "AureIion_sol"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
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
  for i = 0, 1, 0.12 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(1.3, 0.5, 0) * euler(0, 0, -1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  for i = 0, 1, 0.18 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(1.3, 0.5, -1.2), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.25), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
  end
  prt5.Material = "Marble"
  prt5.BrickColor = BrickColor.new("Black")
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * euler(0, 0, 0) * cf(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  mdec.Parent = nil
  handlewld.Part1 = Torso
  handlewld.C0 = euler(-1.8, 0, 0) * cf(-1.1, 1, 0.65)
  mdec.Parent = Decrease
  mdec2.Parent = nil
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  for i = 0, 1, 0.12 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(1.3, 0.5, 0) * euler(0, 0, -1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  for i = 0, 1, 0.18 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.2) * euler(1.3, 0.5, -1.2), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.25), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
  end
  prt5.Material = "Neon"
  prt5.BrickColor = BrickColor.new(NewCol)
  handlewld.Part1 = LeftArm
  handlewld.C0 = euler(1.5, 1.4, 0) * euler(0, 0, -1) * cf(0, 0, 0)
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
    Torso.Velocity = RootPart.CFrame.lookVector * -40
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
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
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
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
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
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
    handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
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
dattackone = function()
  stop = true
  if isblarghing == false then
    attack = true
    do
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(-0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0.5), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, 0.2) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5) * euler(0, 0, 0), 0.15)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.2), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
    end
    local pl = part(3, workspace, 0, 1, BrickColor.new(NewCol), "Plane", vt(1, 1, 1))
    local pmsh = mesh("SpecialMesh", pl, "FileMesh", "113216991", vt(0, 0, 0), vt(1, 1, 1))
    local pwld = weld(pl, pl, RightArm, euler(0, math.rad(180), math.rad(180)) * cf(0, 1.1, 0))
    MagicBlock(BrickColor.new(NewCol), cf(pl.Position) * cf(0, 0, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.5, 0.5, 0.5, 2, 2, 2, 0.15, 2)
    pl.Transparency = 0
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(-0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.8, 0, 0.2) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC502: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC502: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    pwld.Parent = nil
    pl.Anchored = true
    local MainPos = pl.Position
    local MainPos2 = MMouse.Hit.p
    local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
    coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
    local num = 15
    repeat
      swait()
      local ohit, opos = rayCast(Pos1, Look.lookVector, 5, Character)
      pl.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
      MagicBlock(BrickColor.new("Bright red"), cf(pl.Position) * cf(0, 0, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.5, 0.5, 0.5, 1, 1, 1, 0.15, 2)
      Pos1 = Pos1 + Look.lookVector * 5
      pl.CFrame = CFrame.new(pl.Position, MMouse.Hit.p)
      if ohit ~= nil then
        num = 0
      end
      num = num - 1
    until num <= 0
    local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
    ref.Anchored = true
    ref.CFrame = cf(pl.Position)
    so("206049428", ref, 0.5, math.random(7, 10) / 10)
    game:GetService("Debris"):AddItem(ref, 0.5)
    local col = {"Bright red", "Bright yellow", "Bright orange"}
    MagicCircle(BrickColor.new(col[math.random(1, #col)]), "SmoothPlastic", cf(ref.Position), 2, 2, 2, 2.5, 2.5, 2.5, 0.1, 0.2)
    for i = 1, 4 do
      MagicBlock(BrickColor.new(col[math.random(1, #col)]), cf(ref.Position) * cf(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100), 3, 3, 3, 1, 1, 1, 0.1)
    end
    MagniDamage(ref, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    pl.Parent = nil
  end), MainPos, MainPos2, MouseLook)
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.1, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0.5), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.4, 0, 0.2) * euler(0, 0, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.2) * euler(0, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    attack = false
  end
end
dattacktwo = function()
  stop = true
  if isblarghing == false then
    attack = true
    do
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(-0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, -0.5), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.7, 0, -0.2) * euler(0, 0, 0), 0.15)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, -0.2) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, -0.2), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC206: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC206: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    local pl = part(3, workspace, 0, 1, BrickColor.new(NewCol), "Plane", vt(1, 1, 1))
    local pmsh = mesh("SpecialMesh", pl, "FileMesh", "113216991", vt(0, 0, 0), vt(1, 1, 1))
    local pwld = weld(pl, pl, LeftArm, euler(0, math.rad(180), math.rad(180)) * cf(0, 1.1, 0))
    MagicBlock(BrickColor.new(NewCol), cf(pl.Position) * cf(0, 0, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.5, 0.5, 0.5, 2, 2, 2, 0.15, 2)
    pl.Transparency = 0
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(-0.3, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, -0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(3.8, 0, -0.2) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, -0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, -0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC502: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC502: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    pwld.Parent = nil
    pl.Anchored = true
    local MainPos = pl.Position
    local MainPos2 = MMouse.Hit.p
    local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
    coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
    local num = 15
    repeat
      swait()
      local ohit, opos = rayCast(Pos1, Look.lookVector, 5, Character)
      pl.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
      MagicBlock(BrickColor.new("Bright red"), cf(pl.Position) * cf(0, 0, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.5, 0.5, 0.5, 1, 1, 1, 0.15, 2)
      Pos1 = Pos1 + Look.lookVector * 5
      pl.CFrame = CFrame.new(pl.Position, MMouse.Hit.p)
      if ohit ~= nil then
        num = 0
      end
      num = num - 1
    until num <= 0
    local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
    ref.Anchored = true
    ref.CFrame = cf(pl.Position)
    so("206049428", ref, 0.5, math.random(7, 10) / 10)
    game:GetService("Debris"):AddItem(ref, 0.5)
    local col = {"Bright red", "Bright yellow", "Bright orange"}
    MagicCircle(BrickColor.new(col[math.random(1, #col)]), "SmoothPlastic", cf(ref.Position), 2, 2, 2, 2.5, 2.5, 2.5, 0.1, 0.2)
    for i = 1, 4 do
      MagicBlock(BrickColor.new(col[math.random(1, #col)]), cf(ref.Position) * cf(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100), 3, 3, 3, 1, 1, 1, 0.1)
    end
    MagniDamage(ref, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    pl.Parent = nil
  end), MainPos, MainPos2, MouseLook)
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(-0.1, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, -0.5), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.2) * euler(0, 0, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.4, 0, -0.2) * euler(0, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, -0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, -0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC724: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC724: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    attack = false
  end
end
dattackthree = function()
  stop = true
  if isblarghing == false then
    attack = true
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, 0, 0.2) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5) * euler(0, 0, 0), 0.15)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC206: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC206: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    do
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.3, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.2, 0, 0.2) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.1), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    local ref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
    ref2.Anchored = true
    ref2.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 7, 0), MMouse.Hit.p)
    game:GetService("Debris"):AddItem(ref2, 1)
    for i = -1, 1 do
      local pl = part(3, workspace, 0, 1, BrickColor.new(NewCol), "Plane", vt(1, 1, 1))
      local pmsh = mesh("SpecialMesh", pl, "FileMesh", "113216991", vt(0, 0, 0), vt(1, 1, 1))
      pl.CFrame = ref2.CFrame * CFrame.new(i * 5, 0, 0)
      MagicBlock(BrickColor.new(NewCol), cf(pl.Position) * cf(0, 0, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.5, 0.5, 0.5, 2, 2, 2, 0.15, 2)
      pl.Transparency = 0
      pl.Anchored = true
      local MainPos = pl.Position
      local MainPos2 = MMouse.Hit.p + Vector3.new(i + math.random(-250, 250) / 100, i + math.random(-250, 250) / 100, i + math.random(-250, 250) / 100)
      local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
      coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
    local num = 25
    repeat
      swait()
      local ohit, opos = rayCast(Pos1, Look.lookVector, 5, pl)
      pl.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
      MagicBlock(BrickColor.new("Bright red"), cf(pl.Position) * cf(0, 0, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.5, 0.5, 0.5, 1, 1, 1, 0.15, 2)
      Pos1 = Pos1 + Look.lookVector * 5
      pl.CFrame = CFrame.new(pl.Position, MMouse.Hit.p)
      if ohit ~= nil then
        num = 0
      end
      num = num - 1
    until num <= 0
    local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
    ref.Anchored = true
    ref.CFrame = cf(pl.Position)
    so("206049428", ref, 0.5, math.random(7, 10) / 10)
    game:GetService("Debris"):AddItem(ref, 0.5)
    local col = {"Bright red", "Bright yellow", "Bright orange"}
    MagicCircle(BrickColor.new(col[math.random(1, #col)]), "SmoothPlastic", cf(ref.Position), 2, 2, 2, 2.5, 2.5, 2.5, 0.1, 0.2)
    for i = 1, 4 do
      MagicBlock(BrickColor.new(col[math.random(1, #col)]), cf(ref.Position) * cf(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100), 3, 3, 3, 1, 1, 1, 0.1)
    end
    MagniDamage(ref, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    pl.Parent = nil
  end), MainPos, MainPos2, MouseLook)
    end
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC780: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC780: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    attack = false
  end
end
dattackfour = function()
  stop = true
  if isblarghing == false then
    attack = true
    do
      for i = 0, 1, 0.15 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.15, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 1.2, 0) * euler(2.5, 0, 0.2) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 1.2, 0) * euler(2.5, 0, -0.2) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.2), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC206: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC206: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.25, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 1.2, 0) * euler(3, 0, 0.2) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 1.2, 0) * euler(3, 0, -0.2) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    local pl = part(3, workspace, 0, 1, BrickColor.new(NewCol), "Plane", vt(2, 2, 2))
    local pmsh = mesh("SpecialMesh", pl, "FileMesh", "113216991", vt(0, 0, 0), vt(4, 4, 4))
    local pwld = weld(pl, pl, RightArm, euler(0, math.rad(180), math.rad(180)) * cf(1.5, 2.6, 0))
    MagicBlock(BrickColor.new(NewCol), cf(pl.Position) * cf(0, 0, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 5, 5, 5, 0.1, 2)
    pl.Transparency = 0
    for i = 0, 1, 0.15 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.45, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 1.2, 0) * euler(3.8, 0, 0.2) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 1.2, 0) * euler(3.8, 0, -0.2) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.2), 0.3)
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
    pwld.Parent = nil
    pl.Anchored = true
    local MainPos = pl.Position
    local MainPos2 = MMouse.Hit.p
    local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
    coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
    local num = 30
    repeat
      swait()
      local ohit, opos = rayCast(Pos1, Look.lookVector, 20, pl)
      pl.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
      MagicBlock(BrickColor.new("Bright red"), cf(pl.Position) * cf(0, -0.55, 0) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2.5, 2.5, 2.5, 2, 2, 2, 0.15, 2)
      Pos1 = Pos1 + Look.lookVector * 5
      pl.CFrame = CFrame.new(pl.Position, MMouse.Hit.p)
      if ohit ~= nil then
        num = 0
      end
      num = num - 1
    until num <= 0
    local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
    ref.Anchored = true
    ref.CFrame = cf(pl.Position)
    so("206049428", ref, 0.8, math.random(4, 6) / 10)
    game:GetService("Debris"):AddItem(ref, 0.5)
    local col = {"Bright red", "Bright yellow", "Bright orange"}
    MagicCircle(BrickColor.new(col[math.random(1, #col)]), "SmoothPlastic", cf(ref.Position), 5, 5, 5, 10.5, 10.5, 10.5, 0.1, 1)
    for i = 1, 4 do
      MagicBlock(BrickColor.new(col[math.random(1, #col)]), cf(ref.Position) * cf(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100), 5, 5, 5, 6, 6, 6, 0.1)
    end
    MagniDamage(ref, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    pl.Parent = nil
  end), MainPos, MainPos2, MouseLook)
    for i = 0, 1, 0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.35, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.4, 0, 0.2) * euler(0, 0, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.4, 0, -0.2) * euler(0, 0, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.15, 0, 0.2) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.1) * euler(0, -1.57, 0) * euler(-0.15, 0, 0.2), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC924: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC924: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
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
  if cooldownmax <= cooldowns[1] and mana.Value >= 15 then
    stop = false
    attack = true
    isblarghing = true
    cooldowns[1] = 0
    s = Character.Torso
    local p = Instance.new("Sound", s)
    p.SoundId = "http://www.roblox.com/asset/?id=" .. "315652366"
    p.Volume = 1
    game:GetService("Debris"):AddItem(p, 4)
    p:Play()
    wait(0.1)
    s.Parent.Humanoid.PlatformStand = true
    local v = Instance.new("BodyVelocity", s)
    v.P = 5000
    v.maxForce = Vector3.new(545000, 545000, 545000)
    local Dist = 80
    v.velocity = s.CFrame.lookVector * Dist + Vector3.new(0, Dist, 0)
    game:GetService("Debris"):AddItem(v, 0.25)
    s.Parent.Humanoid.PlatformStand = true
    s.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) / 2
    wait(0.175)
    local x = false
    attack = false
    for i = 1, 500 do
      swait()
      MagicBlock(BrickColor.new("Medium stone grey"), RootPart.CFrame * euler(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))), 1, 1, 1, 3, 3, 3, 0.1)
      for _,v in pairs(s:children()) do
        hitfloord = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
        if v.className == "Motor" or v.className == "Weld" or v.className == "Motor6D" then
          v.C0 = v.C0 * CFrame.Angles(math.random(-50, 50) / 30, math.random(-50, 50) / 30, math.random(-50, 50) / 30)
        end
      end
      if stop then
        s.Parent.Humanoid.PlatformStand = false
        Torso.Velocity = Vector3.new(0, -100, 0)
        MagicWave(BrickColor.new("Bright red"), RootPart.CFrame * euler(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))), 1, 1, 1, 10, 10, 10, 0.07)
        MagicWave(BrickColor.new("Bright yellow"), cf(RootPart.Position) * euler(math.rad(math.random(-20, 20)), math.rad(math.random(-200, 200)), 0), 1, 0.5, 1, 3, 3, 3, 0.15)
      end
      if hitfloord then
        s.Parent.Humanoid.PlatformStand = false
        break
      end
    end
    do
      MagniDamage(RootPart, 25, 15, 20, math.random(75, 105), "Normal", RootPart, 0.15, 2, math.random(55, 97), true, true, false, "Movement", 0.25, 400)
      MagicWave(BrickColor.new("Bright yellow"), cf(0, 0, 0), 1, 2, 1, 1, -0.1, 1, 0.1)
      MagicWave(BrickColor.new("Bright yellow"), cf(0, 0, 0), 1, 2, 1, 1, -0.1, 1, 0.1)
      p = Instance.new("Sound", s)
      p.SoundId = "http://www.roblox.com/asset/?id=" .. "157878578"
      p.Volume = 1
      p.Pitch = 0.9
      p:Play()
      game:GetService("Debris"):AddItem(p, 4)
      showDamage(Character, 0, "Damage")
      s.Parent.Humanoid:TakeDamage(0)
      isblarghing = false
    end
  end
end
bombmeshes = {
{mesh = "http://www.roblox.com/asset/?id=12891705", texture = "http://www.roblox.com/asset/?id=12891577", offset = Vector3.new(0, 4.4, 0), size = Vector3.new(2.5, 2.5, 2.5)}
, 
{mesh = "http://www.roblox.com/asset/?id=11563093", texture = "http://www.roblox.com/asset/?id=11563076", offset = Vector3.new(0, 7.25, 0), size = Vector3.new(10, 10, 10)}
, 
{mesh = "http://www.roblox.com/asset/?id=9419831", texture = "http://www.roblox.com/asset/?id=9419827", offset = Vector3.new(0, 7.25, 0), size = Vector3.new(8, 8, 8)}
}
xl = {"316012158", "316012174", "316012192"}
xe = {"316012212", "316012229", "316012256", "316012287"}
do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] and mana.Value >= 20 then
    stop = false
    attack = true
    cooldowns[2] = 10
    s = Character.Torso
    local p = Instance.new("Sound", s)
    p.SoundId = "http://www.roblox.com/asset/?id=" .. xe[math.random(1, #xe)]
    p.Volume = 1
    game:GetService("Debris"):AddItem(p, 4)
    p:Play()
    for i = 1, 15 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.15)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.7, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.25)
      RW.C0 = clerp(RW.C0, cf(1.3, 1.15, 0) * euler(math.pi, 0, 0) * euler(0, 0, 0.2), 0.25)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.3, 1.15, 0) * euler(-math.pi, 0, 0) * euler(0, 0, -0.2), 0.25)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 0, 0.1) * euler(0, math.pi / 2, 0), 0.25)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.1) * euler(0, -math.pi / 2, 0), 0.25)
    end
    local b = Instance.new("Part", workspace)
    b.Name = "HEIL"
    b.TopSurface = 0
    b.BottomSurface = 0
    b.formFactor = "Symmetric"
    b.CanCollide = false
    b.Size = Vector3.new(5, 5, 5)
    local m = Instance.new("SpecialMesh", b)
    m.MeshType = "FileMesh"
    local rnd = math.random(0, 100)
    local rand = math.random(1, 2)
    if rnd <= 20 then
      rand = 3
    end
    m.MeshId = bombmeshes[rand].mesh
    m.TextureId = bombmeshes[rand].texture
    m.Scale = bombmeshes[rand].size
    b.Transparency = 1
    local w = Instance.new("Weld", b)
    w.Part0 = s
    w.Part1 = b
    w.C0 = CFrame.new(bombmeshes[rand].offset)
    local sus = Instance.new("ParticleEmitter", b)
    sus.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
    sus.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5), NumberSequenceKeypoint.new(1, 10)})
    sus.Lifetime = NumberRange.new(1.5, 2.25)
    sus.RotSpeed = NumberRange.new(-20, 20)
    sus.Rotation = NumberRange.new(-360, 360)
    sus.Texture = "http://www.roblox.com/asset/?id=133619974"
    sus.Speed = NumberRange.new(2, 6)
    sus.Acceleration = Vector3.new(0, 0, 0)
    sus.VelocitySpread = 30
    sus.LockedToPart = true
    sus.Rate = 200
    for i = 1, 10 do
      b.Transparency = 1 - i / 10
      swait()
    end
    sus.Enabled = false
    wait(math.random(20, 40) / 10)
    local p = Instance.new("Sound", s)
    p.SoundId = "http://www.roblox.com/asset/?id=" .. xl[math.random(1, #xl)]
    p.Volume = 1
    p:Play()
    game:GetService("Debris"):AddItem(p, 4)
    MagniDamage(RootPart, 40, 30, 40, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    local p = Instance.new("Sound", b)
    p.SoundId = "http://www.roblox.com/asset/?id=" .. "216782105"
    p.Pitch = 0.8
    p.Volume = 1
    p:Play()
    game:GetService("Debris"):AddItem(p, 4)
    local eff = Instance.new("Part", workspace)
    eff.formFactor = "Custom"
    eff.Size = Vector3.new(1, 1, 1)
    eff.CFrame = b.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
    eff.BrickColor = BrickColor.new("Bright yellow")
    local m = Instance.new("BlockMesh", eff)
    m.Scale = Vector3.new(10, 10, 10)
    eff.Parent = workspace
    eff.Name = "Bewm"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(25.5, 25.5, 25.5) / 20
      p.Transparency = i / 30
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-6, 6)), math.rad(math.random(-6, 6)), math.rad(math.random(-6, 6))))
    local eff = Instance.new("Part", workspace)
    eff.formFactor = "Custom"
    eff.Size = Vector3.new(1, 1, 1)
    eff.CFrame = b.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
    eff.BrickColor = BrickColor.new("Bright orange")
    local m = Instance.new("BlockMesh", eff)
    m.Scale = Vector3.new(10, 10, 10)
    eff.Parent = workspace
    eff.Name = "Bewm"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(37.5, 37.5, 37.5) / 20
      p.Transparency = i / 30
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
    local eff = Instance.new("Part", workspace)
    eff.formFactor = "Custom"
    eff.Size = Vector3.new(1, 1, 1)
    eff.CFrame = b.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
    eff.BrickColor = BrickColor.new("Bright yellow")
    local m = Instance.new("BlockMesh", eff)
    m.Scale = Vector3.new(10, 10, 10)
    eff.Parent = workspace
    eff.Name = "Bewm"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(55, 55, 55) / 20
      p.Transparency = i / 30
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-10, 10)), math.rad(math.random(-10, 10)), math.rad(math.random(-10, 10))))
    hitfloord = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
    local eff = Instance.new("Part", workspace)
    eff.formFactor = "Custom"
    eff.Size = Vector3.new(1, 1, 1)
    eff.CFrame = CFrame.Angles(math.rad(90), 0, 0)
    eff.BrickColor = BrickColor.new("Bright yellow")
    local m = Instance.new("SpecialMesh", eff)
    m.MeshType = "FileMesh"
    m.MeshId = "http://www.roblox.com/asset/?id=20329976"
    m.Scale = Vector3.new(10, 10, 10)
    eff.Parent = workspace
    eff.Name = "Bewm"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(55, 0, 55) / 20
      p.Transparency = i / 30
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(0, math.rad(math.random(-10, 9) * 3 + 5), 0))
    local eff = Instance.new("Part", workspace)
    eff.formFactor = "Custom"
    eff.Size = Vector3.new(1, 1, 1)
    eff.CFrame = CFrame.Angles(math.rad(90), 0, 0)
    eff.BrickColor = BrickColor.new("Institutional white")
    local m = Instance.new("SpecialMesh", eff)
    m.MeshType = "FileMesh"
    m.MeshId = "http://www.roblox.com/asset/?id=20329976"
    m.Scale = Vector3.new(10, 10, 10)
    eff.Parent = workspace
    eff.Name = "Bewm"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(100, 0, 100) / 12
      p.Transparency = 0.5 + i / 24
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(0, math.rad(math.random(-10, 9) * 3 + 5), 0))
    b:BreakJoints()
    b.Transparency = 1
    b.Anchored = true
    game:GetService("Debris"):AddItem(b, 5)
    showDamage(Character, 0, "Damage")
    --s.Parent.Stats.Stun.Value = 0
    s.Parent.Humanoid:TakeDamage(0)
    do
      local sus = Instance.new("ParticleEmitter", s)
      sus.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
      sus.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2), NumberSequenceKeypoint.new(1, 6)})
      sus.Lifetime = NumberRange.new(1, 2)
      sus.RotSpeed = NumberRange.new(-20, 20)
      sus.Rotation = NumberRange.new(-360, 360)
      sus.Texture = "http://www.roblox.com/asset/?id=133619974"
      sus.Speed = NumberRange.new(0, 0)
      sus.Acceleration = Vector3.new(0, 5, 0)
      sus.VelocitySpread = 180
      sus.Rate = 20
      coroutine.resume(coroutine.create(function(p)
    wait(2)
    p.Enabled = false
  end), sus)
      if rand == 3 then
        local p = Instance.new("Sound", b)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "270620358"
        p.Pitch = 1
        p.Volume = 1
        p:Play()
        game:GetService("Debris"):AddItem(p, 4)
        local Torso = b
        for i = 1, math.random(26, 34) do
          local s = math.random(100, 125) / 100
          if math.random(1, 20) == 20 then
            s = math.random(225, 250) / 100 * 2
          end
          local p = Instance.new("Part", workspace)
          p.Name = "BONUSDUCK"
          p.TopSurface = 0
          p.BottomSurface = 0
          p.formFactor = "Custom"
          p.Size = Vector3.new(s, s, s)
          p.BrickColor = BrickColor.new("New Yeller")
          p.CanCollide = false
          p.CFrame = Torso.CFrame * CFrame.new(math.random(-5, 5) / 10, 0, math.random(-5, 5) / 10) * CFrame.fromEulerAnglesXYZ(0, math.random(-50, 50) / 10, 0)
          local dir = Torso.CFrame * CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(-180, 180)), 0).lookVector
          p.Velocity = (dir * (math.random(58, 80) / 10) + Vector3.new(0, math.random(20, 25), 0)) * math.random(1, 3)
          p.Friction = 0.5
          m = Instance.new("SpecialMesh", p)
          m.MeshType = "FileMesh"
          m.MeshId = "http://www.roblox.com/asset/?id=9419831"
          m.TextureId = "http://www.roblox.com/asset/?id=9419827"
          m.Scale = p.Size
          local rr = math.random(1, 3)
          if rr == 3 then
            m.VertexColor = Vector3.new(0.85, 0.85, 0.85)
          else
            if rr == 2 then
              m.VertexColor = Vector3.new(1, 0.8, 0.8)
            else
              if rr == 1 then
                m.VertexColor = Vector3.new(0.8, 1, 0.8)
              end
            end
          end
          game:GetService("RunService").Heartbeat:wait()
          coroutine.resume(coroutine.create(function(e)
    wait(1)
    e.CanCollide = true
    game:GetService("Debris"):AddItem(e, 17.5)
    e.Touched:connect(function(hit)
      if hit.Parent and hit.Parent:FindFirstChild("Humanoid") and e:FindFirstChild("BONUSDUCK") == nil then
        hit.Parent.Humanoid:TakeDamage(0)
        if hit.Parent:FindFirstChild("Decrease") then
          s = Instance.new("IntValue", hit.Parent.Decrease)
          s.Name = "DecreaseAtk"
          s.Value = -0.02
          game:GetService("Debris"):AddItem(s, 30)
        end
        pp = Instance.new("BoolValue", e)
        pp.Name = "BONUSDUCK"
        e.Transparency = 1
        e.Anchored = true
        e.CanCollide = false
        local ss = Instance.new("Sparkles", e)
        local so = {"261637666", "261637644", "261637620", "261637599", "261637593"}
        local sp = Instance.new("Sound", e)
        sp.Volume = -0.15 + e.Size.x
        sp.SoundId = "http://www.roblox.com/asset/?id=" .. so[math.random(1, 5)]
        sp:Play()
        wait(0.33)
        ss.Enabled = false
        wait(1)
        e:Remove()
      end
    end)
    wait(10 + math.random(0, 20) / 20)
    if e.Parent and e:FindFirstChild("BONUSDUCK") == nil then
      for i = 1, 4 do
        e.Transparency = 1
        wait(0.2)
        e.Transparency = 0
        wait(0.2)
      end
      e.Parent = nil
    end
  end), p)
        end
        -- DECOMPILER ERROR at PC1398: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC1398: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end
do3 = function()
  speech = {316403490, 316403787, 316403844, 316403916}
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 25 then
    attack = true
    removeControl()
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    mana.Value = mana.Value - 25
    num = 0
    local dec2 = Instance.new("NumberValue", Decrease)
    dec2.Name = "DecreaseDef"
    dec2.Value = -1.25
    local pod = part(3, workspace, 0, 0, BrickColor.new("Reddish brown"), "Podium", vt(2, 2.5, 2), "WoodPlanks", true)
    pod.CFrame = Torso.CFrame * CFrame.new(0, -1.8, -2)
    for i = 1, 4 do
      MagicCloud(BrickColor.new("White"), cf(pod.Position) * cf(math.random(-80, 80) / 100, math.random(-100, 150) / 100, math.random(-80, 80) / 100) * euler(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180))), 3, 5, 5, 0.1, 0.1, 0.1, 0.05)
    end
    pod.Rotation = Torso.Rotation
    pod.CanCollide = true
    local pod2 = part(3, workspace, 0, 0, BrickColor.new("Reddish brown"), "Podium", vt(2, 1, 2), "WoodPlanks", true)
    local msh = mesh("SpecialMesh", pod2, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
    pod2.CFrame = pod.CFrame * CFrame.new(0, 1.75, 0)
    pod2.Rotation = pod.Rotation + Vector3.new(0, 180, 0)
    pod2.CanCollide = true
    speeching = true
    local snd = Instance.new("Sound", Head)
    snd.Volume = 1
    snd.SoundId = "http://www.roblox.com/asset/?id=" .. speech[math.random(1, #speech)]
    game:GetService("Debris"):AddItem(snd, snd.TimeLength + 5)
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.35, 0.5, -0.5) * euler(1.1, 0, -0.15) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.35, 0.5, -0.5) * euler(1.1, 0, 0.15) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC441: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC441: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    snd:Play()
    numofanim = 0
    deb = false
    while speeching do
      swait()
      num = num + 1
      local rng = math.random(0, 100)
      if 90 + numofanim < rng and deb == false then
        coroutine.resume(coroutine.create(function()
    deb = true
    local anim = math.random(0, 100)
    if anim <= 25 then
      numofanim = numofanim + 2
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.15, 0, -0.2) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.35, 0.5, -0.5) * euler(2.3, 0, 0.2) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.35, 0.5, -0.5) * euler(1.1, 0, 0.15) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC211: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC211: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      for i = 0, 1, 0.025 do
        swait()
      end
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.35, 0.5, -0.5) * euler(1.1, 0, -0.15) * euler(0, 0, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.35, 0.5, -0.5) * euler(1.1, 0, 0.15) * euler(0, 0, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.3)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
            -- DECOMPILER ERROR at PC418: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC418: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    else
      if anim > 25 and anim <= 50 then
        numofanim = numofanim + 2
        local reps = math.random(2, 4)
        local repsdone = 0
        repeat
          for i = 0, 1, 0.15 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0.15, 0.1, 0) * euler(0, 0, 0), 0.15)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.15)
            RW.C0 = clerp(RW.C0, cf(1.35, 0.5, -0.5) * euler(2, 0, -0.15) * euler(0, 0, 0), 0.15)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
            LW.C0 = clerp(LW.C0, cf(-1.35, 0.5, -0.5) * euler(1.1, 0, 0.15) * euler(0, 0, 0), 0.15)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.15)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.15)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          for i = 0, 1, 0.1 do
            swait()
            Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.35, 0.3, -0.5) * euler(1.4, 0, -0.15) * euler(0, 0, 0), 0.7)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.35, 0.5, -0.5) * euler(1.1, 0, 0.15) * euler(0, 0, 0), 0.5)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
                -- DECOMPILER ERROR at PC832: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC832: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
          repsdone = repsdone + 1
        until repsdone == reps
      else
        do
          if anim > 50 and anim <= 75 then
            numofanim = numofanim + 2
            for i = 0, 1, 0.1 do
              swait()
              Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.35, 0.5, -0.5) * euler(1.1, 0, -0.15) * euler(0, 0, 0), 0.3)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.35, 0.5, -0.5) * euler(1.1, 0, 0.15) * euler(0, 0, 0), 0.3)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.3)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC1043: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC1043: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
            for i = 0, 1, 0.25 do
              swait()
            end
            for i = 0, 1, 0.1 do
              swait()
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.5)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.5)
              RW.C0 = clerp(RW.C0, cf(1.35, 0.5, -0.5) * euler(1.1, 0, -0.15) * euler(0, 0, 0), 0.5)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
              LW.C0 = clerp(LW.C0, cf(-1.35, 0.5, -0.5) * euler(1.1, 0, 0.15) * euler(0, 0, 0), 0.5)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, 0, 0) * euler(0, 0, 0), 0.5)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0), 0.5)
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                do
                  if StaggerHit.Value == true then
                    break
                  end
                  -- DECOMPILER ERROR at PC1250: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC1250: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
          deb = false
        end
      end
    end
  end))
      end
      if snd.TimeLength * 30 <= num then
        speeching = false
      end
    end
    do
      do
        local col = {"Bright red", "Bright yellow", "Bright orange"}
        MagicCircle(BrickColor.new(col[math.random(1, #col)]), "SmoothPlastic", cf(pod.Position), 5, 5, 5, 10.5, 10.5, 10.5, 0.1, 1)
        for i = 1, 4 do
          MagicBlock(BrickColor.new(col[math.random(1, #col)]), cf(pod.Position) * cf(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100), 5, 5, 5, 6, 6, 6, 0.1)
        end
        so("216782105", pod, 0.5, 1.5)
        MagniDamage(pod, 15, 15, 20, math.random(35, 55), "Normal", pod, 0.15, 2, math.random(55, 97), true, true, false)
        MagniBuff(RootPart, 45, "Defense", -10.0, 8000)
        MagniBuff(RootPart, 45, "Movement", -10.0, 8000)
        MagniBuff(RootPart, 45, "Damage", -10.0, 8000)
        showDamage(Character, 00, "Damage")
        Character.Humanoid:TakeDamage(0)
        Stagger.Value = true
        cooldowns[3] = 0
        pod.Parent = nil
        pod2.Parent = nil
        dec.Parent = nil
        dec2.Parent = nil
        attack = false
        resumeControl()
      end
    end
  end
end
do4 = function()
  if attack == true then
    return 
  end
  if Player.Name == Player.Name then
    if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
      return 
    end
    local hitfloord, posfloord = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
    if cooldownmax <= cooldowns[4] and mana.Value >= 50 then
      attack = true
      stop = true
      mana.Value = mana.Value - 50
      local s = game.Players.LocalPlayer.Character.Torso
      do
        local p = Instance.new("Sound", s)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. xl[math.random(1, #xl)]
        p.Volume = 1
        game:GetService("Debris"):AddItem(p, 4)
        p:Play()
        local sl = Instance.new("IntValue", s.Parent.Stats.Decrease)
        sl.Name = "DecreaseMvmt"
        sl.Value = 100
        local xdir = RootPart.CFrame.lookVector
        local xpos = posfloord - Vector3.new(0, 66, 0) + xdir * 25
        local building = Instance.new("Model", workspace)
        local p = Instance.new("Part", building)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Anchored = true
        p.CanCollide = true
        p.formFactor = "Symmetric"
        p.Material = "Concrete"
        p.Size = Vector3.new(30, 90, 30)
        p.CFrame = CFrame.new(xpos, xpos + RootPart.CFrame.lookVector * 5)
        building.PrimaryPart = p
        local ps = Instance.new("Part", workspace)
        ps.Anchored = true
        ps.CanCollide = false
        ps.CFrame = CFrame.new(posfloord + RootPart.CFrame.lookVector * 25)
        ps.Size = Vector3.new(33, 1, 33)
        ps.Transparency = 1
        local pem = Instance.new("ParticleEmitter", ps)
        pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
        pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5), NumberSequenceKeypoint.new(1, 10)})
        pem.Lifetime = NumberRange.new(2.5, 3.5)
        pem.RotSpeed = NumberRange.new(-100, 100)
        pem.Rotation = NumberRange.new(-350, 350)
        pem.Texture = "http://www.roblox.com/asset/?id=133619974"
        pem.Speed = NumberRange.new(0, 0)
        pem.Acceleration = Vector3.new(0, 0, 0)
        pem.VelocitySpread = 180
        pem.Rate = 250
        pem.Enabled = false
        for y = -1, 3 do
          for r = -1, 1 do
            local p = Instance.new("Part", building)
            p.TopSurface = 0
            p.BottomSurface = 0
            p.Anchored = true
            p.CanCollide = false
            p.formFactor = "Custom"
            p.Size = Vector3.new(30.1, 8, 8)
            p.CFrame = building.PrimaryPart.CFrame * CFrame.new(0, 14 * y - 8, 10 * r)
            p.BrickColor = BrickColor.new("Pastel light blue")
            p.Reflectance = 0.33
            p.Material = "SmoothPlastic"
          end
        end
        local cam = workspace.CurrentCamera
        cam.CameraType = "Scriptable"
        cam:Interpolate(building.PrimaryPart.CFrame * CFrame.new(0, 120, 0) - xdir * 100, building.PrimaryPart.CFrame * CFrame.new(0, 100, 0), 4)
        for i = 1, 15 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.1)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.7, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0) * euler(-0.6, 0, 0) * euler(0, 0, 0.4), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0) * euler(0.6, 0, 0) * euler(0, 0, -0.4), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 0, 0.1) * euler(0, math.pi / 2, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.1) * euler(0, -math.pi / 2, 0), 0.2)
          building:SetPrimaryPartCFrame(CFrame.new(xpos + Vector3.new(0, i, 0) + Vector3.new(math.random(-100, 100) / 100, 0, math.random(-100, 100) / 100)))
        end
        pem.Enabled = true
        for i = 1, 25 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.05)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.5, 0, 0), 0.05)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.05)
          RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0.4), 0.05)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.05)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0) * euler(0.6, 0, 0) * euler(0, 0, -0.5), 0.05)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.05)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 0, 0.1) * euler(0, math.pi / 2, 0), 0.05)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.1) * euler(0, -math.pi / 2, 0), 0.05)
          building:SetPrimaryPartCFrame(CFrame.new(xpos + Vector3.new(0, i, 0) + Vector3.new(math.random(-100, 100) / 100, 15, math.random(-100, 100) / 100)))
        end
        for i = 1, 40 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.05)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.5, 0, 0), 0.1)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.1)
          RW.C0 = clerp(RW.C0, cf(1.3, 1, 0) * euler(2.5, 0, 0) * euler(0, 0, 0.4), 0.1)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0) * euler(0.6, 0, 0) * euler(0, 0, -0.5), 0.1)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 0, 0.1) * euler(0, math.pi / 2, 0), 0.1)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.1) * euler(0, -math.pi / 2, 0), 0.1)
          building:SetPrimaryPartCFrame(CFrame.new(xpos + Vector3.new(0, i, 0) + Vector3.new(math.random(-100, 100) / 100, 40, math.random(-100, 100) / 100)))
        end
        do
          for i = 1, 25 do
            swait()
            building:SetPrimaryPartCFrame(CFrame.new(xpos + Vector3.new(0, i, 0) + Vector3.new(math.random(-100, 100) / 100, 80, math.random(-100, 100) / 100)))
          end
        end
        pem.Enabled = false
        game:GetService("Debris"):AddItem(ps, 5)
        for i = 1, 15 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.25)
          Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.5, 0, 0), 0.35)
          RW.C0 = clerp(RW.C0, cf(1.5, 1, 0) * euler(0, 0, 0) * euler(0.3, 0, 0.6), 0.35)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 1, 0) * euler(-0.5, 0, 0) * euler(0, 0, -0.7), 0.35)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, 0.25, -0.5) * euler(0.55, 0, 0) * euler(0, math.pi / 2.2, 0), 0.35)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * euler(-0.7, 0, 0) * euler(0, -math.pi / 1.8, 0), 0.35)
        end
        for _,v in pairs(workspace:children()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") then
            local h, t = v.Humanoid, v.Torso
          end
        end
        local eff = Instance.new("Part", workspace)
        eff.formFactor = "Custom"
        eff.Size = Vector3.new(1, 1, 1)
        eff.CFrame = CFrame.new(posfloord)
        eff.BrickColor = BrickColor.new("Bright yellow")
        local m = Instance.new("SpecialMesh", eff)
        m.MeshType = "FileMesh"
        m.MeshId = "http://www.roblox.com/asset/?id=20329976"
        m.Scale = Vector3.new(10, 10, 10)
        eff.Parent = workspace
        eff.Name = "Bewm"
        eff.Anchored = true
        eff.CanCollide = false
        game:GetService("Debris"):AddItem(eff, 5)
        coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(55, 0, 55) / 20
      p.Transparency = i / 30
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(0, math.rad(math.random(-10, 9) * 3 + 5), 0))
        local sbs = Instance.new("BodyPosition", RootPart)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(500000, 500000000, 500000)
        sbs.position = RootPart.CFrame.p + Vector3.new(0, 2000, 0)
        local gl = Instance.new("BodyGyro", RootPart)
        gl.P = 8000
        gl.D = 400
        gl.maxTorque = Vector3.new(50000000, 0, 50000000)
        gl.cframe = RootPart.CFrame
        local sk = Instance.new("Part", workspace)
        sk.Name = "D"
        sk.CanCollide = false
        sk.Anchored = true
        sk.Transparency = 1
        sk.Size = Vector3.new(1, 1, 1)
        sk.CFrame = RootPart.CFrame
        local p = Instance.new("Sound", sk)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "134012322"
        p.Volume = 1
        p.Pitch = 0.8
        game:GetService("Debris"):AddItem(sk, 4)
        for i = 1, 5 do
          swait()
          handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.4)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.7, 0, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0) * euler(-0.2, 0, 0) * euler(0, 0, 0.1), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0) * euler(math.pi * 0.95, 0, 0) * euler(0, 0, -0.2), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 0, 0.3) * euler(0, math.pi / 2, 0), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.3) * euler(0, -math.pi / 2, 0), 0.4)
        end
        wait(0.5)
        cam:Interpolate(building.PrimaryPart.CFrame * CFrame.new(0, 100, 0) - xdir * 65, building.PrimaryPart.CFrame * CFrame.new(0, 60, 0), 2)
        wait(0.5)
        local pz = Instance.new("Sound", building.PrimaryPart)
        pz.SoundId = "http://www.roblox.com/asset/?id=" .. "167273611"
        pz.Pitch = 1
        pz.Volume = 1
        pz:Play()
        wait(1)
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 1)
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.7, 0, 0), 1)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 1)
        RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0) * euler(-math.pi, 0, 0) * euler(0, 0, 0.5), 1)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 1)
        LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0) * euler(math.pi, 0, 0) * euler(0, 0, -0.5), 1)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 1)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 0, 0.1) * euler(0, math.pi / 2, 0), 1)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.1) * euler(0, -math.pi / 2, 0), 1)
        sbs:Destroy()
        RootPart.Anchored = true
        gl:Destroy()
        local start = building.PrimaryPart.CFrame * CFrame.new(0, 810, 0)
        local xpart = Instance.new("Part", s.Parent)
        xpart.Name = "ROAD ROLLER DA!"
        xpart.TopSurface = 0
        xpart.BottomSurface = 0
        xpart.Anchored = true
        xpart.CanCollide = false
        xpart.Size = Vector3.new(1, 1, 1)
        local xm = Instance.new("SpecialMesh", xpart)
        xm.MeshType = "FileMesh"
        xm.Scale = Vector3.new(7.5, 7.5, 7.5)
        xm.TextureId = "http://www.roblox.com/asset?id=113216977"
        xm.MeshId = "http://www.roblox.com/asset?id=113216991"
        for i = 1, 47 do
          swait()
          pz.Volume = 0.05 + i * 0.2
          cam:Interpolate(building.PrimaryPart.CFrame * CFrame.new(0, 140, 0) - xdir * 90, s.CFrame, 5.1 - i * 0.1)
          RootPart.CFrame = start * CFrame.new(0, -i * 3.5 - i ^ 1.65 + 5, 0) * CFrame.Angles(-math.pi, 0, 0)
          xpart.CFrame = RootPart.CFrame * CFrame.new(0, 2, 2) * CFrame.Angles(math.pi, 0, 0)
        end
        game:GetService("Debris"):AddItem(pz, 3)
        local p = Instance.new("Sound", s)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "165970126"
        p.Volume = 1
        p.Pitch = 0.85
        game:GetService("Debris"):AddItem(p, 4)
        p:Play()
        local p = Instance.new("Sound", workspace)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "165970126"
        p.Volume = 0.05
        p.Pitch = 0.85
        game:GetService("Debris"):AddItem(p, 4)
        p:Play()
        MagniDamage(RootPart, 55, 20, 30, math.random(50, 100), "Normal", building.PrimaryPart, 0.05, 2, 9999, false, false, false, "Defense", 0, 0)
        MagniDamage(building.PrimaryPart, 55, 20, 30, math.random(100, 150), "Normal", building.PrimaryPart, 0.05, 2, 9999, false, false, false, "Defense", 0, 0)
        local p = Instance.new("Sound", RootPart)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "216782105"
        p.Pitch = 0.8
        p.Volume = 1
        p:Play()
        game:GetService("Debris"):AddItem(p, 4)
        local p = Instance.new("Sound", s)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "169628396"
        p.Volume = 1
        p.Pitch = 0.8
        game:GetService("Debris"):AddItem(p, 4)
        p:Play()
        local p = Instance.new("Sound", workspace)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "169628396"
        p.Volume = 0.05
        p.Pitch = 0.8
        game:GetService("Debris"):AddItem(p, 4)
        p:Play()
        local pem = Instance.new("ParticleEmitter", building.PrimaryPart)
        pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
        pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 8), NumberSequenceKeypoint.new(1, 10)})
        pem.Lifetime = NumberRange.new(2.5, 3.5)
        pem.RotSpeed = NumberRange.new(-69, 69)
        pem.Rotation = NumberRange.new(-350, 350)
        pem.Texture = "http://www.roblox.com/asset/?id=133619974"
        pem.Speed = NumberRange.new(2, 12)
        pem.Acceleration = Vector3.new(0, -10, 0)
        pem.VelocitySpread = 180
        pem.Rate = 5
        pem.Enabled = true
        spawn(function()
    wait()
    pem:Emit(200)
  end)
        local kek = {"http://www.roblox.com/asset/?id=48803786", "http://www.roblox.com/asset/?id=116579230", "http://www.roblox.com/asset/?id=187884226", "http://www.roblox.com/asset/?id=2426617"}
        for _,v in pairs(building:children()) do
          if v.BrickColor == BrickColor.new("Pastel light blue") then
            do
              if _ % 3 == 0 then
                local p = Instance.new("Sound", v)
                p.SoundId = "http://www.roblox.com/asset/?id=" .. "144884907"
                p.Pitch = math.random(65, 80) / 100
                p.Volume = 1
                p:Play()
                game:GetService("Debris"):AddItem(p, 4)
              end
              local sks = Instance.new("Part", building)
              sks.Name = "DIIC"
              sks.Anchored = true
              sks.CanCollide = false
              sks.formFactor = "Custom"
              sks.Size = Vector3.new(0.2, 8, 8)
              sks.BrickColor = BrickColor:Red()
              sks.CFrame = v.CFrame * CFrame.new(15, 0, 0)
              sks.Transparency = 1
              local pem = Instance.new("ParticleEmitter", sks)
              pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
              pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.15), NumberSequenceKeypoint.new(1, 0.15)})
              pem.Lifetime = NumberRange.new(3.5, 4)
              pem.RotSpeed = NumberRange.new(-110, 110)
              pem.Rotation = NumberRange.new(-350, 350)
              pem.Texture = "http://www.roblox.com/asset/?id=316915922"
              pem.Speed = NumberRange.new(5, 50)
              pem.Acceleration = Vector3.new(0, -20, 0)
              pem.VelocitySpread = 80
              pem.Rate = 0
              pem.LightEmission = -0.2
              pem.Enabled = true
              pem.EmissionDirection = "Right"
              spawn(function()
    wait()
    pem:Emit(50)
  end)
              local pem = Instance.new("ParticleEmitter", sks)
              pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
              pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.1)})
              pem.Lifetime = NumberRange.new(3.5, 4)
              pem.RotSpeed = NumberRange.new(-110, 110)
              pem.Rotation = NumberRange.new(-350, 350)
              pem.Texture = "http://www.roblox.com/asset/?id=316915935"
              pem.Speed = NumberRange.new(5, 50)
              pem.Acceleration = Vector3.new(0, -22, 0)
              pem.VelocitySpread = 70
              pem.Rate = 0
              pem.LightEmission = -0.2
              pem.Enabled = true
              pem.EmissionDirection = "Right"
              spawn(function()
    wait()
    pem:Emit(50)
  end)
              local pem = Instance.new("ParticleEmitter", sks)
              pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
              pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 0.2)})
              pem.Lifetime = NumberRange.new(3.5, 4)
              pem.RotSpeed = NumberRange.new(-110, 110)
              pem.Rotation = NumberRange.new(-350, 350)
              pem.Texture = "http://www.roblox.com/asset/?id=316915947"
              pem.Speed = NumberRange.new(5, 55)
              pem.Acceleration = Vector3.new(0, -20, 0)
              pem.VelocitySpread = 60
              pem.Rate = 0
              pem.LightEmission = -0.2
              pem.Enabled = true
              pem.EmissionDirection = "Right"
              spawn(function()
    wait()
    pem:Emit(50)
  end)
              local sks = Instance.new("Part", building)
              sks.Name = "DIIC"
              sks.Anchored = true
              sks.CanCollide = false
              sks.formFactor = "Custom"
              sks.Size = Vector3.new(0.2, 8, 8)
              sks.BrickColor = BrickColor:Red()
              sks.CFrame = v.CFrame * CFrame.new(-15, 0, 0)
              sks.Transparency = 1
              local pem = Instance.new("ParticleEmitter", sks)
              pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
              pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.15), NumberSequenceKeypoint.new(1, 0.15)})
              pem.Lifetime = NumberRange.new(3.5, 4)
              pem.RotSpeed = NumberRange.new(-110, 110)
              pem.Rotation = NumberRange.new(-350, 350)
              pem.Texture = "http://www.roblox.com/asset/?id=316915922"
              pem.Speed = NumberRange.new(5, 50)
              pem.Acceleration = Vector3.new(0, -20, 0)
              pem.VelocitySpread = 80
              pem.Rate = 0
              pem.LightEmission = -0.2
              pem.Enabled = true
              pem.EmissionDirection = "Left"
              spawn(function()
    wait()
    pem:Emit(50)
  end)
              local pem = Instance.new("ParticleEmitter", sks)
              pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
              pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.1)})
              pem.Lifetime = NumberRange.new(3.5, 4)
              pem.RotSpeed = NumberRange.new(-110, 110)
              pem.Rotation = NumberRange.new(-350, 350)
              pem.Texture = "http://www.roblox.com/asset/?id=316915935"
              pem.Speed = NumberRange.new(5, 50)
              pem.Acceleration = Vector3.new(0, -22, 0)
              pem.VelocitySpread = 70
              pem.Rate = 0
              pem.LightEmission = -0.2
              pem.Enabled = true
              pem.EmissionDirection = "Left"
              spawn(function()
    wait()
    pem:Emit(50)
  end)
              local pem = Instance.new("ParticleEmitter", sks)
              pem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
              pem.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 0.2)})
              pem.Lifetime = NumberRange.new(3.5, 4)
              pem.RotSpeed = NumberRange.new(-110, 110)
              pem.Rotation = NumberRange.new(-350, 350)
              pem.Texture = "http://www.roblox.com/asset/?id=316915947"
              pem.Speed = NumberRange.new(5, 55)
              pem.Acceleration = Vector3.new(0, -20, 0)
              pem.VelocitySpread = 60
              pem.Rate = 0
              pem.LightEmission = -0.2
              pem.Enabled = true
              pem.EmissionDirection = "Left"
              spawn(function()
    wait()
    pem:Emit(50)
  end)
              local thed = Instance.new("Decal", v)
              thed.Face = "Left"
              thed.Texture = kek[math.random(1, #kek)]
              do
                local thed = Instance.new("Decal", v)
                thed.Face = "Right"
                thed.Texture = kek[math.random(1, #kek)]
                -- DECOMPILER ERROR at PC2831: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC2831: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC2831: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
        local eff = Instance.new("Part", workspace)
        eff.formFactor = "Custom"
        eff.Size = Vector3.new(1, 1, 1)
        eff.CFrame = CFrame.new(building.PrimaryPart.CFrame.p - Vector3.new(0, 35, 0))
        eff.BrickColor = BrickColor.new("Institutional white")
        local m = Instance.new("SpecialMesh", eff)
        m.MeshType = "FileMesh"
        m.MeshId = "http://www.roblox.com/asset/?id=20329976"
        m.Scale = Vector3.new(10, 10, 10)
        eff.Parent = workspace
        eff.Name = "Bewm"
        eff.Anchored = true
        eff.CanCollide = false
        game:GetService("Debris"):AddItem(eff, 5)
        coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(65, 0, 65) / 20
      p.Transparency = i / 20
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(0, math.rad(math.random(-10, 9) * 3 + 5), 0))
        local eff = Instance.new("Part", workspace)
        eff.formFactor = "Custom"
        eff.Size = Vector3.new(1, 1, 1)
        eff.CFrame = CFrame.new(building.PrimaryPart.CFrame.p - Vector3.new(0, 35, 0))
        eff.BrickColor = BrickColor.new("Institutional white")
        local m = Instance.new("SpecialMesh", eff)
        m.MeshType = "FileMesh"
        m.MeshId = "http://www.roblox.com/asset/?id=20329976"
        m.Scale = Vector3.new(10, 10, 10)
        eff.Parent = workspace
        eff.Name = "Bewm"
        eff.Anchored = true
        eff.CanCollide = false
        game:GetService("Debris"):AddItem(eff, 5)
        coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 10 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(145, 0, 145) / 10
      p.Transparency = 0.5 + i / 20
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(0, math.rad(math.random(-10, 9) * 3 + 5), 0))
        local eff = Instance.new("Part", workspace)
        eff.formFactor = "Custom"
        eff.Size = Vector3.new(1, 1, 1)
        eff.CFrame = CFrame.new(building.PrimaryPart.CFrame.p + Vector3.new(0, 40, 0))
        eff.BrickColor = BrickColor.new("Institutional white")
        local m = Instance.new("SpecialMesh", eff)
        m.MeshType = "FileMesh"
        m.MeshId = "http://www.roblox.com/asset/?id=20329976"
        m.Scale = Vector3.new(10, 10, 10)
        eff.Parent = workspace
        eff.Name = "Bewm"
        eff.Anchored = true
        eff.CanCollide = false
        game:GetService("Debris"):AddItem(eff, 5)
        coroutine.resume(coroutine.create(function(p, V, x)
    local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
    for i = 1, 10 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(125, 0, 125) / 10
      p.Transparency = 0.5 + i / 20
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(0, -math.rad(math.random(-10, 9) * 3 + 5), 0))
        for _,v in pairs(workspace:children()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") then
            local h, t = v.Humanoid, v.Torso
          end
        end
        handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 1)
        Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.5, 0, 0), 1)
        RW.C0 = clerp(RW.C0, cf(1.5, 1, 0) * euler(0, 0, 0) * euler(0.3, 0, 0.6), 1)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, cf(-1.5, 1, 0) * euler(-0.5, 0, 0) * euler(0, 0, -0.7), 1)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, 0.25, -0.5) * euler(0.55, 0, 0) * euler(0, math.pi / 2.2, 0), 1)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * euler(-0.7, 0, 0) * euler(0, -math.pi / 1.8, 0), 1)
        for i = 1, 3 do
          building:SetPrimaryPartCFrame(CFrame.new(building.PrimaryPart.CFrame.p - Vector3.new(R44_PC3112, 2.5, 0)))
          -- DECOMPILER ERROR at PC3348: Overwrote pending register: R44 in 'AssignReg'

          RootPart.CFrame = start * CFrame.new(0, -758.86938347034 - i * 2.5, 0) * CFrame.Angles(0, 0, 0)
          xpart.CFrame = RootPart.CFrame * CFrame.new(0, -2, 2) * CFrame.Angles(0, 0, 0)
          -- DECOMPILER ERROR at PC3375: Overwrote pending register: R44 in 'AssignReg'

          cam:Interpolate(building.PrimaryPart.CFrame * CFrame.new(0, R44_PC3112, 0) - xdir * 90, CFrame.new(s.Position), 0.5)
          swait()
        end
        wait(0.5)
        local p = Instance.new("Sound", RootPart)
        p.SoundId = "http://www.roblox.com/asset/?id=" .. "169628396"
        p.Volume = 1
        p.Pitch = 1
        game:GetService("Debris"):AddItem(p, 30)
        p:Play()
        cam:Interpolate(xpart.CFrame * CFrame.new(10, 10, -10), xpart.CFrame + Vector3.new(0, 2, 0), 1)
        wait(4)
        xpart:Remove()
        RootPart.Anchored = false
        cam.CameraType = "Custom"
        sl.Parent = nil
        attack = false
        stop = false
        cooldowns[4] = 0
        wait(3)
        building:Destroy()
      end
    end
  end
end
taunt = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[5] and mana.Value >= 20 then
    stop = false
    attack = true
    cooldowns[5] = 100
    s = Character.Torso
    local p = Instance.new("Sound", s)
    p.SoundId = "http://www.roblox.com/asset/?id=" .. "318111747"
    p.Volume = 1
    game:GetService("Debris"):AddItem(p, 4)
    p:Play()
    for i = 1, 15 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.1)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.7, 0, 0), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.3, 1.15, 0) * euler(math.pi * 0.99, 0, 0) * euler(0, 0, 0.2), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.3, 1.15, 0) * euler(math.pi * 0.99, 0, 0) * euler(0, 0, -0.2), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 0, 0.1) * euler(0, math.pi / 2, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, 0, -0.1) * euler(0, -math.pi / 2, 0), 0.2)
    end
    local b = Instance.new("Part", workspace)
    b.Name = "HEILx2"
    b.TopSurface = 0
    b.BottomSurface = 0
    b.formFactor = "Symmetric"
    b.CanCollide = false
    b.Size = Vector3.new(3, 2, 2)
    local m = Instance.new("SpecialMesh", b)
    m.MeshType = "FileMesh"
    m.MeshId = "http://www.roblox.com/asset/?id=192488915"
    m.TextureId = "http://www.roblox.com/asset/?id=192488947"
    local wa = Instance.new("Weld", b)
    wa.Part0 = s.Parent["Right Arm"]
    wa.Part1 = b
    wa.C0 = CFrame.new(-1.65, -1.2, 0) * CFrame.Angles(math.pi * 1.025, 0, 0.2)
    b.Transparency = 0
    local p = Instance.new("Sound", s)
    p.SoundId = "http://www.roblox.com/asset/?id=" .. "111124523"
    p.Volume = 1
    p.Pitch = math.random(80, 90) / 100
    game:GetService("Debris"):AddItem(p, 4)
    p:Play()
    wait(0.5)
    local p = Instance.new("Sound", s)
    p.SoundId = "http://www.roblox.com/asset/?id=" .. "190126363"
    p.Volume = 1
    p.Pitch = math.random(80, 90) / 100
    game:GetService("Debris"):AddItem(p, 4)
    wait(0.2)
    local trx = math.random(0, 100)
    if trx <= 10 then
      local bb = Instance.new("Part", b)
      bb.Name = "HEIL"
      bb.TopSurface = 0
      bb.BottomSurface = 0
      bb.formFactor = "Symmetric"
      bb.CanCollide = false
      bb.Size = Vector3.new(1, 1, 1)
      local m = Instance.new("SpecialMesh", bb)
      m.MeshType = "FileMesh"
      m.MeshId = "http://www.roblox.com/asset/?id=9419831"
      m.TextureId = "http://www.roblox.com/asset/?id=9419827"
      m.Scale = Vector3.new(0.7, 0.7, 0.7)
      local w = Instance.new("Weld", b)
      w.Part0 = b
      w.Part1 = bb
      w.C0 = CFrame.new(0, 0.74, -0.25) * CFrame.Angles(0, 0, 0)
      bb.Transparency = 0
      local p = Instance.new("Sound", s)
      p.SoundId = "http://www.roblox.com/asset/?id=" .. "111124523"
      p.Volume = 1
      p.Pitch = math.random(100, 110) / 100
      game:GetService("Debris"):AddItem(p, 4)
      p:Play()
      wait(0.4)
      local p = Instance.new("Sound", s)
      p.SoundId = "http://www.roblox.com/asset/?id=" .. xe[math.random(1, #xe)]
      p.Volume = 1
      p.Pitch = 1.4
      game:GetService("Debris"):AddItem(p, 4)
      p:Play()
      wait(1.5)
    end
    do
      local topkek = {317667032, 317667048, 317667070, 317670161}
      local dix = {13.8, 12, 12.35, 15}
      local rando = math.random(1, 4)
      if trx <= 10 then
        local poop = {}
        for i = 1, 33 do
          local p = Instance.new("Sound", b)
          p.SoundId = "http://www.roblox.com/asset/?id=" .. topkek[rando]
          p.Volume = 1
          p.Pitch = 1
          if rando == 4 then
            p.Pitch = 6.66
          end
          table.insert(poop, p)
        end
        wait(0.25)
        for _,v in pairs(poop) do
          v:Play()
        end
        wait(dix[rando] * 0.9 - 2.5)
        wait(0.1)
      else
        do
          do
            local p = Instance.new("Sound", b)
            p.SoundId = "http://www.roblox.com/asset/?id=" .. topkek[rando]
            p.Volume = 1
            p.Pitch = 1
            if rando == 4 then
              p.Pitch = 6.66
            end
            p:Play()
            print(rando)
            wait(dix[rando] * 0.9 - 2.5)
            wait(0.1)
            local thed = {142539074, 142539082, 142539090}
            local p = Instance.new("Sound", s)
            p.SoundId = "http://www.roblox.com/asset/?id=" .. thed[math.random(1, #thed)]
            p.Volume = 1
            p.Pitch = 1
            game:GetService("Debris"):AddItem(p, 4)
            p:Play()
            local borb = Instance.new("NumberValue", s.Parent.Stats.Decrease)
            borb.Name = "DecreaseMvmt"
            borb.Value = 100
            for i = 1, 15 do
              swait()
              handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.5, 0), 0.1)
              Neck.C0 = clerp(Neck.C0, necko * euler(-1, 0, 0), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(-1.4, 0, 0), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.3, 1.15, 0) * euler(math.pi * 1.15, 0, 0) * euler(0, 0, 0.1), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1.3, 1.15, 0) * euler(math.pi * 1.15, 0, 0) * euler(0, 0, -0.1), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.5) * euler(-1.4, 0, 0.1) * euler(0, math.pi / 2, 0), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.5) * euler(-1.4, 0, -0.1) * euler(0, -math.pi / 2, 0), 0.15)
            end
            wait(0.1)
            for i = 1, 10 do
              swait()
              handlewld.C0 = clerp(handlewld.C0, euler(0, 0, 0) * cf(0, 1.4, 0), 0.1)
              Neck.C0 = clerp(Neck.C0, necko * euler(-1, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.8) * euler(1.4, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.3, 1.15, 0) * euler(math.pi * 0.8, 0, 0) * euler(0, 0, 0.1), 0.3)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.3, 1.15, 0) * euler(math.pi * 0.8, 0, 0) * euler(0, 0, -0.1), 0.3)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -0.9, 0) * euler(1.4, 0, 0.1) * euler(0, math.pi / 2, 0), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(1.4, 0, -0.1) * euler(0, -math.pi / 2, 0), 0.3)
              if i == 6 then
                wa:Destroy()
                local vb = Instance.new("BodyVelocity", b)
                vb.P = 4000
                vb.maxForce = Vector3.new(545000, 545000, 545000)
                vb.velocity = RootPart.CFrame.lookVector * 220 + Vector3.new(0, 5, 0)
                game:GetService("Debris"):AddItem(vb, 0.25)
                local vb = Instance.new("BodyAngularVelocity", b)
                vb.maxTorque = Vector3.new(500000, 500000, 500000)
                vb.angularvelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                game:GetService("Debris"):AddItem(vb, 0.25)
                b.CanCollide = true
              end
            end
            wait(0.2)
            borb.Parent = nil
            game:GetService("Debris"):AddItem(b, 5)
            attack = false
          end
        end
      end
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
MagniBuff = function(Part, magni, Dec, DecAm, Dur, others)
  if Player.Neutral == true then
    DecreaseStat(Character, Dec, DecAm / 2, Dur)
  end
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        -- DECOMPILER ERROR at PC67: Unhandled construct in 'MakeBoolean' P1

        if others == nil and mag <= magni and Player.Neutral == false and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
          DecreaseStat(head.Parent, Dec, DecAm, Dur)
        end
      end
    end
    if Player.Neutral == false and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and mag <= magni and head.Parent ~= Character and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
      DecreaseStat(head.Parent, Dec, DecAm, Dur)
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
  local mg = point1.p.magnitude
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
MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicSpike = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "1033714", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
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
MagicCloud = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "1095708", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCircle = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.Material = material
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
  if GuardStance == true and MMouse.Target ~= nil then
    if MMouse.Target.Parent.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent.Parent:findFirstChild("Torso") ~= nil then
      Target = MMouse.Target.Parent.Parent
      GuardStance = false
    end
    if MMouse.Target.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent:findFirstChild("Torso") ~= nil then
      Target = MMouse.Target.Parent
      GuardStance = false
    end
  end
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if Mode == "Defensive" then
    if combo == 0 then
      combo = 1
      dattackone()
    else
      if combo == 1 then
        combo = 2
        dattacktwo()
      else
        if combo == 2 then
          combo = 3
          dattackthree()
        else
          if combo == 3 then
            combo = 0
            dattackfour()
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
  if key == "x" and Fly == true then
    Fly = false
    Target = nil
  end
  if key == string.char(8) and Fly == true then
    Fly = false
    Target = nil
  end
  if key == "x" and GuardStance == true then
    manualguardend = true
    GuardStance = false
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
  if key == "h" and (Player.Name == "drymarshpenny" or Player.Name == "norpdid911" or Player.Name == "Player1") then
    mana.Value = 100
    cooldowns[1] = 100
    cooldowns[2] = 100
    cooldowns[3] = 100
    cooldowns[4] = 100
    cooldowns[5] = 100
  end
  if key == "g" then
    taunt()
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
print("Major loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local staggeranim = false
local stunanim = false
local passivenum = 0
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
    passivenum = passivenum + 1
    if 80 <= passivenum then
      passivenum = 0
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
    if Mode == "Defensive" then
      stunnum2 = 20
    else
      stunnum2 = 60
    end
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
          handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.2), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            handlewld.C0 = clerp(handlewld.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.2)
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.2)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              Neck.C0 = clerp(Neck.C0, necko * euler(0.35, 0, 0), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.45, 0.4 + (donum) / 3, -0.2) * euler(0, 0.3, 0.2), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1.45, 0.4 + (donum) / 3, -0.2) * euler(0, -0.3, -0.2), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.1, -0.15, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.15, 0), 0.2)
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
                Neck.C0 = clerp(Neck.C0, necko * euler(0.25, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 0.1), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -0.1), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.25, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
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
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" then
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
          mananum = mananum + 5
        else
          mananum = 0
          mana.Value = mana.Value + 3
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