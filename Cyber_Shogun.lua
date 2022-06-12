Player = game.Players.LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
Humanoid.WalkSpeed = 10
LeftArm = Character["Left Arm"]
local shot = 0
xenabled = true
cenabled = true
venabled = true
zenabled = true
LeftLeg = Character["Left Leg"]
mana = 0
it = Instance.new
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
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
attacktype = 1
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
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
Debounces = {
  on = false,
  ks = false,
  CanAttack = true,
  CanJoke = true,
  NoIdl = false,
  Slashing = false,
  Slashed = false,
  Grabbing = false,
  Grabbed = false
}
local Touche = {
  Character.Name
}
function HasntTouched(plrname)
  local ret = true
  for _, v in pairs(Touche) do
    if v == plrname then
      ret = false
    end
  end
  return ret
end
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model")({
  Parent = Character,
  Name = "WeaponModel"
})
mouse = Player:GetMouse()
RSH, LSH = nil, nil
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW = Create("Weld")({
  Name = "Right Shoulder",
  Part0 = Torso,
  C0 = cf(1.5, 0.5, 0),
  C1 = cf(0, 0.5, 0),
  Part1 = RightArm,
  Parent = Torso
})
LW = Create("Weld")({
  Name = "Left Shoulder",
  Part0 = Torso,
  C0 = cf(-1.5, 0.5, 0),
  C1 = cf(0, 0.5, 0),
  Part1 = LeftArm,
  Parent = Torso
})
function NoOutline(Part)
  Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333333
--if Player.FPSCH.Value == true then
  --frame = 0.016666666666666666
--else
  --frame = 0.03333333333333333
--end
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
function nooutline(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = Create("Part")({
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
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
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
  local Color = BrickColor.new("Bright red")
  if len1 > 0.01 then
    local w1 = Create("WedgePart", m)({
      Material = "SmoothPlastic",
      FormFactor = "Custom",
      BrickColor = Color,
      Transparency = 0,
      Reflectance = 0,
      Material = "SmoothPlastic",
      CanCollide = false,
      Anchored = true,
      Parent = workspace,
      Transparency = 0.3
    })
    game:GetService("Debris"):AddItem(w1, 5)
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Create("SpecialMesh")({
      Parent = w1,
      MeshType = "Wedge",
      Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    })
    w1:BreakJoints()
    table.insert(Effects, {
      w1,
      "Disappear",
      0.03
    })
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  if len2 > 0.01 then
    local w2 = Create("WedgePart", m)({
      Material = "SmoothPlastic",
      FormFactor = "Custom",
      BrickColor = Color,
      Transparency = 0,
      Reflectance = 0,
      Material = "SmoothPlastic",
      CanCollide = false,
      Anchored = true,
      Parent = workspace,
      Transparency = 0.3
    })
    game:GetService("Debris"):AddItem(w2, 5)
    NoOutline(w2)
    local sz = Vector3.new(0.2, width, len2)
    w2.Size = sz
    local sp = Create("SpecialMesh")({
      Parent = w2,
      MeshType = "Wedge",
      Scale = Vector3.new(0, 1, 1) * sz / w2.Size
    })
    w2:BreakJoints()
    table.insert(Effects, {
      w2,
      "Disappear",
      0.03
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
    swait(6)
    sou:Remove()
  end))
end
function clerp(a, b, t)
  local QuaternionFromCFrame = function(cf)
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
  local QuaternionToCFrame = function(px, py, pz, x, y, z, w)
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
  local QuaternionSlerp = function(a, b, t)
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
function rayCast(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
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
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Cannon Pirate" and h.Parent.Name ~= "Hologram" then
        print("gained kill")
        script.Parent.Kills.Value = script.Parent.Kills.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
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
      game:GetService("Debris"):AddItem(bp, 1)
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
        swait(1.5)
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
HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "HandleB", Vector3.new(1.01999998, 0.410000026, 1.01999998))
HandleBweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617E-5, 0.00579214096, -7.17163086E-4, -0.99999702, 1.30612687E-9, 2.74129752E-6, 1.1281549E-9, 1.00000882, -9.4532792E-5, -2.29434954E-6, -9.45326028E-5, -1.00000536))
FConnectorB1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB1", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB1weld = weld(m, HandleB, FConnectorB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410011292, -1.09512377, -0.40996933, -0.999990344, 9.75173589E-6, -4.76017885E-6, -9.75114472E-6, -1.00001204, 2.27628334E-7, -4.34698632E-6, 2.29010766E-7, 1.00000203))
FConnectorB2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB2weld = weld(m, HandleB, FConnectorB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, -1.09513116, -0.129657745, -0.999986649, 9.75185594E-6, -5.20708772E-6, -9.75106377E-6, -1.00000668, 5.36027073E-7, -3.48685307E-6, 5.38973836E-7, 0.999993324))
FConnectorB3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB3", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB3weld = weld(m, HandleB, FConnectorB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409965515, -1.08497524, 0.140300751, -0.999993324, 9.75177409E-6, -3.97838994E-6, -9.75137755E-6, -1.00000334, 5.61856723E-7, -3.11826261E-6, 5.63341018E-7, 0.999996662))
FConnectorB4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB4", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB4weld = weld(m, HandleB, FConnectorB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409957886, -1.08498001, 0.410175323, -0.999991894, 9.75470903E-6, -3.12404359E-6, -9.75422699E-6, -1.00000405, 5.46198862E-7, -2.07960943E-6, 5.47988748E-7, 0.999995947))
FConnectorB5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB5", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB5weld = weld(m, HandleB, FConnectorB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409980774, -1.09494543, -0.409542084, -0.999974728, 9.75853163E-6, -6.0076236E-6, -9.75704006E-6, -1.00001264, 6.99823431E-7, -2.75148182E-6, 7.05331331E-7, 0.999987364))
HitboxB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxB", Vector3.new(1.22000003, 1.00999999, 1.01999998))
HitboxBweld = weld(m, HandleB, HitboxB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100006104, 0.889988422, -8.01086426E-5, 0.999965847, -7.24100557E-10, 3.32365107E-6, -7.63507535E-10, 1.00002456, 3.05735739E-8, 3.58721138E-7, -2.40979716E-8, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, 0.714781284, 0.405288696, 0.999982476, 1.32186387E-10, 7.77321588E-7, 5.98021299E-10, -1.00001609, -2.57281994E-4, -1.25018551E-6, 2.5728374E-4, -0.99999851))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.01999998, 0.200000003, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.28881836E-5, 0.285013676, -2.82287598E-4, 0.999967337, -1.5549535E-9, 5.20209369E-6, 1.61488642E-10, 1.00001812, 7.64994184E-8, -1.3707679E-6, -6.97400537E-8, 0.999985218))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409980774, -0.0147089958, -3.05175781E-4, 0.999965847, -2.17003437E-9, 4.9788764E-6, 3.62124303E-10, 1.00002444, 2.46998534E-4, -1.29649527E-6, -2.47000571E-4, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.714772701, -3.05175781E-4, 0.999984264, 5.30370525E-10, 7.77336254E-7, -9.50127754E-10, 1.00000787, 2.2139927E-4, 1.25007E-6, -2.21399358E-4, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, 0.0146970749, 0.40537262, 0.999965847, -2.17019336E-9, 4.97882229E-6, -3.70234204E-10, -1.00002444, -2.40876077E-4, 1.29644116E-6, 2.4087794E-4, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.01999998, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781E-5, 0.904989719, 2.44140625E-4, 0.999978065, -7.79672504E-9, 3.02157605E-6, 6.82267665E-9, 1.00001097, -1.16917363E-7, -1.95484972E-7, 1.21617632E-7, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.620000005, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672E-5, 0.914862633, 5.53131104E-4, 0.999978065, -2.87229418E-9, 2.06913091E-6, 1.8980213E-9, 1.00001097, -5.95959136E-7, 7.56950044E-7, 6.00666681E-7, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 1))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685016155, 0.60004425, -5.76019287E-4, 1.07880278E-5, 1.0000155, 3.07261536E-4, -0.999969006, 1.0787875E-5, 2.61563605E-6, 6.60559135E-6, -3.07264534E-4, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.684755325, 0.600059509, -0.400756836, 1.0788599E-5, 1.00000787, 3.07488954E-4, -0.999984264, 1.07877813E-5, 3.72219597E-6, 5.74624983E-6, -3.07490496E-4, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685072899, 0.600067139, 0.399261475, 1.07872711E-5, 1.0000155, 3.0746602E-4, -0.999969006, 1.07870783E-5, 2.73933233E-6, 6.729284E-6, -3.07469018E-4, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399326324, 0.684971809, 0.599990845, -4.03382401E-5, 9.44945641E-5, 0.999991834, -9.62037007E-7, 1.00000787, -9.44897838E-5, -0.999983966, -9.65175104E-7, -4.23658821E-5))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.202000037, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.714713573, 0.404712677, 0.999982774, 2.57471877E-10, 7.7719352E-7, -7.87075238E-10, 1.00001347, 2.35129759E-4, 1.25028396E-6, -2.35130938E-4, 0.999996126))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.0146975517, 0.4047966, 0.999982774, 6.53486099E-10, 7.77193463E-7, -1.11419485E-9, 1.00001299, 2.59818073E-4, 1.25028328E-6, -2.59819906E-4, 0.99999553))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400676727, 0.684971809, 0.600036621, -4.03382401E-5, 9.44945641E-5, 0.999991834, -9.62037007E-7, 1.00000787, -9.44897838E-5, -0.999983966, -9.65175104E-7, -4.23658821E-5))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.19600004, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.75201416E-4, 0.684971809, 0.600013733, -4.03382401E-5, 9.44945641E-5, 0.999991834, -9.62037007E-7, 1.00000787, -9.44897838E-5, -0.999983966, -9.65175104E-7, -4.23658821E-5))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.646000028, 0.638000011, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.714962482, 0.599998474, -0.400279999, 1.07917776E-5, 1.00000787, 3.07536626E-4, -0.999984264, 1.07909609E-5, 3.72180239E-6, 5.74585465E-6, -3.07538168E-4, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0853996277, 0.600074768, 0.399375916, 1.07918922E-5, 1.00001574, 3.07276874E-4, -0.999968529, 1.07916239E-5, 3.00816009E-6, 7.05953335E-6, -3.07279872E-4, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602294922, -0.221727371, -0.222377777, 0.999968529, -2.77844325E-8, 1.5804543E-6, -1.73086164E-6, 0.707148612, -0.707064986, 1.76833453E-6, 0.707087159, 0.707126319))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0850524902, 0.600036621, -0.400672913, 1.07914002E-5, 1.00001574, 3.071838E-4, -0.999968529, 1.07914666E-5, 1.92046173E-6, 5.97185317E-6, -3.07186769E-4, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221570969, 0.602279663, -0.532333374, -9.16450119E-7, 0.707201421, -0.707024872, -0.99998188, -4.39811004E-7, -1.23922871E-6, 3.05380581E-7, 0.707037866, 0.707188487))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221664429, 0.602294922, 0.0677280426, -5.32410468E-7, 0.707169592, -0.707043946, -0.999968529, 4.26314045E-7, -2.87682087E-6, 1.1334331E-6, 0.707066119, 0.707147479))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602279663, -0.222204208, 0.221616745, 0.999968529, -2.7891728E-8, 1.5804543E-6, 1.76886238E-6, 0.706902444, 0.707310975, 1.7303239E-6, -0.707333207, 0.706880331))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.71464777, 0.599990845, 0.399719238, 1.07905635E-5, 1.00000787, 3.07468435E-4, -0.999984264, 1.07897467E-5, 3.7218565E-6, 5.74590968E-6, -3.07469978E-4, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222238541, 0.602272034, 0.531747818, 3.61345883E-6, 0.706890404, 0.707323194, -0.999984264, 2.18690184E-6, 8.96424808E-7, 5.20473066E-7, -0.70733428, 0.706879318))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222442627, 0.602287292, -0.0682048798, 2.74106606E-6, 0.706903875, 0.707309544, -0.999968529, 1.72691671E-6, -1.90388391E-6, 3.00002284E-7, -0.707331777, 0.706881762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949707031, 0.014693737, 0.405315399, 0.999965847, -2.00778438E-9, 5.06809101E-6, -1.86809165E-10, -1.00002444, -2.40532332E-4, 1.38570761E-6, 2.40534195E-4, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.99999994, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599967957, -0.314879894, -3.05175781E-4, 0.999968529, -1.52550794E-9, 3.47273135E-6, 2.76023454E-10, 1.00001574, 2.46752985E-4, 5.82059499E-7, -2.46754033E-4, 0.999984324))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, 0.71477747, 0.405269623, 0.999983668, 2.62990379E-10, 7.77281798E-7, 6.87050083E-10, -1.00001037, -2.5712885E-4, -1.25016015E-6, 2.57130014E-4, -0.99999398))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.610000014, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672E-5, 0.690003395, 0, 0.999978065, -3.37791017E-9, 2.19185767E-6, 2.40435716E-9, 1.00001097, 5.20303729E-8, 6.34224364E-7, -4.73301043E-8, 0.999989033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, -0.714709282, 0.404720306, 0.999984264, 2.45380903E-11, 7.7730283E-7, -4.26871205E-10, 1.00000787, 2.35340878E-4, 1.25010342E-6, -2.35341198E-4, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.0147390366, 0.404838562, 0.999983072, 5.45701151E-10, 7.77317439E-7, -1.05576647E-9, 1.0000155, 2.72982696E-4, 1.25019938E-6, -2.72984529E-4, 0.999998391))
FHandleB1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB1", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB1weld = weld(m, FConnectorB1, FHandleB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781E-5, -0.100004435, 3.81469727E-6, 0.999987125, 9.48046641E-10, -8.29304327E-7, -1.90026062E-9, 1.00000644, -2.25118129E-8, -8.29517148E-7, 1.97178451E-8, 0.999993563))
FHandleB2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB2", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB2weld = weld(m, FConnectorB2, FHandleB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0999953747, -1.90734863E-5, 0.999986887, 1.7767473E-9, -8.2923782E-7, -2.74682477E-9, 1.00000656, -3.37167876E-8, -8.60301839E-7, 3.08791641E-8, 0.999993443))
FHandleB3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB3", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB3weld = weld(m, FConnectorB3, FHandleB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891E-5, -0.110008478, -6.48498535E-5, 0.999993801, 1.65772562E-9, -1.46104639E-7, -2.11578732E-9, 1.0000031, -3.14466888E-8, -6.52590643E-7, 3.01006366E-8, 0.999996901))
FHandleB4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB4", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB4weld = weld(m, FConnectorB4, FHandleB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781E-5, -0.110030413, -4.57763672E-5, 0.999992371, -3.29658301E-10, -1.30871194E-6, -2.33423003E-10, 1.00000381, -5.04951458E-9, 3.25705969E-7, 3.39059625E-9, 0.999996185))
FHandleB5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB5", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB5weld = weld(m, FConnectorB5, FHandleB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453E-6, -0.0900087357, -1.14440918E-4, 0.999993801, 3.53735596E-9, -1.22842721E-6, -3.99611277E-9, 1.0000031, -1.37908501E-7, 4.29716692E-7, 1.36555173E-7, 0.999996901))
Handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Smoky grey", "Handle", Vector3.new(0.442519516, 2.0650897, 0.295012921))
Handleweld = weld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.947258949, -0.45997858, -0.0570378304, 7.77969425E-11, -0.999999881, -1.37820278E-12, -1.39760203E-10, 1.37820257E-12, -1, 1, 7.77969356E-11, -1.39760203E-10))
FakeHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Smoky grey", "FakeHandle", Vector3.new(0.442519516, 2.0650897, 0.295012921))
FakeHandleweld = weld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00143384933, 0.00119042397, 1.43051147E-6, 1, -3.30743766E-12, -1.37846817E-11, 3.30743766E-12, 1, -2.06202139E-11, 1.37846817E-11, 2.06202139E-11, 1))
Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Bright red", "Hitbox", Vector3.new(2.19002581, 6.55274916, 0.590025842))
Hitboxweld = weld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.17896843, -4.79059315, -4.76837158E-7, 1, 2.0566379E-19, 5.67611236E-12, -2.27116525E-19, 1, -1.52766688E-13, -5.67611236E-12, 1.52766688E-13, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.405433416, 0.701894522, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515680313, -1.24921036, -0.295011044, 1, 2.06574115E-19, 0, 2.06574115E-19, 1, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.405433416, 0.701894522, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.295012861, 0.442519456))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316E-7, -7.51639271, 0.443106174, -2.97838199E-8, 1.94848582E-11, 0.999994636, 2.58582196E-12, 1, -1.94823463E-11, -0.999994636, 2.86134896E-12, -2.97838199E-8))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.15527344E-5, -0.515707016, -2.06437659, 4.46099548E-8, 4.16034491E-5, -0.999989271, -0.999989271, 9.6335441E-7, -4.62988687E-8, 9.63345315E-7, 1, 4.16012699E-5))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.14750649, 0.147506386, 1.67862356))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.885039032, 0.295012772, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.51570034, -1.91668773, -9.53674316E-7, 0.999989271, -2.75521359E-13, -3.70870001E-13, -2.75503253E-13, 1, -6.03156414E-13, 3.70870001E-13, 6.07985884E-13, 0.999989271))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.885039032, 0.295012772, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.51570034, -1.62167501, -9.53674316E-7, 0.999989271, -2.75521359E-13, -3.70870001E-13, -2.75503253E-13, 1, -6.03156414E-13, 3.70870001E-13, 6.07985884E-13, 0.999989271))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Smoky grey", "Part", Vector3.new(0.295013011, 2.06508946, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220681667, 8.94546509E-4, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515694618, -1.24922132, 0.295011997, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.258158922, -0.44693923, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.737532496, 1.62257028, 0.236010328))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.500944138, -2.87547874, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(1.03254545, 0.200000003, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.77926636E-4, -1.25290799, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.442519516, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.77926636E-4, -1.10540175, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.442921877, -5.82329798, -9.53674316E-7, 0.999994636, -2.75512252E-13, 1.20729954E-11, 6.40126642E-19, 1, -2.00535422E-12, -1.20729954E-11, 2.00608974E-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 0.73753202, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.590025902, 5.75274944, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220380783, -4.7907896, -9.53674316E-7, 1, -2.75534153E-13, 5.59502444E-12, 2.75533936E-13, 1, -1.40031042E-12, -5.59502444E-12, 1.40031042E-12, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.258158922, -0.44693923, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.110691786, -0.191638708, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.110691786, -0.191638708, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.25796771, 0.446596622, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.110505342, 0.191305399, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.77007711, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.148234606, -6.77999687, -4.76837158E-7, 0.999994636, -3.30741142E-12, -8.79209205E-12, 3.03188355E-12, 1, -2.20568841E-11, 8.79386841E-12, 2.2059396E-11, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221826315, -1.1054008, -9.53674316E-7, 1, -2.75533285E-13, -1.00870701E-13, 2.75533285E-13, 1, -1.20869981E-12, 1.00870701E-13, 1.20869981E-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.885039032, 0.200000003, 0.885038733))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.51568079, -1.40040469, 1.90734863E-6, 1, -1.02663131E-20, 0, -1.02663131E-20, 1, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.405618906, -0.702226162, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221667767, -3.16900206, -1.43051147E-6, 0.999994636, -2.75512252E-13, 8.49046528E-12, 6.40146029E-19, 1, -1.70229109E-12, -8.49046528E-12, 1.70302661E-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.737533867, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.03254545, 0.200000003, 0.885038733))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.66482544E-4, -1.40041232, -9.53674316E-7, 1, -2.75533285E-13, -1.00870701E-13, 2.75533285E-13, 1, -1.20869981E-12, 1.00870701E-13, 1.20869981E-12, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.110505342, 0.191305399, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.25796771, 0.446596622, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.885039032, 0.200000003, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515706539, -1.25290704, -9.53674316E-7, 1, -2.75533285E-13, -1.00870701E-13, 2.75533285E-13, 1, -1.20869981E-12, 1.00870701E-13, 1.20869981E-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220693111, -1.1054008, -9.53674316E-7, 1, -2.75533285E-13, -1.00870701E-13, 2.75533285E-13, 1, -1.20869981E-12, 1.00870701E-13, 1.20869981E-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.405618906, -0.702226162, 0, 0.865923226, 0.500177085, 1.67872543E-8, -0.500177085, 0.865923226, 5.24679216E-8, 1.17067778E-8, -5.38297869E-8, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012832, 1.47506392, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.369297743, -6.63180447, -4.76837158E-7, -0.999994636, 3.30741012E-12, -5.96323204E-8, 3.03188355E-12, 1, -2.20568841E-11, 5.96323204E-8, -2.2059396E-11, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.885039032, 4.13017941, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515714169, -5.75185299, -1.90734863E-6, 1, -2.75524395E-13, -3.52162743E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.52162743E-13, 6.03156414E-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.309763402, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295E-6, 9.53674316E-7, -1.94549561E-4, 1, -4.63448572E-7, -3.23592047E-7, -3.23591962E-7, 1.64063181E-7, -1, 4.63448629E-7, 1, 1.64063024E-7))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.324514031, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295E-6, 9.53674316E-7, -1.94549561E-4, 1, -4.63448572E-7, -3.23592047E-7, -3.23591962E-7, 1.64063181E-7, -1, 4.63448629E-7, 1, 1.64063024E-7))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.554624319, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.18005168, 0.442519188, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0743150711, -1.69562244, -4.76837158E-7, 1, -2.75524395E-13, -7.45878637E-11, 2.75524178E-13, 1, 1.48707172E-10, 7.45878637E-11, -1.48707172E-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221646786, -5.82227278, -9.53674316E-7, 0.999994636, -2.75512252E-13, 8.49046528E-12, 6.40146029E-19, 1, -1.70229109E-12, -8.49046528E-12, 1.70302661E-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.737533867, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295013011, 0.29501307, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515041351, -7.81274223, 9.53674316E-7, 1, -2.75534153E-13, 5.61278801E-12, 2.75533936E-13, 1, -1.40031042E-12, -5.61278801E-12, 1.40031042E-12, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.200000003, 2.50760889, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.442756176, -4.49544907, 0, -0.999994636, 4.46044921E-13, -5.96452097E-8, 1.70532628E-13, 1, -2.17245666E-12, 5.96452097E-8, -2.17319218E-12, -0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012832, 3.83516645, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.664005995, -3.83165455, -4.76837158E-7, -0.999994636, 4.46044704E-13, -5.9642197E-8, 1.70532411E-13, 1, -2.17245666E-12, 5.9642197E-8, -2.17319218E-12, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516839504, -1.24921942, -0.295013905, 1, -2.75533285E-13, -1.00870701E-13, 2.75533285E-13, 1, -1.20869981E-12, 1.00870701E-13, 1.20869981E-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.885039032, 0.200000003, 0.885038733))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516690731, -1.39850712, -9.53674316E-7, 0.999994636, -2.87668977E-13, 3.06331349E-12, 3.44146416E-15, 1, -1.37230505E-12, -3.06331349E-12, 1.64791791E-12, 0.999994636))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012981, 0.590025663, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.221410513, -2.21052313, 0, -0.999994636, 4.46101083E-13, -5.96629377E-8, 1.70589007E-13, 1, -1.86926863E-12, 5.96629377E-8, -1.87000415E-12, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.885039032, 0.200000003, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516839266, -1.25290704, -9.53674316E-7, 1, -2.75533285E-13, -1.00870701E-13, 2.75533285E-13, 1, -1.20869981E-12, 1.00870701E-13, 1.20869981E-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Smoky grey", "Part", Vector3.new(0.295013011, 2.0650897, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221837759, 8.94069672E-4, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.86102295E-6, -7.51719093, 0.369443893, -2.97932274E-8, 2.2059396E-11, 0.999994636, 3.03188355E-12, 1, -2.20568841E-11, -0.999994636, 3.30741055E-12, -2.9793231E-8))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 2.50760913, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221670628, -4.49578571, -9.53674316E-7, 0.999994636, -2.75512252E-13, 8.49046528E-12, 6.40146029E-19, 1, -1.70229109E-12, -8.49046528E-12, 1.70302661E-12, 0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.200000003, 1.18005121, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.442702055, -2.50398636, -4.76837158E-7, -0.999994636, 4.46044704E-13, -5.96449254E-8, 1.70532411E-13, 1, -2.17248441E-12, 5.96449254E-8, -2.17321994E-12, -0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.221019745, 1.26017833, 0, 1, 9.9763433E-18, -7.45067757E-11, -9.97532752E-18, 1, 1.49954715E-10, 7.45067757E-11, -1.49954715E-10, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.7375319, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.590025961, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, 2.43220711, 0.221660852, 4.63391068E-8, 4.46825474E-8, -0.999994636, -1.51188004E-8, -1, -4.46823094E-8, -0.999994636, 1.51191593E-8, -4.63391068E-8))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.590025961, 0.29501313, 0.590025902))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316E-7, -7.81263161, -0.0730409622, -2.97896676E-8, 2.1756319E-11, 0.999994636, 3.03188355E-12, 1, -2.17538071E-11, -0.999994636, 3.30741055E-12, -2.97896676E-8))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.442914724, -3.16820765, -9.53674316E-7, 0.999994636, -3.32356538E-13, 1.56541308E-11, 5.68447064E-14, 1, -2.00535422E-12, -1.56541308E-11, 2.00608974E-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 0.73753202, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.295012653, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220681667, 1.18094492, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.442519516, 0.295013011, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.77926636E-4, 1.18094552, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516839504, -1.24921942, 0.295011997, 1, -2.75533285E-13, -1.00870701E-13, 2.75533285E-13, 1, -1.20869981E-12, 1.00870701E-13, 1.20869981E-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.295012772, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874E-6, -7.2211132, 0.590576887, -2.97847187E-8, 2.00882505E-11, 0.999994636, 2.97503276E-12, 1, -2.00857525E-11, -0.999994636, 3.25055976E-12, -2.97847187E-8))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.62124634E-4, -0.515693188, -3.68544936, 4.4589239E-8, 4.16090261E-5, -1, -1, 9.63814387E-7, -4.45491359E-8, 9.63812568E-7, 1, 4.16090261E-5))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.14750649, 0.147506386, 1.67862356))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 0.590025902, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221664906, -2.80066252, -4.76837158E-7, 0.999994636, -2.75512252E-13, 5.59144397E-12, 6.40165364E-19, 1, -1.40031042E-12, -5.59144397E-12, 1.40104595E-12, 0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.295012861, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.441378117, -7.8126545, 4.76837158E-7, 1, -2.75534153E-13, 5.60212987E-12, 2.75533936E-13, 1, -1.40031042E-12, -5.60212987E-12, 1.40031042E-12, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.295012653, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221837759, 1.1809448, -9.53674316E-7, 1, -2.75524395E-13, -3.7087694E-13, 2.75524178E-13, 1, -6.03156414E-13, 3.7087694E-13, 6.03156414E-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221020699, 1.26017833, 0, 1, 9.9763433E-18, -7.45067757E-11, -9.97532752E-18, 1, 1.49954715E-10, 7.45067757E-11, -1.49954715E-10, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.7375319, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 3.09763432, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-6, -3.01968145, 0.885297298, -2.97987981E-8, 2.57460719E-13, 0.999994636, -6.94917659E-18, 1, -2.56739074E-13, -0.999994636, 2.7550469E-13, -2.97987981E-8))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 3.09763432, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459E-6, 3.01982832, 1.10655999, -1.39933377E-7, -4.45522055E-8, -0.999994636, 2.86610089E-7, -1, 4.45516228E-8, -0.999994636, -2.86611339E-7, 1.39933377E-7))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 3.09763479, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874E-6, 3.02018595, 0.885407448, -3.11451095E-6, 6.73515251E-6, -0.999994636, -9.20183595E-7, -1, -6.73511386E-6, -0.999994636, 9.20167849E-7, 3.11451709E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 2.50760865, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-6, -5.82237434, 0.885300398, -2.97994376E-8, 2.57405208E-13, 0.999994636, -6.94917659E-18, 1, -2.56683563E-13, -0.999994636, 2.7550469E-13, -2.97994376E-8))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.33786011E-6, -7.22234058, 0.664441347, -2.9783191E-8, 2.17563467E-11, 0.999994636, 3.03188355E-12, 1, -2.17538348E-11, -0.999994636, 3.30741099E-12, -2.9783191E-8))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.295012861, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-6, -7.22363949, 0.811548233, -2.9798791E-8, -4.60201321E-13, 0.999994636, -1.67088796E-13, 1, 1.42011403E-13, -0.999994636, 1.17143505E-13, -2.9798791E-8))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 2.50760913, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.19345093E-5, -5.82271338, 0.885406017, 3.1608879E-6, -6.71891894E-6, 0.999994636, 5.22557343E-7, 1, 6.7188812E-6, -0.999994636, 5.22539153E-7, 3.16089131E-6))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.200000003, 0.442519099, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.737729549, -1.69281816, -9.53674316E-7, -0.999994636, 3.89201068E-13, -5.96419838E-8, 1.13688993E-13, 1, -2.77888823E-12, 5.96419838E-8, -2.77962375E-12, -0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012832, 1.32755756, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.664032698, -6.41297722, 4.76837158E-7, -0.999994636, 2.75512279E-13, -5.96358518E-8, 8.56986463E-19, 1, -1.70230496E-12, 5.96358518E-8, -1.70302661E-12, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 2.50760865, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874E-6, -5.82254457, 1.1065681, -2.98008658E-8, 2.82357471E-13, 0.999994636, 3.44146437E-15, 1, 2.41195952E-14, -0.999994636, 2.87673775E-13, -2.980088E-8))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
function attackone()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, -0.5) * angles(math.rad(130), math.rad(0), math.rad(30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(0.5, 0.7, -0.5) * angles(math.rad(145), math.rad(0), math.rad(50)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(80)), 0.25)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 20, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  so("rbxassetid://203691447", Hitbox, 1, 0.9)
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -0.5) * angles(math.rad(35), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(-20)), 0.3)
  end
  attack = false
  Humanoid.WalkSpeed = 10
  con:disconnect()
  scfr = nil
end
function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
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
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {
    prt,
    "Block1",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function waveground()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, -0.5) * angles(math.rad(130), math.rad(0), math.rad(30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(0.5, 0.7, -0.5) * angles(math.rad(145), math.rad(0), math.rad(50)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(80)), 0.25)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 30, 30, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  so("rbxassetid://203691447", Hitbox, 1, 0.9)
  Humanoid.WalkSpeed = 0
  coroutine.resume(coroutine.create(function()
    local CF = RootPart.CFrame
    local numb = -5
    local BaseCF = CF
    for i = 1, 10 do
      BaseCF = CF * CFrame.new(0, -2, numb)
      local baseprt = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Part1", Vector3.new(1, 1, 1))
      baseprt.Anchored = true
      baseprt.CFrame = BaseCF
      game:GetService("Debris"):AddItem(baseprt, 0.5)
      local c = game.Workspace:GetChildren()
      for i = 1, #c do
        local hum = c[i]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
          local head = c[i]:findFirstChild("Head")
          if head ~= nil then
            local targ = head.Position - baseprt.Position
            local mag = targ.magnitude
            if mag <= 7 and c[i].Name ~= Player.Name then
              MagniDamage(head, 15, 10, 10, 15, "Up")
            end
          end
        end
      end
      so("http://www.roblox.com/asset/?id=278596476", baseprt, 0.7, 0.7)
      so("http://www.roblox.com/asset/?id=199145264", baseprt, 0.6, 1.3)
      so("http://www.roblox.com/asset/?id=168413145", baseprt, 0.7, 1.2)
      BlockEffect(BrickColor.new("Really black"), BaseCF, 0.5, 0.5, 0.5, 2, 2, 2, 0.05)
      WaveEffect(BrickColor.new("Really red"), BaseCF, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.05)
      numb = numb - 3
      wait(0.15)
    end
  end))
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -0.5) * angles(math.rad(35), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(-20)), 0.3)
  end
  attack = false
  Humanoid.WalkSpeed = 10
  con:disconnect()
  scfr = nil
end
function attacktwo()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -0.5) * angles(math.rad(80), math.rad(0), math.rad(-30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, -0.3) * angles(math.rad(80), math.rad(0), math.rad(10)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
  end
  Torso.Velocity = Head.CFrame.lookVector * 90
  if Humanoid.Jump == true then
    Torso.Velocity = Head.CFrame.lookVector * 50
  end
  so("rbxassetid://203691447", Hitbox, 1, 0.9)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 20, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149186", 0.8)
  end)
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
  end
  attack = false
  con:disconnect()
  scfr = nil
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
function uppercut()
  attack = true
  randnum = math.random(2, 3) + math.random()
  tehr = math.random(200, 300) / 10000
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -0.5) * angles(math.rad(80), math.rad(0), math.rad(-30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, -0.3) * angles(math.rad(80), math.rad(0), math.rad(10)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
  end
  coroutine.resume(coroutine.create(function()
    while attack do
      wait(0.1)
      MagicRing(BrickColor.new("Black"), RootPart.CFrame * angles(math.rad(math.random(80, 110)), math.rad(0), math.rad(math.random(80, 110))), 3, 3, 2, 1, 1, 0, 0.07)
      StravEffect(BrickColor.new("Really black"), RootPart.CFrame * euler(0, math.random(-50, 50), 0), -math.random(1, 10), 0, 0, randnum, randnum, randnum, tehr)
    end
  end))
  Torso.Velocity = Head.CFrame.lookVector * 100
  if Humanoid.Jump == true then
    Torso.Velocity = Head.CFrame.lookVector * 90
  end
  so("rbxassetid://203691447", Hitbox, 1, 0.9)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 20, 30, math.random(1, 5), "Up", RootPart, 0.5, "rbxassetid://199149186", 0.8)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(50), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(180), math.rad(0), math.rad(-50)), 0.25)
  end
  attack = false
  con:disconnect()
  scfr = nil
end
function StravEffect(brickcolor, cframe, x, y, z, x1, y1, z1, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x, y, z)
  msh = mesh("SpecialMesh", prt, "FileMesh", "rbxassetid://168892363", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh, ex, why, zee)
    local num = math.random()
    local num2 = math.random(-3, 2) + math.random()
    local numm = 0
    for i = 0, 1, delay * 2 do
      swait()
      Part.CFrame = cframe * euler(0, numm * num * 10, 0) * cf(ex, why, zee) * cf(-i * 10, num2, 0)
      Part.Transparency = i
      numm = numm + 0.01
    end
    Part.Parent = nil
    Mesh.Parent = nil
  end), prt, msh, x, y, z)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "Hit2", 1)
        end
      end
    end
  end
end
function goawayer()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=161006182", Torso, 1, 0.5)
  so("http://www.roblox.com/asset/?id=158210228", Torso, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    MagniDamage(HitboxB, 15, 1, 3, 5, "Knockdown")
    MagicRing(BrickColor.new("White"), HitboxB.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 1, 5, 5, 0, 0.08)
  end
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  attack = false
  scfr = nil
end
local shoot = false
local aiming = false
function Aim()
  attack = true
  aiming = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  local gairo = Create("BodyGyro")({
    Parent = RootPart,
    maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
    P = 20000,
    cframe = RootPart.CFrame
  })
  local offset
  while aiming == true do
    swait()
    local gunpos = vt(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
    offset = (Torso.Position.y - mouse.Hit.p.y) / 60
    local mag = (Torso.Position - mouse.Hit.p).magnitude / 80
    offset = offset / mag
    gairo.cframe = cf(Head.Position, gunpos)
  end
  if shoot == true then
    pewshoot(HitboxB, 10, 15, 0)
    for i = 0, 1, 0.05 do
      swait()
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-120)), 0.2)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
      FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    end
  end
  shoot = false
  gairo.Parent = nil
  attack = false
end
MMouse = Player:GetMouse()
function MagicCylinder(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
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
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
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
function pewshoot(post, mindam, maxdam, spready)
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  local MouseLook = cf((post.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  local hit, pos = rayCast(post.Position, MouseLook.lookVector, 999, RootPart.Parent)
  local mag = (post.Position - pos).magnitude
  MagicCylinder(BrickColor.new("Really red"), CFrame.new((post.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 1.2, 0, 1.2, 0.1)
  if hit ~= nil then
    MagicCircle(BrickColor.new("Really red"), cf(pos), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
    Damagefunc(post, hit, mindam, maxdam, math.random(1, 5), "Normal", RootPart, 0.1, "Hit1", 1)
  end
end
function attackthree()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  for i = 0, 1, 0.2 do
    pwait(5)
    Laser(HitboxB, 10)
  end
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  attack = false
  scfr = nil
end
function Laser(Part, Dmg)
  sp = Part.Position
  dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)
  local hit, pos = rayCast(sp, dirr.lookVector, 500, Character)
  local las = Instance.new("Part", Character)
  las.Anchored = true
  las.Locked = true
  las.CanCollide = false
  las.TopSurface = 0
  las.BottomSurface = 0
  las.BrickColor = BrickColor.new("Really red")
  las.Size = Vector3.new(1, 1, 1)
  las.CFrame = CFrame.new((Part.Position + pos) / 2, pos) * CFrame.Angles(math.rad(90), 0, 0)
  local msh = Instance.new("SpecialMesh", las)
  mag = (Part.Position - pos).magnitude
  msh.Scale = Vector3.new(0.1, mag, 0.1)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = Part.Transparency + 0.1
      Mesh.Scale = Mesh.Scale + Vector3.new(0.15, 0.7, 0.15)
    end
    Part.Parent = nil
  end), las, msh)
  if pos ~= nil then
    local las2 = Instance.new("Part", Character)
    las2.Anchored = true
    las2.Locked = true
    las2.CanCollide = false
    las2.TopSurface = 0
    las2.BottomSurface = 0
    las2.BrickColor = BrickColor.new("Really red")
    las2.Size = Vector3.new(1, 1, 1)
    las2.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(90), 0, 0)
    local msh = Instance.new("SpecialMesh", las2)
    msh.MeshType = "Sphere"
    mag = (Part.Position - pos).magnitude
    msh.Scale = Vector3.new(0.1, 0.1, 0.1)
    coroutine.resume(coroutine.create(function(Part, Mesh)
      for i = 0, 1, 0.1 do
        wait()
        Part.Transparency = Part.Transparency + 0.1
        Mesh.Scale = Mesh.Scale + Vector3.new(0.5, 0, 0.5)
      end
      Part.Parent = nil
    end), las2, msh)
  end
  if hit ~= nil and pos ~= nil then
    if hit.Parent.className == "Hat" then
      hit:BreakJoints()
      hit.Velocity = Vector3.new(math.random(-5, 5), 20, math.random(-5, 5))
    end
    if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then
      hit.Parent.Humanoid:TakeDamage(Dmg)
    end
  end
end
function bringer()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=161006182", Torso, 1, 0.2)
  so("http://www.roblox.com/asset/?id=158210228", Torso, 1, 0.4)
  for i = 0, 1, 0.05 do
    swait()
    MagniDamage(HitboxB, 10, 1, 3, -5, "Knockdown")
    MagicRing(BrickColor.new("White"), HitboxB.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 1, -2, -2, 0, 0.08)
  end
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  attack = false
  Humanoid.WalkSpeed = 10
end
function blast()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=161006182", Torso, 1, 0.2)
  so("http://www.roblox.com/asset/?id=158210228", Torso, 1, 0.4)
  for i = 0, 1, 0.01 do
    swait()
    MagniDamage(HitboxB, 10, 1, 3, -5, "Knockdown")
    MagicRing(BrickColor.new("Really red"), HitboxB.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 20, 20, 1, -2, -2, 0, 0.08)
  end
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  x = Instance.new("Sound", Character)
  x.SoundId = "rbxassetid://172088894"
  x.Pitch = 1
  x.Volume = 0.7
  wait(0.1)
  x:Play()
  Debounces.on = false
  Debounces.Here = false
  shot = shot + 1
  local rng = Instance.new("Part", Character)
  rng.Anchored = true
  rng.BrickColor = BrickColor.new("Really red")
  rng.CanCollide = false
  rng.FormFactor = 3
  rng.Name = "Ring"
  rng.Size = Vector3.new(1, 1, 1)
  rng.Transparency = 0.35
  rng.TopSurface = 0
  rng.BottomSurface = 0
  rng2 = rng:clone()
  rng3 = rng2:clone()
  rng4 = rng2:clone()
  local rngm = Instance.new("SpecialMesh", rng)
  rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
  rngm.Scale = Vector3.new(10, 10, 1)
  rngm2 = rngm:clone()
  rngm2.Scale = Vector3.new(5, 5, 1)
  rngm3 = rngm2:clone()
  rngm3.Parent = rng3
  rngm3.Scale = Vector3.new(8, 8, 1)
  rngm4 = rngm2:clone()
  rngm4.Parent = rng4
  rngm4.Scale = Vector3.new(6, 6, 1)
  local bem = Instance.new("Part", Character)
  bem.Anchored = true
  bem.BrickColor = BrickColor.new("Really red")
  bem.CanCollide = false
  bem.FormFactor = 3
  bem.Name = "Beam" .. shot
  bem.Size = Vector3.new(1, 1, 1)
  bem.Transparency = 0.35
  bem.TopSurface = 0
  bem.BottomSurface = 0
  local bemm = Instance.new("SpecialMesh", bem)
  bemm.MeshType = 4
  bemm.Scale = Vector3.new(1, 4, 4)
  local out = Instance.new("Part", Character)
  out.Anchored = true
  out.BrickColor = BrickColor.new("Really red")
  out.CanCollide = false
  out.Name = "Out"
  out.Size = Vector3.new(4, 4, 4)
  out.Transparency = 0.35
  out.TopSurface = 0
  out.BottomSurface = 0
  local outm = Instance.new("SpecialMesh", out)
  outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
  outm.Scale = Vector3.new(4, 4, 4)
  local bnd = Instance.new("Part", Character)
  bnd.Anchored = true
  bnd.BrickColor = BrickColor.new("Really red")
  bnd.CanCollide = false
  bnd.Name = "Bend"
  bnd.Size = Vector3.new(1, 1, 1)
  bnd.Transparency = 1
  bnd.TopSurface = 0
  bnd.BottomSurface = 0
  local bndm = Instance.new("SpecialMesh", bnd)
  bndm.MeshType = 3
  bndm.Scale = Vector3.new(8, 8, 8)
  out.CFrame = LeftArm.CFrame * CFrame.new(0, -2.7, 0)
  bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
  bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
  rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
  rng3.CFrame = rng.CFrame * CFrame.new(0, -0.5, 0)
  rng4.CFrame = rng3.CFrame * CFrame.new(0, -0.5, 0)
  Debounces.Shewt = true
  coroutine.wrap(function()
    for i = 1, 20, 0.2 do
      rngm.Scale = Vector3.new(10 + i * 2, 10 + i * 2, 1)
      rngm3.Scale = Vector3.new(8 + i * 2, 8 + i * 2, 1)
      rngm4.Scale = Vector3.new(6 + i * 2, 6 + i * 2, 1)
      rng.Transparency = i / 20
      rng3.Transparency = 0.0625
      rng4.Transparency = i / 12
      wait()
    end
    wait()
    rng:Destroy()
  end)()
  local con = bem.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 10, math.random(1, 5), "Up", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  for i = 0, 260, 8 do
    bem.Size = Vector3.new(i, 2, 2)
    bem.CFrame = LeftArm.CFrame * CFrame.new(0, -4.2 - i / 2, 0) * CFrame.Angles(0, 0, math.rad(90))
    bnd.CFrame = bem.CFrame * CFrame.new(-i / 2, 0, 1.2)
    bnd.Size = Vector3.new(1, 1, 1)
    bndm.Scale = Vector3.new(8, 8, 8)
    if i % 10 == 0 then
      do
        local newRng = rng2:Clone()
        newRng.Parent = Character
        newRng.CFrame = LeftArm.CFrame * CFrame.new(0, -4.2 - i, 0) * CFrame.Angles(math.rad(90), 0, 0)
        local newRngm = rngm2:clone()
        newRngm.Parent = newRng
        coroutine.wrap(function()
          for i = 1, 10, 0.2 do
            newRngm.Scale = Vector3.new(8 + i * 2, 8 + i * 2, 1)
            newRng.Transparency = i / 10
            wait()
          end
          wait()
          newRng:Destroy()
        end)()
      end
    end
    wait()
  end
  wait()
  Debounces.Shewt = false
  bem:Destroy()
  out:Destroy()
  bnd:Destroy()
  attack = false
  Humanoid.WalkSpeed = 10
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
function ob1u()
end
function ob1d()
  if aiming == true and attack == true then
    shoot = true
    aiming = false
  end
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  end
end
local magiccombo = 1
function key(k)
  k = k:lower()
  if attack == false and k == "x" and magiccombo == 1 and xenabled == true and mana >= 15 then
    magiccombo = 2
    xenabled = false
    mana = mana - 15
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.01 do
        swait()
        fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      xenabled = true
      fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    bringer()
  elseif attack == false and k == "x" and magiccombo == 2 and xenabled == true and mana >= 15 then
    xenabled = false
    mana = mana - 15
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.01 do
        swait()
        fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      xenabled = true
      fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    magiccombo = 1
    goawayer()
  elseif attack == false and k == "z" and zenabled == true and mana >= 15 then
    zenabled = false
    mana = mana - 15
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.01 do
        swait()
        fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      zenabled = true
      fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    waveground()
  elseif attack == false and k == "f" then
    Aim()
  elseif attack == false and k == "c" and cenabled == true and mana >= 25 then
    cenabled = false
    mana = mana - 25
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.005 do
        swait()
        fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      cenabled = true
      fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    uppercut()
  elseif attack == false and k == "v" and venabled == true and mana >= 55 then
    venabled = false
    mana = mana - 55
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.001 do
        swait()
        fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
      end
      venabled = true
      fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
    end))
    blast()
  end
end
Bin = Instance.new("HopperBin", Player.Backpack) --script.Parent
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
local idle = 0
local mananum = 0
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
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
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(20)), 0.25)
      end
    elseif -1 > RootPart.Velocity.y and hitfloor == nil then
      Anim = "Fall"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(70)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-70)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(-30)), 0.25)
      end
    elseif torvel < 1 and hitfloor ~= nil then
      Anim = "Idle"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-3), math.rad(-3), math.rad(30)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(20), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-15)), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-3), math.rad(20), math.rad(7)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(-8)), 0.2)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
        FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
        FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
        FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
        FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
        FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
      end
    elseif torvel > 2 and hitfloor ~= nil then
      Anim = "Walk"
      if attack == false then
        change = 3
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(-50)), 0.25)
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
