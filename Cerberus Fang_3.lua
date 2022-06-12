wait(0.5)
local Player = game.Players.LocalPlayer
repeat
  wait()
until Player ~= nil
local Character = Player.Character
repeat
  wait()
until Character ~= nil
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
Humanoid.JumpPower = 90
LeftArm = Character:WaitForChild("Left Arm")
LeftLeg = Character:WaitForChild("Left Leg")
RightArm = Character:WaitForChild("Right Arm")
RightLeg = Character:WaitForChild("Left Arm")
LS = Torso:WaitForChild("Left Shoulder")
LH = Torso:WaitForChild("Left Hip")
RS = Torso:WaitForChild("Right Shoulder")
RH = Torso:WaitForChild("Right Hip")
Neck = Torso.Neck
it = Instance.new
vt = Vector3.new
cf = CFrame.new
local runServ = game:GetService("RunService").RenderStepped
local TextTable = {}
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
local Anim = "Idle"
local Effects = {}
equipped = false
local idle = 0
local hold = false
local con1, con2 = nil, nil
local Mode = "Binary"
local idleanim = 0
local idleanim2 = false
local impulse = 1
local hitfloor, posfloor = nil, nil
local damcount = 0
local guard = false
local damagebonus = 1
player = nil
RSH = nil
LSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
Asset = "http://www.roblox.com/asset/?id="
Health = 200
Humanoid.MaxHealth = math.huge
Humanoid.Health = math.huge
coroutine.resume(coroutine.create(function()
  for i = 1, 20 do
    Humanoid.MaxHealth = math.huge
    Humanoid.Health = math.huge
  end
  Humanoid.MaxHealth = 200
  wait()
  Humanoid.Health = 200
  Humanoid:TakeDamage(1)
  Humanoid.Health = Health
end
))
Humanoid.Health = Health
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end

if Character:findFirstChild("Binary Sword", true) ~= nil then
  Character:findFirstChild("Binary Sword", true).Parent = nil
end
if Character:findFirstChild("Demon Blade", true) ~= nil then
  Character:findFirstChild("Demon Blade", true).Parent = nil
end
if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
  Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
end
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
  if fp.BrickColor == BrickColor.new("Dark indigo") then
    fp.Material = "Neon"
  else
    if fp.BrickColor == BrickColor.new("Fossil") then
      fp.BrickColor = BrickColor.new("Dark indigo")
      fp.Material = "Granite"
    else
      fp.Material = "SmoothPlastic"
    end
  end
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

weld = function(parent, part0, part1, c0)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end

local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local Color1 = BrickColor.new("Really black")
local Color2 = BrickColor.new("Dark stone grey")
local Colorr3 = BrickColor.new("Dark indigo")
local Color4 = BrickColor.new("Fossil")
local model1 = Instance.new("Model")
model1.Parent = Character
model1.Name = "Binary Sword"
BSword = {}
BSwordWelds = {}
local model2 = Instance.new("Model")
model2.Parent = nil
model2.Name = "Demon Blade"
DBlade = {}
DBladeWelds = {}
prt1 = part(3, model1, 0, 1, Color1, "Part1", vt())
prt2 = part(3, model1, 0, 0, Color2, "Part2", vt())
prt3 = part(3, model1, 0, 0, Color2, "Part3", vt())
prt4 = part(3, model1, 0, 0, Colorr3, "Part4", vt())
prt5 = part(3, model1, 0, 0, Color1, "Part5", vt())
prt6 = part(3, model1, 0, 0, Color4, "Part6", vt())
prt7 = part(3, model1, 0, 0, Color4, "Part7", vt())
prt8 = part(3, model1, 0, 0, Color4, "Part8", vt())
prt9 = part(3, model1, 0, 0, Color4, "Part9", vt())
prt10 = part(3, model1, 0, 0, Colorr3, "Part10", vt())
prt11 = part(3, model1, 0, 0, Colorr3, "Part11", vt())
prt12 = part(3, model1, 0, 0, Colorr3, "Part12", vt())
prtd1 = part(3, model2, 0, 0.4, BrickColor.new("Dark indigo"), "DPart1", vt())
prtd2 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart2", vt())
prtd3 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart3", vt())
prtd4 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart4", vt())
prtd5 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart5", vt())
prtd6 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart6", vt())
prtd7 = part(3, model2, 0.8, 0, BrickColor.new("Dark indigo"), "DPart7", vt())
prtd8 = part(3, model2, 0.8, 0, BrickColor.new("Dark indigo"), "DPart8", vt())
prtd9 = part(3, model2, 0.5, 0.2, BrickColor.new("Fossil"), "DPart9", vt())
prtd10 = part(3, model2, 0.5, 0.2, BrickColor.new("Fossil"), "DPart10", vt())
prtd11 = part(3, model2, 0.5, 0, BrickColor.new("Dark indigo"), "DPart11", vt())
prtd12 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart12", vt())
for _,c in pairs(model2:children()) do
  if c.className == "Part" then
    table.insert(DBlade, c)
  end
end
msh1 = mesh("BlockMesh", prt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(2, 10, 2))
msh3 = mesh("SpecialMesh", prt3, "Head", "", vt(0, 0, 0), vt(2.5, 2, 2.5))
msh4 = mesh("SpecialMesh", prt4, "Sphere", "", vt(0, 0, 0), vt(3, 3, 3))
msh5 = mesh("SpecialMesh", prt5, "FileMesh", "http://www.roblox.com/asset/?id=9756362", vt(0, 0, 0), vt(0.5, 0.5, 1))
msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(0.5, 20, 1))
msh7 = mesh("BlockMesh", prt7, "", "", vt(0, 0, 0), vt(0.5, 20, 1))
msh8 = mesh("SpecialMesh", prt8, "Wedge", "", vt(0, 0, 0), vt(0.5, 5, 1))
msh9 = mesh("SpecialMesh", prt9, "Wedge", "", vt(0, 0, 0), vt(0.5, 5, 1))
msh10 = mesh("BlockMesh", prt10, "", "", vt(0, 0, 0), vt(0.6, 20, 0.2))
msh11 = mesh("SpecialMesh", prt11, "Wedge", "", vt(0, 0, 0), vt(0.6, 5, 0.1))
msh12 = mesh("SpecialMesh", prt12, "Wedge", "", vt(0, 0, 0), vt(0.6, 5, 0.1))
mshd1 = mesh("BlockMesh", prtd1, "", "", vt(0, 0, 0), vt(5.01, 3, 5.01))
mshd2 = mesh("BlockMesh", prtd2, "", "", vt(0, 0, 0), vt(5.1, 3, 5.1))
mshd3 = mesh("SpecialMesh", prtd3, "Wedge", "", vt(0, 0, 0), vt(5.05, 4, 3))
mshd4 = mesh("SpecialMesh", prtd4, "Wedge", "", vt(0, 0, 0), vt(5.05, 4, 3))
mshd5 = mesh("SpecialMesh", prtd5, "Wedge", "", vt(0, 0, 0), vt(5.5, 6, 6))
mshd6 = mesh("SpecialMesh", prtd6, "Wedge", "", vt(0, 0, 0), vt(5.5, 6, 6))
mshd7 = mesh("BlockMesh", prtd7, "", "", vt(0, 0, 0), vt(3, 20, 1))
mshd8 = mesh("SpecialMesh", prtd8, "Wedge", "", vt(0, 0, 0), vt(1, 3, 5))
mshd9 = mesh("BlockMesh", prtd9, "", "", vt(0, 0, 0), vt(4.5, 20, 0.1))
mshd10 = mesh("SpecialMesh", prtd10, "Wedge", "", vt(0, 0, 0), vt(0.1, 4.5, 8))
mshd11 = mesh("CylinderMesh", prtd11, "", "", vt(0, 0, 0), vt(4, 5.8, 4))
mshd12 = mesh("CylinderMesh", prtd12, "", "", vt(0, 0, 0), vt(3, 5.9, 3))
wld1 = weld(prt1, prt1, Torso, euler(3.7, 1.57, 0) * cf(-1.5, -2.3, -0.5))
wld2 = weld(prt2, prt2, prt1, euler(0, 0, 0) * cf(0, 0, 0))
wld3 = weld(prt3, prt3, prt2, euler(0, 0, 0) * cf(0, 1, 0))
wld4 = weld(prt4, prt4, prt2, euler(0, 0, 0) * cf(0, -1, 0))
wld5 = weld(prt5, prt5, prt4, euler(0, 0, 0) * cf(0, -0.2, 0))
wld6 = weld(prt6, prt6, prt5, euler(0, 0, 0) * cf(0, -2, 0.1))
wld7 = weld(prt7, prt7, prt5, euler(0, 0, 0) * cf(0, -2, -0.1))
wld8 = weld(prt8, prt8, prt6, euler(0, 0, 0) * cf(0, -2.5, 0))
wld9 = weld(prt9, prt9, prt7, euler(0, 3.14, 0) * cf(0, -2.5, 0))
wld10 = weld(prt10, prt10, prt5, euler(0, 0, 0) * cf(0, -2, 0))
wld11 = weld(prt11, prt11, prt10, euler(0, 0, 0) * cf(0, -2.5, 0.01))
wld12 = weld(prt12, prt12, prt10, euler(0, 3.14, 0) * cf(0, -2.5, -0.01))
wldd1 = weld(prtd1, prtd1, RightArm, euler(0, 0, 0) * cf(0, 0.21, 0))
wldd2 = weld(prtd1, prtd2, prtd1, euler(0, 0, 0) * cf(0, 0.5, 0))
wldd3 = weld(prtd1, prtd3, prtd2, euler(0, 1.57, 0) * cf(0.21, -0.6, 0))
wldd4 = weld(prtd1, prtd4, prtd2, euler(0, -1.57, 0) * cf(-0.21, -0.6, 0))
wldd5 = weld(prtd1, prtd5, prtd2, euler(0, -1.57, 0) * cf(0.1, -0.1, 0))
wldd6 = weld(prtd1, prtd6, prtd5, euler(0, 0, 3.14) * cf(0, 1.2, 0))
wldd7 = weld(prtd1, prtd7, prtd2, euler(0, 0, 0) * cf(0, 2.5, 0))
wldd8 = weld(prtd1, prtd8, prtd7, euler(1.57, 1.57, 0) * cf(0, 2.5, 0))
wldd9 = weld(prtd1, prtd9, prtd7, euler(0, 0, 0) * cf(0, 0, 0))
wldd10 = weld(prtd1, prtd10, prtd8, euler(0, 0, 0) * cf(0, 0, 0.3))
wldd11 = weld(prtd1, prtd11, prtd1, euler(1.57, 0, 0) * cf(0, 1, 0))
wldd12 = weld(prtd1, prtd12, prtd11, euler(0, 0, 0) * cf(0, 0, 0))
for _,c in pairs(prtd1:children()) do
  if c.className == "Weld" then
    table.insert(DBladeWelds, c)
    print(c)
  end
end
for i = -0.9, 0.9, 0.2 do
  prt13 = part(3, model1, 0, 0, Color1, "Part13", vt())
  msh13 = mesh("CylinderMesh", prt13, "", "", vt(0, 0, 0), vt(2.2, 1, 2.2))
  wld13 = weld(prt13, prt13, prt1, euler(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100) * cf(0, i, 0))
end
Make1 = function(Ceef)
  prtnr = part(3, model1, 0, 1, Color1, "1a", vt())
  mshnr = mesh("BlockMesh", prtnr, "", "", vt(0, 0, 0), vt(0.7, 0.7, 0.7))
  wldnr = weld(prtnr, prtnr, prt10, euler(0, 0, 0) * cf(0, Ceef, 0))
  prtn1 = part(3, model1, 0, 0, Colorr3, "1a", vt())
  mshn1 = mesh("BlockMesh", prtn1, "", "", vt(0, 0, 0), vt(0.7, 0.2, 1.5))
  wldn1 = weld(prtn1, prtn1, prtnr, euler(0, 0, 0) * cf(0, 0, 0))
  prtn2 = part(3, model1, 0, 0, Colorr3, "1b", vt())
  mshn2 = mesh("BlockMesh", prtn2, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn2 = weld(prtn2, prtn2, prtn1, euler(0.5, 0, 0) * cf(0, 0.03, -0.1))
  prtn3 = part(3, model1, 0, 0, Colorr3, "1c", vt())
  mshn3 = mesh("BlockMesh", prtn3, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn3 = weld(prtn3, prtn3, prtn1, euler(1.57, 0, 0) * cf(0, 0, 0.15))
end

Make0 = function(Ceef)
  prtnr = part(3, model1, 0, 1, Color1, "1a", vt())
  mshnr = mesh("BlockMesh", prtnr, "", "", vt(0, 0, 0), vt(0.7, 0.7, 0.7))
  wldnr = weld(prtnr, prtnr, prt10, euler(0, 0, 0) * cf(0, Ceef, 0))
  prtn1 = part(3, model1, 0, 0, Colorr3, "0a", vt())
  mshn1 = mesh("BlockMesh", prtn1, "", "", vt(0, 0, 0), vt(0.7, 0.2, 1.5))
  wldn1 = weld(prtn1, prtn1, prtnr, euler(0, 0, 0) * cf(0, -0.05, 0))
  prtn2 = part(3, model1, 0, 0, Colorr3, "0b", vt())
  mshn2 = mesh("BlockMesh", prtn2, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn2 = weld(prtn2, prtn2, prtn1, euler(1.57, 0, 0) * cf(0, 0.05, 0.15))
  prtn3 = part(3, model1, 0, 0, Colorr3, "0c", vt())
  mshn3 = mesh("BlockMesh", prtn3, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn3 = weld(prtn3, prtn3, prtn1, euler(1.57, 0, 0) * cf(0, 0.05, -0.15))
  prtn4 = part(3, model1, 0, 0, Colorr3, "0d", vt())
  mshn4 = mesh("BlockMesh", prtn4, "", "", vt(0, 0, 0), vt(0.7, 0.2, 1.5))
  wldn4 = weld(prtn4, prtn4, prtn1, euler(0, 0, 0) * cf(0, 0.1, 0))
end

Make1(1.6)
Make0(1.4)
Make0(1.2)
Make1(1)
Make1(0.8)
Make1(0.6)
Make1(0.4)
Make0(0.2)
Make0(0)
local hitbox1 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
local hitbox2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
local Tool = Instance.new("HopperBin")
Tool.Parent = Backpack
Tool.Name = "Cerberus\' Fang"
local Bin = Tool
script.Parent = Tool
local bodvel = Instance.new("BodyVelocity")
bodvel.Name = "FixerVel"
local bg = Instance.new("BodyGyro")
bg.Name = "FixerGyro"
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Parent = par
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:Play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
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
  attack = true
  if Mode == "Binary" then
    so("rbxasset://sounds\\unsheath.wav", prt1, 1, 0.8)
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.5) * cf(0, 1, 0), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, -0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3.4, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    end
    wld1.Part1 = Torso
    wld1.C0 = euler(3.7, 1.57, 0) * cf(-1.5, -2.3, -0.5)
    for i = 0, 1, 0.2 do
      swait()
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(0.5, 0, 0), 0.3)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
    end
  else
    do
      for i = 0, 1, 0.1 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, -0.4), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.8), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.5, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(-0.2, 1.57, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, 0) * euler(0.5, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
      end
      so("http://roblox.com/asset/?id=161006163", RightArm, 1, 0.4)
      so("http://roblox.com/asset/?id=160867463", RightArm, 1, 1.2)
      for i = 0, 1, 0.015 do
        swait()
        for i = 1, 3 do
          if math.random(1, 4) == 1 then
            MagicBlock(BrickColor.new("Really black"), RightArm.CFrame * cf(math.random(-100, 100) / 100, 0 - math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
          else
            MagicBlock(BrickColor.new("Dark indigo"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
          end
        end
      end
      model2.Parent = nil
      for i = 0, 1, 0.1 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
      end
      do
        Torso.Neck.C0 = necko
        Torso.Neck.C1 = necko2
        RootJoint.C0 = RootCF
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
        LW.C0 = cf(-1.5, 0.5, 0) * euler(0, 0, 0)
        LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
        RH.C0 = RHC0
        RH.C1 = RHC1
        LH.C0 = LHC0
        LH.C1 = LHC1
        Mode = "Binary"
        attack = false
      end
    end
  end
end

equipanim = function()
  equipped = true
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3, 0, 0), 0.4)
  end
  for i = 0, 1, 0.1 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.5, 0, -0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3.4, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
  end
  so("rbxasset://sounds\\unsheath.wav", prt1, 1, 0.6)
  wld1.Part1 = RightArm
  wld1.C0 = euler(0.2, 0, -0.5) * cf(0, 1, 0)
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(0.5, -0.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, -0.5, -0.7), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1, -0.5, 0.5), 0.3)
  end
  wld1.C0 = euler(1.57, 0, 0) * cf(0, 1, -0.3)
  Torso.Neck.C0 = necko * euler(0, 0, 0.5)
  RootJoint.C0 = RootCF * euler(0, 0, -0.5)
  RW.C0 = cf(1, 0.5, -0.5) * euler(1, -0.5, -0.7)
  RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
  LW.C0 = cf(-1, 0.5, -0.5) * euler(1, -0.5, 0.5)
  LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
  attack = false
end

Stomp = function()
  Humanoid.WalkSpeed = 0
  Torso.Velocity = RootPart.CFrame.lookVector * 0
  so("http://roblox.com/asset/?id=157878578", Torso, 1, 0.8)
  so("http://roblox.com/asset/?id=2760979", Torso, 1, 0.4)
  MagicWave(BrickColor.new("Dark indigo"), cf(Torso.Position) * cf(0, -1, 0), 1, 1, 1, 1.5, 1, 1.5, 0.05)
  Dam = math.random(5, 10)
  Humanoid.Health = Humanoid.Health - Dam
  showDamage(Torso, Dam, 0.5, BrickColor:Red())
  MagniDamage(Torso, 20, 50, 99, math.random(10, 15), "Knockdown")
  swait(10)
  Humanoid.WalkSpeed = 16
end

attackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.2, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, 1), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2, -0.5, -0.2), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(2.5, -0.5, 0.8), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.3)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 50, math.random(1, 5), "Normal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.7)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.25 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(1.8, 0, 0) * cf(0, 1, -0.3), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -0.3), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.3), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, -0.3, -0.3), 0.3)
          LW.C0 = clerp(LW.C0, cf(-0.8, 0.2, -0.5) * euler(0.5, -0.5, 1), 0.3)
        end
      end
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * cf(0, 1, -0.3), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -0.9), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.9), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, -0.8, -0.3), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.1, -0.5, 0.7), 0.3)
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -1.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 1.8, 1.5), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -0.5, 0.8), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.3)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 40, math.random(1, 5), "Normal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.8)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(2.2, 0, 0) * cf(0, 0.8, -0.3), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, 1), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 1.2, 0) * euler(-1.5, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, -0.2, -1.4), 0.3)
        end
      end
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, -0.785) * cf(0, 0.8, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 1, 0) * euler(2.8, 0, -0.785), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 1, 0) * euler(2.8, 0, 0.785), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.3)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 40, math.random(1, 5), "Normal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.9)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.25 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(1.7, 0, 0) * cf(0, 1, 0), 0.4)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, -0.6), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 0.2), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.2), 0.4)
          -- DECOMPILER ERROR at PC364: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC364: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC364: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for i = 0, 1, 0.2 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * cf(0, 0.7, -0.3), 0.4)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.4, 0, -0.8), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, -0.4, 0.4), 0.4)
          -- DECOMPILER ERROR at PC558: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC558: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC558: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

SpinSlash = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.3, 0, 0.8), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, -0.8), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.2, -1.2, 0) * euler(0, 0, 1), 0.4)
    LW.C0 = clerp(LW.C0, cf(0.1, 0.5, -0.8) * euler(1.8, -0.5, 1), 0.4)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Normal", RootPart, 0.001, 1)
  end
)
  blcf = nil
  scfr = nil
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.6)
  repeat
    hitbox1.Parent = model1
    hitbox1.Size = vt(1, 5, 1)
    hitbox1.Transparency = 1
    hitbox1.CFrame = prt10.CFrame
    for i = 0, 1, 0.15 do
      swait()
      local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            --[[if not scfr then
              scfr = blcf
            end--]]
            hitbox1.CFrame = prt10.CFrame
            wld1.C0 = clerp(wld1.C0, euler(1.2, 0, 0) * cf(0, 1, -0.3), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.3, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 2.3), 0.25)
            RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(-0.5, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(0.5, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, RHC0, 0.3)
            LH.C0 = clerp(LH.C0, LHC0, 0.3)
            -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    for i = 0, 1, 0.05 do
      swait()
      if i >= 0.45 and i <= 0.5 then
        so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.7)
      end
      local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            --[[if not scfr then
              scfr = blcf
            end--]]
            hitbox1.CFrame = prt10.CFrame
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 2.3 + 6 * i), 1)
            -- DECOMPILER ERROR at PC557: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC557: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC557: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  until hold == false
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

BinarySwing = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.8), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0, 0, -0.8), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, -2, 0) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.2, -0.1, -0.5) * euler(1, -1.8, 0) * euler(0.9, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * cf(0.2, 1, 0.1) * euler(0, -0.5, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * cf(-0.2, 1, 0.1) * euler(0, 0.5, 0.2), 0.3)
  end
  Humanoid.Jump = true
  bodvol = Instance.new("BodyVelocity")
  bodvol.Parent = RootPart
  bodvol.velocity = vt(0, 1, 0) * 600
  bodvol.P = 7000
  bodvol.maxForce = Vector3.new(8000, 8000, 8000)
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 40, 80, math.random(10, 20), "Dragger", RootPart, 0.001, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.8)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(3, -2.4, 0) * euler(0.1, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-0.2, 0.8, -0.5) * euler(3.1, -1.8, 0) * euler(0.9, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.8), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 1.3), 0.3)
          RH.C0 = clerp(RH.C0, RHC0, 0.3)
          LH.C0 = clerp(LH.C0, LHC0, 0.3)
          -- DECOMPILER ERROR at PC438: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC438: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC438: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  bodvol.Parent = nil
  attack = false
end

BinaryImpulse = function()
  attack = true
  if impulse == 1 then
    impulse = 2
    Humanoid.Jump = true
    for i = 0, 1, 0.2 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0.5, 0), 0.45)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.7) * euler(1.5, -1.5, 0) * euler(0.7, 0, 0), 0.45)
      RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.45)
      LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.45)
    end
    blcf = nil
    scfr = nil
    hitbox1.Parent = model1
    hitbox1.Size = vt(1, 5, 1)
    hitbox1.Transparency = 1
    hitbox1.CFrame = prt10.CFrame
    con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 30, math.random(10, 20), "Dragger", RootPart, 0.01, 1)
  end
)
    for i = 1, 3 do
      so("http://roblox.com/asset/?id=161006212", prt10, 1, 1)
      for i = 0, 1, 0.1 do
        swait()
        local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
        if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
          local h = 5
          local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
          if a then
            game.Debris:AddItem(a, 1)
          end
          if b then
            game.Debris:AddItem(b, 1)
          end
          local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
          if a then
            game.Debris:AddItem(a, 1)
          end
          if b then
            game.Debris:AddItem(b, 1)
          end
          scfr = blcf
        else
          do
            do
              --[[if not scfr then
                scfr = blcf
              end--]]
              hitbox1.CFrame = prt10.CFrame
              RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(-0.5, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.3)
              RootJoint.C0 = RootCF * euler(0, 0.5, 6.6 * i)
              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
    con1:disconnect()
    hitbox1.Parent = nil
  else
    if impulse == 2 then
      impulse = 3
      Humanoid.Jump = true
      for i = 0, 1, 0.2 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.45)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.45)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, -0.5, 0), 0.45)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.45)
        LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.7) * euler(1.5, -1.5, 0) * euler(0.7, 0, 0), 0.45)
        RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.45)
        LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.45)
      end
      blcf = nil
      scfr = nil
      hitbox1.Parent = model1
      hitbox1.Size = vt(1, 5, 1)
      hitbox1.Transparency = 1
      hitbox1.CFrame = prt10.CFrame
      con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 30, math.random(10, 20), "Dragger", RootPart, 0.01, 1)
  end
)
      for i = 1, 3 do
        so("http://roblox.com/asset/?id=161006212", prt10, 1, 1.05)
        for i = 0, 1, 0.1 do
          swait()
          local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
          if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
            local h = 5
            local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
            if a then
              game.Debris:AddItem(a, 1)
            end
            if b then
              game.Debris:AddItem(b, 1)
            end
            local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
            if a then
              game.Debris:AddItem(a, 1)
            end
            if b then
              game.Debris:AddItem(b, 1)
            end
            scfr = blcf
          else
            do
              do
                --[[if not scfr then
                  scfr = blcf
                end--]]
                hitbox1.CFrame = prt10.CFrame
                RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(-0.5, 0, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.3)
                RootJoint.C0 = RootCF * euler(0, -0.5, 6.6 * i)
                -- DECOMPILER ERROR at PC726: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC726: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                -- DECOMPILER ERROR at PC726: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
      con1:disconnect()
      hitbox1.Parent = nil
    else
      if impulse == 3 then
        impulse = 1
        for i = 0, 1, 0.2 do
          swait()
          wld1.C0 = clerp(wld1.C0, euler(1.57, 0, -0.785) * cf(0, 1, -0.3), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.45)
          RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(3, 0, -0.785), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(3, 0, 0.785), 0.45)
          RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.45)
          LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.45)
        end
        Humanoid.Jump = true
        blcf = nil
        scfr = nil
        hitbox1.Parent = model1
        hitbox1.Size = vt(1, 5, 1)
        hitbox1.Transparency = 1
        hitbox1.CFrame = prt10.CFrame
        con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 25, 35, math.random(20, 30), "Dragger", RootPart, 0.01, 1)
  end
)
        for i = 1, 3 do
          so("http://roblox.com/asset/?id=161006195", prt10, 1, 1)
          for i = 0, 1, 0.1 do
            swait()
            local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
            if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
              local h = 5
              local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
              if a then
                game.Debris:AddItem(a, 1)
              end
              if b then
                game.Debris:AddItem(b, 1)
              end
              local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
              if a then
                game.Debris:AddItem(a, 1)
              end
              if b then
                game.Debris:AddItem(b, 1)
              end
              scfr = blcf
            else
              do
                do
                  --[[if not scfr then
                    scfr = blcf
                  end--]]
                  hitbox1.CFrame = prt10.CFrame
                  wld1.C0 = clerp(wld1.C0, euler(2, 0, -0.785) * cf(0, 1, -0.3), 0.45)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, 0), 0.45)
                  RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0.5, 0, -0.785), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(0.5, 0, 0.785), 0.3)
                  RootJoint.C0 = RootCF * euler(6.28 * i, 0, 0)
                  -- DECOMPILER ERROR at PC1102: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC1102: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC1102: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
        con1:disconnect()
        hitbox1.Parent = nil
      end
    end
  end
  attack = false
end

Bash = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.1, 0, 0) * cf(0, 1, -0.4), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, -1.4, 0) * euler(-0.6, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, -1, 0) * euler(0.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 2.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1, 0), 0.3)
  end
  Torso.Velocity = RootPart.CFrame.lookVector * 600
  so("http://roblox.com/asset/?id=2767090", Torso, 1, 0.7)
  MagicWave(Color4, RootPart.CFrame * euler(1.57, 0, 0), 1, 1, 1, 1, 1, 1, 0.05)
  hit = nil
  for i = 1, 20 do
    if hit == nil then
      swait()
    end
    hit = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
  end
  Torso.Velocity = RootPart.CFrame.lookVector * 0
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.1, 0, 0) * cf(0, 1, -0.4), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1.4) * euler(-0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(3, -1.4, 0) * euler(-0.6, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.3, -1.4, 0) * euler(0.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  so("http://roblox.com/asset/?id=161006195", prt10, 1, 0.5)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.2 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          wld1.C0 = clerp(wld1.C0, euler(2.2, 0, 0) * cf(0, 0.8, -0.3), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1.4) * euler(0.4, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.3) * euler(0, 0, -1.4), 0.45)
          RW.C0 = clerp(RW.C0, cf(0.5, 0.2, -0.5) * euler(3, -1.4, 0) * euler(-2.7, 0, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.2, 0.1, -0.3) * euler(0, -1.4, 0) * euler(0.5, 0, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(-1.2, 1.57, 0), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1.1, 0.4, -0.8) * euler(-0.05, -1.57, 0), 0.45)
          -- DECOMPILER ERROR at PC630: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC630: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC630: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  hit, pos = rayCast(prt10.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
  do
    if hit ~= nil then
      local ref = part(3, workspace, 0, 1, BrickColor.new("Dark indigo"), "Effect", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(ref, 3)
      for i = 1, 10 do
        Col = hit.BrickColor
        local groundpart = part(3, F2, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
        groundpart.Anchored = true
        groundpart.Material = hit.Material
        groundpart.CanCollide = true
        groundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(groundpart, 5)
      end
      so("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.2)
      MagicWave(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagniDamage(ref, 10, 40, 80, math.random(100, 600), "Up")
    end
    swait(10)
    Humanoid.WalkSpeed = 16
    attack = false
  end
end

UnleashTheDemon = function()
  attack = true
  so("rbxasset://sounds\\unsheath.wav", prt1, 1, 0.8)
  chatServ:Chat(Head, "Were you prepared for this?", 2)
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.5) * cf(0, 1, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3.4, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  wld1.Part1 = Torso
  wld1.C0 = euler(3.7, 1.57, 0) * cf(-1.5, -2.3, -0.5)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.4, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.4, -1.57, 0) * euler(1.2, 0, 0), 0.3)
  end
  so("http://roblox.com/asset/?id=178452217", RightArm, 0.5, 0.4)
  so("http://roblox.com/asset/?id=168586586", RightArm, 0.5, 0.6)
  so("http://roblox.com/asset/?id=160740121", RightArm, 1, 0.8)
  num = 0
  for i = 0, 1, 0.01 do
    swait()
    if num >= 10 then
      num = 0
      MagicWave(BrickColor.new("Dark indigo"), cf(Torso.Position) * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
    end
    for i = 1, 2 do
      if math.random(1, 5) == 1 then
        MagicBlock(BrickColor.new("Really black"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  so("http://roblox.com/asset/?id=168586621", RightArm, 1, 0.5)
  so("http://roblox.com/asset/?id=160867463", RightArm, 1, 0.8)
  for i = 1, 4 do
    MagicBlock(BrickColor.new("Dark indigo"), RightArm.CFrame * cf(0, -0.5 - math.random(0, 500) / 100, 0), 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
  end
  MagicWave(BrickColor.new("Dark indigo"), cf(Torso.Position) * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 0.5, 0.3, 0.5, 0.01)
  Mode = "Demon"
  chatServ:Chat(Head, "Awaken, Demon Blade!", 2)
  model2.Parent = Character
  for i = 1, #DBlade do
    DBlade[i].Parent = model2
    DBladeWelds[i].Parent = DBlade[1]
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.4), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, -0.5, 1), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.4, 0.5, -1.3), 0.3)
  end
  swait(10)
  attack = false
end

local MomentumCancel = true
chatServ = game:GetService("Chat")
local chattedAlready = false
MomentumCanelling = function()
  if Humanoid.WalkSpeed + 50 < RootPart.Velocity.Magnitude and not attack and MomentumCancel then
    RootPart.Velocity = Vector3.new(0, 0, 0)
    if not chattedAlready then
      chattedAlready = true
      chatServ:Chat(Head, "Momentum Cancel!", 2)
      wait(1)
      chattedAlready = false
    end
  end
end

RootPart.Changed:connect(MomentumCanelling)
Torso.Changed:connect(MomentumCanelling)
Head.Changed:connect(MomentumCanelling)
RightArm.Changed:connect(MomentumCanelling)
RightLeg.Changed:connect(MomentumCanelling)
LeftArm.Changed:connect(MomentumCanelling)
LeftLeg.Changed:connect(MomentumCanelling)
Demonattackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, -1), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.7), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.3, 0, 0.5), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.7, 0, -0.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.6) * euler(-0.3, 1.57, 0) * euler(0, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.3, 0) * euler(0.5, -0.8, 0) * euler(-0.5, 0, 0), 0.3)
  end
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Lifesteal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=28144425", prtd7, 1, 0.7)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.08 do
    swait()
    local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
    if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox2.CFrame = prtd7.CFrame
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, 1), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.7), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, -0.5, 1) * euler(1.3, 0, -1.7), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.7, 0, -0.7), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(-0.3, 1.57, 0) * euler(0, -1, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.3, -2.3, 0) * euler(0, 0, 0), 0.3)
          -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  attack = false
end

Demonattacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.1, 0, 1.2), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.7), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, -1.2, 0.6) * euler(1.1, 0, -1.7), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.7, 0, -0.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(-0.1, 1.57, 0) * euler(0, -1, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.1, -2.3, 0) * euler(0, 0, 0), 0.3)
  end
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Lifesteal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=28144425", prtd7, 1, 0.5)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
    if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox2.CFrame = prtd7.CFrame
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.1, 0, -0.8), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.7), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.8, 0.6) * euler(0.5, 0, 0.5), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.7, 0, -0.7), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * euler(-0.2, 1.57, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.2) * euler(0.2, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
          -- DECOMPILER ERROR at PC414: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC414: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC414: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  attack = false
end

Demonattackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.1, 0, -0.2), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.9, -1.8, 0) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(-0.2, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
  end
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Lifesteal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=28144425", prtd7, 1, 0.6)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.15 do
    swait()
    local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
    if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        --[[if not scfr then
          scfr = blcf
        end--]]
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.5, 0, 0.6), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -0.6), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.55, -1.5, 0) * euler(0.3, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.1, -0.4) * euler(0.4, 1.57, 0) * euler(-0.2, 0, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(-0.2, -1.2, 0) * euler(-0.2, 0, 0), 0.4)
        if i == 0.6 then
          hit, pos = rayCast(prtd8.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
          if hit ~= nil then
            local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
            ref.Anchored = true
            ref.CFrame = cf(pos)
            game:GetService("Debris"):AddItem(ref, 3)
            for i = 1, 5 do
              Col = hit.BrickColor
              local groundpart = part(3, F2, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
              groundpart.Anchored = true
              groundpart.Material = hit.Material
              groundpart.CanCollide = true
              groundpart.CFrame = cf(pos) * cf(math.random(-200, 200) / 100, 0, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              game:GetService("Debris"):AddItem(groundpart, 3)
            end
            so("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.5)
            MagicWave(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
            MagniDamage(ref, 10, 10, 20, math.random(10, 20), "Normal")
          end
        end
        do
          -- DECOMPILER ERROR at PC583: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC583: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC583: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  swait(10)
  attack = false
end

LetItBuild = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.2, 0, -1), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.6, 0, 0.4), 0.3)
    LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(1.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.5) * euler(-0.2, 2, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0.5, -0.6, 0) * euler(-0.4, 0, 0), 0.3)
  end
  local num = 0
  local magik = 0
  local num2 = 0
  local dammulti = 1
  chatServ:Chat(Head, "Devil...", 2)
  while holdx == true do
    swait()
    if magik < 25 and num >= 10 then
      pos1 = Torso.Position + vt(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100)
      pos2 = prtd8.Position
      Lightning(pos1, pos2, 5, 3, "Dark indigo", 0.1, 0.5, 0.5)
      MagicCircle(BrickColor.new("Dark indigo"), cf(pos1), 5, 5, 5, 1, 1, 1, 0.1)
      MagicBlood(BrickColor.new("Dark indigo"), Torso.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.1, 0.1, 0.1, 0.1, 2, 0.1, 0.05)
      so("http://www.roblox.com/asset/?id=178452221", Torso, 0.1, 1.5)
      magik = magik + 3
      num = 0
    end
    Humanoid.MaxHealth = Humanoid.MaxHealth + 20
    dammulti = dammulti + (2 + Humanoid.MaxHealth / Humanoid.Health)
    num = num + 1
    num2 = num2 + (magik)
    Humanoid.Health = Humanoid.Health - 0.08
    if num2 >= 50 then
      MagicBlood(BrickColor.new("Dark indigo"), cf(prtd8.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.1, 0.1, 0.1, 0.1, 1, 0.1, 0.1)
      num2 = 0
    end
  end
  chatServ:Chat(Head, "Cutter!", 2)
  RootPart.Velocity = RootPart.CFrame.lookVector * (6 * (magik))
  blcf = nil
  scfr = nil
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, magik * 2221 * dammulti, magik * 4441 * dammulti, 1, "DevilStyle", RootPart, 0.2 / (dammulti * magik), 1)
  end
)
  for i = 1, 3 do
    so("http://roblox.com/asset/?id=28144425", prtd7, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      hitbox2.CFrame = prtd7.CFrame
      local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
      if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            --[[if not scfr then
              scfr = blcf
            end--]]
            RootJoint.C0 = RootCF * cf(0, 0, -0.8) * euler(0, 0, 6.28 * i) * euler(0.2, 0, -1)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.4, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(1.5, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.5) * euler(-0.2, 2, 0) * euler(0, 0, 0), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0.5, -0.6, 0) * euler(-0.4, 0, 0), 0.3)
            -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  attack = false
end

YourMoveCreep = function()
  attack = true
  local pers = nil
  for i = 0, 1, 0.1 do
    swait()
    cost = Humanoid.Health * 0.01
    Humanoid:TakeDamage(cost)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(0.2, 0, -1.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0.2, 1.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 1) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -0.4, 0) * euler(0, 0, -1.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  local blockprt = part(3, Character, 0, 1, BrickColor.new("Dark indigo"), "Block", vt(6, 0.1, 6))
  chatServ:Chat(Head, "Your move, creep.", 2)
  blockprt.Anchored = false
  blockprt.CanCollide = false
  blockprt.CFrame = LeftArm.CFrame * cf(0, -1, 0)
  local Blockweld = Instance.new("Weld", blockprt)
  Blockweld.Part0 = LeftArm
  Blockweld.Part1 = blockprt
  Blockweld.C0 = CFrame.new(0, -1, 0)
  conbl = blockprt.Touched:connect(function(hit)
  end
)
  local extradam = 1
  blockprt.Touched:connect(function(hit)
    local Tor1 = hit.Parent.Parent:findFirstChild("Torso")
    local Tor2 = hit.Parent:findFirstChild("Torso")
    local FindAHumanoid = function(parent)
      local H = nil
      for _,HUM in pairs(parent:GetChildren()) do
        if HUM:IsA("Humanoid") then
          H = HUM
        end
      end
      return H
    end

    if Tor1 and guard then
      if Tor1.Parent == Character then
        local HUM = FindAHumanoid(Tor1.Parent)
        local DAM = math.random(10, 20) * extradam
        if HUM then
          if HUM.MaxHealth > 10000000 then
            HUM.MaxHealth = 100
          end
          showDamage(Tor1.Parent, DAM, 0.5, BrickColor.new("Dark indigo"))
          HUM.Health = HUM.Health - DAM
          HUM:ChangeState(Enum.HumanoidStateType.FallingDown)
          chatServ:Chat(Head, "Ha!", 2)
        end
        guard = false
        local BBlast = Instance.new("Part", F2)
        BBlast.BrickColor = BrickColor.new("Dark indigo")
        BBlast.Material = "Neon"
        BBlast.Transparency = 0.5
        local OverallSize = Tor1.Size.X * 4
        BBlast.Size = Vector3.new(OverallSize, OverallSize, OverallSize)
        BBlast.CFrame = Tor1.CFrame
        BBlast.Anchored = true
        BBlast.CanCollide = false
        BBlast.Locked = true
        local BMesh = Instance.new("SpecialMesh", BBlast)
        BMesh.MeshType = "Sphere"
        do
          local BSound = Instance.new("Sound", BBlast)
          BSound.Volume = 10
          BSound.SoundId = "rbxassetid://153832523"
          BSound.Pitch = 0.8
          BSound:Play()
          MagniDamage(BBlast, OverallSize * 2, DAM / 2 - 0.01, DAM / 2, 1, "Breaker")
          for I = 0.5, 1, 0.05 do
            wait()
            BMesh.Scale = Vector3.new(I * 2, I * 2, I * 2)
            BBlast.Transparency = I
          end
          game:GetService("Debris"):AddItem(BBlast, 0)
          game:GetService("Debris"):AddItem(BSound, 0)
          if Tor2 and guard then
            if Tor2.Parent == Character then
              local HUM = FindAHumanoid(Tor2.Parent)
              local DAM = math.random(10, 20) * extradam
              if HUM then
                if HUM.MaxHealth > 10000000 then
                  HUM.MaxHealth = 100
                  wait()
                end
                showDamage(Tor2.Parent, DAM, 0.5, BrickColor.new("Dark indigo"))
                HUM.Health = HUM.Health - DAM
                HUM:ChangeState(Enum.HumanoidStateType.Ragdoll)
                chatServ:Chat(Head, "Ha!", 2)
              end
              guard = false
              local BBlast = Instance.new("Part", F2)
              BBlast.BrickColor = BrickColor.new("Dark indigo")
              BBlast.Material = "Neon"
              BBlast.Transparency = 0.5
              local OverallSize = Tor2.Size.X * 4
              BBlast.Size = Vector3.new(OverallSize, OverallSize, OverallSize)
              BBlast.CFrame = Tor2.CFrame
              BBlast.Anchored = true
              BBlast.CanCollide = false
              BBlast.Locked = true
              local BMesh = Instance.new("SpecialMesh", BBlast)
              BMesh.MeshType = "Sphere"
              local BSound = Instance.new("Sound", BBlast)
              BSound.Volume = 10
              BSound.SoundId = "rbxassetid://153832523"
              BSound.Pitch = 0.8
              BSound:Play()
              MagniDamage(BBlast, OverallSize * 2, DAM / 2 - 0.01, DAM / 2, 1, "Breaker")
              for I = 0.5, 1, 0.05 do
                wait()
                BMesh.Scale = Vector3.new(I * 2, I * 2, I * 2)
                BBlast.Transparency = I
              end
              game:GetService("Debris"):AddItem(BBlast, 0)
              game:GetService("Debris"):AddItem(BSound, 0)
            end
          end
        end
      end
    end
  end
)
  num = 0
  while guard == true do
    swait()
    extradam = extradam + 0.5
    if num > 10 then
      num = 0
      MagicBlock(BrickColor.new("Dark indigo"), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagicCircle(BrickColor.new("Dark indigo"), LeftArm.CFrame * cf(0, -1, 0), 1, 0.1, 1, 6, 0, 6, 0.1)
    end
    num = num + 1
  end
  conbl:disconnect()
  game:GetService("Debris"):AddItem(blockprt, 0)
  print(pers)
  if pers ~= nil then
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(-0.2, 0, 1.6), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, -0.2, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -1, 1) * euler(1, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, -1.57, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
    end
    swait(200)
  end
  attack = false
end

CreateWeaponPart = function(className, parent, Brickcolor, Material, Transparency, Reflectance, Name, Size, Position, Rotation, MeshClass, MeshScale, MeshId, MeshType)
  local Part = Instance.new(className, parent)
  Part.BrickColor = BrickColor.new(Brickcolor)
  Part.Transparency = Transparency
  Part.Reflectance = Reflectance
  Part.Material = Material
  Part.Name = Name
  Part.Anchored = true
  Part.CanCollide = false
  Part.Locked = true
  Part.Size = Size
  Part.Position = Position
  Part.Rotation = Rotation
  local Mesh = Instance.new(MeshClass, Part)
  Mesh.Scale = MeshScale
  if MeshClass == "SpecialMesh" then
    Mesh.MeshId = MeshId
    Mesh.MeshType = MeshType
  end
  return Part
end

local Demon_Cannon = Instance.new("Model")
Demon_Cannon.Name = "Demon Cannon"
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 2.982, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 3.418, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 3.309, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 3.091, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Black", "SmoothPlastic", 0, 0, "BulletHole", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 3.473, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Black", "SmoothPlastic", 0, 0, "BulletHole", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 2.927, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonBack", Vector3.new(1.2, 0.436, 0.545), Vector3.new(3.1, 3.2, -267.264), Vector3.new(-90, 90, 0), "SpecialMesh", Vector3.new(1, 1, 1), "", "Torso")
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonBack", Vector3.new(0.545, 1.2, 0.2), Vector3.new(3.1, 3.2, -266.991), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1, 1, 0.545), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonBody", Vector3.new(0.545, 0.545, 2.509), Vector3.new(3.1, 3.2, -265.682), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonCylinder", Vector3.new(0.545, 2.509, 0.655), Vector3.new(3.1, 3.473, -265.682), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonCylinder", Vector3.new(0.545, 2.509, 0.655), Vector3.new(3.1, 2.927, -265.682), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 3.473, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.55, 0.05, 0.55), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 2.927, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.55, 0.05, 0.55), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
local CannonMain = CreateWeaponPart("Part", Demon_Cannon, "Really black", "SmoothPlastic", 1, 0, "Main", Vector3.new(0.545, 1.345, 3.309), Vector3.new(3.1, 3.2, -265.882), Vector3.new(180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "SmoothPlastic", 1, 0, "Blaster Hole1", Vector3.new(0.545, 0.345, 0.2), Vector3.new(3.1, 3.473, -264.436), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "SmoothPlastic", 1, 0, "Blaster Hole2", Vector3.new(0.545, 0.345, 0.2), Vector3.new(3.1, 2.927, -264.436), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
local CHole1 = Demon_Cannon:WaitForChild("Blaster Hole1")
local CHole2 = Demon_Cannon:WaitForChild("Blaster Hole2")
for _,Part in pairs(Demon_Cannon:GetChildren()) do
  if Part:IsA("Part") then
    if Part.Name ~= "Main" then
      local x = CannonMain
      local y = Part
      local W = Instance.new("Weld")
      W.Part0 = x
      W.Part1 = y
      local CJ = CFrame.new(x.Position)
      local C0 = x.CFrame:inverse() * CJ
      local C1 = y.CFrame:inverse() * CJ
      W.C0 = C0
      W.C1 = C1
      W.Parent = x
      x.Anchored = false
      y.Anchored = false
    end
    do
      do
        Part.Anchored = false
        Part.TopSurface = "SmoothNoOutlines"
        Part.BottomSurface = "SmoothNoOutlines"
        Part.LeftSurface = "SmoothNoOutlines"
        Part.RightSurface = "SmoothNoOutlines"
        Part.FrontSurface = "SmoothNoOutlines"
        Part.BackSurface = "SmoothNoOutlines"
        -- DECOMPILER ERROR at PC2774: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC2774: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC2774: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
CannonMain.Anchored = true
local CM2 = CreateWeaponPart("Part", Character, "Really black", "SmoothPlastic", 1, 0, "Main2", Vector3.new(0.545, 1.345, 3.309), Vector3.new(3.1, 3.2, -265.882), Vector3.new(180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CM2.Anchored = false
local CMW1 = Instance.new("Weld", CM2)
CMW1.Part0 = RootPart
CMW1.Part1 = CM2
CMW1.C0 = CFrame.new(0, 3, 0)
local CannonWeld = Instance.new("Weld", CM2)
local CPos = Instance.new("BodyPosition")
local CGyro = Instance.new("BodyGyro")
local DCOn = false
local TCtrl = false
local CanUseCannon = false
local Firing = false
local C = 1
DemonCannon = function()
  attack = true
  chatServ:Chat(Head, "Behold..", 2)
  for i = 0, 10 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(0.2, 0, -1.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0.2, 1.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 1) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -0.4, 0) * euler(0, 0, -1.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  wait(1)
  Humanoid.WalkSpeed = 8
  for i = 0, 10 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(0.2, 0, -1.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, -0.4, 1.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 1) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -0.4, 0) * euler(0, 0, -2.6), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  so("http://roblox.com/asset/?id=178452217", CM2, 1, 0.4)
  for i = 0, 1, 0.01 do
    swait()
    for i = 1, 4 do
      if math.random(1, 4) == 1 then
        MagicBlock(BrickColor.new("Really black"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  so("http://roblox.com/asset/?id=168586621", RightArm, 1, 0.5)
  local Boo = Instance.new("Part", F2)
  Boo.BrickColor = BrickColor.new("Dark indigo")
  Boo.Transparency = 0.5
  Boo.Material = "Neon"
  Boo.Anchored = true
  Boo.CanCollide = false
  Boo.CFrame = CM2.CFrame
  Boo.Size = Vector3.new(3, 3, 3)
  local BooM = Instance.new("SpecialMesh", Boo)
  BooM.MeshType = "Sphere"
  local nuM = 0
  chatServ:Chat(Head, "The Demon Cannon!", 2)
  Humanoid.WalkSpeed = 16
  for i = 1, 4, 0.1 do
    wait()
    BooM.Scale = Vector3.new(i, i, i)
    Boo.Transparency = 0.5 + i / 8
    if nuM ~= 1 then
      Demon_Cannon.Parent = Character
      CannonWeld = Instance.new("Weld", CM2)
      CannonWeld.Part0 = CM2
      CannonWeld.Part1 = CannonMain
      CannonMain.Anchored = false
      nuM = 1
    end
  end
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(-0.2, 0, 1.6), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, -0.2, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -1, 1) * euler(1, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, -1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  game:GetService("Debris"):AddItem(Boo, 0)
  CanUseCannon = true
  CannonWeld.Part0 = nil
  CannonWeld.Part1 = nil
  CPos.Parent = CannonMain
  CPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  CGyro.Parent = CannonMain
  CGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
  attack = false
end

HideDemonCannon = function()
  attack = true
  CanUseCannon = false
  CPos.Parent = nil
  CPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  CGyro.Parent = nil
  CGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
  CannonWeld = Instance.new("Weld", CM2)
  CannonWeld.Part0 = CM2
  CannonWeld.Part1 = CannonMain
  so("http://roblox.com/asset/?id=178452217", CM2, 1, 0.4)
  for i = 0, 1, 0.01 do
    swait()
    for i = 1, 4 do
      if math.random(1, 4) == 1 then
        MagicBlock(BrickColor.new("Really black"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  CannonMain.Anchored = true
  Demon_Cannon.Parent = nil
  CannonWeld.Part0 = nil
  CannonWeld.Part1 = nil
  game:GetService("Debris"):AddItem(CannonWeld, 0)
  attack = false
end

TimeControl = function()
  print("hahaha")
  attack = true
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(math.rad(20), 0, math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(-50), math.rad(0), math.rad(60)) * euler(0, math.rad(-120), 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.rad(110), math.rad(-10), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.85, -0.85) * euler(0, math.rad(100), math.rad(-30)) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.45, -0.35) * euler(0, math.rad(-60), math.rad(-20)) * euler(0, 0, 0), 0.3)
  end
  local EmeraldWeld = Instance.new("Motor", LeftArm)
  local Chaos_Emerald = Instance.new("Part", F2)
  Chaos_Emerald.BrickColor = BrickColor.new("Dark indigo")
  Chaos_Emerald.Material = "SmoothPlastic"
  Chaos_Emerald.Reflectance = 0.3
  Chaos_Emerald.Transparency = 1
  Chaos_Emerald.Name = "Chaos Emerald"
  Chaos_Emerald.Anchored = false
  Chaos_Emerald.CanCollide = false
  Chaos_Emerald.Locked = true
  Chaos_Emerald.Size = Vector3.new(1, 0.4, 1)
  local CE_Mesh = Instance.new("SpecialMesh", Chaos_Emerald)
  CE_Mesh.MeshId = "http://www.roblox.com/asset?id=160003363"
  CE_Mesh.Scale = Vector3.new(2, 1, 2)
  local CE_Light = Instance.new("PointLight", Chaos_Emerald)
  CE_Light.Brightness = 100
  CE_Light.Color = Color3.new(0.33333333333333, 0, 0.49803921568627)
  CE_Light.Range = 8
  CE_Light.Shadows = true
  CE_Light.Enabled = false
  local transPoints = {NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)}
  local ETransparency = NumberSequence.new(transPoints)
  local CE_PE = Instance.new("ParticleEmitter", Chaos_Emerald)
  CE_PE.Color = ColorSequence.new(Chaos_Emerald.BrickColor.Color)
  CE_PE.LightEmission = 1
  CE_PE.Size = NumberSequence.new(0.4)
  CE_PE.Transparency = ETransparency
  CE_PE.EmissionDirection = "Top"
  CE_PE.LockedToPart = true
  CE_PE.VelocityInheritance = 1
  CE_PE.Rate = 50
  CE_PE.Lifetime = NumberRange.new(0.3, 0.5)
  CE_PE.RotSpeed = NumberRange.new(100, 300)
  CE_PE.Speed = NumberRange.new(2)
  CE_PE.VelocitySpread = 100
  CE_PE.Enabled = false
  EmeraldWeld.Part0 = LeftArm
  EmeraldWeld.Part1 = Chaos_Emerald
  EmeraldWeld.DesiredAngle = 1e+061
  EmeraldWeld.MaxVelocity = math.rad(5)
  EmeraldWeld.C0 = CFrame.new(0, -6, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0)
  EmeraldWeld.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
  so("http://roblox.com/asset/?id=178452217", CM2, 1, 0.4)
  for i = 0, 1, 0.01 do
    swait()
    for i = 1, 6 do
      if math.random(1, 4) == 1 then
        MagicBlock(BrickColor.new("Really black"), Chaos_Emerald.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), Chaos_Emerald.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  Chaos_Emerald.Transparency = 0.3
  CE_PE.Enabled = true
  CE_Light.Enabled = true
  Humanoid.WalkSpeed = 0
  wait(1)
  for i = 0, 2.25, 0.1 do
    wait()
    EmeraldWeld.C0 = clerp(EmeraldWeld.C0, cf(0, -0.5, 0) * euler(math.rad(-180), 0, 0), 0.1)
  end
  EmeraldWeld.MaxVelocity = 0
  so("http://roblox.com/asset/?id=227194112", LeftArm, 1, 1)
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(-50), math.rad(0), math.rad(60)) * euler(0, math.rad(-160), 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -1) * euler(math.rad(90), 0, math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, math.rad(90), 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, math.rad(-90), 0), 0.3)
  end
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(math.rad(-20), 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(0), math.rad(0), math.rad(60)) * euler(0, math.rad(-90), 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.rad(150), 0, 0), 0.3)
  end
  chatServ:Chat(Head, "Behold, my power!", 2)
  EmeraldWeld.MaxVelocity = math.rad(5)
  for i = 0, 1, 0.1 do
    wait()
    EmeraldWeld.C0 = clerp(EmeraldWeld.C0, cf(0, -3, -1.1) * euler(math.rad(-240), 0, 0), 0.3)
  end
  local Chaos_Emerald2 = Chaos_Emerald:Clone()
  Chaos_Emerald2.Parent = F2
  Chaos_Emerald2.Anchored = false
  for _,k in pairs(Chaos_Emerald2:GetChildren()) do
    if k:IsA("PointLight") or k:IsA("ParticleEmitter") then
      game:GetService("Debris"):AddItem(k, 0)
    end
  end
  Chaos_Emerald2.Transparency = 0.5
  local EmeraldWeld2 = Instance.new("Weld", Chaos_Emerald)
  EmeraldWeld2.Part0 = Chaos_Emerald
  EmeraldWeld2.Part1 = Chaos_Emerald2
  EmeraldWeld2.C0 = CFrame.new(0, 0, 0)
  local CE2_Mesh = Chaos_Emerald2:WaitForChild("Mesh")
  CE2_Mesh.Scale = Vector3.new(0, 0, 0)
  local EFlash = function()
    for t = 0, 2, 0.1 do
      wait()
      CE2_Mesh.Scale = Vector3.new(t * 4, t * 1.2, t * 4)
      Chaos_Emerald2.Transparency = 0.5 + t / 4
    end
  end

  for i = 0, 5 do
    EFlash()
    wait(0.1)
  end
  chatServ:Chat(Head, "Time control!", 2)
  local TPlayers = {}
  local THumanoids = {}
  local RecentBrightness = game.Lighting.Brightness
  local RecentOutDoorAmbient = game.Lighting.OutdoorAmbient
  local RecentTimeOfDay = game.Lighting.TimeOfDay
  local RecentFogEnd = game.Lighting.FogEnd
  local RecentFogColor = game.Lighting.FogColor
  local TBlast, TBMesh = Instance.new("Part", F2), Instance.new("SpecialMesh")
  TBlast.BrickColor = BrickColor.new("Dark indigo")
  TBlast.Transparency = 1
  TBlast.Anchored = true
  TBlast.CanCollide = false
  TBlast.CFrame = RootPart.CFrame
  TBlast.Size = Vector3.new(2, 2, 2)
  TBMesh.Parent = TBlast
  TBMesh.MeshType = "Sphere"
  game.Lighting.Brightness = 0
  game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
  game.Lighting.TimeOfDay = 4
  game.Lighting.FogEnd = 1000
  game.Lighting.FogColor = TBlast.BrickColor.Color
  local GetPlayers = function()
    for _,P in pairs(game.Players:GetPlayers()) do
      if P and P ~= Player and P.UserId ~= 43981323 then
        table.insert(TPlayers, P)
        local cc = P:WaitForChild("Character")
        local huh = FindHum(cc)
        local Jd = huh:FindFirstChild("JumpedValue")
        if not Jd then
          Jd = Instance.new("BoolValue")
          Jd.Parent = huh
          Jd.Name = "JumpedValue"
          Jd.Value = false
        end
        local S = P:WaitForChild("Character"):WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if not S then
          S = Instance.new("BodyVelocity", P:WaitForChild("Character"):WaitForChild("Torso"))
          S.MaxForce = Vector3.new(0, 0, 0)
          S.Velocity = Vector3.new(0, 0, 0)
          S.Name = "svFgyuzxC"
        end
      end
    end
  end

  local GetOtherHumanoids = function()
    for _,H in pairs(workspace:GetChildren()) do
      if H:IsA("Model") then
        local HUM = FindHum(H)
        if HUM and HUM ~= Humanoid then
          table.insert(THumanoids, HUM)
          local Jd = HUM:FindFirstChild("JumpedValue")
          if not Jd then
            Jd = Instance.new("BoolValue")
            Jd.Parent = HUM
            Jd.Name = "JumpedValue"
            Jd.Value = false
          end
          local S = HUM.Parent:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
          if not S then
            S = Instance.new("BodyVelocity", HUM.Parent:WaitForChild("Torso"))
            S.MaxForce = Vector3.new(0, 0, 0)
            S.Velocity = Vector3.new(0, 0, 0)
            S.Name = "svFgyuzxC"
          end
        end
      end
    end
  end

  GetPlayers()
  GetOtherHumanoids()
  local ClearTHumanoids = function()
    for i,H in pairs(THumanoids) do
      if H then
        table.remove(THumanoids, i)
        local Jd = H:FindFirstChild("JumpedValue")
        if Jd then
          game:GetService("Debris"):AddItem(Jd, 0)
        end
        H.WalkSpeed = 16
        local S = H.Parent:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if S then
          game:GetService("Debris"):AddItem(S, 0)
        end
      end
    end
  end

  local ClearTPlayers = function()
    for i,P in pairs(TPlayers) do
      if P then
        table.remove(TPlayers, i)
        local cc = P:WaitForChild("Character")
        local huh = FindHum(cc)
        local Jd = huh:FindFirstChild("JumpedValue")
        if Jd then
          game:GetService("Debris"):AddItem(Jd, 0)
        end
        huh.WalkSpeed = 16
        local S = P:WaitForChild("Character"):WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if S then
          game:GetService("Debris"):AddItem(S, 0)
        end
      end
    end
  end

  Humanoid.WalkSpeed = 16
  for s = 0, 50, 5 do
    wait()
    TBMesh.Scale = Vector3.new(s * s, s * s, s * s)
    TBlast.Transparency = s / 50
  end
  attack = false
  game:GetService("Debris"):AddItem(Chaos_Emerald, 0)
  game:GetService("Debris"):AddItem(Chaos_Emerald2, 0)
  game:GetService("Debris"):AddItem(TBlast, 0)
  local PlayerJoined = game:GetService("Players").PlayerAdded:connect(function()
    for _,child in pairs(game:GetService("Players"):GetPlayers()) do
      table.insert(TPlayers, child)
      local cc = child:WaitForChild("Character")
      local huh = FindHum(cc)
      local Jd = huh:FindFirstChild("JumpedValue")
      if not Jd then
        Jd = Instance.new("BoolValue")
        Jd.Parent = huh
        Jd.Name = "JumpedValue"
        Jd.Value = false
      end
      local S = child:WaitForChild("Character"):WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
      if not S then
        S = Instance.new("BodyVelocity", child:WaitForChild("Character"):WaitForChild("Torso"))
        S.MaxForce = Vector3.new(0, 0, 0)
        S.Velocity = Vector3.new(0, 0, 0)
        S.Name = "svFgyuzxC"
      end
    end
  end
)
  local PlayerLeft = game:GetService("Players").PlayerRemoving:connect(function(player)
    for i,child in pairs(TPlayers) do
      if child == player then
        table.remove(TPlayers, i)
      end
    end
  end
)
  local StuntJumpUntil = function(humanoid)
    local duration = humanoid.JumpPower
    local root = (humanoid.Parent:FindFirstChild("HumanoidRootPart"))
    local RooT = nil
    local Jd = humanoid:FindFirstChild("JumpedValue")
    if not Jd then
      error("Jump Value was not found.")
    end
    Jd.Value = true
    humanoid.Jump = false
    if root then
      RooT = root
    else
      if not root then
        root = humanoid.Parent:FindFirstChild("Torso")
        if root then
          RooT = root
        end
      end
    end
    local NUM = 0
    local S = humanoid.Parent:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
    if not S then
      error("Could not find bodyvelocity.")
      S = Instance.new("BodyVelocity", humanoid.Parent:WaitForChild("Torso"))
      S.MaxForce = Vector3.new(0, 0, 0)
      S.Velocity = Vector3.new(0, 0, 0)
    end
    S.MaxForce = Vector3.new(0, math.huge, 0)
    S.Velocity = Vector3.new(0, -0.1, 0)
    wait(duration)
    S.MaxForce = Vector3.new(0, 0, 0)
    Jd.Value = false
  end

  local TimeC = runServ:connect(function()
    game.Lighting.Brightness = 0
    game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
    game.Lighting.TimeOfDay = 4
    game.Lighting.FogEnd = 1000
    game.Lighting.FogColor = TBlast.BrickColor.Color
    for i,P in pairs(TPlayers) do
      if P then
        local cHar = P:WaitForChild("Character")
        local hUm = FindHum(cHar)
        local Jd = hUm:FindFirstChild("JumpedValue")
        if not Jd then
          error("Jump Value was not found.")
        end
        local S = cHar:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if not S then
          error("Could not find bodyvelocity.")
          S = Instance.new("BodyVelocity", cHar:WaitForChild("Torso"))
          S.MaxForce = Vector3.new(0, 0, 0)
          S.Velocity = Vector3.new(0, 0, 0)
        end
        if hUm.WalkSpeed > 0.8 then
          hUm.WalkSpeed = 0.8
        else
        end
        -- DECOMPILER ERROR at PC94: Unhandled construct in 'MakeBoolean' P1

        if hUm.WalkSpeed ~= 0 or hUm:GetState() == Enum.HumanoidStateType.Jumping and not Jd.Value then
          StuntJumpUntil(hUm)
        end
        if hUm:GetState() == Enum.HumanoidStateType.Freefall and not Jd.Value then
          S.MaxForce = Vector3.new(0, math.huge, 0)
          S.Velocity = Vector3.new(0, -0.1, 0)
        else
          if hUm:GetState() == Enum.HumanoidStateType.RunningNoPhysics and not Jd.Value then
            S.MaxForce = Vector3.new(0, 0, 0)
          end
        end
      end
    end
    for i,H in pairs(THumanoids) do
      if H then
        local cHar = H.Parent
        local Jd = H:FindFirstChild("JumpedValue")
        if not Jd then
          error("Jump Value was not found.")
        end
        local S = cHar:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if not S then
          error("Could not find bodyvelocity.")
          S = Instance.new("BodyVelocity", cHar:WaitForChild("Torso"))
          S.MaxForce = Vector3.new(0, 0, 0)
          S.Velocity = Vector3.new(0, 0, 0)
        end
        if H.WalkSpeed > 0.8 then
          H.WalkSpeed = 0.8
        else
        end
        -- DECOMPILER ERROR at PC208: Unhandled construct in 'MakeBoolean' P1

        if H.WalkSpeed ~= 0 or H:GetState() == Enum.HumanoidStateType.Jumping and not Jd.Value then
          StuntJumpUntil(H)
        end
        if H.Health < 0.1 then
          table.remove(THumanoids, i)
          wait(5)
          ClearTHumanoids()
          GetOtherHumanoids()
        end
        if H:GetState() == Enum.HumanoidStateType.Freefall and not Jd.Value then
          S.MaxForce = Vector3.new(0, math.huge, 0)
          S.Velocity = Vector3.new(0, -0.1, 0)
        else
          if H:GetState() == Enum.HumanoidStateType.RunningNoPhysics and not Jd.Value then
            S.MaxForce = Vector3.new(0, 0, 0)
          end
        end
      end
    end
  end
)
  repeat
    wait()
  until not TCtrl or Humanoid.Health < 0.01
  TimeC:disconnect()
  chatServ:Chat(Head, "Time release.", 2)
  game.Lighting.Brightness = RecentBrightness
  game.Lighting.OutdoorAmbient = RecentOutDoorAmbient
  game.Lighting.TimeOfDay = RecentTimeOfDay
  game.Lighting.FogEnd = RecentFogEnd
  game.Lighting.FogColor = RecentFogColor
  wait(0.1)
  ClearTHumanoids()
  ClearTPlayers()
end

FindHum = function(parent)
  local hm = nil
  for _,HM in pairs(parent:GetChildren()) do
    if HM:IsA("Humanoid") then
      hm = HM
    end
  end
  return hm
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = FindHum(c)
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, mindam, maxdam, knock, Type, Part, 0.2, 1, nil, 1)
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
  local effectsmsh = Instance.new("CylinderMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = F2
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = LP.p - point1.p.magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  coroutine.resume(coroutine.create(function(Part, Mesh)
    if not returnn then
      for i = 0, 1, 0.05 do
        wait()
        Part.Transparency = 1 * i
        Mesh.Scale = Vector3.new(0.5 - 0.5 * i, 1, 0.5 - 0.5 * i)
      end
      Part.Parent = nil
    end
  end
), effectsg, effectsmsh)
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

F1 = Instance.new("Folder", Character)
F1.Name = "Effects Folder"
F2 = Instance.new("Folder", F1)
F2.Name = "Effects"
Triangle = function(a, b, c)
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

MagicBlood = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3})
end

ElecEffect = function(cff, x, y, z)
  local prt = part(3, F2, 0, 0, BrickColor.new("Dark indigo"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 2)
  xval = math.random() / 2
  yval = math.random() / 2
  zval = math.random() / 2
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {prt, "Elec", 0.1, x, y, z, xval, yval, zval}
end

Lightning = function(p0, p1, tym, ofs, col, th, tra, last)
  local magz = p0 - p1.magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", F2)
    li.TopSurface = 0
    li.BottomSurface = 0
    li.Anchored = true
    li.Transparency = tra or 0.4
    li.BrickColor = BrickColor.new(col)
    li.Material = "Neon"
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
          game:GetService("Debris"):AddItem(li, last)
          -- DECOMPILER ERROR at PC131: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC131: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC131: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

local DragTable = {}
Bringer = function()
  for i,d in pairs(DragTable) do
    if d and d:IsA("BodyPosition") then
      local tem = d:FindFirstChild("Time")
      if not tem then
        tem = Instance.new("NumberValue")
        tem.Parent = d
        tem.Name = "Time"
        tem.Value = 0
      end
      if tem.Value < 1.5 then
        tem.Value = tem.Value + 0.1
        d.Position = RootPart.Position
      else
        game:GetService("Debris"):AddItem(tem, 0)
        game:GetService("Debris"):AddItem(d, 0)
        table.remove(DragTable, i)
      end
    end
  end
end

runServ:connect(function()
  Bringer()
end
)
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Duration, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local H = nil
  h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
      H = v
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
    so("http://www.roblox.com/asset/?id=10209590", hit, 1, math.random(50, 100) / 100)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    Damage = math.random(minim, maxim)
    if Mode == "Demon" then
      Damage = Damage * damagebonus
    end
    blocked = false
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
      showDamage(hit.Parent, Damage, 0.5, BrickColor:Red())
    else
      showDamage(hit.Parent, Damage / 2, 0.5, BrickColor.new("Bright blue"))
    end
    if Type == "Knockdown" then
      hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      hum:ChangeState(Enum.HumanoidStateType.FallingDown)
      local tor = hum.Parent:FindFirstChild("Torso")
      if tor then
        tor.Velocity = tor.CFrame.lookVector * -10
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
    else
      do
        if Type == "Breaker" then
          hum = hit.Parent.Humanoid
          hum.PlatformStand = true
          hum:ChangeState(Enum.HumanoidStateType.FallingDown)
          hum.JumpPower = 20
          local tor = hum.Parent:FindFirstChild("Torso")
          if tor then
            tor.Velocity = tor.CFrame.lookVector * -50
          end
          coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
          if H.MaxHealth > 100000000 then
            H.MaxHealth = 100
            wait()
          end
        else
          do
            if Type == "Normal" then
              vp = Instance.new("BodyVelocity")
              vp.P = 500
              vp.maxForce = Vector3.new(math.huge, 0, math.huge)
              if KnockbackType == 1 then
                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 100
              else
                if KnockbackType == 2 then
                  vp.velocity = Property.CFrame.lookVector * knockback
                end
              end
              if knockback > -100 then
                vp.Parent = hit.Parent.Torso
              end
              game:GetService("Debris"):AddItem(vp, 0.5)
            else
              if Type == "Lifesteal" then
                for i = 1, 5 do
                end
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 250
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * knockback
                  end
                end
                if knockback > -250 then
                  vp.Parent = hit.Parent.Torso
                end
                H:ChangeState(Enum.HumanoidStateType.FallingDown)
                game:GetService("Debris"):AddItem(vp, 0.5)
                Heal = math.ceil(Damage / 3)
                Humanoid.Health = Humanoid.Health + Heal
                showDamage(RootPart, Heal, 0.5, BrickColor.new("Bright green"))
              else
                if Type == "DevilStyle" then
                  for i = 1, 5 do
                  end
                  vp = Instance.new("BodyPosition")
                  vp.P = 80000
                  vp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                  if KnockbackType == 1 then
                    vp.Position = RootPart.Position
                  else
                    if KnockbackType == 2 then
                      vp.Position = RootPart.Position
                    end
                  end
                  if H.MaxHealth > 100000000 then
                    H.MaxHealth = 100
                    wait()
                  end
                  H:ChangeState(Enum.HumanoidStateType.FallingDown)
                  vp.Parent = hit.Parent.Torso
                  table.insert(DragTable, vp)
                  Heal = math.ceil(Damage / 5)
                  Humanoid.Health = Humanoid.Health + Heal
                  showDamage(RootPart, Heal, 0.5, BrickColor.new("Bright green"))
                else
                  if Type == "Dragger" then
                    for i = 1, 5 do
                    end
                    vp = Instance.new("BodyPosition")
                    vp.P = 80000
                    vp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                    H:ChangeState(Enum.HumanoidStateType.FallingDown)
                    if KnockbackType == 1 then
                      vp.Position = RootPart.Position
                    else
                      if KnockbackType == 2 then
                        vp.Position = RootPart.Position
                      end
                    end
                    vp.Parent = hit.Parent.Torso
                    table.insert(DragTable, vp)
                  else
                    if Type == "Up" then
                      hit.Velocity = Vector3.new(0, 100, 0)
                      H:ChangeState(Enum.HumanoidStateType.FallingDown)
                    else
                      if Type == "Snare" then
                        bp = Instance.new("BodyPosition")
                        bp.P = 2000
                        bp.D = 100
                        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bp.position = hit.Parent.Torso.Position
                        bp.Parent = hit.Parent.Torso
                        game:GetService("Debris"):AddItem(bp, 1)
                      else
                        if Type == "Charge" then
                          Charge = Charge + 1
                          coroutine.resume(coroutine.create(function(Part)
    swait(30)
    for i = 1, 5 do
      swait(5)
      so("rbxasset://sounds\\unsheath.wav", hit, 1, 2)
      newdam = math.random(1, 5)
      if blocked == false then
        H.Health = H.Health - newdam
        showDamage(hit.Parent, newdam, 0.5, BrickColor:Red())
      else
        H.Health = H.Health - newdam / 2
        showDamage(hit.Parent, newdam, 0.5, BrickColor.new("Bright blue"))
      end
    end
  end
), hit)
                        end
                      end
                    end
                  end
                end
              end
            end
            local debounceD = Instance.new("BoolValue")
            debounceD.Name = "DebounceHit"
            debounceD.Parent = hit.Parent
            debounceD.Value = true
            if Duration < 0.2 then
              Duration = 0.2
            end
            game:GetService("Debris"):AddItem(debounceD, Duration)
            local c = Instance.new("ObjectValue")
            c.Name = "creator"
            c.Value = Player
            c.Parent = h
            game:GetService("Debris"):AddItem(c, Duration)
            H.Health = H.Health - Damage
            CRIT = false
            hitDeb = true
            AttackPos = 6
          end
        end
      end
    end
  end
end

showDamage = function(Char, Dealt, du, Color)
end

combo = 0
ob1d = function(mouse)
  hold = true
  if attack == true or equipped == false then
    return 
  end
  if Mode == "Binary" then
    idle = 0
    if Anim == "Run" then
      SpinSlash()
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
            combo = 0
            attackthree()
          end
        end
      end
    end
  else
    if combo == 0 then
      combo = 1
      Demonattackone()
    else
      if combo == 1 then
        combo = 2
        Demonattacktwo()
      else
        if combo == 2 then
          combo = 0
          Demonattackthree()
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 20 do
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
eul = 0
holdx = false
equipped = false
local nostop = false
FireBullet = function(Shooter, Velocity, MinDam, MaxDam, SIZe)
  local Bullet = Instance.new("Part", F2)
  Bullet.BrickColor = BrickColor.new("Dark indigo")
  Bullet.Material = "Neon"
  Bullet.Transparency = 0.5
  Bullet.CanCollide = false
  Bullet.Name = "Bullet"
  Bullet.Anchored = false
  Bullet.Locked = true
  Bullet.Size = SIZe
  Bullet.Shape = "Ball"
  Bullet.CFrame = Shooter.CFrame
  local BVel = Instance.new("BodyVelocity", Bullet)
  BVel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  BVel.Velocity = Shooter.CFrame.lookVector * Velocity
  local bill = Instance.new("BillboardGui")
  bill.Parent = Shooter
  bill.Name = "pew"
  bill.Size = UDim2.new(1.6, 0, 1.6, 0)
  local IL = Instance.new("ImageLabel")
  IL.Parent = bill
  IL.Name = "Flash"
  IL.BackgroundTransparency = 1
  IL.Size = UDim2.new(1, 0, 1, 0)
  IL.Image = "rbxasset://textures/particles/sparkles_main.dds"
  IL.ImageColor3 = Color3.new(0.66666666666667, 0, 1)
  local Flash = Instance.new("PointLight", Shooter)
  Flash.Brightness = 100
  Flash.Color = IL.ImageColor3
  Flash.Range = 10
  Flash.Shadows = true
  so("http://roblox.com/asset/?id=200633327", Shooter, 1, 0.7)
  game:GetService("Debris"):AddItem(Bullet, 10)
  game:GetService("Debris"):AddItem(bill, 0.1)
  game:GetService("Debris"):AddItem(Flash, 0.1)
  local BoomEffect = function(Cframe)
    local Boo = Instance.new("Part", F2)
    Boo.BrickColor = BrickColor.new("Dark indigo")
    Boo.Transparency = 0.5
    Boo.Material = "Neon"
    Boo.Anchored = true
    Boo.CanCollide = false
    Boo.CFrame = Cframe
    game:GetService("Debris"):AddItem(Bullet, 0)
    Boo.Size = Vector3.new(Bullet.Size.X * 10, Bullet.Size.X * 10, Bullet.Size.X * 10)
    MagniDamage(Boo, Bullet.Size.X * 10 * 2, MinDam + 5, MaxDam + 5, 1, "Breaker")
    so("http://roblox.com/asset/?id=206082273", Shooter, 0.5, 1)
    local BooM = Instance.new("SpecialMesh", Boo)
    BooM.MeshType = "Sphere"
    for i = 0.5, 2, 0.3 do
      wait()
      BooM.Scale = Vector3.new(i * 2, i * 2, i * 2)
      Boo.Transparency = i / 2
    end
    game:GetService("Debris"):AddItem(Boo, 0)
  end

  local HitSomething = false
  Bullet.Touched:connect(function(part)
    local HUM = FindHum(part.Parent)
    do
      if HUM and HUM ~= Humanoid and not HitSomething then
        local Tor = part.Parent:FindFirstChild("Torso")
        if Tor then
          HitSomething = true
          Damagefunc(Tor, MinDam / 2, MaxDam / 2, 10, "Breaker", RootPart, 0.2, 0.5, 1)
          BoomEffect(Bullet.CFrame)
        end
      end
      if not HUM and not HitSomething and part.Anchored == true and part.Name ~= "Effect" and part.Name ~= "Handle" then
        BoomEffect(Bullet.CFrame)
      end
    end
  end
)
end

local StopLaser = false
FireLaser = function(Shooter, Duration, Range, Size, minDam, maxDam, BuildUp, FirstMes, LastMes, message)
  local BeamStart = Instance.new("Part", F2)
  BeamStart.BrickColor = BrickColor.new("Dark indigo")
  BeamStart.Material = "Neon"
  BeamStart.Transparency = 0
  BeamStart.Name = "BeamStart"
  BeamStart.Anchored = false
  BeamStart.CanCollide = false
  BeamStart.Locked = true
  BeamStart.Size = Size
  BeamStart.CFrame = Shooter.CFrame
  local BSMesh = Instance.new("SpecialMesh", BeamStart)
  BSMesh.MeshType = "Sphere"
  local BSWeld = Instance.new("Weld", BeamStart)
  BSWeld.Part0 = Shooter
  BSWeld.Part1 = BeamStart
  BSWeld.C0 = CFrame.new(0, 0, -(Size.Z / 2))
  if message then
    chatServ:Chat(Head, FirstMes, 2)
  end
  if BuildUp > 0.008 then
    BSMesh.Scale = Vector3.new(0, 0, 0)
    local BeamCharge = Instance.new("Sound", BeamStart)
    BeamCharge.Volume = 1
    BeamCharge.SoundId = "http://roblox.com/asset/?id=244578827"
    BeamCharge.Pitch = 0.8
    BeamCharge:Play()
    for i = 0, BuildUp, 0.008 do
      wait()
      BSMesh.Scale = Vector3.new(i / BuildUp, i / BuildUp, i / BuildUp)
      BSWeld.C0 = CFrame.new(0, 0, -(i * (Size.Z / 2) / BuildUp))
      BeamStart.Transparency = (-BuildUp + i) * -1
      MagicBlood(BrickColor.new("Dark indigo"), Shooter.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.1, 0.1, 0.1, 0.1, 2, 0.1, 0.05)
    end
    BeamCharge:Pause()
    game:GetService("Debris"):AddItem(BeamCharge, 0)
  end
  do
    if message then
      chatServ:Chat(Head, LastMes, 2)
    end
    local Beam = Instance.new("Part", F2)
    Beam.BrickColor = BrickColor.new("Dark indigo")
    Beam.Material = "Neon"
    Beam.Name = "Beam"
    Beam.Transparency = 0
    Beam.Anchored = true
    Beam.CanCollide = false
    Beam.Locked = true
    local BeamMesh = Instance.new("SpecialMesh", Beam)
    BeamMesh.MeshType = "Cylinder"
    local BeamEnd = Instance.new("Part", F2)
    BeamEnd.BrickColor = BrickColor.new("Dark indigo")
    BeamEnd.Material = "Neon"
    BeamEnd.Transparency = 0
    BeamEnd.Name = "BeamEnd"
    BeamEnd.Anchored = true
    BeamEnd.CanCollide = false
    BeamEnd.Locked = true
    BeamEnd.Size = Vector3.new(Size.X, Size.X, Size.X)
    local BEMesh = Instance.new("SpecialMesh", BeamEnd)
    BEMesh.MeshType = "Sphere"
    local BeamFire = Instance.new("Sound", Beam)
    BeamFire.Volume = 1
    BeamFire.PlayOnRemove = true
    BeamFire.SoundId = "http://roblox.com/asset/?id=376107717"
    BeamFire.Pitch = 1
    BeamFire:Destroy()
    game:GetService("Debris"):AddItem(BeamFire, 5)
    local BeamSound = Instance.new("Sound", Beam)
    BeamSound.Volume = 1
    BeamSound.Looped = true
    BeamSound.SoundId = "http://roblox.com/asset/?id=254847708"
    BeamSound.Pitch = 1
    BeamSound:Play()
    local TEM = 0
    local run = runServ:connect(function()
    local Hit, Pos = rayCast(BeamStart.Position, BeamStart.CFrame.lookVector, 999, Character)
    Beam.Size = Vector3.new((BeamStart.CFrame.p - Pos).magnitude, Size.X, Size.X)
    Beam.CFrame = CFrame.new((BeamStart.CFrame.p + Pos) / 2, BeamStart.CFrame.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
    BeamEnd.CFrame = CFrame.new(Pos)
    if Hit and Beam.Transparency == 0 then
      MagicBlock(BrickColor.new("Dark indigo"), BeamEnd.CFrame * cf(math.random(-200, 200) / 100, -math.random(0, 1) / 100, math.random(-200, 200) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, Size.X * 2, Size.X * 2, Size.X * 2, 0.05)
    end
  end
)
    local run2 = runServ:connect(function()
    MagniDamage(BeamEnd, Range, minDam, maxDam, 1, "Breaker")
    MagniDamage(Beam, Range, minDam * 4, maxDam * 4, 1, "LifeSteal")
  end
)
    repeat
      TEM = TEM + 0.1
      wait()
    until Duration - 1 < TEM or StopLaser
    StopLaser = false
    so("http://roblox.com/asset/?id=161006163", Shooter, 1, 0.4)
    BeamSound:Pause()
    game:GetService("Debris"):AddItem(BeamSound, 0)
    for i = 0, 1, 0.04 do
      wait()
      BeamStart.Transparency = i
      Beam.Transparency = i
      BeamEnd.Transparency = i
      BSMesh.Scale = Vector3.new((-1 + i) * -1, (-1 + i) * -1, 1)
      BeamMesh.Scale = Vector3.new(1, (-1 + i) * -1, (-1 + i) * -1)
      BEMesh.Scale = Vector3.new((-1 + i) * -1, (-1 + i) * -1, 1)
    end
    run:disconnect()
    run2:disconnect()
    game:GetService("Debris"):AddItem(BeamStart, 0)
    game:GetService("Debris"):AddItem(Beam, 0)
    game:GetService("Debris"):AddItem(BeamEnd, 0)
  end
end

local CanLaser = true
local Hover = false
local CMHP = false
local MadePlatform = false
local HovLaser = false
CreateGround = function()
  local G1 = Instance.new("Part", workspace)
  local G2 = Instance.new("Part", workspace)
  G1.BrickColor = BrickColor.new("Earth green")
  G2.BrickColor = BrickColor.new("Pine Cone")
  G1.Material = "Grass"
  G1.Name = "GrassBaseplate"
  G1.Anchored = true
  G1.Locked = true
  G1.Size = Vector3.new(2048, 10, 2048)
  G1.CFrame = RootPart.CFrame * CFrame.new(0, -3 - G1.Size.Y / 2, 0)
  G2.CFrame = G1.CFrame * CFrame.new(0, -5 - G2.Size.Y / 2, 0)
  return G1, G2
end

CreateMiniPlatforms = function()
  if not CMHP then
    CMHP = true
    local Plat = Instance.new("Part", workspace)
    do
      Plat.BrickColor = BrickColor.new("Dark indigo")
      Plat.Transparency = 0.8
      Plat.Name = "Platform"
      Plat.Material = "Neon"
      Plat.Anchored = true
      Plat.CanCollide = true
      Plat.Locked = true
      Plat.Size = Vector3.new(10, 10, 1)
      Plat.CFrame = RootPart.CFrame * CFrame.new(0, -4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
      local PMesh = Instance.new("SpecialMesh", Plat)
      PMesh.MeshType = "Sphere"
      local gh = function()
    if HovLaser then
      FireLaser(Plat, 0, 8, Vector3.new(3.6, 3.6, 6.8), 100, 300, 0, _, _, false)
    end
  end

      delay(0.1, gh)
      CMHP = false
      for i = 0.8, 1, 0.04 do
        wait()
        Plat.Transparency = i
        Plat.Parent = F2
      end
      game:GetService("Debris"):AddItem(Plat, 0)
    end
  end
end

runServ:connect(function()
  if Hover and Humanoid.Health > 0.1 then
    CreateMiniPlatforms()
  end
end
)
Humanoid.Changed:connect(function()
  if Humanoid.Health < 0.1 then
    game:GetService("Debris"):AddItem(Grass, 0)
    --game:GetService("Debris"):AddItem(Dirt, 0)
  end
end
)
key = function(key)
  if key == "j" then
    Hover = not Hover
  end
  if key == "l" and Hover and not HovLaser then
    HovLaser = true
    wait(0.001)
    HovLaser = false
  end
  if key == "k" then
    if not MadePlatform then
      MadePlatform = true
      Grass = CreateGround()
      Hover = false
    else
      MadePlatform = false
      game:GetService("Debris"):AddItem(Grass, 0)
      game:GetService("Debris"):AddItem(Dirt, 0)
    end
  end
  if key == "q" and not Firing and DCOn and CanUseCannon then
    Firing = true
    keyConnect = MMouse.KeyUp:connect(function(key)
    if key == "q" and Firing then
      Firing = false
    end
  end
)
    repeat
      wait(0.1)
      if C == 1 then
        C = 2
        FireBullet(CHole1, 800, 1, 5, Vector3.new(0.5, 0.5, 0.5))
      else
        if C == 2 then
          C = 1
          FireBullet(CHole2, 800, 1, 5, Vector3.new(0.5, 0.5, 0.5))
        end
      end
    until not Firing
    keyConnect:disconnect()
  end
  if key == "p" and not Firing and DCOn and CanUseCannon and Player.UserId == 43981323 then
    Firing = true
    keyConnect = MMouse.KeyUp:connect(function(key)
    if key == "p" and Firing then
      StopLaser = true
      CanLaser = false
      wait(20)
      Firing = false
      wait(50)
      CanLaser = true
      keyConnect:disconnect()
    end
  end
)
    if C == 1 then
      C = 2
      FireLaser(CHole1, math.huge, 300, Vector3.new(150.8, 150.8, 1186), 6000000, 90000000, 10, "You made me do this..", "Planet buster!", true)
    else
      if C == 2 then
        C = 1
        FireLaser(CHole2, math.huge, 300, Vector3.new(150.8, 150.8, 1186), 6000000, 90000000, 10, "You made me do this..", "Planet buster!", true)
      end
    end
  end
  if key == "e" and DCOn and CanUseCannon and not Firing then
    if C == 1 then
      C = 2
      FireBullet(CHole1, 50, 60, 90, Vector3.new(0.6, 0.6, 0.6))
    else
      if C == 2 then
        C = 1
        FireBullet(CHole2, 50, 60, 90, Vector3.new(0.6, 0.6, 0.6))
      end
    end
  end
  if key == "r" and DCOn and CanUseCannon and not Firing then
    if C == 1 then
      C = 2
      FireBullet(CHole1, 300, 5, 20, Vector3.new(0.3, 0.3, 0.3))
    else
      if C == 2 then
        C = 1
        FireBullet(CHole2, 300, 5, 20, Vector3.new(0.3, 0.3, 0.3))
      end
    end
  end
  if key == "t" and DCOn and CanUseCannon and not Firing then
    Firing = true
    FireBullet(CHole2, 10, 100, 200, Vector3.new(6, 6, 6))
    wait(1.5)
    Firing = false
  end
  if key == "y" and DCOn and CanUseCannon and not Firing and CanLaser then
    Firing = true
    FireLaser(CHole1, 25, 10, Vector3.new(4.6, 4.6, 8.8), 60, 100, 1, "Were you ready for this?..", "Nether Blast!", true)
    wait(10)
    Firing = false
  end
  if key == "u" and DCOn and CanUseCannon and not Firing and CanLaser then
    Firing = true
    CanLaser = false
    FireLaser(CHole2, 10, 40, Vector3.new(20.8, 20.8, 46), 600000, 9000000, 1.5, "This time, it\'s over!", "Nether Obliterator!", true)
    wait(20)
    Firing = false
    wait(40)
    CanLaser = true
  end
  if key == "h" and DCOn and CanUseCannon and not Firing and CanLaser then
    if C == 1 then
      C = 2
      FireLaser(CHole1, 0.3, 2, Vector3.new(0.3, 0.3, 2.5), 5, 20, 0, _, _, false)
    else
      if C == 2 then
        C = 1
        FireLaser(CHole2, 0.3, 2, Vector3.new(0.3, 0.3, 2.5), 5, 20, 0, _, _, false)
      end
    end
  end
  if key == "g" and DCOn and CanUseCannon and not Firing and CanLaser then
    Firing = true
    keyConnect = MMouse.KeyUp:connect(function(key)
    if key == "g" and DCOn and CanUseCannon and Firing then
      Firing = false
      StopLaser = true
      CanLaser = false
      wait(3)
      CanLaser = true
      keyConnect:disconnect()
    end
  end
)
    if C == 1 then
      C = 2
      FireLaser(CHole1, math.huge, 6, Vector3.new(2, 2, 4.2), 20, 40, 1, "How about...", "This!?", true)
    else
      if C == 2 then
        C = 1
        FireLaser(CHole2, math.huge, 6, Vector3.new(2, 2, 4.2), 20, 40, 1, "How about...", "This!?", true)
      end
    end
  end
  if key == "m" then
    MomentumCancel = not MomentumCancel
    if MomentumCancel then
      chatServ:Chat(Head, "Negator: Active", 2)
    else
      chatServ:Chat(Head, "Negator: Inactive", 2)
    end
  end
  if key == "n" then
    if not nostop then
      nostop = true
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
      chatServ:Chat(Head, "Stablize Armour! Can\'t knock me down so easily now, huh?", 2)
    else
      nostop = false
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
      chatServ:Chat(Head, "Armour Break! Maybe I\'ll go easy..", 2)
    end
  end
  if key == "c" then
    if guard == true then
      guard = false
    else
      guard = true
    end
  end
  if key == "x" then
    holdx = true
  end
  if attack == true then
    return 
  end
  if key == "f" then
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
      equipanim()
    elseif equipped == true then
      equipped = false
      damagebonus = 1
      hideanim()
      swait(0)
      RW.Parent = nil
      LW.Parent = nil
      RSH.Parent = player.Character.Torso
      LSH.Parent = player.Character.Torso
	  attack = false
    end
  end
  if equipped == false then
    return 
  end
  if Mode == "Binary" then
    if key == "q" then
      idle = 500
    end
    if key == "z" and hitfloor ~= nil then
      BinarySwing()
    end
    if key == "x" then
      BinaryImpulse()
    end
    if key == "c" then
      Bash()
    end
    if key == "v" then
      damagebonus = 50
      UnleashTheDemon()
    end
  end
  if Mode == "Demon" then
    if key == "z" and not Firing then
      if not DCOn then
        DemonCannon()
        DCOn = true
      else
        HideDemonCannon()
        DCOn = false
      end
    end
    if key == "x" then
      LetItBuild()
    end
    if key == "c" then
      YourMoveCreep()
    end
    if key == "b" then
      TCtrl = not TCtrl
      if TCtrl then
        TimeControl()
      end
    end
  end
  if key == "0" then
    Humanoid.WalkSpeed = 256
  end
end

key2 = function(key)
  if key == "0" then
    Humanoid.WalkSpeed = 16
  end
  if key == "x" then
    holdx = false
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
print("Fixer the Demon Mercenary loaded.")
runServ:connect(function()
  if DCOn and CanUseCannon then
    local CCF = CFrame.new(CM2.Position, Vector3.new(MMouse.Hit.p.X, MMouse.Hit.p.Y, MMouse.Hit.p.Z))
    CPos.Position = CM2.Position
    CGyro.CFrame = CCF
    CPos.P = 50000
  end
end
)
local thenum = 0
while true do
  swait()
  if Mode == "Demon" then
    if 5 <= thenum then
      thenum = 0
    end
    thenum = thenum + 1
    if Humanoid.MaxHealth / 10 < Humanoid.Health then
      Humanoid.Health = Humanoid.Health - Humanoid.Health / 1000
    end
    for _,c in pairs(Character:children()) do
      for _,v in pairs(c:children()) do
        if (v.className == "BodyGyro" or v.className == "BodyPosition" or v.className == "BodyVelocity" or v.className == "BodyAngularVelocity") and v.Name ~= "FixerVel" and v.Name ~= "FixerGyro" then
          v.Parent = nil
        end
      end
    end
  end
    local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y
    hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if equipped == true then
      if Anim == "Idle" and attack == false and Mode == "Binary" then
        idle = idle + 1
      else
        idle = 0
      end
      if 0.3 <= idleanim then
        idleanim2 = true
      else
        if idleanim <= 0 then
          idleanim2 = false
        end
      end
      if idleanim2 == false then
        if Anim == "Walk" then
          idleanim = idleanim + 0.005
        else
          if Anim == "Idle" then
            idleanim = idleanim + 0.003
          end
        end
      else
        if Anim == "Walk" then
          idleanim = idleanim - 0.005
        else
          if Anim == "Idle" then
            idleanim = idleanim - 0.003
          end
        end
      end
      if 1 < RootPart.Velocity.y and hitfloor == nil then
        Anim = "Jump"
        if attack == false and Mode == "Binary" then
          wld1.C0 = clerp(wld1.C0, euler(0.4, 0, -0.5) * cf(0, 1, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, -0.2), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.5, -1) * euler(-0.5, 1.57, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.7, -1.57, 0), 0.2)
        end
        if attack == false and Mode == "Demon" then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 0.8) * euler(0.1, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.1) * euler(0.1, 1.57, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.3, -0.2) * euler(0.4, -1.57, 0) * euler(0, 0, 0), 0.3)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false and Mode == "Binary" then
            wld1.C0 = clerp(wld1.C0, euler(0.4, 0, -0.5) * cf(0, 1, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.6, 0, -0.2), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.4, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
          if attack == false and Mode == "Demon" then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, 0), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.6, 0, 0.5), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -1), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.1) * euler(-0.1, 1.57, 0), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.2) * euler(0.8, -1.57, 0) * euler(0, 0, 0), 0.3)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            if Anim == "Fall" and velderp <= -120 then
              coroutine.resume(coroutine.create(function()
  Stomp()
end
))
            end
            Anim = "Idle"
            if idle <= 500 then
              if attack == false and Mode == "Binary" then
                wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.5), 0.3)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
                RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1 - (idleanim) / 4, -0.5 + (idleanim), -0.7 + (idleanim) / 2), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1 + (idleanim), 0.5 - (idleanim), -0.5) * euler(1 - (idleanim), -0.5 + (idleanim), 0.5), 0.3)
                RH.C0 = clerp(RH.C0, RHC0, 0.2)
                LH.C0 = clerp(LH.C0, LHC0, 0.2)
              end
              if attack == false and Mode == "Demon" then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5 - (idleanim)) * euler(0.4 + (idleanim) / 2, 0, -0.4), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-(idleanim) / 2, 0, 0.4), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.1 + (idleanim), 0, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2 - (idleanim)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, -(idleanim)) * euler(-0.2 - (idleanim) / 2, 1.57, 0), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.5 + (idleanim), 0) * euler(0.5 + (idleanim) / 2, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
              end
            else
              if attack == false and Mode == "Binary" then
                wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.1)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1 + (idleanim) / 2, 0, 0), 0.1)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.1, 0, 0), 0.1)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2), 0.1)
                LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.3) * euler(1.4, 0, 0.8), 0.1)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(-1.2, 1.57, 0), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1.1, 0.4, -0.8) * euler(-0.05, -1.57, 0), 0.15)
              end
            end
          else
            if 2 < torvel and torvel < 22 and hitfloor ~= nil then
              if Anim == "Fall" and velderp <= -120 then
                coroutine.resume(coroutine.create(function()
  Stomp()
end
))
              end
              Anim = "Walk"
              if attack == false and Mode == "Binary" then
                wld1.C0 = clerp(wld1.C0, euler(0.4, 0, -0.5) * cf(0, 1, 0), 0.2)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3 - (idleanim), 0, -0.2 + (idleanim) / 2), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, -((idleanim) / 2), 1.3 - (idleanim) / 2), 0.2)
                RH.C0 = clerp(RH.C0, RHC0, 0.3)
                LH.C0 = clerp(LH.C0, LHC0, 0.3)
              end
              if attack == false and Mode == "Demon" then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, 0), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.2, 0, 0.2 + (idleanim)), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(idleanim, 0, -0.2), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.5, 0) * euler(0.2, 1.57, 0), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.5, 0) * euler(0.5, -1.57, 0) * euler(0, 0, 0), 0.3)
              end
            else
              if 22 <= torvel and hitfloor ~= nil then
                if Anim == "Fall" and velderp <= -120 then
                  coroutine.resume(coroutine.create(function()
  Stomp()
end
))
                end
                Anim = "Run"
                if attack == false and Mode == "Binary" then
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.3, 0, 0.5), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.5, 0, -0.5), 0.4)
                  wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.2, -0.8, -0.2), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-0.7, 0.5, -0.7) * euler(1.2, -0.5, 0.8), 0.4)
                  RH.C0 = clerp(RH.C0, RHC0 * cf(0, 0, 0) * euler(0.2, 0.2, 0.5), 0.3)
                  LH.C0 = clerp(LH.C0, LHC0 * cf(0.5, 0.2, 0) * euler(0, 0.5, 0.2), 0.3)
                end
                if attack == false and Mode == "Demon" then
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.5, 0, -0.4), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0.4), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.2, 0, 0.4), 0.3)
                  LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(1.5, 0, 0), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -0.3, -0.5) * euler(-0.2, 2, 0) * euler(0, 0, 0), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0.5, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
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
            if Thing[1].Transparency <= 1 then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                Mesh = Thing[1]:FindFirstChild("Mesh")
                if not Mesh then
                  Mesh = Instance.new("BlockMesh")
                end
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Cylinder" then
                  Mesh = Thing[1]:FindFirstChild("Mesh")
                  if not Mesh then
                    Mesh = Instance.new("BlockMesh")
                  end
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Blood" then
                    Mesh = Thing[1]:FindFirstChild("Mesh")
                    if not Mesh then
                      Mesh = Instance.new("BlockMesh")
                    end
                    Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  elseif Thing[2] == "Elec" then
                      Mesh = Thing[1]:FindFirstChild("Mesh")
                      if not Mesh then
                        Mesh = Instance.new("BlockMesh")
                      end
                      Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    elseif Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      end
            else
              Part.Parent = nil
              game:GetService("Debris"):AddItem(Part, 0)
              table.remove(Effects, e)
            end
          end
        end
      end
    end
  end
