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
xenabled = true
cenabled = true
venabled = true
zenabled = true
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
local shoot = false
player = nil
mana = 0
local Mode = "Gun"
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
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
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
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
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.022222222222222223
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
  local TrailColor = "Really red"
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
function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
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
    local c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
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
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Cannon Pirate" and h.Parent.Name ~= "Hologram" then
        print("gained kill")
        script.Parent.Kills.Value = script.Parent.Kills.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Bright blue").Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
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
      local rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Instance.new("BodyVelocity")
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
      local rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Snare" then
      local bp = Instance.new("BodyPosition")
      bp.P = 2000
      bp.D = 100
      bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      bp.position = hit.Parent.Torso.Position
      bp.Parent = hit.Parent.Torso
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Target" then
      local Targetting = false
      if Targetting == false then
        ZTarget = hit.Parent.Torso
        coroutine.resume(coroutine.create(function(Part)
          so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
          swait(5)
          so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
        end), ZTarget)
        local TargHum = ZTarget.Parent:findFirstChild("Humanoid")
        local targetgui = Instance.new("BillboardGui")
        targetgui.Parent = ZTarget
        targetgui.Size = UDim2.new(10, 100, 10, 100)
        local targ = Instance.new("ImageLabel")
        targ.Parent = targetgui
        targ.BackgroundTransparency = 1
        targ.Image = "rbxassetid://4834067"
        targ.Size = UDim2.new(1, 0, 1, 0)
        cam.CameraType = "Scriptable"
        cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
        local dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
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
    end
    local debounce = Instance.new("BoolValue")
    debounce.Name = "DebounceHit"
    debounce.Parent = hit.Parent
    debounce.Value = true
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe1 = it("TextLabel")
fenframe1.Parent = fengui
fenframe1.BackgroundColor3 = Color3.new(0.19607843137254902, 0.19607843137254902, 0.19607843137254902)
fenframe1.BackgroundTransparency = 0.3
fenframe1.BorderSizePixel = 5
fenframe1.BorderColor3 = Color3.new(1, 1, 1)
fenframe1.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1.Text = "Z"
fenframe1.TextWrapped = true
fenframe1.FontSize = 7
fenframe1.TextColor3 = Color3.new(1, 1, 1)
local fenframe1a = it("TextLabel")
fenframe1a.Parent = fengui
fenframe1a.BackgroundColor3 = Color3.new(0.7843137254901961, 0.7843137254901961, 0.7843137254901961)
fenframe1a.BackgroundTransparency = 0.3
fenframe1a.BorderSizePixel = 5
fenframe1a.BorderColor3 = Color3.new(1, 1, 1)
fenframe1a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1a.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1a.Text = ""
local fenframe2 = it("TextLabel")
fenframe2.Parent = fengui
fenframe2.BackgroundColor3 = Color3.new(0.19607843137254902, 0.19607843137254902, 0.19607843137254902)
fenframe2.BackgroundTransparency = 0.3
fenframe2.BorderSizePixel = 5
fenframe2.BorderColor3 = Color3.new(1, 1, 1)
fenframe2.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2.Text = "X"
fenframe2.TextWrapped = true
fenframe2.FontSize = 7
fenframe2.TextColor3 = Color3.new(1, 1, 1)
local fenframe2a = it("TextLabel")
fenframe2a.Parent = fengui
fenframe2a.BackgroundColor3 = Color3.new(0.7843137254901961, 0.7843137254901961, 0.7843137254901961)
fenframe2a.BackgroundTransparency = 0.3
fenframe2a.BorderSizePixel = 5
fenframe2a.BorderColor3 = Color3.new(1, 1, 1)
fenframe2a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2a.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2a.Text = ""
local fenframe3 = it("TextLabel")
fenframe3.Parent = fengui
fenframe3.BackgroundColor3 = Color3.new(0.19607843137254902, 0.19607843137254902, 0.19607843137254902)
fenframe3.BackgroundTransparency = 0.3
fenframe3.BorderSizePixel = 5
fenframe3.BorderColor3 = Color3.new(1, 1, 1)
fenframe3.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3.Text = "C"
fenframe3.TextWrapped = true
fenframe3.FontSize = 7
fenframe3.TextColor3 = Color3.new(1, 1, 1)
local fenframe3a = it("TextLabel")
fenframe3a.Parent = fengui
fenframe3a.BackgroundColor3 = Color3.new(0.7843137254901961, 0.7843137254901961, 0.7843137254901961)
fenframe3a.BackgroundTransparency = 0.3
fenframe3a.BorderSizePixel = 5
fenframe3a.BorderColor3 = Color3.new(1, 1, 1)
fenframe3a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3a.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3a.Text = ""
local fenframe4 = it("TextLabel")
fenframe4.Parent = fengui
fenframe4.BackgroundColor3 = Color3.new(0.19607843137254902, 0.19607843137254902, 0.19607843137254902)
fenframe4.BackgroundTransparency = 0.3
fenframe4.BorderSizePixel = 5
fenframe4.BorderColor3 = Color3.new(1, 1, 1)
fenframe4.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4.Text = "V"
fenframe4.TextWrapped = true
fenframe4.FontSize = 7
fenframe4.TextColor3 = Color3.new(1, 1, 1)
local fenframe4a = it("TextLabel")
fenframe4a.Parent = fengui
fenframe4a.BackgroundColor3 = Color3.new(0.7843137254901961, 0.7843137254901961, 0.7843137254901961)
fenframe4a.BackgroundTransparency = 0.3
fenframe4a.BorderSizePixel = 5
fenframe4a.BorderColor3 = Color3.new(1, 1, 1)
fenframe4a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4a.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4a.Text = ""
fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.03333333333333333
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 0)
  local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Instance.new("BillboardGui")
  BillboardGui.Size = UDim2.new(3, 0, 3, 0)
  BillboardGui.Adornee = EffectPart
  local TextLabel = Instance.new("TextLabel")
  TextLabel.BackgroundTransparency = 1
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.Text = Text
  TextLabel.TextColor3 = Color
  TextLabel.TextScaled = true
  TextLabel.Font = Enum.Font.ArialBold
  TextLabel.Parent = BillboardGui
  BillboardGui.Parent = EffectPart
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  Delay(0, function()
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
handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Handle", Vector3.new(0.800000012, 0.600000024, 0.400000036))
handleweld = weld(m, Character["Right Arm"], handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0999984741, 0.00293731689, -0.997625113, 0.999999762, 0, 0, 0, -2.98023224E-8, 1, 0, -0.999999642, -2.98023206E-8))
mesh("CylinderMesh", handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BarrelA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BarrelA", Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelAweld = weld(m, handle, BarrelA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, -0.501502991, 0.70533812, 0.999999762, 8.9397489E-13, -4.26325811E-14, 8.93974673E-13, -1, -7.63833441E-14, -4.2632554E-14, 7.81597009E-14, -0.999999762))
mesh("BlockMesh", BarrelA, "", "", Vector3.new(0, 0, 0), Vector3.new(0.170000017, 1, 2))
BarrelB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BarrelB", Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelBweld = weld(m, handle, BarrelB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, 0.498413086, 0.705340028, 0.999999762, 8.93975215E-13, -4.26325811E-14, 8.93974998E-13, -1, -7.99360578E-14, -4.2632554E-14, 8.17124146E-14, -0.999999762))
mesh("BlockMesh", BarrelB, "", "", Vector3.new(0, 0, 0), Vector3.new(0.170000017, 1, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.600000024, 2.60000038))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.701442719, -0.600021362, 2.49932575, 0.999998927, 1.87752244E-6, -7.99447123E-4, -1.84774353E-6, 0.999999166, -1.93715053E-7, 7.99283211E-4, 2.23561045E-7, 0.999998808))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, 0.405347705, 0.497962952, 0.999999285, 0, 0, 0, 1.49011647E-8, -0.999999046, 0, 0.999999762, 1.49011594E-8))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, 0.405347705, 0.501495361, 0.999999285, 0, 0, 0, 1.49011647E-8, -0.999999046, 0, 0.999999762, 1.49011594E-8))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.170000017, 1, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 1.00000012, 1.20000029))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700000763, -3.05175781E-5, -3.76701355E-5, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 2.20000005, 0.599999964))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700000763, -3.05175781E-5, 0.899943829, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.599975586, 3.38554382E-5, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 1.79999995, 0.599999964))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.709243774, -2.28881836E-5, 0.899943829, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.399993896, -5.96046448E-6, 0.999999762, 0, 0, 0, 1, -1.77635684E-15, 0, 0, 0.999999762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.800000012, 0.99999994))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.713443756, -0.500030518, 1.69926405, 0.999998927, -2.26500038E-6, -7.99596135E-4, 2.27987721E-6, 0.999999225, 1.93017172E-7, 7.99476926E-4, -2.231682E-7, 0.999998927))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000006, 1.20000017))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700153351, -0.700019836, 6.69956207E-4, -0.999999106, 1.87757018E-6, 7.99469941E-4, 1.84774353E-6, 0.999999166, 1.34110437E-7, -7.99469592E-4, 1.63956443E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.600000083, 2.60000038))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.698387146, -0.599975586, 2.50042844, -0.999998689, -1.90737251E-6, -7.99447123E-4, 1.90734818E-6, -0.999998927, -1.34110465E-7, -7.99282978E-4, -1.64014665E-7, 0.999998808))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.709453583, -0.399978638, 2.50040436, -0.999999166, 2.30715773E-6, -7.99596135E-4, -2.33717014E-6, -0.999999523, 2.5262176E-7, -7.99476926E-4, 2.82754144E-7, 0.999998927))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700153351, -0.80002594, -0.2993083, -0.999999106, 1.87757018E-6, 7.99469941E-4, 1.84774353E-6, 0.999999166, 1.34110437E-7, -7.99469592E-4, 1.63956443E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.70142746, -0.80002594, 1.49932528, 0.999998927, 1.87752244E-6, -7.99447123E-4, -1.84774353E-6, 0.999999166, -1.93715053E-7, 7.99283211E-4, 2.23561045E-7, 0.999998808))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000036, 1.20000005))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699836731, -0.69997406, -4.49538231E-4, 0.999999344, -1.89480204E-6, 7.99469941E-4, -1.92476682E-6, -0.999999523, 1.93715039E-7, 7.99469766E-4, -2.23517404E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.99999994, 0.200000003, 2))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999984741, 0.599975586, 0.999940634, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.40000045, 0.200000003, 1.20000005))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781E-5, -7.55310059E-4, 5.96046448E-5, -1.48553302E-13, -0.999995828, 2.98021838E-8, -0.999999762, -1.503297E-13, -2.98021909E-8, 2.98023295E-8, -2.9802214E-8, -0.999995589))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.285999984, 1.01199996))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.698394775, -0.799972534, 1.50044394, -0.999998689, -1.90737251E-6, -7.99447123E-4, 1.90734818E-6, -0.999998927, -1.34110465E-7, -7.99282978E-4, -1.64014665E-7, 0.999998808))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, 0.405347705, -0.502029419, 0.999999285, 0, 0, 0, 1.49011647E-8, -0.999999046, 0, 0.999999762, 1.49011594E-8))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.39996767, 0.599975586, 0.999999762, 0, 0, 0, 1.49011647E-8, -0.999999523, 0, 0.999999762, 1.49011594E-8))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699840546, -0.799964905, -0.300427675, 0.999999344, -1.89480204E-6, 7.99469941E-4, -1.92476682E-6, -0.999999523, 1.93715039E-7, 7.99469766E-4, -2.23517404E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.195159912, -0.900024414, 0.899938345, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.194999695, -0.900024414, 0.200763583, -0.999999106, 1.87757018E-6, 7.99469941E-4, 1.84774353E-6, 0.999999166, 1.34110437E-7, -7.99469592E-4, 1.63956443E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.39996767, 0.499969482, 0.999999642, 0, 0, 0, 1.49011647E-8, -0.999999404, 0, 0.999999762, 1.49011594E-8))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.203845978, -0.899963379, 1.90046763, 0.99999851, -1.38333075E-6, 8.11993901E-4, 1.25192548E-6, 0.999998987, 9.15403871E-6, -8.1211311E-4, -9.18428123E-6, 0.999998808))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.800000012, 0.999999881))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.709457397, -0.499977112, 1.70040178, -0.999999166, 2.30715773E-6, -7.99596135E-4, -2.33717014E-6, -0.999999523, 2.5262176E-7, -7.99476926E-4, 2.82754144E-7, 0.999998927))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.405341506, -0.502037048, 0.999999285, 0, 0, 0, 1.49011647E-8, -0.999999046, 0, 0.999999762, 1.49011594E-8))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.170000017, 1, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.600000143, 1.21000028))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.708374023, -3.05175781E-5, -0.00504338741, 0.999999523, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999523))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.709457397, -0.500030518, 6.97374344E-4, -0.999999166, 1.89247135E-6, 7.99469941E-4, 1.86264469E-6, 0.999999225, 1.34110437E-7, -7.99469533E-4, 1.63927339E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.39996767, -0.600021362, 0.999999762, 0, 0, 0, 1.49011647E-8, -0.999999523, 0, 0.999999762, 1.49011594E-8))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.196155548, -0.899963379, 1.90047097, 0.99999851, -1.38333075E-6, 8.11993901E-4, 1.25192548E-6, 0.999998987, 9.15403871E-6, -8.1211311E-4, -9.18428123E-6, 0.999998808))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.713447571, -0.400032043, 2.49926639, 0.999998927, -2.26500038E-6, -7.99596135E-4, 2.27987721E-6, 0.999999225, 1.93017172E-7, 7.99476926E-4, -2.231682E-7, 0.999998927))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.4000001, 2))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.5, -3.05175781E-5, 0.999940634, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.709461212, -0.499969482, -4.37021255E-4, 0.999999344, -1.89480204E-6, 7.99469941E-4, -1.92476682E-6, -0.999999523, 1.93715039E-7, 7.99469766E-4, -2.23517404E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.600028992, 3.38554382E-5, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.39996767, -0.500030518, 0.999999642, 0, 0, 0, 1.49011647E-8, -0.999999404, 0, 0.999999762, 1.49011594E-8))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(1.40000045, 0.200000018, 1.20000005))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891E-5, -7.55310059E-4, 6.81877136E-5, 8.88178631E-16, -1, 2.98023206E-8, -0.999999762, -1.77635769E-15, -2.98023224E-8, 2.98023224E-8, -2.98023259E-8, -0.999999762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.190341949, -0.900024414, 0.899938345, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.400001526, -5.96046448E-6, 0.999999762, 0, 0, 0, 1, -1.77635684E-15, 0, 0, 0.999999762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.190494537, -0.900024414, 0.200588226, -0.999999106, 1.87757018E-6, 7.99469941E-4, 1.84774353E-6, 0.999999166, 1.34110437E-7, -7.99469592E-4, 1.63956443E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.709449768, -0.600021362, -0.299300909, -0.999999166, 1.89247135E-6, 7.99469941E-4, 1.86264469E-6, 0.999999225, 1.34110437E-7, -7.99469533E-4, 1.63927339E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000152, 2.61000037))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.708377838, 2.28881836E-5, -2.50490212, 0.999999642, 0, 0, 0, -0.999999702, -4.470348E-8, 0, 2.98023295E-8, -0.999999344))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.709445953, -0.599967957, -0.300435305, 0.999999344, -1.89480204E-6, 7.99469941E-4, -1.92476682E-6, -0.999999523, 1.93715039E-7, 7.99469766E-4, -2.23517404E-7, -0.999999166))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1, 0.200000003, 2))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999984741, -0.600021362, 0.999940634, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.600000143, 2.60000014))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700000763, -3.05175781E-5, 2.49992704, 0.999999762, 0, 0, 0, 1, 1.77635684E-15, 0, -3.55271368E-15, 0.999999762))
BladeHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "BladeHandle", Vector3.new(0.200000003, 1, 3.39999986))
BladeHandleweld = weld(m, Character["Right Arm"], BladeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0872383118, -1.20300293, 0.302297354, 1, -2.21671375E-8, 7.04762897E-8, -7.04762684E-8, 2.98023188E-8, 0.999999404, -2.2167157E-8, -0.999999285, 2.98023224E-8))
Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Really red", "Hitbox", Vector3.new(0.200000003, 4.79999971, 1))
Hitboxweld = weld(m, BladeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.699994326, 0, 1, -9.99836402E-7, 1.80018773E-7, -1.80019143E-7, 1.49011647E-8, 0.999998808, -9.99837425E-7, -0.999998808, 1.49011719E-8))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really red", "BladePart", Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00135803223, -0.393920898, -1.29699707E-4, -0.999998927, 2.05645279E-6, 8.02798022E-4, -2.0555824E-6, -0.999997914, 3.17394552E-6, 8.02962692E-4, 3.11428425E-6, 0.999998093))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really red", "BladePart", Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399986267, -5.7220459E-6, 1.70002365, 1.42108547E-14, -0.999998808, -1.77635684E-15, -1, 2.13162821E-14, -2.98022744E-8, 2.98023828E-8, -3.55271368E-15, -0.999998808))
mesh("CylinderMesh", BladePart, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really red", "BladePart", Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400005341, -5.7220459E-6, 1.70001566, 4.33431069E-13, -0.999998093, 1.63424829E-13, -1, -9.23705556E-14, -2.98015639E-8, 2.98019547E-8, 2.14939178E-13, -0.999998093))
mesh("CylinderMesh", BladePart, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really red", "BladePart", Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00168228149, -0.399024963, 1.89990211, 0.999998748, -2.1309047E-6, 8.02797964E-4, 2.13086582E-6, 0.999997854, 3.29315458E-6, -8.02962575E-4, -3.21859238E-6, 0.999998093))
mesh("SpecialMesh", BladePart, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really red", "BladePart", Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00168037415, -0.399391174, -1.23500824E-4, 0.999998748, -2.1309047E-6, 8.02797964E-4, 2.13086582E-6, 0.999997854, 3.29315458E-6, -8.02962575E-4, -3.21859238E-6, 0.999998093))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really red", "BladePart", Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00135612488, -0.39358139, 1.89990449, -0.999998927, 2.05645279E-6, 8.02798022E-4, -2.0555824E-6, -0.999997914, 3.17394552E-6, 8.02962692E-4, 3.11428425E-6, 0.999998093))
mesh("SpecialMesh", BladePart, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "BladePart", Vector3.new(0.200000003, 0.520000041, 1.39999998))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00136566162, -0.239994049, 2.3998909, 0.999999166, -1.95434222E-6, -7.99282745E-4, 1.92285847E-6, 0.999998212, -1.86264401E-6, 7.99447356E-4, 2.07120365E-6, 0.999998033))
mesh("SpecialMesh", BladePart, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "BladePart", Vector3.new(1.00000012, 0.200000003, 1.00000012))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453E-6, -5.7220459E-6, 1.60001981, 3.26849658E-13, -0.999999404, -3.01980663E-14, -1, -3.05533376E-13, -2.98017593E-8, 2.98018055E-8, 2.84217094E-14, -0.999999404))
mesh("CylinderMesh", BladePart, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladePart = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "BladePart", Vector3.new(0.200000003, 0.479999989, 1.39999998))
BladePartweld = weld(m, BladeHandle, BladePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00135612488, -0.260002136, 2.39991736, -0.999998927, 2.05645279E-6, 8.02798022E-4, -2.0555824E-6, -0.999997914, 3.17394552E-6, 8.02962692E-4, 3.11428425E-6, 0.999998093))
mesh("SpecialMesh", BladePart, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BackHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "BackHandle", Vector3.new(0.400000095, 0.400000036, 0.200000003))
BackHandleweld = weld(m, Character.Torso, BackHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00270080566, -0.400000572, -0.995346785, 0.999995828, 9.57450538E-7, 9.07493813E-5, -8.38253868E-7, 0.999996424, 1.28402306E-7, -9.07492722E-5, -1.28478149E-7, 0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.20000005, 0.400000036, 0.399999976))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.67028809E-5, -1.47819519E-5, 0.299961567, 0.999977112, 5.98281886E-8, 7.15263013E-7, 5.95732566E-8, 0.999999404, -1.0673773E-10, 1.5279511E-10, 1.35713663E-11, 0.999977708))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.800000072, 0.200000003, 0.600000024))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.43322754E-5, -1.29999566, -0.19994545, 0.999962568, 3.36675754E-7, 7.15328497E-7, 3.36268641E-7, -1.00000596, -1.72142322E-7, -7.15474016E-7, 1.72335845E-7, -0.999966145))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2, 0.400000036, 0.399999976))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781E-5, 0.399995804, 0.299943924, 0.999962568, -5.95748411E-8, -1.5279511E-10, 5.99647478E-8, 1.00000596, -1.35571554E-11, 1.43096258E-6, -1.72875048E-10, 0.999966145))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299932957, -0.800000668, 0.699989319, -2.20599759E-6, 8.24195183E-8, -0.999966145, 2.50814537E-7, -1.00000596, -8.22300166E-8, -0.999962568, -2.51218012E-7, 7.751878E-7))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399985313, -5.38825989E-5, 0.800014496, 4.46675614E-7, -1.0000031, -9.53122026E-11, 1.25138467E-6, -1.92912353E-10, 0.999983191, -0.999981284, -4.46891306E-7, 4.16730472E-7))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400000334, -4.8160553E-5, 0.799980164, -1.19698299E-7, -1.00000596, -8.56203997E-11, 1.75560126E-6, -2.72109446E-10, 0.999966145, -0.999962568, 1.19311267E-7, 3.24791472E-7))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.800000012, 0.600000083, 0.599999964))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891E-4, 0.900003672, 0.199926376, 0.999962568, -5.98762355E-8, -7.15517672E-7, 6.02658901E-8, 1.00000596, 1.25339739E-10, 2.14632746E-6, -3.11786152E-10, 0.999966145))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.299934387, -0.800001144, 0.699932098, 2.14639294E-6, -2.43232989E-10, 0.999966145, -6.0108313E-8, -1.00000596, -5.67865754E-11, 0.999962568, -5.97186656E-8, -7.15583155E-7))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781E-5, 0.399998188, -5.57899475E-5, 0.999962449, -5.97711889E-8, -7.15554052E-7, 6.01608363E-8, 1.00000596, 7.9623419E-11, 2.14636384E-6, -2.66084044E-10, 0.999966025))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399990797, -4.00543213E-5, 0.799942017, 5.96139245E-8, 1.00000596, -1.47792889E-10, 1.26962186E-5, -3.92930133E-11, 0.999966145, 0.999962568, -5.92242273E-8, -1.12654307E-5))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2, 0.400000036, 0.399999976))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-5, -0.400005579, 0.299938679, 0.999981284, 5.93643037E-8, -8.36495019E-7, -5.91571911E-8, 1.0000031, 1.1671375E-10, 1.67113467E-6, -2.14456009E-10, 0.999983191))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399995089, -4.43458557E-5, 0.79996109, -3.87580286E-7, 1.00000024, -6.71747102E-11, 1.24300786E-5, 6.27267127E-11, 1.00000024, 1, 3.87599812E-7, -1.21916382E-5))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453E-6, -0.399989605, -5.76972961E-5, 1, 7.44680392E-7, -1.49234256E-6, -7.44660611E-7, 1.00000024, 1.8306423E-10, 1.73078297E-6, -1.91121785E-10, 1.00000024))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-5, -0.401464701, -0.012863636, 0.999999881, 5.91680802E-8, -1.55193993E-6, -5.91485332E-8, 1.00000024, 2.09965378E-10, 1.79038034E-6, -2.19046115E-10, 1.00000012))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781E-5, 0.398539066, -0.0128684044, 0.999999881, -5.956732E-8, 1.19071046E-7, 5.95868315E-8, 1.00000024, -1.81472615E-11, 1.19376637E-7, 8.96704933E-12, 1.00000012))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781E-5, 0.398539066, -0.0128684044, 0.999999762, -5.956732E-8, 1.19071046E-7, 5.95868315E-8, 1.00000024, -1.81472615E-11, 1.19369361E-7, 8.96704933E-12, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.524999976, 0.300000012, 1.10000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.34057617E-5, -0.401463985, -0.0128593445, 1, 5.91109917E-8, -1.67275721E-6, -5.90914624E-8, 1.00000024, 2.37989184E-10, 1.91119761E-6, -2.4706992E-10, 1.00000024))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.524999976, 0.300000012, 1.10000002))
WingConnectorA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Maroon", "WingConnectorA", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorAweld = weld(m, BackHandle, WingConnectorA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.760124207, -0.500091553, 2.59146118, -0.70701617, -8.76535466E-7, 0.707190692, 2.30480083E-7, 0.999996424, 1.35069615E-6, -0.707191586, 1.03366017E-6, -0.707015276))
mesh("SpecialMesh", WingConnectorA, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
WingHandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "WingHandleA", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleAweld = weld(m, WingConnectorA, WingHandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727E-6, 9.36985016E-5, 7.62939453E-6, 0.999981105, -9.80367076E-9, 1.01327896E-6, 1.8345645E-8, 0.999986887, 2.1032065E-11, -1.34110451E-6, 9.24046617E-10, 0.999976635))
mesh("SpecialMesh", WingHandleA, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, WingHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00260162354, 1.39987755, 0.397865295, -0.999964237, -2.82797487E-7, -7.74860382E-7, -2.68114036E-7, 0.999991536, -3.07588664E-7, 1.43051147E-6, -3.09293114E-7, -0.999956012))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld = weld(m, WingHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00754928589, -3.2998507, 0.200576782, 0.999981046, -3.45696521E-4, 1.01327896E-6, -3.45703098E-4, -0.999986887, 7.34406058E-7, 1.34110451E-6, -7.35720846E-7, -0.999976635))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld = weld(m, WingHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00755310059, -3.29984474, -5.76019287E-4, -0.999973834, 3.4581509E-4, -9.53674316E-7, -3.45820386E-4, -0.999988914, 8.78280844E-7, -1.43051147E-6, 8.79830168E-7, 0.999967694))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, WingHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0071105957, -2.19989014, 0.39232254, 0.999964118, -3.41437757E-4, 7.4505806E-7, -3.41443112E-4, -0.999991536, 4.55009285E-7, 1.51991844E-6, -4.56985958E-7, -0.999955952))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld = weld(m, WingHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.397834778, 1.79987717, -0.0046081543, 1.1920929E-6, 8.05591753E-8, -0.999955893, -9.59476438E-7, 0.999991536, 8.22495849E-8, 0.999964118, 9.74177965E-7, 5.06639481E-7))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld = weld(m, WingHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.102138519, 1.39986181, -0.0054397583, 1.25169754E-6, 8.53931397E-8, -0.999958754, -9.66183052E-7, 0.99999094, 8.68290044E-8, 0.999966741, 9.78532171E-7, 5.96046448E-7))
WingConnectorB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Maroon", "WingConnectorB", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorBweld = weld(m, BackHandle, WingConnectorB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.784416199, -0.499978304, 2.59280396, -0.707191348, -3.90662137E-7, -0.707015634, 2.66780262E-7, 0.999996424, -7.00154715E-7, 0.707016468, -5.99482121E-7, -0.707190454))
mesh("SpecialMesh", WingConnectorB, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
WingHandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "WingHandleB", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleBweld = weld(m, WingConnectorB, WingHandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0180549622, 3.62634659E-4, -0.00287246704, 1.00000024, 2.62332378E-9, -2.88337469E-4, -2.63818833E-9, 1.00000048, -1.41619694E-9, 2.88575888E-4, 1.4564705E-9, 1.00000012))
mesh("SpecialMesh", WingHandleB, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld = weld(m, WingHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00733184814, -3.29872251, -2.40325928E-4, -1.00000024, 3.45554465E-4, 5.09619713E-6, -3.45554959E-4, -0.999998748, 8.77771527E-7, 6.97374344E-6, 8.76055537E-7, 1.00000679))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld = weld(m, WingHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00751495361, -3.30146718, 0.200904846, 1.00000048, -3.45482345E-4, 5.83082438E-4, -3.4548252E-4, -1.00000083, 5.31843398E-7, 5.82695007E-4, -7.33383786E-7, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, WingHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00564956665, 1.40153003, 0.398208618, -1.0000006, -1.52919711E-7, -7.01099634E-4, -1.52856074E-7, 0.999992073, -2.92751594E-7, 7.00622797E-4, -2.9275219E-7, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, WingHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0101585388, -2.2015543, 0.392654419, 1.00000048, -3.41564562E-4, 7.01278448E-4, -3.41564592E-4, -1.00000072, 2.00845534E-7, 7.00861216E-4, -4.40466266E-7, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld = weld(m, WingHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.102455139, 1.40156364, -0.00542831421, 5.91039658E-4, 8.87212934E-8, -1, -1.1955226E-6, 1.00000083, 8.81201458E-8, 1.0000006, 1.19532979E-6, 5.91367483E-4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Maroon", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld = weld(m, WingHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.398174286, 1.80155635, -0.00764846802, 6.99937344E-4, 9.82820438E-8, -1.00000012, -8.54601353E-7, 1.00000155, 9.79221255E-8, 1.00000155, 8.54139444E-7, 7.00563192E-4))
WingConnector2A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Dark stone grey", "WingConnector2A", Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Aweld = weld(m, BackHandle, WingConnector2A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.35351944, -8.82148743E-6, 0.777774811, 0.70710361, 2.35763025E-7, 0.707103252, -1.815758E-7, 0.999996424, -3.26344036E-8, -0.707104087, -1.89611058E-7, 0.707102716))
mesh("CylinderMesh", WingConnector2A, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
WingHandle2A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "WingHandle2A", Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Aweld = weld(m, WingConnector2A, WingHandle2A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836E-5, -3.09944153E-6, -3.05175781E-5, 1.00000012, 2.13349054E-8, 2.56299973E-6, -2.13311964E-8, 1.00000012, -2.10869437E-8, -2.50339508E-6, 2.10766586E-8, 1))
mesh("CylinderMesh", WingHandle2A, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00458908081, -0.799812317, -1.43754196, -1.18851662E-4, 2.60861555E-7, -1, 8.83513394E-7, 1.00000012, 2.60746447E-7, 1, -8.8347872E-7, -1.18762255E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43828201, 1.49969769, -0.00198364258, 0.999976516, -1.20581092E-6, -1.26719475E-4, 1.20483628E-6, 0.999987006, -3.7582123E-7, 1.27106905E-4, 3.84210125E-7, 0.999981046))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.732719421, -1.27077103E-4, -0.011013031, 0.999976635, -2.55695795E-7, -4.47034836E-7, 2.54775983E-7, 0.999986887, 1.28024396E-7, 7.74860382E-7, -1.19475757E-7, 0.999981165))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.6384964, 0.599924326, -0.00668716431, 0.999953151, -1.2063831E-6, -1.26421452E-4, 1.20447589E-6, 0.999973774, -3.58210656E-7, 1.27106905E-4, 3.75161164E-7, 0.999962151))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00381469727, -0.499895573, -1.43782806, 1.1792779E-4, -5.21332424E-7, 0.999962091, -1.20606751E-6, -0.999973774, -5.3828353E-7, 0.999953151, -1.20786547E-6, -1.17242336E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.738220215, 1.99993312, -0.00198364258, 0.999976635, -1.20194647E-6, -1.27375126E-4, 1.20097798E-6, 0.999977708, -4.28671427E-7, 1.27702951E-4, 4.37083344E-7, 0.999981105))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.03820801, 1.79991686, -0.00200271606, 0.999976635, -1.20224877E-6, -1.26779079E-4, 1.20128084E-6, 0.999977708, -4.25658016E-7, 1.27106905E-4, 4.34070643E-7, 0.999981105))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.03817749, 0.899925232, -0.00204849243, 0.999953151, -1.20194807E-6, -1.24722719E-4, 1.20003529E-6, 0.999973774, -4.1127916E-7, 1.25437975E-4, 4.2823288E-7, 0.999962091))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0112571716, -0.699848175, 0.935894012, -1.1792779E-4, -1.25010138E-6, -0.999962091, -8.60096748E-7, -0.999973774, 1.23308939E-6, -0.999953151, 8.62096385E-7, 1.17242336E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00269317627, -2.09995699, 1.03822327, -1.18494034E-4, 3.39705701E-4, -0.999980986, -2.36835331E-6, -0.999977708, -3.39717168E-4, -0.999976635, 2.32894104E-6, 1.18196011E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00271606445, 0.89996767, -0.738178253, -1.16944313E-4, 3.42214655E-4, -0.999962091, 2.2733293E-6, 0.999973774, 3.42227548E-4, 0.999953151, -2.23520124E-6, -1.1625886E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0116539001, -0.699934483, -0.537151337, 2.5331974E-6, -5.20983683E-8, 0.999962151, -4.94033145E-7, -0.999973774, -6.91953517E-8, 0.999953151, -4.95877543E-7, -1.84774399E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.83622742, 1.50203705E-5, -0.00223922729, 0.999953151, -1.20720688E-6, -1.26361847E-4, 1.20529853E-6, 0.999973774, -3.67991873E-7, 1.27017498E-4, 3.84942496E-7, 0.999962091))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0066986084, -0.599959373, 1.93844223, -1.1870265E-4, 5.45789703E-7, -0.999962091, -1.48036668E-6, -0.999982953, -5.62686523E-7, -0.999953151, 1.48218601E-6, 1.18017197E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00186538696, 0.699984789, 1.63819122, 1.17570162E-4, 3.43447289E-4, 0.999962151, 1.81229552E-7, 0.999973774, -3.43426189E-4, -0.999953151, 2.2344058E-7, 1.16944313E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00183486938, -1.99997032, 1.6382103, -1.19000673E-4, -3.434307E-4, -0.999961793, -6.70683221E-7, -0.999992132, 3.43403255E-4, -0.999953032, 7.13414749E-7, 1.18345022E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00689315796, -0.799924135, 1.8359642, 1.1947751E-4, -5.85247506E-7, 0.999980927, 1.29695411E-6, 1.00000536, 5.93606615E-7, -0.999976516, 1.29784451E-6, 1.19119883E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.77655029E-4, -0.600088358, 1.94027328, -1.18345022E-4, 5.42628982E-7, -0.999961436, -1.47416779E-6, -1.00001073, -5.59483738E-7, -0.999953032, 1.4760343E-6, 1.17659569E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.83838654, -0.0998883247, -0.00664901733, 0.999953032, -1.2058166E-6, -1.26332045E-4, 1.20385414E-6, 1.00001073, -3.57192391E-7, 1.270473E-4, 3.74113938E-7, 0.999961436))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00269699097, -3.1999507, 0.738132477, -1.18583441E-4, 3.39725055E-4, -0.999980748, -2.36830965E-6, -0.999996185, -3.39730119E-4, -0.999976516, 2.32889761E-6, 1.18285418E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.136451721, -3.79085541E-5, 0.00166320801, 0.999943495, -2.43060981E-7, -1.16229057E-6, 2.41201008E-7, 1.00001097, -9.43163485E-8, 1.84774399E-6, 1.11379194E-7, 0.999952197))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.13814926, 1.29996634, -0.00199890137, 0.999976516, -1.20260449E-6, -1.27136707E-4, 1.20160905E-6, 0.999996185, -4.24037722E-7, 1.27434731E-4, 4.32436423E-7, 0.999980748))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111846924, -0.400034666, 1.23585892, -1.19328499E-4, -1.28770091E-6, -0.999980807, -8.9875391E-7, -1.00000536, 1.27924841E-6, -0.999976397, 8.99856275E-7, 1.19000673E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.23489761, -0.199841738, -0.0108909607, 0.999953032, -1.23361633E-6, -1.25616789E-4, 1.2316226E-6, 1.00001073, -5.93518166E-7, 1.26242638E-4, 6.10448865E-7, 0.999961495))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00266265869, -1.99999452, -1.23814011, 1.18851662E-4, -3.42111831E-4, 0.999980748, -1.78501068E-6, -0.999996185, -3.42116982E-4, 0.999976516, -1.74523427E-6, -1.18523836E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1, 0.200000003))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00266647339, 0.700069189, -1.23814774, -1.18345022E-4, 3.42116429E-4, -0.999980628, 2.27200508E-6, 1.00000536, 3.42116284E-4, 0.999976456, -2.23251186E-6, -1.18017197E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld = weld(m, WingHandle2A, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43771744, -0.199832916, -0.00438690186, 0.999953032, -1.21251264E-6, -1.25616789E-4, 1.21055359E-6, 1.00001073, -3.29055638E-7, 1.26242638E-4, 3.45975934E-7, 0.999961495))
WingConnector2B = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Dark stone grey", "WingConnector2B", Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Bweld = weld(m, BackHandle, WingConnector2B, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.353546143, -1.02519989E-5, 0.77778244, 0.70710355, 2.76879433E-7, -0.707103431, -2.52642138E-7, 0.999996424, 1.9715614E-8, 0.707104325, 2.48997594E-7, 0.707102716))
mesh("CylinderMesh", WingConnector2B, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
WingHandle2B = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "WingHandle2B", Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Bweld = weld(m, WingConnector2B, WingHandle2B, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.95910645E-5, -1.00135803E-5, 1.14440918E-5, 1, -1.95296565E-7, -1.23381615E-5, 1.95308559E-7, 1.00000012, 1.4882113E-7, 1.22785568E-5, -1.48819879E-7, 1.00000024))
mesh("CylinderMesh", WingHandle2B, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0057144165, -3.20001864, 0.739765167, -6.97374344E-6, 3.3977133E-4, 1.00000012, 3.41693521E-7, -1.00000012, 3.39771359E-4, 1, 3.44076113E-7, 6.85453415E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00654602051, 0.700015306, 1.63977051, 7.68899918E-6, 3.43456777E-4, -1.00000024, 1.75846799E-6, 1.00000036, 3.4345669E-4, 1, -1.76109734E-6, 7.4505806E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.739772797, 1.99997914, 0.00642776489, -1, 7.83247856E-7, -5.78165054E-6, 7.83254677E-7, 1.00000072, 4.01889906E-7, 6.10947609E-6, 4.01940554E-7, -1.00000048))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00572967529, 0.700017214, -1.23976517, -7.4505806E-6, 3.42165935E-4, 1.00000072, -2.45941919E-7, 1.00000095, -3.42165877E-4, -1, -2.48526703E-7, -7.15255737E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00574493408, -2.00001717, -1.23976517, 7.09295273E-6, -3.42123793E-4, -1.00000072, -2.43031536E-7, -1.00000095, 3.42123734E-4, -1, 2.40580533E-7, -6.7949295E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00656890869, -2.00001454, 1.63977051, -7.09295273E-6, -3.43398249E-4, 1.00000072, -1.2695964E-6, -1.00000095, -3.43398133E-4, 1, -1.27200531E-6, 6.7949295E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.13976669, 1.29998469, 0.0064239502, -1, 7.81620258E-7, -5.75184822E-6, 7.81646975E-7, 1.00000095, 3.88622823E-7, 6.10947609E-6, 3.88666422E-7, -1.0000006))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.03976822, 0.899980307, 0.0064125061, -1, 7.82491384E-7, -5.75184822E-6, 7.82518043E-7, 1.00000095, 3.9576264E-7, 6.10947609E-6, 3.95806239E-7, -1.0000006))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00278091431, -0.699974537, 0.937519073, -7.06315041E-6, -1.23697805E-6, 1.00000072, -1.12531188E-6, -1.00000095, -1.23693724E-6, 1, -1.12529187E-6, 6.70552254E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0057182312, -2.10001993, 1.0397644, -7.06315041E-6, 3.39750521E-4, 1.00000072, 3.41358827E-7, -1.00000095, 3.39750462E-4, 1, 3.43769329E-7, 6.70552254E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43976593, 1.49998724, 0.00643157959, -1, 7.81133508E-7, -5.75184822E-6, 7.81160281E-7, 1.00000095, 3.77194482E-7, 6.10947609E-6, 3.77238052E-7, -1.0000006))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.0397644, 1.799981, 0.00640869141, -1, 7.82864788E-7, -5.75184822E-6, 7.82891391E-7, 1.00000095, 3.98813171E-7, 6.10947609E-6, 3.98856685E-7, -1.0000006))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00316619873, -0.699970961, -0.541133881, 6.46710396E-6, 7.11757536E-7, -1.00000072, -5.82138682E-7, -1.00000095, -7.11712801E-7, -1, 5.82114012E-7, -6.10947609E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0057258606, 0.900016785, -0.739753723, -7.4505806E-6, 3.42250947E-4, 1.00000072, -2.47193384E-7, 1.00000095, -3.42250918E-4, -1, -2.49782829E-7, -7.15255737E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.84001541, -0.100023985, 0.00176620483, -1, 7.83643713E-7, -5.51342964E-6, 7.83670544E-7, 1.00000095, 3.81563382E-7, 5.87105751E-6, 3.81607123E-7, -1.00000072))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00459289551, -0.499979734, -1.4393959, 7.89761543E-6, -5.65608218E-7, -1.00000179, -7.77587161E-7, -1.00000262, 5.6575351E-7, -1.00000012, 7.77515424E-7, -6.88433647E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.64005661, 0.599978924, 0.00173950195, -1, 7.80917503E-7, -5.51342964E-6, 7.80982475E-7, 1.00000262, 3.64202009E-7, 6.49690628E-6, 3.64349034E-7, -1.00000191))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.2366333, -0.200026751, -0.00246047974, -1, 7.56787927E-7, -5.75184822E-6, 7.56851023E-7, 1.00000262, 6.28874716E-7, 6.82473183E-6, 6.29021883E-7, -1.00000191))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.736637115, -2.5510788E-5, -0.00245285034, -1, 7.98881445E-7, -5.75184822E-6, 7.98944541E-7, 1.00000262, 6.19298987E-7, 6.82473183E-6, 6.19445927E-7, -1.00000191))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00276947021, -0.3999753, 1.23746872, -7.12275505E-6, -1.24613757E-6, 1.0000031, -1.08483562E-6, -1.00000429, -1.24588792E-6, 1.00000012, -1.08474001E-6, 5.453825E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.135440826, -2.5510788E-5, 0.00338745117, 1.00000012, -7.98921292E-7, 5.453825E-6, 7.9902253E-7, 1.00000429, 6.19273123E-7, -7.12275505E-6, -6.19523803E-7, 1.0000031))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.83781815, -1.74045563E-5, 0.00619506836, -1, 7.80351115E-7, -5.7220459E-6, 7.80415974E-7, 1.00000262, 3.64990427E-7, 6.70552254E-6, 3.65137282E-7, -1.00000179))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00638580322, -0.79997921, -1.43897247, 1.11579895E-4, -6.41668478E-8, 1.00000048, 1.08743711E-6, 1.00000083, 6.39935536E-8, -1.00000012, 1.08741108E-6, 1.11877918E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00640487671, -0.599977732, 1.94189835, -7.36117363E-6, 5.59386876E-7, 1.00000191, -5.1072891E-7, -1.00000262, 5.59534215E-7, 1, -5.10656719E-7, 6.34789467E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00386810303, -0.79993391, 1.83702469, -1.0445714E-4, -2.80817233E-7, -1.0000006, 6.70409918E-7, 1.00000083, -2.80938991E-7, 1, -6.70420036E-7, -1.04755163E-4))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00172424316, -0.599978447, 1.94002914, -7.09295273E-6, 5.7002211E-7, 1.00000191, -5.03831359E-7, -1.00000262, 5.70169391E-7, 1, -5.03759338E-7, 6.10947609E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld = weld(m, WingHandle2B, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.4394722, -0.200026512, 0.00402832031, -1, 7.7835881E-7, -5.7220459E-6, 7.78423669E-7, 1.00000262, 3.64728379E-7, 6.70552254E-6, 3.64875291E-7, -1.00000179))
local PE1 = Create("ParticleEmitter")({
  Parent = BackHandle,
  Color = ColorSequence.new(Color3.new(85, 255, 255), Color3.new(85, 255, 255)),
  Transparency = NumberSequence.new(0.5),
  Size = NumberSequence.new(2),
  Texture = "rbxassetid://242093929",
  Lifetime = NumberRange.new(5),
  Enabled = false,
  Rate = 50,
  Rotation = NumberRange.new(100),
  RotSpeed = NumberRange.new(180),
  Speed = NumberRange.new(3),
  LightEmission = 1
})
local PE2 = PE1:Clone()
PE2.Parent = WingHandleA
PE2.Enabled = false
local PE3 = PE1:Clone()
PE3.Parent = WingHandleB
PE2.Enabled = false
function effect(Color, Ref, LP, P1, returnn)
  if LP == nil or P1 == nil then
    return
  end
  local effectsmsh = Instance.new("CylinderMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
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
    table.insert(Effects, {
      effectsg,
      "Cylinder",
      0.2,
      0.01,
      0,
      0.01,
      effectsmsh
    })
  end
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
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
function MagicCylinder(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
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
function MagicHead(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
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
function MagicRing(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh, (math.random(0, 1) + math.random()) / 5)
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
function cannonpew(post, mindam, maxdam, spready)
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  local MouseLook = cf((post.Position + Mouse.Hit.p) / 2, Mouse.Hit.p + spread)
  local hit, pos = rayCast(post.Position, MouseLook.lookVector, 999, RootPart.Parent)
  local mag = (post.Position - pos).magnitude
  MagicCylinder2(BrickColor.new("New Yeller"), CFrame.new((post.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 1.2, 0, 1.2, 0.1)
  if hit ~= nil then
    MagicBlock(BrickColor.new("New Yeller"), cf(pos), 12, 12, 12, 5, 5, 5, 0.1)
    MagniDamage(hit, hit, mindam, maxdam, 30, 0, "Normal")
  end
end
function MagicCircle2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
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
function MagicCylinder2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
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
function PlaySound(id, pitch, parent, volume)
  if volume == nil then
    volume = tonumber(1)
  end
  local epicsound = Instance.new("Sound")
  epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://" .. id
  epicsound.Volume = volume
  epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
  wait()
  epicsound:Play()
  game:service("Debris"):AddItem(epicsound, 8)
end
Shots = {
  263609809,
  263609836,
  263609864,
  263609874,
  263609898
}
function Shot(part)
  local shot = math.random(1, #Shots)
  PlaySound(Shots[shot], 1, part)
end
function ShootMany()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(190)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=169445602", BarrelA, 0.7, 1.5)
  table.insert(Effects, {
    BarrelA.CFrame.lookVector,
    "Shoot",
    10,
    BarrelA.Position,
    5,
    10,
    0,
    1
  })
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(5), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(190)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
  end
  for i = 1, 1 do
    local orb = part(3, Character, "SmoothPlastic", 0, 0.5, BrickColor.new("Really red"), "Orb", vt())
    orb.Anchored = true
    Shot(orb)
    local omsh = mesh("SpecialMesh", orb, "Sphere", "", vt(0, 0, 0), vt(10, 10, 10))
    orb.CFrame = cf(Player:GetMouse().Hit.p + vt(math.random(-10, 10), math.random(50, 100), math.random(-10, 10)))
    MagicCircle(BrickColor.new("Toothpaste"), orb.CFrame, 10, 10, 10, 1, 1, 1, 0.1)
    coroutine.resume(coroutine.create(function(Part, Mesh, Weld)
      wait(1)
      Part.Parent = nil
      local spread = vt(0, 0, 0) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
      local TheHit = Part.Position + vt(0, -1, 0)
      local MouseLook = cf((Part.Position + TheHit) / 2, TheHit + spread)
      local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
      local mag = (Part.Position - pos).magnitude
      MagicCylinder(BrickColor.new("Really red"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
      MagicRing(BrickColor.new("Really red"), cf(pos) * euler(1.57, math.random(-100, 100) / 100, math.random(-100, 100) / 100), 1, 1, 1, 2, 2, 2, 0.05)
      local ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Toothpaste"), "Effect", vt())
      ref.CFrame = cf(pos)
      so("http://roblox.com/asset/?id=231917788", ref, 1, 1.4)
      coroutine.resume(coroutine.create(function(Part)
        wait(1)
        Part.Parent = nil
      end), ref)
      MagniDamage(ref, ref, 15, 20, 30, 10, "Knockdown", RootPart)
      if hit ~= nil then
        Damagefunc(ref, 20, 40, 1, "Knockdown", RootPart, 0)
      end
    end), orb, omsh)
  end
  wait(0.5)
  local n = 2
  for i = 0, 1, 0.1 do
    wait()
    n = n - 0.1
  end
  attack = false
end
function ShootWave()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 5 do
      swait()
      local ef = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
      ef.Anchored = true
      ef.CFrame = RootPart.CFrame * cf(0, 0, -10 * i)
      MagniDamage(ef, ef, 7, 10, 15, 10, "Knockdown")
      game:GetService("Debris"):AddItem(ef, 0.5)
      MagicRing(BrickColor.new("White"), RootPart.CFrame * cf(0, 0, -10 * i) * angles(0, 0, 0), 5, 5, 2, 0.5, 0.5, 0, 0.03)
    end
  end))
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(5), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(30), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
  end
  attack = false
end
function Shootcombo()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=169445602", BarrelA, 0.7, 1.5)
  so("http://www.roblox.com/asset/?id=169445602", BarrelB, 0.7, 1.5)
  so("http://www.roblox.com/asset/?id=169380505", BarrelA, 0.7, 1.1)
  so("http://www.roblox.com/asset/?id=169380505", BarrelB, 0.7, 1.1)
  table.insert(Effects, {
    BarrelA.CFrame.lookVector,
    "Shoot",
    10,
    BarrelA.Position,
    5,
    10,
    0,
    1
  })
  table.insert(Effects, {
    BarrelB.CFrame.lookVector,
    "Shoot",
    10,
    BarrelB.Position,
    5,
    10,
    0,
    1
  })
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(5), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(30), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
  end
  attack = false
end
function Stab()
  attack = true
  so("http://www.roblox.com/asset/?id=200633148", handle, 1, 0.5)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
    WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=200633148", handle, 1, 0.9)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(5), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(30), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(10)), 0.3)
    WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.3)
    WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 5 do
      swait()
      local ef = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
      ef.Anchored = true
      ef.CFrame = RootPart.CFrame * cf(0, 0, -10 * i)
      MagniDamage(ef, ef, 7, 10, 15, 1, "Normal")
      game:GetService("Debris"):AddItem(ef, 0.5)
      MagicCircle(BrickColor.new("Maroon"), RootPart.CFrame * cf(0, 0, -10 * i) * angles(math.rad(math.random(50, 90)), 0, math.rad(math.random(50, 90))), 5, 10, 5, 0, 10, 0, 0.07)
    end
  end))
  attack = false
end
function BladeAttackOne()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 5), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(120), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.4)
  end
  so("http://www.roblox.com/asset/?id=200633148", handle, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(-10), math.rad(-80)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(-10)), 0.4)
  end
  attack = false
  con:disconnect()
end
function BladeAttackTwo()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 5), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(-10), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(40), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-10)), 0.4)
  end
  so("http://www.roblox.com/asset/?id=200633196", handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(80)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-40), math.rad(-10)), 0.4)
  end
  attack = false
  con:disconnect()
end
function BladeAttackThree()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 5), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)), 0.4)
  end
  so("http://www.roblox.com/asset/?id=200633196", handle, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)), 0.4)
  end
  attack = false
  con:disconnect()
end
function BladeAttackFour()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 5), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)), 0.4)
  end
  so("http://www.roblox.com/asset/?id=200633148", handle, 1, 0.8)
  Torso.Velocity = Head.CFrame.lookVector * 100
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
  end
  con:disconnect()
  attack = false
end
function BladeSlash()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 20, 30, math.random(5, 5), "Normal", RootPart, 0.2, 1)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(-10), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(40), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-10)), 0.4)
  end
  MagicCircle(BrickColor.new("Maroon"), RootPart.CFrame * cf(0, 0, -10) * angles(math.rad(math.random(50, 90)), 0, math.rad(math.random(50, 90))), 5, 10, 5, 0, 10, 0, 0.07)
  so("http://www.roblox.com/asset/?id=200633196", handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(80)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-40), math.rad(-10)), 0.4)
  end
  attack = false
  con:disconnect()
end
function BashRush()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 25, math.random(5, 5), "Normal", RootPart, 0.2, 1)
  end)
  so("http://www.roblox.com/asset/?id=191395631", handle, 1, 1.2)
  for i = 0, 1, 0.05 do
    swait()
    Torso.Velocity = RootPart.CFrame.lookVector * 50
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-60), math.rad(120), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)), 0.4)
  end
  MagniDamage(BarrelA, BarrelA, 10, 10, 15, 1, "Knockdown")
  MagicRing(BrickColor.new("White"), Hitbox.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 1, 0.5, 0.5, 0, 0.08)
  MagicRing(BrickColor.new("White"), Hitbox.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 1, 0.5, 0.5, 0, 0.08)
  Humanoid.JumpPower = 70
  Humanoid.Jump = true
  so("http://www.roblox.com/asset/?id=385470847", handle, 1, 1)
  Torso.Velocity = Head.CFrame.lookVector * -100
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
  end
  con:disconnect()
  attack = false
end
function RushBlade()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
    WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.3)
    WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.05 do
      swait()
      MagniDamage(RootPart, 12, 5, 7, 0, "Normal")
    end
  end))
  MagicRing(BrickColor.new("White"), RootPart.CFrame, 5, 5, 1, 2, 2, 1, 0.07)
  so("http://roblox.com/asset/?id=169445602", Torso, 1, 1)
  so("http://www.roblox.com/asset/?id=200633148", handle, 1, 0.7)
  Torso.Velocity = Head.CFrame.lookVector * 200
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)), 0.4)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
    WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end
function ElecEffect(cff, x, y, z)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, BrickColor.new("Really red"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 2)
  xval = math.random() / 2
  yval = math.random() / 2
  zval = math.random() / 2
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {
    prt,
    "Elec",
    0.1,
    x,
    y,
    z,
    xval,
    yval,
    zval
  }
end
function Test()
  ElecEffect(Hitbox.CFrame, 2, 4, 2)
end
attacktype1 = 1
function ob1u()
end
function ob1d()
  if Mode == "Gun" and attack == false and attacktype1 == 1 and mana >= 10 then
    attack = true
    mana = mana - 2
    attacktype1 = 1
    Shootcombo()
  end
  if Mode == "Blade" and attack == false then
    if attacktype == 1 then
      attack = true
      attacktype = 2
      BladeAttackOne()
    elseif attacktype == 2 then
      attack = true
      attacktype = 3
      BladeAttackTwo()
    elseif attacktype == 3 then
      attack = true
      attacktype = 4
      BladeAttackThree()
    elseif attacktype == 4 then
      attack = true
      attacktype = 1
      BladeAttackFour()
    end
  end
end
function FlyOn()
  attack = true
  so("http://roblox.com/asset/?id=169445572", Torso, 1, 1)
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.05 do
      swait()
      MagicRing(BrickColor.new("White"), WingConnectorA.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 1, -0.5, 0.5, 0, 0.08)
      MagicRing(BrickColor.new("White"), WingConnectorB.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 1, -0.5, 0.5, 0, 0.08)
    end
  end))
  for i = 0, 1, 0.01 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.6) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(15), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(10)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.2, -0.5) * angles(math.rad(0), math.rad(90), math.rad(15)) * angles(math.rad(-2), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.3) * angles(math.rad(0), math.rad(-80), math.rad(20)) * angles(math.rad(-2), math.rad(0), math.rad(0)), 0.3)
    WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagicRing(BrickColor.new("White"), Torso.CFrame, 5, 5, 1, 5, 5, 1, 0.07)
  so("http://roblox.com/asset/?id=169445602", Torso, 1, 1)
  local FlySound = Create("Sound")({
    Parent = Torso,
    SoundId = "rbxassetid://139582054",
    Volume = 1,
    Looped = true
  })
  FlySound:Play()
  coroutine.resume(coroutine.create(function()
    local direction = Instance.new("BodyGyro", Torso)
    direction.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    direction.cframe = CFrame.new(Torso.Position, mouse.Hit.p)
    repeat
      wait()
      if Torso:FindFirstChild("BodyGyro") then
        wait()
        direction.cframe = CFrame.new(Torso.Position, mouse.Hit.p) * CFrame.Angles(math.rad(-90), 0, 0)
        Torso.Velocity = (direction.cframe * CFrame.Angles(math.rad(90), 0, 0)).lookVector.unit * 200
      end
    until attack == false
  end))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.2) * angles(math.rad(0), math.rad(90), math.rad(-10)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.2) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.01 do
  end
  FlyOff()
end
function FlyOff()
  attack = false
  for i, BodyGyro in pairs(Torso:GetChildren()) do
    if BodyGyro:IsA("BodyGyro") then
      BodyGyro.maxTorque = Vector3.new(0, 0, 0)
      BodyGyro.cframe = CFrame.new(0, 0, 0)
      BodyGyro:Destroy()
    end
  end
  for i, v in pairs(Torso:GetChildren()) do
    if v:IsA("Sound") then
      v:Stop()
      v:remove()
    end
  end
  so("http://roblox.com/asset/?id=139582177", Torso, 1, 1)
  PE1.Enabled = false
  PE2.Enabled = false
  PE3.Enabled = false
end
function key(k)
  k = k:lower()
  if k == "v" and attack == false then
    if Mode == "Gun" then
      Mode = "Blade"
      so("http://www.roblox.com/asset/?id=152052659", handle, 0.7, 1)
    elseif Mode == "Blade" then
      Mode = "Gun"
      so("http://www.roblox.com/asset/?id=211134014", handle, 0.7, 1)
    end
  elseif k == "z" and attack == false and zenabled == true then
    zenabled = false
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.01 do
        swait()
        fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      zenabled = true
      fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    if Mode == "Blade" then
      RushBlade()
    end
    if Mode == "Gun" then
      BashRush()
    end
  elseif k == "x" and attack == false and xenabled == true then
    xenabled = false
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.005 do
        swait()
        fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      xenabled = true
      fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    if Mode == "Blade" then
      BladeSlash()
    end
    if Mode == "Gun" then
      ShootMany()
    end
  elseif k == "c" and attack == false and cenabled == true then
    cenabled = false
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.0025 do
        swait()
        fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      cenabled = true
      fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    if Mode == "Blade" then
      Stab()
    end
    if Mode == "Gun" then
      ShootWave()
    end
  elseif attack == false and k == "e" then
    FlyOn()
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
      if attack == false and Mode == "Gun" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      if attack == false and Mode == "Blade" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
      end
    elseif -1 > RootPart.Velocity.y and hitfloor == nil then
      Anim = "Fall"
      if attack == false and Mode == "Gun" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-20)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      if attack == false and Mode == "Blade" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-20)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
      end
    elseif torvel < 1 and hitfloor ~= nil then
      Anim = "Idle"
      if attack == false and Mode == "Gun" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-20)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(10)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0.75, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(-0.75, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
        WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
      end
      if attack == false and Mode == "Blade" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(40)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
        WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
        WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
        WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
        WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
      end
    elseif torvel > 2 and hitfloor ~= nil then
      Anim = "Walk"
      if attack == false and Mode == "Gun" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      if attack == false and Mode == "Blade" then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(1), math.rad(-10)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(5), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
        BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
        WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
        WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
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
          if Thing[2] == "DecreaseStat" then
            Thing[5] = Thing[5] - 1
            if 0 >= Thing[5] then
              if Thing[1]:findFirstChild("Stats") ~= nil then
                Thing[1].Stats[Thing[3]].Value = Thing[1].Stats[Thing[3]].Value + Thing[4]
              end
              table.remove(Effects, e)
            end
          end
          if Thing[2] == "Shoot" then
            local Look = Thing[1]
            local hit, pos = rayCast(Thing[4], Look, 20, m)
            local mag = (Thing[4] - pos).magnitude
            MagicHead(BrickColor.new("Really red"), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.1)
            Thing[4] = Thing[4] + Look * 20
            Thing[3] = Thing[3] - 1
            if hit ~= nil then
              Thing[3] = 0
              if Thing[8] == 1 then
                Damagefunc(Hitbox, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, math.random(1, 5), nil, nil, true)
              elseif Thing[8] == 2 then
                Damagefunc(Hitbox, hit, Thing[5], Thing[6], Thing[7], "NormalDecreaseMvmt1", RootPart, 0, 2, math.random(1, 5), nil, nil, true)
              end
              ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really red"), "Reference", vt())
              ref.Anchored = true
              ref.CFrame = cf(pos)
              MagicCircle(BrickColor.new("Really red"), cf(pos), 5, 5, 5, 1, 1, 1, 0.03)
              game:GetService("Debris"):AddItem(ref, 1)
            end
            if 0 >= Thing[3] then
              table.remove(Effects, e)
            end
          end
          if Thing[2] == "CylinderClang" then
            if 1 >= Thing[3] then
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
          if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" then
            if 1 >= Thing[1].Transparency then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Cylinder" then
                Mesh = Thing[7]
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
  end
end
