Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
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
local mananum = 0
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RailgunTarget = RootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = false
hand = false
MMouse = nil
combo = 0
mana = 100
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
local shoot = false
player = nil
mana = 0
mouse = Player:GetMouse()
RSH, LSH = nil, nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
local Tool
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Binary Sword"
  script.Parent = Tool
end
Bin = script.Parent
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position = UDim2.new(0.4, 0, 0.1, 0)
local fenbarmana1 = it("TextLabel")
fenbarmana1.Parent = fenframe
fenbarmana1.Text = " "
fenbarmana1.BackgroundTransparency = 0
fenbarmana1.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana1.SizeConstraint = "RelativeXY"
fenbarmana1.TextXAlignment = "Center"
fenbarmana1.TextYAlignment = "Center"
fenbarmana1.Position = UDim2.new(0, 0, 0, 0)
fenbarmana1.Size = UDim2.new(4, 0, 0.2, 0)
local fenbarmana2 = it("TextLabel")
fenbarmana2.Parent = fenframe
fenbarmana2.Text = " "
fenbarmana2.BackgroundTransparency = 0
fenbarmana2.BackgroundColor3 = Torso.Color
fenbarmana2.SizeConstraint = "RelativeXY"
fenbarmana2.TextXAlignment = "Center"
fenbarmana2.TextYAlignment = "Center"
fenbarmana2.Position = UDim2.new(0, 0, 0, 0)
fenbarmana2.Size = UDim2.new(4 * mana / 100, 0, 0.2, 0)
local fenbarmana3 = it("TextLabel")
fenbarmana3.Parent = fenframe
fenbarmana3.Text = " "
fenbarmana3.BackgroundTransparency = 0
fenbarmana3.BackgroundColor3 = Color3.new(Col1, Col2, Col3)
fenbarmana3.SizeConstraint = "RelativeXY"
fenbarmana3.TextXAlignment = "Center"
fenbarmana3.TextYAlignment = "Center"
fenbarmana3.Position = UDim2.new(0, 0, 0, 0)
fenbarmana3.Size = UDim2.new(0, 0, 0.2, 0)
local fenbarmana4 = it("TextLabel")
fenbarmana4.Parent = fenframe
fenbarmana4.Text = "Energy(" .. mana .. ")"
fenbarmana4.BackgroundTransparency = 1
fenbarmana4.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana4.SizeConstraint = "RelativeXY"
fenbarmana4.TextXAlignment = "Center"
fenbarmana4.TextYAlignment = "Center"
fenbarmana4.Position = UDim2.new(0, 0, -0.3, 0)
fenbarmana4.Size = UDim2.new(4, 0, 0.2, 0)
fenbarmana4.FontSize = "Size9"
fenbarmana4.TextStrokeTransparency = 0
fenbarmana4.TextColor = BrickColor.new("White")
function NoOutline(Part)
  Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
player = Player
ch = Character
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
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333333
if Player.FPSCH.Value == true then
  frame = 0.016666666666666666
else
  frame = 0.03333333333333333
end
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
function nooutline(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
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
function mesh(Mesh, part, meshtype, meshid, offset, scale)
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
function weld(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function Triangle(a, b, c)
  local edg1 = (c - a):Dot((b - a).unit)
  local edg2 = (a - b):Dot((c - b).unit)
  local edg3 = (b - c):Dot((a - c).unit)
  if edg1 <= (b - a).magnitude and edg1 >= 0 then
    a, b = a, b
  elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
    a, b, c = b, c, a
  elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
    a, b, c = c, a, b
  else
    assert(false, "unreachable")
  end
  local len1 = (c - a):Dot((b - a).unit)
  local len2 = (b - a).magnitude - len1
  local width = (a + (b - a).unit * len1 - c).magnitude
  local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
  local list = {}
  local Color = BrickColor.new("Dark grey")
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(Color)
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
    table.insert(Effects, {
      w1,
      "Disappear",
      0.01
    })
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  if len2 > 0.01 then
    local w2 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w2, 5)
    w2.Material = "SmoothPlastic"
    w2.FormFactor = "Custom"
    w2.BrickColor = BrickColor.new(Color)
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
    table.insert(Effects, {
      w2,
      "Disappear",
      0.01
    })
    w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
    table.insert(list, w2)
  end
  return unpack(list)
end
function so(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
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
function rayCast(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function MMMAGIC(part, x1, y1, z1, x2, y2, z2, color)
  local msh1 = Instance.new("BlockMesh")
  msh1.Scale = Vector3.new(0.5, 0.5, 0.5)
  S = Instance.new("Part")
  S.Name = "Effect"
  S.formFactor = 0
  S.Size = Vector3.new(x1, y1, z1)
  S.BrickColor = color
  S.Reflectance = 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = part.CFrame * CFrame.new(x2, y2, z2) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  S.Parent = Character
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 1, 9 do
      Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1, 0.1, 0.1)
      Part.CFrame = Part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      Part.Transparency = i * 0.1
      swait()
    end
    Part.Parent = nil
  end), S, S.CFrame)
end
function Damagefunc1(hit, Damage, Knockback)
  if hit.Parent == nil then
    return
  end
  CPlayer = Bin
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil and attackdebounce == false then
    attackdebounce = true
    coroutine.resume(coroutine.create(function()
      wait(0.2)
      attackdebounce = false
    end))
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game.Players.LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    Damage = math.floor(Damage + math.random(-2, 2)) * 0.7
    blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print("herp")
      if block.Value > 0 then
        blocked = true
        block.Value = block.Value - 1
        print(block.Value)
      end
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained spree")
        Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
      end
      showDamage(hit.Parent, Damage, 0.5)
    else
      Damage = Damage / 2
      h.Health = h.Health - Damage / 2
      showDamage(hit.Parent, Damage, 0.5)
    end
    vp = Instance.new("BodyVelocity")
    vp.P = 500
    vp.maxForce = Vector3.new(math.huge, 0, math.huge)
    vp.velocity = RootPart.CFrame.lookVector * Knockback + RootPart.Velocity / 1.05
    if Knockback > 0 then
      vp.Parent = hit.Parent.Torso
    end
    game:GetService("Debris"):AddItem(vp, 0.25)
    game:GetService("Debris"):AddItem(r, 0.5)
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
function Damagefunc(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
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
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    Damage = math.random(minim, maxim)
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
      h.Health = h.Health - Damage
      showDamage(hit.Parent, Damage, 0.5, BrickColor.new("New Yeller"))
    else
      h.Health = h.Health - Damage / 2
      showDamage(hit.Parent, Damage / 2, 0.5, BrickColor.new("Bright blue"))
    end
    if Type == "Knockdown" then
      hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        HHumanoid.PlatformStand = false
      end), hum)
      local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
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
    elseif Type == "Normal" then
      vp = Instance.new("BodyVelocity")
      vp.P = 500
      vp.maxForce = Vector3.new(math.huge, 0, math.huge)
      if KnockbackType == 1 then
        vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      elseif KnockbackType == 2 then
        vp.velocity = Property.CFrame.lookVector * knockback
      end
      if knockback > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
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
    elseif Type == "Snare" then
      bp = Instance.new("BodyPosition")
      bp.P = 2000
      bp.D = 100
      bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      bp.position = hit.Parent.Torso.Position
      bp.Parent = hit.Parent.Torso
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Target" and Targetting == false then
      ZTarget = hit.Parent.Torso
      coroutine.resume(coroutine.create(function(Part)
        so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
        swait(5)
        so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
      end), ZTarget)
      TargHum = ZTarget.Parent:findFirstChild("Humanoid")
      targetgui = Instance.new("BillboardGui")
      targetgui.Parent = ZTarget
      targetgui.Size = UDim2.new(10, 100, 10, 100)
      targ = Instance.new("ImageLabel")
      targ.Parent = targetgui
      targ.BackgroundTransparency = 1
      targ.Image = "rbxassetid://4834067"
      targ.Size = UDim2.new(1, 0, 1, 0)
      cam.CameraType = "Scriptable"
      cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
      dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
      workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
      Targetting = true
      RocketTarget = ZTarget
      for i = 1, Property do
        if 0 < Humanoid.Health and Character.Parent ~= nil and 0 < TargHum.Health and TargHum.Parent ~= nil and Targetting == true then
          swait()
        end
        cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
        dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
        cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
      end
      Targetting = false
      RocketTarget = nil
      targetgui.Parent = nil
      cam.CameraType = "Custom"
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
function showDamage(Char, Dealt, du, Color)
  m = Instance.new("Model")
  m.Name = tostring(Dealt)
  h = Instance.new("Humanoid")
  h.Health = 0
  h.MaxHealth = 0
  h.Parent = m
  c = Instance.new("Part")
  c.Transparency = 0
  c.BrickColor = Color
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.formFactor = "Plate"
  c.Size = Vector3.new(1, 0.4, 1)
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  if CRIT == true then
    ms.Scale = Vector3.new(1, 1.25, 1)
  end
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = CFrame.new(Char.Head.CFrame.p + Vector3.new(0, 1.5, 0))
  elseif Char.Parent:findFirstChild("Head") ~= nil then
    c.CFrame = CFrame.new(Char.Parent.Head.CFrame.p + Vector3.new(0, 1.5, 0))
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 0.5 + du)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
end
HandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "HandleA", Vector3.new(0.6209023, 0.354801297, 0.263675183))
HandleAweld = weld(m, Character["Right Arm"], HandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.712272644, -0.658613205, -0.0450134277, 0, -0.499999821, -0.86602509, 0, -0.866024971, 0.499999881, -1, 0, 0))
BarrelA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BarrelA", Vector3.new(0.266101122, 0.263675213, 0.354801387))
BarrelAweld = weld(m, HandleA, BarrelA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.65196991, -3.61154366, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", BarrelA, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303008, 0.532201946, 0.709602773))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.47013092, -1.24765587, -4.57763672E-5, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.443501562, 0.263675213, 0.6209023))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.115322113, 0, 0.316355348, 0.866025031, -0.499999583, 0, 0, 0, 1, -0.499999583, -0.866025031, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.354801446, 0.270536005, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.651966095, -3.5117569, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.647537231, 0.228363037, -0.582419634, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.44350177, 1.86270726, 0.532202065))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.647533417, -2.71123719, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, 0.221725464, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, 0.228363037, -0.405021667, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, 0.228363037, -0.759824157, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.292743683, 0.228363037, -0.582422733, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, -0.22177124, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, -0.228408813, -0.405021667, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.647537231, -0.228408813, -0.582419634, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.292743683, -0.228408813, -0.582422733, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, -0.223960876, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, -0.228408813, -0.759824157, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00384521484, 0.00221633911, 0, 0.999999344, 0, 0, 0, 0.999999344, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 0.70644027))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.957988739, -0.493718386, -0.133056641, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672799945, 1, 0.336399972))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.6209023, 0.263675213, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.470127106, -0.094623208, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.798303008, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.824935913, -0.582421541, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.913650513, -0.582422614, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.957988739, -0.493718386, 0.133049011, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672799945, 1, 0.336399972))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.354801267, 0.263675213, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929E-7, 0, 0, 0, 1, 1.1920929E-7, -0.999999583, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.354801267, 0.266100973, 0.363671392))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.514480591, -0.138983727, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.869281769, -2.71124148, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672800481, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.354801297, 0.263675213, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929E-7, 0, 0, 0, 1, 1.1920929E-7, -0.999999583, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.706439912, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.425792694, -2.71124005, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672800481, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.354801446, 0.443501711, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.159671783, -3.33218336, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.266101062, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00234604, -3.33218288, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.354801446, 1.33050513, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.337085724, -2.44513679, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303068, 0.263675213, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.47013092, -1.55811501, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.532201946, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.824932098, -1.24765778, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.6209023, 0.798303008, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.470127106, -0.582418799, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.913650513, -1.38070595, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.532202065, 0.263675213, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.603176117, -1.69116795, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672800183, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.443501592, 0.354801387))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.115318298, -1.29201102, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.115318298, 0, 0.9815588, 0.866024911, -0.499999762, 0, 0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800183))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0709648132, 0, 0.981558442, 0.866024911, -0.499999762, 0, 0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672799706, 1, 0.672800183))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.824932098, -0.0946245193, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Wedge", Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.425788879, 0.0384018421, 5.16191072E-8, -2.98023082E-8, -0.999999702, -0.866024613, 0.499999583, -5.96046448E-8, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672800004, 0.336399972))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Wedge", Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.603176117, 0.0384008884, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672800004, 0.336399972))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.354801297, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.337089539, 0.0383994579, 3.87143366E-8, -2.23517329E-8, -0.999999583, -0.866024613, 0.499999613, -4.47034836E-8, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.336399972))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.354801297, 0.354801297))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.306602478, 0.17517662, 0, 0, -1, 0.999999583, 1.1920929E-7, 0, 1.1920929E-7, -0.999999583, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672799945, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.354801297, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.159656525, -3.0217073, 4.16935109E-7, 5.17906784E-8, -0.999999404, -0.866022944, 0.500002921, -3.35181227E-7, 0.500002861, 0.866022885, 1.04308128E-7))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 1, 0.672799945))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.00234604, 3.55395985, -7.45057704E-9, -1.29047768E-8, -0.999999762, 0.866024911, -0.499999762, 0, -0.499999613, -0.866024792, 1.49011612E-8))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.00234604, -3.11040449, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.869285583, -0.0946269035, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 0.672799945, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.133049011, -0.957988739, -0.272016048, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.133056641, -0.957988739, -0.272016048, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.204036713, 1.69116926, 7.38661754E-9, -1.06415222E-7, 0.999999702, -0.866022885, 0.500002861, 5.96046448E-8, -0.50000298, -0.866023242, -8.84652422E-8))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672799945))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld = weld(m, HandleA, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.647533417, 0.038402319, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.336399972))
mesh("BlockMesh", HandleA, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672800243))
HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "HandleB", Vector3.new(0.6209023, 0.354801297, 0.263675183))
HandleBweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.712272644, -0.658613205, 0.044960022, 0, -0.499999821, -0.86602509, 0, -0.866024971, 0.499999881, -1, 0, 0))
BarrelB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BarrelB", Vector3.new(0.266101122, 0.263675213, 0.354801387))
BarrelBweld = weld(m, HandleB, BarrelB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.65196991, -3.61154366, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", BarrelB, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303008, 0.532201946, 0.709602773))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.47013092, -1.24765587, -4.57763672E-5, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.443501562, 0.263675213, 0.6209023))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.115322113, 0, 0.316355348, 0.866025031, -0.499999583, 0, 0, 0, 1, -0.499999583, -0.866025031, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.354801446, 0.270536005, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.651966095, -3.5117569, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.647537231, 0.228363037, -0.582419634, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.44350177, 1.86270726, 0.532202065))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.647533417, -2.71123719, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, 0.221725464, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, 0.228363037, -0.405021667, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, 0.228363037, -0.759824157, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.292743683, 0.228363037, -0.582422733, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, -0.22177124, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, -0.228408813, -0.405021667, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.647537231, -0.228408813, -0.582419634, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.292743683, -0.228408813, -0.582422733, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47013092, -0.223960876, -0.582418919, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.470134735, -0.228408813, -0.759824157, -0.866024315, 0.499999404, 0, 0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.353219956, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.6209023, 0.263675213, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00384521484, 0.00221633911, 0, 0.999999344, 0, 0, 0, 0.999999344, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 0.70644027))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.957988739, -0.493718386, -0.133056641, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672799945, 1, 0.336399972))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.6209023, 0.263675213, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.470127106, -0.094623208, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.798303008, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.824935913, -0.582421541, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.913650513, -0.582422614, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.957988739, -0.493718386, 0.133049011, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672799945, 1, 0.336399972))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.354801267, 0.263675213, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929E-7, 0, 0, 0, 1, 1.1920929E-7, -0.999999583, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672799945, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.354801267, 0.266100973, 0.363671392))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.514480591, -0.138983727, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.869281769, -2.71124148, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672800481, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.354801297, 0.263675213, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929E-7, 0, 0, 0, 1, 1.1920929E-7, -0.999999583, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.706439912, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.425792694, -2.71124005, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672800481, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.354801446, 0.443501711, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.159671783, -3.33218336, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.266101062, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00234604, -3.33218288, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.354801446, 1.33050513, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.337085724, -2.44513679, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.798303068, 0.263675213, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.47013092, -1.55811501, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.532201946, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.824932098, -1.24765778, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.6209023, 0.798303008, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.470127106, -0.582418799, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.913650513, -1.38070595, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800243))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.532202065, 0.263675213, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.603176117, -1.69116795, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672800183, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.443501592, 0.354801387))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.115318298, -1.29201102, 0, 0.866024852, -0.499999672, 0, 0.499999672, 0.866024852, 0, 0, 0, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.115318298, 0, 0.9815588, 0.866024911, -0.499999762, 0, 0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 1, 0.672800183))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0709648132, 0, 0.981558442, 0.866024911, -0.499999762, 0, 0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.672799706, 1, 0.672800183))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.824932098, -0.0946245193, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.336399972, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Wedge", Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.425788879, 0.0384018421, 5.16191072E-8, -2.98023082E-8, -0.999999702, -0.866024613, 0.499999583, -5.96046448E-8, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672800004, 0.336399972))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Wedge", Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.603176117, 0.0384008884, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.672800004, 0.336399972))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.354801297, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.337089539, 0.0383994579, 3.87143366E-8, -2.23517329E-8, -0.999999583, -0.866024613, 0.499999613, -4.47034836E-8, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.336399972))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.354801297, 0.354801297))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.306602478, 0.17517662, 0, 0, -1, 0.999999583, 1.1920929E-7, 0, 1.1920929E-7, -0.999999583, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672799945, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.354801297, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.159656525, -3.0217073, 4.16935109E-7, 5.17906784E-8, -0.999999404, -0.866022944, 0.500002921, -3.35181227E-7, 0.500002861, 0.866022885, 1.04308128E-7))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 1, 0.672799945))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.00234604, 3.55395985, -7.45057704E-9, -1.29047768E-8, -0.999999762, 0.866024911, -0.499999762, 0, -0.499999613, -0.866024792, 1.49011612E-8))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.00234604, -3.11040449, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.869285583, -0.0946269035, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.672800004, 0.672799945, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.133049011, -0.957988739, -0.272016048, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.133056641, -0.957988739, -0.272016048, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.204036713, 1.69116938, 7.38661754E-9, -1.06415222E-7, 0.999999702, -0.866022885, 0.500002861, 5.96046448E-8, -0.50000298, -0.866023242, -8.84652422E-8))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672799945))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld = weld(m, HandleB, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.647533417, 0.038402319, 0, 0, 1, 0.866024911, -0.499999762, 0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.336399972))
mesh("BlockMesh", HandleB, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.672800243))
function part2(formfactor, parent, reflectance, transparency, brickcolor, name, size)
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
function MagicCylinder(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      swait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      swait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
function LaserBarrage(Prt, Parent, damage, spready)
  attack = true
  local efprt = part(3, Parent, 0, 0.5, BrickColor.new("Really red"), "Effect", vt(0.2, 0.2, 0.2))
  efprt.Anchored = true
  local efmsh = mesh("CylinderMesh", efprt, "", "", vt(0, 0, 0), vt(1, 1, 1))
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  coroutine.resume(coroutine.create(function(Part, Mesh)
    game:GetService("Debris"):AddItem(Part, 6)
    local TheHit = Mouse.Hit.p
    local MouseLook = cf((Prt.Position + TheHit) / 2, TheHit + spread)
    local hit, pos = rayCast(Prt.Position, MouseLook.lookVector, 1000, Parent)
    so("Elec", Prt, 0.2, 1)
    local tefprt = part(3, Character, 0, 1, BrickColor.new("Black"), "Effect", vt(0.2, 0.2, 0.2))
    tefprt.CFrame = cf(pos)
    MagicCircle(BrickColor.new("Really red"), cf(pos), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.04)
    so("Elec", tefprt, 0.3, 1)
    game:GetService("Debris"):AddItem(tefprt, 3)
    Part.CFrame = CFrame.new((Prt.Position + pos) / 2, pos) * angles(1.57, 0, 0)
    if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then
      hit.Parent.Humanoid:TakeDamage(damage)
    end
    local mag = (Prt.Position - pos).magnitude
    MagicCylinder(BrickColor.new("Really red"), Part.CFrame, 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
    Part.Parent = nil
  end), efprt, efmsh, spread)
end
function attackone()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(5), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
    HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, 0.9)
  so("http://www.roblox.com/asset/?id=203691837", BarrelA, 1, 0.9)
  pewshoot(BarrelA, 8, 14, 0.5)
  attack = false
end
function attacktwo()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(-10), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(-20)), 0.3)
    HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, 0.9)
  so("http://www.roblox.com/asset/?id=203691837", BarrelB, 1, 0.9)
  pewshoot(BarrelB, 8, 14, 0.5)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(-10), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-50), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(-20)), 0.3)
    HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end
function attackthree()
  attack = true
  for i = 0, 1, 2 do
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(math.rad(20), 0, 6 * i), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(5), math.rad(-40)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
      HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(-10), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, 0.9)
  so("http://www.roblox.com/asset/?id=203691837", BarrelB, 1, 0.9)
  pewshoot(BarrelB, 8, 14, 0.5)
  attack = false
end
function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
function EVENMOARMAGIX(part, x1, y1, z1, x2, y2, z2, x3, y3, z3, color)
  local msh1 = it("SpecialMesh")
  msh1.Scale = vt(0.5, 0.5, 0.5)
  msh1.MeshType = "Sphere"
  S = it("Part")
  S.Name = "Effect"
  S.formFactor = 0
  S.Size = vt(x1, y1, z1)
  S.BrickColor = color
  S.Reflectance = 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = part.CFrame * cf(x2, y2, z2) * euler(x3, y3, z3)
  S.Parent = Character
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 1, 9 do
      Part.Mesh.Scale = Part.Mesh.Scale + vt(0.15, 0.15, 0.15)
      Part.Transparency = i * 0.1
      wait()
    end
    Part.Parent = nil
  end), S, S.CFrame)
end
function EVENMOARMAGIX2(part, x1, y1, z1, x2, y2, z2, x3, y3, z3, color)
  local msh1 = it("SpecialMesh")
  msh1.Scale = vt(0.5, 0.5, 0.5)
  msh1.MeshType = "Sphere"
  S = it("Part")
  S.Name = "Effect"
  S.formFactor = 0
  S.Size = vt(x1, y1, z1)
  S.BrickColor = color
  S.Reflectance = 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = part
  S.Parent = workspace
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 1, 14 do
      Part.Mesh.Scale = Part.Mesh.Scale + vt(1, 1, 1)
      Part.Transparency = Part.Transparency + 0.1
      wait()
    end
    Part.Parent = nil
  end), S, S.CFrame)
end
function MagicRing(brickcolor, cframe, x1, y1, z1, x3, y3, z3)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.03 do
      wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
function MMMAGIC3(part, x1, y1, z1, x2, y2, z2, color)
  local msh1 = it("BlockMesh")
  msh1.Scale = vt(0.5, 0.5, 0.5)
  S = it("Part")
  S.Name = "Effect"
  S.formFactor = 0
  S.Size = vt(x1, y1, z1)
  S.BrickColor = color
  S.Reflectance = 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = part * cf(x2, y2, z2) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  S.Parent = Character
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 1, 9 do
      Part.Mesh.Scale = Part.Mesh.Scale + vt(0, 0.3, 0)
      Part.Transparency = i * 0.1
      wait()
    end
    Part.Parent = nil
  end), S, S.CFrame)
end
function MOREMAGIX(part, cframe, x, y, z, color)
  p2 = it("Part")
  p2.Name = "Blast"
  p2.TopSurface = 0
  p2.BottomSurface = 0
  p2.CanCollide = false
  p2.Anchored = true
  p2.BrickColor = color
  p2.Size = vt(x, y, z)
  p2.formFactor = "Symmetric"
  p2.CFrame = part.CFrame * cf(0, cframe, 0)
  p2.Parent = Character
  m = it("BlockMesh")
  m.Parent = p2
  m.Name = "BlastMesh"
  coroutine.resume(coroutine.create(function(part, dir)
    for loll = 1, 15 do
      part.BlastMesh.Scale = part.BlastMesh.Scale - vt(0.09, 0.09, 0.09)
      part.Transparency = loll / 20
      part.CFrame = part.CFrame * cf(dir) * euler(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100)
      wait()
    end
    part.Parent = nil
  end), p2, vt(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
end
spread2 = 0
range2 = 50
rangepower2 = 0.1
function shoottrail3(pos1, Damage)
  coroutine.resume(coroutine.create(function()
    spread2 = 0
    range2 = 100
    rangepower2 = 2
    local spreadvector = vt(math.random(-spread2, spread2), math.random(-spread2, spread2), math.random(-spread2, spread2)) / 100 * pos1.Position.magnitude / 100
    local dir = Head.CFrame.lookVector + spreadvector
    local ammount = 100
    local hit2, pos = rayCast(pos1.Position, dir, 10, Character)
    local rangepos = range2
    local function drawtrail(From, To)
      local effectsmsh = it("SpecialMesh")
      local Damg = Damage * 2
      effectsmsh.Scale = vt(1, 1, 1)
      effectsmsh.MeshType = "Sphere"
      effectsmsh.Name = "Mesh"
      local effectsg = it("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = vt(1, 0.4, 1)
      effectsg.Parent = Character
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("Really red")
      effectsg.Reflectance = 0
      effectsg.Transparency = 0.3
      local LP = From
      local point1 = To
      local mg = (LP - point1).magnitude
      effectsmsh.Scale = vt(3, 3, 3)
      effectsg.CFrame = cf((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      MMMAGIC3(effectsg.CFrame, 1, 6, 1, 0, 0, 0, BrickColor.new("Bright red"))
      EVENMOARMAGIX(effectsg, 3, 3, 3, 0, 0, 0, 0, 0, 0, BrickColor.new("Bright red"))
      MOREMAGIX(effectsg, 0, 2, 2, 2, BrickColor.new("Really red"))
      coroutine.resume(coroutine.create(function()
        wait()
        effectsg.Transparency = 1
        wait(2)
        effectsg.Parent = nil
      end))
    end
    local newpos = pos1.Position
    local inc = rangepower
    ammount = 100
    local Damg = Damage * 2
    local decr = 0
    repeat
      wait()
      decr = decr + 1
      rangepos = rangepos - 10
      ammount = ammount - 3
      hit2, pos = rayCast(newpos, dir, inc, Character)
      drawtrail(newpos, pos)
      newpos = newpos + dir * inc
      if hit2 ~= nil then
        rangepos = 0
      end
    until rangepos <= 0
    EVENMOARMAGIX2(cf(newpos), 5, 5, 5, 0, 0, 0, 0, 0, 0, BrickColor.new("Bright red"))
    local c = game.Workspace:GetChildren()
    for i = 1, #c do
      local hum = c[i]:findFirstChild("Humanoid")
      if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head")
        if head ~= nil then
          local targ = head.Position - newpos
          local mag = targ.magnitude
          if mag <= 30 and c[i].Name ~= Player.Name then
            attackdebounce = false
            Damagefunc1(head, math.floor(Damg), 50)
          end
        end
      end
    end
    if hit2 ~= nil then
      print(hit2)
      do
        local effectsmsh = it("SpecialMesh")
        effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
        effectsmsh.Scale = vt(3, 3, 3)
        local effectsg = it("Part")
        effectsg.formFactor = 3
        effectsg.CanCollide = false
        effectsg.Name = "Arrow"
        effectsg.Locked = true
        effectsg.Transparency = 1
        effectsg.Size = vt(0.2, 0.2, 0.2)
        effectsg.Parent = Character
        effectsg.BrickColor = BrickColor.new("Really red")
        effectsmsh.Parent = effectsg
        effectsg.CFrame = cf(newpos, pos) + cf(newpos, pos).lookVector * 2.5 * 2
        coroutine.resume(coroutine.create(function()
          wait(0)
          effectsg.Parent = nil
        end))
        local efwel = it("Weld")
        efwel.Parent = effectsg
        efwel.Part0 = effectsg
        efwel.Part1 = hit2
        efwel.Parent = nil
        effectsg.Anchored = true
        local HitPos = BarrelA.Position + Head.CFrame.lookVector * 0.5
        local CJ = cf(HitPos)
        local C0 = effectsg.CFrame:inverse() * CJ
        local C1 = hit2.CFrame:inverse() * CJ
        if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
          hum = hit2.Parent.Humanoid
          attackdebounce = false
          Damagefunc1(hit2, math.floor(Damg), 50)
        elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
          hum = hit2.Parent.Parent.Humanoid
          attackdebounce = false
          Damagefunc1(hum, math.floor(Damg), 50)
        end
      end
    end
  end))
end
spread = 1
range = 100
rangepower = 10
function shoottrail(mouse, baseprt)
  so("http://www.roblox.com/asset/?id=2697431", baseprt, 1, 0.5)
  MagicBlock(BrickColor.new("Bright red"), baseprt.CFrame, 0.1, 0.1, 0.1, 1, 1, 1)
  coroutine.resume(coroutine.create(function(v)
    local spreadvector = Vector3.new(math.random(-spread, spread), math.random(-spread, spread), math.random(-spread, spread)) * (baseprt.Position - MMouse.Hit.p).magnitude / 100
    local dir = CFrame.new((baseprt.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spreadvector)
    local hit, pos = rayCast(baseprt.Position, dir.lookVector, 10, Character)
    local rangepos = range
    local drawtrail = function(From, To)
      local effectsmsh = Instance.new("CylinderMesh")
      effectsmsh.Scale = Vector3.new(1, 1, 1)
      effectsmsh.Name = "Mesh"
      local effectsg = Instance.new("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
      effectsg.Parent = Character
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("Bright red")
      effectsg.Reflectance = 0.25
      local LP = From
      local point1 = To
      local mg = (LP - point1).magnitude
      effectsmsh.Scale = Vector3.new(3, mg * 5, 3)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      MagicBlock(BrickColor.new("Bright red"), effectsg.CFrame, 0.1, 0.1, 0.1, 0.5, 0.5, 0.5)
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.2 do
          wait()
          effectsg.Transparency = 1 * i
          effectsmsh.Scale = Vector3.new(3 - 3 * i, mg * 5, 3 - 3 * i)
        end
        effectsg.Parent = nil
      end))
    end
    local newpos = baseprt.Position
    local inc = rangepower
    repeat
      wait()
      wait()
      rangepos = rangepos - 10
      dir = dir * CFrame.Angles(math.rad(-0.5), 0, 0)
      hit, pos = rayCast(newpos, dir.lookVector, inc, Character)
      drawtrail(newpos, pos)
      newpos = newpos + dir.lookVector * inc
      if inc >= 20 then
        inc = inc - 10
      end
      if hit ~= nil then
        rangepos = 0
      end
    until rangepos <= 0
    if hit ~= nil then
      so("http://www.roblox.com/asset/?id=2101148", hit, 1, 0.6)
      MagicCircle(BrickColor.new("Bright red"), CFrame.new(pos), 0.5, 0.5, 0.5, 2, 2, 2)
      MagicRing(BrickColor.new("Bright red"), CFrame.new(pos) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
      if hit.Parent:FindFirstChild("Humanoid") ~= nil then
        hum = hit.Parent.Humanoid
        tTorso = hit.Parent.Torso
        Damagefunc1(hit, 45, 100)
      elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
        hum = hit.Parent.Parent.Humanoid
        tTorso = hit.Parent.Parent.Torso
        Damagefunc1(hit.Parent.Parent.Torso, 45, 100)
      end
    end
  end))
end
function MagicCircle2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3
  })
end
function Damagefunc4(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
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
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil and hit.Parent ~= RailgunTarget.Parent then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    Damage = math.random(minim, maxim)
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
      h.Health = h.Health - Damage
      showDamage(hit.Parent, Damage, 0.5, BrickColor:Red())
    else
      h.Health = h.Health - Damage / 2
      showDamage(hit.Parent, Damage / 2, 0.5, BrickColor.new("Bright blue"))
    end
    if Type == "Knockdown" then
      hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        HHumanoid.PlatformStand = false
      end), hum)
      local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
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
    elseif Type == "Normal" then
      vp = Instance.new("BodyVelocity")
      vp.P = 500
      vp.maxForce = Vector3.new(math.huge, 0, math.huge)
      if KnockbackType == 1 then
        vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      elseif KnockbackType == 2 then
        vp.velocity = Property.CFrame.lookVector * knockback
      end
      if knockback > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Instance.new("BodyVelocity")
      bodyVelocity.velocity = vt(0, 30, 0)
      bodyVelocity.P = 5000
      bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
      bodyVelocity.Parent = hit
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
      rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Snare" then
      bp = Instance.new("BodyPosition")
      bp.P = 2000
      bp.D = 100
      bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      bp.position = hit.Parent.Torso.Position
      bp.Parent = hit.Parent.Torso
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Charge" then
      Charge = Charge + 1
      coroutine.resume(coroutine.create(function(Part)
        swait(30)
        for i = 1, 5 do
          swait(5)
          so("rbxasset://sounds\\unsheath.wav", hit, 1, 2)
          MagicCircle(BrickColor.new("Bright red"), hit.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.2, 2, 0.1, 0.2, 8, 0.1, 0.05)
          newdam = math.random(1, 5)
          if blocked == false then
            h:TakeDamage(newdam)
            showDamage(hit.Parent, newdam, 0.5, BrickColor:Red())
          else
            h:TakeDamage(newdam / 2)
            showDamage(hit.Parent, newdam, 0.5, BrickColor.new("Bright blue"))
          end
        end
      end), hit)
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
function pewshoot(post, mindam, maxdam, spready)
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  local MouseLook = cf((post.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  local hit, pos = rayCast(post.Position, MouseLook.lookVector, 999, RailgunTarget.Parent)
  local mag = (post.Position - pos).magnitude
  MagicCylinder(BrickColor.new("Really red"), CFrame.new((post.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 1.2, 0, 1.2, 0.1)
  if hit ~= nil then
    MagicCircle(BrickColor.new("Really red"), cf(pos), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.01)
    Damagefunc4(hit, mindam, maxdam, 0, "Normal", RootPart, 0)
  end
end
function PEW()
  if mana >= 40 then
    mana = mana - 40
  else
    return
  end
  attack = true
  coroutine.resume(coroutine.create(function()
    for i = 0, 3, 0.2 do
      wait()
      MMMAGIC(BarrelA, 2, 2, 2, 0, -1, 0, BrickColor.new("Really red"))
      MMMAGIC(BarrelB, 2, 2, 2, 0, -1, 0, BrickColor.new("Really red"))
    end
  end))
  for i = 0, 4, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(10), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
    HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, 0.9)
  so("http://www.roblox.com/asset/?id=203691837", BarrelA, 1, 0.9)
  shoottrail(mouse.Hit.p, BarrelA)
  shoottrail(mouse.Hit.p, BarrelB)
  attack = false
end
function POW()
  if mana >= 50 then
    mana = mana - 50
  else
    return
  end
  attack = true
  coroutine.resume(coroutine.create(function()
    for i = 0, 3, 0.2 do
      wait()
      MMMAGIC(BarrelA, 3, 3, 3, 0, -1, 0, BrickColor.new("Really red"))
    end
  end))
  for i = 0, 4, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(10), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
    HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, 0.8)
  so("http://www.roblox.com/asset/?id=203691837", BarrelA, 1, 0.8)
  shoottrail3(BarrelA, 20)
  attack = false
end
function gunslinger()
  if mana >= 30 then
    mana = mana - 30
  else
    return
  end
  attack = true
  for i = 1, 2 do
    wait()
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(10), math.rad(-40)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
    end
    so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, 0.9)
    so("http://www.roblox.com/asset/?id=203691837", BarrelA, 1, 0.9)
    pewshoot(BarrelA, 5, 10, 0.5)
    for i = 0, 1, 0.2 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(-10), math.rad(40)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-10)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(-20)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(-20)), 0.3)
      HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, 0.9)
    so("http://www.roblox.com/asset/?id=203691837", BarrelB, 1, 0.9)
    pewshoot(BarrelA, 5, 10, 0.5)
  end
  attack = false
end
function attackfour()
  attack = true
  for i = 0, 1, 2 do
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(math.rad(20), 0, -6 * i), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(5), math.rad(-40)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
      HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(10), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, 0.9)
  so("http://www.roblox.com/asset/?id=203691837", BarrelA, 1, 0.9)
  pewshoot(BarrelA, 8, 14, 0.5)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(10), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(50), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
    HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end
function ob1u(mouse)
end
function ob1d(mouse)
  if attack == false then
    if attacktype == 1 then
      attack = true
      attacktype = 2
      attackone()
    elseif attacktype == 2 then
      attack = true
      attacktype = 3
      attacktwo()
    elseif attacktype == 3 then
      attack = true
      attacktype = 4
      attackthree()
    elseif attacktype == 4 then
      attack = true
      attacktype = 1
      attackfour()
    end
  end
end
function key(k)
  k = k:lower()
  if k == "e" then
    gunslinger()
  elseif k == "q" then
    POW()
  elseif k == "z" then
    PEW()
  end
end
function s(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
  player = Player
  ch = Character
  MMouse = mouse
  print("SCOOT")
end
function ds(mouse)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
function pwait(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end
local sine = 0
local change = 1
local val = 0
while true do
  pwait()
  sine = sine + change
  local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if not (idle >= 500) or attack == false then
    end
    if 1 < RootPart.Velocity.y and hitfloor == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
        HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
      end
    elseif -1 > RootPart.Velocity.y and hitfloor == nil then
      Anim = "Fall"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-20)), 0.3)
        HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
      end
    elseif torvel < 1 and hitfloor ~= nil then
      Anim = "Idle"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
        HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
      end
    elseif torvel > 2 and hitfloor ~= nil then
      Anim = "Walk"
      if attack == false then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
        HandleAweld.C0 = clerp(HandleAweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
        HandleBweld.C0 = clerp(HandleBweld.C0, cf(0, -0.2, 0.3) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
      end
    end
  end
  fenbarmana2:TweenSize(UDim2.new(4 * mana / 100, 0, 0.2, 0), nil, 1, 0.4, true)
  fenbarmana4.Text = "[Power]  <{[  " .. mana .. "  ]}> [Power]"
  if mana >= 100 then
    mana = 100
  elseif mananum <= 8 then
    mananum = mananum + 1
  else
    mananum = 0
    mana = mana + 1
  end
end
