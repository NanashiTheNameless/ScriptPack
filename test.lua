Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
m.Name = "WeaponModel"
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
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 1
pathtrans = 0.7
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
local shoot = false
player = nil
cloak = false
lightcolor = "Bright red"
mouse = Player:GetMouse()
RSH, LSH = nil, nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
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
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = Create("Part")({
    formFactor = formfactor,
    Parent = parent,
    Reflectance = reflectance,
    Transparency = transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(brickcolor)),
    Name = name,
    Size = size,
    Position = Character.Torso.Position,
    Material = material
  })
  nooutline(fp)
  return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
  local Msh = Create(Mesh)({
    Parent = part,
    Offset = offset,
    Scale = scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = meshtype
    Msh.MeshId = meshid
  end
  return Msh
end
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
function weld(parent, part0, part1, c0, c1)
  local Weld = Create("Weld")({
    Parent = parent,
    Part0 = part0,
    Part1 = part1,
    C0 = c0,
    C1 = c1
  })
  return Weld
end
local Color1 = Torso.BrickColor
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
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
function pwait(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
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
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Really red")
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
    w1.Parent = Character
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
    w2.BrickColor = BrickColor.new("Really red")
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
    w2.Parent = Character
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
function nooutline(Part)
  Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:service("Players").LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      so(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained kill")
        script.Parent.Kills.Value = script.Parent.Kills.Value + 1
      end
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        HHumanoid.PlatformStand = false
      end), hum)
      local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Create("BodyVelocity")({
        velocity = vt(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
    elseif Type == "Snare" then
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 0.5)
    elseif Type == "Freeze" then
      local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        swait(0.5)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3)
    end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.03333333333333333
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 0)
  local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({
    Size = UDim2.new(3, 0, 3, 0),
    Adornee = EffectPart,
    Parent = EffectPart
  })
  local TextLabel = Create("TextLabel")({
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Text = Text,
    TextColor3 = Color,
    TextScaled = true,
    Font = Enum.Font.ArialBold,
    Parent = BillboardGui
  })
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end)
end
handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Handle", Vector3.new(0.347999871, 0.696000099, 0.232000008))
handleweld = weld(m, Character["Right Arm"], handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.03664994, -0.248123169, -0.131465912, 1.67408114E-4, 0.999993026, 1.21386431E-4, -2.49695557E-4, 1.18572003E-4, -0.999996185, -0.999996006, 1.64458877E-4, 2.42831695E-4))
mesh("CylinderMesh", handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Bright red", "EnergyBlade", Vector3.new(0.463999867, 0.580000103, 0.200000003))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0576455593, -3.42160416, -0.00575256348, 0.999985814, -2.85662099E-6, -2.92026948E-6, -2.85662099E-6, 0.99999243, 6.88321597E-6, -2.92026948E-6, 6.8833906E-6, 0.999992073))
mesh("BlockMesh", EnergyBlade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.579999983))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.463999867, 0.232000053, 0.200000003))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.636983156, -2.55197144, -0.005443573, 0.999985814, -2.8566501E-6, -2.92026948E-6, -2.85659189E-6, 0.99999243, 6.88333239E-6, -2.92026948E-6, 6.88325963E-6, 0.999992073))
mesh("BlockMesh", EnergyBlade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.579999983))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.231999859, 0.232000053, 0.200000003))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.405765295, -3.01596069, -0.0057182312, 0.999985814, -2.85662827E-6, -2.92026948E-6, -2.85661372E-6, 0.99999243, 6.88315777E-6, -2.92026948E-6, 6.88343425E-6, 0.999992073))
mesh("BlockMesh", EnergyBlade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.579999983))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Bright red", "EnergyBlade", Vector3.new(0.347999871, 2.204, 0.200000003))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232153893, -2.02997971, -0.0057144165, 0.999985814, -2.85662099E-6, -2.92026948E-6, -2.85662099E-6, 0.99999243, 6.88321597E-6, -2.92026948E-6, 6.8833906E-6, 0.999992073))
mesh("BlockMesh", EnergyBlade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.579999983))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.30000001192093, "Really red", "EnergyBlade", Vector3.new(0.347999871, 2.204, 0.200000003))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.115874529, -2.02997971, -0.00573730469, 0.999985814, -2.85662099E-6, -2.92026948E-6, -2.85662099E-6, 0.99999243, 6.88315777E-6, -2.92026948E-6, 6.88343425E-6, 0.999992073))
mesh("BlockMesh", EnergyBlade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.579999983))
Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "Hitbox", Vector3.new(1.39199984, 2.78399992, 0.200000003))
Hitboxweld = weld(m, handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.173868418, -2.78396606, -0.00574111938, 0.999985814, -2.85662099E-6, -2.92026948E-6, -2.85662099E-6, 0.99999243, 6.88315777E-6, -2.92026948E-6, 6.88343425E-6, 0.999992073))
mesh("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.579999983))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Bright red", "Part", Vector3.new(0.347999871, 0.348000079, 0.232000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.77552414E-4, 0.52199173, 1.18255615E-4, 0.999985814, -2.72248872E-6, -2.92027289E-6, -2.990746E-6, 0.99999243, 6.8833906E-6, -2.92026948E-6, 6.88323053E-6, 0.999992073))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.811999977, 0.463999987, 0.34799999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.116131067, -1.15998459, -0.00576019287, 0.999985814, -2.85661372E-6, -2.92026948E-6, -2.85662827E-6, 0.99999243, 6.88318687E-6, -2.92026948E-6, 6.8834197E-6, 0.999992073))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.34799999, 0.34799999, 0.34799999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.45399094E-4, 1.37458801, 1.90734863E-4, 0.999985814, -2.85662827E-6, -2.92026948E-6, -2.85661372E-6, 0.99999243, 6.8833906E-6, -2.92026948E-6, 6.88321597E-6, 0.999992073))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.347999871, 0.348000079, 0.232000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.04970551E-4, 0.869991302, 1.29699707E-4, 0.999985814, -2.72248872E-6, -2.92027289E-6, -2.990746E-6, 0.99999243, 6.8833906E-6, -2.92026948E-6, 6.88321597E-6, 0.999992073))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Bright red", "Part", Vector3.new(0.347999871, 0.348000079, 0.232000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672E-5, -0.521995544, -1.90734863E-5, 0.999985814, -2.85662099E-6, -2.92026948E-6, -2.85662099E-6, 0.99999243, 6.88327418E-6, -2.92026948E-6, 6.88331784E-6, 0.999992073))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Bright red", "Part", Vector3.new(0.347999871, 0.232000083, 0.463999987))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.51939011E-4, 1.27598572, 1.79290771E-4, 0.999985814, -2.85662827E-6, -2.92026948E-6, -2.85661372E-6, 0.99999243, 6.8833906E-6, -2.92026948E-6, 6.88323053E-6, 0.999992073))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.580000043, 0.232000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.465106964, 0.048664093, -0.00578308105, 0.583916605, 0.811798334, 3.88271292E-6, -0.811796188, 0.583925009, 6.39008067E-6, -2.92024038E-6, 6.88323053E-6, 0.999992073))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.811999977, 0.34799999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.464127779, -1.33398056, -0.00575256348, 0.999985814, -2.85661372E-6, -2.92026948E-6, -2.85662827E-6, 0.99999243, 6.88318687E-6, -2.92026948E-6, 6.8834197E-6, 0.999992073))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.464057684, 0.243595123, -0.00573730469, 0.999985814, -2.85663555E-6, -2.92026948E-6, -2.85660644E-6, 0.99999243, 6.8833906E-6, -2.92026948E-6, 6.88321597E-6, 0.999992073))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.04400003, 0.34799999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.46396184, -0.290000916, -0.00577163696, 0.999985814, -2.82683322E-6, -2.92029131E-6, -2.88640877E-6, 0.99999243, 6.8833906E-6, -2.92024038E-6, 6.88320142E-6, 0.999992073))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.347999871, 0.200000003, 0.34799999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.62124634E-4, -0.753990173, -4.19616699E-5, 0.999985814, -2.85662099E-6, -2.92026948E-6, -2.85662099E-6, 0.99999243, 6.88327418E-6, -2.92026948E-6, 6.88331784E-6, 0.999992073))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.579999983, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.34799999, 0.34799999, 0.34799999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.46114349E-4, 1.14259338, 1.90734863E-4, 0.999985814, -2.85662827E-6, -2.92026948E-6, -2.85661372E-6, 0.99999243, 6.8833906E-6, -2.92026948E-6, 6.88321597E-6, 0.999992073))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.04399991, 0.200000003, 0.34799999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.9870224E-5, -0.869991302, -0.00574111938, 0.999985814, -2.85662099E-6, -2.92026948E-6, -2.85662099E-6, 0.99999243, 6.88321597E-6, -2.92026948E-6, 6.8833906E-6, 0.999992073))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.580000103, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Bright red", "Part", Vector3.new(0.232000008, 0.232000083, 0.232000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00512695313, 1.27598572, 2.13623047E-4, 0.999985814, -2.85663555E-6, -2.92026948E-6, -2.85660644E-6, 0.99999243, 6.8833906E-6, -2.92026948E-6, 6.88321597E-6, 0.999992073))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.200000003, 0.232000098, 0.232000053))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00547027588, 2.31998062, -0.520896673, -2.91988363E-6, 7.1812392E-6, 0.999992073, 2.85658462E-6, -0.99999243, -6.58536737E-6, 0.999985814, -2.85665737E-6, -2.92064783E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.200000003, 0.232000098, 0.232000053))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00547027588, 2.31998062, 0.752856493, 3.02458125E-6, -7.03224214E-6, -0.999992073, 2.80893437E-6, -0.99999243, -6.73437899E-6, -0.999985814, 2.90430762E-6, 2.81596431E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Bright red", "EnergyBlade", Vector3.new(0.200000003, 0.580000043, 0.34800005))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575637817, -3.42160797, 0.348280668, 2.92066034E-6, -7.22620462E-6, -0.999992073, -2.85662827E-6, 0.99999243, 6.54040196E-6, 0.999985814, -2.85661372E-6, -2.91989113E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Bright red", "EnergyBlade", Vector3.new(0.200000003, 2.204, 0.200000003))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00572967529, 2.02997971, 0.464212656, -2.91889592E-6, 7.19637319E-6, 0.999992073, 2.85629358E-6, -0.99999243, -6.57023338E-6, 0.999985814, -2.85694841E-6, -2.92165191E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 0.579999983))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.200000003, 0.232000098, 0.232000053))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00547027588, -2.78396606, -0.520878553, 2.92066034E-6, -7.22613186E-6, -0.999992073, -2.85659189E-6, 0.99999243, 6.54046016E-6, 0.999985814, -2.8566501E-6, -2.91989113E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.200000003, 0.232000098, 0.232000053))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00574111938, -2.31998062, 0.405635595, -2.81595794E-6, 6.97582436E-6, 0.999992073, -2.90427124E-6, 0.99999243, 6.79078221E-6, -0.999985814, 2.80897802E-6, 3.02457465E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.200000003, 0.232000098, 0.232000053))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00574874878, -3.24769211, 0.405633211, -2.81595794E-6, 6.97582436E-6, 0.999992073, -2.90427124E-6, 0.99999243, 6.79078221E-6, -0.999985814, 2.80897802E-6, 3.02457465E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.200000003, 0.232000098, 0.232000053))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00574493408, 2.78396988, 0.405633688, 3.02458125E-6, -7.03241676E-6, -0.999992073, 2.80896347E-6, -0.99999243, -6.73420436E-6, -0.999985814, 2.90427852E-6, 2.81596431E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.200000003, 0.232000098, 0.232000053))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00547027588, -2.78396606, 0.752855062, -2.81595794E-6, 6.97563519E-6, 0.999992073, -2.90424941E-6, 0.99999243, 6.79095683E-6, -0.999985814, 2.80899985E-6, 3.02457465E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Bright red", "EnergyBlade", Vector3.new(0.200000003, 0.464000076, 0.464000016))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00569534302, -3.94350815, -0.0578300953, 2.92066034E-6, -7.22624827E-6, -0.999992073, -2.85662099E-6, 0.99999243, 6.54034375E-6, 0.999985814, -2.85662099E-6, -2.91989113E-6))
mesh("SpecialMesh", EnergyBlade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "Wedge", Vector3.new(0.200000003, 0.232000098, 0.232000053))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00574111938, 1.85598755, 0.405647516, 3.02458125E-6, -7.03241676E-6, -0.999992073, 2.80896347E-6, -0.99999243, -6.73420436E-6, -0.999985814, 2.90427852E-6, 2.81596431E-6))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.579999983, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.347999871, 0.812000036, 0.580000043))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00573730469, -1.33398056, -0.116147757, -2.86066961E-6, 6.92332105E-6, 0.999992073, -2.82112887E-6, 0.99999243, 6.84328552E-6, -0.999985814, 2.89211312E-6, 2.97988004E-6))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.347999871, 0.463999987, 0.232000008))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, -1.15998459, 0.405767441, -2.86066961E-6, 6.92332105E-6, 0.999992073, -2.82112887E-6, 0.99999243, 6.84328552E-6, -0.999985814, 2.89211312E-6, 2.97988004E-6))
EnergyBlade = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really red", "EnergyBlade", Vector3.new(0.231999859, 0.232000053, 0.200000003))
EnergyBladeweld = weld(m, handle, EnergyBlade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.405767679, -2.08797455, -0.0057144165, 0.999985814, -2.85662827E-6, -2.92026948E-6, -2.85661372E-6, 0.99999243, 6.88315777E-6, -2.92026948E-6, 6.88343425E-6, 0.999992073))
mesh("BlockMesh", EnergyBlade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.579999983))
function attackone()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.5), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.3) * euler(0.4, 0, 0.2) * euler(0, -0.2, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(10, 20), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0.2, 0, -0.2) * euler(0, -0.5, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
  end
  so("http://roblox.com/asset/?id=233856140", Hitbox, 1, 1)
  for i = 0, 1, 0.2 do
    swait()
    local blcf = Hitbox.CFrame
    if scfr and (Hitbox.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle((scfr * CFrame.new(0, h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p, (blcf * CFrame.new(0, h / 2, 0)).p)
      if a then
        game.Debris:AddItem(a, trispeed)
      end
      if b then
        game.Debris:AddItem(b, trispeed)
      end
      local a, b = Triangle((blcf * CFrame.new(0, h / 2, 0)).p, (blcf * CFrame.new(0, -h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p)
      if a then
        game.Debris:AddItem(a, trispeed)
      end
      if b then
        game.Debris:AddItem(b, trispeed)
      end
      scfr = blcf
    elseif not scfr then
      scfr = blcf
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, -1) * euler(0, -0.7, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
  end
  attack = false
  con:disconnect()
  scfr = nil
end
function attacktwo()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -1.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 1.8, 1.5), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -0.5, 0.8), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.3)
  end
  so("http://roblox.com/asset/?id=233856146", Hitbox, 1, 1)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(10, 20), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    local blcf = Hitbox.CFrame
    if scfr and 0.1 < (Hitbox.Position - scfr.p).magnitude then
      local h = 5
      local a, b = Triangle((scfr * CFrame.new(0, h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p, (blcf * CFrame.new(0, h / 2, 0)).p)
      if a then
        game.Debris:AddItem(a, trispeed)
      end
      if b then
        game.Debris:AddItem(b, trispeed)
      end
      local a, b = Triangle((blcf * CFrame.new(0, h / 2, 0)).p, (blcf * CFrame.new(0, -h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p)
      if a then
        game.Debris:AddItem(a, trispeed)
      end
      if b then
        game.Debris:AddItem(b, trispeed)
      end
      scfr = blcf
    elseif not scfr then
      scfr = blcf
    end
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, 1), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 1.2, 0) * euler(-1.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, -0.2, -1.4), 0.3)
  end
  attack = false
  con:disconnect()
  scfr = nil
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
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
function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {
    prt,
    "Block1",
    delay,
    x3,
    y3,
    z3
  })
end
function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, 0.2, 1)
        end
      end
    end
  end
end
function Impulse()
  attack = true
  MagicCircle(BrickColor.new("Black"), LeftArm.CFrame + vt(0, -1, 0), 90, 90, 90, -2, -2, -2, 0.06)
  so("http://roblox.com/asset/?id=183763487", Torso, 0.8, 1)
  MagniDamage(LeftArm, LeftArm, 20, 0, 0, 0, "Snare")
  for i = 0, 1, 0.05 do
    swait()
    MagicBlock(BrickColor.new("Bright red"), LeftArm.CFrame + vt(0, 0, -1), 5, 5, 5, 0.5, 0.5, 0.5, 0.06)
    MagicBlock(BrickColor.new("Black"), LeftArm.CFrame + vt(0, 0, -1), 5, 5, 5, 0.5, 0.5, 0.5, 0.06)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90)), 0.3)
    RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  end
  so("http://roblox.com/asset/?id=233856146", Hitbox, 1, 1)
  MagicBlock(BrickColor.new("Bright red"), LeftArm.CFrame + vt(0, 0, -1), 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  so("http://roblox.com/asset/?id=183763487", Torso, 0.8, 0.8)
  MagicBlock(BrickColor.new("Black"), LeftArm.CFrame + vt(0, 0, -1), 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  MagicCircle(BrickColor.new("Black"), LeftArm.CFrame + vt(0, -1, 0), 25, 25, 25, 5, 5, 5, 0.06)
  so("http://roblox.com/asset/?id=29504625", Torso, 0.8, 1)
  MagniDamage(LeftArm, LeftArm, 20, 10, 30, 30, "Normal")
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-130)), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), math.rad(-90)), 0.3)
    RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  end
  attack = false
end
function Trickster()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    MagicBlock(BrickColor.new("Bright red"), LeftArm.CFrame + vt(0, 0, -1), 5, 5, 5, 0.5, 0.5, 0.5, 0.6)
    MagicBlock(BrickColor.new("Black"), LeftArm.CFrame + vt(0, 0, -1), 5, 5, 5, 0.5, 0.5, 0.5, 0.6)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-130)), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-150), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(150), math.rad(80)), 0.3)
  end
  so("http://roblox.com/asset/?id=233856146", Hitbox, 1, 1)
  MagicBlock(BrickColor.new("Bright red"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  MagicBlock(BrickColor.new("Black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  MagniDamage(Torso, Torso, 15, 10, 30, 50, "Knockdown")
  MagicCircle(BrickColor.new("Black"), Torso.CFrame, 25, 25, 25, 5, 5, 5, 0.06)
  so("http://roblox.com/asset/?id=29504625", Torso, 0.8, 1)
  RootPart.CFrame = RootPart.CFrame * cf(0, 0, -20)
  RootPart.CFrame = RootPart.CFrame * cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(0))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-130)), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(150), math.rad(80)), 0.3)
  end
  MagicBlock(BrickColor.new("Bright red"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  MagicBlock(BrickColor.new("Black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  MagniDamage(Torso, Torso, 15, 10, 30, 50, "Knockdown")
  so("http://roblox.com/asset/?id=29504625", Torso, 0.8, 1)
  MagicCircle(BrickColor.new("Black"), Torso.CFrame, 25, 25, 25, 5, 5, 5, 0.06)
  attack = false
end
function attackthree()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.3), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1.2) * euler(0, -2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(0.7, 0, 0.1) * euler(0, -0.4, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.3, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.3, 0), 0.4)
  end
  so("http://roblox.com/asset/?id=233856140", Hitbox, 1, 0.9)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(10, 20), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    local blcf = Hitbox.CFrame
    if scfr and 0.1 < (Hitbox.Position - scfr.p).magnitude then
      local h = 5
      local a, b = Triangle((scfr * CFrame.new(0, h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p, (blcf * CFrame.new(0, h / 2, 0)).p)
      if a then
        game.Debris:AddItem(a, trispeed)
      end
      if b then
        game.Debris:AddItem(b, trispeed)
      end
      local a, b = Triangle((blcf * CFrame.new(0, h / 2, 0)).p, (blcf * CFrame.new(0, -h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p)
      if a then
        game.Debris:AddItem(a, trispeed)
      end
      if b then
        game.Debris:AddItem(b, trispeed)
      end
      scfr = blcf
    elseif not scfr then
      scfr = blcf
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.35)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.35)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.2, 0, -1.2) * euler(0, -1.2, 0), 0.35)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.35)
    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, -0.2) * euler(-0.4, 0, -0.7) * euler(0, 0, 0), 0.35)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.35)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.35)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.35)
    handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * euler(-1, 0, 0), 0.35)
  end
  attack = false
  con:disconnect()
  scfr = nil
end
function Spin()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.45)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.45)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.45)
    LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.7) * euler(1.5, -1.5, 0) * euler(0.7, 0, 0), 0.45)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.45)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.45)
  end
  local blcf
  scfr = nil
  so("http://roblox.com/asset/?id=231917801", Hitbox, 1, 1)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(10, 20), "Normal", RootPart, 0.2, 1)
  end)
  for i = 1, 2 do
    for i = 0, 1, 0.1 do
      swait()
      local blcf = Hitbox.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and 0.1 < (Hitbox.Position - scfr.p).magnitude then
        local h = 5
        local a, b = Triangle((scfr * CFrame.new(0, h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p, (blcf * CFrame.new(0, h / 2, 0)).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle((blcf * CFrame.new(0, h / 2, 0)).p, (blcf * CFrame.new(0, -h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      elseif not scfr then
        scfr = blcf
      end
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(-0.5, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 6.6 * i), 0.5)
    end
  end
  attack = false
  con:disconnect()
  scfr = nil
end
function Ram()
  attack = true
  local con = LeftArm.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, -1.4, 0) * euler(-0.6, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, -1, 0) * euler(0.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 2.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1, 0), 0.3)
  end
  Torso.Velocity = RootPart.CFrame.lookVector * 200
  so("http://roblox.com/asset/?id=200632211", Torso, 1, 0.8)
  Humanoid.WalkSpeed = 16
  attack = false
  con:disconnect()
end
function ob1u()
end
function ob1d()
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
      attacktype = 1
      attackthree()
    end
  end
end
function key(k)
  k = k:lower()
  if k == "z" then
    if attack == false and mana >= 15 then
      Ram()
      mana = mana - 15
    end
  elseif k == "x" and mana >= 20 then
    if attack == false then
      Spin()
      mana = mana - 20
    end
  elseif k == "c" and mana >= 25 then
    if attack == false then
      Impulse()
      mana = mana - 25
    end
  elseif k == "v" and mana >= 30 and attack == false then
    Trickster()
    mana = mana - 30
  end
end
Bin = script.Parent
function ds(mouse)
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
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local sine = 0
local change = 1
local val = 0
local mananum = 0
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
        Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
        Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
      end
    elseif -1 > RootPart.Velocity.y and hitfloor == nil then
      Anim = "Fall"
      if attack == false then
        Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.3)
        Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.3, 0, 0.2), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -0.2), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
        handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
      end
    elseif torvel < 1 and hitfloor ~= nil then
      Anim = "Idle"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(-2), math.rad(-25), math.rad(15)), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.3)
      end
    elseif torvel > 2 and hitfloor ~= nil then
      local idleanim = 0
      Anim = "Walk"
      if attack == false then
        change = 3
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(-5), math.rad(-25), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, -(idleanim / 2), 1.3 - idleanim / 2), 0.2)
        RH.C0 = clerp(RH.C0, RHC0, 0.3)
        LH.C0 = clerp(LH.C0, LHC0, 0.3)
        handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.3)
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
          if 1 >= Thing[1].Transparency then
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Cylinder" then
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Blood" then
              Mesh = Thing[7]
              Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Elec" then
              Mesh = Thing[1].Mesh
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
  fenbarmana2:TweenSize(UDim2.new(4 * mana / 100, 0, 0.2, 0), nil, 1, 0.4, true)
  fenbarmana4.Text = "[Power]  <{[  " .. mana .. "  ]}> [Power]"
  if mana >= 100 then
    mana = 100
  elseif attack == false then
    if mananum <= 8 then
      mananum = mananum + 1
    else
      mananum = 0
      mana = mana + 1
    end
  end
end
