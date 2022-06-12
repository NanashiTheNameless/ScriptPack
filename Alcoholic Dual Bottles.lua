wait(1)
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
it = Instance.new
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
F = part(Enum.FormFactor.Plate, m, Enum.Material.Plastic, 0, 0, "Royal purple", "Handle", Vector3.new(3.5875988, 0.478346467, 1.19586647))
Fweld = weld(m, Character.Head, F, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0157470703, -0.438977718, 0.00266170502, 0.995733142, 0, 0.0922800079, 0.00925354939, 0.994959533, -0.0998490006, -0.0918148756, 0.10027688, 0.990714252))
mesh("SpecialMesh", F, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1029012", Vector3.new(0, 0, 0), Vector3.new(1.31545293, 1.31545281, 1.31545317))
player = game.Players.LocalPlayer
char = player.Character
run = game:GetService("RunService")
local xd = Instance.new("Model", game.Workspace)
xd.Name = player.Name .. "'s INSTANCES"
ignore = {}
mouse = player:GetMouse()
mouse.TargetFilter = xd
local IdleAndWalk = false
current = true
skl = false
function onKeyDown(key)
  key:lower()
  if key == "f" then
    do
      local Camera = game.Workspace.CurrentCamera
      local Player = game:GetService("Players").LocalPlayer
      repeat
        wait()
      until Player.Character
      Camera.CameraType = "Scriptable"
      game:GetService("RunService").Stepped:connect(function()
        Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.fromEulerAnglesXYZ(0.01, 0.01, 0.01)
      end)
    end
  end
end
mouse.KeyDown:connect(onKeyDown)
function onKeyDown(key)
  key:lower()
  if key == "g" then
    local Camera = game.Workspace.CurrentCamera
    Camera.CameraType = "Follow"
  end
end
mouse.KeyDown:connect(onKeyDown)
local Player, Character, Mouse = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer:GetMouse()
local currentCam = workspace.CurrentCamera
Humanoid = Character:findFirstChild("Humanoid")
Torso = Character:findFirstChild("Torso")
Head = Character:findFirstChild("Head")
Right_Arm = Character:findFirstChild("Right Arm")
Left_Arm = Character:findFirstChild("Left Arm")
Right_Leg = Character:findFirstChild("Right Leg")
Right_Leg.FormFactor = "Custom"
Left_Leg = Character:findFirstChild("Left Leg")
Left_Leg.FormFactor = "Custom"
Right_Shoulder = Torso:findFirstChild("Right Shoulder")
Left_Shoulder = Torso:findFirstChild("Left Shoulder")
Right_Hip = Torso:findFirstChild("Right Hip")
Left_Hip = Torso:findFirstChild("Left Hip")
Neck = Torso:findFirstChild("Neck")
rootPart = Character:findFirstChild("HumanoidRootPart")
rootPart.Archivable = true
rootJoint = rootPart:findFirstChild("RootJoint")
rootJoint.Archivable = true
c_new = CFrame.new
i_new = Instance.new
c_angles = CFrame.Angles
Humanoid:ClearAllChildren()
local Animations = false
local followMouse = false
local isSprinting = false
local Angle = 0
local angleSpeed = 1
local currentAnim
local Vaping = false
local vapePower = 2.5
local Release = false
local currentFace = Head.face.Texture
function math_pos(float)
  if float < 0 then
    float = 0
  end
  return float
end
function math_neg(float)
  if float > 0 then
    float = 0
  end
  return float
end
function math_max(float, max)
  if max < float then
    float = max
  end
  return float
end
function math_min(float, min)
  if min < float then
    float = min
  end
  return float
end
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
  wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
  return wld
end
function newWeld2(wp02, wp12, wc0x2, wc0y2, wc0z2, wc0x12, wc0y12, wc0z12)
  wld2 = Instance.new("Weld", wp12)
  wld2.Part0 = wp02
  wld2.Part1 = wp12
  wld2.C0 = CFrame.new(wc0x2, wc0y2, wc0z2) * CFrame.Angles(wc0x12, wc0y12, wc0z12)
  return wld2
end
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0)
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0)
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0)
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0)
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0)
function nooutline(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = i_new("Part")
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
  local mesh = i_new(Mesh)
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
  local weld = i_new("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
function swait(num)
  if num == 0 or num == nil then
    game:GetService("RunService").Stepped:wait(0)
  else
    for i = 0, num do
      game:GetService("RunService").Stepped:wait(0)
    end
  end
end
function newRay(start, face, range, wat)
  local ray = Ray.new(start.p, (face.p - start.p).Unit * range)
  hit, pos = workspace:findPartOnRayWithIgnoreList(ray, wat)
  return ray, hit, pos
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
local freeFalling = false
Humanoid.FreeFalling:connect(function(f)
  if f then
    freeFalling = true
  else
    freeFalling = false
  end
end)
function Vapor()
end
function Vape()
  if Release == true and vapePower > 5 then
    Vaping = true
    Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
    z2 = Instance.new("Sound", char)
    z2.SoundId = "rbxassetid://179697562"
    z2.Looped = false
    z2.Pitch = 0.72
    z2.Volume = 5
    for i = 0, 3, 0.01 do
      Animations = true
      RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0.1) * c_angles(math.rad(20), math.rad(0), math.rad(20)), 0.01)
      LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0.1) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.01)
      LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-5.5)), 0.005)
      RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(5.5)), 0.005)
      Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), 0), 0.01)
      Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-5), math.rad(0), 0), 0.005)
      Head.face.Texture = "http://www.roblox.com/asset/?id=7317691"
      swait()
    end
    z2:Play()
    z = Instance.new("Sound", char)
    z.SoundId = "rbxassetid://394983740"
    z.Looped = false
    z.Pitch = 0.72
    z.Volume = 10
    wait(0.1)
    z:Play()
    wait(7.5)
    Head.face.Texture = currentFace
    Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
    Animations = false
    wait(1)
    Vaping = false
    vapePower = 2.5
  elseif vapePower < 5 then
    Vaping = false
    vapePower = 2.5
  end
end
Mouse.KeyDown:connect(function(key)
  if key == "z" and followMouse == false then
    followMouse = true
    gyro = Instance.new("BodyGyro", rootPart)
    gyro.P = 10000000
    gyro.D = 1000
    gyro.MaxTorque = Vector3.new(0, 10000000, 0)
    coroutine.resume(coroutine.create(function()
      while wait() do
        gyro.CFrame = CFrame.new(Vector3.new(), (Mouse.Hit.p - rootPart.CFrame.p).unit * 100)
      end
    end))
  elseif key == "z" and followMouse == true then
    followMouse = false
    gyro:Destroy()
  end
end)
Mouse.Button1Down:connect(function()
  if Vaping == false then
    Vaping = true
    Release = false
    Mouse.Button1Up:connect(function()
      Release = true
    end)
    if Release == false then
      repeat
        Animations = true
        vapePower = vapePower + 0.1
        Humanoid.WalkSpeed = 0
        Humanoid.JumpPower = 0
        wait()
        RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.8, 1.4, -1) * c_angles(math.rad(60), math.rad(-25), math.rad(-80)) * CFrame.Angles(0, math.rad(150), 0), 0.1)
        LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0.1) * c_angles(math.rad(-12.5), math.rad(10), math.rad(-25)), 0.1)
        LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(-5)), 0.01)
        RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(5)), 0.01)
        Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.05) * c_angles(math.rad(11.5), math.rad(0), 0), 0.05)
        Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(15), math.rad(0), 0), 0.01)
        if vapePower > 5 then
          Head.face.Texture = "http://www.roblox.com/asset/?id=7317691"
        elseif vapePower < 5 then
          Humanoid.WalkSpeed = 16
          Humanoid.JumpPower = 50
        end
        print(vapePower)
      until Release == true
    end
    Animations = false
    Vape()
  end
end)
Vepr = Instance.new("Model", Character)
Handle = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Royal purple", "Handle", Vector3.new(0.200000003, 0.800000012, 0.200000003))
Handleweld = weld(Vepr, Right_Arm, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.677656174, -0.199986219, -0.745416641, 0.721854568, 0.692044795, -4.12490877E-8, 0, 5.96046377E-8, 1, 0.692044854, -0.721854508, 4.30258851E-8))
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
it = Instance.new
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
BottleR = part(Enum.FormFactor.Plate, m, Enum.Material.Neon, 0, 0, "Royal purple", "Handle", Vector3.new(1.44916654, 1.73900044, 1.44916654))
BottleRweld = weld(m, Character["Right Arm"], BottleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.150012493, 1.13759422, -1.12566471, -1, 0, 0, 0, 0.146834984, -0.989161015, 0, -0.989160895, -0.146834999))
mesh("SpecialMesh", BottleR, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11409474", Vector3.new(0, 0, 0), Vector3.new(2.17374969, 3.62291789, 2.17374969))
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
it = Instance.new
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
BottleL = part(Enum.FormFactor.Plate, m, Enum.Material.Neon, 0, 0, "Royal purple", "Handle", Vector3.new(1.44916654, 1.73900044, 1.44916654))
BottleLweld = weld(m, Character["Left Arm"], BottleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.229987741, 1.13759422, -1.12566471, -1, 0, 0, 0, 0.146834984, -0.989161015, 0, -0.989160895, -0.146834999))
mesh("SpecialMesh", BottleL, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11409474", Vector3.new(0, 0, 0), Vector3.new(2.17374969, 3.62291789, 2.17374969))
game:GetService("RunService").Stepped:connect(function()
  Angle = Angle % 100 + angleSpeed / 10
  walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
  jumpVel = Torso.Velocity.Y
  if Humanoid.Jump and jumpVel > 1 then
    currentAnim = "Jumping"
  elseif freeFalling == true then
    currentAnim = "Falling"
  elseif walkingMagnitude < 2 then
    currentAnim = "Idling"
  elseif isSprinting == true then
    currentAnim = "Sprinting"
  elseif walkingMagnitude > 2 then
    currentAnim = "Walking"
  end
  if currentAnim == "Jumping" and Animations == false then
    angleSpeed = 1
    axisSpeed = 1
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, -0.1) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.15)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, -0.1) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.15)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.15)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.15)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)) * c_angles(math.rad(0), math.rad(0), rootPart.RotVelocity.Y / 55), 0.4)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
  elseif currentAnim == "Falling" and Animations == false then
    angleSpeed = 1
    axisSpeed = 1
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, -0.1) * c_angles(math.rad(0), math.rad(0), math.rad(65)), 0.125)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, -0.1) * c_angles(math.rad(0), math.rad(0), math.rad(-65)), 0.125)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -0.4, -0.4) * c_angles(math.rad(-5), math.rad(0), math.rad(-2.5)), 0.125)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.4, -0.4) * c_angles(math.rad(-5), math.rad(0), math.rad(2.5)), 0.125)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.05)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-17.5), math.rad(0), math.rad(0)), 0.125)
  elseif currentAnim == "Idling" and Animations == false then
    angleSpeed = 0.25
    axisSpeed = 0.25
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5 + math.sin(Angle) * 0.075, 0.1) * c_angles(math.rad(15) + math.sin(Angle) * 0.075, math.rad(0), math.rad(10) + math.sin(Angle) * 0.075), 0.125)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5 + math.sin(Angle) * 0.075, 0.1) * c_angles(math.rad(-10) + math.sin(Angle) * 0.075, math.rad(0), math.rad(-10) - math.sin(Angle) * 0.075), 0.125)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1.1 - math.sin(Angle) * 0.075, -0.25) * c_angles(math.rad(15), math.rad(0), math.rad(-7.5)), 0.125)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1.1 - math.sin(Angle) * 0.075, -0.25) * c_angles(math.rad(-15), math.rad(0), math.rad(7.5)), 0.125)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(Angle) * 0.075, 0) * c_angles(math.rad(-5), math.rad(0), 0), 0.3)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.05) * c_angles(math.rad(-5) + math.sin(Angle) * 0.05, math.rad(0), 0), 0.125)
  elseif currentAnim == "Sprinting" and Animations == false then
    angleSpeed = 2
    axisSpeed = 2
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(-math.sin(Angle) * 2, math.rad(5) + math.sin(Angle) * 0.1, math.rad(5) + rootPart.RotVelocity.Y / 35), 0.15)
    RA_Weld.C1 = c_new(0, 0.5, 0)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(-math.sin(Angle) * -2, math.rad(-5) + math.sin(Angle) * 0.1, math.rad(-5) + rootPart.RotVelocity.Y / 35), 0.15)
    LA_Weld.C1 = c_new(0, 0.5, 0)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1.15 + math_pos(-math.cos(Angle - 0.25) * 0.65), math_neg(math.asin(math.sin(Angle)) * 0.65)) * c_angles(-0.025 - math.asin(math.sin(Angle)) * 1, 0, -0.025 + -math.asin(math.sin(Angle)) * 0.025 + rootPart.RotVelocity.Y / 25), 0.15)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1.15 + math_pos(math.cos(Angle - 0.25) * 0.65), math_neg(-math.asin(math.sin(Angle)) * 0.65)) * c_angles(-0.025 + math.asin(math.sin(Angle)) * 1, 0, 0.025 + -math.asin(math.sin(Angle)) * 0.025 + rootPart.RotVelocity.Y / 25), 0.15)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.abs(math.sin(Angle) * 0.25), 0) * c_angles(math.rad(-20) + math.abs(math.sin(Angle) * 0.05) + rootPart.RotVelocity.Y / 35, math.sin(Angle) * 0.015, rootPart.RotVelocity.Y / 55), 0.15)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.abs(math.sin(Angle / 2) * 0.5 * 0.05), math.sin(Angle) * -0.05 + rootPart.RotVelocity.Y / 15, 0), 0.15)
  elseif currentAnim == "Walking" and Animations == false then
    angleSpeed = 1
    axisSpeed = 1
    Humanoid.WalkSpeed = 7
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(-math.sin(Angle) * 0.6, math.rad(5) + math.sin(Angle) * 0.05, math.rad(5)), 0.15)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(-math.sin(Angle) * -0.6, math.rad(-5) + math.sin(Angle) * 0.05, math.rad(-5)), 0.15)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1.05 + math_pos(-math.cos(Angle - 0.25) * 0.35), math_neg(math.asin(math.sin(Angle)) * 0.35)) * c_angles(-0.025 - math.asin(math.sin(Angle)) * 0.4, 0, -0.025 + -math.asin(math.sin(Angle)) * 0.025 - rootPart.RotVelocity.Y / 65), 0.15)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1.05 + math_pos(math.cos(Angle - 0.25) * 0.35), math_neg(-math.asin(math.sin(Angle)) * 0.35)) * c_angles(-0.025 + math.asin(math.sin(Angle)) * 0.4, 0, 0.025 + -math.asin(math.sin(Angle)) * 0.025 - rootPart.RotVelocity.Y / 65), 0.15)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.abs(math.sin(Angle) * 0.05), 0) * c_angles(math.rad(-12.5) + math.abs(math.sin(Angle) * 0.05), math.sin(Angle) * 0.015, rootPart.RotVelocity.Y / 55), 0.15)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.abs(math.sin(Angle / 2) * 0.5 * 0.05), math.sin(Angle) * -0.05 + rootPart.RotVelocity.Y / 45, 0), 0.15)
  end
end)