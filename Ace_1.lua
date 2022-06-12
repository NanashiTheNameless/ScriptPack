
--LW a nil value--
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
Humanoid.WalkSpeed = 999
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
RSH = nil
RW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part)
  Part.TopSurface = 10
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
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Stepped:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Stepped:wait(0)
    end
  end
end
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
    sp.Scale = Vector3.new(0, 1, 2) * sz / w1.Size
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
      sp.Scale = Vector3.new(0, 1, 2) * sz / w2.Size
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
so = function(id, par, vol, pit)
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
            game:GetService("Debris"):AddItem(bodyVelocity, 2)
            rl = Instance.new("BodyAngularVelocity")
            rl.P = 3000
            rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
            rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
            rl.Parent = hit
            game:GetService("Debris"):AddItem(rl, 0.5)
          else
            do
              if Type == "Snare" then
                bp = Instance.new("BodyPosition")
                bp.P = 2000
                bp.D = 100
                bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                bp.position = hit.Parent.Torso.Position
                bp.Parent = hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp, 2)
              else
                if Type == "Target" and Targetting == false then
                  ZTarget = hit.Parent.Torso
                  coroutine.resume(coroutine.create(function(Part)
    swait(5)
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
                    if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
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
showDamage = function(Char, Dealt, du, Color)
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
  c.Size = Vector3.new(1, 0.4, 2)
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  if CRIT == true then
    ms.Scale = Vector3.new(1, 1.25, 2)
  end
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = CFrame.new(Char.Head.CFrame.p + Vector3.new(0, 1.5, 0))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = CFrame.new(Char.Parent.Head.CFrame.p + Vector3.new(0, 1.5, 0))
    end
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
HandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "HandleA", Vector3.new(0.400000006, 0.200000003, 0.200000003))
HandleAweld = weld(m, Character["Right Arm"], HandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.14440918e-05, 0, 0.800000191, -0.999999821, -2.98023188e-08, 0, 0, 0, 1, -2.98023224e-08, 0.999999702, 0))
mesh("SpecialMesh", HandleA, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.22000003, 1.11999989, 1.48000002))
MagicPrtA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "MagicPrtA", Vector3.new(0.400000066, 0.200000003, 0.400000006))
MagicPrtAweld = weld(m, HandleA, MagicPrtA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.100000858, 3.81469727e-06, 0.999999642, -2.98023064e-08, 2.98023188e-08, 2.98023064e-08, -4.47034836e-08, -0.999999285, 2.98023188e-08, 0.999999404, -2.98023153e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599983215, -1.0995748, 0.200019836, 0.999999821, -5.43913802e-06, 3.44865896e-08, -3.44864155e-08, 3.01454435e-08, 0.999999344, -5.43913711e-06, -1, 3.01452339e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998951, 0, -0.600002289, -2.98023224e-08, 0, 0.999999821, 0, 1, 0, -0.999999821, 0, -2.98023224e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.539999962, 0.539999962, 1.48000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.20000005, 1))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.600006104, -0.599998951, 0, -0.999999821, 0, -2.98023224e-08, -2.98023188e-08, 0, 0.999999702, 0, 1, 0))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599983215, -1.29950213, 0.400028229, 0.999999523, -6.69091787e-06, 3.448665e-08, -3.44863018e-08, 3.01455501e-08, 0.999993145, -6.69091651e-06, -0.999999702, 3.0145106e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599973679, 0.100389957, -2.67028809e-05, -0.999999821, 7.28699251e-06, -2.98029086e-08, -2.98028944e-08, 7.16782753e-13, 0.999999344, 7.28699115e-06, 1, -4.99611745e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599981308, 0.0995743275, 0.19997406, 0.999999344, 5.36441803e-06, -3.42694264e-08, -4.46758364e-09, 5.93965268e-08, -0.999999225, -5.54323105e-06, 0.999999881, 5.9397351e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599973679, -0.100358725, 0.399974823, 0.999999464, -7.28698978e-06, -2.98017078e-08, -2.98017504e-08, -2.82443882e-13, -0.999998987, 7.28699115e-06, 1, -4.99611745e-13))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599981308, 0.0995743275, 0.200027466, -0.999999523, -5.43913802e-06, -8.94069458e-08, 5.96046235e-08, 3.01454435e-08, -0.999999225, 5.4391362e-06, -1, -3.01443492e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599994659, -1.29949927, 0.399971008, -0.999999821, 6.75052434e-06, -2.98028091e-08, -2.98025888e-08, 1.03027981e-12, 0.99999243, 6.75052297e-06, 1, -8.29105447e-13))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599975586, -0.100389719, 0.400028229, -0.999999225, 7.25718564e-06, -8.9407493e-08, 8.9407493e-08, -1.14667997e-12, -0.999998987, -7.21248216e-06, -0.999999583, 5.01831974e-13))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.799999952, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599983215, -0.599738359, -0.200023651, -0.999999821, 6.83996359e-06, -2.98027985e-08, -2.98027842e-08, 7.42544481e-13, 0.999999344, 6.83996223e-06, 1, -5.38696854e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599979401, -1.0995748, 0.199981689, -0.999999642, 5.46872616e-06, -2.51180481e-08, -2.51182009e-08, -3.01454435e-08, 0.999999344, 5.46872525e-06, 0.999999821, 3.01455607e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.799999952, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599994659, -0.599813223, 0.199977875, -0.999999821, 4.69404995e-06, -2.98026279e-08, -2.98026137e-08, 5.29311675e-13, 0.999999344, 4.69404904e-06, 1, -3.89419237e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.400000006, 0.220000014, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599994659, 0.600000381, 0, 2.98012424e-08, -4.69401448e-06, -0.999994099, 0.999996483, -4.54851326e-13, 2.98017682e-08, 2.14393451e-11, -0.999997139, 4.69402175e-06))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599973679, -1.29961014, -2.67028809e-05, -0.999999821, 7.28699251e-06, -2.98029086e-08, -2.98028944e-08, 7.16782753e-13, 0.999999344, 7.28699115e-06, 1, -4.99611745e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599990845, -0.0995154381, -3.05175781e-05, -0.999999821, 6.75052434e-06, -2.9802866e-08, -2.98028517e-08, 6.63480122e-13, 0.999999344, 6.75052297e-06, 1, -4.62297626e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -1.20000076, 0.999999642, 0, 0, 0, 1, 0, 0, 0, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.22000003, 1.11999989, 1.48000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599990845, -1.09951615, -3.05175781e-05, -0.999999821, 6.75052434e-06, -2.9802866e-08, -2.98028517e-08, 6.63480122e-13, 0.999999344, 6.75052297e-06, 1, -4.62297626e-13))
HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "HandleB", Vector3.new(0.400000006, 0.200000003, 0.200000003))
HandleBweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00098991394, 3.05175781e-05, 0.800000191, 0.999999464, 8.36810372e-08, -4.47034836e-08, -5.96046448e-08, 1.96981595e-08, -0.999999702, -8.36810443e-08, 0.999999702, 1.96981613e-08))
mesh("SpecialMesh", HandleB, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.22000003, 1.11999989, 1.48000002))
MagicPrtB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "MagicPrtB", Vector3.new(0.400000066, 0.200000003, 0.400000006))
MagicPrtBweld = weld(m, HandleB, MagicPrtB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00100708008, -0.100000858, 3.43322754e-05, -0.999999285, 8.94069316e-08, 8.36810301e-08, -8.36810017e-08, 2.50053187e-08, -0.999999285, -7.45057633e-08, -0.999999106, -1.01041664e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -1.20000029, 0.999998927, -1.49011434e-08, 2.75411323e-14, -1.49011434e-08, 0.999999404, 7.10542736e-15, 2.75411323e-14, 7.10542736e-15, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.22000003, 1.11999989, 1.48000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599981308, -1.09957433, 0.199989319, -0.999999285, 5.52832898e-06, -2.51180712e-08, -2.51181635e-08, -3.01454222e-08, 0.999999344, 5.51342691e-06, 0.999999523, 3.01455501e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.20000005, 1))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.600004196, -0.599998713, 0, -0.999999166, -3.55271368e-15, -2.98023508e-08, -2.98022798e-08, 8.8817842e-15, 0.999999702, -1.49011434e-08, 0.999999404, 7.10542736e-15))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.799999952, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.600004196, -0.599812984, 0.199977875, -0.999999344, 4.69386441e-06, -2.9802635e-08, -2.98025782e-08, 5.54223334e-13, 0.999999344, 4.67896234e-06, 0.999999583, -3.92574862e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599975586, 0.0995745659, 0.19997406, 0.999998689, 5.24520738e-06, -3.42694086e-08, -4.46761206e-09, 5.93964842e-08, -0.999999225, -5.52832762e-06, 0.999999523, 5.9397351e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599988937, -1.29949903, 0.399974823, -0.999999166, 6.76512536e-06, -2.98028446e-08, -2.98025498e-08, 1.02673425e-12, 0.99999243, 6.75022238e-06, 0.999999404, -8.2600593e-13))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599973679, -0.100358725, 0.399974823, 0.999998868, -7.40587484e-06, -2.98016953e-08, -2.98017575e-08, -2.93098879e-13, -0.999998987, 7.28666373e-06, 0.999999344, -4.92050845e-13))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599992752, -0.0995156765, -3.43322754e-05, -0.999999166, 6.76512536e-06, -2.98029015e-08, -2.98027913e-08, 6.73239242e-13, 0.999999344, 6.75022238e-06, 0.999999404, -4.56523708e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599983215, -1.2996099, -2.67028809e-05, -0.999999106, 7.30156671e-06, -2.98029335e-08, -2.98028553e-08, 7.35411732e-13, 0.999999344, 7.28666373e-06, 0.999999344, -4.92050845e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599988937, -1.09957433, 0.200023651, 0.999999285, -5.52832898e-06, 3.44866038e-08, -3.44863622e-08, 3.01454222e-08, 0.999999344, -5.51342691e-06, -0.999999523, 3.0145241e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998713, 0, -0.600000381, -2.98022726e-08, 1.77635684e-14, 0.999999821, -1.49011434e-08, 0.999999404, 7.10542736e-15, -0.999999166, -3.55271368e-15, -2.98023508e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.539999962, 0.539999962, 1.48000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599985123, -1.29950166, 0.400032043, 0.999998868, -6.85453233e-06, 3.44866748e-08, -3.44862556e-08, 3.01455572e-08, 0.999993145, -6.83962935e-06, -0.999999106, 3.01451237e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599977493, -0.100389481, 0.400024414, -0.999998808, 7.33136903e-06, -8.94075214e-08, 8.94074077e-08, -1.15818466e-12, -0.999998987, -7.28666373e-06, -0.999999046, 5.22248911e-13))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.799999952, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599985123, -0.599738121, -0.200023651, -0.999999106, 6.95884e-06, -2.98028127e-08, -2.98027487e-08, 7.47846229e-13, 0.999999344, 6.94393748e-06, 0.999999344, -5.43565193e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599985123, 0.0995743275, 0.200031281, -0.999998987, -5.30481157e-06, -8.94069601e-08, 5.9604556e-08, 3.01454079e-08, -0.999999225, 5.4985253e-06, -0.999999583, -3.01443599e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.400000006, 0.220000014, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599994421, 0.599998474, -3.81469727e-06, 2.98012459e-08, -4.69401175e-06, -0.999994099, 0.999996006, -1.19209062e-07, 2.98017913e-08, -2.98018108e-08, -0.999996841, 4.69402084e-06))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599990845, -1.09951591, -3.43322754e-05, -0.999999166, 6.76512536e-06, -2.98029015e-08, -2.98027913e-08, 6.73239242e-13, 0.999999344, 6.75022238e-06, 0.999999404, -4.56523708e-13))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599983215, 0.100389719, -2.67028809e-05, -0.999999106, 7.30156671e-06, -2.98029335e-08, -2.98028553e-08, 7.35411732e-13, 0.999999344, 7.28666373e-06, 0.999999344, -4.92050845e-13))
local PE1 = Instance.new("ParticleEmitter", MagicPrtA)
PE1.Color = ColorSequence.new(Color3.new(255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.1)
PE1.Texture = "http://www.roblox.com/asset/?id=258908759"
PE1.Lifetime = NumberRange.new(0.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(100)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
local PE2 = Instance.new("ParticleEmitter", MagicPrtB)
PE2.Color = ColorSequence.new(Color3.new(255, 0, 0))
PE2.LightEmission = NumberSequence.new(0.2)
PE2.Size = NumberSequence.new(1.1)
PE2.Texture = "http://www.roblox.com/asset/?id=258908759"
PE2.Lifetime = NumberRange.new(0.5)
PE2.Rate = 10
PE2.Transparency = NumberSequence.new(0.2)
PE2.LightEmission = NumberSequence.new(0.2)
PE2.Rotation = NumberRange.new(100)
PE2.Speed = NumberRange.new(0)
PE2.RotSpeed = NumberRange.new(100)
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
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
MagicCircle(BrickColor.new("Really red"), Torso.CFrame, 1, 1, 1, 5, 5, 5, 0.01)
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local PE1 = Instance.new("ParticleEmitter", prt)
  PE1.Color = ColorSequence.new(Color3.new(255, 0, 0))
  PE1.LightEmission = NumberSequence.new(0.2)
  PE1.Size = NumberSequence.new(2)
  PE1.Texture = "http://www.roblox.com/asset/?id=258908759"
  PE1.Lifetime = NumberRange.new(5)
  PE1.Rate = 10
  PE1.Transparency = NumberSequence.new(0.2)
  PE1.LightEmission = NumberSequence.new(0.2)
  PE1.Speed = NumberRange.new(0)
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh, (math.random(0, 2) + math.random()) / 5)
end
MMMAGIC = function(part, x1, y1, z1, x2, y2, z2, color)
  local msh1 = it("BlockMesh")
  msh1.Scale = vt(0.5, 0.5, 0.5)
  local S = it("Part")
  S.Material = "SmoothPlastic"
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
  S.CFrame = part.CFrame * cf(x2, y2, z2) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  S.Parent = workspace
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 1, 9 do
      Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1, 0.1, 0.1)
      Part.CFrame = Part.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      Part.Transparency = i * 0.1
      wait()
    end
    Part.Parent = nil
  end), S, S.CFrame)
end
attackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(50)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.5) * angles(math.rad(70), math.rad(0), math.rad(50)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(100), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-100), math.rad(10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  for i = 0, 22 do
  end
  for i = 0, 1 do
    MagicCircle(BrickColor.new("Really red"), MagicPrtA.CFrame, 0.1, 0.1, 0.1, 0.8, 0.8, 0.8, 0.06)
    MagicRing(BrickColor.new("Really red"), MagicPrtA.CFrame, 0.1, 0.1, 0.1, 1, 1, 1, 0.06)
    MMMAGIC(MagicPrtA, 2, 2, 2, 0, 0, 0, BrickColor.new("Really red"))
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-100), math.rad(10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  attack = false
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-80)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-30)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-100), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(50)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(100), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  for i = 0, 22 do
  end
  for i = 0, 1 do
    MagicCircle(BrickColor.new("Really red"), MagicPrtB.CFrame, 0.1, 0.1, 0.1, 0.8, 0.8, 0.8, 0.06)
    MagicRing(BrickColor.new("Really red"), MagicPrtB.CFrame, 0.1, 0.1, 0.1, 1, 1, 1, 0.06)
    MMMAGIC(MagicPrtB, 2, 2, 2, 0, 0, 0, BrickColor.new("Really red"))
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(50)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(100), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  attack = false
end
attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  for i = 0, 22 do
  end
  for i = 0, 1 do
    MagicCircle(BrickColor.new("Really red"), Torso.CFrame * cf(0, 0, -5), 0.5, 0.5, 0.5, 2, 2, 2, 0.06)
    MagicRing(BrickColor.new("Really red"), Torso.CFrame * cf(0, 0, -5), 0.5, 0.5, 0.5, 2, 2, 2, 0.06)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.8)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.8)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.8)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
  end
  attack = false
end
mouse.Button1Down:connect(function()
  if attacktype == 1 then
    attacktype = 2
    attackone()
  else
    if attacktype == 2 then
      attacktype = 3
      attacktwo()
    else
      if attacktype == 3 then
        attacktype = 1
        attackthree()
      end
    end
  end
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
end)
local sine = 0
local change = 1
local val = 0
while 1 do
  swait()
  sine = sine + change
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 2).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((500 <= idle and attack ~= false) or 1 < RootPart.Velocity.y) and hitfloor == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.8)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.8)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-40)), 0.8)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.8)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(70)), 0.8)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.8)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
        end
      else
        if torvel < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.8)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(30)), 0.8)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.8)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.8)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(100), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.8)
          end
        else
          if 2 < torvel and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false then
              change = 3
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.8)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.8)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90 * math.cos((sine) / 1)), math.rad(0), math.rad(15)), 0.8)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90 * math.cos((sine) / 1)), math.rad(0), math.rad(-15)), 0.8)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.8)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.8)
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
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              if Thing[2] == "Cylinder" then
                Mesh = Thing[1].Mesh
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
                    Mesh = Thing[1].Mesh
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
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
end

