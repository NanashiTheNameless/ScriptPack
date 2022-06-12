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
local Cursed = nil
local absorb = false
local siphoned = 0
local lifesteal = false
local lifesteal2 = 1
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local move1 = "(Z)\nSpirit Field"
local move2 = "(X)\nAbsorbing Strike"
local move3 = "(C)\nCurse of the Ankh"
local move4 = "(V)\nCursed Field"
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
local cooldownadd2 = 0.4
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.1
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.08
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 0
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
NewCol = Color3.new(TorsoRed, TorsoGreen, TorsoBlue / 4)
NewCol2 = BrickColor.new("Bright violet").Color
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

if Character:findFirstChild("Ankh Staff", true) ~= nil then
  Character:findFirstChild("Ankh Staff", true).Parent = nil
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
local passive1 = Instance.new("NumberValue", Decrease)
passive1.Name = "DecreaseDef"
passive1.Value = 0
local passive2 = Instance.new("NumberValue", Decrease)
passive2.Name = "DecreaseAtk"
passive2.Value = 0
local cursval1 = Instance.new("NumberValue", nil)
cursval1.Name = "DecreaseDef"
cursval1.Value = 0.1
local cursval2 = Instance.new("NumberValue", nil)
cursval2.Name = "DecreaseAtk"
cursval2.Value = -0.1
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 100
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
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Ankh Staff"
local handle = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Handle", vt())
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
msh1h = mesh("BlockMesh", handle, "", "", vt(0, 0, 0), vt(2, 2, 2))
msh1 = mesh("CylinderMesh", prt1, "", "", vt(0, 0, 0), vt(2, 25, 2))
msh2 = mesh("SpecialMesh", prt2, "Torso", "nil", vt(0, 0, 0), vt(3, 10, 2))
msh3 = mesh("SpecialMesh", prt3, "Sphere", "nil", vt(0, 0, 0), vt(5, 5, 5))
msh4 = mesh("SpecialMesh", prt4, "Wedge", "nil", vt(0, 0, 0), vt(2, 5, 2))
msh5 = mesh("SpecialMesh", prt5, "Wedge", "nil", vt(0, 0, 0), vt(2, 5, 2))
msh6 = mesh("SpecialMesh", prt6, "Wedge", "nil", vt(0, 0, 0), vt(2, 5, 2))
msh7 = mesh("SpecialMesh", prt7, "Wedge", "nil", vt(0, 0, 0), vt(2, 5, 2))
msh8 = mesh("BlockMesh", prt8, "", "", vt(0, 0, 0), vt(13, 1, 2))
msh9 = mesh("SpecialMesh", prt9, "FileMesh", "3270017", vt(0, 0, 0), vt(1, 1.5, 3))
msh10 = mesh("SpecialMesh", prt10, "Head", "nil", vt(0, 0, 0), vt(3, 2, 3))
local handlewld = weld(handle, handle, Torso, euler(0, 0, 0.785) * cf(0, 0, -0.5))
local wld1 = weld(prt1, prt1, handle, euler(0, 0, 0) * cf(0, 1, 0))
local wld2 = weld(prt1, prt2, prt1, euler(0, 0, 0) * cf(0, -3, 0))
local wld3 = weld(prt1, prt3, prt2, euler(0, 0, 0) * cf(0, -1, 0))
local wld4 = weld(prt1, prt4, prt3, euler(0, -1.57, 0) * cf(0.3, 0.8, 0) * euler(0, 0, 1.57))
local wld5 = weld(prt1, prt5, prt3, euler(0, 1.57, 0) * cf(-0.3, 0.8, 0) * euler(0, 0, 1.57))
local wld6 = weld(prt1, prt6, prt3, euler(0, -1.57, 0) * cf(0.3, 0.8, 0) * euler(0, 0, -1.57))
local wld7 = weld(prt1, prt7, prt3, euler(0, 1.57, 0) * cf(-0.3, 0.8, 0) * euler(0, 0, -1.57))
local wld8 = weld(prt1, prt8, prt3, euler(0, 0, 0) * cf(0, 0, 0))
local wld9 = weld(prt1, prt9, prt3, euler(0, 0, 0) * cf(0, -1, 0))
local wld10 = weld(prt1, prt10, prt1, euler(0, 0, 0) * cf(0, 2.5, 0))
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

if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Ankh Staff"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Anubis" then
  Bin.Name = "Ankh Staff"
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
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.3)
    wld1.C0 = clerp(wld1.C0, cf(0, 3.5, 0) * euler(0.3, 0, 0.5), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.5, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  handlewld.Part1 = Torso
  handlewld.C0 = euler(0, 0, 0.785) * cf(0, 0, -0.5)
  wld1.C0 = euler(0, 0, 0) * cf(0, 1, 0)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
end

mdec.Parent = Decrease
equipanim = function()
  equipped = true
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3.5, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  handlewld.Part1 = RightArm
  handlewld.C0 = euler(3.14, 0, 0) * cf(0, 1, 0)
  wld1.C0 = cf(0, 3.5, 0) * euler(0.3, 0, 0.5)
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
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-2, 0, 0), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0.4), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.4, 0, 1), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC213: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC213: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145095", prt2, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 5, 1.5)
  hitboxCF = prt2.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.2 do
    swait()
    hitboxCF = prt2.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 4, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 15)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.4)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-1, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0.3, 0, 0.1) * euler(0, -0.5, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC492: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC492: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitfloor2 = rayCast(prt6.Position, CFrame.new(prt6.Position, prt6.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
  if hitfloor2 ~= nil then
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(RootPart.Position)
    so("199145477", ref, 1, 1.4)
    game:GetService("Debris"):AddItem(ref, 1)
    MagicWave(hitfloor2.BrickColor, cf(ref.Position) * euler(0, math.random(-50, 50), 0), 3, 3, 3, 0.5, 0.5, 0.5, 0.05)
    MagniDamage(ref, 10, 4, 10, math.random(20, 30), "Knockdown2", ref, 0, 1, (math.random(3, 15)), nil, nil, false, nil, nil, nil)
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  for i = 1, 5 do
    swait()
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC634: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC634: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-1, 0, 0), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.2, 0, -1.2) * euler(0, 1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.5, 0, -0.5), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.2, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.2, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145204", prt2, 1, 1.2)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 5, 1.5)
  hitboxCF = prt2.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt2.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 4, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 10)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-1, 0, 0), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.8), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1.4) * euler(0, 1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(-0.5, 0, -1.4), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.8, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.9, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC498: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC498: LeaveBlock: unexpected jumping out IF_STMT

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
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-1, 0, 0), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, 0, -1.2) * euler(0, 2.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.3, 0, -0.5), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * euler(0, 1.57, 0) * euler(0, -1, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.5) * euler(0, -1.57, 0) * euler(0, -1, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145204", prt2, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 5, 1.5)
  hitboxCF = prt2.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt2.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 4, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 10)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
    wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-1, 0, 0), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 1.7) * euler(0, 1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -1.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.2, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.2, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC504: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC504: LeaveBlock: unexpected jumping out IF_STMT

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
  for i = 0, 1, 0.1 do
    swait()
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
    wld1.C0 = clerp(wld1.C0, cf(0, 1, 0) * euler(-1.5, 0, 0) * euler(0, 0, 1.57), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.6) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.2) * euler(0, 0.8, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -0.6), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.2) * euler(0, 1.57, 0) * euler(0, 0.6, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, 0.6, 0.1), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145146", prt2, 1, 1.2)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(2, 5, 1.5)
  hitboxCF = prt2.CFrame
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.1 do
    swait()
    hitboxCF = prt2.CFrame
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 5, 6, 8, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 10)), nil, true)
    handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
    wld1.C0 = clerp(wld1.C0, cf(0, 1, 0) * euler(-1.5, 0, 0) * euler(0, 0, 1.57) * euler(1, 0, 0), 0.35)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(-0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 0.4) * euler(0, 0.2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, -0.2) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC510: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC510: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end

Curse = function()
  attack = true
  Target = nil
  if MMouse.Target ~= nil then
    if MMouse.Target.Parent.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent.Parent:findFirstChild("Torso") ~= nil then
      Target = MMouse.Target.Parent.Parent
    end
    if MMouse.Target.Parent:findFirstChild("Humanoid") ~= nil and MMouse.Target.Parent:findFirstChild("Torso") ~= nil then
      Target = MMouse.Target.Parent
    end
    if game.Players:GetPlayerFromCharacter(Target) ~= nil and game.Players:GetPlayerFromCharacter(Target).TeamColor == Player.TeamColor and Player.Neutral == false then
      Target = nil
    end
  end
  if Target ~= nil and Target:findFirstChild("Humanoid") ~= nil and Target.Humanoid.Health <= 0 then
    Target = nil
  end
  if Target ~= nil then
    so("228343385", LeftArm, 1, 1)
    for i = 0, 1, 0.05 do
      swait()
      MagicBlock(BrickColor.new(NewCol2), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.1, 1)
      MagicBlock(BrickColor.new(NewCol2), LeftArm.CFrame * cf(math.random(-100, 100) / 100, -1 + math.random(-100, 100) / 100, math.random(-100, 100) / 100), 0.5, 0.5, 0.5, 1, 1, 1, 0.2, 1)
      handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.2)
      wld1.C0 = clerp(wld1.C0, cf(0, 1, 0) * euler(-1.5, 0, 0) * euler(0, 0, 1.57), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4), 0.15)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.4), 0.15)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2) * euler(0, -0.1, 0), 0.15)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
      LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.3) * euler(2, 0, 0.2) * euler(0, 1.57, 0), 0.15)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.4, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.4, 0.1), 0.2)
    end
    if Target ~= Cursed then
      so("228343398", Target.Torso, 1, 1)
      for i = 1, 5 do
        MagicBlockC(BrickColor.new(NewCol2), cf(Target.Torso.Position) * cf(0, math.random(-200, 200) / 100, 0), cf(math.random(500, 800) / 100, 0, 0), 6, 6, 6, -0.2, -0.2, -0.2, 0.03, 0.4)
      end
      MagicBlock(BrickColor.new(NewCol2), cf(Target.Torso.Position), 1, 1, 1, 2, 2, 2, 0.03, 1)
      showDamage(Target, "+Damage", "Debuff")
      showDamage(Target, "-Defense", "Debuff")
    end
    Cursed = Target
  end
  attack = false
end

do1 = function()
  if attack == true then
    return 
  end
  if Cursed == nil then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 15 then
    attack = true
    cooldowns[1] = 0
    mana.Value = mana.Value - 15
    so("228343400", prt9, 1, 1)
    for i = 0, 1, 0.05 do
      swait()
      MagicBlock(BrickColor.new(NewCol2), prt9.CFrame, 1, 1, 1, 1, 1, 1, 0.1, 1)
      handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, 1, 0) * euler(-1.57, 0, 0) * euler(0, 0, 0), 0.3)
      wld1.C1 = euler(0, 13 * i, 0)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(-0.2, 0, 0), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, 0.2) * euler(0, 0, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.4), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC293: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC293: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    wld1.C1 = cf(0, 0, 0)
    attack = false
    cursnum2 = 0
    cursnumd = 25
    if Cursed ~= nil and Cursed:findFirstChild("Torso") ~= nil then
      so("228343408", Cursed.Torso, 1, 0.6)
    end
    for i = 1, 200 do
      swait()
      if Cursed == nil then
        break
      end
      cursnum2 = cursnum2 + 1
      if cursnum2 >= 2 then
        cursnum2 = 0
        cursnumd = cursnumd + 1
        if Cursed:findFirstChild("Torso") ~= nil then
          MagicCircle(BrickColor.new(NewCol2), Cursed.Torso.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 0.1, 24, 0.1, 0.1, 2)
        end
      end
      if cursnumd >= 25 then
        cursnumd = 0
        if Cursed:findFirstChild("Torso") ~= nil then
          MagniDebuff(Cursed.Torso, 20, "Defense", 0.05, 50)
          MagniDebuff(Cursed.Torso, 20, "Movement", 0.05, 50)
          MagicCircle(BrickColor.new(NewCol2), Cursed.Torso.CFrame, 1, 1, 1, 20, 20, 20, 0.1)
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
  if cooldownmax <= cooldowns[2] and mana.Value >= 10 then
    attack = true
    lifesteal = true
    if siphoned >= 3 then
      lifesteal2 = 1
    else
      lifesteal2 = 0.5
    end
    cooldowns[2] = 0
    mana.Value = mana.Value - 10
    so("228343420", prt2, 1, 1)
    for i = 0, 1, 0.15 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.35)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-2, 0, 0), 0.35)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0.4), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.4, 0, 1), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.3)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      absorb = true
      hbwld.Parent = nil
      hboxpos.Parent = hitbox
      hitbox.Parent = modelzorz
      hitbox.Size = vt(4, 5, 3)
      hitboxCF = prt2.CFrame
      hitbox.CFrame = hitboxCF
      for i = 0, 1, 0.2 do
        swait()
        hitboxCF = prt2.CFrame
        hitbox.CFrame = hitboxCF
        MagniDamage(hitbox, 8, 4, 10, math.random(5, 10), "Normal", RootPart, 0.5, 1, (math.random(3, 15)), nil, true)
        MagicBlock(BrickColor.new(NewCol2), prt9.CFrame, 1, 1, 1, 2, 2, 2, 0.1, 1)
        handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.4)
        wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(0, 1.57, 0) * euler(-1, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0.3, 0, 0.1) * euler(0, -0.5, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        hitbox.Parent = modelzorz
        hitbox.Size = vt()
        hitboxweld()
        hboxpos.Parent = nil
        absorb = false
        lifesteal = false
        attack = false
      end
    end
  end
end

do3 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] and mana.Value >= 20 then
    attack = true
    cooldowns[3] = 0
    mana.Value = mana.Value - 20
    so("228343425", prt2, 1, 1)
    for i = 0, 1, 0.05 do
      swait()
      MagicBlock(BrickColor.new(NewCol2), prt9.CFrame, 1, 1, 1, 1, 1, 1, 0.1, 1)
      handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.2)
      wld1.C0 = clerp(wld1.C0, cf(0, 1, 0) * euler(-1.5, 0, 0) * euler(0.5, 0, 0), 0.2)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.2) * euler(-0.2, 0, 0), 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 0) * euler(0, 0, 0), 0.2)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.2)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.2)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC282: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC282: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    attack = false
    donum = 0
    donum2 = 0
    for i = 1, 500 do
      swait()
      donum = donum + 1
      if donum >= 5 then
        donum = 0
        donum2 = donum2 + 1
        MagicCircle(BrickColor.new(NewCol2), cf(0, 0, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1, 3, prt9)
      end
      if donum2 >= 10 then
        donum2 = 0
        MagicCircle(BrickColor.new(NewCol2), prt9.CFrame, 20, 20, 20, 8, 8, 8, 0.05)
        MagniDebuff(prt9, 20, "Defense", 0.05, 100)
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
  if cooldownmax <= cooldowns[4] and mana.Value >= 50 then
    attack = true
    lifesteal = true
    if siphoned >= 3 then
      lifesteal2 = 0.5
    else
      lifesteal2 = 0.3
    end
    cooldowns[4] = 0
    mana.Value = mana.Value - 50
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(-1.57, 0, 0) * euler(0, 0, 0.77), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(-0.4, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(2, 0, -0.7) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(2, 0, 0.7), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    MagniDamage(Torso, 30, 5, 8, 0, "Normal", Torso, 0, 1, (math.random(3, 5)), nil, nil, true, "Movement", 10, 50)
    so("228343444", prt2, 1, 1)
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    for i = 0, 1, 0.1 do
      swait()
      handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.3)
      wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(-1.57, 0, 0) * euler(0, 0, 0.77), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -0.7) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, 0, 0.7), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.2) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 1), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC516: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC516: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    game:GetService("Debris"):AddItem(sou, 20)
    ref = part(3, Character, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(0, 0, 0)
    game:GetService("Debris"):AddItem(ref, 10)
    local sou = Instance.new("Sound", ref)
    sou.Volume = 1
    sou.Pitch = 1
    sou.SoundId = "http://www.roblox.com/asset/?id=228343433"
    sou.Looped = true
    sou:play()
    hitfloor2 = rayCast(prt1.Position, CFrame.new(prt1.Position, prt1.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
    if hitfloor2 ~= nil then
      ref.CFrame = cf(RootPart.Position)
    end
    for i = 1, 200 do
      swait()
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          hitfloor2 = rayCast(prt1.Position, CFrame.new(prt1.Position, prt1.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
          if hitfloor2 ~= nil then
            ref.CFrame = cf(RootPart.Position)
            MagicCircle(BrickColor.new(NewCol2), cf(ref.Position), 200, 1, 200, 5, 0.1, 5, 0.1, nil, nil, Character)
            if i % 3 == 0 then
              MagicBlockC(BrickColor.new("White"), cf(ref.Position) * cf(math.random(-50, 50) / 100, math.random(0, 500) / 100, math.random(-50, 50) / 100), cf(math.random(100, 2000) / 100, 0, 0), 3, 3, 3, -0.1, -0.1, -0.1, 0.1, math.random(100, 500) / 1000)
            end
            if i % 10 == 0 then
              MagicRing(BrickColor.new(NewCol2), cf(ref.Position) * euler(1.57, 0, 0), 40, 40, 1, 0.5, 0.5, 5, 0.1, Character)
            end
            if i % 30 == 0 then
              MagniDamage(Torso, 22, 5, 8, 0, "Normal", Torso, 0, 1, (math.random(3, 5)), nil, nil, true, "Movement", 10, 70)
            end
            if i <= 20 then
              MagicCircle(BrickColor.new("White"), cf(ref.Position), 10, 1, 10, 10, 2, 10, 0.1, nil, nil, Character)
            end
          end
          -- DECOMPILER ERROR at PC798: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC798: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    sou.Parent = nil
    ref.Parent = nil
    dec.Parent = nil
    lifesteal = false
    attack = false
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

       if mag <= magni and c.Name ~= Player.Name then
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

MagicBlockC = function(brickcolor, cframe, cf2, x1, y1, z1, x3, y3, z3, delay, move)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, cframe, cf2, euler(0, math.random(-50, 50), 0), math.random(1, 2), move})
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, prt2, par)
  local prt = (part(3, workspace, 0, 0, brickcolor, "Effect", vt()))
  local wld = nil
  prt.Anchored = true
  prt.CFrame = cframe
  if par ~= nil then
    prt.Parent = par
  end
  if Type ~= 3 then
    prt.Anchored = true
  else
    prt.Anchored = false
    wld = weld(prt, prt, prt2, cframe)
  end
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type ~= 3 then
    table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
  else
    table.insert(Effects, {prt, "Block4", delay, x3, y3, z3, msh, wld, cframe})
  end
end

MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
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

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, par)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  if par ~= nil then
    prt.Parent = par
  end
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
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
        if Stats.Stun.Value < Stats.StunThreshold.Value then
          Stats.Stun.Value = Stats.Stun.Value + incstun
        end
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
    if h.Health <= 0 and CurrentHealth ~= 0 and h.Parent ~= Cursed then
      if h.Parent:findFirstChild("Torso") ~= nil then
        mana.Value = mana.Value + 20
        MagicBlock(BrickColor.new(NewCol2), cf(h.Parent.Torso.Position), 25, 25, 25, -0.5, -0.5, -0.5, 0.03, 1)
        MagicBlock(BrickColor.new(NewCol2), cf(Torso.Position), 10, 10, 10, 0.5, 0.5, 0.5, 0.03, 1)
      end
      if h.Parent:findFirstChild("Stats") ~= nil then
        if h.Parent.Stats:findFirstChild("Damage") ~= nil then
          if siphoned == 0 then
            passive2.Value = passive2.Value - h.Parent.Stats.Damage.Value * 0.2
          else
            if siphoned == 1 then
              passive2.Value = passive2.Value - h.Parent.Stats.Damage.Value * 0.15
            else
              if siphoned >= 2 then
                passive2.Value = passive2.Value - h.Parent.Stats.Damage.Value * 0.1
              end
            end
          end
        end
        if h.Parent.Stats:findFirstChild("Defense") ~= nil then
          if siphoned == 0 then
            passive1.Value = passive1.Value - h.Parent.Stats.Defense.Value * 0.2
          else
            if siphoned == 1 then
              passive1.Value = passive1.Value - h.Parent.Stats.Defense.Value * 0.15
            else
              if siphoned >= 2 then
                passive1.Value = passive1.Value - h.Parent.Stats.Defense.Value * 0.1
              end
            end
          end
        end
        siphoned = siphoned + 1
      end
    end
 end), h, Damage)
        showDamage(hit.Parent, Damage, "Damage")
      if lifesteal == true then
        coroutine.resume(coroutine.create(function(Hum, Dam)
    damageFunc:InvokeServer(Hum, Dam)
  end
), Humanoid, math.ceil(-(Damage * lifesteal2)))
      end
       if absorb == true then
        so("228343412", hit, 1, 1)
        if hit.Parent.Stats:findFirstChild("Damage") ~= nil then
          DecreaseStat(hit.Parent, "Damage", hit.Parent.Stats.Damage.Value * 0.05, 300)
         DecreaseStat(Character, "Damage", hit.Parent.Stats.Damage.Value * -0.05, 300)
        end
        if hit.Parent.Stats:findFirstChild("Movement") ~= nil then
         DecreaseStat(hit.Parent, "Movement", hit.Parent.Stats.Damage.Value * 0.05, 300)
         DecreaseStat(Character, "Movement", hit.Parent.Stats.Damage.Value * -0.05, 300)
        end
      end
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
  local head = c:findFirstChild("HumanoidRootPart")
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
    attacktwo()
  else
    if combo == 1 then
      combo = 2
      attackone()
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
    Curse()
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
end

ds = function(mouse)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Anubis loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local cursnum = 0
local staggeranim = false
local stunanim = false
local walk = 0
local walkforw = true
local disabledhealth = false
while 1 do
  swait()
  if 100 < Humanoid.Health then
    Humanoid.Health = 100
  end
  if 3 <= siphoned and (Character:findFirstChild("Health")) ~= nil then
    print("NO MOAR HEALTH")
    Character.Health.Parent = nil
    disabledhealth = true
  end
  if disabledhealth == true and Humanoid.MaxHealth <= Humanoid.Health then
    Humanoid.Health = Humanoid.MaxHealth
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
    if hbwld.Parent == nil then
      hitbox2.Name = "Hitbox"
    else
      hitbox2.Name = "Hitbox2"
    end
    hitbox2.Parent = hitbox.Parent
    hitbox2.Size = hitbox.Size
    hitbox2.CFrame = hitboxCF
    if Cursed ~= nil then
      if (Cursed:findFirstChild("Stats")) ~= nil and (Cursed.Stats:findFirstChild("Decrease")) ~= nil then
        cursval1.Parent = Cursed.Stats.Decrease
        cursval2.Parent = Cursed.Stats.Decrease
      end
      if 8 <= cursnum then
        cursnum = 0
        if (Cursed:findFirstChild("Torso")) ~= nil then
          MagicBlockC(BrickColor.new(NewCol2), cf(Cursed.Torso.Position) * cf(0, math.random(-200, 200) / 100, 0), cf(3, 0, 0), 3, 3, 3, -0.1, -0.1, -0.1, 0.05, 0.2)
        end
      end
      cursnum = cursnum + 1
      if (Cursed:findFirstChild("Humanoid")) ~= nil and Cursed.Humanoid.Health <= 0 then
        if (Cursed:findFirstChild("Torso")) ~= nil then
          MagicBlock(BrickColor.new(NewCol2), cf(Cursed.Torso.Position), 25, 25, 25, -0.5, -0.5, -0.5, 0.03, 1)
        end
        MagicBlock(BrickColor.new(NewCol2), cf(Torso.Position), 10, 10, 10, 0.5, 0.5, 0.5, 0.03, 1)
        if (Cursed:findFirstChild("Stats")) ~= nil then
          if (Cursed.Stats:findFirstChild("Damage")) ~= nil then
            if siphoned == 0 then
              passive2.Value = passive2.Value - Cursed.Stats.Damage.Value * 0.2
            else
              if siphoned == 1 then
                passive2.Value = passive2.Value - Cursed.Stats.Damage.Value * 0.15
              else
                if 2 <= siphoned then
                  passive2.Value = passive2.Value - Cursed.Stats.Damage.Value * 0.1
                end
              end
            end
          end
          if (Cursed.Stats:findFirstChild("Defense")) ~= nil then
            if siphoned == 0 then
              passive1.Value = passive1.Value - Cursed.Stats.Defense.Value * 0.2
            else
              if siphoned == 1 then
                passive1.Value = passive1.Value - Cursed.Stats.Defense.Value * 0.15
              else
                if 2 <= siphoned then
                  passive1.Value = passive1.Value - Cursed.Stats.Defense.Value * 0.1
                end
              end
            end
          end
          siphoned = siphoned + 1
        end
        Cursed = nil
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
          handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 1.57) * cf(0, 1, 0), 0.2)
          wld1.C0 = clerp(wld1.C0, cf(0, 2, 0) * euler(-1.57, 0, 0) * euler(0, 0, 0), 0.2)
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 0.2), 0.2)
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
            handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 1.57) * cf(0, 1, 0), 0.2)
            wld1.C0 = clerp(wld1.C0, cf(0, 2, 0) * euler(-1.57, 0, 0) * euler(0, 0, 0), 0.2)
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
              handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.2)
              wld1.C0 = clerp(wld1.C0, cf(0, 1, 0) * euler(-1.5, 0, 0) * euler(0, 0, -0.5), 0.2)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2) * euler(0.2 - (donum) / 3, 0, 0), 0.15)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.2), 0.15)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0.2) * euler(0, -0.1, 0), 0.15)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2 - (donum) / 3, 0, -0.2 - (donum) / 3), 0.15)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.2, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.1), 0.2)
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
                handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 1.57) * cf(0, 1, 0), 0.2)
                wld1.C0 = clerp(wld1.C0, cf(0, 2, 0) * euler(-1.57, 0, 0) * euler(0, 0, 0), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4), 0.2)
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
                  handlewld.C0 = clerp(handlewld.C0, euler(3.14, 0, 0) * cf(0, 1, 0), 0.4)
                  wld1.C0 = clerp(wld1.C0, cf(0, 0, 0) * euler(-1.57, 0, 0) * euler(0, 0, 0.77), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.2, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.67, 0, -0.7) * euler(0, 0, 0), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2, 0, 0.8), 0.4)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  RH.C0 = clerp(RH.C0, cf(1, 0, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, 0.1), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, -0.8) * euler(0, -1.57, 0) * euler(0, 0, 1), 0.4)
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
                    if Thing[2] == "Block3" then
                      Thing[1].CFrame = Thing[8] * Thing[10] * Thing[9]
                      if Thing[11] == 1 then
                        Thing[10] = Thing[10] * euler(0, Thing[12], 0)
                      else
                        Thing[10] = Thing[10] * euler(0, -Thing[12], 0)
                      end
                      Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                      Mesh = Thing[7]
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Block4" then
                        Thing[8].C0 = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * Thing[9]
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
      -- DECOMPILER ERROR at PC5122: LeaveBlock: unexpected jumping out DO_STMT

      -- DECOMPILER ERROR at PC5122: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end

