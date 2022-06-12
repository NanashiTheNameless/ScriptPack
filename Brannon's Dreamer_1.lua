wait(0.016666666666667)
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
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
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
RSH.Parent = Player.Character.Torso
LSH.Parent = Player.Character.Torso
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = nil
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = nil
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
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
animate = Character:findFirstChild("Animate")
animate.Disabled = false
CustomColor = BrickColor.new("Cool yellow")
Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b
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
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Flying"
  script.Parent = Tool
end
Bin = script.Parent
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
  return a:lerp(b, t)
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

lerp = function(a, b, t)
  return a:lerp(b, t)
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
      fat.Event:wait()
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
                humanoid = hit.Parent.Humanoid
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
                    so("http://roblox.com/asset/?id=392592460", hit, 1, math.random(80, 120) / 100)
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
    savethewalkspeed = hit.Parent.Humanoid.WalkSpeed
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
                        if Type == "SlashLifeSteal2" then
                          so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                          Humanoid.Health = Humanoid.Health + math.random(2, 3) / 2.5
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
                          if Type == "BlackHoleDamage" then
                            Humanoid.Health = Humanoid.Health + math.random(2, 4) / 5
                            floatingvelocity = Instance.new("BodyVelocity")
                            floatingvelocity.Parent = hit.Parent.Torso
                            floatingvelocity.Velocity = Vector3.new(0, math.random(2.5, 5), 0)
                            game:GetService("Debris"):AddItem(floatingvelocity, 1)
                          else
                            if Type == "BlackHoleDamage2" then
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

RainbowLightning = function(p0, p1, tym, ofs, th, tra, last)
  local rainbowcolor = BrickColor.new(0)
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
      li.BrickColor = rainbowcolor
      li.Material = "Neon"
      li.formFactor = "Custom"
      li.CanCollide = false
      li.Size = Vector3.new(th, th, magz / tym)
      local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
      local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
      if tym == i then
        local magz2 = curpos - p1.magnitude
        li.Size = Vector3.new(th, th, magz2)
        li.CFrame = CFrame.new(curpos, p1) * CFrame.new(-1.57, 0, -magz2 / 2)
      else
        do
          do
            li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(-1.57, 0, magz / tym / 2)
            curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
            game.Debris:AddItem(li, last)
            coroutine.resume(coroutine.create(function()
    while li.Parent ~= nil do
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
            coroutine.resume(coroutine.create(function()
    while li.Transparency ~= 1 do
      for i = 0, 1, last do
        fat.Event:wait()
        li.Transparency = li.Transparency + 0.1 / last
        li.BrickColor = rainbowcolor
      end
    end
    do
      li.Parent = nil
    end
  end
))
          end
          -- DECOMPILER ERROR at PC149: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC149: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC149: LeaveBlock: unexpected jumping out DO_STMT

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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
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
  game:GetService("Debris"):AddItem(prt, 5)
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
    Part:Destroy()
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
  game:GetService("Debris"):AddItem(prt, 5)
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
    Part:Destroy()
  end
), prt, msh)
end

RainbowOrbEffect = function(cframe, x1, y1, z1, x2, y2, z2, delay)
  local rainbowcolor = BrickColor.new(0)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
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
      Part.CFrame = Part.CFrame
      Part.BrickColor = rainbowcolor
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part:Destroy()
  end
), prt, msh)
end

RainbowStar = function(cframe, x1, y1, z1, x2, y2, z2, delay)
  local rainbowcolor = BrickColor.new(23)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=120647846", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
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
      Part.CFrame = Part.CFrame
      Part.BrickColor = rainbowcolor
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part:Destroy()
  end
), prt, msh)
end

RainbowSphereShockwave = function(cframe, x1, y1, z1, x3, y3, z3, delay)
  local rainbowcolor = BrickColor.new(0)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
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
    Part:Destroy()
  end
), prt, msh)
end

leftlegangle = 0
leftlegcframe = 0
leftlegcframe2 = 0
leftlegcframe3 = 0
rightlegangle = 0
rightlegcframe = 0
rightlegcframe2 = 0
rightlegcframe3 = 0
leftarmangle = 0
rightarmangle = 0
rightlegangle2 = 0
leftlegangle2 = 0
MMouse = mouse
canidle = true
canwalk = true
holdz = false
zshooting = false
gyroenabled = false
ShotTarget = RootPart
runningsound = Head.Running
local robloxidleanimation = Instance.new("Animation", Torso)
robloxidleanimation.Name = "robloxidleanimation"
robloxidleanimation.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local floatingaura = Instance.new("Sound", Torso)
floatingaura.SoundId = "http://www.roblox.com/asset/?id=343063967"
floatingaura.Volume = 0.25
floatingaura.Pitch = 0.75
floatingaura.Looped = true
gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 10000000
gyro.D = 1000
gyro.MaxTorque = Vector3.new(0, 10000000, 0)
Clone = function()
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      local rainbowcolor = BrickColor.new(0)
      do
        n = v:clone()
        n:BreakJoints()
        n.archivable = true
        n.Anchored = true
        n.CanCollide = false
        n.TopSurface = "SmoothNoOutlines"
        n.BottomSurface = "SmoothNoOutlines"
        n.LeftSurface = "SmoothNoOutlines"
        n.RightSurface = "SmoothNoOutlines"
        n.FrontSurface = "SmoothNoOutlines"
        n.BackSurface = "SmoothNoOutlines"
        n.Name = "Trail"
        n.BrickColor = rainbowcolor
        n.Parent = workspace
        n.CFrame = v.CFrame
        for _,v in pairs(n:children()) do
          if v.Name == "face" then
            v:Destroy()
          end
        end
        game:GetService("Debris"):AddItem(n, 2)
        coroutine.resume(coroutine.create(function()
    while n.Parent ~= nil do
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
        coroutine.resume(coroutine.create(function(ne)
    for i = 1, 80 do
      ne:BreakJoints()
      ne.Transparency = i / 80
      ne.BrickColor = rainbowcolor
      fat.Event:wait()
    end
    ne.Parent = nil
  end
), n)
      end
    end
  end
end

equipanim = function()
  attack = true
  so("http://roblox.com/asset/?id=367850772", Torso, 1, 0.75)
  speed.Value = speed.Value - 0.4
  Humanoid.WalkSpeed = 16 * speed.Value
  runningsound.Volume = 0
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Humanoid.CameraOffset = Vector3.new(0, 0 + 3 * i, 0)
    RainbowBlockShockwave(LeftLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(RightLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(135), math.rad(0), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(135), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  Humanoid.CameraOffset = Vector3.new(0, 3, 0)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RainbowBlockShockwave(LeftLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(RightLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(135 - 45 * i), math.rad(0), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(135 - 45 * i), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.18 do
    fat.Event:wait()
    RainbowBlockShockwave(LeftLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(RightLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=340722848", Torso, 0.5, 2)
  so("http://roblox.com/asset/?id=367850840", Torso, 0.75, 1.75)
  RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 1, 1, 1, 0.05)
  RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 1, 1, 1, 0.05)
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RainbowBlockShockwave(LeftLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(RightLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  speed.Value = speed.Value + 0.3
  Humanoid.WalkSpeed = 16 * speed.Value
  floatingaura:Play()
  attack = false
end

unequipanim = function()
  attack = true
  gyro.Parent = nil
  gyroenabled = false
  so("http://roblox.com/asset/?id=367850772", Torso, 0.75, 1.25)
  speed.Value = speed.Value - 0.3
  Humanoid.WalkSpeed = 16 * speed.Value
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RainbowBlockShockwave(LeftLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(RightLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=367850840", Torso, 0.75, 0.75)
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    Humanoid.CameraOffset = Vector3.new(0, 3 - 3 * i, 0)
    RainbowBlockShockwave(LeftLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(RightLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.01, 0.01, 0.01, 0.1)
    RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 1.5, 1.5, 1.5, 0.5, 0.5, 0.5, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3 - 3 * i) * angles(math.rad(0), math.rad(0), math.rad(0 + 360 * i)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(90 - 70 * i)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-90 + 70 * i)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  floatingaura:Stop()
  Humanoid.CameraOffset = Vector3.new(0, 0, 0)
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  runningsound.Volume = 0.5
  speed.Value = speed.Value + 0.4
  Humanoid.WalkSpeed = 16 * speed.Value
  attack = false
end

attackone = function()
  attack = true
  so("http://roblox.com/asset/?id=367850840", Torso, 0.75, 1)
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(135), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=340722848", Torso, 0.75, 1.75)
  RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 5, 5, 5, 0.05, 0.05, 0.05, 0.05)
  local startingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
  startingrefpart.Anchored = true
  startingrefpart.CFrame = RootPart.CFrame * cf(0, 3, -15)
  game:GetService("Debris"):AddItem(startingrefpart, 3)
  RainbowBlockShockwave(cf(startingrefpart.Position), 2, 2, 2, 2, 2, 2, 0.05)
  MagniDamage(startingrefpart, 20, 10, 15, 10, "Normal")
  for i = 1, math.random(2, 4) do
    RainbowOrbEffect(cf(startingrefpart.Position), 2, 2, 2, 2, 2, 2, 0.04)
  end
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attacktwo = function()
  attack = true
  so("http://roblox.com/asset/?id=367850840", Torso, 0.75, 1.25)
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(135), math.rad(0), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=340722848", Torso, 0.75, 1.5)
  RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 5, 5, 5, 0.05, 0.05, 0.05, 0.05)
  local startingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
  startingrefpart.Anchored = true
  startingrefpart.CFrame = RootPart.CFrame * cf(0, 3, -15)
  game:GetService("Debris"):AddItem(startingrefpart, 3)
  RainbowBlockShockwave(cf(startingrefpart.Position), 2, 2, 2, 2, 2, 2, 0.05)
  MagniDamage(startingrefpart, 20, 10, 15, 10, "Normal")
  for i = 1, math.random(2, 4) do
    RainbowOrbEffect(cf(startingrefpart.Position), 2, 2, 2, 2, 2, 2, 0.04)
  end
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attackthree = function()
  attack = true
  so("http://roblox.com/asset/?id=367850840", Torso, 0.75, 0.75)
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, 0.25) * angles(math.rad(-45), math.rad(0), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(165), math.rad(0), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, 0.25) * angles(math.rad(-45), math.rad(0), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 1, 2 do
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    local startingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
    startingrefpart.Anchored = true
    startingrefpart.CFrame = RootPart.CFrame * cf(math.random(-10, 10), 400, -20 + math.random(-10, 10))
    game:GetService("Debris"):AddItem(startingrefpart, 3)
    local hit, pos = rayCast(startingrefpart.Position, CFrame.new(startingrefpart.Position, startingrefpart.Position - Vector3.new(0, 1, 0)).lookVector, 500, Character)
    if hit ~= nil then
      floor = true
      refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
      refpart.Anchored = true
      refpart.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(refpart, 3)
      MagniDamage(refpart, 10, 10, 15, 0, "Normal")
      so("http://roblox.com/asset/?id=367932544", refpart, 0.5, 1)
      RainbowCylinderShockwave(cf(refpart.Position), 0.1, 0.01, 0.1, 3, 0.01, 3, 0.05)
      for i = 1, math.random(5, 10) do
        RainbowLightning(startingrefpart.Position, refpart.Position, 5, math.random(5, 10), 0.5, 0.5, 2)
      end
    end
    do
      for i = 0, 1, 0.08 do
        fat.Event:wait()
        local lv = RootPart.CFrame:pointToObjectSpace(RootPart.Velocity + RootPart.Position)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(-lv.z / 1), math.rad(-lv.x / 1), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(165), math.rad(0), math.rad(5)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, 0.25) * angles(math.rad(-45), math.rad(0), math.rad(45)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      end
      -- DECOMPILER ERROR at PC846: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
  attack = false
end

ChangeMode = function()
  attack = true
  so("http://roblox.com/asset/?id=367850772", Torso, 0.75, math.random(80, 120) / 100)
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-75)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

canlaser = true
canrainstar = true
LaserShot = function()
  canlaser = false
  local theactualstartingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
  theactualstartingrefpart.Anchored = true
  theactualstartingrefpart.CFrame = RootPart.CFrame * cf(0, 1000, 0)
  game:GetService("Debris"):AddItem(theactualstartingrefpart, 0.1)
  local spread = Vector3.new(math.random(-10, 10), 0, math.random(-10, 10))
  local MainPos = theactualstartingrefpart.Position
  local MainPos2 = MMouse.Hit.p + spread
  local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
  local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10000, ShotTarget.Parent)
  if hit ~= nil then
    local actualstartingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
    actualstartingrefpart.Anchored = true
    actualstartingrefpart.CFrame = cf(pos)
    game:GetService("Debris"):AddItem(actualstartingrefpart, 0.1)
    local startingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
    startingrefpart.Anchored = true
    startingrefpart.CFrame = actualstartingrefpart.CFrame * cf(0, 400, 0)
    game:GetService("Debris"):AddItem(startingrefpart, 0.1)
    local hit, pos = rayCast(startingrefpart.Position, CFrame.new(startingrefpart.Position, startingrefpart.Position - Vector3.new(0, 1, 0)).lookVector, 500, Character)
    if hit ~= nil then
      floor = true
      refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
      refpart.Anchored = true
      refpart.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(refpart, 0.1)
      MagniDamage(refpart, 10, 20, 30, 0, "Normal")
      so("http://roblox.com/asset/?id=367932544", refpart, 0.5, math.random(80, 120) / 100)
      RainbowCylinderShockwave(cf(refpart.Position), 18, 0.01, 18, 1, 0.01, 1, 0.05)
      RainbowLightning(startingrefpart.Position, refpart.Position, 5, math.random(5, 10), 6, 0.5, 10)
    end
  end
  do
    wait(0.25)
    canlaser = true
  end
end

starcount = 0
StarRain = function()
  canrainstar = false
  starcount = math.random(1, 8)
  if starcount == 1 or starcount == 2 or starcount == 3 or starcount == 4 or starcount == 5 or starcount == 6 or starcount == 7 then
    startingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
    startingrefpart.Anchored = true
    startingrefpart.CFrame = RootPart.CFrame * cf(math.random(-20, 20), math.random(30, 40), math.random(-20, 20))
    game:GetService("Debris"):AddItem(startingrefpart, 2)
    so("http://roblox.com/asset/?id=367850840", startingrefpart, 0.75, math.random(75, 125) / 100)
    local spread = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
    do
      local MainPos = startingrefpart.Position
      local MainPos2 = MMouse.Hit.p + spread
      local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
      local speed = 0.01
      local num = 300
      local rotation = 0
      coroutine.resume(coroutine.create(function()
    repeat
      swait(1)
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, ShotTarget.Parent)
      local mag = MainPos - pos.magnitude
      RainbowStar(CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, math.rad(-90), math.rad(rotation)), 10, 10, 10, 0.01, 0.01, 0.01, 0.125)
      MainPos = MainPos + MouseLook.lookVector * speed
      num = num - 1
      rotation = rotation - 5
      coroutine.resume(coroutine.create(function()
      wait(0.25)
      speed = 2
    end
))
      if hit ~= nil then
        num = 0
        refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        refpart.Anchored = true
        refpart.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(refpart, 2)
        RainbowSphereShockwave(cf(refpart.Position), 50, 50, 50, 0.1, 0.1, 0.1, 0.075)
        MagniDamage(refpart, 15, 20, 30, 0, "Normal")
        so("http://roblox.com/asset/?id=367850772", refpart, 1, math.random(100, 150) / 100)
        so("http://roblox.com/asset/?id=340722848", refpart, 0.5, math.random(100, 150) / 100)
      end
      if num <= 0 then
        refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        refpart.Anchored = true
        refpart.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(refpart, 2)
        RainbowSphereShockwave(cf(refpart.Position), 50, 50, 50, 0.1, 0.1, 0.1, 0.075)
        MagniDamage(refpart, 15, 20, 30, 0, "Normal")
        so("http://roblox.com/asset/?id=367850772", refpart, 1, math.random(100, 150) / 100)
        so("http://roblox.com/asset/?id=340722848", refpart, 0.5, math.random(100, 150) / 100)
      end
    until num <= 0
  end
))
    end
  else
    do
      if starcount == 8 then
        startingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        startingrefpart.Anchored = true
        startingrefpart.CFrame = RootPart.CFrame * cf(math.random(-20, 20), math.random(30, 40), math.random(-20, 20))
        game:GetService("Debris"):AddItem(startingrefpart, 2)
        so("http://roblox.com/asset/?id=367850840", startingrefpart, 0.75, math.random(45, 55) / 100)
        local spread = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
        local MainPos = startingrefpart.Position
        local MainPos2 = MMouse.Hit.p + spread
        local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
        local speed = 0.01
        local num = 300
        local rotation = 0
        coroutine.resume(coroutine.create(function()
    repeat
      swait(1)
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, ShotTarget.Parent)
      local mag = MainPos - pos.magnitude
      RainbowStar(CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, math.rad(-90), math.rad(rotation)), 20, 20, 20, 0.01, 0.01, 0.01, 0.125)
      MainPos = MainPos + MouseLook.lookVector * speed
      num = num - 1
      rotation = rotation - 5
      coroutine.resume(coroutine.create(function()
      wait(0.25)
      speed = 1
    end
))
      if hit ~= nil then
        num = 0
        refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        refpart.Anchored = true
        refpart.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(refpart, 2)
        RainbowSphereShockwave(cf(refpart.Position), 100, 100, 100, 0.1, 0.1, 0.1, 0.075)
        MagniDamage(refpart, 27.5, 40, 60, 0, "Normal")
        so("http://roblox.com/asset/?id=367850772", refpart, 1, math.random(50, 100) / 100)
        so("http://roblox.com/asset/?id=340722848", refpart, 0.5, math.random(50, 100) / 100)
      end
      if num <= 0 then
        refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        refpart.Anchored = true
        refpart.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(refpart, 2)
        RainbowSphereShockwave(cf(refpart.Position), 100, 100, 100, 0.1, 0.1, 0.1, 0.075)
        MagniDamage(refpart, 27.5, 40, 60, 0, "Normal")
        so("http://roblox.com/asset/?id=367850772", refpart, 1, math.random(50, 100) / 100)
        so("http://roblox.com/asset/?id=340722848", refpart, 0.5, math.random(50, 100) / 100)
      end
    until num <= 0
  end
))
      end
      do
        wait(math.random(80, 140) / 100)
        canrainstar = true
      end
    end
  end
end

LasersandStars = function()
  holdz = true
  attack = true
  so("http://roblox.com/asset/?id=367850772", Torso, 0.75, math.random(80, 120) / 100)
  speed.Value = speed.Value - 0.5
  Humanoid.WalkSpeed = 16 * speed.Value
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 3, 3, 3, 0.01, 0.01, 0.01, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-75)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  do
    while holdz == true do
      for i = 0, 1, 0.5 do
        fat.Event:wait()
        local lv = RootPart.CFrame:pointToObjectSpace(RootPart.Velocity + RootPart.Position)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5) * angles(math.rad(-lv.z / 1), math.rad(-lv.x / 1), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(75)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-75)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      end
      if holdz == false then
        speed.Value = speed.Value + 0.5
        Humanoid.WalkSpeed = 16 * speed.Value
        break
      end
    end
    attack = false
  end
end

Teleport = function()
  refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
  refpart.Anchored = true
  refpart.CFrame = Torso.CFrame
  game:GetService("Debris"):AddItem(refpart, 1)
  so("http://roblox.com/asset/?id=367932544", refpart, 0.5, 0.75)
  RainbowBlockShockwave(refpart.CFrame, 2, 2, 2, 2, 2, 2, 0.1)
  Character:MoveTo(MMouse.Hit.p)
  wait()
  so("http://roblox.com/asset/?id=367932544", Torso, 0.5, 1.25)
  RainbowBlockShockwave(Torso.CFrame, 2, 2, 2, 2, 2, 2, 0.1)
end

hold = false
holdx = false
laserhold = false
ob1d = function(mouse)
  if attack == false and equipped == true and gyroenabled == true then
    if attack == false and attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attack == false and attacktype == 2 then
        attacktype = 3
        attacktwo()
      else
        if attack == false and attacktype == 3 then
          attacktype = 1
          attackthree()
        end
      end
    end
  end
  if holdz == true and equipped == true and gyroenabled == true and canlaser == true then
    laserhold = true
    while laserhold == true do
      LaserShot()
    end
  end
end

ob1u = function(mouse)
  if laserhold == true then
    laserhold = false
  end
end

k = function(k)
  if k == "f" and attack == false then
    if equipped == false then
      equipped = true
      RSH.Parent = nil
      LSH.Parent = nil
      RW.Parent = ch.Torso
      LW.Parent = ch.Torso
      animate.Disabled = true
      local idleanimation = Humanoid:LoadAnimation(Torso.robloxidleanimation)
      idleanimation:Play()
      equipanim()
      coroutine.resume(coroutine.create(function()
    while equipped == true do
      wait(0.1)
      RainbowBlockShockwave(LeftLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.1, 0.1, 0.1, 0.1)
      RainbowBlockShockwave(RightLeg.CFrame * cf(0, -1, 0), 2, 2, 2, 0.1, 0.1, 0.1, 0.1)
    end
  end
))
    else
      do
        if equipped == true then
          equipped = false
          unequipanim()
          swait(0)
          animate.Disabled = false
          RW.Parent = nil
          LW.Parent = nil
          RSH.Parent = player.Character.Torso
          LSH.Parent = player.Character.Torso
        end
        if k == "e" and attack == false and equipped == true then
          if gyro.Parent == RootPart then
            ChangeMode()
            gyro.Parent = nil
            gyroenabled = false
          else
            if gyro.Parent == nil then
              ChangeMode()
              gyro.Parent = RootPart
              gyroenabled = true
              coroutine.resume(coroutine.create(function()
    while gyroenabled == true do
      wait(0.1)
      RainbowBlockShockwave(LeftArm.CFrame * cf(0, -1, 0), 2, 2, 2, 0.1, 0.1, 0.1, 0.1)
      RainbowBlockShockwave(RightArm.CFrame * cf(0, -1, 0), 2, 2, 2, 0.1, 0.1, 0.1, 0.1)
    end
  end
))
            end
          end
        end
        if k == "z" and attack == false and gyroenabled == true then
          LasersandStars()
        end
        if k == "z" and holdz == true and gyroenabled == true then
          holdz = false
        end
        if k == "x" and holdz == true and canrainstar == true then
          holdx = true
          while holdx == true do
            StarRain()
          end
        end
        if k == "c" and attack == false and gyroenabled == true and holdz == false then
          Teleport()
        end
      end
    end
  end
end

k2 = function(k)
  if k == "x" and equipped == true then
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
fat.Event:connect(function()
  ammolabel.Text = "Speed [" .. speed.Value .. "]"
  ammolabel2.Text = "Damage [" .. damagea.Value .. "]"
  ammolabel3.Text = "Defense [" .. defense.Value .. "]"
  gyro.CFrame = CFrame.new(Vector3.new(1, 0, 1), cam.CoordinateFrame.p - RootPart.CFrame.p.unit * -100)
  sine = sine + change
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if donum >= 0.5 then
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
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((idle >= 500 and attack ~= false) or RootPart.Velocity.y > 1) and hitfloor == nil then
      Anim = "Jump"
      if attack == false and equipped == true and gyroenabled == false then
        fat.Event:wait()
        Humanoid.WalkSpeed = 16 * speed.Value
      else
        if attack == false and equipped == true and gyroenabled == true then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
        end
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false and equipped == true and gyroenabled == false then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
        else
          if attack == false and equipped == true and gyroenabled == true then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
          end
        end
      else
        if torvel.x < 1 and torvel.z < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false and equipped == true and gyroenabled == false then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3 - 0.25 * math.cos(sine / 20) + -math.sin(sine / 20) / 5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5 * math.cos(sine / 20)), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(0.75, 0.5 - 0.1 * math.cos(sine / 20), -0.35) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(70), math.rad(80)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 - 0.1 * math.cos(sine / 20), -0.45) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(-60), math.rad(-90)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5 - 2.5 * math.cos(sine / 20)), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5 - 2.5 * math.cos(sine / 20)), math.rad(0), math.rad(0)), 0.3)
          else
            if attack == false and equipped == true and gyroenabled == true then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3 - 0.25 * math.cos(sine / 20) + -math.sin(sine / 20) / 5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5 * math.cos(sine / 20)), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15 + 5 * math.cos(sine / 20)), math.rad(-15), math.rad(30 + 5 * math.cos(sine / 20))), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15 + 5 * math.cos(sine / 20)), math.rad(15), math.rad(-30 - 5 * math.cos(sine / 20))), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-5), math.rad(90), math.rad(0)) * angles(math.rad(-5 - 2.5 * math.cos(sine / 20)), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-5 - 2.5 * math.cos(sine / 20)), math.rad(0), math.rad(0)), 0.3)
            end
          end
        else
          if torvel.x < 2 and torvel.z < 2 and hit ~= nil then
            Anim = "Walk"
            if attack == false and equipped == true and gyroenabled == false then
              fat.Event:wait()
              local lv = RootPart.CFrame:pointToObjectSpace(RootPart.Velocity + RootPart.Position)
              Humanoid.WalkSpeed = 16 * speed.Value
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3 - 0.25 * math.cos(sine / 20) + -math.sin(sine / 20) / 5) * angles(math.rad(20 * speed.Value), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0) + Head.RotVelocity.Y / 15), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20 * speed.Value), math.rad(0), math.rad(20)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20 * speed.Value), math.rad(0), math.rad(-20)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20 * speed.Value), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20 * speed.Value), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
            else
              do
                if attack == false and equipped == true and gyroenabled == true then
                  fat.Event:wait()
                  local lv = RootPart.CFrame:pointToObjectSpace(RootPart.Velocity + RootPart.Position)
                  Humanoid.WalkSpeed = 16 * speed.Value
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 3 - 0.25 * math.cos(sine / 20) + -math.sin(sine / 20) / 5) * angles(math.rad(-lv.z / 1), math.rad(-lv.x / 1), math.rad(0)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(lv.z / 1), math.rad(lv.x / 1), math.rad(0)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(lv.z / 1), math.rad(0), math.rad(10 + -lv.x / 1)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(lv.z / 1), math.rad(0), math.rad(-10 + -lv.x / 1)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(lv.z / 1), math.rad(90), math.rad(0)) * angles(math.rad(-5 + lv.x / 1), math.rad(0), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(lv.z / 1), math.rad(-90), math.rad(0)) * angles(math.rad(-5 + -lv.x / 1), math.rad(0), math.rad(0)), 0.3)
                end
              end
            end
          end
        end
      end
    end
  end
end
)

