--[ Fixed by all_suck ]--
taunting = false
math.randomseed(tick())
local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
repeat
  wait()
until plr.Character and plr.Character:WaitForChild("Torso") and plr.Character:WaitForChild("Humanoid")
local char = plr.Character
local torso = char.Torso
local humanoid = char.Humanoid
local canTaunt = false
local charStats = Instance.new("Folder", char)
charStats.Name = "CharStats"
speed = Instance.new("NumberValue", charStats)
speed.Name = "Speed"
speed.Value = 10
local Anim
LS = torso["Left Shoulder"]
LH = torso["Left Hip"]
RS = torso["Right Shoulder"]
RH = torso["Right Hip"]
Neck = torso.Neck
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
RootPart = char.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
player = nil
RSH, LSH = nil, nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
Sheathed = true
SwordStance = false
Charge = 0
RSH = char.Torso["Right Shoulder"]
LSH = char.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = char.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = char["Right Arm"]
RW.Parent = char.Torso
LW.Name = "Left Shoulder"
LW.Part0 = char.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = char["Left Arm"]
LW.Parent = char.Torso
local cam = workspace.CurrentCamera
local Effects = Instance.new("Model", char)
Effects.Name = "Effects"
local currentattack, basicattacking
local walkspeed = 14
humanoid.WalkSpeed = walkspeed
mouse = plr:GetMouse()
sinecount, normcount, tweentick, tweenrot, tweenrotm = 0, 0, 0, 0, 0
Mode = "Positive"
local Key1 = Enum.KeyCode.Q
local Key2 = Enum.KeyCode.E
local Key3 = Enum.KeyCode.R
local Key4 = Enum.KeyCode.F
local key1re = 5
local key2re = 6
local key3re = 10
local key4re = 1
local atk1d = 3.2
local atk2d = 1.8
local atk3d = 3
local atk4d = 0
local key1db = false
local key2db = false
local key3db = false
local key4db = false
local attacking = Instance.new("BoolValue", charStats)
attacking.Value = false
attacking.Name = "Attacking"
local PosAtk1 = "Up"
local PosAtk2 = "Force Push"
local PosAtk3 = "Gravity Field"
local PosAtk4 = "Inverse Polarity"
local NegAtk1 = "Down"
local NegAtk2 = "Fissure"
local NegAtk3 = "Black Hole"
local NegAtk4 = "Inverse Polarity"
local Click1 = Enum.UserInputType.MouseButton1
local ComboAttacks = {
  "Combo1",
  "Combo2",
  "Combo3"
}
local counter = 1
local countermax = #ComboAttacks
local combo1duration = 0.8
local combo2duration = 1
local combo3duration = 1.2
click1db = false
local Stab1Dam = 10
local Stab2Dam = 10
local Stab3Dam = 1
local Attack1Damage = 2.5
local Attack2Damage = 15
local Attack3Damage = 13
local Attack4Damage
local Energy = Instance.new("NumberValue", charStats)
Energy.Name = "EnergyAmount"
Energy.Value = math.huge
local Attack1Energy = 0
local Attack2Energy = 0
local Attack3Energy = 0
local Attack4Energy = 0
function rayCast(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function thread(f)
  coroutine.resume(coroutine.create(f))
end
function swait(num)
  if num == 0 or num == nil then
    game:service("RunService").Stepped:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Stepped:wait(0)
    end
  end
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
function round(num)
  local a, b = math.modf(num)
  if num % 1 ~= 0 then
    return math.floor(num) + math.floor(b * 10 + 0.5) / 10
  else
    return math.floor(num)
  end
end
function NoOutline(Part)
  Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
function newPart(parent, brickcolor, transparency, anchored, cancollide, size, name)
  local fp = Instance.new("Part")
  fp.Parent = parent
  fp.Transparency = transparency
  fp.Anchored = anchored
  fp.CanCollide = cancollide
  fp.Locked = true
  fp.BrickColor = BrickColor.new(brickcolor)
  fp.Name = name
  fp.Size = size
  fp.Position = torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  fp.CFrame = RootPart.CFrame
  return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = Instance.new(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid then
      mesh.MeshId = meshid
    end
  end
  if offset then
    mesh.Offset = offset
  end
  mesh.Scale = scale
  return mesh
end
function weld(parent, part0, part1, c0)
  local weld = Instance.new("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end
function createBlockPart()
  local part = Instance.new("Part", Effects)
  part.Anchored = true
  part.CanCollide = false
  part.Size = Vector3.new(1, 1, 1)
  part.BrickColor = BrickColor.new(Mode == "Negative" and "Really black" or "Lily white")
  part.Transparency = 0.4
  part.Material = Mode == "Negative" and "Granite" or "Neon"
  part.CFrame = RootPart.CFrame
  coroutine.resume(coroutine.create(function()
    if humanoid.Health <= 0 then
      part:Destroy()
    end
  end), part)
  return part
end
function createSpherePart()
  local part = Instance.new("Part", Effects)
  part.Anchored = true
  part.CanCollide = false
  part.Size = Vector3.new(1, 1, 1)
  part.BrickColor = BrickColor.new(Mode == "Negative" and "Really black" or "Lily white")
  part.Transparency = 0.4
  part.Material = "Neon"
  part.Material = Mode == "Negative" and "Granite" or "Neon"
  local pmesh = Instance.new("SpecialMesh", part)
  pmesh.MeshType = "Sphere"
  part.CFrame = RootPart.CFrame
  return part, pmesh
end
function createPulsePart()
  local pulse = Instance.new("Part", Effects)
  pulse.BrickColor = BrickColor.new("Lily white")
  pulse.Material = "Neon"
  pulse.Transparency = 0.2
  pulse.Anchored = true
  pulse.CanCollide = false
  pulse.Size = Vector3.new(5, 5, 0.2)
  local pulsem = Instance.new("SpecialMesh", pulse)
  pulsem.MeshId = "http://www.roblox.com/asset/?id=3270017"
  pulsem.Scale = Vector3.new(10, 10, 0.2)
  pulse.CFrame = RootPart.CFrame
  return pulse, pulsem
end
function createBodyVelocity(vtors)
  local bv = Instance.new("BodyVelocity", vtors)
  bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bv.P = 1250
  return bv
end
function randomangles()
  local random = math.rad((math.random() - 0.5) * 180)
  local randomangles = CFrame.Angles(random, random, random)
  return randomangles
end
function findCloseHumanoid(centre, distance)
  local tab = {}
  for _, child in pairs(game.Workspace:GetChildren()) do
    if child:findFirstChild("Humanoid") and child:findFirstChild("Humanoid") ~= humanoid and child:findFirstChild("Torso") then
      local vtors = child.Torso
      local mag = math.abs((vtors.Position - centre).magnitude)
      if distance >= mag then
        table.insert(tab, child.Humanoid)
      end
    end
  end
  return tab
end
function sound(id, par, vol, dur, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
    swait()
    sou:play()
    thread(function()
      wait(dur)
      sou:Destroy()
    end)
    return sou
  end))
end
--loldamage
function basicDamage(vhum, damage, colour)
  if not vhum or not vhum.Parent:findFirstChild("Humanoid") then
    return
  end
  vhum.Parent.Humanoid:TakeDamage(damage)
  local damagepart = Instance.new("Part", Effects)
  damagepart.Transparency = 1
  damagepart.Anchored = true
  damagepart.CanCollide = false
  damagepart.Size = Vector3.new(1, 1, 1)
  damagepart.Name = "DamagePart"
  damagepart.CFrame = vhum.Parent.Head.CFrame * CFrame.new(0, 1, 0)
  local g = Instance.new("BillboardGui", damagepart)
  g.Enabled = true
  g.Adornee = damagepart
  g.Size = UDim2.new(5, 0, 5, 0)
  g.ExtentsOffset = Vector3.new(0, 0, 0)
  g.StudsOffset = Vector3.new(0, 0, 0)
  local t = Instance.new("TextLabel", g)
  t.BackgroundTransparency = 1
  t.Font = "ArialBold"
  t.TextSize = 24
  t.Text = "-" .. round(damage)
  if round(damage) % 1 == 0 then
    t.Text = "-" .. round(damage) .. ".0"
  end
  t.Size = UDim2.new(1, 0, 1, 0)
  t.TextStrokeTransparency = 0
  t.TextTransparency = 0
  t.TextScaled = true
  t.TextWrapped = true
  t.TextXAlignment = "Center"
  t.TextYAlignment = "Center"
  t.TextColor3 = colour
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      game:GetService("RunService").Heartbeat:wait()
      local sinewave = math.sin(i / 500) * 4
      damagepart.CFrame = damagepart.CFrame * CFrame.new(Vector3.new(0, 0.3 - sinewave, 0))
      t.TextTransparency = t.TextTransparency + 0.02
      t.TextStrokeTransparency = t.TextTransparency + 0.02
    end
    damagepart:Destroy()
  end), t)
end
--xdddddddddddd
function keyDown(key, clientinput)
  if clientinput then
    return
  end
  if not humanoid or not torso or humanoid.Health <= 0 then
    return
  end
  if attacking.Value == true then
    return
  end
  if key.UserInputType == Enum.UserInputType.MouseButton1 then
    if click1db then
      return
    end
    local attack = ComboAttacks[counter]
    currentattack = attack
    if attack == "Combo1" then
      attacking.Value = true
      do
        local p = createBlockPart()
        p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p.Size = Vector3.new(1.25, 1.25, 1.25)
        p.Transparency = 0.4
        p.Parent = Effects
        local p2 = createBlockPart()
        p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p2.Size = Vector3.new(1.75, 1.75, 1.75)
        p2.Transparency = 0.6
        p2.Parent = Effects
        for i = 0, 1.1, 0.05 do
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(5), 0, math.rad(90)), 0.14)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(-90)), 0.14)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.14)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-60), 0, 0), 0.14)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, -math.rad(45)), 0.14)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
          p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          swait()
        end
        for i = 0, 0.8, 0.05 do
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(5), 0, math.rad(-80)), 0.16)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(80)), 0.16)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.16)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(15), 0, math.rad(35)), 0.16)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(60)), 0.16)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.16)
          p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          if i > 0 and i < 0.1 then
            thread(function()
              sound(300915947, char.Head, 0.5, 4, 1)
              for i = 1, 2 do
                do
                  local s, smesh = createSpherePart()
                  s.Transparency = 0.2
                  thread(function()
                    for i = 1, 18 do
                      wait()
                      local sinewave = 100 * math.asin(i / 100)
                      smesh.Scale = smesh.Scale + Vector3.new(sinewave * 0.05, sinewave * 0.05, sinewave * 0.05)
                      s.CFrame = p.CFrame
                      s.Transparency = s.Transparency + 0.044444444444444446
                    end
                    s:Destroy()
                  end)
                  wait(0.05)
                end
              end
            end)
            thread(function()
              wait(0.1)
              local closeHumanoids = findCloseHumanoid(p.Position, 7)
              for _, vhum in pairs(closeHumanoids) do
                if Mode ~= "Positive" or not Color3.fromRGB(255, 255, 255) then
                end
                basicDamage(vhum, Stab1Dam, (Color3.fromRGB(0, 0, 0)))
                if vhum.Parent:findFirstChild("Torso") then
                  do
                    local vtors = vhum.Parent.Torso
                    local bv = createBodyVelocity(vtors)
                    bv.Velocity = (vtors.Position - torso.Position).unit * (Mode == "Negative" and -4 or 10) + Vector3.new(0, 2, 0)
                    delay(0.5, function()
                      bv:Destroy()
                    end)
                  end
                end
              end
            end)
          end
          swait()
        end
        thread(function()
          for i = 1, 10 do
            wait()
            p.Transparency = p.Transparency + 0.06
            p2.Transparency = p.Transparency + 0.04
          end
          p:Destroy()
          p2:Destroy()
        end)
        wait(0.1)
        attacking.Value = false
      end
    end
    if attack == "Combo2" then
      attacking.Value = true
      do
        local p = createBlockPart()
        p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p.Size = Vector3.new(1.25, 1.25, 1.25)
        p.Transparency = 0.4
        p.Parent = Effects
        local p2 = createBlockPart()
        p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p2.Size = Vector3.new(1.75, 1.75, 1.75)
        p2.Transparency = 0.6
        p2.Parent = Effects
        for i = 0, 1.1, 0.05 do
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(5), 0, math.rad(-90)), 0.14)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(90)), 0.14)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(45)), 0.14)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(60), 0, 0), 0.14)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
          p.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          swait()
        end
        for i = 0, 0.8, 0.05 do
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(5), 0, math.rad(80)), 0.16)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(-80)), 0.16)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-60)), 0.16)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.16)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0), 0.16)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(15), 0, math.rad(-35)), 0.16)
          p.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          if i > 0 and i < 0.1 then
            thread(function()
              sound(300915983, char.Head, 0.5, 4, 1)
              for i = 1, 2 do
                do
                  local s, smesh = createSpherePart()
                  s.Transparency = 0.2
                  thread(function()
                    for i = 1, 18 do
                      wait()
                      local sinewave = 100 * math.asin(i / 100)
                      smesh.Scale = smesh.Scale + Vector3.new(sinewave * 0.05, sinewave * 0.05, sinewave * 0.05)
                      s.CFrame = p.CFrame
                      s.Transparency = s.Transparency + 0.044444444444444446
                    end
                    s:Destroy()
                  end)
                  wait(0.05)
                end
              end
            end)
            thread(function()
              wait(0.1)
              local closeHumanoids = findCloseHumanoid(p.Position, 7)
              for _, vhum in pairs(closeHumanoids) do
                if Mode ~= "Positive" or not Color3.fromRGB(255, 255, 255) then
                end
                basicDamage(vhum, Stab1Dam, (Color3.fromRGB(0, 0, 0)))
                if vhum.Parent:findFirstChild("Torso") then
                  do
                    local vtors = vhum.Parent.Torso
                    local bv = createBodyVelocity(vtors)
                    bv.Velocity = (vtors.Position - torso.Position).unit * (Mode == "Negative" and -4 or 10) + Vector3.new(0, 2, 0)
                    delay(0.5, function()
                      bv:Destroy()
                    end)
                  end
                end
              end
            end)
          end
          swait()
        end
        thread(function()
          for i = 1, 10 do
            wait()
            p.Transparency = p.Transparency + 0.06
            p2.Transparency = p.Transparency + 0.04
          end
          p:Destroy()
          p2:Destroy()
        end)
        wait(0.1)
        attacking.Value = false
      end
    end
    if attack == "Combo3" then
      attacking.Value = true
      do
        local p = createBlockPart()
        p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p.Size = Vector3.new(1.25, 1.25, 1.25)
        p.Transparency = 0.4
        p.Parent = Effects
        local p2 = createBlockPart()
        p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p2.Size = Vector3.new(1.75, 1.75, 1.75)
        p2.Transparency = 0.6
        p2.Parent = Effects
        local p3 = createBlockPart()
        p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p3.Size = Vector3.new(1.25, 1.25, 1.25)
        p3.Transparency = 0.4
        p3.Parent = Effects
        local p4 = createBlockPart()
        p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p4.Size = Vector3.new(1.75, 1.75, 1.75)
        p4.Transparency = 0.6
        p4.Parent = Effects
        for i = 0, 1.1, 0.05 do
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(15), 0, math.rad(0)), 0.14)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0.05, 0, math.rad(0)), 0.14)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(50)), 0.14)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
          RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-50)), 0.14)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
          p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          swait()
        end
        thread(function()
          sound(300916014, char.Head, 0.5, 4, 2)
          local s, smesh = createSpherePart()
          s.Transparency = 0.2
          smesh.Scale = Vector3.new(2, 2, 2)
          thread(function()
            for i = 1, 25 do
              wait()
              local sinewave = 100 * math.asin(i / 100)
              smesh.Scale = smesh.Scale + Vector3.new(2 - sinewave * 0.08, 2 - sinewave * 0.08, 2 - sinewave * 0.08)
              s.CFrame = char.HumanoidRootPart.CFrame
              s.Transparency = s.Transparency + 0.032
            end
            s:Destroy()
          end)
          wait(0.1)
          local closeHumanoids = findCloseHumanoid(p.Position, 12)
          for _, vhum in pairs(closeHumanoids) do
            if Mode ~= "Positive" or not Color3.fromRGB(255, 255, 255) then
            end
            basicDamage(vhum, Stab3Dam, (Color3.fromRGB(0, 0, 0)))
            if vhum.Parent:findFirstChild("Torso") then
              do
                local vtors = vhum.Parent.Torso
                local bv = createBodyVelocity(vtors)
                bv.Velocity = (vtors.Position - torso.Position).unit * (Mode == "Negative" and -10 or 20) + Vector3.new(0, 4, 0)
                delay(0.5, function()
                  bv:Destroy()
                end)
              end
            end
          end
        end)
        for i = 0, 1.1, 0.05 do
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(-5), 0, math.rad(0)), 0.14)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(-0.05, 0, math.rad(0)), 0.14)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.25) * CFrame.Angles(math.rad(90), 0, math.rad(-80)), 0.14)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * CFrame.Angles(math.rad(90), 0, math.rad(80)), 0.14)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
          p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          swait()
        end
        thread(function()
          for i = 1, 10 do
            wait()
            p.Transparency = p.Transparency + 0.06
            p2.Transparency = p.Transparency + 0.04
            p3.Transparency = p.Transparency + 0.06
            p4.Transparency = p.Transparency + 0.04
          end
          p:Destroy()
          p2:Destroy()
          p3:Destroy()
          p4:Destroy()
        end)
        wait(0.1)
        attacking.Value = false
      end
    end
    if counter <= countermax then
      counter = counter + 1
    end
    if counter > countermax then
      counter = 1
    end
  end
  if key.KeyCode == Enum.KeyCode.T then
    if canTaunt == false then
      return
    end
    if Anim ~= "Idle" then
      return
    end
    do
      local function part(formfactor, parent, reflectance, transparency, brickcolor, name, size)
        local fp = Instance.new("Part")
        fp.formFactor = formfactor
        fp.Parent = parent
        fp.Reflectance = reflectance
        fp.Transparency = transparency
        fp.CanCollide = false
        fp.Locked = true
        fp.BrickColor = brickcolor
        fp.Name = name
        fp.Size = size
        fp.Position = torso.Position
        NoOutline(fp)
        fp.Material = "SmoothPlastic"
        fp:BreakJoints()
        return fp
      end
      local mesh = function(Mesh, part, meshtype, meshid, offset, scale)
        local mesh = Instance.new(Mesh)
        mesh.Parent = part
        if Mesh == "SpecialMesh" then
          mesh.MeshType = meshtype
          if meshid then
            mesh.MeshId = meshid
          end
        end
        if offset then
          mesh.Offset = offset
        end
        mesh.Scale = scale
        return mesh
      end
      local function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
        local prt = part(3, Effects, 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = mesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        return prt, msh
      end
      if taunting == true then
        return
      end
      if 0 >= charStats.Speed.Value then
        return
      end
      taunting = true
      attacking.Value = true
      charStats.Speed.Value = charStats.Speed.Value - 10
      for i = 0, 1.1, 0.05 do
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(15), 0, math.rad(0)), 0.14)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0.05, 0, math.rad(0)), 0.14)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(50)), 0.14)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-50)), 0.14)
        RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
        swait()
      end
      local ts = sound(300916082, char.Head, 1, 4, 0.5)
      local ncount = 0
      for i = 0, 5, 0.05 do
        ts = char.Head:findFirstChild("Sound")
        if not ts then
          return
        end
        ncount = ncount + 1
        if ncount % 1 == 0 then
          do
            local mb = MagicBlock(BrickColor.new("Really black"), RootPart.CFrame * CFrame.new(math.random(-7, 7), math.random(-5, 5), math.random(-7, 7)) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 2, 2, 2, 0.05, 2, Part)
            local mb2 = MagicBlock(BrickColor.new("Lily white"), RootPart.CFrame * CFrame.new(math.random(-7, 7), math.random(-5, 5), math.random(-7, 7)) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 2, 2, 2, 2, 0.05, 2, Part)
            mb.Transparency = 0.2
            mb2.Transparency = 0.2
            mb.Material = "Granite"
            mb2.Material = "Neon"
            thread(function()
              local now = mb.CFrame
              for i = 1, 20 do
                swait()
                mb.CFrame = clerp(mb.CFrame, char["Right Arm"].CFrame * CFrame.new(0, -0.9, 0), 0.05)
                mb2.CFrame = clerp(mb2.CFrame, char["Left Arm"].CFrame * CFrame.new(0, -0.9, 0), 0.05)
                mb.Transparency = mb.Transparency + 0.04
                mb2.Transparency = mb2.Transparency + 0.04
              end
              mb:Destroy()
              mb2:Destroy()
            end)
          end
        end
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(10), 0, math.rad(0)), 0.14)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(-0.05, 0, math.rad(0)), 0.14)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.15) * CFrame.Angles(math.rad(90), 0, math.rad(-80)), 0.14)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.15) * CFrame.Angles(math.rad(90), 0, math.rad(80)), 0.14)
        RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.98, -0.2) * CFrame.Angles(-0.2, math.rad(90), 0), 0.14)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -math.rad(90), 0), 0.14)
        swait()
      end
      for i = 0, 1.1, 0.05 do
        ts = char.Head.Sound
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(15), 0, math.rad(0)), 0.14)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0.05, 0, math.rad(0)), 0.14)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(50)), 0.14)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-50)), 0.14)
        RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
        swait()
      end
      taunting = false
      attacking.Value = false
      charStats.Speed.Value = charStats.Speed.Value + 10
    end
  end
  if key.KeyCode == Key1 then
    if key1db then
      return
    end
    if Energy.Value < Attack1Energy then
      return
    end
    key1db = true
    delay(key1re + atk1d, function()
      key1db = false
    end)
    coroutine.resume(coroutine.create(function()
      local rewinddelay = atk1d
      local reloaddelay = key1re
      Re1:TweenSize(UDim2.new(0, 0, 1, 0), "InOut", "Linear", rewinddelay)
      wait(rewinddelay)
      Re1:TweenSize(UDim2.new(1, 0, 1, 0), "InOut", "Linear", reloaddelay)
    end))
    Energy.Value = Energy.Value - Attack1Energy
    attacking.Value = true
    if Mode == "Positive" then
      attacking.Value = true
      for i = 0, 2, 0.05 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(-0.15, 0, math.rad(-20)), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(15)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-15)), 0.2)
        if i < 0.2 then
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, 0) * CFrame.Angles(math.rad(90), 0, math.rad(15)), 0.1)
        else
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, 0) * CFrame.Angles(math.rad(175), 0, math.rad(15)), 0.1)
        end
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
        RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
      end
      do
        local bvtable = {}
        thread(function()
          for i = 1, 4 do
            sound(301033949, char.Head, 0.5, 4, 1)
            for _, vhum in pairs(findCloseHumanoid(torso.Position, 18)) do
              basicDamage(vhum, 4, Color3.fromRGB(255, 255, 255))
            end
            do
              local s, smesh = createSpherePart()
              s.Transparency = 0.2
              thread(function()
                for i = 1, 25 do
                  wait()
                  local sinewave = 100 * math.asin(i / 100)
                  smesh.Scale = smesh.Scale + Vector3.new(2 - sinewave * 0.1, 2 - sinewave * 0.1, 2 - sinewave * 0.1)
                  s.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
                  s.Transparency = s.Transparency + 0.0404
                end
                s:Destroy()
              end)
              wait(0.25)
            end
          end
        end)
        for i = 1, 13 do
          wait(0.1)
          for _, vhum in pairs(findCloseHumanoid(torso.Position, 16)) do
            thread(function()
              if not vhum.Parent.Torso:findFirstChild("UpVelocity" .. char.Name) then
                local vtors = vhum.Parent.Torso
                local bv = createBodyVelocity(vtors)
                bv.Name = "UpVelocity" .. char.Name
                bv.Velocity = Vector3.new(0, 4, 0)
                table.insert(bvtable, bv)
              end
            end)
          end
        end
        for _, v in pairs(bvtable) do
          v:Destroy()
        end
        for i = 0, 1, 0.05 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(0, 0, math.rad(0)), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(0)), 0.2)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.1)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        end
        attacking.Value = false
      end
    elseif Mode == "Negative" then
      attacking.Value = true
      for i = 0, 1.5, 0.05 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(0.2, 0, math.rad(0)), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(0)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-20)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(20)), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
        RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
      end
      do
        local bvtable = {}
        thread(function()
          for i = 1, 4 do
            sound(301033949, char.Head, 0.5, 4, 1)
            for _, vhum in pairs(findCloseHumanoid(torso.Position, 18)) do
              basicDamage(vhum, 4, Color3.fromRGB(0, 0, 0))
            end
            do
              local s, smesh = createSpherePart()
              s.Transparency = 0.2
              s.BrickColor = BrickColor.new()
              thread(function()
                for i = 1, 25 do
                  wait()
                  local sinewave = 100 * math.asin(i / 100)
                  smesh.Scale = smesh.Scale + Vector3.new(2 - sinewave * 0.1, 2 - sinewave * 0.1, 2 - sinewave * 0.1)
                  s.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.3, 0)
                  s.Transparency = s.Transparency + 0.0404
                end
                s:Destroy()
              end)
              wait(0.25)
            end
          end
        end)
        for i = 1, 13 do
          wait(0.1)
          for _, vhum in pairs(findCloseHumanoid(torso.Position, 16)) do
            thread(function()
              if not vhum.Parent.Torso:findFirstChild("DownVelocity" .. char.Name) then
                local vtors = vhum.Parent.Torso
                local bv = createBodyVelocity(vtors)
                bv.Name = "DownVelocity" .. char.Name
                bv.Velocity = Vector3.new(0, -2, 0)
                table.insert(bvtable, bv)
              end
            end)
          end
        end
        for i, v in pairs(bvtable) do
          v:Destroy()
        end
        attacking.Value = false
      end
    end
  end
  if key.KeyCode == Key2 then
    if key2db then
      return
    end
    if Energy.Value < Attack2Energy then
      return
    end
    key2db = true
    delay(key2re + atk2d, function()
      key2db = false
    end)
    coroutine.resume(coroutine.create(function()
      local rewinddelay = atk2d
      local reloaddelay = key2re
      Re2:TweenSize(UDim2.new(0, 0, 1, 0), "InOut", "Linear", rewinddelay)
      wait(rewinddelay)
      Re2:TweenSize(UDim2.new(1, 0, 1, 0), "InOut", "Linear", reloaddelay)
    end))
    Energy.Value = Energy.Value - Attack2Energy
    if Mode == "Positive" then
      attacking.Value = true
      for i = 0, 1.5, 0.05 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(0, 0, math.rad(80)), 0.12)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(-80)), 0.12)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.4) * CFrame.Angles(math.rad(90), 0, math.rad(45)), 0.14)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * CFrame.Angles(math.rad(90), 0, math.rad(-50)), 0.14)
        RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
      end
      do
        local bvtable = {}
        sound(301031757, char.Head, 0.5, 8, 1)
        local pushpart = createBlockPart()
        pushpart.Anchored = false
        pushpart.Size = Vector3.new(30, 0.65, 30)
        pushpart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(math.rad(90), 0, 0)
        local pushmesh = Instance.new("CylinderMesh", pushpart)
        local pushbv = createBodyVelocity(pushpart)
        local prevvector = char.HumanoidRootPart.CFrame.lookVector
        thread(function()
          for i = 1, 30 do
            wait()
            local sinewave = math.sin(i / 45) * 60
            pushbv.Velocity = prevvector * (40 - sinewave)
          end
        end)
        thread(function()
          wait(0.2)
          for i = 1, 30 do
            wait()
            pushpart.Transparency = pushpart.Transparency + 0.030000000000000002
          end
          pushpart:Destroy()
          for _, v in pairs(bvtable) do
            v:Destroy()
          end
        end)
        pushpart.Touched:connect(function(hit)
          if hit.Parent == char then
            return
          end
          if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
            if hit.Parent.Torso:findFirstChild("PushVelocity" .. char.Name) then
              return
            end
            local vhum = hit.Parent.Humanoid
            local vtors = hit.Parent.Torso
            basicDamage(vhum, Attack2Damage, Color3.new(255, 255, 255))
            local bv = createBodyVelocity(vtors)
            bv.Name = "PushVelocity" .. char.Name
            bv.Velocity = pushpart.BodyVelocity.Velocity
            game.Debris:AddItem(bv, 2.5)
            table.insert(bvtable, bv)
          end
        end)
        for i = 0, 1.5, 0.05 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(0, 0, math.rad(-80)), 0.14)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(80)), 0.14)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.25) * CFrame.Angles(math.rad(90), 0, math.rad(-80)), 0.14)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * CFrame.Angles(math.rad(90), 0, math.rad(80)), 0.14)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
        end
        attacking.Value = false
      end
    elseif Mode == "Negative" then
      attacking.Value = true
      local hyperdrive = false
      charStats.Speed.Value = charStats.Speed.Value - 1
      for i = 0, 1.3, 0.05 + (hyperdrive == true and 0.05 or 0) do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(math.rad(23), 0, 0), 0.13 + (true == true and 0.1 or 0))
        Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.13 + (hyperdrive == true and 0.1 or 0))
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2 + (hyperdrive == true and 0.1 or 0))
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-math.rad(17), 0, math.rad(12)), 0.13 + (hyperdrive == true and 0.1 or 0))
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.13 + (hyperdrive == true and 0.1 or 0))
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-math.rad(17), 0, -math.rad(12)), 0.13 + (hyperdrive == true and 0.1 or 0))
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.13 + (hyperdrive == true and 0.1 or 0))
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * euler(0, math.rad(90), math.rad(-25)) * cf(0, 0.7, 0), 0.13 + (hyperdrive == true and 0.1 or 0))
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-math.rad(0), -math.rad(90), 0), 0.2 + (hyperdrive == true and 0.1 or 0))
      end
      for i = 0, 1, 0.05 + (hyperdrive == true and 0.05 or 0) do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(math.rad(23), 0, 0), 0.15 + (hyperdrive == true and 0.1 or 0))
        Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.13 + (hyperdrive == true and 0.1 or 0))
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.15 + (hyperdrive == true and 0.1 or 0))
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-math.rad(17), 0, math.rad(12)), 0.15 + (hyperdrive == true and 0.1 or 0))
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15 + (hyperdrive == true and 0.1 or 0))
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-math.rad(17), 0, -math.rad(12)), 0.15 + (hyperdrive == true and 0.1 or 0))
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.15 + (hyperdrive == true and 0.1 or 0))
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * euler(0, math.rad(90), math.rad(15)) * cf(0, -0.1, 0), 0.15 + (hyperdrive == true and 0.1 or 0))
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-math.rad(0), -math.rad(90), 0), 0.15 + (hyperdrive == true and 0.1 or 0))
      end
      for i = 1, 3 do
        sound(300916105, char.Head, 0.5, 12, 1)
        do
          local sphere, spherem = createSpherePart()
          sphere.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, -18 * i)
          sphere.Transparency = 0.1
          spherem.Scale = Vector3.new(3, 8, 3)
          local cnow = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, -18 * i)
          for _, vhum in pairs(findCloseHumanoid(sphere.Position, 18)) do
            basicDamage(vhum, 12, Color3.fromRGB(0, 0, 0))
            do
              local vtors = vhum.Parent.Torso
              local bv = createBodyVelocity(vtors)
              bv.Name = "UpVelocity" .. char.Name
              bv.Velocity = (vtors.Position - sphere.Position).unit * -5 + Vector3.new(0, 5, 0)
              thread(function()
                wait(0.5)
                bv:Destroy()
              end)
            end
          end
          thread(function()
            for i = 1, 15 do
              wait()
              local sinewave = 3 - math.sin(i / 45) * 5
              spherem.Scale = spherem.Scale + Vector3.new(0, sinewave, 0)
              sphere.CFrame = cnow
            end
            for i = 1, 15 do
              wait()
              sphere.Transparency = sphere.Transparency + 0.060000000000000005
            end
          end)
          local pulse, pulsem = createPulsePart()
          pulse.CFrame = sphere.CFrame * CFrame.Angles(math.rad(90), 0, 0)
          pulse.BrickColor = BrickColor.new("Really black")
          local cnow = sphere.CFrame * CFrame.Angles(math.rad(90), 0, 0)
          thread(function()
            for i = 1, 30 do
              wait()
              local sinewave = 2.5 - math.sin(i / 45) * 4
              pulsem.Scale = pulsem.Scale + Vector3.new(sinewave, sinewave, 0)
              pulse.Transparency = pulse.Transparency + 0.030000000000000002
              pulse.CFrame = cnow
            end
            pulse:Destroy()
          end)
          wait(0.2)
        end
      end
      charStats.Speed.Value = charStats.Speed.Value + 1
      attacking.Value = false
    end
  end
  if key.KeyCode == Key3 then
    if key3db then
      return
    end
    if Energy.Value < Attack3Energy then
      return
    end
    key3db = true
    delay(key3re + atk3d, function()
      key3db = false
    end)
    coroutine.resume(coroutine.create(function()
      local rewinddelay = atk3d
      local reloaddelay = key3re
      Re3:TweenSize(UDim2.new(0, 0, 1, 0), "InOut", "Linear", rewinddelay)
      wait(rewinddelay)
      Re3:TweenSize(UDim2.new(1, 0, 1, 0), "InOut", "Linear", reloaddelay)
    end))
    Energy.Value = Energy.Value - Attack3Energy
    if Mode == "Positive" then
      attacking.Value = true
      do
        local p = createBlockPart()
        p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p.Size = Vector3.new(1.25, 1.25, 1.25)
        p.Transparency = 0.4
        p.Parent = Effects
        local p2 = createBlockPart()
        p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p2.Size = Vector3.new(1.75, 1.75, 1.75)
        p2.Transparency = 0.6
        p2.Parent = Effects
        local p3 = createBlockPart()
        p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p3.Size = Vector3.new(1.25, 1.25, 1.25)
        p3.Transparency = 0.4
        p3.Parent = Effects
        local p4 = createBlockPart()
        p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p4.Size = Vector3.new(1.75, 1.75, 1.75)
        p4.Transparency = 0.6
        p4.Parent = Effects
        for i = 0, 1.1, 0.05 do
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(15), 0, math.rad(0)), 0.14)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0.05, 0, math.rad(0)), 0.14)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(50)), 0.14)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
          RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-50)), 0.14)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
          p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          swait()
        end
        local pulses = -1
        for i = 1, 3 do
          sound(301033949, char.Head, 0.5, 4, 1)
          pulses = pulses + 1
          do
            local pulse, pulsem = createPulsePart()
            pulse.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
            thread(function()
              for i = 1, 30 do
                wait()
                local sinewave = 2 - math.sin(i / 45) * 3
                pulse.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
                pulsem.Scale = pulsem.Scale + Vector3.new(sinewave, sinewave, 0)
                pulse.Transparency = pulse.Transparency + 0.030000000000000002
              end
              pulse:Destroy()
            end)
            local s, smesh = createSpherePart()
            s.Transparency = 0.2
            thread(function()
              for i = 1, 25 do
                wait()
                local sinewave = 8 - 100 * math.asin(i / 100) * 0.8
                if pulses == 3 then
                  sinewave = 10 - 100 * math.asin(i / 100) * 0.8
                end
                smesh.Scale = smesh.Scale + Vector3.new(sinewave, sinewave, sinewave)
                s.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, 0)
                s.Transparency = s.Transparency + 0.04
              end
              s:Destroy()
            end)
            local closeHumanoids = findCloseHumanoid(pulse.Position, pulses == 3 and 40 or 25)
            for _, vhum in pairs(closeHumanoids) do
              basicDamage(vhum, pulses == 3 and 12 or 8, Color3.fromRGB(255, 255, 255))
              if vhum.Parent:findFirstChild("Torso") then
                do
                  local vtors = vhum.Parent.Torso
                  local bv = createBodyVelocity(vtors)
                  bv.Velocity = (vtors.Position - torso.Position).unit * ((pulses == 3 and 35 or 30) - (vtors.Position - torso.Position).magnitude) + Vector3.new(0, 7, 0)
                  delay(0.5, function()
                    bv:Destroy()
                  end)
                end
              end
            end
            for i = 0, 2.1, 0.05 do
              swait()
              Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(0.1, 0, math.rad(0)), 0.14)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(0)), 0.14)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-95)), 0.08)
              LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(95)), 0.08)
              RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
              p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
              p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
              p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
              p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
            end
          end
        end
        thread(function()
          for i = 1, 10 do
            wait()
            p.Transparency = p.Transparency + 0.06
            p2.Transparency = p.Transparency + 0.04
            p3.Transparency = p.Transparency + 0.06
            p4.Transparency = p.Transparency + 0.04
          end
          p:Destroy()
          p2:Destroy()
          p3:Destroy()
          p4:Destroy()
        end)
      end
    elseif Mode == "Negative" then
      attacking.Value = true
      do
        local p = createBlockPart()
        p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p.Size = Vector3.new(1.25, 1.25, 1.25)
        p.Transparency = 0.4
        p.Parent = Effects
        local p2 = createBlockPart()
        p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p2.Size = Vector3.new(1.75, 1.75, 1.75)
        p2.Transparency = 0.6
        p2.Parent = Effects
        local p3 = createBlockPart()
        p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p3.Size = Vector3.new(1.25, 1.25, 1.25)
        p3.Transparency = 0.4
        p3.Parent = Effects
        local p4 = createBlockPart()
        p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0)
        p4.Size = Vector3.new(1.75, 1.75, 1.75)
        p4.Transparency = 0.6
        p4.Parent = Effects
        p.BrickColor = BrickColor.new("Really black")
        p2.BrickColor = BrickColor.new("Really black")
        p3.BrickColor = BrickColor.new("Really black")
        p4.BrickColor = BrickColor.new("Really black")
        for i = 0, 1.1, 0.05 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(0.1, 0, math.rad(0)), 0.14)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, math.rad(0)), 0.14)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-95)), 0.14)
          LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(95)), 0.14)
          RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
          p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
          p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
        end
        local pulses = -1
        for i = 1, 3 do
          sound(301033949, char.Head, 0.5, 4, 1)
          pulses = pulses + 1
          do
            local pulse, pulsem = createPulsePart()
            pulse.BrickColor = BrickColor.new("Really black")
            pulse.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
            thread(function()
              for i = 1, 30 do
                wait()
                local sinewave = 2 - math.sin(i / 45) * 3
                pulse.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
                pulsem.Scale = pulsem.Scale + Vector3.new(sinewave, sinewave, 0)
                pulse.Transparency = pulse.Transparency + 0.030000000000000002
              end
              pulse:Destroy()
            end)
            local s, smesh = createSpherePart()
            s.Transparency = 0.2
            thread(function()
              for i = 1, 25 do
                wait()
                local sinewave = 8 - 100 * math.asin(i / 100) * 0.8
                if pulses == 3 then
                  sinewave = 10 - 100 * math.asin(i / 100) * 0.8
                end
                smesh.Scale = smesh.Scale + Vector3.new(sinewave, sinewave, sinewave)
                s.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1.5, 0)
                s.Transparency = s.Transparency + 0.04
              end
              s:Destroy()
            end)
            local closeHumanoids = findCloseHumanoid(pulse.Position, pulses == 3 and 40 or 25)
            for _, vhum in pairs(closeHumanoids) do
              basicDamage(vhum, pulses == 3 and 12 or 8, Color3.fromRGB(0, 0, 0))
              if vhum.Parent:findFirstChild("Torso") then
                do
                  local vtors = vhum.Parent.Torso
                  local bv = createBodyVelocity(vtors)
                  bv.Velocity = -(vtors.Position - torso.Position).unit * ((pulses == 3 and 35 or 30) - (vtors.Position - torso.Position).magnitude) + Vector3.new(0, 0, 0)
                  delay(0.5, function()
                    bv:Destroy()
                  end)
                end
              end
            end
            for i = 0, 2.1, 0.05 do
              Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(15), 0, math.rad(0)), 0.14)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0.05, 0, math.rad(0)), 0.14)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(50)), 0.14)
              LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.14)
              RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, math.rad(-50)), 0.14)
              RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.14)
              p.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
              p2.CFrame = char["Right Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
              p3.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
              p4.CFrame = char["Left Arm"].CFrame * CFrame.new(0, -1.3, 0) * randomangles()
              swait()
            end
          end
        end
        thread(function()
          for i = 1, 10 do
            wait()
            p.Transparency = p.Transparency + 0.06
            p2.Transparency = p.Transparency + 0.04
            p3.Transparency = p.Transparency + 0.06
            p4.Transparency = p.Transparency + 0.04
          end
          p:Destroy()
          p2:Destroy()
          p3:Destroy()
          p4:Destroy()
        end)
      end
    end
    attacking.Value = false
  end
  if key.KeyCode == Key4 then
    if key4db then
      return
    end
    if Energy.Value < Attack4Energy then
      return
    end
    Energy.Value = Energy.Value - Attack4Energy
    key4db = true
    delay(key4re, function()
      key4db = false
    end)
    coroutine.resume(coroutine.create(function()
      local rewinddelay = 0.5
      local reloaddelay = key4re
      Re4:TweenSize(UDim2.new(0, 0, 1, 0), "InOut", "Linear", rewinddelay)
      wait(rewinddelay)
      Re4:TweenSize(UDim2.new(1, 0, 1, 0), "InOut", "Linear", reloaddelay)
    end))
    attacking.Value = true
    delay(0.5, function()
      attacking.Value = false
    end)
    do
      local boom = Instance.new("Part", Effects)
      boom.BrickColor = BrickColor.new(Mode == "Positive" and "Really black" or "Lily white")
      boom.Material = Mode == "Positive" and "Granite" or "Neon"
      boom.Transparency = 0.2
      boom.Anchored = true
      boom.CanCollide = false
      boom.Shape = "Ball"
      boom.Size = Vector3.new(8, 8, 8)
      boom.CFrame = char.HumanoidRootPart.CFrame
      thread(function()
        for i = 1, 30 do
          wait()
          boom.Size = boom.Size + Vector3.new(0.2, 0.2, 0.2)
          boom.CFrame = char.HumanoidRootPart.CFrame
          boom.Transparency = boom.Transparency + 0.02666666666666667
        end
        boom:Destroy()
      end)
      local pulse = Instance.new("Part", Effects)
      pulse.BrickColor = BrickColor.new(Mode == "Positive" and "Really black" or "Lily white")
      pulse.Material = Mode == "Positive" and "Granite" or "Neon"
      pulse.Transparency = 0.1
      pulse.Anchored = true
      pulse.CanCollide = false
      pulse.Size = Vector3.new(5, 5, 0.2)
      pulse.CFrame = boom.CFrame * CFrame.Angles(math.rad(90), 0, 0)
      local now = pulse.CFrame
      local pulsem = Instance.new("SpecialMesh", pulse)
      pulsem.MeshId = "http://www.roblox.com/asset/?id=3270017"
      pulsem.Scale = Vector3.new(10, 10, 0.2)
      thread(function()
        for i = 1, 30 do
          wait()
          pulsem.Scale = pulsem.Scale + Vector3.new(0.3, 0.3, 0)
          pulse.CFrame = boom.CFrame * CFrame.Angles(math.rad(90), 0, 0)
          pulse.Transparency = pulse.Transparency + 0.030000000000000002
        end
        pulse:Destroy()
      end)
      sound(300916105, char.Head, 0.5, 12, 1)
      if Mode == "Positive" then
        Mode = "Negative"
        Atk1.AttackLabel.Text = NegAtk1
        Atk2.AttackLabel.Text = NegAtk2
        Atk3.AttackLabel.Text = NegAtk3
        Atk4.AttackLabel.Text = NegAtk4
        Atk1.AttackLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk1.EnergyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk1.KeyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk1.Reload.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk1.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk2.AttackLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk2.EnergyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk2.KeyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk2.Reload.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk2.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk3.AttackLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk3.EnergyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk3.KeyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk3.Reload.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk3.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk4.AttackLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk4.EnergyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk4.KeyLabel.TextColor3 = Color3.new(255, 255, 255)
        Atk4.Reload.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk4.BackgroundColor3 = Color3.new(0, 0, 0)
      elseif Mode == "Negative" then
        Mode = "Positive"
        Atk1.AttackLabel.Text = PosAtk1
        Atk2.AttackLabel.Text = PosAtk2
        Atk3.AttackLabel.Text = PosAtk3
        Atk4.AttackLabel.Text = PosAtk4
        Atk1.AttackLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk1.EnergyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk1.KeyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk1.Reload.BackgroundColor3 = Color3.new(255, 255, 255)
        Atk1.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk2.AttackLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk2.EnergyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk2.KeyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk2.Reload.BackgroundColor3 = Color3.new(255, 255, 255)
        Atk2.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk3.AttackLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk3.EnergyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk3.KeyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk3.Reload.BackgroundColor3 = Color3.new(255, 255, 255)
        Atk3.BackgroundColor3 = Color3.new(0, 0, 0)
        Atk4.AttackLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk4.EnergyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk4.KeyLabel.TextColor3 = Color3.new(0, 0, 0)
        Atk4.Reload.BackgroundColor3 = Color3.new(255, 255, 255)
        Atk4.BackgroundColor3 = Color3.new(0, 0, 0)
      end
    end
  end
end
uis.InputBegan:connect(keyDown)
thread(function()
  tweentick = 45
  tweenrot = 0.9
  tweenrotm = 0.15
  while true do
    swait()
humanoid.WalkSpeed = ((speed.Value / 10) * 16)
    sinecount = sinecount + 1
    normcount = normcount + 1
    local sinewave = math.sin(sinecount * 3 / 75) * 0.2
    local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
    if attacking.Value == false and taunting == false then
      if 1 < RootPart.Velocity.y and hitfloor == nil then
        Anim = "Jump"
        canTaunt = false
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(-15), 0, math.rad(0)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, math.rad(12)), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, -math.rad(12)), 0.2)
        RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(90), 0), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(12), -math.rad(90), 0), 0.2)
      elseif RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        canTaunt = false
        Neck.C0 = clerp(Neck.C0, necko * CFrame.Angles(math.rad(23), 0, 0), 0.2)
        Neck.C1 = clerp(Neck.C1, necko2 * CFrame.Angles(0, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, math.rad(12)), 0.2)
        RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, -math.rad(12)), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(24), math.rad(90), 0), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-12), -math.rad(90), 0), 0.2)
      elseif torvel < 1 and hitfloor ~= nil then
        Anim = "Idle"
        canTaunt = true
        Neck.C0 = clerp(Neck.C0, necko, 0.1)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF, 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.new(-0.35, 0, 0.3) * CFrame.Angles(math.rad(-35), 0, math.rad(-35)), 0.2)
        RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.new(0.35, 0, 0.3) * CFrame.Angles(math.rad(-35), 0, math.rad(35)), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -math.rad(90), 0), 0.2)
      elseif torvel > 1 and hitfloor ~= nil then
        sinewave = sinewave / 10
        Anim = "Walk"
        canTaunt = false
        Neck.C0 = clerp(Neck.C0, necko, 0.1)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0.1, 0, 0), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.new(-0.35, 0, 0.3) * CFrame.Angles(math.rad(-35), 0, math.rad(-35)), 0.2)
        RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.new(0.35, 0, 0.3) * CFrame.Angles(math.rad(-35), 0, math.rad(35)), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -math.rad(90), 0), 0.2)
      end
      RootJoint.C0 = clerp(RootJoint.C0, RootJoint.C0 * CFrame.new(0, 0, sinewave / 3), 0.1)
      RW.C0 = clerp(RW.C0, RW.C0 * CFrame.new(0, sinewave / 3, 0), 0.2)
      LW.C0 = clerp(LW.C0, LW.C0 * CFrame.new(0, sinewave / 3, 0), 0.2)
      RH.C0 = clerp(RH.C0, RH.C0 * CFrame.new(0, -sinewave / 3, 0), 0.2)
      LH.C0 = clerp(LH.C0, LH.C0 * CFrame.new(0, -sinewave / 3, 0), 0.2)
    end
  end
end)
